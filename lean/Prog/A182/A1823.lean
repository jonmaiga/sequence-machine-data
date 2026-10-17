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
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C016
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
# A182300: Gaussian-Mersenne primes: primes of the form ((1+i)^p - 1)((1-i)^p - 1).

The programs for A182300, there is no canonical definition to state claims against.
-/

/-! ## A182300.P678979097125882

`A229747(lt[4^n, A229747(n)])`
-/

namespace A182300.P678979097125882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A182300.P678979097125882

/-! ## A182300.P10155995666645485645

`A002587(lcm(2, A057429(n+1)))`
-/

namespace A182300.P10155995666645485645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (Int.lcm 2 (A057429 (n + 1)))

end

end A182300.P10155995666645485645

/-! ## A182300.P10194811396104868577

`A229747(lt[A001025(n), A229747(n)²])`
-/

namespace A182300.P10194811396104868577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229747 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229747 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182300.P10194811396104868577

/-! ## A182300.P8402551051907129080

`A229747(lt[A131865(n), A229747(n)²])`
-/

namespace A182300.P8402551051907129080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229747 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229747 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182300.P8402551051907129080

/-!
# A182301: Composite numbers that are not perfect powers and whose prime factors have an equal number of digits in decimal representation.

The programs for A182301, there is no canonical definition to state claims against.
-/

/-! ## A182301.P12521262485131743442

`∩[A106543(n+1), A162421(n+1)]`
-/

namespace A182301.P12521262485131743442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182301.P12521262485131743442

/-! ## A182301.P10820538415123165085

`∩[A106543(n+1), A199009(n+1)]`
-/

namespace A182301.P10820538415123165085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182301.P10820538415123165085

/-! ## A182301.P11669517540241572202

`∩[A007916(n+1), A199009(n+1)]`
-/

namespace A182301.P11669517540241572202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182301.P11669517540241572202

/-! ## A182301.P15350286902686104762

`∩[A175082(n+1), A199009(n+1)]`
-/

namespace A182301.P15350286902686104762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182301.P15350286902686104762

/-! ## A182301.P11553045669737491799

`filter[A199009(n+1), A132350(#)]`
-/

namespace A182301.P11553045669737491799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A182301.P11553045669737491799

/-!
# A182302: Composite numbers that are not perfect powers whose prime factors have equal numbers of bits.

The programs for A182302, there is no canonical definition to state claims against.
-/

/-! ## A182302.P2154210428428209588

`record[A052410(A200878(n+2))]`
-/

namespace A182302.P2154210428428209588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A200878 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182302.P2154210428428209588

/-! ## A182302.P14798101599308557234

`∩[A106543(n+1), A200878(n+1)]`
-/

namespace A182302.P14798101599308557234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182302.P14798101599308557234

/-! ## A182302.P1007699850733740521

`∩[A007916(n+1), A200878(n+1)]`
-/

namespace A182302.P1007699850733740521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182302.P1007699850733740521

/-! ## A182302.P13113638803231992601

`∩[A175082(n+1), A200878(n+1)]`
-/

namespace A182302.P13113638803231992601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182302.P13113638803231992601

/-! ## A182302.P15533138764164246796

`filter[A200878(n+1), A132350(#)]`
-/

namespace A182302.P15533138764164246796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A182302.P15533138764164246796

/-!
# A182304: G.f. satisfies: A(x) = x + d/dx A(x)^3/3.

The programs for A182304, there is no canonical definition to state claims against.
-/

/-! ## A182304.P15545045362543005911

`abs(A301930(∑[n]+1))`
-/

namespace A182304.P15545045362543005911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A301930 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A182304.P15545045362543005911

/-! ## A182304.P6717260553243701954

`A187307(3*n)*A301930(∑[n]+1)`
-/

namespace A182304.P6717260553243701954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (3 * n) * A301930 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A182304.P6717260553243701954

/-! ## A182304.P9348901480854760509

`lcm(A070107(n+1)!, A301930(∑[n]+1))`
-/

namespace A182304.P9348901480854760509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A070107 (n + 1)).toNat : ℤ) (A301930 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A182304.P9348901480854760509

/-! ## A182304.P15324069546026054875

`A033999(n)*A301930(A000124(n))`
-/

namespace A182304.P15324069546026054875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A301930 (A000124 n).toNat

end

end A182304.P15324069546026054875

/-! ## A182304.P15463852725932006294

`gcd(A085200(3*n+1), A301930(A000124(n)))`
-/

namespace A182304.P15463852725932006294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085200 (3 * n + 1)) (A301930 (A000124 n).toNat)

end

end A182304.P15463852725932006294

/-!
# A182305: a(n+1) = a(n) + floor(a(n)/4) with a(0)=4.

The programs for A182305, the canonical program `A182305.P8422117873672301834` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182305 has offset 0).

The definition of A182305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182305.P8422117873672301834

`floor(5/4*a(n-1))` with `a(0)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182305

/-- `floor(5/4*a(n-1))` -/
def P8422117873672301834.Spec : Prop :=
  ∀ n, P8422117873672301834.a n = A182305 n

theorem P8422117873672301834.correct : P8422117873672301834.Spec := by
  intro n
  simp only [A182305]

end A182305

/-! ## A182305.P7969471583869049094

`floor(a(n-1)*cosh(log(2)))` with `a(0)=4`
-/

namespace A182305.P7969471583869049094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℝ) * Real.cosh (Real.log (2 : ℝ))⌋

end

end A182305.P7969471583869049094

namespace A182305

/-- `floor(a(n-1)*cosh(log(2)))` -/
def P7969471583869049094.Spec : Prop :=
  ∀ n, P7969471583869049094.a n = A182305 n

end A182305

/-! ## A182305.P16000158350357627705

`floor(a(n-1)/(1-1/5))` with `a(0)=4`
-/

namespace A182305.P16000158350357627705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 5)⌋

end

end A182305.P16000158350357627705

namespace A182305

/-- `floor(a(n-1)/(1-1/5))` -/
def P16000158350357627705.Spec : Prop :=
  ∀ n, P16000158350357627705.a n = A182305 n

theorem P16000158350357627705.correct : P16000158350357627705.Spec := by
  intro n
  simp only [A182305, Nat.add_sub_cancel, A182305.P16000158350357627705.a, A182305.P8422117873672301834.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182305

/-! ## A182305.P6042515160113324980

`a(n-1)+(a(n-1)-a(n-1)%4)/4` with `a(0)=4`
-/

namespace A182305.P6042515160113324980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 4 : ℚ)) / 4

end

end A182305.P6042515160113324980

namespace A182305

/-- `a(n-1)+(a(n-1)-a(n-1)%4)/4` -/
def P6042515160113324980.Spec : Prop :=
  ∀ n, P6042515160113324980.a n = (A182305 n : ℚ)

end A182305

/-! ## A182305.P3764266789378784258

`A279075(n)+4`
-/

namespace A182305.P3764266789378784258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279075 n + 4

end

end A182305.P3764266789378784258

namespace A182305

/-- `A279075(n)+4` -/
def P3764266789378784258.Spec : Prop :=
  ∀ n, P3764266789378784258.a n = A182305 n

end A182305

/-! ## A182305.P3182491960833684689

`∑[A120160(n+1)]+3`
-/

namespace A182305.P3182491960833684689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A182305.P3182491960833684689

namespace A182305

/-- `∑[A120160(n+1)]+3` -/
def P3182491960833684689.Spec : Prop :=
  ∀ n, P3182491960833684689.a n = A182305 n

end A182305

/-! ## A182305.P10266859142714644142

`∑[A245357(n+1)/5]+3`
-/

namespace A182305.P10266859142714644142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245357 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A182305.P10266859142714644142

namespace A182305

/-- `∑[A245357(n+1)/5]+3` -/
def P10266859142714644142.Spec : Prop :=
  ∀ n, P10266859142714644142.a n = (A182305 n : ℚ)

end A182305

/-! ## A182305.P6233580931505292276

`ceil((5*a(n-1)-3)/4)` with `a(0)=4`
-/

namespace A182305.P6233580931505292276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(5 * a (n - 1) - 3 : ℚ) / 4⌉

end

end A182305.P6233580931505292276

namespace A182305

/-- `ceil((5*a(n-1)-3)/4)` -/
def P6233580931505292276.Spec : Prop :=
  ∀ n, P6233580931505292276.a n = A182305 n

end A182305

/-! ## A182305.P4326085336571518316

`round((5*a(n-1)-ϕ)/4)` with `a(0)=4`
-/

namespace A182305.P4326085336571518316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (((5 * a (n - 1) : ℝ) - Real.goldenRatio) / 4)

end

end A182305.P4326085336571518316

namespace A182305

/-- `round((5*a(n-1)-ϕ)/4)` -/
def P4326085336571518316.Spec : Prop :=
  ∀ n, P4326085336571518316.a n = A182305 n

end A182305

/-!
# A182306: a(n+1) = a(n) + floor(a(n)/5) with a(0)=5.

The programs for A182306, the canonical program `A182306.P6698613563287945871` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182306 has offset 0).

The definition of A182306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182306.P6698613563287945871

`floor(6/5*a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182306

/-- `floor(6/5*a(n-1))` -/
def P6698613563287945871.Spec : Prop :=
  ∀ n, P6698613563287945871.a n = A182306 n

theorem P6698613563287945871.correct : P6698613563287945871.Spec := by
  intro n
  simp only [A182306]

end A182306

/-! ## A182306.P462121244853061797

`floor(a(n-1)/(1-1/6))` with `a(0)=5`
-/

namespace A182306.P462121244853061797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 6)⌋

end

end A182306.P462121244853061797

namespace A182306

/-- `floor(a(n-1)/(1-1/6))` -/
def P462121244853061797.Spec : Prop :=
  ∀ n, P462121244853061797.a n = A182306 n

theorem P462121244853061797.correct : P462121244853061797.Spec := by
  intro n
  simp only [A182306, Nat.add_sub_cancel, A182306.P462121244853061797.a, A182306.P6698613563287945871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182306

/-! ## A182306.P6897162166893536506

`a(n-1)-ceil(-a(n-1)/5)` with `a(0)=5`
-/

namespace A182306.P6897162166893536506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - ⌈-((a (n - 1) : ℚ) / 5)⌉

end

end A182306.P6897162166893536506

namespace A182306

/-- `a(n-1)-ceil(-a(n-1)/5)` -/
def P6897162166893536506.Spec : Prop :=
  ∀ n, P6897162166893536506.a n = A182306 n

end A182306

/-! ## A182306.P6119805021154733732

`a(n-1)+(a(n-1)-a(n-1)%5)/5` with `a(0)=5`
-/

namespace A182306.P6119805021154733732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 5 : ℚ)) / 5

end

end A182306.P6119805021154733732

namespace A182306

/-- `a(n-1)+(a(n-1)-a(n-1)%5)/5` -/
def P6119805021154733732.Spec : Prop :=
  ∀ n, P6119805021154733732.a n = (A182306 n : ℚ)

end A182306

/-! ## A182306.P17856033097260878304

`A279076(n)+5`
-/

namespace A182306.P17856033097260878304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279076 n + 5

end

end A182306.P17856033097260878304

namespace A182306

/-- `A279076(n)+5` -/
def P17856033097260878304.Spec : Prop :=
  ∀ n, P17856033097260878304.a n = A182306 n

end A182306

/-! ## A182306.P9993313327022372552

`∑[A120170(n+1)]+4`
-/

namespace A182306.P9993313327022372552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A182306.P9993313327022372552

namespace A182306

/-- `∑[A120170(n+1)]+4` -/
def P9993313327022372552.Spec : Prop :=
  ∀ n, P9993313327022372552.a n = A182306 n

end A182306

/-! ## A182306.P4195050514606528159

`∑[A245399(n+1)/6]+4`
-/

namespace A182306.P4195050514606528159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245399 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A182306.P4195050514606528159

namespace A182306

/-- `∑[A245399(n+1)/6]+4` -/
def P4195050514606528159.Spec : Prop :=
  ∀ n, P4195050514606528159.a n = (A182306 n : ℚ)

end A182306

/-! ## A182306.P13945396970814567833

`∑[A255591(A245399(n+1))]+4`
-/

namespace A182306.P13945396970814567833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A245399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A182306.P13945396970814567833

namespace A182306

/-- `∑[A255591(A245399(n+1))]+4` -/
def P13945396970814567833.Spec : Prop :=
  ∀ n, P13945396970814567833.a n = A182306 n

end A182306

/-!
# A182307: a(n+1) = a(n) + floor(a(n)/6) with a(0) = 6.

The programs for A182307, the canonical program `A182307.P13216341765850199590` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182307 has offset 0).

The definition of A182307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182307.P13216341765850199590

`floor(7*a(n-1)/6)` with `a(0)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182307

/-- `floor(7*a(n-1)/6)` -/
def P13216341765850199590.Spec : Prop :=
  ∀ n, P13216341765850199590.a n = A182307 n

theorem P13216341765850199590.correct : P13216341765850199590.Spec := by
  intro n
  simp only [A182307]

end A182307

/-! ## A182307.P2400240144837171456

`floor(a(n-1)/(1-1/7))` with `a(0)=6`
-/

namespace A182307.P2400240144837171456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 7)⌋

end

end A182307.P2400240144837171456

namespace A182307

/-- `floor(a(n-1)/(1-1/7))` -/
def P2400240144837171456.Spec : Prop :=
  ∀ n, P2400240144837171456.a n = A182307 n

theorem P2400240144837171456.correct : P2400240144837171456.Spec := by
  intro n
  simp only [A182307, Nat.add_sub_cancel, A182307.P2400240144837171456.a, A182307.P13216341765850199590.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182307

/-! ## A182307.P7860087318329908833

`a(n-1)-ceil(-a(n-1)/6)` with `a(0)=6`
-/

namespace A182307.P7860087318329908833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - ⌈-((a (n - 1) : ℚ) / 6)⌉

end

end A182307.P7860087318329908833

namespace A182307

/-- `a(n-1)-ceil(-a(n-1)/6)` -/
def P7860087318329908833.Spec : Prop :=
  ∀ n, P7860087318329908833.a n = A182307 n

end A182307

/-! ## A182307.P10252929073344922154

`A279077(n)+6`
-/

namespace A182307.P10252929073344922154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279077 n + 6

end

end A182307.P10252929073344922154

namespace A182307

/-- `A279077(n)+6` -/
def P10252929073344922154.Spec : Prop :=
  ∀ n, P10252929073344922154.a n = A182307 n

end A182307

/-! ## A182307.P9535984860495604303

`∑[A120178(n+1)]+5`
-/

namespace A182307.P9535984860495604303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A182307.P9535984860495604303

namespace A182307

/-- `∑[A120178(n+1)]+5` -/
def P9535984860495604303.Spec : Prop :=
  ∀ n, P9535984860495604303.a n = A182307 n

end A182307

/-! ## A182307.P9814159953313339868

`A020715(n)-(n-A279077(n))`
-/

namespace A182307.P9814159953313339868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n - ((n : ℤ) - A279077 n)

end

end A182307.P9814159953313339868

namespace A182307

/-- `A020715(n)-(n-A279077(n))` -/
def P9814159953313339868.Spec : Prop :=
  ∀ n, P9814159953313339868.a n = A182307 n

end A182307

/-! ## A182307.P119932403288445612

`A120178(n+1)+a(A023443(n))` with `a(0)=6`
-/

namespace A182307.P119932403288445612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A120178 (n + 1) + a (A023443 n).toNat

end

end A182307.P119932403288445612

namespace A182307

/-- `A120178(n+1)+a(A023443(n))` -/
def P119932403288445612.Spec : Prop :=
  ∀ n, P119932403288445612.a n = A182307 n

end A182307

/-! ## A182307.P15071482322270589359

`a(n-1)+A120178(n+1)%A000029(n)` with `a(0)=6`
-/

namespace A182307.P15071482322270589359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + Int.tmod (A120178 (n + 1)) (A000029 n)

end

end A182307.P15071482322270589359

namespace A182307

/-- `a(n-1)+A120178(n+1)%A000029(n)` -/
def P15071482322270589359.Spec : Prop :=
  ∀ n, P15071482322270589359.a n = A182307 n

end A182307

/-! ## A182307.P9945778496358030387

`∑[A245402(n+1)/7]+5`
-/

namespace A182307.P9945778496358030387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245402 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A182307.P9945778496358030387

namespace A182307

/-- `∑[A245402(n+1)/7]+5` -/
def P9945778496358030387.Spec : Prop :=
  ∀ n, P9945778496358030387.a n = (A182307 n : ℚ)

end A182307

/-! ## A182307.P14860677651360308414

`A276278(a(n-1)+5)-9` with `a(0)=6`
-/

namespace A182307.P14860677651360308414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A276278 (a (n - 1) + 5).toNat - 9

end

end A182307.P14860677651360308414

namespace A182307

/-- `A276278(a(n-1)+5)-9` -/
def P14860677651360308414.Spec : Prop :=
  ∀ n, P14860677651360308414.a n = A182307 n

end A182307

/-!
# A182308: a(n+1) = a(n) + floor(a(n)/7) with a(0) = 7.

The programs for A182308, the canonical program `A182308.P1544161472465837551` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182308 has offset 0).

The definition of A182308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182308.P1544161472465837551

`floor(8/7*a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182308

/-- `floor(8/7*a(n-1))` -/
def P1544161472465837551.Spec : Prop :=
  ∀ n, P1544161472465837551.a n = A182308 n

theorem P1544161472465837551.correct : P1544161472465837551.Spec := by
  intro n
  simp only [A182308]

end A182308

/-! ## A182308.P3223044340604415425

`floor(a(n-1)/(1-1/8))` with `a(0)=7`
-/

namespace A182308.P3223044340604415425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 8)⌋

end

end A182308.P3223044340604415425

namespace A182308

/-- `floor(a(n-1)/(1-1/8))` -/
def P3223044340604415425.Spec : Prop :=
  ∀ n, P3223044340604415425.a n = A182308 n

theorem P3223044340604415425.correct : P3223044340604415425.Spec := by
  intro n
  simp only [A182308, Nat.add_sub_cancel, A182308.P3223044340604415425.a, A182308.P1544161472465837551.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182308

/-! ## A182308.P18087273446496752597

`a(n-1)-ceil(-a(n-1)/7)` with `a(0)=7`
-/

namespace A182308.P18087273446496752597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - ⌈-((a (n - 1) : ℚ) / 7)⌉

end

end A182308.P18087273446496752597

namespace A182308

/-- `a(n-1)-ceil(-a(n-1)/7)` -/
def P18087273446496752597.Spec : Prop :=
  ∀ n, P18087273446496752597.a n = A182308 n

end A182308

/-! ## A182308.P8300455086577703365

`A279078(n)+7`
-/

namespace A182308.P8300455086577703365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279078 n + 7

end

end A182308.P8300455086577703365

namespace A182308

/-- `A279078(n)+7` -/
def P8300455086577703365.Spec : Prop :=
  ∀ n, P8300455086577703365.a n = A182308 n

end A182308

/-! ## A182308.P14139723697206143271

`∑[A120186(n+1)]+6`
-/

namespace A182308.P14139723697206143271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A182308.P14139723697206143271

namespace A182308

/-- `∑[A120186(n+1)]+6` -/
def P14139723697206143271.Spec : Prop :=
  ∀ n, P14139723697206143271.a n = A182308 n

end A182308

/-! ## A182308.P16945125901051082671

`A020719(n)-(n-A279078(n))`
-/

namespace A182308.P16945125901051082671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n - ((n : ℤ) - A279078 n)

end

end A182308.P16945125901051082671

namespace A182308

/-- `A020719(n)-(n-A279078(n))` -/
def P16945125901051082671.Spec : Prop :=
  ∀ n, P16945125901051082671.a n = A182308 n

end A182308

/-! ## A182308.P11950684653339457941

`∑[A245401(n+1)/8]+6`
-/

namespace A182308.P11950684653339457941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245401 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A182308.P11950684653339457941

namespace A182308

/-- `∑[A245401(n+1)/8]+6` -/
def P11950684653339457941.Spec : Prop :=
  ∀ n, P11950684653339457941.a n = (A182308 n : ℚ)

end A182308

/-! ## A182308.P10024811724820649024

`A004777(a(n-1)+1)` with `a(0)=7`
-/

namespace A182308.P10024811724820649024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A004777 (a (n - 1) + 1).toNat

end

end A182308.P10024811724820649024

namespace A182308

/-- `A004777(a(n-1)+1)` -/
def P10024811724820649024.Spec : Prop :=
  ∀ n, P10024811724820649024.a n = A182308 n

end A182308

/-! ## A182308.P14734153065672241783

`A020719(A279078(n))`
-/

namespace A182308.P14734153065672241783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A279078 n).toNat

end

end A182308.P14734153065672241783

namespace A182308

/-- `A020719(A279078(n))` -/
def P14734153065672241783.Spec : Prop :=
  ∀ n, P14734153065672241783.a n = A182308 n

end A182308

/-!
# A182310: a(0)=0, a(n+1) = (a(n) XOR floor(a(n)/2)) + 1, where XOR is the bitwise exclusive-or operator.

The programs for A182310, the canonical program `A182310.P9353940830934403541` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182310 has offset 0).

The definition of A182310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182310.P9353940830934403541

`A105081(a(n-1)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182310

/-- `A105081(a(n-1)+1)` -/
def P9353940830934403541.Spec : Prop :=
  ∀ n, P9353940830934403541.a n = A182310 n

theorem P9353940830934403541.correct : P9353940830934403541.Spec := by
  intro n
  simp only [A182310]

end A182310

/-! ## A182310.P3933733583468079943

`xor(floor(a(n-1)/2), a(n-1))+1` with `a(0)=0`
-/

namespace A182310.P3933733583468079943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor ⌊(a (n - 1) : ℚ) / 2⌋ (a (n - 1)) + 1

end

end A182310.P3933733583468079943

namespace A182310

/-- `xor(floor(a(n-1)/2), a(n-1))+1` -/
def P3933733583468079943.Spec : Prop :=
  ∀ n, P3933733583468079943.a n = A182310 n

end A182310

/-! ## A182310.P15679695350975298949

`xor((a(n-1)-a(n-1)%2)/2, a(n-1))+1` with `a(0)=0`
-/

namespace A182310.P15679695350975298949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) - Int.tmod (a (n - 1)) 2 : ℚ) / 2)) (a (n - 1)) + 1

end

end A182310.P15679695350975298949

namespace A182310

/-- `xor((a(n-1)-a(n-1)%2)/2, a(n-1))+1` -/
def P15679695350975298949.Spec : Prop :=
  ∀ n, P15679695350975298949.a n = A182310 n

end A182310

/-! ## A182310.P16969176631116818660

`A003188(a(n-1))+1` with `a(0)=0`
-/

namespace A182310.P16969176631116818660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003188 (a (n - 1)).toNat + 1

end

end A182310.P16969176631116818660

namespace A182310

/-- `A003188(a(n-1))+1` -/
def P16969176631116818660.Spec : Prop :=
  ∀ n, P16969176631116818660.a n = A182310 n

end A182310

/-! ## A182310.P7069970617714346655

`a(n-1)+A286548(a(n-1))+1` with `a(0)=0`
-/

namespace A182310.P7069970617714346655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A286548 (a (n - 1)).toNat + 1)

end

end A182310.P7069970617714346655

namespace A182310

/-- `a(n-1)+A286548(a(n-1))+1` -/
def P7069970617714346655.Spec : Prop :=
  ∀ n, P7069970617714346655.a n = A182310 n

end A182310

/-! ## A182310.P2136125824817201437

`A008619(xor(a(n-1)+a(n-1), a(n-1)))` with `a(0)=0`
-/

namespace A182310.P2136125824817201437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008619 (Int.xor (a (n - 1) + a (n - 1)) (a (n - 1))).toNat

end

end A182310.P2136125824817201437

namespace A182310

/-- `A008619(xor(a(n-1)+a(n-1), a(n-1)))` -/
def P2136125824817201437.Spec : Prop :=
  ∀ n, P2136125824817201437.a n = A182310 n

end A182310

/-!
# A182312: Primes of the form a^2 + b^2 such that both a^2 + b^2 - a*b and a^2 + b^2 + a*b are prime.

The programs for A182312, there is no canonical definition to state claims against.
-/

/-! ## A182312.P11382831505370829867

`p?[A283659(3*n+2)-7]`
-/

namespace A182312.P11382831505370829867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283659 (3 * n + 2) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182312.P11382831505370829867

/-!
# A182313: Primes of form a^2+b^2 such that a^4+b^4 and a^8+b^8 are primes.

The programs for A182313, there is no canonical definition to state claims against.
-/

/-! ## A182313.P10747719866957965985

`p?[A305702(n+2)-A249578(n)]`
-/

namespace A182313.P10747719866957965985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305702 (n + 2) - A249578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182313.P10747719866957965985

/-!
# A182314: G.f. satisfies: A(x) = 1 + x*A(A(x)^2 - 1).

The programs for A182314, there is no canonical definition to state claims against.
-/

/-! ## A182314.P365293877907182473

`A168112(n!)`
-/

namespace A182314.P365293877907182473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168112 (Nat.factorial n)

end

end A182314.P365293877907182473

/-!
# A182315: Primes prime(n) such that prime(n+1) - prime(n) > log(n)^2.

The programs for A182315, there is no canonical definition to state claims against.
-/

/-! ## A182315.P8835299694075717533

`∑{p}[A211073(A165307(n+1)), #]`
-/

namespace A182315.P8835299694075717533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211073 (A165307 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A182315.P8835299694075717533

/-! ## A182315.P15761745068443397826

`∑{p}[A211073(A342951(n+1)), #]`
-/

namespace A182315.P15761745068443397826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211073 (A342951 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A182315.P15761745068443397826

/-! ## A182315.P3496263761546652928

`A211073(A008816(n)^A128936(n))`
-/

namespace A182315.P3496263761546652928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211073 (SequenceMachineLib.roundAway ((A008816 n : ℚ) ^ (A128936 n : ℤ))).toNat

end

end A182315.P3496263761546652928

/-! ## A182315.P4980445827599869058

`∪[A006530(A124147(n+1)), A211073(n+1)]`
-/

namespace A182315.P4980445827599869058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124147 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182315.P4980445827599869058

/-! ## A182315.P6233475456554757890

`A020639(∪[A211073(n+1), A124147(n+6)])`
-/

namespace A182315.P6233475456554757890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124147 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182315.P6233475456554757890

/-!
# A182316: a(n) = binomial(n^2 + 3*n, n) / (n+1)^2.

The programs for A182316, there is no canonical definition to state claims against.
-/

/-! ## A182316.P14625917672013693716

`A351501(n+1)/(n+1)`
-/

namespace A182316.P14625917672013693716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351501 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A182316.P14625917672013693716

/-! ## A182316.P5594764849324349556

`A214400(n)/(n+1)²`
-/

namespace A182316.P5594764849324349556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214400 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A182316.P5594764849324349556

/-! ## A182316.P17433851292207720920

`C(n*(n+3), n)/(n+1)²`
-/

namespace A182316.P17433851292207720920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 3)) n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A182316.P17433851292207720920

/-! ## A182316.P15884774977211139356

`floor(C(n*(n+3), n)/∑[2*n+1])`
-/

namespace A182316.P15884774977211139356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n * (n + 3)) n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A182316.P15884774977211139356

/-! ## A182316.P14191809142103406691

`A070914(A132209(n+1))`
-/

namespace A182316.P14191809142103406691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A132209 (n + 1)).toNat

end

end A182316.P14191809142103406691

/-!
# A182317: Least prime p = prime(k) such that prime(k+n) - prime(k) = 2^(n-1), or 0 if no such p exists.

The programs for A182317, there is no canonical definition to state claims against.
-/

/-! ## A182317.P2489029568063524612

`A114302(a(n-3)+2^(n-3))+1` with `a(0)=2, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A182317.P2489029568063524612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0, 0] fun n a =>
  A114302 (SequenceMachineLib.roundAway ((a (n - 3) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))).toNat + 1

end

end A182317.P2489029568063524612

/-! ## A182317.P676831656163425896

`abs(A295301(A037919(n)))`
-/

namespace A182317.P676831656163425896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295301 (A037919 n).toNat|

end

end A182317.P676831656163425896

/-!
# A182318: List of positive integers whose prime tower factorization, as defined in comments, does not contain the prime 2.

The programs for A182318, the canonical program `A182318.P12456302042161532717` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182318 has offset 1).

The definition of A182318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182318.P11503725615159182609

`record[A331737(record[xor(1, n)])]`
-/

namespace A182318.P11503725615159182609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P11503725615159182609

namespace A182318

/-- `record[A331737(record[xor(1, n)])]` -/
def P11503725615159182609.Spec : Prop :=
  ∀ n, P11503725615159182609.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P9524273592048798223

`record[A331737(2*n+1)]`
-/

namespace A182318.P9524273592048798223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P9524273592048798223

namespace A182318

/-- `record[A331737(2*n+1)]` -/
def P9524273592048798223.Spec : Prop :=
  ∀ n, P9524273592048798223.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P7392544445529378025

`record[A331737(n+1)-A331739(n+1)]`
-/

namespace A182318.P7392544445529378025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1) - A331739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P7392544445529378025

namespace A182318

/-- `record[A331737(n+1)-A331739(n+1)]` -/
def P7392544445529378025.Spec : Prop :=
  ∀ n, P7392544445529378025.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P8473710857322976613

`A331737(eq[n, and(n, A331737(n+1))]+1)`
-/

namespace A182318.P8473710857322976613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A331737 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A182318.P8473710857322976613

namespace A182318

/-- `A331737(eq[n, and(n, A331737(n+1))]+1)` -/
def P8473710857322976613.Spec : Prop :=
  ∀ n, P8473710857322976613.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P12456302042161532717

`filter[A047501(n+1), A295316(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182318

/-- `filter[A047501(n+1), A295316(#)]` -/
def P12456302042161532717.Spec : Prop :=
  ∀ n, P12456302042161532717.a n = A182318 (n + 1)

theorem P12456302042161532717.correct : P12456302042161532717.Spec := by
  intro n
  simp only [A182318, Nat.add_sub_cancel]

end A182318

/-! ## A182318.P6278257688227059972

`filter[A003159(n+1), A295316(#)]`
-/

namespace A182318.P6278257688227059972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A182318.P6278257688227059972

namespace A182318

/-- `filter[A003159(n+1), A295316(#)]` -/
def P6278257688227059972.Spec : Prop :=
  ∀ n, P6278257688227059972.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P14270446006814216406

`∩[2*n+1, A268335(n+1)]`
-/

namespace A182318.P14270446006814216406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182318.P14270446006814216406

namespace A182318

/-- `∩[2*n+1, A268335(n+1)]` -/
def P14270446006814216406.Spec : Prop :=
  ∀ n, (P14270446006814216406.a n : ℤ) = A182318 (n + 1)

end A182318

/-! ## A182318.P4595044811712929087

`filter[A268335(n+1), A035263(#)]`
-/

namespace A182318.P4595044811712929087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A182318.P4595044811712929087

namespace A182318

/-- `filter[A268335(n+1), A035263(#)]` -/
def P4595044811712929087.Spec : Prop :=
  ∀ n, P4595044811712929087.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P4981125800827506781

`∩[A268335(n+1), A004273(n)]`
-/

namespace A182318.P4981125800827506781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182318.P4981125800827506781

namespace A182318

/-- `∩[A268335(n+1), A004273(n)]` -/
def P4981125800827506781.Spec : Prop :=
  ∀ n, (P4981125800827506781.a n : ℤ) = A182318 (n + 1)

end A182318

/-! ## A182318.P11344239572872371524

`∩[A268335(n+1), A060747(n)]`
-/

namespace A182318.P11344239572872371524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182318.P11344239572872371524

namespace A182318

/-- `∩[A268335(n+1), A060747(n)]` -/
def P11344239572872371524.Spec : Prop :=
  ∀ n, (P11344239572872371524.a n : ℤ) = A182318 (n + 1)

end A182318

/-! ## A182318.P12678482517724714903

`record[A350389(2*n+1)]`
-/

namespace A182318.P12678482517724714903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P12678482517724714903

namespace A182318

/-- `record[A350389(2*n+1)]` -/
def P12678482517724714903.Spec : Prop :=
  ∀ n, P12678482517724714903.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P8766124551111113511

`record[A350390(2*n+1)]`
-/

namespace A182318.P8766124551111113511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P8766124551111113511

namespace A182318

/-- `record[A350390(2*n+1)]` -/
def P8766124551111113511.Spec : Prop :=
  ∀ n, P8766124551111113511.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P4623580808117430886

`record[A390371(2*n+1)]`
-/

namespace A182318.P4623580808117430886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P4623580808117430886

namespace A182318

/-- `record[A390371(2*n+1)]` -/
def P4623580808117430886.Spec : Prop :=
  ∀ n, P4623580808117430886.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P6097478696896998953

`record[A390867(2*n+1)]`
-/

namespace A182318.P6097478696896998953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390867 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182318.P6097478696896998953

namespace A182318

/-- `record[A390867(2*n+1)]` -/
def P6097478696896998953.Spec : Prop :=
  ∀ n, P6097478696896998953.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P12176813598680423043

`filter[A268335(n+1), A000035(#)]`
-/

namespace A182318.P12176813598680423043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A182318.P12176813598680423043

namespace A182318

/-- `filter[A268335(n+1), A000035(#)]` -/
def P12176813598680423043.Spec : Prop :=
  ∀ n, P12176813598680423043.a n = A182318 (n + 1)

end A182318

/-! ## A182318.P350574418178480017

`filter[A268335(n+1), A104106(#)]`
-/

namespace A182318.P350574418178480017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A182318.P350574418178480017

namespace A182318

/-- `filter[A268335(n+1), A104106(#)]` -/
def P350574418178480017.Spec : Prop :=
  ∀ n, P350574418178480017.a n = A182318 (n + 1)

end A182318

/-!
# A182320: Primes p = prime(n) such that the equation prime(n+k) - prime(n) = 6^(k-1) has at least one solution, k>0.

The programs for A182320, there is no canonical definition to state claims against.
-/

/-! ## A182320.P9730995342443106213

`∩[A167773(n+1), A303112(n+1)]`
-/

namespace A182320.P9730995342443106213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182320.P9730995342443106213

/-! ## A182320.P14623931745166068143

`A007529(A028310(n))%A099296(n+1)`
-/

namespace A182320.P14623931745166068143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007529 (A028310 n).toNat) (A099296 (n + 1))

end

end A182320.P14623931745166068143

/-! ## A182320.P9664240313433740760

`A303112(A032555(n+1))`
-/

namespace A182320.P9664240313433740760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303112 (A032555 (n + 1)).toNat

end

end A182320.P9664240313433740760

/-! ## A182320.P18377190795810801022

`A303112(A032557(n+1))`
-/

namespace A182320.P18377190795810801022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303112 (A032557 (n + 1)).toNat

end

end A182320.P18377190795810801022

/-! ## A182320.P186810722317132084

`A303112(A032559(n+1))`
-/

namespace A182320.P186810722317132084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303112 (A032559 (n + 1)).toNat

end

end A182320.P186810722317132084

/-!
# A182321: Number of iterations of A025581(n) required to reach 0.

The programs for A182321, the canonical program `A182321.P13354120704711382956` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182321 has offset 0).

The definition of A182321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182321.P13354120704711382956

`a(A004736(n)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182321

/-- `a(A004736(n)-1)+1` -/
def P13354120704711382956.Spec : Prop :=
  ∀ n, (P13354120704711382956.a n : ℤ) = A182321 n

theorem P13354120704711382956.correct : P13354120704711382956.Spec := by
  intro n
  simp only [A182321]

end A182321

/-! ## A182321.P582370766008873185

`1+a(A025581(n-1))` with `a(0)=0`
-/

namespace A182321.P582370766008873185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A025581 (n - 1)).toNat

end

end A182321.P582370766008873185

namespace A182321

/-- `1+a(A025581(n-1))` -/
def P582370766008873185.Spec : Prop :=
  ∀ n, (P582370766008873185.a n : ℤ) = A182321 n

end A182321

/-! ## A182321.P7253473130920068226

`a(A057554(2*n))+1` with `a(0)=0`
-/

namespace A182321.P7253473130920068226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A057554 (2 * n)).toNat + 1

end

end A182321.P7253473130920068226

namespace A182321

/-- `a(A057554(2*n))+1` -/
def P7253473130920068226.Spec : Prop :=
  ∀ n, (P7253473130920068226.a n : ℤ) = A182321 n

end A182321

/-! ## A182321.P2887140314904228462

`a(A127739(n)%n)+1` with `a(0)=0`
-/

namespace A182321.P2887140314904228462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A127739 n) (n : ℤ)).toNat + 1

end

end A182321.P2887140314904228462

namespace A182321

/-- `a(A127739(n)%n)+1` -/
def P2887140314904228462.Spec : Prop :=
  ∀ n, (P2887140314904228462.a n : ℤ) = A182321 n

end A182321

/-! ## A182321.P1809927113313297010

`A078840(a(A025581(n-1)))` with `a(0)=0`
-/

namespace A182321.P1809927113313297010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078840 (a (A025581 (n - 1)).toNat).toNat

end

end A182321.P1809927113313297010

namespace A182321

/-- `A078840(a(A025581(n-1)))` -/
def P1809927113313297010.Spec : Prop :=
  ∀ n, P1809927113313297010.a n = A182321 n

end A182321

/-! ## A182321.P18378420260376548699

`a(A004736(n+1)%A124927(n))+1` with `a(0)=0`
-/

namespace A182321.P18378420260376548699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A004736 (n + 1)) (A124927 n)).toNat + 1

end

end A182321.P18378420260376548699

namespace A182321

/-- `a(A004736(n+1)%A124927(n))+1` -/
def P18378420260376548699.Spec : Prop :=
  ∀ n, (P18378420260376548699.a n : ℤ) = A182321 n

end A182321

/-! ## A182321.P2541927666728235938

`A098098(a(A002262(A038722(n+1))))` with `a(0)=0`
-/

namespace A182321.P2541927666728235938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A098098 (a (A002262 (A038722 (n + 1)).toNat).toNat).toNat

end

end A182321.P2541927666728235938

namespace A182321

/-- `A098098(a(A002262(A038722(n+1))))` -/
def P2541927666728235938.Spec : Prop :=
  ∀ n, P2541927666728235938.a n = A182321 n

end A182321

/-! ## A182321.P16185189940136226692

`A334436(a(A002262(A038722(n+1))))` with `a(0)=0`
-/

namespace A182321.P16185189940136226692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A334436 (a (A002262 (A038722 (n + 1)).toNat).toNat).toNat

end

end A182321.P16185189940136226692

namespace A182321

/-- `A334436(a(A002262(A038722(n+1))))` -/
def P16185189940136226692.Spec : Prop :=
  ∀ n, P16185189940136226692.a n = A182321 n

end A182321

/-! ## A182321.P10136724526867820579

`A057515(A071652(n))`
-/

namespace A182321.P10136724526867820579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A071652 n).toNat

end

end A182321.P10136724526867820579

namespace A182321

/-- `A057515(A071652(n))` -/
def P10136724526867820579.Spec : Prop :=
  ∀ n, P10136724526867820579.a n = A182321 n

end A182321

/-!
# A182322: Number of simplicial 4-clusters with n cells. (Formerly M2679).

The programs for A182322, there is no canonical definition to state claims against.
-/

/-! ## A182322.P2239782271626811002

`(A007175(n+1)+A182299(n+1))/2`
-/

namespace A182322.P2239782271626811002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007175 (n + 1) + A182299 (n + 1) : ℚ) / 2

end

end A182322.P2239782271626811002

/-! ## A182322.P2990792637421330052

`A369474(n+1)+A182299(n+1)`
-/

namespace A182322.P2990792637421330052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369474 (n + 1) + A182299 (n + 1)

end

end A182322.P2990792637421330052

/-! ## A182322.P16288576225786418813

`A007175(n+1)-A369474(n+1)`
-/

namespace A182322.P16288576225786418813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007175 (n + 1) - A369474 (n + 1)

end

end A182322.P16288576225786418813

/-! ## A182322.P8922988598216879516

`A182299(n+1)+A004525(A007175(n+1)-A182299(n+1))`
-/

namespace A182322.P8922988598216879516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182299 (n + 1) + A004525 (A007175 (n + 1) - A182299 (n + 1)).toNat

end

end A182322.P8922988598216879516

/-! ## A182322.P4218599655029998124

`A182299(n+1)+A004526(A007175(n+1)-A182299(n+1))`
-/

namespace A182322.P4218599655029998124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182299 (n + 1) + A004526 (A007175 (n + 1) - A182299 (n + 1)).toNat

end

end A182322.P4218599655029998124

/-!
# A182323: a(n) = (194*n + 3*(-1)^n + 1)/4 + 24.

The programs for A182323, the canonical program `A182323.P501958721353626101` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182323 has offset 0).

The definition of A182323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182323.P501958721353626101

`(194*n+3*(-1)^n+1)/4+24`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182323

/-- `(194*n+3*(-1)^n+1)/4+24` -/
def P501958721353626101.Spec : Prop :=
  ∀ n, P501958721353626101.a n = (A182323 n : ℚ)

end A182323

/-! ## A182323.P14677985317813427117

`∑[floor(a(n-2))]` with `a(0)=25, a(1)=47, a(2)=50`

`floor` is left out, it is the identity on integers.
-/

namespace A182323.P14677985317813427117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [25, 47, 50] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182323.P14677985317813427117

namespace A182323

/-- `∑[floor(a(n-2))]` -/
def P14677985317813427117.Spec : Prop :=
  ∀ n, (P14677985317813427117.a n : ℤ) = A182323 n

end A182323

/-! ## A182323.P17207542452966188460

`Δ[A004652(n)+24*n²]`
-/

namespace A182323.P17207542452966188460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n + (24 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182323.P17207542452966188460

namespace A182323

/-- `Δ[A004652(n)+24*n²]` -/
def P17207542452966188460.Spec : Prop :=
  ∀ n, P17207542452966188460.a n = A182323 n

end A182323

/-! ## A182323.P18137950961525196829

`∑[A280193(n)+A040559(2*n)]`
-/

namespace A182323.P18137950961525196829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A040559 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182323.P18137950961525196829

namespace A182323

/-- `∑[A280193(n)+A040559(2*n)]` -/
def P18137950961525196829.Spec : Prop :=
  ∀ n, P18137950961525196829.a n = A182323 n

end A182323

/-! ## A182323.P2766706070450946100

`record[A241521(n+2)/A020639(A016885(2*n))]`
-/

namespace A182323.P2766706070450946100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241521 (n + 2) : ℚ) / (A020639 (A016885 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182323.P2766706070450946100

namespace A182323

/-- `record[A241521(n+2)/A020639(A016885(2*n))]` -/
def P2766706070450946100.Spec : Prop :=
  ∀ n, P2766706070450946100.a n = (A182323 n : ℚ)

end A182323

/-!
# A182324: n + (initial digit of n) in decimal representation.

The programs for A182324, the canonical program `A182324.P68523715600839783` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182324 has offset 0).

The definition of A182324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182324.P68523715600839783

`n+A000030(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182324

/-- `n+A000030(n)` -/
def P68523715600839783.Spec : Prop :=
  ∀ n, P68523715600839783.a n = A182324 n

theorem P68523715600839783.correct : P68523715600839783.Spec := by
  intro n
  simp only [A182324]

end A182324

/-! ## A182324.P15888937316635615229

`val(A061509(n), 2)+n`
-/

namespace A182324.P15888937316635615229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 n).toNat 2 + n

end

end A182324.P15888937316635615229

namespace A182324

/-- `val(A061509(n), 2)+n` -/
def P15888937316635615229.Spec : Prop :=
  ∀ n, (P15888937316635615229.a n : ℤ) = A182324 n

end A182324

/-! ## A182324.P7687011792064455051

`A004086(n)%10+n`
-/

namespace A182324.P7687011792064455051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 10 + (n : ℤ)

end

end A182324.P7687011792064455051

namespace A182324

/-- `A004086(n)%10+n` -/
def P7687011792064455051.Spec : Prop :=
  ∀ n, P7687011792064455051.a n = A182324 n

end A182324

/-! ## A182324.P14155009972372092521

`A032762(n)%10+n`
-/

namespace A182324.P14155009972372092521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10 + (n : ℤ)

end

end A182324.P14155009972372092521

namespace A182324

/-- `A032762(n)%10+n` -/
def P14155009972372092521.Spec : Prop :=
  ∀ n, P14155009972372092521.a n = A182324 n

end A182324

/-! ## A182324.P87333997594515205

`A056142(n)%10+n`
-/

namespace A182324.P87333997594515205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n) 10 + (n : ℤ)

end

end A182324.P87333997594515205

namespace A182324

/-- `A056142(n)%10+n` -/
def P87333997594515205.Spec : Prop :=
  ∀ n, P87333997594515205.a n = A182324 n

end A182324

/-! ## A182324.P5486045339604912266

`A082216(n)%10+n`
-/

namespace A182324.P5486045339604912266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10 + (n : ℤ)

end

end A182324.P5486045339604912266

namespace A182324

/-- `A082216(n)%10+n` -/
def P5486045339604912266.Spec : Prop :=
  ∀ n, P5486045339604912266.a n = A182324 n

end A182324

/-! ## A182324.P10677024556039988620

`dr(∑[char[A274206(n+1)]])+n`
-/

namespace A182324.P10677024556039988620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + n

end

end A182324.P10677024556039988620

namespace A182324

/-- `dr(∑[char[A274206(n+1)]])+n` -/
def P10677024556039988620.Spec : Prop :=
  ∀ n, (P10677024556039988620.a n : ℤ) = A182324 n

end A182324

/-! ## A182324.P1419854101051759977

`A010879(A004086(n))+n`
-/

namespace A182324.P1419854101051759977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat + (n : ℤ)

end

end A182324.P1419854101051759977

namespace A182324

/-- `A010879(A004086(n))+n` -/
def P1419854101051759977.Spec : Prop :=
  ∀ n, P1419854101051759977.a n = A182324 n

end A182324

/-! ## A182324.P13216319449426856531

`A010879(A032762(n))+n`
-/

namespace A182324.P13216319449426856531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032762 n).toNat + (n : ℤ)

end

end A182324.P13216319449426856531

namespace A182324

/-- `A010879(A032762(n))+n` -/
def P13216319449426856531.Spec : Prop :=
  ∀ n, P13216319449426856531.a n = A182324 n

end A182324

/-! ## A182324.P5640340226563424073

`A007376(A229186(n))+n`
-/

namespace A182324.P5640340226563424073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 n).toNat + (n : ℤ)

end

end A182324.P5640340226563424073

namespace A182324

/-- `A007376(A229186(n))+n` -/
def P5640340226563424073.Spec : Prop :=
  ∀ n, P5640340226563424073.a n = A182324 n

end A182324

/-! ## A182324.P180207540898947649

`A169932(n)+A088133(n)`
-/

namespace A182324.P180207540898947649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 n + A088133 n

end

end A182324.P180207540898947649

namespace A182324

/-- `A169932(n)+A088133(n)` -/
def P180207540898947649.Spec : Prop :=
  ∀ n, P180207540898947649.a n = A182324 n

end A182324

/-! ## A182324.P10735338286985994690

`A054055(A355221(n))+n`
-/

namespace A182324.P10735338286985994690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A355221 n).toNat + (n : ℤ)

end

end A182324.P10735338286985994690

namespace A182324

/-- `A054055(A355221(n))+n` -/
def P10735338286985994690.Spec : Prop :=
  ∀ n, P10735338286985994690.a n = A182324 n

end A182324

/-! ## A182324.P16594776017196494217

`A054054(A355222(n))+n`
-/

namespace A182324.P16594776017196494217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A355222 n).toNat + (n : ℤ)

end

end A182324.P16594776017196494217

namespace A182324

/-- `A054054(A355222(n))+n` -/
def P16594776017196494217.Spec : Prop :=
  ∀ n, P16594776017196494217.a n = A182324 n

end A182324

/-! ## A182324.P10519061643318956068

`A000030(n)-A001489(n)`
-/

namespace A182324.P10519061643318956068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n - A001489 n

end

end A182324.P10519061643318956068

namespace A182324

/-- `A000030(n)-A001489(n)` -/
def P10519061643318956068.Spec : Prop :=
  ∀ n, P10519061643318956068.a n = A182324 n

end A182324

/-! ## A182324.P7233191004300717495

`A001622(A088577(n)-1)+n`
-/

namespace A182324.P7233191004300717495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A088577 n - 1).toNat + 1) + (n : ℤ)

end

end A182324.P7233191004300717495

namespace A182324

/-- `A001622(A088577(n)-1)+n` -/
def P7233191004300717495.Spec : Prop :=
  ∀ n, P7233191004300717495.a n = A182324 n

end A182324

/-! ## A182324.P14945564563818689136

`A007376(A086044(n)-1)+n`
-/

namespace A182324.P14945564563818689136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A086044 n - 1).toNat + (n : ℤ)

end

end A182324.P14945564563818689136

namespace A182324

/-- `A007376(A086044(n)-1)+n` -/
def P14945564563818689136.Spec : Prop :=
  ∀ n, P14945564563818689136.a n = A182324 n

end A182324

/-! ## A182324.P1887561480744272221

`A007953(n-A217657(n))+n`
-/

namespace A182324.P1887561480744272221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) - A217657 n).toNat + (n : ℤ)

end

end A182324.P1887561480744272221

namespace A182324

/-- `A007953(n-A217657(n))+n` -/
def P1887561480744272221.Spec : Prop :=
  ∀ n, P1887561480744272221.a n = A182324 n

end A182324

/-! ## A182324.P18283428831407065193

`n-(A055672(A055672(n))-A000030(n))`
-/

namespace A182324.P18283428831407065193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055672 (A055672 n).toNat - A000030 n)

end

end A182324.P18283428831407065193

namespace A182324

/-- `n-(A055672(A055672(n))-A000030(n))` -/
def P18283428831407065193.Spec : Prop :=
  ∀ n, P18283428831407065193.a n = A182324 n

end A182324

/-! ## A182324.P11850777793044216794

`n-(A005872(A005872(n))-A000030(n))`
-/

namespace A182324.P11850777793044216794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A005872 (A005872 n).toNat - A000030 n)

end

end A182324.P11850777793044216794

namespace A182324

/-- `n-(A005872(A005872(n))-A000030(n))` -/
def P11850777793044216794.Spec : Prop :=
  ∀ n, P11850777793044216794.a n = A182324 n

end A182324

/-! ## A182324.P17342425318863718834

`n-(A005888(A005888(n))-A000030(n))`
-/

namespace A182324.P17342425318863718834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A005888 (A005888 n).toNat - A000030 n)

end

end A182324.P17342425318863718834

namespace A182324

/-- `n-(A005888(A005888(n))-A000030(n))` -/
def P17342425318863718834.Spec : Prop :=
  ∀ n, P17342425318863718834.a n = A182324 n

end A182324

/-!
# A182325: G.f. satisfies: A(x) = ( A(x^2) + x*A(x) )^2.

The programs for A182325, there is no canonical definition to state claims against.
-/

/-! ## A182325.P12448454412753433352

`A345909(A051354(n))+A330422(n)`
-/

namespace A182325.P12448454412753433352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345909 (A051354 n).toNat + A330422 n

end

end A182325.P12448454412753433352

/-! ## A182325.P8901115747567265151

`A054846(A000244(n)*A026569(n))`
-/

namespace A182325.P8901115747567265151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A000244 n * A026569 n).toNat

end

end A182325.P8901115747567265151

/-!
# A182332: Primes of the form k^3 + k - 1.

The programs for A182332, there is no canonical definition to state claims against.
-/

/-! ## A182332.P11581473598451460675

`A034262(A236475(n+1))-1`
-/

namespace A182332.P11581473598451460675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (A236475 (n + 1)).toNat - 1

end

end A182332.P11581473598451460675

/-! ## A182332.P3286678834852253933

`A057428(n+1)+A034262(A236475(n+1))`
-/

namespace A182332.P3286678834852253933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A034262 (A236475 (n + 1)).toNat

end

end A182332.P3286678834852253933

/-! ## A182332.P357551998163687322

`A165326(2*(n+1))+A034262(A236475(n+1))`
-/

namespace A182332.P357551998163687322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A034262 (A236475 (n + 1)).toNat

end

end A182332.P357551998163687322

/-! ## A182332.P7736238584088179685

`A001478(n+1)+A034262(A236475(n+1))+n`
-/

namespace A182332.P7736238584088179685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A034262 (A236475 (n + 1)).toNat + (n : ℤ))

end

end A182332.P7736238584088179685

/-! ## A182332.P6152758545472306325

`A309873(A016825(n))+A034262(A236475(n+1))`
-/

namespace A182332.P6152758545472306325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A034262 (A236475 (n + 1)).toNat

end

end A182332.P6152758545472306325

/-! ## A182332.P4033413854514244661

`A062157(A100484(n+1))+A034262(A236475(n+1))`
-/

namespace A182332.P4033413854514244661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A100484 (n + 1)).toNat + A034262 (A236475 (n + 1)).toNat

end

end A182332.P4033413854514244661

/-! ## A182332.P3979190352399634684

`A062157(A191129(n+1)+1)+A034262(A236475(n+1))`
-/

namespace A182332.P3979190352399634684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A191129 (n + 1) + 1).toNat + A034262 (A236475 (n + 1)).toNat

end

end A182332.P3979190352399634684

/-! ## A182332.P1042320583943162436

`A085384(A153376(n+1))+A034262(A236475(n+1))`
-/

namespace A182332.P1042320583943162436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (A153376 (n + 1)).toNat + A034262 (A236475 (n + 1)).toNat

end

end A182332.P1042320583943162436

/-!
# A182333: Number of arrangements of n bishops such that every square of the board is controlled by at least one bishop.

The programs for A182333, there is no canonical definition to state claims against.
-/

/-! ## A182333.P1032396104738396598

`Δ[A071538((A000368(n+4)+n)²)]`
-/

namespace A182333.P1032396104738396598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((A000368 (n + 4) + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182333.P1032396104738396598

/-!
# A182334: Triangular numbers that differ from a square by 1.

The programs for A182334, there is no canonical definition to state claims against.
-/

/-! ## A182334.P7573226315201604891

`A000217(∪[A006451(n), A072221(n)])`
-/

namespace A182334.P7573226315201604891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182334.P7573226315201604891

/-! ## A182334.P9224327782396648958

`A000217(∪[A229131(n+1), A006451(n)])`
-/

namespace A182334.P9224327782396648958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182334.P9224327782396648958

/-! ## A182334.P6099184250675623708

`eq[A010054(n), A066635(A028310(n))]`
-/

namespace A182334.P6099184250675623708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182334.P6099184250675623708

/-! ## A182334.P1103379832557881738

`eq[A010054(n), A084600(A236348(n))]`
-/

namespace A182334.P1103379832557881738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A236348 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182334.P1103379832557881738

/-! ## A182334.P3838482091778619299

`∩[A000217(n), A004526(A266448(n))]`
-/

namespace A182334.P3838482091778619299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A266448 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182334.P3838482091778619299

/-!
# A182337: List of positive integers whose prime tower factorization, as defined in comments, does not contain the prime 3.

The programs for A182337, there is no canonical definition to state claims against.
-/

/-! ## A182337.P515571569069400400

`eq[char[A182338(n+1)], A000007(n)]`
-/

namespace A182337.P515571569069400400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182338 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182337.P515571569069400400

/-! ## A182337.P2232702482759637640

`eq[char[A182338(n+1)], A000038(n)]`
-/

namespace A182337.P2232702482759637640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182338 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182337.P2232702482759637640

/-! ## A182337.P2189616507033613455

`eq[1, A038500(A000026(n+1)²)]+1`
-/

namespace A182337.P2189616507033613455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000026 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182337.P2189616507033613455

/-!
# A182338: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 3.

The programs for A182338, there is no canonical definition to state claims against.
-/

/-! ## A182338.P4780386778275298901

`eq[char[A182337(n+1)], A000007(n)]`
-/

namespace A182338.P4780386778275298901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182338.P4780386778275298901

/-! ## A182338.P11568974770514738802

`eq[char[A182337(n+1)], A000038(n)]`
-/

namespace A182338.P11568974770514738802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182338.P11568974770514738802

/-! ## A182338.P4388130886571588669

`eq[char[A182337(n+1)], A020761(n)]`
-/

namespace A182338.P4388130886571588669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182338.P4388130886571588669

/-!
# A182339: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 2.

The programs for A182339, the canonical program `A182339.P2554287700400521995` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182339 has offset 1).

The definition of A182339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182339.P14916284547888566825

`comp[A182318(n+1)-1]+1`
-/

namespace A182339.P14916284547888566825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182339.P14916284547888566825

namespace A182339

/-- `comp[A182318(n+1)-1]+1` -/
def P14916284547888566825.Spec : Prop :=
  ∀ n, (P14916284547888566825.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P2554287700400521995

`∪[A036554(n+1), A072587(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182339

/-- `∪[A036554(n+1), A072587(n+1)]` -/
def P2554287700400521995.Spec : Prop :=
  ∀ n, (P2554287700400521995.a n : ℤ) = A182339 (n + 1)

theorem P2554287700400521995.correct : P2554287700400521995.Spec := by
  intro n
  simp only [A182339, Nat.add_sub_cancel]

end A182339

/-! ## A182339.P967123701067793088

`∪[A072587(n+1), A157502(n+1)]`
-/

namespace A182339.P967123701067793088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182339.P967123701067793088

namespace A182339

/-- `∪[A072587(n+1), A157502(n+1)]` -/
def P967123701067793088.Spec : Prop :=
  ∀ n, (P967123701067793088.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P9290386315437224629

`lt[A333755(a(n-1)), A336643(n+1)]+1` with `a(0)=1`
-/

namespace A182339.P9290386315437224629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A333755 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182339.P9290386315437224629

namespace A182339

/-- `lt[A333755(a(n-1)), A336643(n+1)]+1` -/
def P9290386315437224629.Spec : Prop :=
  ∀ n, (P9290386315437224629.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P10531204931351481582

`eq[2, A284694(n+1)]+1`
-/

namespace A182339.P10531204931351481582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182339.P10531204931351481582

namespace A182339

/-- `eq[2, A284694(n+1)]+1` -/
def P10531204931351481582.Spec : Prop :=
  ∀ n, (P10531204931351481582.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P15163958216609119424

`eq[2, A284694(A028310(n))]`
-/

namespace A182339.P15163958216609119424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182339.P15163958216609119424

namespace A182339

/-- `eq[2, A284694(A028310(n))]` -/
def P15163958216609119424.Spec : Prop :=
  ∀ n, (P15163958216609119424.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P17232436952698792157

`eq[2, A020639(A000026(n+1))]+1`
-/

namespace A182339.P17232436952698792157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182339.P17232436952698792157

namespace A182339

/-- `eq[2, A020639(A000026(n+1))]+1` -/
def P17232436952698792157.Spec : Prop :=
  ∀ n, (P17232436952698792157.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P4855429539339332597

`eq[2, A020639(A336965(n+1))]+1`
-/

namespace A182339.P4855429539339332597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A336965 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182339.P4855429539339332597

namespace A182339

/-- `eq[2, A020639(A336965(n+1))]+1` -/
def P4855429539339332597.Spec : Prop :=
  ∀ n, (P4855429539339332597.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P16198175955582018281

`record[A005843(n+1)/A284694(n+1)]`
-/

namespace A182339.P16198175955582018281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A284694 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182339.P16198175955582018281

namespace A182339

/-- `record[A005843(n+1)/A284694(n+1)]` -/
def P16198175955582018281.Spec : Prop :=
  ∀ n, P16198175955582018281.a n = (A182339 (n + 1) : ℚ)

end A182339

/-! ## A182339.P17717398414649495714

`lt[A225350(A336965(n+1)+1), 2]+1`
-/

namespace A182339.P17717398414649495714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225350 (A336965 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182339.P17717398414649495714

namespace A182339

/-- `lt[A225350(A336965(n+1)+1), 2]+1` -/
def P17717398414649495714.Spec : Prop :=
  ∀ n, (P17717398414649495714.a n : ℤ) = A182339 (n + 1)

end A182339

/-! ## A182339.P1999487780024381919

`record[n+1-A020639(A057723(n+1))]+2`
-/

namespace A182339.P1999487780024381919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A020639 (A057723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A182339.P1999487780024381919

namespace A182339

/-- `record[n+1-A020639(A057723(n+1))]+2` -/
def P1999487780024381919.Spec : Prop :=
  ∀ n, P1999487780024381919.a n = A182339 (n + 1)

end A182339

/-! ## A182339.P17726405819742687374

`eq[1, A000034(A057723(n+1))]+1`
-/

namespace A182339.P17726405819742687374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A057723 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182339.P17726405819742687374

namespace A182339

/-- `eq[1, A000034(A057723(n+1))]+1` -/
def P17726405819742687374.Spec : Prop :=
  ∀ n, (P17726405819742687374.a n : ℤ) = A182339 (n + 1)

end A182339

/-!
# A182340: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 5.

The programs for A182340, the canonical program `A182340.P464581348279077059` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182340 has offset 1).

The definition of A182340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182340.P464581348279077059

`eq[5, gcd(5, A000026(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182340

/-- `eq[5, gcd(5, A000026(n+1))]+1` -/
def P464581348279077059.Spec : Prop :=
  ∀ n, (P464581348279077059.a n : ℤ) = A182340 (n + 1)

theorem P464581348279077059.correct : P464581348279077059.Spec := by
  intro n
  simp only [A182340, Nat.add_sub_cancel]

end A182340

/-! ## A182340.P4235810794123819549

`lt[A269266(A336965(n+1)), 2]+1`
-/

namespace A182340.P4235810794123819549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 (A336965 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182340.P4235810794123819549

namespace A182340

/-- `lt[A269266(A336965(n+1)), 2]+1` -/
def P4235810794123819549.Spec : Prop :=
  ∀ n, (P4235810794123819549.a n : ℤ) = A182340 (n + 1)

end A182340

/-! ## A182340.P11360385968545039228

`lt[A131672(2*n+1)*A240351(n), A010891(n)]`
-/

namespace A182340.P11360385968545039228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131672 (2 * n + 1) * A240351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182340.P11360385968545039228

namespace A182340

/-- `lt[A131672(2*n+1)*A240351(n), A010891(n)]` -/
def P11360385968545039228.Spec : Prop :=
  ∀ n, (P11360385968545039228.a n : ℤ) = A182340 (n + 1)

end A182340

/-!
# A182341: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 7.

The programs for A182341, the canonical program `A182341.P1387839447626138029` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182341 has offset 1).

The definition of A182341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182341.P1387839447626138029

`eq[7, gcd(7, A000026(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182341

/-- `eq[7, gcd(7, A000026(n+1))]+1` -/
def P1387839447626138029.Spec : Prop :=
  ∀ n, (P1387839447626138029.a n : ℤ) = A182341 (n + 1)

theorem P1387839447626138029.correct : P1387839447626138029.Spec := by
  intro n
  simp only [A182341, Nat.add_sub_cancel]

end A182341

/-! ## A182341.P4380249339251372065

`∑[p?[A215735(A251683(n+1))]]`
-/

namespace A182341.P4380249339251372065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215735 (A251683 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182341.P4380249339251372065

namespace A182341

/-- `∑[p?[A215735(A251683(n+1))]]` -/
def P4380249339251372065.Spec : Prop :=
  ∀ n, P4380249339251372065.a n = A182341 (n + 1)

end A182341

/-! ## A182341.P1106083660889281923

`∑[p?[7-A151838(n)%15]]`
-/

namespace A182341.P1106083660889281923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (A151838 n) 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182341.P1106083660889281923

namespace A182341

/-- `∑[p?[7-A151838(n)%15]]` -/
def P1106083660889281923.Spec : Prop :=
  ∀ n, P1106083660889281923.a n = A182341 (n + 1)

end A182341

/-! ## A182341.P664674919218991858

`∑[p?[dr(A024814(3*n+1))]]`
-/

namespace A182341.P664674919218991858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A024814 (3 * n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182341.P664674919218991858

namespace A182341

/-- `∑[p?[dr(A024814(3*n+1))]]` -/
def P664674919218991858.Spec : Prop :=
  ∀ n, (P664674919218991858.a n : ℤ) = A182341 (n + 1)

end A182341

/-! ## A182341.P845153327671024721

`∑[p?[A225410(A058343(n))]]`
-/

namespace A182341.P845153327671024721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225410 (A058343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182341.P845153327671024721

namespace A182341

/-- `∑[p?[A225410(A058343(n))]]` -/
def P845153327671024721.Spec : Prop :=
  ∀ n, P845153327671024721.a n = A182341 (n + 1)

end A182341

/-!
# A182342: Primes of the form k*2^k + 5.

The programs for A182342, there is no canonical definition to state claims against.
-/

/-! ## A182342.P11455615308070531778

`p?[n*2^n+5]`
-/

namespace A182342.P11455615308070531778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A182342.P11455615308070531778

/-! ## A182342.P9645097164417608035

`or(4, p?[xor(5, n*2^n)])`
-/

namespace A182342.P9645097164417608035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n * 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A182342.P9645097164417608035

/-! ## A182342.P14057197618544404722

`p?[A036289(n)+5]/A020985(n)²`
-/

namespace A182342.P14057197618544404722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A182342.P14057197618544404722

/-!
# A182343: Primes of the form k^4 + 2 for k >= 0.

The programs for A182343, there is no canonical definition to state claims against.
-/

/-! ## A182343.P2920451067040380499

`A216974(n+1)²²+2`
-/

namespace A182343.P2920451067040380499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216974 (n + 1) ^ 2) ^ 2 + 2

end

end A182343.P2920451067040380499

/-! ## A182343.P11200994778654220862

`1+A002523(A216974(n+1))`
-/

namespace A182343.P11200994778654220862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002523 (A216974 (n + 1)).toNat

end

end A182343.P11200994778654220862

/-! ## A182343.P17427664882831797816

`∩[A067201(n+1), n²]²+2`
-/

namespace A182343.P17427664882831797816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n ^ 2 + 2

end

end A182343.P17427664882831797816

/-! ## A182343.P4680627235731501882

`A002523(lt[0, A355449(n²)])+1`
-/

namespace A182343.P4680627235731501882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A182343.P4680627235731501882

/-! ## A182343.P15527353506393744323

`A002523(eq[1, A355449(n*or(1, n))])+1`
-/

namespace A182343.P15527353506393744323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n * Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A182343.P15527353506393744323

/-!
# A182344: Primes of the form n^4 + 3.

The programs for A182344, there is no canonical definition to state claims against.
-/

/-! ## A182344.P7184794128489393956

`A125259(n+1)²²+3`
-/

namespace A182344.P7184794128489393956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A125259 (n + 1) ^ 2) ^ 2 + 3

end

end A182344.P7184794128489393956

/-! ## A182344.P16225628688099051955

`(2*A147515(n+1)%A010005(n))²²+3`
-/

namespace A182344.P16225628688099051955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Int.tmod (A147515 (n + 1)) (A010005 n)) ^ 2) ^ 2 + 3

end

end A182344.P16225628688099051955

/-! ## A182344.P1249399674195417977

`2+A002523(A125259(n+1))`
-/

namespace A182344.P1249399674195417977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A002523 (A125259 (n + 1)).toNat

end

end A182344.P1249399674195417977

/-! ## A182344.P1722698987729020827

`A117950(A125259(n+1)²)`
-/

namespace A182344.P1722698987729020827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (A125259 (n + 1) ^ 2).toNat

end

end A182344.P1722698987729020827

/-! ## A182344.P15550861523360141468

`A117950(∩[A049422(n+1), n²])`
-/

namespace A182344.P15550861523360141468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A182344.P15550861523360141468

/-!
# A182345: Primes of the form n^4 + 5.

The programs for A182345, there is no canonical definition to state claims against.
-/

/-! ## A182345.P8285849829074933313

`A117951(∩[A078402(n+1), n²])`
-/

namespace A182345.P8285849829074933313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078402 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A182345.P8285849829074933313

/-!
# A182346: Primes of the form n^4 + 6.

The programs for A182346, there is no canonical definition to state claims against.
-/

/-! ## A182346.P13169193451532465268

`A114949(∩[A114269(n+1), n²])`
-/

namespace A182346.P13169193451532465268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A182346.P13169193451532465268

/-! ## A182346.P3526724509606327144

`A114949(∩[A000290(n), A114269(n+1)])`
-/

namespace A182346.P3526724509606327144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A182346.P3526724509606327144

/-! ## A182346.P776043664793904249

`A114949(∩[A016754(n), A114269(n+1)])`
-/

namespace A182346.P776043664793904249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A182346.P776043664793904249

/-!
# A182347: Primes of the form k^4 - 2.

The programs for A182347, there is no canonical definition to state claims against.
-/

/-! ## A182347.P13568160741714450794

`A154831(n+1)²²-2`
-/

namespace A182347.P13568160741714450794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154831 (n + 1) ^ 2) ^ 2 - 2

end

end A182347.P13568160741714450794

/-! ## A182347.P5587002445228767402

`record[A065902(2*n+3)]`
-/

namespace A182347.P5587002445228767402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065902 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182347.P5587002445228767402

/-! ## A182347.P14685401479290481067

`A065902(A154831(n+1))`
-/

namespace A182347.P14685401479290481067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065902 (A154831 (n + 1)).toNat

end

end A182347.P14685401479290481067

/-! ## A182347.P6607708230455943162

`A011863(2*A154831(n+1))-2`
-/

namespace A182347.P6607708230455943162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * A154831 (n + 1)).toNat - 2

end

end A182347.P6607708230455943162

/-! ## A182347.P18134529582166414493

`A011863(lcm(2, A154831(n+1)))-2`
-/

namespace A182347.P18134529582166414493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (Int.lcm 2 (A154831 (n + 1))) - 2

end

end A182347.P18134529582166414493

/-!
# A182348: Primes of the form n^4 - 3.

The programs for A182348, there is no canonical definition to state claims against.
-/

/-! ## A182348.P8849848883563846764

`∩[A028874(n+1), A173831(n+2)]`
-/

namespace A182348.P8849848883563846764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173831 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182348.P8849848883563846764

/-!
# A182349: G.f.: exp( Sum_{n>=1} 6 * A084214(n) * x^n/n ) where g.f. of A084214 is (1+x^2)/((1+x)*(1-2*x)).

The programs for A182349, there is no canonical definition to state claims against.
-/

/-! ## A182349.P14070112260938002511

`A073373(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A182349.P14070112260938002511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073373 n + 2 * a (n - 1)

end

end A182349.P14070112260938002511

/-!
# A182350: Primes of the form k^4 - 5.

The programs for A182350, there is no canonical definition to state claims against.
-/

/-! ## A182350.P12121315442490224330

`A028875(∩[A028876(n+1), n²])`
-/

namespace A182350.P12121315442490224330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A182350.P12121315442490224330

/-! ## A182350.P2798395024077092424

`A028875(∩[A000290(n), A028876(n+1)])`
-/

namespace A182350.P2798395024077092424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A182350.P2798395024077092424

/-!
# A182352: Primes of the form k*2^k - 3.

The programs for A182352, there is no canonical definition to state claims against.
-/

/-! ## A182352.P247403423667740429

`A003261(A182375(n+1))-2`
-/

namespace A182352.P247403423667740429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A182375 (n + 1)).toNat - 2

end

end A182352.P247403423667740429

/-!
# A182353: Primes of the form k*2^k - 5.

The programs for A182353, there is no canonical definition to state claims against.
-/

/-! ## A182353.P238318005284588316

`p?[n*2^n-5]`
-/

namespace A182353.P238318005284588316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182353.P238318005284588316

/-!
# A182354: Primes of the form k*2^k + 3.

The programs for A182354, there is no canonical definition to state claims against.
-/

/-! ## A182354.P17884404646773297392

`p?[n*2^n+3]`
-/

namespace A182354.P17884404646773297392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A182354.P17884404646773297392

/-! ## A182354.P9790056871298492861

`record[A020639(n*2^n+3)]`
-/

namespace A182354.P9790056871298492861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * 2 ^ n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182354.P9790056871298492861

/-! ## A182354.P17182033804412611433

`∑{d}[p?[A036289(n)+3], #]-1`
-/

namespace A182354.P17182033804412611433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A182354.P17182033804412611433

/-!
# A182356: G.f. satisfies: A(x) = d/dx log(1+x + x^2*A(x)^2).

The programs for A182356, there is no canonical definition to state claims against.
-/

/-! ## A182356.P9417319647363259737

`A089792(A052622(n)-ceil(n²/2))`
-/

namespace A182356.P9417319647363259737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 (A052622 n - ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A182356.P9417319647363259737

/-! ## A182356.P2864603483370897401

`A056847(A023880(n)+A001400(n))`
-/

namespace A182356.P2864603483370897401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A023880 n + A001400 n).toNat

end

end A182356.P2864603483370897401

/-!
# A182357: Primes of the form 2^k + k^2 + 2.

The programs for A182357, there is no canonical definition to state claims against.
-/

/-! ## A182357.P14698338584732700473

`p?[2^n+n²+2]`
-/

namespace A182357.P14698338584732700473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A182357.P14698338584732700473

/-! ## A182357.P16808201295423982269

`p?[A000051(n)+n²+1]%A017512(n)`
-/

namespace A182357.P16808201295423982269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017512 n)

end

end A182357.P16808201295423982269

/-!
# A182358: Numbers n for which the number of divisors of n is congruent to 2 mod 4.

The programs for A182358, the canonical program `A182358.P2961937439020807832` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182358 has offset 1).

The definition of A182358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182358.P2961937439020807832

`eq[1, A295664(n+1)]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182358

/-- `eq[1, A295664(n+1)]+1` -/
def P2961937439020807832.Spec : Prop :=
  ∀ n, (P2961937439020807832.a n : ℤ) = A182358 (n + 1)

theorem P2961937439020807832.correct : P2961937439020807832.Spec := by
  intro n
  simp only [A182358, Nat.add_sub_cancel]

end A182358

/-! ## A182358.P3247579397759228111

`eq[1, val(A000005(n+1), 2)]+1`
-/

namespace A182358.P3247579397759228111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182358.P3247579397759228111

namespace A182358

/-- `eq[1, val(A000005(n+1), 2)]+1` -/
def P3247579397759228111.Spec : Prop :=
  ∀ n, (P3247579397759228111.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P12701634652377274462

`eq[1, A007814(A000005(n+1))]+1`
-/

namespace A182358.P12701634652377274462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182358.P12701634652377274462

namespace A182358

/-- `eq[1, A007814(A000005(n+1))]+1` -/
def P12701634652377274462.Spec : Prop :=
  ∀ n, (P12701634652377274462.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P11385662113878404176

`eq[1, A285099(A000005(n+1)+1)]+1`
-/

namespace A182358.P11385662113878404176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182358.P11385662113878404176

namespace A182358

/-- `eq[1, A285099(A000005(n+1)+1)]+1` -/
def P11385662113878404176.Spec : Prop :=
  ∀ n, (P11385662113878404176.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P7788787293064818034

`lt[1, A007814(A000005(n+2)+2)]+2`
-/

namespace A182358.P7788787293064818034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000005 (n + 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A182358.P7788787293064818034

namespace A182358

/-- `lt[1, A007814(A000005(n+2)+2)]+2` -/
def P7788787293064818034.Spec : Prop :=
  ∀ n, (P7788787293064818034.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P12767950649846705574

`eq[2, gcd(A000005(n), A046109(a(n-1)))]` with `a(0)=1`
-/

namespace A182358.P12767950649846705574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.gcd (A000005 n) (A046109 (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182358.P12767950649846705574

namespace A182358

/-- `eq[2, gcd(A000005(n), A046109(a(n-1)))]` -/
def P12767950649846705574.Spec : Prop :=
  ∀ n, (P12767950649846705574.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P9632995118769593952

`filter[A369254(n+1), A049240(#)]`
-/

namespace A182358.P9632995118769593952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A182358.P9632995118769593952

namespace A182358

/-- `filter[A369254(n+1), A049240(#)]` -/
def P9632995118769593952.Spec : Prop :=
  ∀ n, P9632995118769593952.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P15964300558246633611

`filter[A369254(n+1), A066829(#)]`
-/

namespace A182358.P15964300558246633611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A182358.P15964300558246633611

namespace A182358

/-- `filter[A369254(n+1), A066829(#)]` -/
def P15964300558246633611.Spec : Prop :=
  ∀ n, P15964300558246633611.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P15721616330944556750

`filter[A369254(n+1), A358769(#)]`
-/

namespace A182358.P15721616330944556750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A182358.P15721616330944556750

namespace A182358

/-- `filter[A369254(n+1), A358769(#)]` -/
def P15721616330944556750.Spec : Prop :=
  ∀ n, P15721616330944556750.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P16129616619053277853

`filter[A229125(n+1), A369253(#)]`
-/

namespace A182358.P16129616619053277853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A182358.P16129616619053277853

namespace A182358

/-- `filter[A229125(n+1), A369253(#)]` -/
def P16129616619053277853.Spec : Prop :=
  ∀ n, P16129616619053277853.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P17899098542739584865

`filter[A258456(n+1), A049240(#)]`
-/

namespace A182358.P17899098542739584865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A182358.P17899098542739584865

namespace A182358

/-- `filter[A258456(n+1), A049240(#)]` -/
def P17899098542739584865.Spec : Prop :=
  ∀ n, P17899098542739584865.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P11188973630685426573

`filter[A258456(n+1), A066829(#)]`
-/

namespace A182358.P11188973630685426573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A182358.P11188973630685426573

namespace A182358

/-- `filter[A258456(n+1), A066829(#)]` -/
def P11188973630685426573.Spec : Prop :=
  ∀ n, P11188973630685426573.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P14357404391957695562

`filter[A258456(n+1), A358769(#)]`
-/

namespace A182358.P14357404391957695562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A182358.P14357404391957695562

namespace A182358

/-- `filter[A258456(n+1), A358769(#)]` -/
def P14357404391957695562.Spec : Prop :=
  ∀ n, P14357404391957695562.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P7557832793035085416

`∩[A229125(n+1), A258456(n+1)]`
-/

namespace A182358.P7557832793035085416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182358.P7557832793035085416

namespace A182358

/-- `∩[A229125(n+1), A258456(n+1)]` -/
def P7557832793035085416.Spec : Prop :=
  ∀ n, (P7557832793035085416.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P3587031553044238606

`filter[A026424(n+1), A369253(#)]`
-/

namespace A182358.P3587031553044238606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A182358.P3587031553044238606

namespace A182358

/-- `filter[A026424(n+1), A369253(#)]` -/
def P3587031553044238606.Spec : Prop :=
  ∀ n, P3587031553044238606.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P8304776778413657665

`filter[A026422(n+2), A369253(#)]`
-/

namespace A182358.P8304776778413657665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A182358.P8304776778413657665

namespace A182358

/-- `filter[A026422(n+2), A369253(#)]` -/
def P8304776778413657665.Spec : Prop :=
  ∀ n, P8304776778413657665.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P9886755169180054847

`∩[A026422(n+1), A258456(n+1)]`
-/

namespace A182358.P9886755169180054847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182358.P9886755169180054847

namespace A182358

/-- `∩[A026422(n+1), A258456(n+1)]` -/
def P9886755169180054847.Spec : Prop :=
  ∀ n, (P9886755169180054847.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P3941933197799500117

`∩[A026424(n+1), A258456(n+1)]`
-/

namespace A182358.P3941933197799500117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182358.P3941933197799500117

namespace A182358

/-- `∩[A026424(n+1), A258456(n+1)]` -/
def P3941933197799500117.Spec : Prop :=
  ∀ n, (P3941933197799500117.a n : ℤ) = A182358 (n + 1)

end A182358

/-! ## A182358.P10230586188661101847

`filter[A336592(n+1), A358769(#)]`
-/

namespace A182358.P10230586188661101847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A182358.P10230586188661101847

namespace A182358

/-- `filter[A336592(n+1), A358769(#)]` -/
def P10230586188661101847.Spec : Prop :=
  ∀ n, P10230586188661101847.a n = A182358 (n + 1)

end A182358

/-! ## A182358.P3929580346378719804

`∩[A229125(n+1), A336592(n+1)]`
-/

namespace A182358.P3929580346378719804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182358.P3929580346378719804

namespace A182358

/-- `∩[A229125(n+1), A336592(n+1)]` -/
def P3929580346378719804.Spec : Prop :=
  ∀ n, (P3929580346378719804.a n : ℤ) = A182358 (n + 1)

end A182358

/-!
# A182361: a(n+1) = a(n) + floor(a(n)/8) with a(0)=8.

The programs for A182361, the canonical program `A182361.P3109951404463724370` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182361 has offset 0).

The definition of A182361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182361.P3109951404463724370

`floor(9/8*a(n-1))` with `a(0)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182361

/-- `floor(9/8*a(n-1))` -/
def P3109951404463724370.Spec : Prop :=
  ∀ n, P3109951404463724370.a n = A182361 n

theorem P3109951404463724370.correct : P3109951404463724370.Spec := by
  intro n
  simp only [A182361]

end A182361

/-! ## A182361.P7981464251307166756

`floor(a(n-1)/(1-1/9))` with `a(0)=8`
-/

namespace A182361.P7981464251307166756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 9)⌋

end

end A182361.P7981464251307166756

namespace A182361

/-- `floor(a(n-1)/(1-1/9))` -/
def P7981464251307166756.Spec : Prop :=
  ∀ n, P7981464251307166756.a n = A182361 n

theorem P7981464251307166756.correct : P7981464251307166756.Spec := by
  intro n
  simp only [A182361, Nat.add_sub_cancel, A182361.P7981464251307166756.a, A182361.P3109951404463724370.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182361

/-! ## A182361.P10525225688265424641

`a(n-1)-ceil(-a(n-1)/8)` with `a(0)=8`
-/

namespace A182361.P10525225688265424641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - ⌈-((a (n - 1) : ℚ) / 8)⌉

end

end A182361.P10525225688265424641

namespace A182361

/-- `a(n-1)-ceil(-a(n-1)/8)` -/
def P10525225688265424641.Spec : Prop :=
  ∀ n, P10525225688265424641.a n = A182361 n

end A182361

/-! ## A182361.P10738147765176108324

`a(n-1)+(or(7, a(n-1))-7)/8` with `a(0)=8`
-/

namespace A182361.P10738147765176108324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (Int.lor 7 (SequenceMachineLib.roundAway (a (n - 1))) - 7 : ℚ) / 8

end

end A182361.P10738147765176108324

namespace A182361

/-- `a(n-1)+(or(7, a(n-1))-7)/8` -/
def P10738147765176108324.Spec : Prop :=
  ∀ n, P10738147765176108324.a n = (A182361 n : ℚ)

end A182361

/-! ## A182361.P4491571346453136211

`a(n-1)-(7-or(7, a(n-1)))/8` with `a(0)=8`
-/

namespace A182361.P4491571346453136211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - (7 - Int.lor 7 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / 8

end

end A182361.P4491571346453136211

namespace A182361

/-- `a(n-1)-(7-or(7, a(n-1)))/8` -/
def P4491571346453136211.Spec : Prop :=
  ∀ n, P4491571346453136211.a n = (A182361 n : ℚ)

end A182361

/-! ## A182361.P11462769490709493299

`A279079(n)+8`
-/

namespace A182361.P11462769490709493299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279079 n + 8

end

end A182361.P11462769490709493299

namespace A182361

/-- `A279079(n)+8` -/
def P11462769490709493299.Spec : Prop :=
  ∀ n, P11462769490709493299.a n = A182361 n

end A182361

/-! ## A182361.P15070051067438108052

`∑[A120194(n+1)]+7`
-/

namespace A182361.P15070051067438108052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A182361.P15070051067438108052

namespace A182361

/-- `∑[A120194(n+1)]+7` -/
def P15070051067438108052.Spec : Prop :=
  ∀ n, P15070051067438108052.a n = A182361 n

end A182361

/-! ## A182361.P9923653186400346477

`A020722(n)-(n-A279079(n))`
-/

namespace A182361.P9923653186400346477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 n - ((n : ℤ) - A279079 n)

end

end A182361.P9923653186400346477

namespace A182361

/-- `A020722(n)-(n-A279079(n))` -/
def P9923653186400346477.Spec : Prop :=
  ∀ n, P9923653186400346477.a n = A182361 n

end A182361

/-! ## A182361.P4804521406737532798

`(or(7, 9*a(n-1))-7)/8` with `a(0)=8`
-/

namespace A182361.P4804521406737532798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (Int.lor 7 (SequenceMachineLib.roundAway (9 * a (n - 1))) - 7 : ℚ) / 8

end

end A182361.P4804521406737532798

namespace A182361

/-- `(or(7, 9*a(n-1))-7)/8` -/
def P4804521406737532798.Spec : Prop :=
  ∀ n, P4804521406737532798.a n = (A182361 n : ℚ)

end A182361

/-! ## A182361.P2061499584025426284

`(9*a(n-1)-and(7, a(n-1)))/8` with `a(0)=8`
-/

namespace A182361.P2061499584025426284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (9 * a (n - 1) - (Int.land 7 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) / 8

end

end A182361.P2061499584025426284

namespace A182361

/-- `(9*a(n-1)-and(7, a(n-1)))/8` -/
def P2061499584025426284.Spec : Prop :=
  ∀ n, P2061499584025426284.a n = (A182361 n : ℚ)

end A182361

/-! ## A182361.P14645724384912931697

`∑[A245400(n+1)/9]+7`
-/

namespace A182361.P14645724384912931697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245400 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A182361.P14645724384912931697

namespace A182361

/-- `∑[A245400(n+1)/9]+7` -/
def P14645724384912931697.Spec : Prop :=
  ∀ n, P14645724384912931697.a n = (A182361 n : ℚ)

end A182361

/-!
# A182362: a(n+1) = a(n) + floor(a(n)/9) with a(0)=9.

The programs for A182362, the canonical program `A182362.P2631273834562042977` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182362 has offset 0).

The definition of A182362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182362.P2631273834562042977

`floor(10/9*a(n-1))` with `a(0)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182362

/-- `floor(10/9*a(n-1))` -/
def P2631273834562042977.Spec : Prop :=
  ∀ n, P2631273834562042977.a n = A182362 n

theorem P2631273834562042977.correct : P2631273834562042977.Spec := by
  intro n
  simp only [A182362]

end A182362

/-! ## A182362.P18036109842547644995

`floor(a(n-1)/(1-1/10))` with `a(0)=9`
-/

namespace A182362.P18036109842547644995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋

end

end A182362.P18036109842547644995

namespace A182362

/-- `floor(a(n-1)/(1-1/10))` -/
def P18036109842547644995.Spec : Prop :=
  ∀ n, P18036109842547644995.a n = A182362 n

theorem P18036109842547644995.correct : P18036109842547644995.Spec := by
  intro n
  simp only [A182362, Nat.add_sub_cancel, A182362.P18036109842547644995.a, A182362.P2631273834562042977.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182362

/-! ## A182362.P18381912576645058110

`a(n-1)-ceil(-a(n-1)/9)` with `a(0)=9`
-/

namespace A182362.P18381912576645058110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) - ⌈-((a (n - 1) : ℚ) / 9)⌉

end

end A182362.P18381912576645058110

namespace A182362

/-- `a(n-1)-ceil(-a(n-1)/9)` -/
def P18381912576645058110.Spec : Prop :=
  ∀ n, P18381912576645058110.a n = A182362 n

end A182362

/-! ## A182362.P10192514622600058813

`A279080(n)+9`
-/

namespace A182362.P10192514622600058813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279080 n + 9

end

end A182362.P10192514622600058813

namespace A182362

/-- `A279080(n)+9` -/
def P10192514622600058813.Spec : Prop :=
  ∀ n, P10192514622600058813.a n = A182362 n

end A182362

/-! ## A182362.P15338591661698821419

`∑[A120202(n+1)]+8`
-/

namespace A182362.P15338591661698821419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A182362.P15338591661698821419

namespace A182362

/-- `∑[A120202(n+1)]+8` -/
def P15338591661698821419.Spec : Prop :=
  ∀ n, P15338591661698821419.a n = A182362 n

end A182362

/-! ## A182362.P10766961230869093970

`A020723(n)-(n-A279080(n))`
-/

namespace A182362.P10766961230869093970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n - ((n : ℤ) - A279080 n)

end

end A182362.P10766961230869093970

namespace A182362

/-- `A020723(n)-(n-A279080(n))` -/
def P10766961230869093970.Spec : Prop :=
  ∀ n, P10766961230869093970.a n = A182362 n

end A182362

/-! ## A182362.P10949301891289880030

`A317591(n+2)-1`
-/

namespace A182362.P10949301891289880030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 2) - 1

end

end A182362.P10949301891289880030

namespace A182362

/-- `A317591(n+2)-1` -/
def P10949301891289880030.Spec : Prop :=
  ∀ n, P10949301891289880030.a n = A182362 n

end A182362

/-! ## A182362.P17913318134091876749

`A020723(A279080(n))`
-/

namespace A182362.P17913318134091876749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A279080 n).toNat

end

end A182362.P17913318134091876749

namespace A182362

/-- `A020723(A279080(n))` -/
def P17913318134091876749.Spec : Prop :=
  ∀ n, P17913318134091876749.a n = A182362 n

end A182362

/-! ## A182362.P7634350354230858573

`A023443(A317591(n+2))`
-/

namespace A182362.P7634350354230858573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317591 (n + 2)).toNat

end

end A182362.P7634350354230858573

namespace A182362

/-- `A023443(A317591(n+2))` -/
def P7634350354230858573.Spec : Prop :=
  ∀ n, P7634350354230858573.a n = A182362 n

end A182362

/-! ## A182362.P11048017447842128086

`A343609(5*2*a(n-1))` with `a(0)=9`
-/

namespace A182362.P11048017447842128086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A343609 (5 * (2 * a (n - 1))).toNat

end

end A182362.P11048017447842128086

namespace A182362

/-- `A343609(5*2*a(n-1))` -/
def P11048017447842128086.Spec : Prop :=
  ∀ n, P11048017447842128086.a n = A182362 n

end A182362

/-!
# A182363: a(n+1) = a(n) + floor(a(n)/10) with a(0) = 10.

The programs for A182363, the canonical program `A182363.P18228335553426434187` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182363 has offset 0).

The definition of A182363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182363.P18228335553426434187

`floor(11/10*a(n-1))` with `a(0)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182363

/-- `floor(11/10*a(n-1))` -/
def P18228335553426434187.Spec : Prop :=
  ∀ n, P18228335553426434187.a n = A182363 n

theorem P18228335553426434187.correct : P18228335553426434187.Spec := by
  intro n
  simp only [A182363]

end A182363

/-! ## A182363.P15688791061077607559

`floor(a(n-1)+a(n-1)/10)` with `a(0)=10`
-/

namespace A182363.P15688791061077607559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 10⌋

end

end A182363.P15688791061077607559

namespace A182363

/-- `floor(a(n-1)+a(n-1)/10)` -/
def P15688791061077607559.Spec : Prop :=
  ∀ n, P15688791061077607559.a n = A182363 n

theorem P15688791061077607559.correct : P15688791061077607559.Spec := by
  intro n
  simp only [A182363, Nat.add_sub_cancel, A182363.P15688791061077607559.a, A182363.P18228335553426434187.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182363

/-! ## A182363.P17620890414750579015

`a(n-1)-ceil(-a(n-1)/10)` with `a(0)=10`
-/

namespace A182363.P17620890414750579015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) - ⌈-((a (n - 1) : ℚ) / 10)⌉

end

end A182363.P17620890414750579015

namespace A182363

/-- `a(n-1)-ceil(-a(n-1)/10)` -/
def P17620890414750579015.Spec : Prop :=
  ∀ n, P17620890414750579015.a n = A182363 n

end A182363

/-! ## A182363.P835317811276519921

`a(n-1)-floor((9-a(n-1))/10)` with `a(0)=10`
-/

namespace A182363.P835317811276519921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) - ⌊(9 - a (n - 1) : ℚ) / 10⌋

end

end A182363.P835317811276519921

namespace A182363

/-- `a(n-1)-floor((9-a(n-1))/10)` -/
def P835317811276519921.Spec : Prop :=
  ∀ n, P835317811276519921.a n = A182363 n

end A182363

/-! ## A182363.P15634417368497373746

`A160542(a(n-1)+1)-1` with `a(0)=10`
-/

namespace A182363.P15634417368497373746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A160542 (a (n - 1) + 1).toNat - 1

end

end A182363.P15634417368497373746

namespace A182363

/-- `A160542(a(n-1)+1)-1` -/
def P15634417368497373746.Spec : Prop :=
  ∀ n, P15634417368497373746.a n = A182363 n

end A182363

/-! ## A182363.P17176658022413965294

`A059995(a(n-1))+a(n-1)` with `a(0)=10`
-/

namespace A182363.P17176658022413965294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A059995 (a (n - 1)).toNat + a (n - 1)

end

end A182363.P17176658022413965294

namespace A182363

/-- `A059995(a(n-1))+a(n-1)` -/
def P17176658022413965294.Spec : Prop :=
  ∀ n, P17176658022413965294.a n = A182363 n

end A182363

/-! ## A182363.P9755011033910722700

`A057367(3*a(n-1))` with `a(0)=10`
-/

namespace A182363.P9755011033910722700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A057367 (3 * a (n - 1)).toNat

end

end A182363.P9755011033910722700

namespace A182363

/-- `A057367(3*a(n-1))` -/
def P9755011033910722700.Spec : Prop :=
  ∀ n, P9755011033910722700.a n = A182363 n

end A182363

/-!
# A182365: The largest prime in some interval of the form (2*prime(k),2*prime(k+1)) if this interval contains at least 2 primes.

The programs for A182365, there is no canonical definition to state claims against.
-/

/-! ## A182365.P11829641242017142223

`record[A194598(n+3)%A164368(n+3)]`
-/

namespace A182365.P11829641242017142223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194598 (n + 3)) (A164368 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182365.P11829641242017142223

/-! ## A182365.P4083214332842083190

`p?[A194598(2*n+3-n)%A164368(n+3)]`
-/

namespace A182365.P4083214332842083190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194598 (2 * n + 3 - n)) (A164368 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182365.P4083214332842083190

/-! ## A182365.P8314369210131138156

`record[A164333(n+1)%A164368(n+3)]`
-/

namespace A182365.P8314369210131138156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164333 (n + 1)) (A164368 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182365.P8314369210131138156

/-! ## A182365.P4523824372683494418

`∩[A164333(n+1), A234960(n+2)]`
-/

namespace A182365.P4523824372683494418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234960 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182365.P4523824372683494418

/-! ## A182365.P5638080534606937913

`p?[A278638(n+1)-and(2, A302496(n+1))]`
-/

namespace A182365.P5638080534606937913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278638 (n + 1) - Int.land 2 (A302496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182365.P5638080534606937913

/-!
# A182366: Records in A194217.

The programs for A182366, there is no canonical definition to state claims against.
-/

/-! ## A182366.P7732919272560749665

`record[A194217(n+2)]`
-/

namespace A182366.P7732919272560749665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182366.P7732919272560749665

/-! ## A182366.P9603125983301329190

`record[A194186(n+2)+A194184(n+2)]`
-/

namespace A182366.P9603125983301329190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 2) + A194184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182366.P9603125983301329190

/-! ## A182366.P15073194013446401138

`record[A104272(n+2)-A080359(n+2)]`
-/

namespace A182366.P15073194013446401138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A080359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182366.P15073194013446401138

/-!
# A182372: Number of distinct sets of nonnegative integers with perimeter n, as defined in the comments.

The programs for A182372, there is no canonical definition to state claims against.
-/

/-! ## A182372.P6289969473866133527

`A122135(n)+A122129(n)`
-/

namespace A182372.P6289969473866133527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n + A122129 n

end

end A182372.P6289969473866133527

/-! ## A182372.P11059970234848262220

`A227134(n)+A227135(n)`
-/

namespace A182372.P11059970234848262220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227134 n + A227135 n

end

end A182372.P11059970234848262220

/-! ## A182372.P18272659531862892113

`A137676(4*n)+A122135(n)`
-/

namespace A182372.P18272659531862892113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n) + A122135 n

end

end A182372.P18272659531862892113

/-! ## A182372.P7775807383968772995

`A137676(4*n+1)+A122129(n)`
-/

namespace A182372.P7775807383968772995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1) + A122129 n

end

end A182372.P7775807383968772995

/-! ## A182372.P16695006367902518354

`A137676(4*n+1)+A137676(4*n)`
-/

namespace A182372.P16695006367902518354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1) + A137676 (4 * n)

end

end A182372.P16695006367902518354

/-! ## A182372.P5409570764989355770

`A227134(n)-(A000035(2*n)-A227135(n))`
-/

namespace A182372.P5409570764989355770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227134 n - (A000035 (2 * n) - A227135 n)

end

end A182372.P5409570764989355770

/-! ## A182372.P9985268381086971499

`A122129(n)+A351595(n)+A122134(n)`
-/

namespace A182372.P9985268381086971499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122129 n + (A351595 n + A122134 n)

end

end A182372.P9985268381086971499

/-!
# A182377: Total sum of positive ranks of all regions in the last section of the modular table of partitions of n.

The programs for A182377, there is no canonical definition to state claims against.
-/

/-! ## A182377.P11180132081835391835

`A330378(n+1)-A309625(n)`
-/

namespace A182377.P11180132081835391835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330378 (n + 1) - A309625 n

end

end A182377.P11180132081835391835

/-! ## A182377.P15864225103299456704

`or(A000094(n+2), A165091(n))`
-/

namespace A182377.P15864225103299456704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000094 (n + 2)) (A165091 n)

end

end A182377.P15864225103299456704

/-! ## A182377.P16120713788436955271

`∑[A161272(n+1)+A083751(n+1)]`
-/

namespace A182377.P16120713788436955271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161272 (n + 1) + A083751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182377.P16120713788436955271

/-! ## A182377.P18171770426537253036

`∑[A079694(n)-1]+A000041(n+1)`
-/

namespace A182377.P18171770426537253036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079694 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000041 (n + 1)

end

end A182377.P18171770426537253036

/-! ## A182377.P15924369773026063211

`∑[A341850(n)-2]+A000041(n+1)`
-/

namespace A182377.P15924369773026063211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000041 (n + 1)

end

end A182377.P15924369773026063211

/-!
# A182378: G.f. satisfies A(x) = 1 + x*cycle_index(Sym(7), A(x)).

The programs for A182378, there is no canonical definition to state claims against.
-/

/-! ## A182378.P4865779631404671397

`A299038(A155212(n+4))`
-/

namespace A182378.P4865779631404671397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A155212 (n + 4)).toNat

end

end A182378.P4865779631404671397

/-! ## A182378.P18007375213296311536

`A299038(A056126(n)+28)`
-/

namespace A182378.P18007375213296311536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A056126 n + 28).toNat

end

end A182378.P18007375213296311536

/-! ## A182378.P3491046459692676579

`A299038(A000217(n+8)-8)`
-/

namespace A182378.P3491046459692676579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000217 (n + 8) - 8).toNat

end

end A182378.P3491046459692676579

/-! ## A182378.P5421613894771649365

`A299038(A000096(n+6)+n+1)`
-/

namespace A182378.P5421613894771649365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A182378.P5421613894771649365

/-! ## A182378.P16048623192547426851

`A299038(A027379(n+5)+n+3)`
-/

namespace A182378.P16048623192547426851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A027379 (n + 5) + (n + 3 : ℤ)).toNat

end

end A182378.P16048623192547426851

/-!
# A182379: Positive integers n such that n^2 is the sum of two or more consecutive integer squares.

The programs for A182379, there is no canonical definition to state claims against.
-/

/-! ## A182379.P11160494180245922436

`record[A056926(A212016(n+1))]`
-/

namespace A182379.P11160494180245922436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A212016 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182379.P11160494180245922436

/-! ## A182379.P17854336045234876804

`lt[2, A062862(n²)]`
-/

namespace A182379.P17854336045234876804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062862 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A182379.P17854336045234876804

/-!
# A182385: Primes of the form k^4 + k^3 + k^2 + k - 1.

The programs for A182385, there is no canonical definition to state claims against.
-/

/-! ## A182385.P10602287428925234724

`A027445(A182424(n+1))-1`
-/

namespace A182385.P10602287428925234724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A182424 (n + 1)).toNat - 1

end

end A182385.P10602287428925234724

/-! ## A182385.P10023354028883149301

`A057428(n+1)+A027445(A182424(n+1))`
-/

namespace A182385.P10023354028883149301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027445 (A182424 (n + 1)).toNat

end

end A182385.P10023354028883149301

/-! ## A182385.P3891022220325635283

`A033999(2*n+1)+A027445(A182424(n+1))`
-/

namespace A182385.P3891022220325635283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A027445 (A182424 (n + 1)).toNat

end

end A182385.P3891022220325635283

/-! ## A182385.P10966025923245153745

`A280193(2*n+1)+A027445(A182424(n+1))`
-/

namespace A182385.P10966025923245153745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A027445 (A182424 (n + 1)).toNat

end

end A182385.P10966025923245153745

/-! ## A182385.P15368645666891885258

`A057078(A016789(n))+A027445(A182424(n+1))`
-/

namespace A182385.P15368645666891885258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A016789 n).toNat + A027445 (A182424 (n + 1)).toNat

end

end A182385.P15368645666891885258

/-!
# A182386: a(0) = 1, a(n) = 1 - n * a(n-1).

The programs for A182386, the canonical program `A182386.P16571549731894921699` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182386 has offset 0).

The definition of A182386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182386.P16571549731894921699

`1-n*a(n-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182386

/-- `1-n*a(n-1)` -/
def P16571549731894921699.Spec : Prop :=
  ∀ n, P16571549731894921699.a n = A182386 n

theorem P16571549731894921699.correct : P16571549731894921699.Spec := by
  intro n
  simp only [A182386]

end A182386

/-! ## A182386.P10069333075818096869

`(-1)^n*A000166(n)`
-/

namespace A182386.P10069333075818096869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000166 n

end

end A182386.P10069333075818096869

namespace A182386

/-- `(-1)^n*A000166(n)` -/
def P10069333075818096869.Spec : Prop :=
  ∀ n, P10069333075818096869.a n = A182386 n

end A182386

/-! ## A182386.P12703957356015484891

`1-a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A182386.P12703957356015484891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A182386.P12703957356015484891

namespace A182386

/-- `1-a(n-1)/tan(acot(n))` -/
def P12703957356015484891.Spec : Prop :=
  ∀ n, P12703957356015484891.a n = (A182386 n : ℝ)

end A182386

/-! ## A182386.P5561551939719453372

`1-a(n-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A182386.P5561551939719453372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A182386.P5561551939719453372

namespace A182386

/-- `1-a(n-1)/cot(atan(n))` -/
def P5561551939719453372.Spec : Prop :=
  ∀ n, P5561551939719453372.a n = (A182386 n : ℝ)

end A182386

/-! ## A182386.P8442489418008766666

`1-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A182386.P8442489418008766666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A182386.P8442489418008766666

namespace A182386

/-- `1-a(n-1)/n^(-1)` -/
def P8442489418008766666.Spec : Prop :=
  ∀ n, P8442489418008766666.a n = (A182386 n : ℚ)

end A182386

/-! ## A182386.P7436210087963921952

`a(n-1)/(1-(n+1)/n)+1` with `a(0)=1`
-/

namespace A182386.P7436210087963921952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (n + 1 : ℚ) / (n : ℚ)) + 1

end

end A182386.P7436210087963921952

namespace A182386

/-- `a(n-1)/(1-(n+1)/n)+1` -/
def P7436210087963921952.Spec : Prop :=
  ∀ n, P7436210087963921952.a n = (A182386 n : ℚ)

end A182386

/-! ## A182386.P3898703179059011295

`Δ[Δ[A306948(n)]]`
-/

namespace A182386.P3898703179059011295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182386.P3898703179059011295

namespace A182386

/-- `Δ[Δ[A306948(n)]]` -/
def P3898703179059011295.Spec : Prop :=
  ∀ n, P3898703179059011295.a n = A182386 n

end A182386

/-! ## A182386.P13030340367690786027

`A179508(n+1)-1`
-/

namespace A182386.P13030340367690786027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179508 (n + 1) - 1

end

end A182386.P13030340367690786027

namespace A182386

/-- `A179508(n+1)-1` -/
def P13030340367690786027.Spec : Prop :=
  ∀ n, P13030340367690786027.a n = A182386 n

end A182386

/-! ## A182386.P340156709160799114

`1-A054516(n+3)+n`
-/

namespace A182386.P340156709160799114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054516 (n + 3) + (n : ℤ)

end

end A182386.P340156709160799114

namespace A182386

/-- `1-A054516(n+3)+n` -/
def P340156709160799114.Spec : Prop :=
  ∀ n, P340156709160799114.a n = A182386 n

end A182386

/-! ## A182386.P12623327312415495

`n+1-2*A009574(n)`
-/

namespace A182386.P12623327312415495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A009574 n

end

end A182386.P12623327312415495

namespace A182386

/-- `n+1-2*A009574(n)` -/
def P12623327312415495.Spec : Prop :=
  ∀ n, P12623327312415495.a n = A182386 n

end A182386

/-!
# A182387: Numbers k such that 210*k+{11,13,17,19,23,29,31} are 7 consecutive primes.

The programs for A182387, there is no canonical definition to state claims against.
-/

/-! ## A182387.P14522836432652713722

`round(A022009(n+1)/210)`
-/

namespace A182387.P14522836432652713722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022009 (n + 1) : ℚ) / 210)

end

end A182387.P14522836432652713722

/-! ## A182387.P17390963207819835540

`floor(A022009(A004526(2*n+1)+1)/210)`
-/

namespace A182387.P17390963207819835540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022009 (A004526 (2 * n + 1) + 1).toNat : ℚ) / 210⌋

end

end A182387.P17390963207819835540

/-! ## A182387.P2616492237135989012

`floor(∩[A252862(n+1), A257124(n+1)]/210)`
-/

namespace A182387.P2616492237135989012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 210⌋

end

end A182387.P2616492237135989012

/-! ## A182387.P10129733715668875956

`floor(∩[A022006(n+1), A252862(n+1)]/210)`
-/

namespace A182387.P10129733715668875956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 210⌋

end

end A182387.P10129733715668875956

/-! ## A182387.P2063253542133711538

`floor(∩[A022006(n+1), A257124(n+1)]/210)`
-/

namespace A182387.P2063253542133711538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 210⌋

end

end A182387.P2063253542133711538

/-!
# A182388: a(0) = 1, a(n) = (a(n-1) XOR n) + n.

The programs for A182388, the canonical program `A182388.P18055651083748621893` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182388 has offset 0).

The definition of A182388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182388.P18055651083748621893

`xor(n, a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182388

/-- `xor(n, a(n-1))+n` -/
def P18055651083748621893.Spec : Prop :=
  ∀ n, (P18055651083748621893.a n : ℤ) = A182388 n

theorem P18055651083748621893.correct : P18055651083748621893.Spec := by
  intro n
  simp only [A182388]

end A182388

/-! ## A182388.P2492961360107008322

`2*n-(n-xor(n, a(n-1)))` with `a(0)=1`
-/

namespace A182388.P2492961360107008322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - Int.xor (n : ℤ) (a (n - 1)))

end

end A182388.P2492961360107008322

namespace A182388

/-- `2*n-(n-xor(n, a(n-1)))` -/
def P2492961360107008322.Spec : Prop :=
  ∀ n, P2492961360107008322.a n = A182388 n

end A182388

/-! ## A182388.P14842739521928454395

`2*or(n, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A182388.P14842739521928454395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * Int.lor (n : ℤ) (a (n - 1)) - a (n - 1)

end

end A182388.P14842739521928454395

namespace A182388

/-- `2*or(n, a(n-1))-a(n-1)` -/
def P14842739521928454395.Spec : Prop :=
  ∀ n, P14842739521928454395.a n = A182388 n

end A182388

/-! ## A182388.P2616845151429006754

`lcm(2, or(n, a(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A182388.P2616845151429006754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (Int.lor (n : ℤ) (a (n - 1))) : ℤ) - a (n - 1)

end

end A182388.P2616845151429006754

namespace A182388

/-- `lcm(2, or(n, a(n-1)))-a(n-1)` -/
def P2616845151429006754.Spec : Prop :=
  ∀ n, P2616845151429006754.a n = A182388 n

end A182388

/-! ## A182388.P16531563415754616656

`xor(a(A023443(n)), A123108(2*n))+n` with `a(0)=1`
-/

namespace A182388.P16531563415754616656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (A023443 n).toNat) (A123108 (2 * n)) + (n : ℤ)

end

end A182388.P16531563415754616656

namespace A182388

/-- `xor(a(A023443(n)), A123108(2*n))+n` -/
def P16531563415754616656.Spec : Prop :=
  ∀ n, P16531563415754616656.a n = A182388 n

end A182388

/-! ## A182388.P1878174634785248388

`A005843(or(n, a(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A182388.P1878174634785248388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (Int.lor (n : ℤ) (a (n - 1))).toNat - a (n - 1)

end

end A182388.P1878174634785248388

namespace A182388

/-- `A005843(or(n, a(n-1)))-a(n-1)` -/
def P1878174634785248388.Spec : Prop :=
  ∀ n, P1878174634785248388.a n = A182388 n

end A182388

/-!
# A182389: a(0)=1, a(n) = (a(n-1) + n) XOR n.

The programs for A182389, the canonical program `A182389.P5243539740454212490` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182389 has offset 0).

The definition of A182389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182389.P5243539740454212490

`xor(n, a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A182389

/-- `xor(n, a(n-1)+n)` -/
def P5243539740454212490.Spec : Prop :=
  ∀ n, (P5243539740454212490.a n : ℤ) = A182389 n

theorem P5243539740454212490.correct : P5243539740454212490.Spec := by
  intro n
  simp only [A182389]

end A182389

/-! ## A182389.P8237731174840347006

`xor(n, n-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A182389.P8237731174840347006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182389.P8237731174840347006

namespace A182389

/-- `xor(n, n-floor(-a(n-1)))` -/
def P8237731174840347006.Spec : Prop :=
  ∀ n, P8237731174840347006.a n = A182389 n

end A182389

/-! ## A182389.P5821271914890394501

`xor(n, n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A182389.P5821271914890394501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182389.P5821271914890394501

namespace A182389

/-- `xor(n, n-ceil(-a(n-1)))` -/
def P5821271914890394501.Spec : Prop :=
  ∀ n, P5821271914890394501.a n = A182389 n

end A182389

/-! ## A182389.P17545890436143889685

`xor(n, n-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A182389.P17545890436143889685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182389.P17545890436143889685

namespace A182389

/-- `xor(n, n-round(-a(n-1)))` -/
def P17545890436143889685.Spec : Prop :=
  ∀ n, P17545890436143889685.a n = A182389 n

end A182389

/-! ## A182389.P5029690152307807172

`xor(n, 2*n-(n-a(n-1)))` with `a(0)=1`
-/

namespace A182389.P5029690152307807172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A182389.P5029690152307807172

namespace A182389

/-- `xor(n, 2*n-(n-a(n-1)))` -/
def P5029690152307807172.Spec : Prop :=
  ∀ n, P5029690152307807172.a n = A182389 n

end A182389

/-!
# A182390: a(0)=0, a(n) = (a(n-1) * n) XOR n.

The programs for A182390, there is no canonical definition to state claims against.
-/

/-! ## A182390.P10115011620628798749

`xor(n, n*a(n-1))` with `a(0)=0`
-/

namespace A182390.P10115011620628798749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (n * a (n - 1))

end

end A182390.P10115011620628798749

/-! ## A182390.P1399085589821997396

`xor(n, a(n-1)/tan(acot(n)))` with `a(0)=0`
-/

namespace A182390.P1399085589821997396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A182390.P1399085589821997396

/-! ## A182390.P5184559332872645152

`xor(n, a(n-1)/cot(atan(n)))` with `a(0)=0`
-/

namespace A182390.P5184559332872645152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A182390.P5184559332872645152

/-! ## A182390.P4361278660933823969

`xor(n, a(n-1)/n^(-1))` with `a(0)=0`
-/

namespace A182390.P4361278660933823969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A182390.P4361278660933823969

/-! ## A182390.P17401879436502251192

`xor(n, abs(n*a(xor(-n, -1))))` with `a(0)=0`
-/

namespace A182390.P17401879436502251192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (n * a (Int.xor (-(n : ℤ)) (-1)).toNat)

end

end A182390.P17401879436502251192

/-! ## A182390.P12356641125490749388

`xor(n, floor(n*a(xor(-n, -1))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A182390.P12356641125490749388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (n * a (Int.xor (-(n : ℤ)) (-1)).toNat)

end

end A182390.P12356641125490749388

/-! ## A182390.P14714262813727320158

`xor(n*a((2*n)%(n+1)), n)` with `a(0)=0`
-/

namespace A182390.P14714262813727320158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (n * a (2 * n % (n + 1))) n

end

end A182390.P14714262813727320158

/-! ## A182390.P1065483205521239330

`xor(n, floor(n*a(floor(n²/(n+1)))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A182390.P1065483205521239330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A182390.P1065483205521239330

/-! ## A182390.P3813748092859681807

`xor(n, lcm(n, n*a(ratio[3*(-1)^n]+n)))` with `a(0)=0`
-/

namespace A182390.P3813748092859681807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (Nat.lcm n (n * a (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ))).toNat))

end

end A182390.P3813748092859681807

/-! ## A182390.P5684372731920785674

`xor(n, round(n*a(A023443(n))))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A182390.P5684372731920785674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (n * a (A023443 n).toNat)

end

end A182390.P5684372731920785674

/-!
# A182391: Numbers n for which A104272(n) = A080359(n).

The programs for A182391, there is no canonical definition to state claims against.
-/

/-! ## A182391.P14070506963820783451

`comp[A070046(n+1)]+1`
-/

namespace A182391.P14070506963820783451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P14070506963820783451

/-! ## A182391.P10609189870037784866

`eq[0, A194217(n+1)]+1`
-/

namespace A182391.P10609189870037784866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182391.P10609189870037784866

/-! ## A182391.P11202464449063963565

`comp[A063124(n+1)-1]+1`
-/

namespace A182391.P11202464449063963565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P11202464449063963565

/-! ## A182391.P1058386764735847211

`lt[A194217(abs(1-n)+1), 1]`
-/

namespace A182391.P1058386764735847211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182391.P1058386764735847211

/-! ## A182391.P13115945314794645544

`comp[n-A331677(n+1)]+1`
-/

namespace A182391.P13115945314794645544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P13115945314794645544

/-! ## A182391.P14579291778532126480

`comp[A020900(n+1)-(n+1)]+1`
-/

namespace A182391.P14579291778532126480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P14579291778532126480

/-! ## A182391.P4472713917507102102

`comp[A108954(A000040(n+1))]+1`
-/

namespace A182391.P4472713917507102102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P4472713917507102102

/-! ## A182391.P11907051078769166047

`comp[A056171(2*A000040(n+1))]+1`
-/

namespace A182391.P11907051078769166047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P11907051078769166047

/-! ## A182391.P7719722313263232125

`comp[A000040(n+1)-(A246514(n+1)+1)]+1`
-/

namespace A182391.P7719722313263232125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A246514 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182391.P7719722313263232125

/-! ## A182391.P11527961660123461423

`comp[(2*A000040(n+1))%(A065897(n+1)+1+n)]`
-/

namespace A182391.P11527961660123461423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000040 (n + 1)) (A065897 (n + 1) + 1 + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182391.P11527961660123461423

/-!
# A182394: Signs of differences of number of divisors function: a(n) = sign(d(n)-d(n-1)), cf. A000005.

The programs for A182394, the canonical program `A182394.P11897336731762600311` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182394 has offset 2).

The definition of A182394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182394.P12909650386536990470

`round(tanh(Δ[A000005(n+1)]))`
-/

namespace A182394.P12909650386536990470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (f1 (n + 1) - f1 n : ℝ))

end

end A182394.P12909650386536990470

namespace A182394

/-- `round(tanh(Δ[A000005(n+1)]))` -/
def P12909650386536990470.Spec : Prop :=
  ∀ n, P12909650386536990470.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P11897336731762600311

`round(atan(atan(A051950(n+2))))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182394

/-- `round(atan(atan(A051950(n+2))))` -/
def P11897336731762600311.Spec : Prop :=
  ∀ n, P11897336731762600311.a n = A182394 (n + 2)

theorem P11897336731762600311.correct : P11897336731762600311.Spec := by
  intro n
  simp only [A182394, Nat.add_sub_cancel]

end A182394

/-! ## A182394.P2963292383062213404

`round(tanh(A000005(n+2)-A000005(n+1)))`
-/

namespace A182394.P2963292383062213404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A000005 (n + 2) - A000005 (n + 1) : ℝ))

end

end A182394.P2963292383062213404

namespace A182394

/-- `round(tanh(A000005(n+2)-A000005(n+1)))` -/
def P2963292383062213404.Spec : Prop :=
  ∀ n, P2963292383062213404.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P10501248272704504160

`round(tanh(Δ[∏{e}[n+1, #+1]]))`
-/

namespace A182394.P10501248272704504160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))

end

end A182394.P10501248272704504160

namespace A182394

/-- `round(tanh(Δ[∏{e}[n+1, #+1]]))` -/
def P10501248272704504160.Spec : Prop :=
  ∀ n, P10501248272704504160.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P2188438957508590023

`Δ[A175150(n+1)]`
-/

namespace A182394.P2188438957508590023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182394.P2188438957508590023

namespace A182394

/-- `Δ[A175150(n+1)]` -/
def P2188438957508590023.Spec : Prop :=
  ∀ n, P2188438957508590023.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P2776421594248889518

`round(tanh(Δ[A032741(n+1)]))`
-/

namespace A182394.P2776421594248889518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (f1 (n + 1) - f1 n : ℝ))

end

end A182394.P2776421594248889518

namespace A182394

/-- `round(tanh(Δ[A032741(n+1)]))` -/
def P2776421594248889518.Spec : Prop :=
  ∀ n, P2776421594248889518.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P7621076099616133438

`A175150(n+2)-A175150(n+1)`
-/

namespace A182394.P7621076099616133438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175150 (n + 2) - A175150 (n + 1)

end

end A182394.P7621076099616133438

namespace A182394

/-- `A175150(n+2)-A175150(n+1)` -/
def P7621076099616133438.Spec : Prop :=
  ∀ n, P7621076099616133438.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P1829574526494731041

`round(atan(Δ[A325770(n+1)]))`
-/

namespace A182394.P1829574526494731041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (f1 (n + 1) - f1 n : ℝ))

end

end A182394.P1829574526494731041

namespace A182394

/-- `round(atan(Δ[A325770(n+1)]))` -/
def P1829574526494731041.Spec : Prop :=
  ∀ n, P1829574526494731041.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P17433452326407053425

`round(atan(Δ[A135986(n+1)]))`
-/

namespace A182394.P17433452326407053425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (f1 (n + 1) - f1 n : ℝ))

end

end A182394.P17433452326407053425

namespace A182394

/-- `round(atan(Δ[A135986(n+1)]))` -/
def P17433452326407053425.Spec : Prop :=
  ∀ n, P17433452326407053425.a n = A182394 (n + 2)

end A182394

/-! ## A182394.P7787092477999010166

`(A135986(n+2)-A135986(n+1))/A000005(n+2)`
-/

namespace A182394.P7787092477999010166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135986 (n + 2) - A135986 (n + 1) : ℚ) / (A000005 (n + 2) : ℚ)

end

end A182394.P7787092477999010166

namespace A182394

/-- `(A135986(n+2)-A135986(n+1))/A000005(n+2)` -/
def P7787092477999010166.Spec : Prop :=
  ∀ n, P7787092477999010166.a n = (A182394 (n + 2) : ℚ)

end A182394

/-!
# A182396: a(n) is the least number not occurring earlier such that neighboring digits sum to 1 or 10.

The programs for A182396, there is no canonical definition to state claims against.
-/

/-! ## A182396.P14666480087495378677

`record[A344420(A210415(n+1))]`
-/

namespace A182396.P14666480087495378677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A210415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182396.P14666480087495378677

/-! ## A182396.P8539117489011914966

`eq[A052429(n+1), A169590(n)]`
-/

namespace A182396.P8539117489011914966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182396.P8539117489011914966

/-!
# A182398: a(n) = (Sum_{k=1..2n} k^2n) mod 2n.

The programs for A182398, there is no canonical definition to state claims against.
-/

/-! ## A182398.P9441002807559804329

`A340806(2*(n+1))%(2*(n+1))`
-/

namespace A182398.P9441002807559804329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340806 (2 * (n + 1))) (2 * (n + 1) : ℤ)

end

end A182398.P9441002807559804329

/-! ## A182398.P17834747056834287705

`A087706(lcm(3, A199343(n)))`
-/

namespace A182398.P17834747056834287705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087706 (Int.lcm 3 (A199343 n))

end

end A182398.P17834747056834287705

/-! ## A182398.P519131221412818782

`gcd(A005843(A007587(n)), A199343(n))`
-/

namespace A182398.P519131221412818782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A007587 n).toNat) (A199343 n)

end

end A182398.P519131221412818782

/-! ## A182398.P8913615956443310750

`A051176(A199343(n))%A133263(A335443(n))`
-/

namespace A182398.P8913615956443310750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051176 (A199343 n).toNat) (A133263 (A335443 n).toNat)

end

end A182398.P8913615956443310750

/-! ## A182398.P12578482333823756726

`A051176(A199343(n)%A188775(n+3))`
-/

namespace A182398.P12578482333823756726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.tmod (A199343 n) (A188775 (n + 3))).toNat

end

end A182398.P12578482333823756726

/-!
# A182399: G.f. A(x) satisfies: A(A(x)) - A(A(x))^2 = x + x^2.

The programs for A182399, there is no canonical definition to state claims against.
-/

/-! ## A182399.P13299648049884611296

`A023193(A128086(n))`
-/

namespace A182399.P13299648049884611296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A128086 n).toNat

end

end A182399.P13299648049884611296

/-! ## A182399.P16040285198673914891

`A005355(A004881(n+2))`
-/

namespace A182399.P16040285198673914891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005355 (A004881 (n + 2)).toNat

end

end A182399.P16040285198673914891

/-! ## A182399.P5943410808440647740

`A005355(A000005(5^n))`
-/

namespace A182399.P5943410808440647740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005355 (A000005 (5 ^ n)).toNat

end

end A182399.P5943410808440647740

/-! ## A182399.P10501216131151345746

`or(1, A008618(A088355(n+1)))`
-/

namespace A182399.P10501216131151345746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008618 (A088355 (n + 1)).toNat)

end

end A182399.P10501216131151345746

