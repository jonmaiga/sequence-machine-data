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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A119400: a(n) = Sum_{k=0..n} (n!/k!)^2*binomial(n,k).

The programs for A119400, there is no canonical definition to state claims against.
-/

/-! ## A119400.P3662480343270222496

`A299702(A373954(n)+A321631(n))`
-/

namespace A119400.P3662480343270222496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (A373954 n + A321631 n).toNat

end

end A119400.P3662480343270222496

/-!
# A119401: a(n) = Sum_{k=0..n} (-1)^(n-k)*(n!/k!)^2*binomial(n,k).

The programs for A119401, there is no canonical definition to state claims against.
-/

/-! ## A119401.P4235950678403578926

`A001057(A318697(n+1)-A034968(n))`
-/

namespace A119401.P4235950678403578926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A318697 (n + 1) - A034968 n).toNat

end

end A119401.P4235950678403578926

/-!
# A119405: Primes p such that p and p-th prime do not share any decimal digit.

The programs for A119405, there is no canonical definition to state claims against.
-/

/-! ## A119405.P13427735267404247920

`p?[A243355(n+1)]`
-/

namespace A119405.P13427735267404247920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119405.P13427735267404247920

/-! ## A119405.P18020982702121501458

`record[A006530(A243355(n+2))]`
-/

namespace A119405.P18020982702121501458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243355 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119405.P18020982702121501458

/-! ## A119405.P15849658866084307240

`filter[A243355(n+1), A010051(#)]`
-/

namespace A119405.P15849658866084307240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A119405.P15849658866084307240

/-! ## A119405.P12164925619657005674

`∩[A000040(n+1), A243355(n+1)]`
-/

namespace A119405.P12164925619657005674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119405.P12164925619657005674

/-! ## A119405.P1692389916185679133

`∩[A182986(n+1), A243355(n+1)]`
-/

namespace A119405.P1692389916185679133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119405.P1692389916185679133

/-! ## A119405.P10277102896304463610

`filter[A243355(n+2), A080339(#)]`
-/

namespace A119405.P10277102896304463610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A119405.P10277102896304463610

/-! ## A119405.P8384346466337603627

`A080670(p?[A243355(1-(n-2*n))])`
-/

namespace A119405.P8384346466337603627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A119405.P8384346466337603627

/-! ## A119405.P10847080274676045164

`∩[A243355(n+1), A385492(n+1)]`
-/

namespace A119405.P10847080274676045164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119405.P10847080274676045164

/-! ## A119405.P8487805016509696569

`p?[n+1-A001105(n*A081227(n+1))]`
-/

namespace A119405.P8487805016509696569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001105 ((n : ℤ) * A081227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119405.P8487805016509696569

/-!
# A119406: Years in which there are five Sundays in the month of February.

The programs for A119406, there is no canonical definition to state claims against.
-/

/-! ## A119406.P1519504045349476354

`A143994(n+1)+4`
-/

namespace A119406.P1519504045349476354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143994 (n + 1) + 4

end

end A119406.P1519504045349476354

/-! ## A119406.P12676810934515860930

`A224949(n+6)`
-/

namespace A119406.P12676810934515860930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224949 (n + 6)

end

end A119406.P12676810934515860930

/-! ## A119406.P10451151197637917261

`A224951(n+6)+4`
-/

namespace A119406.P10451151197637917261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 6) + 4

end

end A119406.P10451151197637917261

/-! ## A119406.P193374920069795907

`A224946(n+6)+8`
-/

namespace A119406.P193374920069795907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224946 (n + 6) + 8

end

end A119406.P193374920069795907

/-! ## A119406.P2260632389333064144

`A020722(A224946(n+6))`
-/

namespace A119406.P2260632389333064144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A224946 (n + 6)).toNat

end

end A119406.P2260632389333064144

/-! ## A119406.P6851596871303957456

`A020705(A143994(n+1))`
-/

namespace A119406.P6851596871303957456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A143994 (n + 1)).toNat

end

end A119406.P6851596871303957456

/-!
# A119407: Number of nonempty subsets of {1,2,...,n} with no gap of length greater than 4 (a set S has a gap of length d if a and b are in S but no x with a < x < b is in S, where b-a=d).

The programs for A119407, the canonical program `A119407.P4470976182608341421` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119407 has offset 1).

The definition of A119407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119407.P1209793232340815343

`∑[ogf(1/(1-2x+x^5))]`
-/

namespace A119407.P1209793232340815343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P1209793232340815343

namespace A119407

/-- `∑[ogf(1/(1-2x+x^5))]` -/
def P1209793232340815343.Spec : Prop :=
  ∀ n, P1209793232340815343.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P4470976182608341421

`∑[2*a(n-1)-a(n-5)]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119407

/-- `∑[2*a(n-1)-a(n-5)]` -/
def P4470976182608341421.Spec : Prop :=
  ∀ n, P4470976182608341421.a n = A119407 (n + 1)

theorem P4470976182608341421.correct : P4470976182608341421.Spec := by
  intro n
  simp only [A119407, Nat.add_sub_cancel]

end A119407

/-! ## A119407.P2488783302218950695

`∑[A107066(n)]`
-/

namespace A119407.P2488783302218950695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P2488783302218950695

namespace A119407

/-- `∑[A107066(n)]` -/
def P2488783302218950695.Spec : Prop :=
  ∀ n, P2488783302218950695.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P6800195042222041416

`∑[abs(Δ[A145112(n)])]`
-/

namespace A119407.P6800195042222041416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P6800195042222041416

namespace A119407

/-- `∑[abs(Δ[A145112(n)])]` -/
def P6800195042222041416.Spec : Prop :=
  ∀ n, P6800195042222041416.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P8267017604780557008

`A145112(n+1)-1`
-/

namespace A119407.P8267017604780557008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 (n + 1) - 1

end

end A119407.P8267017604780557008

namespace A119407

/-- `A145112(n+1)-1` -/
def P8267017604780557008.Spec : Prop :=
  ∀ n, P8267017604780557008.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P9266350157479733436

`A356620(n)+1+n`
-/

namespace A119407.P9266350157479733436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356620 n + 1 + (n : ℤ)

end

end A119407.P9266350157479733436

namespace A119407

/-- `A356620(n)+1+n` -/
def P9266350157479733436.Spec : Prop :=
  ∀ n, P9266350157479733436.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P16722443244321351881

`∑[∑[A000078(n+3)]]`
-/

namespace A119407.P16722443244321351881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P16722443244321351881

namespace A119407

/-- `∑[∑[A000078(n+3)]]` -/
def P16722443244321351881.Spec : Prop :=
  ∀ n, P16722443244321351881.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P12540057698046447509

`∑[∑[∑[A001631(n+2)]]]`
-/

namespace A119407.P12540057698046447509
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P12540057698046447509

namespace A119407

/-- `∑[∑[∑[A001631(n+2)]]]` -/
def P12540057698046447509.Spec : Prop :=
  ∀ n, P12540057698046447509.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P11610023175129498016

`∑[∑[A274759(A016777(n))]]`
-/

namespace A119407.P11610023175129498016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (A016777 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P11610023175129498016

namespace A119407

/-- `∑[∑[A274759(A016777(n))]]` -/
def P11610023175129498016.Spec : Prop :=
  ∀ n, P11610023175129498016.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P16034034499458354410

`∑[∑[A048887(∑[n+3])]]`
-/

namespace A119407.P16034034499458354410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P16034034499458354410

namespace A119407

/-- `∑[∑[A048887(∑[n+3])]]` -/
def P16034034499458354410.Spec : Prop :=
  ∀ n, P16034034499458354410.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P15590187406596330047

`∑[A140996(A000124(n+1))]`
-/

namespace A119407.P15590187406596330047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P15590187406596330047

namespace A119407

/-- `∑[A140996(A000124(n+1))]` -/
def P15590187406596330047.Spec : Prop :=
  ∀ n, P15590187406596330047.a n = A119407 (n + 1)

end A119407

/-! ## A119407.P9439407823530447750

`∑[A140996(A134869(n+1))]`
-/

namespace A119407.P9439407823530447750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A134869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119407.P9439407823530447750

namespace A119407

/-- `∑[A140996(A134869(n+1))]` -/
def P9439407823530447750.Spec : Prop :=
  ∀ n, P9439407823530447750.a n = A119407 (n + 1)

end A119407

/-!
# A119408: Decimal equivalent of the binary string generated by the n X n identity matrix.

The programs for A119408, the canonical program `A119408.P2122875751603688790` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119408 has offset 1).

The definition of A119408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119408.P2122875751603688790

`(2^(n+1)*2^(n+1)²-1)/(2*2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119408

/-- `(2^(n+1)*2^(n+1)²-1)/(2*2^(n+1)-1)` -/
def P2122875751603688790.Spec : Prop :=
  ∀ n, P2122875751603688790.a n = (A119408 (n + 1) : ℚ)

end A119408

/-! ## A119408.P14602607495435604143

`∑{d}[2^n, #^(n+2)]`
-/

namespace A119408.P14602607495435604143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 2)

end

end A119408.P14602607495435604143

namespace A119408

/-- `∑{d}[2^n, #^(n+2)]` -/
def P14602607495435604143.Spec : Prop :=
  ∀ n, (P14602607495435604143.a n : ℤ) = A119408 (n + 1)

end A119408

/-! ## A119408.P6620860867174852212

`A350952(2*n+1)-A350952(2*n)`
-/

namespace A119408.P6620860867174852212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350952 (2 * n + 1) - A350952 (2 * n)

end

end A119408.P6620860867174852212

namespace A119408

/-- `A350952(2*n+1)-A350952(2*n)` -/
def P6620860867174852212.Spec : Prop :=
  ∀ n, P6620860867174852212.a n = A119408 (n + 1)

end A119408

/-! ## A119408.P14522619822839980273

`A275779(n+1)-A350952(A005408(n))`
-/

namespace A119408.P14522619822839980273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275779 (n + 1) - A350952 (A005408 n).toNat

end

end A119408.P14522619822839980273

namespace A119408

/-- `A275779(n+1)-A350952(A005408(n))` -/
def P14522619822839980273.Spec : Prop :=
  ∀ n, P14522619822839980273.a n = A119408 (n + 1)

end A119408

/-! ## A119408.P17173852162916007503

`A275779(n+1)-(A256275(n+1)+A128889(n+1))`
-/

namespace A119408.P17173852162916007503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275779 (n + 1) - (A256275 (n + 1) + A128889 (n + 1))

end

end A119408.P17173852162916007503

namespace A119408

/-- `A275779(n+1)-(A256275(n+1)+A128889(n+1))` -/
def P17173852162916007503.Spec : Prop :=
  ∀ n, P17173852162916007503.a n = A119408 (n + 1)

end A119408

/-!
# A119409: Numbers k such that 235*k + 1 is prime.

The programs for A119409, there is no canonical definition to state claims against.
-/

/-! ## A119409.P8318326129229401128

`eq[1, A001222(5*47*n+1)]`
-/

namespace A119409.P8318326129229401128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (47 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119409.P8318326129229401128

/-! ## A119409.P1775194709238646973

`eq[1, A321944(n*235+1)]`
-/

namespace A119409.P1775194709238646973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n * 235 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119409.P1775194709238646973

/-! ## A119409.P13763531088683124162

`eq[1, A001065(5*47*n+1)]`
-/

namespace A119409.P13763531088683124162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (5 * (47 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119409.P13763531088683124162

/-! ## A119409.P14958474318506677615

`lt[1, A049084(5*47*n+1)]`
-/

namespace A119409.P14958474318506677615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (5 * (47 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119409.P14958474318506677615

/-! ## A119409.P13606569464183262752

`lt[A020639(A235039(n)), A020639(n+1)]`
-/

namespace A119409.P13606569464183262752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235039 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119409.P13606569464183262752

/-!
# A119411: Product of the first prime(n) primes.

The programs for A119411, there is no canonical definition to state claims against.
-/

/-! ## A119411.P14209491066404256657

`A002110(p?[comp[n²]])`
-/

namespace A119411.P14209491066404256657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A119411.P14209491066404256657

/-! ## A119411.P11565710067453764258

`A002110(record[p?[∏{p}[n+1, #]]])`
-/

namespace A119411.P11565710067453764258
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A119411.P11565710067453764258

/-! ## A119411.P11868224031597056249

`A002110(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A119411.P11868224031597056249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A119411.P11868224031597056249

/-! ## A119411.P2793293205190554380

`A002110(Δ[A007504(n)])`
-/

namespace A119411.P2793293205190554380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (f1 (n + 1) - f1 n).toNat

end

end A119411.P2793293205190554380

/-! ## A119411.P5683529617409788351

`A002110(ratio[A002110(n)])`
-/

namespace A119411.P5683529617409788351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A119411.P5683529617409788351

/-!
# A119412: a(n) = n*(n+11).

The programs for A119412, the canonical program `A119412.P15416208441613043438` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119412 has offset 0).

The definition of A119412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+11)` (program `A119412.P15416208441613043438`, by `A119412.P15416208441613043438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119412.P15416208441613043438

`n*(n+11)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119412

/-- `n*(n+11)` -/
def P15416208441613043438.Spec : Prop :=
  ∀ n, (P15416208441613043438.a n : ℤ) = A119412 n

theorem P15416208441613043438.correct : P15416208441613043438.Spec := by
  intro n
  simp only [A119412]

end A119412

/-!
# A119413: a(n) = 16*n - 12.

The programs for A119413, the canonical program `A119413.P2366630370367449973` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119413 has offset 1).

The definition of A119413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)-12` (program `A119413.P2366630370367449973`, by `A119413.P2366630370367449973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119413.P2366630370367449973

`16*(n+1)-12`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119413

/-- `16*(n+1)-12` -/
def P2366630370367449973.Spec : Prop :=
  ∀ n, P2366630370367449973.a n = A119413 (n + 1)

theorem P2366630370367449973.correct : P2366630370367449973.Spec := by
  intro n
  simp only [A119413, Nat.add_sub_cancel]

end A119413

/-!
# A119416: n * (smallest prime greater than largest prime factor of n).

The programs for A119416, the canonical program `A119416.P13607137128178787209` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119416 has offset 1).

The definition of A119416 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119416.P13607137128178787209

`(n+1)*A151800(A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A119416

/-- `(n+1)*A151800(A006530(n+1))` -/
def P13607137128178787209.Spec : Prop :=
  ∀ n, P13607137128178787209.a n = A119416 (n + 1)

theorem P13607137128178787209.correct : P13607137128178787209.Spec := by
  intro n
  simp only [A119416, Nat.add_sub_cancel]

end A119416

/-! ## A119416.P5588468752731835791

`(n+1)*A117366(n+1)`
-/

namespace A119416.P5588468752731835791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117366 (n + 1)

end

end A119416.P5588468752731835791

namespace A119416

/-- `(n+1)*A117366(n+1)` -/
def P5588468752731835791.Spec : Prop :=
  ∀ n, P5588468752731835791.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P5026606315091439679

`lcm(n+1, A285639(n+1))`
-/

namespace A119416.P5026606315091439679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A285639 (n + 1))

end

end A119416.P5026606315091439679

namespace A119416

/-- `lcm(n+1, A285639(n+1))` -/
def P5026606315091439679.Spec : Prop :=
  ∀ n, (P5026606315091439679.a n : ℤ) = A119416 (n + 1)

end A119416

/-! ## A119416.P16202796342190812721

`(n+1)*A000040(A159081(n+1))`
-/

namespace A119416.P16202796342190812721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (A159081 (n + 1)).toNat

end

end A119416.P16202796342190812721

namespace A119416

/-- `(n+1)*A000040(A159081(n+1))` -/
def P16202796342190812721.Spec : Prop :=
  ∀ n, P16202796342190812721.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P17186381822677446029

`(n+1)*A117367(A053585(n+1))`
-/

namespace A119416.P17186381822677446029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117367 (A053585 (n + 1)).toNat

end

end A119416.P17186381822677446029

namespace A119416

/-- `(n+1)*A117367(A053585(n+1))` -/
def P17186381822677446029.Spec : Prop :=
  ∀ n, P17186381822677446029.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P45490671909101227

`A020639(n+1)*A285639(n+1)`
-/

namespace A119416.P45490671909101227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A285639 (n + 1)

end

end A119416.P45490671909101227

namespace A119416

/-- `A020639(n+1)*A285639(n+1)` -/
def P45490671909101227.Spec : Prop :=
  ∀ n, P45490671909101227.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P12170388926276505717

`A111089(n+1)*A253550(n+1)`
-/

namespace A119416.P12170388926276505717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) * A253550 (n + 1)

end

end A119416.P12170388926276505717

namespace A119416

/-- `A111089(n+1)*A253550(n+1)` -/
def P12170388926276505717.Spec : Prop :=
  ∀ n, P12170388926276505717.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P14238384778697222712

`(n+1)*A117367(A345941(n+1))`
-/

namespace A119416.P14238384778697222712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117367 (A345941 (n + 1)).toNat

end

end A119416.P14238384778697222712

namespace A119416

/-- `(n+1)*A117367(A345941(n+1))` -/
def P14238384778697222712.Spec : Prop :=
  ∀ n, P14238384778697222712.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P9283262482983896513

`lcm(A000027(n+1), A117366(n+1))`
-/

namespace A119416.P9283262482983896513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A117366 (n + 1))

end

end A119416.P9283262482983896513

namespace A119416

/-- `lcm(A000027(n+1), A117366(n+1))` -/
def P9283262482983896513.Spec : Prop :=
  ∀ n, (P9283262482983896513.a n : ℤ) = A119416 (n + 1)

end A119416

/-! ## A119416.P2776703185159846778

`A006530(2*(n+1))*A253550(n+1)`
-/

namespace A119416.P2776703185159846778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) * A253550 (n + 1)

end

end A119416.P2776703185159846778

namespace A119416

/-- `A006530(2*(n+1))*A253550(n+1)` -/
def P2776703185159846778.Spec : Prop :=
  ∀ n, P2776703185159846778.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P4673345966420803816

`(n+1)*A151800(A053585(∏{p}[n+1, #]))`
-/

namespace A119416.P4673345966420803816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151800 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A119416.P4673345966420803816

namespace A119416

/-- `(n+1)*A151800(A053585(∏{p}[n+1, #]))` -/
def P4673345966420803816.Spec : Prop :=
  ∀ n, P4673345966420803816.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P9917961723151337778

`(n+1)*A000040(n-A243291(n+1)+2)`
-/

namespace A119416.P9917961723151337778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 ((n : ℤ) - A243291 (n + 1) + 2).toNat

end

end A119416.P9917961723151337778

namespace A119416

/-- `(n+1)*A000040(n-A243291(n+1)+2)` -/
def P9917961723151337778.Spec : Prop :=
  ∀ n, P9917961723151337778.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P16579426182406733043

`(n+1)*A285639((n+1)/A052126(n+1))`
-/

namespace A119416.P16579426182406733043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A119416.P16579426182406733043

namespace A119416

/-- `(n+1)*A285639((n+1)/A052126(n+1))` -/
def P16579426182406733043.Spec : Prop :=
  ∀ n, P16579426182406733043.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P11828231130745398221

`A014963(A028233(n+1))*A285639(n+1)`
-/

namespace A119416.P11828231130745398221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 (n + 1)).toNat * A285639 (n + 1)

end

end A119416.P11828231130745398221

namespace A119416

/-- `A014963(A028233(n+1))*A285639(n+1)` -/
def P11828231130745398221.Spec : Prop :=
  ∀ n, P11828231130745398221.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P307895834973636537

`A285639(A103517(n))`
-/

namespace A119416.P307895834973636537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (A103517 n).toNat

end

end A119416.P307895834973636537

namespace A119416

/-- `A285639(A103517(n))` -/
def P307895834973636537.Spec : Prop :=
  ∀ n, P307895834973636537.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P10225312921302198087

`A285639(2*(n+1))-A010051(2*(n+1))`
-/

namespace A119416.P10225312921302198087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (2 * (n + 1)) - A010051 (2 * (n + 1))

end

end A119416.P10225312921302198087

namespace A119416

/-- `A285639(2*(n+1))-A010051(2*(n+1))` -/
def P10225312921302198087.Spec : Prop :=
  ∀ n, P10225312921302198087.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P13868846339110367487

`A285639(2*(n+1))-A166260(2*(n+1))`
-/

namespace A119416.P13868846339110367487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (2 * (n + 1)) - A166260 (2 * (n + 1))

end

end A119416.P13868846339110367487

namespace A119416

/-- `A285639(2*(n+1))-A166260(2*(n+1))` -/
def P13868846339110367487.Spec : Prop :=
  ∀ n, P13868846339110367487.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P4745626035550780211

`A285639(2*(n+1))+1-A089026(2*(n+1))`
-/

namespace A119416.P4745626035550780211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (2 * (n + 1)) + (1 - A089026 (2 * (n + 1)))

end

end A119416.P4745626035550780211

namespace A119416

/-- `A285639(2*(n+1))+1-A089026(2*(n+1))` -/
def P4745626035550780211.Spec : Prop :=
  ∀ n, P4745626035550780211.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P2337223011675764263

`A285639(2*(n+1))+A003817(2*n)-A003817(A003817(n)+1)`
-/

namespace A119416.P2337223011675764263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (2 * (n + 1)) + (A003817 (2 * n) - A003817 (A003817 n + 1).toNat)

end

end A119416.P2337223011675764263

namespace A119416

/-- `A285639(2*(n+1))+A003817(2*n)-A003817(A003817(n)+1)` -/
def P2337223011675764263.Spec : Prop :=
  ∀ n, P2337223011675764263.a n = A119416 (n + 1)

end A119416

/-! ## A119416.P4838157914847655532

`(n+1)*A285639(A051664(n+1)-A070536(n+1))`
-/

namespace A119416.P4838157914847655532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285639 (A051664 (n + 1) - A070536 (n + 1)).toNat

end

end A119416.P4838157914847655532

namespace A119416

/-- `(n+1)*A285639(A051664(n+1)-A070536(n+1))` -/
def P4838157914847655532.Spec : Prop :=
  ∀ n, P4838157914847655532.a n = A119416 (n + 1)

end A119416

/-!
# A119417: Partial sums of A119385.

The programs for A119417, there is no canonical definition to state claims against.
-/

/-! ## A119417.P4144207434898114716

`∑[A119385(n)]`
-/

namespace A119417.P4144207434898114716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119417.P4144207434898114716

/-! ## A119417.P11521632252587069642

`A054632(A031287(n+1))`
-/

namespace A119417.P11521632252587069642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A031287 (n + 1)).toNat

end

end A119417.P11521632252587069642

/-! ## A119417.P12423529223878481907

`A054632(A065650(10*n))`
-/

namespace A119417.P12423529223878481907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A065650 (10 * n)).toNat

end

end A119417.P12423529223878481907

/-! ## A119417.P641469016658626461

`A054632(eq[0, A007376(n)])`
-/

namespace A119417.P641469016658626461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119417.P641469016658626461

/-! ## A119417.P14180678880707577348

`A054632(lt[A007376(n), 1])`
-/

namespace A119417.P14180678880707577348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119417.P14180678880707577348

/-!
# A119425: Primitive terms of the sequence A119357, i.e., of the sequence of those values of n for which the number of distinct nonzero sums of distinct divisors of n is less than 2^tau(n) - 1.

The programs for A119425, there is no canonical definition to state claims against.
-/

/-! ## A119425.P12889977571787188756

`∩[A051774(n+1), A392500(n+1)]`
-/

namespace A119425.P12889977571787188756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119425.P12889977571787188756

/-! ## A119425.P9866470519081054164

`∩[A119357(n+1), A392500(n+1)]`
-/

namespace A119425.P9866470519081054164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119425.P9866470519081054164

/-!
# A119426: Concatenation of 3 or more numbers in arithmetic progression with positive common difference.

The programs for A119426, there is no canonical definition to state claims against.
-/

/-! ## A119426.P9293359884338679507

`∩[A009993(n+1), A034840(n)]`
-/

namespace A119426.P9293359884338679507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119426.P9293359884338679507

/-! ## A119426.P14637389436748092383

`∩[A034840(n), A179308(n+1)]`
-/

namespace A119426.P14637389436748092383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119426.P14637389436748092383

/-! ## A119426.P13580221727126972566

`∩[A034840(n), A211771(n+1)]`
-/

namespace A119426.P13580221727126972566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119426.P13580221727126972566

/-! ## A119426.P13306907290721621044

`record[A004185(10*A247616(n+1))]`
-/

namespace A119426.P13306907290721621044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (10 * A247616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119426.P13306907290721621044

/-!
# A119427: Concatenation of 3 or more numbers in arithmetic progression with negative common difference.

The programs for A119427, there is no canonical definition to state claims against.
-/

/-! ## A119427.P4870181355264525071

`∩[A034840(n), A296714(n+1)]`
-/

namespace A119427.P4870181355264525071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119427.P4870181355264525071

/-! ## A119427.P17681929211338947911

`∩[A034840(n), A297147(n+1)]`
-/

namespace A119427.P17681929211338947911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119427.P17681929211338947911

/-! ## A119427.P16561992469292844074

`∩[A009995(n+1), A034840(n)]`
-/

namespace A119427.P16561992469292844074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119427.P16561992469292844074

/-! ## A119427.P11719084947878974774

`∩[A034840(n), A212372(n+1)]`
-/

namespace A119427.P11719084947878974774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119427.P11719084947878974774

/-! ## A119427.P9195006373141239862

`∩[A034840(n), A308393(n+1)]`
-/

namespace A119427.P9195006373141239862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119427.P9195006373141239862

/-!
# A119428: G.f.: A(x) = 1 + Sum_{n>=0} (-1)^n* Sum_{k=1..4} x^(5n+k)/(1-x^(5n+k)).

The programs for A119428, the canonical program `A119428.P13055513674063080029` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119428 has offset 0).

The definition of A119428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119428.P10221284825701007349

`A000007(n)+∑{d}[n, A163812(#)]`
-/

namespace A119428.P10221284825701007349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A163812 d

end

end A119428.P10221284825701007349

namespace A119428

/-- `A000007(n)+∑{d}[n, A163812(#)]` -/
def P10221284825701007349.Spec : Prop :=
  ∀ n, P10221284825701007349.a n = A119428 n

end A119428

/-! ## A119428.P10159818724983787540

`∑{d}[A016825(n)-(A103517(n)+n), A163812(#)]`
-/

namespace A119428.P10159818724983787540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - (A103517 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A163812 d

end

end A119428.P10159818724983787540

namespace A119428

/-- `∑{d}[A016825(n)-(A103517(n)+n), A163812(#)]` -/
def P10159818724983787540.Spec : Prop :=
  ∀ n, P10159818724983787540.a n = A119428 n

end A119428

/-! ## A119428.P5299042298339659471

`∑{d}[A008619(A004273(n)), A163812(#)]`
-/

namespace A119428.P5299042298339659471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A163812 d

end

end A119428.P5299042298339659471

namespace A119428

/-- `∑{d}[A008619(A004273(n)), A163812(#)]` -/
def P5299042298339659471.Spec : Prop :=
  ∀ n, P5299042298339659471.a n = A119428 n

end A119428

/-! ## A119428.P5884104397118250213

`∑{d}[A001057(A053438(n)), A163812(#)]`
-/

namespace A119428.P5884104397118250213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A163812 d

end

end A119428.P5884104397118250213

namespace A119428

/-- `∑{d}[A001057(A053438(n)), A163812(#)]` -/
def P5884104397118250213.Spec : Prop :=
  ∀ n, P5884104397118250213.a n = A119428 n

end A119428

/-! ## A119428.P13055513674063080029

`∑{d}[A008619(A004273(n)), A330025(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119428

/-- `∑{d}[A008619(A004273(n)), A330025(#)]` -/
def P13055513674063080029.Spec : Prop :=
  ∀ n, P13055513674063080029.a n = A119428 n

theorem P13055513674063080029.correct : P13055513674063080029.Spec := by
  intro n
  simp only [A119428]

end A119428

/-! ## A119428.P5307694162784212203

`∑{d}[A065033(2*n), A163812(#)]`
-/

namespace A119428.P5307694162784212203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A163812 d

end

end A119428.P5307694162784212203

namespace A119428

/-- `∑{d}[A065033(2*n), A163812(#)]` -/
def P5307694162784212203.Spec : Prop :=
  ∀ n, P5307694162784212203.a n = A119428 n

end A119428

/-! ## A119428.P2949831233064622570

`∑{d}[A054576(A008574(n)), A330025(#)]`
-/

namespace A119428.P2949831233064622570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330025 d

end

end A119428.P2949831233064622570

namespace A119428

/-- `∑{d}[A054576(A008574(n)), A330025(#)]` -/
def P2949831233064622570.Spec : Prop :=
  ∀ n, P2949831233064622570.a n = A119428 n

end A119428

/-! ## A119428.P7992451544933616293

`∑{d}[A008706(n), A163812(#)]`
-/

namespace A119428.P7992451544933616293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A163812 d

end

end A119428.P7992451544933616293

namespace A119428

/-- `∑{d}[A008706(n), A163812(#)]` -/
def P7992451544933616293.Spec : Prop :=
  ∀ n, P7992451544933616293.a n = A119428 n

end A119428

/-!
# A119429: Expansion of Sum_{k>=0} x^(2*k)/Product_{j=1..k} (1 - j*2*x).

The programs for A119429, there is no canonical definition to state claims against.
-/

/-! ## A119429.P7441780723125909943

`A324701(4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=5`
-/

namespace A119429.P7441780723125909943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 5] fun n a =>
  A324701 (4 * a (n - 2)).toNat

end

end A119429.P7441780723125909943

/-! ## A119429.P5520305360710458073

`A257839(A157135(n))+A048723(n)`
-/

namespace A119429.P5520305360710458073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A157135 n).toNat + A048723 n

end

end A119429.P5520305360710458073

/-! ## A119429.P283681086075219497

`A257839(A157135(n))+A048993(n)`
-/

namespace A119429.P283681086075219497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A157135 n).toNat + A048993 n

end

end A119429.P283681086075219497

/-! ## A119429.P7833669735311455497

`A257839(A157135(n))+A072233(n)`
-/

namespace A119429.P7833669735311455497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A157135 n).toNat + A072233 n

end

end A119429.P7833669735311455497

/-!
# A119430: Expansion of Sum_{k>=0} 2^k*x^(2k)/Product_{j=1..k} (1 - j*2x).

The programs for A119430, there is no canonical definition to state claims against.
-/

/-! ## A119430.P14372879293368723847

`and(A062272(n), A136613(A062282(n)))`
-/

namespace A119430.P14372879293368723847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062272 n) (A136613 (A062282 n).toNat)

end

end A119430.P14372879293368723847

/-! ## A119430.P5752540639888071289

`and(A136613(A062282(n)), A326513(n))`
-/

namespace A119430.P5752540639888071289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136613 (A062282 n).toNat) (A326513 n)

end

end A119430.P5752540639888071289

/-! ## A119430.P15698104343539661

`and(A015767(A015759(n+1)), A326513(n))`
-/

namespace A119430.P15698104343539661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015767 (A015759 (n + 1)).toNat) (A326513 n)

end

end A119430.P15698104343539661

/-!
# A119431: Primitive elements of A054741.

The programs for A119431, the canonical program `A119431.P16119249505349426533` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119431 has offset 1).

The definition of A119431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119431.P16119249505349426533

`eq[1, A318875(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119431

/-- `eq[1, A318875(n+1)]+1` -/
def P16119249505349426533.Spec : Prop :=
  ∀ n, (P16119249505349426533.a n : ℤ) = A119431 (n + 1)

theorem P16119249505349426533.correct : P16119249505349426533.Spec := by
  intro n
  simp only [A119431, Nat.add_sub_cancel]

end A119431

/-! ## A119431.P3004958840057323458

`eq[n+1, A318877(n+1)]+1`
-/

namespace A119431.P3004958840057323458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119431.P3004958840057323458

namespace A119431

/-- `eq[n+1, A318877(n+1)]+1` -/
def P3004958840057323458.Spec : Prop :=
  ∀ n, (P3004958840057323458.a n : ℤ) = A119431 (n + 1)

end A119431

/-! ## A119431.P4996456632047479254

`record[A054741(n+1)/A318875(A054741(n+1))]`
-/

namespace A119431.P4996456632047479254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054741 (n + 1) : ℚ) / (A318875 (A054741 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119431.P4996456632047479254

namespace A119431

/-- `record[A054741(n+1)/A318875(A054741(n+1))]` -/
def P4996456632047479254.Spec : Prop :=
  ∀ n, P4996456632047479254.a n = (A119431 (n + 1) : ℚ)

end A119431

/-! ## A119431.P11902610442611765637

`eq[1, A318875(A028310(n))]`
-/

namespace A119431.P11902610442611765637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119431.P11902610442611765637

namespace A119431

/-- `eq[1, A318875(A028310(n))]` -/
def P11902610442611765637.Spec : Prop :=
  ∀ n, (P11902610442611765637.a n : ℤ) = A119431 (n + 1)

end A119431

/-! ## A119431.P13928942640552564070

`A153152(eq[1, A318875(n+1)])`
-/

namespace A119431.P13928942640552564070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119431.P13928942640552564070

namespace A119431

/-- `A153152(eq[1, A318875(n+1)])` -/
def P13928942640552564070.Spec : Prop :=
  ∀ n, P13928942640552564070.a n = A119431 (n + 1)

end A119431

/-! ## A119431.P1750768716090406196

`eq[1, A318875(A233583(n+1))]`
-/

namespace A119431.P1750768716090406196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119431.P1750768716090406196

namespace A119431

/-- `eq[1, A318875(A233583(n+1))]` -/
def P1750768716090406196.Spec : Prop :=
  ∀ n, (P1750768716090406196.a n : ℤ) = A119431 (n + 1)

end A119431

/-!
# A119432: Numbers k such that 2*phi(k) <= k.

The programs for A119432, the canonical program `A119432.P2492859987505692241` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119432 has offset 1).

The definition of A119432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119432.P4783938612225820154

`lt[A319997(n+1), n/2]+1`
-/

namespace A119432.P4783938612225820154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A119432.P4783938612225820154

namespace A119432

/-- `lt[A319997(n+1), n/2]+1` -/
def P4783938612225820154.Spec : Prop :=
  ∀ n, (P4783938612225820154.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P5646701272386979485

`lt[2*A000010(n+1), n+2]+1`
-/

namespace A119432.P5646701272386979485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119432.P5646701272386979485

namespace A119432

/-- `lt[2*A000010(n+1), n+2]+1` -/
def P5646701272386979485.Spec : Prop :=
  ∀ n, (P5646701272386979485.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P4602614800841813580

`lt[1, floor(n/A000010(abs(1-n)+1))]`
-/

namespace A119432.P4602614800841813580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000010 (|1 - (n : ℤ)| + 1).toNat : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119432.P4602614800841813580

namespace A119432

/-- `lt[1, floor(n/A000010(abs(1-n)+1))]` -/
def P4602614800841813580.Spec : Prop :=
  ∀ n, (P4602614800841813580.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P17856746795518549692

`lt[2, (n+1)/A000010(floor(a(n-1)))]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A119432.P17856746795518549692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℚ) / (A000010 ⌊f2 (n - 1)⌋.toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A119432.P17856746795518549692

namespace A119432

/-- `lt[2, (n+1)/A000010(floor(a(n-1)))]` -/
def P17856746795518549692.Spec : Prop :=
  ∀ n, (P17856746795518549692.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P9844733395697462779

`lt[A000010(n+1), A014682(n)]+1`
-/

namespace A119432.P9844733395697462779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A119432.P9844733395697462779

namespace A119432

/-- `lt[A000010(n+1), A014682(n)]+1` -/
def P9844733395697462779.Spec : Prop :=
  ∀ n, (P9844733395697462779.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P2492859987505692241

`lt[1, A062356(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A119432

/-- `lt[1, A062356(n+1)]+1` -/
def P2492859987505692241.Spec : Prop :=
  ∀ n, (P2492859987505692241.a n : ℤ) = A119432 (n + 1)

theorem P2492859987505692241.correct : P2492859987505692241.Spec := by
  intro n
  simp only [A119432, Nat.add_sub_cancel]

end A119432

/-! ## A119432.P7033198500838675313

`lt[n, 2*A051953(n+1)]+1`
-/

namespace A119432.P7033198500838675313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119432.P7033198500838675313

namespace A119432

/-- `lt[n, 2*A051953(n+1)]+1` -/
def P7033198500838675313.Spec : Prop :=
  ∀ n, (P7033198500838675313.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P6511952468650505493

`lt[A000010(n+1), A064680(n)]+1`
-/

namespace A119432.P6511952468650505493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A119432.P6511952468650505493

namespace A119432

/-- `lt[A000010(n+1), A064680(n)]+1` -/
def P6511952468650505493.Spec : Prop :=
  ∀ n, (P6511952468650505493.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P12767412691314097464

`lt[A109606(n+1), A064680(n)]+1`
-/

namespace A119432.P12767412691314097464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A119432.P12767412691314097464

namespace A119432

/-- `lt[A109606(n+1), A064680(n)]+1` -/
def P12767412691314097464.Spec : Prop :=
  ∀ n, (P12767412691314097464.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P8514284788793911198

`lt[A000010(A028310(n)), A008619(n)]`
-/

namespace A119432.P8514284788793911198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P8514284788793911198

namespace A119432

/-- `lt[A000010(A028310(n)), A008619(n)]` -/
def P8514284788793911198.Spec : Prop :=
  ∀ n, (P8514284788793911198.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P12434650874769176507

`lt[A000010(A028310(n)), A046699(n+1)]`
-/

namespace A119432.P12434650874769176507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P12434650874769176507

namespace A119432

/-- `lt[A000010(A028310(n)), A046699(n+1)]` -/
def P12434650874769176507.Spec : Prop :=
  ∀ n, (P12434650874769176507.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P11198769611743957458

`lt[A000010(n+1), A026741(n+2)]+1`
-/

namespace A119432.P11198769611743957458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A119432.P11198769611743957458

namespace A119432

/-- `lt[A000010(n+1), A026741(n+2)]+1` -/
def P11198769611743957458.Spec : Prop :=
  ∀ n, (P11198769611743957458.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P14472670013435022588

`lt[A000010(abs(1-n)+1)+1, A160413(n+1)]`
-/

namespace A119432.P14472670013435022588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P14472670013435022588

namespace A119432

/-- `lt[A000010(abs(1-n)+1)+1, A160413(n+1)]` -/
def P14472670013435022588.Spec : Prop :=
  ∀ n, (P14472670013435022588.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P15594828892493153620

`lt[A000010(A029579(n)), A008619(n)]`
-/

namespace A119432.P15594828892493153620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P15594828892493153620

namespace A119432

/-- `lt[A000010(A029579(n)), A008619(n)]` -/
def P15594828892493153620.Spec : Prop :=
  ∀ n, (P15594828892493153620.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P18175935661930337501

`lt[A000010(A028310(n)), A028242(n)]`
-/

namespace A119432.P18175935661930337501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P18175935661930337501

namespace A119432

/-- `lt[A000010(A028310(n)), A028242(n)]` -/
def P18175935661930337501.Spec : Prop :=
  ∀ n, (P18175935661930337501.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P18199776699899177898

`lt[A000010(A028310(n)), A262610(n+1)]`
-/

namespace A119432.P18199776699899177898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P18199776699899177898

namespace A119432

/-- `lt[A000010(A028310(n)), A262610(n+1)]` -/
def P18199776699899177898.Spec : Prop :=
  ∀ n, (P18199776699899177898.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P12977634111307632471

`lt[A000010(A233583(n+1)), A008619(n)]`
-/

namespace A119432.P12977634111307632471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119432.P12977634111307632471

namespace A119432

/-- `lt[A000010(A233583(n+1)), A008619(n)]` -/
def P12977634111307632471.Spec : Prop :=
  ∀ n, (P12977634111307632471.a n : ℤ) = A119432 (n + 1)

end A119432

/-! ## A119432.P7301033692447199837

`eq[A225530(n)%A008619(n), A225530(n)]`
-/

namespace A119432.P7301033692447199837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 n) (A008619 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119432.P7301033692447199837

namespace A119432

/-- `eq[A225530(n)%A008619(n), A225530(n)]` -/
def P7301033692447199837.Spec : Prop :=
  ∀ n, (P7301033692447199837.a n : ℤ) = A119432 (n + 1)

end A119432

/-!
# A119434: 

The programs for A119434, there is no canonical definition to state claims against.
-/

/-! ## A119434.P3506756906396854438

`2*lt[A000010(2*n+1), n]+1`
-/

namespace A119434.P3506756906396854438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119434.P3506756906396854438

/-! ## A119434.P1996319197362856190

`filter[A068355(n+1), A323170(#)]`
-/

namespace A119434.P1996319197362856190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A119434.P1996319197362856190

/-! ## A119434.P10974898070182632358

`filter[A079814(n+1), A323170(#)]`
-/

namespace A119434.P10974898070182632358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A119434.P10974898070182632358

/-! ## A119434.P5831099872884971107

`filter[A084821(n+1), A323170(#)]`
-/

namespace A119434.P5831099872884971107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A119434.P5831099872884971107

/-! ## A119434.P2425391053252930247

`filter[A334117(n+1), A323170(#)]`
-/

namespace A119434.P2425391053252930247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A119434.P2425391053252930247

/-! ## A119434.P17020201806410917045

`filter[A216918(n+1), A323170(#)]`
-/

namespace A119434.P17020201806410917045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A119434.P17020201806410917045

/-! ## A119434.P8944581970327789415

`∩[2*n+1, A054741(n+1)]`
-/

namespace A119434.P8944581970327789415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119434.P8944581970327789415

/-! ## A119434.P1216735879805586069

`∩[A054741(n+1), A004273(n)]`
-/

namespace A119434.P1216735879805586069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119434.P1216735879805586069

/-! ## A119434.P11626218343643278685

`filter[A067562(n+1), A323170(#)]`
-/

namespace A119434.P11626218343643278685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A119434.P11626218343643278685

/-! ## A119434.P4753826325435090324

`A026741(∪[A036798(n+1), A161962(n+1)])`
-/

namespace A119434.P4753826325435090324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A119434.P4753826325435090324

/-! ## A119434.P2537247340465239104

`A029579(∪[A036798(n+1), A161962(n+1)])`
-/

namespace A119434.P2537247340465239104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A119434.P2537247340465239104

/-! ## A119434.P10498337184954441893

`A109613(∪[A036798(n+1), A161962(n+1)])`
-/

namespace A119434.P10498337184954441893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A119434.P10498337184954441893

/-! ## A119434.P13153704500080552928

`A257088(∪[A036798(n+1), A161962(n+1)])`
-/

namespace A119434.P13153704500080552928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A119434.P13153704500080552928

/-!
# A119435: a(n) = (binary reversal of n)-th integer among those positive integers not occurring earlier in the sequence.

The programs for A119435, there is no canonical definition to state claims against.
-/

/-! ## A119435.P7369150509739399057

`or(A318578(n+1), A318584(A028303(n)))`
-/

namespace A119435.P7369150509739399057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318578 (n + 1)) (A318584 (A028303 n).toNat)

end

end A119435.P7369150509739399057

/-! ## A119435.P16160223932313831555

`or(A318578(n+1), A318584(A126120(n)))`
-/

namespace A119435.P16160223932313831555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318578 (n + 1)) (A318584 (A126120 n).toNat)

end

end A119435.P16160223932313831555

/-!
# A119436: Inverse permutation to sequence A119435.

The programs for A119436, there is no canonical definition to state claims against.
-/

/-! ## A119436.P16604787025203242709

`A346702(A114398(n+1))`
-/

namespace A119436.P16604787025203242709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A114398 (n + 1)).toNat

end

end A119436.P16604787025203242709

/-!
# A119437: Table T(n,k) = number of lines through exactly k points of an n X n grid of points.

The programs for A119437, there is no canonical definition to state claims against.
-/

/-! ## A119437.P6321008184025798272

`A119439(lt[2, A059268(n)])`
-/

namespace A119437.P6321008184025798272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119437.P6321008184025798272

/-! ## A119437.P8173996880861277182

`A119439(lt[1, A144042(n+1)])`
-/

namespace A119437.P8173996880861277182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119437.P8173996880861277182

/-! ## A119437.P17272439974293529614

`A119439(lt[1, A202979(n+1)]+1)`
-/

namespace A119437.P17272439974293529614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A119437.P17272439974293529614

/-! ## A119437.P12372060956283428769

`A119439(lt[A223933(n+1), A224374(n+1)])`
-/

namespace A119437.P12372060956283428769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119439 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119437.P12372060956283428769

/-! ## A119437.P4702415077617101021

`A119439(lt[A224057(n+1), A224374(n+1)])`
-/

namespace A119437.P4702415077617101021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119439 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119437.P4702415077617101021

/-!
# A119438: Number of sets of points determined by the intersection of a line with an n X n grid of points.

The programs for A119438, there is no canonical definition to state claims against.
-/

/-! ## A119438.P3193965359199328886

`A018808(n)+n²+1`
-/

namespace A119438.P3193965359199328886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + (n ^ 2 : ℤ) + 1

end

end A119438.P3193965359199328886

/-! ## A119438.P17630129456738706005

`A018808(n)+A002522(n)`
-/

namespace A119438.P17630129456738706005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + A002522 n

end

end A119438.P17630129456738706005

/-! ## A119438.P3349949993561083823

`A018808(n)+sqrt(A082044(n))`
-/

namespace A119438.P3349949993561083823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018808 n : ℝ) + Real.sqrt (A082044 n : ℝ)

end

end A119438.P3349949993561083823

/-! ## A119438.P8871004976382800318

`A000290(n)+A018808(n)+1`
-/

namespace A119438.P8871004976382800318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A018808 n + 1)

end

end A119438.P8871004976382800318

/-! ## A119438.P10975809717075060921

`A018808(n)+A059100(n)-1`
-/

namespace A119438.P10975809717075060921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + (A059100 n - 1)

end

end A119438.P10975809717075060921

/-! ## A119438.P1874802508537605280

`A018808(n)-(n²-A058331(n))`
-/

namespace A119438.P1874802508537605280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - ((n ^ 2 : ℤ) - A058331 n)

end

end A119438.P1874802508537605280

/-! ## A119438.P5950129022730903409

`A018808(n)+A001614(A000124(n))`
-/

namespace A119438.P5950129022730903409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + A001614 (A000124 n).toNat

end

end A119438.P5950129022730903409

/-! ## A119438.P11674896720436119930

`A018808(n)+A008619(A001105(n))`
-/

namespace A119438.P11674896720436119930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + A008619 (A001105 n).toNat

end

end A119438.P11674896720436119930

/-! ## A119438.P15696948367813448912

`A018808(n)+A000463(A058331(n))`
-/

namespace A119438.P15696948367813448912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n + A000463 (A058331 n).toNat

end

end A119438.P15696948367813448912

/-!
# A119440: Triangle read by rows: T(n,k) is the number of binary sequences of length n that start with exactly k 01's (0 <= k <= floor(n/2)).

The programs for A119440, the canonical program `A119440.P10732176381343367218` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119440 has offset 0).

The definition of A119440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119440.P7691610606614623527

`Δ[A023758(comp[comp[(n+1)²]+n]+1)]`
-/

namespace A119440.P7691610606614623527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119440.P7691610606614623527

namespace A119440

/-- `Δ[A023758(comp[comp[(n+1)²]+n]+1)]` -/
def P7691610606614623527.Spec : Prop :=
  ∀ n, P7691610606614623527.a n = A119440 n

end A119440

/-! ## A119440.P10732176381343367218

`A098011(A082375(n)+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119440

/-- `A098011(A082375(n)+2)` -/
def P10732176381343367218.Spec : Prop :=
  ∀ n, P10732176381343367218.a n = A119440 n

theorem P10732176381343367218.correct : P10732176381343367218.Spec := by
  intro n
  simp only [A119440]

end A119440

/-! ## A119440.P16683963505694766150

`Δ[A089633(A028391(n)+n)]`
-/

namespace A119440.P16683963505694766150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A028391 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119440.P16683963505694766150

namespace A119440

/-- `Δ[A089633(A028391(n)+n)]` -/
def P16683963505694766150.Spec : Prop :=
  ∀ n, P16683963505694766150.a n = A119440 n

end A119440

/-! ## A119440.P13961804005950225352

`A098011(A122196(n+1)+1)`
-/

namespace A119440.P13961804005950225352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A122196 (n + 1) + 1).toNat

end

end A119440.P13961804005950225352

namespace A119440

/-- `A098011(A122196(n+1)+1)` -/
def P13961804005950225352.Spec : Prop :=
  ∀ n, P13961804005950225352.a n = A119440 n

end A119440

/-! ## A119440.P13719668442385133779

`A098011(A080513(A152204(n)))`
-/

namespace A119440.P13719668442385133779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A080513 (A152204 n).toNat).toNat

end

end A119440.P13719668442385133779

namespace A119440

/-- `A098011(A080513(A152204(n)))` -/
def P13719668442385133779.Spec : Prop :=
  ∀ n, P13719668442385133779.a n = A119440 n

end A119440

/-! ## A119440.P16339056071890743108

`Δ[A089633(A005843(n)-A000196(n))]`
-/

namespace A119440.P16339056071890743108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A005843 n - A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119440.P16339056071890743108

namespace A119440

/-- `Δ[A089633(A005843(n)-A000196(n))]` -/
def P16339056071890743108.Spec : Prop :=
  ∀ n, P16339056071890743108.a n = A119440 n

end A119440

/-! ## A119440.P16431809048939748038

`A063659(2^A082375(n))`
-/

namespace A119440.P16431809048939748038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A082375 n : ℤ))).toNat

end

end A119440.P16431809048939748038

namespace A119440

/-- `A063659(2^A082375(n))` -/
def P16431809048939748038.Spec : Prop :=
  ∀ n, P16431809048939748038.a n = A119440 n

end A119440

/-! ## A119440.P17435307835820209329

`A057353(A000051(A082375(n)))`
-/

namespace A119440.P17435307835820209329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A000051 (A082375 n).toNat).toNat

end

end A119440.P17435307835820209329

namespace A119440

/-- `A057353(A000051(A082375(n)))` -/
def P17435307835820209329.Spec : Prop :=
  ∀ n, P17435307835820209329.a n = A119440 n

end A119440

/-!
# A119441: Triangle T(n,k) read by rows: product of A000041(a_i) over all parts a_i of the k-th partition of n listed in Abramowitz and Stegun order, 1 <= k <= A000041(n).

The programs for A119441, there is no canonical definition to state claims against.
-/

/-! ## A119441.P1736119623363398453

`A299200(A185974(n+1))`
-/

namespace A119441.P1736119623363398453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A185974 (n + 1)).toNat

end

end A119441.P1736119623363398453

/-! ## A119441.P4826666316340756571

`A299200(A334438(n+1))`
-/

namespace A119441.P4826666316340756571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A334438 (n + 1)).toNat

end

end A119441.P4826666316340756571

/-! ## A119441.P13852157342086636666

`A119443(n+1)/A048996(n+1)`
-/

namespace A119441.P13852157342086636666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119443 (n + 1) : ℚ) / (A048996 (n + 1) : ℚ)

end

end A119441.P13852157342086636666

/-! ## A119441.P15549002142935679580

`A299200(2*A185974(n-log2(1/2)))`
-/

namespace A119441.P15549002142935679580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (2 * A185974 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A119441.P15549002142935679580

/-! ## A119441.P13183357905537542006

`A299200(A185974(n-log2(1/2))%A017473(n))`
-/

namespace A119441.P13183357905537542006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (Int.tmod (A185974 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A017473 n)).toNat

end

end A119441.P13183357905537542006

/-! ## A119441.P12633523460824742213

`∏{e}[A036035(n+1), A000041(#)]`
-/

namespace A119441.P12633523460824742213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A119441.P12633523460824742213

/-!
# A119442: Triangle read by rows: row n lists number of unordered partitions of n into k parts which are partition numbers (members of A000041).

The programs for A119442, there is no canonical definition to state claims against.
-/

/-! ## A119442.P414197985109918712

`A325163(A206306(n+1)+1)`
-/

namespace A119442.P414197985109918712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325163 (A206306 (n + 1) + 1).toNat

end

end A119442.P414197985109918712

/-! ## A119442.P14542254700725266582

`A061260(n+1)-A154782(A274741(n))`
-/

namespace A119442.P14542254700725266582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (n + 1) - A154782 (A274741 n).toNat

end

end A119442.P14542254700725266582

/-! ## A119442.P1729036207179332086

`or(A059841(A026530(n)), A061260(n+1))`
-/

namespace A119442.P1729036207179332086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A026530 n).toNat) (A061260 (n + 1))

end

end A119442.P1729036207179332086

/-! ## A119442.P14806260941695530444

`or(A061260(n+1), A124768(A256041(n)))`
-/

namespace A119442.P14806260941695530444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061260 (n + 1)) (A124768 (A256041 n).toNat)

end

end A119442.P14806260941695530444

/-! ## A119442.P8349352102239004524

`A000015(A061260(n+1)%A180416(n+1))`
-/

namespace A119442.P8349352102239004524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (Int.tmod (A061260 (n + 1)) (A180416 (n + 1))).toNat

end

end A119442.P8349352102239004524

/-!
# A119444: Triangle as described in A100461, except with t(1,n) = Fibonacci(n+1).

The programs for A119444, there is no canonical definition to state claims against.
-/

/-! ## A119444.P8701987530389305745

`A357299(A025635(n+1))`
-/

namespace A119444.P8701987530389305745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357299 (A025635 (n + 1)).toNat

end

end A119444.P8701987530389305745

/-! ## A119444.P2964234205896237916

`A070979(A099375(n)+2+n)`
-/

namespace A119444.P2964234205896237916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070979 (A099375 n + 2 + (n : ℤ)).toNat

end

end A119444.P2964234205896237916

/-! ## A119444.P1789463047417664592

`A083773(lt[A070979(n+1), n])`
-/

namespace A119444.P1789463047417664592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070979 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083773 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119444.P1789463047417664592

/-! ## A119444.P12933182920583913749

`A061653(A033282(n+6))+A002262(n)`
-/

namespace A119444.P12933182920583913749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A033282 (n + 6)).toNat + A002262 n

end

end A119444.P12933182920583913749

/-! ## A119444.P8759980666512340855

`A034699(A263597(n+1)+A236239(n+1))`
-/

namespace A119444.P8759980666512340855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A263597 (n + 1) + A236239 (n + 1 + 15)).toNat

end

end A119444.P8759980666512340855

/-!
# A119445: Leading diagonal of triangle A119444.

The programs for A119445, there is no canonical definition to state claims against.
-/

/-! ## A119445.P16062134901644909596

`A119444(∑[n]+1)`
-/

namespace A119445.P16062134901644909596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119444 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A119445.P16062134901644909596

/-! ## A119445.P11601345773766503996

`or(1, A119444(A000124(n)))`
-/

namespace A119445.P11601345773766503996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119444 (A000124 n).toNat)

end

end A119445.P11601345773766503996

/-! ## A119445.P14716304162928620760

`A119444(A000124(n))%A000051(n)`
-/

namespace A119445.P14716304162928620760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119444 (A000124 n).toNat) (A000051 n)

end

end A119445.P14716304162928620760

/-! ## A119445.P6754109758717056193

`gcd(A000038(n), A119444(A000124(n)))`
-/

namespace A119445.P6754109758717056193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A119444 (A000124 n).toNat)

end

end A119445.P6754109758717056193

/-! ## A119445.P6375424614762241098

`and(A119444(A000124(n)), A126646(n))`
-/

namespace A119445.P6375424614762241098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119444 (A000124 n).toNat) (A126646 n)

end

end A119445.P6375424614762241098

/-! ## A119445.P578098188507203949

`A007318(∑[n])*A119444(A000124(n))`
-/

namespace A119445.P578098188507203949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A119444 (A000124 n).toNat

end

end A119445.P578098188507203949

/-! ## A119445.P13105254329754651656

`A119444(A000124(n))+char[A061783(n+1)]`
-/

namespace A119445.P13105254329754651656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119444 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119445.P13105254329754651656

/-! ## A119445.P14057968861467495102

`A119444(A000124(n))+char[A109379(n+1)]`
-/

namespace A119445.P14057968861467495102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119444 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119445.P14057968861467495102

/-! ## A119445.P12737967189972250252

`A119444(A000124(n))+char[A000172(n+4)]`
-/

namespace A119445.P12737967189972250252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119444 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119445.P12737967189972250252

/-!
# A119446: Triangle as described in A100461, except with t(1,n) = prime(n).

The programs for A119446, there is no canonical definition to state claims against.
-/

/-! ## A119446.P14218341785894508768

`A060576(A264704(n+1))+A037126(n+1)`
-/

namespace A119446.P14218341785894508768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A264704 (n + 1)).toNat + A037126 (n + 1)

end

end A119446.P14218341785894508768

/-! ## A119446.P12691012570235707004

`A060862(A269201(n+1)/2)+A037126(n+1)`
-/

namespace A119446.P12691012570235707004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (SequenceMachineLib.roundAway ((A269201 (n + 1) : ℚ) / 2)).toNat + A037126 (n + 1)

end

end A119446.P12691012570235707004

/-! ## A119446.P5832680572039125839

`A060576(A256040(n))+A037126(n+1)`
-/

namespace A119446.P5832680572039125839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A256040 n).toNat + A037126 (n + 1)

end

end A119446.P5832680572039125839

/-! ## A119446.P14604778585074131341

`A060862(A269201(n+1))+A037126(n+1)`
-/

namespace A119446.P14604778585074131341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A269201 (n + 1)).toNat + A037126 (n + 1)

end

end A119446.P14604778585074131341

/-! ## A119446.P15554372401708931665

`A066247(A038315(n))+A037126(n+1)`
-/

namespace A119446.P15554372401708931665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A038315 n).toNat + A037126 (n + 1)

end

end A119446.P15554372401708931665

/-!
# A119447: Leading diagonal of triangle A119446.

The programs for A119447, there is no canonical definition to state claims against.
-/

/-! ## A119447.P556701322303067664

`A119446(∑[n]+1)`
-/

namespace A119447.P556701322303067664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119446 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A119447.P556701322303067664

/-! ## A119447.P4622074762345357939

`A119446(A000124(n))%A000465(n)`
-/

namespace A119447.P4622074762345357939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119446 (A000124 n).toNat) (A000465 n)

end

end A119447.P4622074762345357939

/-! ## A119447.P14889183171386302230

`A010690(2*n)*A119446(A000124(n))`
-/

namespace A119447.P14889183171386302230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (2 * n) * A119446 (A000124 n).toNat

end

end A119447.P14889183171386302230

/-! ## A119447.P14451423275801842236

`or(A060862(n+1), A119446(A000124(n)))`
-/

namespace A119447.P14451423275801842236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060862 (n + 1)) (A119446 (A000124 n).toNat)

end

end A119447.P14451423275801842236

/-! ## A119447.P10406144509496959205

`A119446(A000124(n))+A000038(2*n+3)`
-/

namespace A119447.P10406144509496959205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119446 (A000124 n).toNat + A000038 (2 * n + 3)

end

end A119447.P10406144509496959205

/-! ## A119447.P9761025505466728155

`gcd(2, A228071(n))+A119446(A000124(n))-2`
-/

namespace A119447.P9761025505466728155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A228071 n) : ℤ) + (A119446 (A000124 n).toNat - 2)

end

end A119447.P9761025505466728155

/-! ## A119447.P5780418010713260724

`A119446(A000124(n))+C(2*n, A016789(n))`
-/

namespace A119447.P5780418010713260724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119446 (A000124 n).toNat + (Nat.choose (2 * n) (A016789 n).toNat : ℤ)

end

end A119447.P5780418010713260724

/-!
# A119449: Primes with even digit sum.

The programs for A119449, the canonical program `A119449.P14032157784951920134` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119449 has offset 1).

The definition of A119449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119449.P14395049877531618735

`A000040(A200259(n+1))`
-/

namespace A119449.P14395049877531618735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A200259 (n + 1)).toNat

end

end A119449.P14395049877531618735

namespace A119449

/-- `A000040(A200259(n+1))` -/
def P14395049877531618735.Spec : Prop :=
  ∀ n, P14395049877531618735.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P7751377648200468632

`A000040(comp[A200260(n+1)-1]+1)`
-/

namespace A119449.P7751377648200468632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200260 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A119449.P7751377648200468632

namespace A119449

/-- `A000040(comp[A200260(n+1)-1]+1)` -/
def P7751377648200468632.Spec : Prop :=
  ∀ n, P7751377648200468632.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P14745197404959039897

`A006093(comp[A200260(n+1)-1]+1)+1`
-/

namespace A119449.P14745197404959039897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200260 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A119449.P14745197404959039897

namespace A119449

/-- `A006093(comp[A200260(n+1)-1]+1)+1` -/
def P14745197404959039897.Spec : Prop :=
  ∀ n, P14745197404959039897.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P14032157784951920134

`p?[A000040(n+1)+A007605(n+1)%2]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119449

/-- `p?[A000040(n+1)+A007605(n+1)%2]` -/
def P14032157784951920134.Spec : Prop :=
  ∀ n, P14032157784951920134.a n = A119449 (n + 1)

theorem P14032157784951920134.correct : P14032157784951920134.Spec := by
  intro n
  simp only [A119449, Nat.add_sub_cancel]

end A119449

/-! ## A119449.P9104323470197971355

`record[A000290(A007605(n+1)+1)%2*A006093(n+1)+1]`
-/

namespace A119449.P9104323470197971355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A007605 (n + 1) + 1).toNat) 2 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119449.P9104323470197971355

namespace A119449

/-- `record[A000290(A007605(n+1)+1)%2*A006093(n+1)+1]` -/
def P9104323470197971355.Spec : Prop :=
  ∀ n, P9104323470197971355.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P7821390028417552260

`p?[A054683(n+1)]`
-/

namespace A119449.P7821390028417552260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P7821390028417552260

namespace A119449

/-- `p?[A054683(n+1)]` -/
def P7821390028417552260.Spec : Prop :=
  ∀ n, P7821390028417552260.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P4232570126456153569

`p?[A054684(n+1)+1]`
-/

namespace A119449.P4232570126456153569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P4232570126456153569

namespace A119449

/-- `p?[A054684(n+1)+1]` -/
def P4232570126456153569.Spec : Prop :=
  ∀ n, P4232570126456153569.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P12824845934250094588

`record[A020639(A054683(n+2))]`
-/

namespace A119449.P12824845934250094588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119449.P12824845934250094588

namespace A119449

/-- `record[A020639(A054683(n+2))]` -/
def P12824845934250094588.Spec : Prop :=
  ∀ n, P12824845934250094588.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P13772760228199677057

`filter[A054683(n+2), A010051(#)]`
-/

namespace A119449.P13772760228199677057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A119449.P13772760228199677057

namespace A119449

/-- `filter[A054683(n+2), A010051(#)]` -/
def P13772760228199677057.Spec : Prop :=
  ∀ n, P13772760228199677057.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P8471007651606545561

`∩[A000040(n+1), A054683(n+1)]`
-/

namespace A119449.P8471007651606545561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119449.P8471007651606545561

namespace A119449

/-- `∩[A000040(n+1), A054683(n+1)]` -/
def P8471007651606545561.Spec : Prop :=
  ∀ n, (P8471007651606545561.a n : ℤ) = A119449 (n + 1)

end A119449

/-! ## A119449.P2312431033630271350

`∩[A008578(n+1), A054683(n+1)]`
-/

namespace A119449.P2312431033630271350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119449.P2312431033630271350

namespace A119449

/-- `∩[A008578(n+1), A054683(n+1)]` -/
def P2312431033630271350.Spec : Prop :=
  ∀ n, (P2312431033630271350.a n : ℤ) = A119449 (n + 1)

end A119449

/-! ## A119449.P14275720990955397172

`∩[A045319(n+1), A054683(n+1)]`
-/

namespace A119449.P14275720990955397172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119449.P14275720990955397172

namespace A119449

/-- `∩[A045319(n+1), A054683(n+1)]` -/
def P14275720990955397172.Spec : Prop :=
  ∀ n, (P14275720990955397172.a n : ℤ) = A119449 (n + 1)

end A119449

/-! ## A119449.P7940009853915380165

`∩[A045344(n+1), A054683(n+1)]`
-/

namespace A119449.P7940009853915380165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119449.P7940009853915380165

namespace A119449

/-- `∩[A045344(n+1), A054683(n+1)]` -/
def P7940009853915380165.Spec : Prop :=
  ∀ n, (P7940009853915380165.a n : ℤ) = A119449 (n + 1)

end A119449

/-! ## A119449.P14037185082522833994

`∩[A054683(n+1), A372059(n+1)]`
-/

namespace A119449.P14037185082522833994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119449.P14037185082522833994

namespace A119449

/-- `∩[A054683(n+1), A372059(n+1)]` -/
def P14037185082522833994.Spec : Prop :=
  ∀ n, (P14037185082522833994.a n : ℤ) = A119449 (n + 1)

end A119449

/-! ## A119449.P4802996438933673107

`∩[A000040(n+1), A054684(n+1)+1]`
-/

namespace A119449.P4802996438933673107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119449.P4802996438933673107

namespace A119449

/-- `∩[A000040(n+1), A054684(n+1)+1]` -/
def P4802996438933673107.Spec : Prop :=
  ∀ n, (P4802996438933673107.a n : ℤ) = A119449 (n + 1)

end A119449

/-! ## A119449.P11382633978296580874

`p?[(n+1)*A179081(n)]`
-/

namespace A119449.P11382633978296580874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A179081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P11382633978296580874

namespace A119449

/-- `p?[(n+1)*A179081(n)]` -/
def P11382633978296580874.Spec : Prop :=
  ∀ n, P11382633978296580874.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P2976037999079444091

`p?[n*A091090(A007953(n))]`
-/

namespace A119449.P2976037999079444091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091090 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P2976037999079444091

namespace A119449

/-- `p?[n*A091090(A007953(n))]` -/
def P2976037999079444091.Spec : Prop :=
  ∀ n, P2976037999079444091.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P10757655935941194840

`filter[A054683(n+2), A080339(#)]`
-/

namespace A119449.P10757655935941194840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A119449.P10757655935941194840

namespace A119449

/-- `filter[A054683(n+2), A080339(#)]` -/
def P10757655935941194840.Spec : Prop :=
  ∀ n, P10757655935941194840.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P9700687375858283352

`p?[n*A094267(A225693(n)²)]`
-/

namespace A119449.P9700687375858283352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A094267 (A225693 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P9700687375858283352

namespace A119449

/-- `p?[n*A094267(A225693(n)²)]` -/
def P9700687375858283352.Spec : Prop :=
  ∀ n, P9700687375858283352.a n = A119449 (n + 1)

end A119449

/-! ## A119449.P8933867020855723205

`record[A014963(A054684(n+1)+1)]`
-/

namespace A119449.P8933867020855723205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054684 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119449.P8933867020855723205

namespace A119449

/-- `record[A014963(A054684(n+1)+1)]` -/
def P8933867020855723205.Spec : Prop :=
  ∀ n, P8933867020855723205.a n = A119449 (n + 1)

end A119449

/-!
# A119450: Primes with odd digit sum.

The programs for A119450, the canonical program `A119450.P10853588733666764449` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119450 has offset 1).

The definition of A119450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119450.P10853588733666764449

`A000040(A200260(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A119450

/-- `A000040(A200260(n+1))` -/
def P10853588733666764449.Spec : Prop :=
  ∀ n, P10853588733666764449.a n = A119450 (n + 1)

theorem P10853588733666764449.correct : P10853588733666764449.Spec := by
  intro n
  simp only [A119450, Nat.add_sub_cancel]

end A119450

/-! ## A119450.P15395809367171374951

`A065091(eq[1, A031216(n+1)%2])`
-/

namespace A119450.P15395809367171374951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031216 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119450.P15395809367171374951

namespace A119450

/-- `A065091(eq[1, A031216(n+1)%2])` -/
def P15395809367171374951.Spec : Prop :=
  ∀ n, P15395809367171374951.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P3515145237278859788

`A065091(eq[1, A041000(n+1)%2])`
-/

namespace A119450.P3515145237278859788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041000 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119450.P3515145237278859788

namespace A119450

/-- `A065091(eq[1, A041000(n+1)%2])` -/
def P3515145237278859788.Spec : Prop :=
  ∀ n, P3515145237278859788.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P1201503489056625598

`A065091(eq[1, A104638(n+1)%2])`
-/

namespace A119450.P1201503489056625598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104638 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119450.P1201503489056625598

namespace A119450

/-- `A065091(eq[1, A104638(n+1)%2])` -/
def P1201503489056625598.Spec : Prop :=
  ∀ n, P1201503489056625598.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P2342383784529746666

`A006093(comp[A200259(n+1)-1]+1)+1`
-/

namespace A119450.P2342383784529746666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200259 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A119450.P2342383784529746666

namespace A119450

/-- `A006093(comp[A200259(n+1)-1]+1)+1` -/
def P2342383784529746666.Spec : Prop :=
  ∀ n, P2342383784529746666.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P129200503727746904

`p?[A084424(n+1)]`
-/

namespace A119450.P129200503727746904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119450.P129200503727746904

namespace A119450

/-- `p?[A084424(n+1)]` -/
def P129200503727746904.Spec : Prop :=
  ∀ n, P129200503727746904.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P11694591184831647018

`filter[A084424(n+1), A010051(#)]`
-/

namespace A119450.P11694591184831647018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A119450.P11694591184831647018

namespace A119450

/-- `filter[A084424(n+1), A010051(#)]` -/
def P11694591184831647018.Spec : Prop :=
  ∀ n, P11694591184831647018.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P3694653735370768688

`∩[A084424(n+1), A222030(n)]`
-/

namespace A119450.P3694653735370768688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P3694653735370768688

namespace A119450

/-- `∩[A084424(n+1), A222030(n)]` -/
def P3694653735370768688.Spec : Prop :=
  ∀ n, (P3694653735370768688.a n : ℤ) = A119450 (n + 1)

end A119450

/-! ## A119450.P14983750609932145446

`∩[A000040(n+1), A084424(n+1)]`
-/

namespace A119450.P14983750609932145446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P14983750609932145446

namespace A119450

/-- `∩[A000040(n+1), A084424(n+1)]` -/
def P14983750609932145446.Spec : Prop :=
  ∀ n, (P14983750609932145446.a n : ℤ) = A119450 (n + 1)

end A119450

/-! ## A119450.P8968524893286085289

`∩[A000430(n+1), A084424(n+1)]`
-/

namespace A119450.P8968524893286085289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P8968524893286085289

namespace A119450

/-- `∩[A000430(n+1), A084424(n+1)]` -/
def P8968524893286085289.Spec : Prop :=
  ∀ n, (P8968524893286085289.a n : ℤ) = A119450 (n + 1)

end A119450

/-! ## A119450.P3594104506141140860

`∩[A006005(n+1), A084424(n+1)]`
-/

namespace A119450.P3594104506141140860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P3594104506141140860

namespace A119450

/-- `∩[A006005(n+1), A084424(n+1)]` -/
def P3594104506141140860.Spec : Prop :=
  ∀ n, (P3594104506141140860.a n : ℤ) = A119450 (n + 1)

end A119450

/-! ## A119450.P6672929071601642740

`∩[A008578(n+1), A084424(n+1)]`
-/

namespace A119450.P6672929071601642740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P6672929071601642740

namespace A119450

/-- `∩[A008578(n+1), A084424(n+1)]` -/
def P6672929071601642740.Spec : Prop :=
  ∀ n, (P6672929071601642740.a n : ℤ) = A119450 (n + 1)

end A119450

/-! ## A119450.P14457758038343244008

`∩[A009087(n+1), A084424(n+1)]`
-/

namespace A119450.P14457758038343244008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P14457758038343244008

namespace A119450

/-- `∩[A009087(n+1), A084424(n+1)]` -/
def P14457758038343244008.Spec : Prop :=
  ∀ n, (P14457758038343244008.a n : ℤ) = A119450 (n + 1)

end A119450

/-! ## A119450.P1608450059529321829

`filter[A084424(n+1), A101040(#)]`
-/

namespace A119450.P1608450059529321829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A119450.P1608450059529321829

namespace A119450

/-- `filter[A084424(n+1), A101040(#)]` -/
def P1608450059529321829.Spec : Prop :=
  ∀ n, P1608450059529321829.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P11618126637611929457

`filter[A084424(n+1), A302777(#)]`
-/

namespace A119450.P11618126637611929457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A119450.P11618126637611929457

namespace A119450

/-- `filter[A084424(n+1), A302777(#)]` -/
def P11618126637611929457.Spec : Prop :=
  ∀ n, P11618126637611929457.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P14351905460088501340

`filter[A084424(n+1), A323152(#)]`
-/

namespace A119450.P14351905460088501340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A119450.P14351905460088501340

namespace A119450

/-- `filter[A084424(n+1), A323152(#)]` -/
def P14351905460088501340.Spec : Prop :=
  ∀ n, P14351905460088501340.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P6358381827424885310

`filter[A084424(n+1), A323153(#)]`
-/

namespace A119450.P6358381827424885310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A119450.P6358381827424885310

namespace A119450

/-- `filter[A084424(n+1), A323153(#)]` -/
def P6358381827424885310.Spec : Prop :=
  ∀ n, P6358381827424885310.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P12253100880383150140

`filter[A084424(n+1), A340371(#)]`
-/

namespace A119450.P12253100880383150140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A119450.P12253100880383150140

namespace A119450

/-- `filter[A084424(n+1), A340371(#)]` -/
def P12253100880383150140.Spec : Prop :=
  ∀ n, P12253100880383150140.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P13019377055036960646

`filter[A084424(n+1), A353471(#)]`
-/

namespace A119450.P13019377055036960646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A119450.P13019377055036960646

namespace A119450

/-- `filter[A084424(n+1), A353471(#)]` -/
def P13019377055036960646.Spec : Prop :=
  ∀ n, P13019377055036960646.a n = A119450 (n + 1)

end A119450

/-! ## A119450.P16552246234323045459

`∩[A001751(n+1), A084424(n+1)]`
-/

namespace A119450.P16552246234323045459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119450.P16552246234323045459

namespace A119450

/-- `∩[A001751(n+1), A084424(n+1)]` -/
def P16552246234323045459.Spec : Prop :=
  ∀ n, (P16552246234323045459.a n : ℤ) = A119450 (n + 1)

end A119450

/-!
# A119452: Records in A119451.

The programs for A119452, there is no canonical definition to state claims against.
-/

/-! ## A119452.P925341000347695130

`record[A242869(2*n)+A119451(n+1)]`
-/

namespace A119452.P925341000347695130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 (2 * n) + A119451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119452.P925341000347695130

/-!
# A119453: Where records occur in A119451.

The programs for A119453, there is no canonical definition to state claims against.
-/

/-! ## A119453.P15335998102195359107

`A139058(a(n-2))+1` with `a(0)=1, a(1)=7`
-/

namespace A119453.P15335998102195359107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A139058 (a (n - 2)).toNat + 1

end

end A119453.P15335998102195359107

/-!
# A119454: Start with 34 and repeatedly reverse the digits and add 16 to get the next term.

The programs for A119454, there is no canonical definition to state claims against.
-/

/-! ## A119454.P12827101983484662251

`A004086(a(n-1))+16` with `a(0)=34`
-/

namespace A119454.P12827101983484662251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  A004086 (a (n - 1)).toNat + 16

end

end A119454.P12827101983484662251

/-!
# A119456: Numbers m such that the Bernoulli number B_{10*m} has denominator 66.

The programs for A119456, there is no canonical definition to state claims against.
-/

/-! ## A119456.P13838377056654031534

`A051229(n+1)/5`
-/

namespace A119456.P13838377056654031534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051229 (n + 1) : ℚ) / 5

end

end A119456.P13838377056654031534

/-! ## A119456.P3924202387162031962

`A051230(n+1)/10`
-/

namespace A119456.P3924202387162031962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051230 (n + 1) : ℚ) / 10

end

end A119456.P3924202387162031962

/-! ## A119456.P14637550377679752838

`A004086(A004086(A051230(n+1))%A051230(n+1))`
-/

namespace A119456.P14637550377679752838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A004086 (A051230 (n + 1)).toNat) (A051230 (n + 1))).toNat

end

end A119456.P14637550377679752838

/-! ## A119456.P11858441602436490194

`A249122(A051229(n+1)+3)`
-/

namespace A119456.P11858441602436490194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A051229 (n + 1) + 3).toNat

end

end A119456.P11858441602436490194

/-! ## A119456.P5624200207496337144

`A117358(2*A051230(n+1))`
-/

namespace A119456.P5624200207496337144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A051230 (n + 1)).toNat

end

end A119456.P5624200207496337144

/-! ## A119456.P3924819927184183743

`record[A346468(10*n+11)]`
-/

namespace A119456.P3924819927184183743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119456.P3924819927184183743

/-! ## A119456.P3400606054629100745

`A002266(A051229(n+1))`
-/

namespace A119456.P3400606054629100745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A051229 (n + 1)).toNat

end

end A119456.P3400606054629100745

/-! ## A119456.P8712242313486687258

`A004151(A051230(n+1))`
-/

namespace A119456.P8712242313486687258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A051230 (n + 1)).toNat

end

end A119456.P8712242313486687258

/-!
# A119457: Triangle read by rows: T(n, 1) = n, T(n, 2) = 2*(n-1) for n>1 and T(n, k) = T(n-1, k-1) + T(n-2, k-2) for 2 < k <= n.

The programs for A119457, the canonical program `A119457.P468492089180334650` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119457 has offset 1).

The definition of A119457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119457.P13654311392322855846

`(C(comp[∑[n]]-n, 2)-n)*A193588(n)`
-/

namespace A119457.P13654311392322855846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A193588 n

end

end A119457.P13654311392322855846

namespace A119457

/-- `(C(comp[∑[n]]-n, 2)-n)*A193588(n)` -/
def P13654311392322855846.Spec : Prop :=
  ∀ n, P13654311392322855846.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P1313772929919763592

`A000045(col(n)+2)*(row(n)-col(n)+1)`
-/

namespace A119457.P1313772929919763592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol n + 2) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A119457.P1313772929919763592

namespace A119457

/-- `A000045(col(n)+2)*(row(n)-col(n)+1)` -/
def P1313772929919763592.Spec : Prop :=
  ∀ n, P1313772929919763592.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P468492089180334650

`A292030(n)+A117501(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119457

/-- `A292030(n)+A117501(n+1)` -/
def P468492089180334650.Spec : Prop :=
  ∀ n, P468492089180334650.a n = A119457 (n + 1)

theorem P468492089180334650.correct : P468492089180334650.Spec := by
  intro n
  simp only [A119457, Nat.add_sub_cancel]

end A119457

/-! ## A119457.P1597216609533456479

`A210874(n+1)-A141169(n)`
-/

namespace A119457.P1597216609533456479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (n + 1) - A141169 n

end

end A119457.P1597216609533456479

namespace A119457

/-- `A210874(n+1)-A141169(n)` -/
def P1597216609533456479.Spec : Prop :=
  ∀ n, P1597216609533456479.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P8286052933414189792

`A004736(n+1)*A193588(n)`
-/

namespace A119457.P8286052933414189792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A193588 n

end

end A119457.P8286052933414189792

namespace A119457

/-- `A004736(n+1)*A193588(n)` -/
def P8286052933414189792.Spec : Prop :=
  ∀ n, P8286052933414189792.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P9343357189431789662

`(A025581(n)+1)*A193588(n)`
-/

namespace A119457.P9343357189431789662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A193588 n

end

end A119457.P9343357189431789662

namespace A119457

/-- `(A025581(n)+1)*A193588(n)` -/
def P9343357189431789662.Spec : Prop :=
  ∀ n, P9343357189431789662.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P819503213534636219

`A234357(n+1)/A009999(n)`
-/

namespace A119457.P819503213534636219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234357 (n + 1) : ℚ) / (A009999 n : ℚ)

end

end A119457.P819503213534636219

namespace A119457

/-- `A234357(n+1)/A009999(n)` -/
def P819503213534636219.Spec : Prop :=
  ∀ n, P819503213534636219.a n = (A119457 (n + 1) : ℚ)

end A119457

/-! ## A119457.P5786083532332460191

`sqrt(A055461(n+1))*A193588(n)`
-/

namespace A119457.P5786083532332460191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A193588 n : ℝ)

end

end A119457.P5786083532332460191

namespace A119457

/-- `sqrt(A055461(n+1))*A193588(n)` -/
def P5786083532332460191.Spec : Prop :=
  ∀ n, P5786083532332460191.a n = (A119457 (n + 1) : ℝ)

end A119457

/-! ## A119457.P11591902568874000271

`log2(A090988(n+1))*A193588(n)`
-/

namespace A119457.P11591902568874000271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) * (A193588 n : ℝ)

end

end A119457.P11591902568874000271

namespace A119457

/-- `log2(A090988(n+1))*A193588(n)` -/
def P11591902568874000271.Spec : Prop :=
  ∀ n, P11591902568874000271.a n = (A119457 (n + 1) : ℝ)

end A119457

/-! ## A119457.P5283185900069974762

`(C(comp[∑[n]]-n, 2)-n)*A000045(A131818(n+2))`
-/

namespace A119457.P5283185900069974762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A000045 (A131818 (n + 2)).toNat

end

end A119457.P5283185900069974762

namespace A119457

/-- `(C(comp[∑[n]]-n, 2)-n)*A000045(A131818(n+2))` -/
def P5283185900069974762.Spec : Prop :=
  ∀ n, P5283185900069974762.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P9891697639892495719

`A292030(A014132(n+1))+A141169(n)`
-/

namespace A119457.P9891697639892495719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (A014132 (n + 1)).toNat + A141169 n

end

end A119457.P9891697639892495719

namespace A119457

/-- `A292030(A014132(n+1))+A141169(n)` -/
def P9891697639892495719.Spec : Prop :=
  ∀ n, P9891697639892495719.a n = A119457 (n + 1)

end A119457

/-! ## A119457.P17070936129911997489

`A000005(A130321(n))*A193588(n)`
-/

namespace A119457.P17070936129911997489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A193588 n

end

end A119457.P17070936129911997489

namespace A119457

/-- `A000005(A130321(n))*A193588(n)` -/
def P17070936129911997489.Spec : Prop :=
  ∀ n, P17070936129911997489.a n = A119457 (n + 1)

end A119457

/-!
# A119458: Triangle read by rows: T(n,k) is the number of (marked) circular binary words of length n having k occurrences of 00 (0 <= k <= n).

The programs for A119458, the canonical program `A119458.P1156934507016880338` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119458 has offset 0).

The definition of A119458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119458.P1156934507016880338

`T(n-1,k)+T(n-2,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119458

/-- `T(n-1,k)+T(n-2,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P1156934507016880338.Spec : Prop :=
  ∀ n, P1156934507016880338.a n = A119458 n

theorem P1156934507016880338.correct : P1156934507016880338.Spec := by
  intro n
  simp only [A119458]

end A119458

/-! ## A119458.P13040566007225188083

`A100224(A061579(n))+char[∑[n+1]]`
-/

namespace A119458.P13040566007225188083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100224 (A061579 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A119458.P13040566007225188083

namespace A119458

/-- `A100224(A061579(n))+char[∑[n+1]]` -/
def P13040566007225188083.Spec : Prop :=
  ∀ n, P13040566007225188083.a n = A119458 n

end A119458

/-! ## A119458.P15278435719344686562

`A100224(A038722(n+1)-1)+char[∑[n+1]]`
-/

namespace A119458.P15278435719344686562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100224 (A038722 (n + 1) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A119458.P15278435719344686562

namespace A119458

/-- `A100224(A038722(n+1)-1)+char[∑[n+1]]` -/
def P15278435719344686562.Spec : Prop :=
  ∀ n, P15278435719344686562.a n = A119458 n

end A119458

/-! ## A119458.P13301040363817407933

`A325282(A091613(n+1)^A043562(n))`
-/

namespace A119458.P13301040363817407933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 (SequenceMachineLib.roundAway ((A091613 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A119458.P13301040363817407933

namespace A119458

/-- `A325282(A091613(n+1)^A043562(n))` -/
def P13301040363817407933.Spec : Prop :=
  ∀ n, P13301040363817407933.a n = A119458 n

end A119458

/-! ## A119458.P11988747881219425039

`A325282(A106356(n+1)^A043562(n))`
-/

namespace A119458.P11988747881219425039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 (SequenceMachineLib.roundAway ((A106356 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A119458.P11988747881219425039

namespace A119458

/-- `A325282(A106356(n+1)^A043562(n))` -/
def P11988747881219425039.Spec : Prop :=
  ∀ n, P11988747881219425039.a n = A119458 n

end A119458

/-!
# A119461: Zero-free numbers with digit sum equal to 7.

The programs for A119461, there is no canonical definition to state claims against.
-/

/-! ## A119461.P4243970040937346884

`A069800(n+64)`
-/

namespace A119461.P4243970040937346884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 64)

end

end A119461.P4243970040937346884

/-! ## A119461.P16727839951433556780

`∩[A052221(n+1), A214677(n+1)]`
-/

namespace A119461.P16727839951433556780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119461.P16727839951433556780

/-! ## A119461.P16776156558439886850

`∩[A052221(n+1), A214678(n+1)]`
-/

namespace A119461.P16776156558439886850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119461.P16776156558439886850

/-! ## A119461.P9057710598292658158

`∩[A039119(n+1), A052221(n+1)]`
-/

namespace A119461.P9057710598292658158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119461.P9057710598292658158

/-! ## A119461.P878074959327814821

`∩[A052221(n+1), A052382(n+1)]`
-/

namespace A119461.P878074959327814821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119461.P878074959327814821

/-!
# A119462: Triangle read by rows: T(n,k) is the number of circular binary words of length n having k occurrences of 01 (0 <= k <= floor(n/2)).

The programs for A119462, the canonical program `A119462.P8715434688808793854` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119462 has offset 0).

The definition of A119462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119462.P8715434688808793854

`(A057427(n)+1)*A034839(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119462

/-- `(A057427(n)+1)*A034839(n)` -/
def P8715434688808793854.Spec : Prop :=
  ∀ n, P8715434688808793854.a n = A119462 n

theorem P8715434688808793854.correct : P8715434688808793854.Spec := by
  intro n
  simp only [A119462]

end A119462

/-! ## A119462.P17022338375540618559

`(2-A000007(n))*A034839(n)`
-/

namespace A119462.P17022338375540618559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A034839 n

end

end A119462.P17022338375540618559

namespace A119462

/-- `(2-A000007(n))*A034839(n)` -/
def P17022338375540618559.Spec : Prop :=
  ∀ n, P17022338375540618559.a n = A119462 n

theorem P17022338375540618559.correct : P17022338375540618559.Spec := by
  intro n
  simp only [A119462, Nat.add_sub_cancel, A119462.P17022338375540618559.a, A119462.P8715434688808793854.a, A000007, A000007.P6599383543502402472.a, A034839, A034839.P358419895487710885.a, A057427, A057427.P3058147525557661423.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A119462

/-! ## A119462.P2784381727328134558

`2*A034839(n)/A054977(n)`
-/

namespace A119462.P2784381727328134558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A034839 n : ℚ) / (A054977 n : ℚ))

end

end A119462.P2784381727328134558

namespace A119462

/-- `2*A034839(n)/A054977(n)` -/
def P2784381727328134558.Spec : Prop :=
  ∀ n, P2784381727328134558.a n = (A119462 n : ℚ)

end A119462

/-! ## A119462.P17439762458747348492

`gcd(2, A214304(n))*A034839(n)`
-/

namespace A119462.P17439762458747348492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A214304 n) : ℤ) * A034839 n

end

end A119462.P17439762458747348492

namespace A119462

/-- `gcd(2, A214304(n))*A034839(n)` -/
def P17439762458747348492.Spec : Prop :=
  ∀ n, P17439762458747348492.a n = A119462 n

end A119462

/-! ## A119462.P1898190483076702697

`A034839(n)*A034867(n²%(n+1))`
-/

namespace A119462.P1898190483076702697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n * A034867 (n ^ 2 % (n + 1))

end

end A119462.P1898190483076702697

namespace A119462

/-- `A034839(n)*A034867(n²%(n+1))` -/
def P1898190483076702697.Spec : Prop :=
  ∀ n, P1898190483076702697.a n = A119462 n

end A119462

/-! ## A119462.P13190935909417442305

`A034839(n)*A045623(A001844(n)%(n+1))`
-/

namespace A119462.P13190935909417442305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n * A045623 (Int.tmod (A001844 n) (n + 1 : ℤ)).toNat

end

end A119462.P13190935909417442305

namespace A119462

/-- `A034839(n)*A045623(A001844(n)%(n+1))` -/
def P13190935909417442305.Spec : Prop :=
  ∀ n, P13190935909417442305.a n = A119462 n

end A119462

/-! ## A119462.P2860914384758554247

`A034839(n)*A331170(A016777(n+1)%(n+1)+1)`
-/

namespace A119462.P2860914384758554247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n * A331170 (Int.tmod (A016777 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A119462.P2860914384758554247

namespace A119462

/-- `A034839(n)*A331170(A016777(n+1)%(n+1)+1)` -/
def P2860914384758554247.Spec : Prop :=
  ∀ n, P2860914384758554247.a n = A119462 n

end A119462

/-! ## A119462.P13642794610058616210

`A034839(n)*A036453(2*n+1)`
-/

namespace A119462.P13642794610058616210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n * A036453 (2 * n + 1)

end

end A119462.P13642794610058616210

namespace A119462

/-- `A034839(n)*A036453(2*n+1)` -/
def P13642794610058616210.Spec : Prop :=
  ∀ n, P13642794610058616210.a n = A119462 n

end A119462

/-! ## A119462.P15898196221937583917

`A011782(n+1)/A011782(n)*A034839(n)`
-/

namespace A119462.P15898196221937583917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A034839 n : ℚ)

end

end A119462.P15898196221937583917

namespace A119462

/-- `A011782(n+1)/A011782(n)*A034839(n)` -/
def P15898196221937583917.Spec : Prop :=
  ∀ n, P15898196221937583917.a n = (A119462 n : ℚ)

end A119462

/-! ## A119462.P10983834621165973913

`A003946(n)/A025192(n)*A034839(n)`
-/

namespace A119462.P10983834621165973913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 n : ℚ) / (A025192 n : ℚ) * (A034839 n : ℚ)

end

end A119462.P10983834621165973913

namespace A119462

/-- `A003946(n)/A025192(n)*A034839(n)` -/
def P10983834621165973913.Spec : Prop :=
  ∀ n, P10983834621165973913.a n = (A119462 n : ℚ)

end A119462

/-!
# A119463: Expansion of q^2 in powers of m/16 where q is Jacobi nome and m is the parameter.

The programs for A119463, there is no canonical definition to state claims against.
-/

/-! ## A119463.P16286658365853914371

`A004526(A228156(2*n))`
-/

namespace A119463.P16286658365853914371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A228156 (2 * n)).toNat

end

end A119463.P16286658365853914371

/-! ## A119463.P642397157742050965

`A241415(C(3*n, 2)/3)+A241414(n)`
-/

namespace A119463.P642397157742050965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 3)).toNat + A241414 n

end

end A119463.P642397157742050965

/-!
# A119464: Consider the standard game of Nim with 3 heaps and make a list of the losing positions (x,y,z) with x <= y <= z sorted by sum, ties broken by putting smallest value of x first, then y, then z; sequence gives x values.

The programs for A119464, there is no canonical definition to state claims against.
-/

/-! ## A119464.P8711281322957491021

`xor(A119465(n+1), A119466(n+1))`
-/

namespace A119464.P8711281322957491021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119465 (n + 1)) (A119466 (n + 1))

end

end A119464.P8711281322957491021

/-! ## A119464.P1063567595129821770

`A334032(A226641(n+1))%A002260(n+1)`
-/

namespace A119464.P1063567595129821770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334032 (A226641 (n + 1)).toNat) (A002260 (n + 1))

end

end A119464.P1063567595129821770

/-! ## A119464.P12865557069874321091

`A334032(A226641(n+1))%A000005(A059268(n))`
-/

namespace A119464.P12865557069874321091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334032 (A226641 (n + 1)).toNat) (A000005 (A059268 n).toNat)

end

end A119464.P12865557069874321091

/-! ## A119464.P2826760221289455427

`A299607(∑[n+5]+6)%A002260(n+1)`
-/

namespace A119464.P2826760221289455427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299607 (∑ j ∈ Finset.range (n + 1), f1 j + 6)) (A002260 (n + 1))

end

end A119464.P2826760221289455427

/-! ## A119464.P5275333066631253382

`A028345(A028346(n))%A193738(n)`
-/

namespace A119464.P5275333066631253382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028345 (A028346 n).toNat) (A193738 n)

end

end A119464.P5275333066631253382

/-!
# A119465: Consider the standard game of Nim with 3 heaps and make a list of the losing positions (x,y,z) with x <= y <= z sorted by sum, ties broken by putting smallest value of x first, then y, then z; sequence gives y values.

The programs for A119465, there is no canonical definition to state claims against.
-/

/-! ## A119465.P9977176504731944068

`xor(A119464(n+1), A119466(n+1))`
-/

namespace A119465.P9977176504731944068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119464 (n + 1)) (A119466 (n + 1))

end

end A119465.P9977176504731944068

/-! ## A119465.P8281701347221279358

`xor(A334032(A226641(n+1))%A000005(A059268(n)), A119466(n+1))`
-/

namespace A119465.P8281701347221279358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A334032 (A226641 (n + 1)).toNat) (A000005 (A059268 n).toNat)) (A119466 (n + 1))

end

end A119465.P8281701347221279358

/-! ## A119465.P17575768831365781899

`xor(A299607(∑[n+5]+6)%A002260(n+1), A119466(n+1))`
-/

namespace A119465.P17575768831365781899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A299607 (∑ j ∈ Finset.range (n + 1), f1 j + 6)) (A002260 (n + 1))) (A119466 (n + 1))

end

end A119465.P17575768831365781899

/-! ## A119465.P10759502705090365673

`xor(A002024(A189809(n+1))%A002260(n+1), A119466(n+1))`
-/

namespace A119465.P10759502705090365673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A002024 (A189809 (n + 1)).toNat) (A002260 (n + 1))) (A119466 (n + 1))

end

end A119465.P10759502705090365673

/-!
# A119466: Consider the standard game of Nim with 3 heaps and make a list of the losing positions (x,y,z) with x <= y <= z sorted by sum, ties broken by putting smallest value of x first, then y, then z; sequence gives z values.

The programs for A119466, there is no canonical definition to state claims against.
-/

/-! ## A119466.P2904310629291624014

`xor(A119464(n+1), A119465(n+1))`
-/

namespace A119466.P2904310629291624014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119464 (n + 1)) (A119465 (n + 1))

end

end A119466.P2904310629291624014

/-! ## A119466.P4271197675058385030

`xor(A334032(A226641(n+1))%A000005(A059268(n)), A119465(n+1))`
-/

namespace A119466.P4271197675058385030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A334032 (A226641 (n + 1)).toNat) (A000005 (A059268 n).toNat)) (A119465 (n + 1))

end

end A119466.P4271197675058385030

/-! ## A119466.P15078518967838508099

`A055086(2*n+1)-A333381(A317082(n))`
-/

namespace A119466.P15078518967838508099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (2 * n + 1) - A333381 (A317082 n).toNat

end

end A119466.P15078518967838508099

/-! ## A119466.P6887215751805735365

`xor(A299607(∑[n+5]+6)%A002260(n+1), A119465(n+1))`
-/

namespace A119466.P6887215751805735365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A299607 (∑ j ∈ Finset.range (n + 1), f1 j + 6)) (A002260 (n + 1))) (A119465 (n + 1))

end

end A119466.P6887215751805735365

/-! ## A119466.P8963490120775301531

`xor(A002024(A189809(n+1))%A002260(n+1), A119465(n+1))`
-/

namespace A119466.P8963490120775301531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A002024 (A189809 (n + 1)).toNat) (A002260 (n + 1))) (A119465 (n + 1))

end

end A119466.P8963490120775301531

/-!
# A119467: A masked Pascal triangle.

The programs for A119467, the canonical program `A119467.P14926337700131808705` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119467 has offset 0).

The definition of A119467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119467.P14926337700131808705

`C(row(n), col(n))*(1+(-1)^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119467

/-- `C(row(n), col(n))*(1+(-1)^(row(n)-col(n)))/2` -/
def P14926337700131808705.Spec : Prop :=
  ∀ n, P14926337700131808705.a n = (A119467 n : ℚ)

end A119467

/-! ## A119467.P10239195233016874763

`C(row(n), row(n)+1-(-1)^(row(n)-col(n))*(col(n)+1))`
-/

namespace A119467.P10239195233016874763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n + 1 : ℚ) - (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (SequenceMachineLib.triCol n + 1 : ℚ))).toNat

end

end A119467.P10239195233016874763

namespace A119467

/-- `C(row(n), row(n)+1-(-1)^(row(n)-col(n))*(col(n)+1))` -/
def P10239195233016874763.Spec : Prop :=
  ∀ n, (P10239195233016874763.a n : ℤ) = A119467 n

end A119467

/-! ## A119467.P4751999348279631884

`comp[2*(n²+n)]%2*A007318(n)`
-/

namespace A119467.P4751999348279631884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A007318 n

end

end A119467.P4751999348279631884

namespace A119467

/-- `comp[2*(n²+n)]%2*A007318(n)` -/
def P4751999348279631884.Spec : Prop :=
  ∀ n, P4751999348279631884.a n = A119467 n

end A119467

/-! ## A119467.P12552802020523612946

`A071022(n)*A134520(n)`
-/

namespace A119467.P12552802020523612946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071022 n * A134520 n

end

end A119467.P12552802020523612946

namespace A119467

/-- `A071022(n)*A134520(n)` -/
def P12552802020523612946.Spec : Prop :=
  ∀ n, P12552802020523612946.a n = A119467 n

end A119467

/-! ## A119467.P13273136280324931710

`A108086(n)*A369736(n)`
-/

namespace A119467.P13273136280324931710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A369736 n

end

end A119467.P13273136280324931710

namespace A119467

/-- `A108086(n)*A369736(n)` -/
def P13273136280324931710.Spec : Prop :=
  ∀ n, P13273136280324931710.a n = A119467 n

end A119467

/-! ## A119467.P1676839942839369650

`A117440(n)*A369736(n)`
-/

namespace A119467.P1676839942839369650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n * A369736 n

end

end A119467.P1676839942839369650

namespace A119467

/-- `A117440(n)*A369736(n)` -/
def P1676839942839369650.Spec : Prop :=
  ∀ n, P1676839942839369650.a n = A119467 n

end A119467

/-! ## A119467.P18266559133651863449

`A103283(n)%A028326(n)`
-/

namespace A119467.P18266559133651863449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103283 n) (A028326 n)

end

end A119467.P18266559133651863449

namespace A119467

/-- `A103283(n)%A028326(n)` -/
def P18266559133651863449.Spec : Prop :=
  ∀ n, P18266559133651863449.a n = A119467 n

end A119467

/-! ## A119467.P9044802330002293470

`A144388(n)%A028326(n)`
-/

namespace A119467.P9044802330002293470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144388 n) (A028326 n)

end

end A119467.P9044802330002293470

namespace A119467

/-- `A144388(n)%A028326(n)` -/
def P9044802330002293470.Spec : Prop :=
  ∀ n, P9044802330002293470.a n = A119467 n

end A119467

/-! ## A119467.P8062451698578805805

`A193673(n)%A028326(n)`
-/

namespace A119467.P8062451698578805805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193673 n) (A028326 n)

end

end A119467.P8062451698578805805

namespace A119467

/-- `A193673(n)%A028326(n)` -/
def P8062451698578805805.Spec : Prop :=
  ∀ n, P8062451698578805805.a n = A119467 n

end A119467

/-! ## A119467.P3970123603734239487

`and(A130595(n), A134520(n))`
-/

namespace A119467.P3970123603734239487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130595 n) (A134520 n)

end

end A119467.P3970123603734239487

namespace A119467

/-- `and(A130595(n), A134520(n))` -/
def P3970123603734239487.Spec : Prop :=
  ∀ n, P3970123603734239487.a n = A119467 n

end A119467

/-! ## A119467.P6859168872665800205

`A007318(n)*A128174(n+1)`
-/

namespace A119467.P6859168872665800205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A128174 (n + 1)

end

end A119467.P6859168872665800205

namespace A119467

/-- `A007318(n)*A128174(n+1)` -/
def P6859168872665800205.Spec : Prop :=
  ∀ n, P6859168872665800205.a n = A119467 n

end A119467

/-! ## A119467.P11508356608074065180

`A128174(n+1)*A130595(n)`
-/

namespace A119467.P11508356608074065180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A130595 n

end

end A119467.P11508356608074065180

namespace A119467

/-- `A128174(n+1)*A130595(n)` -/
def P11508356608074065180.Spec : Prop :=
  ∀ n, P11508356608074065180.a n = A119467 n

end A119467

/-! ## A119467.P2522941324161299577

`A128174(n+1)*A131375(n)`
-/

namespace A119467.P2522941324161299577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A131375 n

end

end A119467.P2522941324161299577

namespace A119467

/-- `A128174(n+1)*A131375(n)` -/
def P2522941324161299577.Spec : Prop :=
  ∀ n, P2522941324161299577.a n = A119467 n

end A119467

/-! ## A119467.P2156561915109315056

`A128174(n+1)*A134520(n)`
-/

namespace A119467.P2156561915109315056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A134520 n

end

end A119467.P2156561915109315056

namespace A119467

/-- `A128174(n+1)*A134520(n)` -/
def P2156561915109315056.Spec : Prop :=
  ∀ n, P2156561915109315056.a n = A119467 n

end A119467

/-! ## A119467.P10856394567065385175

`A128174(n+1)*A134521(n)`
-/

namespace A119467.P10856394567065385175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A134521 n

end

end A119467.P10856394567065385175

namespace A119467

/-- `A128174(n+1)*A134521(n)` -/
def P10856394567065385175.Spec : Prop :=
  ∀ n, P10856394567065385175.a n = A119467 n

end A119467

/-! ## A119467.P6887208132569528909

`A128174(n+1)*A162315(n)`
-/

namespace A119467.P6887208132569528909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A162315 n

end

end A119467.P6887208132569528909

namespace A119467

/-- `A128174(n+1)*A162315(n)` -/
def P6887208132569528909.Spec : Prop :=
  ∀ n, P6887208132569528909.a n = A119467 n

end A119467

/-! ## A119467.P16424604296738725220

`(A130595(n)+A007318(n))/2`
-/

namespace A119467.P16424604296738725220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 n + A007318 n : ℚ) / 2

end

end A119467.P16424604296738725220

namespace A119467

/-- `(A130595(n)+A007318(n))/2` -/
def P16424604296738725220.Spec : Prop :=
  ∀ n, P16424604296738725220.a n = (A119467 n : ℚ)

end A119467

/-! ## A119467.P16095590545359742974

`A093375(n+1)%A028326(n)`
-/

namespace A119467.P16095590545359742974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093375 (n + 1)) (A028326 n)

end

end A119467.P16095590545359742974

namespace A119467

/-- `A093375(n+1)%A028326(n)` -/
def P16095590545359742974.Spec : Prop :=
  ∀ n, P16095590545359742974.a n = A119467 n

end A119467

/-! ## A119467.P8131764139306300317

`(A014473(n)+1)*A128174(n+1)`
-/

namespace A119467.P8131764139306300317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A128174 (n + 1)

end

end A119467.P8131764139306300317

namespace A119467

/-- `(A014473(n)+1)*A128174(n+1)` -/
def P8131764139306300317.Spec : Prop :=
  ∀ n, P8131764139306300317.a n = A119467 n

end A119467

/-!
# A119468: Triangle read by rows: T(n,k) = Sum_{j=0..n-k} binomial(n,2j)*binomial(n-2j,k).

The programs for A119468, the canonical program `A119468.P2234626006278138456` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119468 has offset 0).

The definition of A119468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119468.P2234626006278138456

`ceil(A038207(n)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119468

/-- `ceil(A038207(n)/2)` -/
def P2234626006278138456.Spec : Prop :=
  ∀ n, P2234626006278138456.a n = A119468 n

theorem P2234626006278138456.correct : P2234626006278138456.Spec := by
  intro n
  simp only [A119468]

end A119468

/-! ## A119468.P5010354801332047635

`lcm(2, A065109(n))/2`
-/

namespace A119468.P5010354801332047635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A065109 n) : ℚ) / 2

end

end A119468.P5010354801332047635

namespace A119468

/-- `lcm(2, A065109(n))/2` -/
def P5010354801332047635.Spec : Prop :=
  ∀ n, P5010354801332047635.a n = (A119468 n : ℚ)

end A119468

/-! ## A119468.P2944400064288814583

`ceil(A210204(n+1)/4)`
-/

namespace A119468.P2944400064288814583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210204 (n + 1) : ℚ) / 4⌉

end

end A119468.P2944400064288814583

namespace A119468

/-- `ceil(A210204(n+1)/4)` -/
def P2944400064288814583.Spec : Prop :=
  ∀ n, P2944400064288814583.a n = A119468 n

end A119468

/-! ## A119468.P11047577333886359357

`ceil(A120910(n+1)/6)`
-/

namespace A119468.P11047577333886359357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120910 (n + 1) : ℚ) / 6⌉

end

end A119468.P11047577333886359357

namespace A119468

/-- `ceil(A120910(n+1)/6)` -/
def P11047577333886359357.Spec : Prop :=
  ∀ n, P11047577333886359357.a n = A119468 n

theorem P11047577333886359357.correct : P11047577333886359357.Spec := by
  intro n
  simp only [A119468, Nat.add_sub_cancel, A119468.P11047577333886359357.a, A119468.P2234626006278138456.a, A038207, A038207.P8041717625759374227.a, A120910, A120910.P7512489130627834766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119468

/-! ## A119468.P12380134682330636730

`gcd(A038207(n), A080928(n))`
-/

namespace A119468.P12380134682330636730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038207 n) (A080928 n)

end

end A119468.P12380134682330636730

namespace A119468

/-- `gcd(A038207(n), A080928(n))` -/
def P12380134682330636730.Spec : Prop :=
  ∀ n, (P12380134682330636730.a n : ℤ) = A119468 n

end A119468

/-! ## A119468.P9997273865525279399

`A007318(n)*A155038(n+1)`
-/

namespace A119468.P9997273865525279399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A155038 (n + 1)

end

end A119468.P9997273865525279399

namespace A119468

/-- `A007318(n)*A155038(n+1)` -/
def P9997273865525279399.Spec : Prop :=
  ∀ n, P9997273865525279399.a n = A119468 n

end A119468

/-! ## A119468.P16234402199475529094

`A038208(n)/A130453(n+1)`
-/

namespace A119468.P16234402199475529094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A130453 (n + 1) : ℚ)

end

end A119468.P16234402199475529094

namespace A119468

/-- `A038208(n)/A130453(n+1)` -/
def P16234402199475529094.Spec : Prop :=
  ∀ n, P16234402199475529094.a n = (A119468 n : ℚ)

end A119468

/-! ## A119468.P12283943141513496707

`A038207(n)/gcd(2, A131114(n))`
-/

namespace A119468.P12283943141513496707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (Int.gcd 2 (A131114 n) : ℚ)

end

end A119468.P12283943141513496707

namespace A119468

/-- `A038207(n)/gcd(2, A131114(n))` -/
def P12283943141513496707.Spec : Prop :=
  ∀ n, P12283943141513496707.a n = (A119468 n : ℚ)

end A119468

/-! ## A119468.P4400479693530434815

`A007318(n)/A135226(n)*A200139(n)`
-/

namespace A119468.P4400479693530434815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A135226 n : ℚ) * (A200139 n : ℚ)

end

end A119468.P4400479693530434815

namespace A119468

/-- `A007318(n)/A135226(n)*A200139(n)` -/
def P4400479693530434815.Spec : Prop :=
  ∀ n, P4400479693530434815.a n = (A119468 n : ℚ)

end A119468

/-! ## A119468.P14970133412045172602

`(A089633(n+1)-A089633(n))*A007318(n)`
-/

namespace A119468.P14970133412045172602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089633 (n + 1) - A089633 n) * A007318 n

end

end A119468.P14970133412045172602

namespace A119468

/-- `(A089633(n+1)-A089633(n))*A007318(n)` -/
def P14970133412045172602.Spec : Prop :=
  ∀ n, P14970133412045172602.a n = A119468 n

end A119468

/-! ## A119468.P15481424442061035165

`A038207(n+1)+A038207(n)-A115068(n+2)`
-/

namespace A119468.P15481424442061035165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (n + 1) + (A038207 n - A115068 (n + 2))

end

end A119468.P15481424442061035165

namespace A119468

/-- `A038207(n+1)+A038207(n)-A115068(n+2)` -/
def P15481424442061035165.Spec : Prop :=
  ∀ n, P15481424442061035165.a n = A119468 n

end A119468

/-! ## A119468.P5200654330789375935

`A105728(n+1)+A105728(n+2)-A115068(n+1)`
-/

namespace A119468.P5200654330789375935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (n + 1) + (A105728 (n + 2) - A115068 (n + 1))

end

end A119468.P5200654330789375935

namespace A119468

/-- `A105728(n+1)+A105728(n+2)-A115068(n+1)` -/
def P5200654330789375935.Spec : Prop :=
  ∀ n, P5200654330789375935.a n = A119468 n

end A119468

/-! ## A119468.P15392480512549881276

`A082137(∑[2*n]%comp[∑[n]])`
-/

namespace A119468.P15392480512549881276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A119468.P15392480512549881276

namespace A119468

/-- `A082137(∑[2*n]%comp[∑[n]])` -/
def P15392480512549881276.Spec : Prop :=
  ∀ n, P15392480512549881276.a n = A119468 n

end A119468

/-! ## A119468.P14577129229626350712

`A082137(∑[char[∑[n]]]²-n-1)`
-/

namespace A119468.P14577129229626350712
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A119468.P14577129229626350712

namespace A119468

/-- `A082137(∑[char[∑[n]]]²-n-1)` -/
def P14577129229626350712.Spec : Prop :=
  ∀ n, P14577129229626350712.a n = A119468 n

end A119468

/-! ## A119468.P3641149631488071720

`A198792(comp[∑[n]])`
-/

namespace A119468.P3641149631488071720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119468.P3641149631488071720

namespace A119468

/-- `A198792(comp[∑[n]])` -/
def P3641149631488071720.Spec : Prop :=
  ∀ n, P3641149631488071720.a n = A119468 n

end A119468

/-! ## A119468.P11348655571008733118

`A065033(A109128(n))*A065033(A130321(n))`
-/

namespace A119468.P11348655571008733118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A109128 n).toNat * A065033 (A130321 n).toNat

end

end A119468.P11348655571008733118

namespace A119468

/-- `A065033(A109128(n))*A065033(A130321(n))` -/
def P11348655571008733118.Spec : Prop :=
  ∀ n, P11348655571008733118.a n = A119468 n

end A119468

/-!
# A119469: Triangle read by rows: row n gives coefficients (lowest degree first) of P_n(x), where P_0(x) = P_1(x) = 1; P_n(x) = P_{n-1}(x) + x^(n-2)*P_{n-2}(x).

The programs for A119469, there is no canonical definition to state claims against.
-/

/-! ## A119469.P14090302409931469305

`A287170(A199230(n+1)+A000040(2*(n+1)))`
-/

namespace A119469.P14090302409931469305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A199230 (n + 1) + A000040 (2 * (n + 1))).toNat

end

end A119469.P14090302409931469305

/-! ## A119469.P4009738580181876544

`A277822(A277822(A097581(n+4))+A277822(n+7))`
-/

namespace A119469.P4009738580181876544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A277822 (A097581 (n + 4)).toNat + A277822 (n + 7)).toNat

end

end A119469.P4009738580181876544

/-! ## A119469.P6503283542304121319

`∑{e}[A019374(n+1)+A014113(n), A051119(#)]`
-/

namespace A119469.P6503283542304121319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019374 (n + 1) + A014113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051119 (Nat.factorization (f1 n).natAbs p)

end

end A119469.P6503283542304121319

/-! ## A119469.P3649905754258821188

`A257990(A336843(n+1)+A000285(n))`
-/

namespace A119469.P3649905754258821188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A336843 (n + 1) + A000285 n).toNat

end

end A119469.P3649905754258821188

/-! ## A119469.P9623642168578325071

`A318369(eq[A005882(n), A260945(n+2)])`
-/

namespace A119469.P9623642168578325071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318369 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A119469.P9623642168578325071

/-!
# A119470: G.f. A(x) equals the limit of the composition of functions (x+x^n); let F_1(x) = x, F_{n+1}(x) = F_n(x+x^(n+1)), then A(x) = limit F_n(x): A(x) = x o x+x^2 o x+x^3 o ... o x+x^n o...

The programs for A119470, there is no canonical definition to state claims against.
-/

/-! ## A119470.P15705337334402260105

`A358636(A301800(n))`
-/

namespace A119470.P15705337334402260105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358636 (A301800 n).toNat

end

end A119470.P15705337334402260105

/-! ## A119470.P9187177429854577661

`A094802(A095008(n+1))+char[6]`
-/

namespace A119470.P9187177429854577661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A095008 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A119470.P9187177429854577661

/-! ## A119470.P13894480006393474906

`A062203(n)-A124762(A014278(n))`
-/

namespace A119470.P13894480006393474906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062203 n - A124762 (A014278 n).toNat

end

end A119470.P13894480006393474906

/-! ## A119470.P10376602631112260830

`A194967(A003242(n)-A062707(n))`
-/

namespace A119470.P10376602631112260830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A003242 n - A062707 n).toNat

end

end A119470.P10376602631112260830

/-!
# A119471: G.f. A(x) equals the limit of the composition of functions F_n(x) = (x + x^n) starting with F_1(x) = x and repeating F_{n+1}(x) = F_n(x) + F_n(x)^(n+1). Thus, A(x) = ... o (x + x^n) o ... o (x + x^3) o (x + x^2) o x, where operator 'o' denotes composition.

The programs for A119471, there is no canonical definition to state claims against.
-/

/-! ## A119471.P532284466493251861

`A286971(A302683(n+1))`
-/

namespace A119471.P532284466493251861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286971 (A302683 (n + 1)).toNat

end

end A119471.P532284466493251861

/-! ## A119471.P3081175719138557070

`A026819(A340615(n)+A187251(n))`
-/

namespace A119471.P3081175719138557070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A340615 n + A187251 n).toNat

end

end A119471.P3081175719138557070

/-! ## A119471.P4144152354576039809

`A046155(A340615(n)+A187251(n))`
-/

namespace A119471.P4144152354576039809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A340615 n + A187251 n).toNat

end

end A119471.P4144152354576039809

/-!
# A119472: G.f. A(x) equals the composition of functions x*(1 + a(n)*x^n); let F_1(x) = x, F_{n+1}(x) = F_n( x*(1 + a(n)*x^n) ), then A(x) = limit F_n(x): A(x) = x*(1+a(1)*x) o x*(1+a(2)*x^2) o ... o x*(1+a(n)*x^n) o ...

The programs for A119472, there is no canonical definition to state claims against.
-/

/-! ## A119472.P11429062460598140954

`A277194(A054391(n)+2)`
-/

namespace A119472.P11429062460598140954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A054391 n + 2).toNat

end

end A119472.P11429062460598140954

/-! ## A119472.P15097539637927182424

`A105223(A002627(n)+4)`
-/

namespace A119472.P15097539637927182424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A002627 n + 4).toNat

end

end A119472.P15097539637927182424

/-! ## A119472.P7659859433036510738

`A189078(A000142(n))+A176677(n)`
-/

namespace A119472.P7659859433036510738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (A000142 n).toNat + A176677 n

end

end A119472.P7659859433036510738

/-! ## A119472.P16690676612844865441

`A000006(A350354(n)+A108044(n))`
-/

namespace A119472.P16690676612844865441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A350354 n + A108044 n).toNat

end

end A119472.P16690676612844865441

/-!
# A119473: Triangle read by rows: T(n,k) is number of binary words of length n and having k runs of 0's of odd length, 0 <= k <= ceiling(n/2). (A run of 0's is a subsequence of consecutive 0's of maximal length.)

The programs for A119473, the canonical program `A119473.P16249177960589023562` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119473 has offset 0).

The definition of A119473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119473.P16249177960589023562

`A193737(A091018(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119473

/-- `A193737(A091018(n+1))` -/
def P16249177960589023562.Spec : Prop :=
  ∀ n, P16249177960589023562.a n = A119473 n

theorem P16249177960589023562.correct : P16249177960589023562.Spec := by
  intro n
  simp only [A119473]

end A119473

/-! ## A119473.P17806081867699740156

`A193737(A056536(n+2)-1)`
-/

namespace A119473.P17806081867699740156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (A056536 (n + 2) - 1).toNat

end

end A119473.P17806081867699740156

namespace A119473

/-- `A193737(A056536(n+2)-1)` -/
def P17806081867699740156.Spec : Prop :=
  ∀ n, P17806081867699740156.a n = A119473 n

theorem P17806081867699740156.correct : P17806081867699740156.Spec := by
  intro n
  simp only [A119473, Nat.add_sub_cancel, A119473.P17806081867699740156.a, A119473.P16249177960589023562.a, A056536, A056536.P15475188742304027796.a, A091018, A091018.P2259398009619809425.a, A193737, A193737.P8250066242998762577.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119473

/-!
# A119476: a(1)=1, a(n)=a((n+1)/2)+1 if n is odd, a(n)=a(n/2)+2 if n is even.

The programs for A119476, the canonical program `A119476.P7071600239430007646` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119476 has offset 1).

The definition of A119476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119476.P7071600239430007646

`a(floor(n/2))+n%2+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119476

/-- `a(floor(n/2))+n%2+1` -/
def P7071600239430007646.Spec : Prop :=
  ∀ n, (P7071600239430007646.a n : ℤ) = A119476 (n + 1)

theorem P7071600239430007646.correct : P7071600239430007646.Spec := by
  intro n
  simp only [A119476, Nat.add_sub_cancel]

end A119476

/-! ## A119476.P5118776433123567500

`a(floor(n/2))+gcd(2, n+1)` with `a(0)=1`
-/

namespace A119476.P5118776433123567500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.gcd 2 (n + 1)

end

end A119476.P5118776433123567500

namespace A119476

/-- `a(floor(n/2))+gcd(2, n+1)` -/
def P5118776433123567500.Spec : Prop :=
  ∀ n, (P5118776433123567500.a n : ℤ) = A119476 (n + 1)

end A119476

/-! ## A119476.P5609004379669895073

`and(1, n)+a(floor(n/2))+1` with `a(0)=1`
-/

namespace A119476.P5609004379669895073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 n + (a ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A119476.P5609004379669895073

namespace A119476

/-- `and(1, n)+a(floor(n/2))+1` -/
def P5609004379669895073.Spec : Prop :=
  ∀ n, (P5609004379669895073.a n : ℤ) = A119476 (n + 1)

end A119476

/-! ## A119476.P8209554551416328646

`a(floor(n/2))+lcm(2, n)/n` with `a(0)=1`
-/

namespace A119476.P8209554551416328646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (Nat.lcm 2 n : ℚ) / (n : ℚ)

end

end A119476.P8209554551416328646

namespace A119476

/-- `a(floor(n/2))+lcm(2, n)/n` -/
def P8209554551416328646.Spec : Prop :=
  ∀ n, P8209554551416328646.a n = (A119476 (n + 1) : ℚ)

end A119476

/-! ## A119476.P8594974682117500251

`a(floor(n/2))+Δ[or(1, n)]!` with `a(0)=1`
-/

namespace A119476.P8594974682117500251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A119476.P8594974682117500251

namespace A119476

/-- `a(floor(n/2))+Δ[or(1, n)]!` -/
def P8594974682117500251.Spec : Prop :=
  ∀ n, (P8594974682117500251.a n : ℤ) = A119476 (n + 1)

end A119476

/-! ## A119476.P3813958623881136933

`a(floor(n/2))-or(n+1, -2)` with `a(0)=1`
-/

namespace A119476.P3813958623881136933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - Int.lor (n + 1 : ℤ) (-2)

end

end A119476.P3813958623881136933

namespace A119476

/-- `a(floor(n/2))-or(n+1, -2)` -/
def P3813958623881136933.Spec : Prop :=
  ∀ n, P3813958623881136933.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P10948789310677885080

`a(floor(n/2))+or(n, -2)+3` with `a(0)=1`
-/

namespace A119476.P10948789310677885080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (Int.lor (n : ℤ) (-2) + 3)

end

end A119476.P10948789310677885080

namespace A119476

/-- `a(floor(n/2))+or(n, -2)+3` -/
def P10948789310677885080.Spec : Prop :=
  ∀ n, P10948789310677885080.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P6689589461194798781

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A119476.P6689589461194798781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119476.P6689589461194798781

namespace A119476

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P6689589461194798781.Spec : Prop :=
  ∀ n, P6689589461194798781.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P13957333077469678703

`a(floor(n/2))-or(1, n)+n+2` with `a(0)=1`
-/

namespace A119476.P13957333077469678703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (Nat.lor 1 n : ℤ) + (n + 2 : ℤ)

end

end A119476.P13957333077469678703

namespace A119476

/-- `a(floor(n/2))-or(1, n)+n+2` -/
def P13957333077469678703.Spec : Prop :=
  ∀ n, P13957333077469678703.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P12141885105184490201

`a(floor(n/2))+(1-(-1)^n)/2+1` with `a(0)=1`
-/

namespace A119476.P12141885105184490201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2 + 1

end

end A119476.P12141885105184490201

namespace A119476

/-- `a(floor(n/2))+(1-(-1)^n)/2+1` -/
def P12141885105184490201.Spec : Prop :=
  ∀ n, P12141885105184490201.a n = (A119476 (n + 1) : ℚ)

end A119476

/-! ## A119476.P15156706073854821326

`∑{digits}[A007088(2*n), #+1]`
-/

namespace A119476.P15156706073854821326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).sum

end

end A119476.P15156706073854821326

namespace A119476

/-- `∑{digits}[A007088(2*n), #+1]` -/
def P15156706073854821326.Spec : Prop :=
  ∀ n, (P15156706073854821326.a n : ℤ) = A119476 (n + 1)

end A119476

/-! ## A119476.P18271246655392474815

`A000120(n)+1+ceil(log2(n+1))`
-/

namespace A119476.P18271246655392474815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A119476.P18271246655392474815

namespace A119476

/-- `A000120(n)+1+ceil(log2(n+1))` -/
def P18271246655392474815.Spec : Prop :=
  ∀ n, P18271246655392474815.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P18231054632241015437

`A070941(n)+A000120(n)`
-/

namespace A119476.P18231054632241015437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n + A000120 n

end

end A119476.P18231054632241015437

namespace A119476

/-- `A070941(n)+A000120(n)` -/
def P18231054632241015437.Spec : Prop :=
  ∀ n, P18231054632241015437.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P1292742788421886033

`A057427(n)+A056791(n)`
-/

namespace A119476.P1292742788421886033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056791 n

end

end A119476.P1292742788421886033

namespace A119476

/-- `A057427(n)+A056791(n)` -/
def P1292742788421886033.Spec : Prop :=
  ∀ n, P1292742788421886033.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P15586759964847393179

`A056791(n)-A057428(n)`
-/

namespace A119476.P15586759964847393179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n - A057428 n

end

end A119476.P15586759964847393179

namespace A119476

/-- `A056791(n)-A057428(n)` -/
def P15586759964847393179.Spec : Prop :=
  ∀ n, P15586759964847393179.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P14790233384276254397

`A145037(n)+A119477(n+1)`
-/

namespace A119476.P14790233384276254397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + A119477 (n + 1)

end

end A119476.P14790233384276254397

namespace A119476

/-- `A145037(n)+A119477(n+1)` -/
def P14790233384276254397.Spec : Prop :=
  ∀ n, P14790233384276254397.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P2691046685157309508

`A303581(n)+A132680(n+1)`
-/

namespace A119476.P2691046685157309508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303581 n + A132680 (n + 1)

end

end A119476.P2691046685157309508

namespace A119476

/-- `A303581(n)+A132680(n+1)` -/
def P2691046685157309508.Spec : Prop :=
  ∀ n, P2691046685157309508.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P3670778988280761896

`A000120(n)+floor(log2(A004767(n)))`
-/

namespace A119476.P3670778988280761896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (Nat.log 2 (A004767 n).toNat : ℤ)

end

end A119476.P3670778988280761896

namespace A119476

/-- `A000120(n)+floor(log2(A004767(n)))` -/
def P3670778988280761896.Spec : Prop :=
  ∀ n, P3670778988280761896.a n = A119476 (n + 1)

end A119476

/-! ## A119476.P13196759992180210951

`A063787(n+1)+A029837(n+1)`
-/

namespace A119476.P13196759992180210951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + A029837 (n + 1)

end

end A119476.P13196759992180210951

namespace A119476

/-- `A063787(n+1)+A029837(n+1)` -/
def P13196759992180210951.Spec : Prop :=
  ∀ n, P13196759992180210951.a n = A119476 (n + 1)

end A119476

/-!
# A119477: a(1)=1, a(n) = a((n+1)/2) + 2 if n is odd, a(n) = a(n/2) + 1 if n is even.

The programs for A119477, the canonical program `A119477.P8043149192793779635` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119477 has offset 1).

The definition of A119477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119477.P8043149192793779635

`A061313(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A119477

/-- `A061313(n+1)+1` -/
def P8043149192793779635.Spec : Prop :=
  ∀ n, P8043149192793779635.a n = A119477 (n + 1)

theorem P8043149192793779635.correct : P8043149192793779635.Spec := by
  intro n
  simp only [A119477, Nat.add_sub_cancel]

end A119477

/-! ## A119477.P14770371002614578953

`a(floor(n/2))+gcd(2, n)` with `a(0)=1`
-/

namespace A119477.P14770371002614578953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.gcd 2 n

end

end A119477.P14770371002614578953

namespace A119477

/-- `a(floor(n/2))+gcd(2, n)` -/
def P14770371002614578953.Spec : Prop :=
  ∀ n, (P14770371002614578953.a n : ℤ) = A119477 (n + 1)

end A119477

/-! ## A119477.P15496549228722084282

`a(floor(n/2))-or(n, -2)` with `a(0)=1`
-/

namespace A119477.P15496549228722084282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - Int.lor (n : ℤ) (-2)

end

end A119477.P15496549228722084282

namespace A119477

/-- `a(floor(n/2))-or(n, -2)` -/
def P15496549228722084282.Spec : Prop :=
  ∀ n, P15496549228722084282.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P1677096204635441635

`a(floor(n/2))+2-n%2` with `a(0)=1`
-/

namespace A119477.P1677096204635441635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (2 - ((n % 2 : ℕ) : ℤ))

end

end A119477.P1677096204635441635

namespace A119477

/-- `a(floor(n/2))+2-n%2` -/
def P1677096204635441635.Spec : Prop :=
  ∀ n, P1677096204635441635.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P1266190425469476930

`a(floor(n/2))-and(1, n)+2` with `a(0)=1`
-/

namespace A119477.P1266190425469476930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (Nat.land 1 n : ℤ) + 2

end

end A119477.P1266190425469476930

namespace A119477

/-- `a(floor(n/2))-and(1, n)+2` -/
def P1266190425469476930.Spec : Prop :=
  ∀ n, P1266190425469476930.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P17933628976523058309

`2-(and(1, n)-a(floor(n/2)))` with `a(0)=1`
-/

namespace A119477.P17933628976523058309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((Nat.land 1 n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A119477.P17933628976523058309

namespace A119477

/-- `2-(and(1, n)-a(floor(n/2)))` -/
def P17933628976523058309.Spec : Prop :=
  ∀ n, P17933628976523058309.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P16983135301469645521

`a(floor(n/2))+a((n+1)%2)` with `a(0)=1`
-/

namespace A119477.P16983135301469645521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a ((n + 1) % 2)

end

end A119477.P16983135301469645521

namespace A119477

/-- `a(floor(n/2))+a((n+1)%2)` -/
def P16983135301469645521.Spec : Prop :=
  ∀ n, (P16983135301469645521.a n : ℤ) = A119477 (n + 1)

end A119477

/-! ## A119477.P11450602591470949884

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A119477.P11450602591470949884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119477.P11450602591470949884

namespace A119477

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P11450602591470949884.Spec : Prop :=
  ∀ n, P11450602591470949884.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P2134264630617881277

`A120512(n+1)-2*n`
-/

namespace A119477.P2134264630617881277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120512 (n + 1) - (2 * n : ℤ)

end

end A119477.P2134264630617881277

namespace A119477

/-- `A120512(n+1)-2*n` -/
def P2134264630617881277.Spec : Prop :=
  ∀ n, P2134264630617881277.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P17319377426101953607

`A080791(n)+floor(log2(4*n+2))`
-/

namespace A119477.P17319377426101953607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + (Nat.log 2 (4 * n + 2) : ℤ)

end

end A119477.P17319377426101953607

namespace A119477

/-- `A080791(n)+floor(log2(4*n+2))` -/
def P17319377426101953607.Spec : Prop :=
  ∀ n, P17319377426101953607.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P15193030581739184807

`2*ceil(log2(n+1))+1-A000120(n)`
-/

namespace A119477.P15193030581739184807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.logb 2 (n + 1 : ℝ)⌉ + 1 - A000120 n

end

end A119477.P15193030581739184807

namespace A119477

/-- `2*ceil(log2(n+1))+1-A000120(n)` -/
def P15193030581739184807.Spec : Prop :=
  ∀ n, P15193030581739184807.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P1460356405639149862

`A326730(A073137(n))+1`
-/

namespace A119477.P1460356405639149862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A073137 n).toNat + 1

end

end A119477.P1460356405639149862

namespace A119477

/-- `A326730(A073137(n))+1` -/
def P1460356405639149862.Spec : Prop :=
  ∀ n, P1460356405639149862.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P670253576379298455

`A290251(n)+A070939(n)`
-/

namespace A119477.P670253576379298455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n + A070939 n

end

end A119477.P670253576379298455

namespace A119477

/-- `A290251(n)+A070939(n)` -/
def P670253576379298455.Spec : Prop :=
  ∀ n, P670253576379298455.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P7864893536017936621

`A119476(n+1)-A145037(n)`
-/

namespace A119477.P7864893536017936621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119476 (n + 1) - A145037 n

end

end A119477.P7864893536017936621

namespace A119477

/-- `A119476(n+1)-A145037(n)` -/
def P7864893536017936621.Spec : Prop :=
  ∀ n, P7864893536017936621.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P12290713425321669384

`A029837(n+1)+A008687(n+1)`
-/

namespace A119477.P12290713425321669384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + A008687 (n + 1)

end

end A119477.P12290713425321669384

namespace A119477

/-- `A029837(n+1)+A008687(n+1)` -/
def P12290713425321669384.Spec : Prop :=
  ∀ n, P12290713425321669384.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P16118520539181803998

`A029837(n+1)+A080791(n)+1`
-/

namespace A119477.P16118520539181803998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A080791 n + 1)

end

end A119477.P16118520539181803998

namespace A119477

/-- `A029837(n+1)+A080791(n)+1` -/
def P16118520539181803998.Spec : Prop :=
  ∀ n, P16118520539181803998.a n = A119477 (n + 1)

theorem P16118520539181803998.correct : P16118520539181803998.Spec := by
  intro n
  simp only [A119477, Nat.add_sub_cancel, A119477.P16118520539181803998.a, A119477.P8043149192793779635.a, A029837, A029837.P1050578713049589.a, A061313, A061313.P9812291804371352980.a, A080791, A080791.P6131873509789506769.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119477

/-! ## A119477.P7420820441190213185

`A271479(n+1)+1-A080791(n)`
-/

namespace A119477.P7420820441190213185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (n + 1) + (1 - A080791 n)

end

end A119477.P7420820441190213185

namespace A119477

/-- `A271479(n+1)+1-A080791(n)` -/
def P7420820441190213185.Spec : Prop :=
  ∀ n, P7420820441190213185.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P15066623758490688929

`A063787(n+1)+2*A080791(n)`
-/

namespace A119477.P15066623758490688929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + 2 * A080791 n

end

end A119477.P15066623758490688929

namespace A119477

/-- `A063787(n+1)+2*A080791(n)` -/
def P15066623758490688929.Spec : Prop :=
  ∀ n, P15066623758490688929.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P8501090598971396375

`∑{digits}[A007088(2*n+1), A000032(#)]`
-/

namespace A119477.P8501090598971396375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000032 x).sum

end

end A119477.P8501090598971396375

namespace A119477

/-- `∑{digits}[A007088(2*n+1), A000032(#)]` -/
def P8501090598971396375.Spec : Prop :=
  ∀ n, P8501090598971396375.a n = A119477 (n + 1)

end A119477

/-! ## A119477.P14884695847133062517

`A000005(A001316(n))+2*A080791(n)`
-/

namespace A119477.P14884695847133062517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat + 2 * A080791 n

end

end A119477.P14884695847133062517

namespace A119477

/-- `A000005(A001316(n))+2*A080791(n)` -/
def P14884695847133062517.Spec : Prop :=
  ∀ n, P14884695847133062517.a n = A119477 (n + 1)

end A119477

/-!
# A119479: Length of longest run of consecutive integers having exactly n divisors.

The programs for A119479, there is no canonical definition to state claims against.
-/

/-! ## A119479.P16817383760919618480

`A000041(A152271(n+2))%A122416(A343936(n+5))`
-/

namespace A119479.P16817383760919618480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A152271 (n + 2)).toNat) (A122416 (A343936 (n + 5)).toNat)

end

end A119479.P16817383760919618480

/-!
# A119480: Numbers k such that the Bernoulli number B_{4k} has denominator 30.

The programs for A119480, the canonical program `A119480.P557192141545520741` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119480 has offset 1).

The definition of A119480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119480.P17138932210771603622

`A051225(n+1)/2`
-/

namespace A119480.P17138932210771603622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051225 (n + 1) : ℚ) / 2

end

end A119480.P17138932210771603622

namespace A119480

/-- `A051225(n+1)/2` -/
def P17138932210771603622.Spec : Prop :=
  ∀ n, P17138932210771603622.a n = (A119480 (n + 1) : ℚ)

theorem P17138932210771603622.correct : P17138932210771603622.Spec := by
  intro n
  simp only [A119480, Nat.add_sub_cancel, A119480.P17138932210771603622.a, A119480.P557192141545520741.f1, A119480.P557192141545520741.f2, A119480.P557192141545520741.a, A051225, A051225.P4105070610435366321.a, A086668, A086668.P4920581332236016487.a, A101264, A101264.P9977125953316836564.a, A305818, A305818.P15738816487274573770.f1, A305818.P15738816487274573770.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A119480

/-! ## A119480.P557192141545520741

`eq[2, A086668(2*(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A119480

/-- `eq[2, A086668(2*(n+1))]+1` -/
def P557192141545520741.Spec : Prop :=
  ∀ n, (P557192141545520741.a n : ℤ) = A119480 (n + 1)

theorem P557192141545520741.correct : P557192141545520741.Spec := by
  intro n
  simp only [A119480, Nat.add_sub_cancel]

end A119480

/-! ## A119480.P12612177425452569687

`eq[1, A180315(2*n)]`
-/

namespace A119480.P12612177425452569687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119480.P12612177425452569687

namespace A119480

/-- `eq[1, A180315(2*n)]` -/
def P12612177425452569687.Spec : Prop :=
  ∀ n, (P12612177425452569687.a n : ℤ) = A119480 (n + 1)

end A119480

/-! ## A119480.P972240614019268143

`eq[A180315(n), A328570(n)]/2`
-/

namespace A119480.P972240614019268143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P972240614019268143

namespace A119480

/-- `eq[A180315(n), A328570(n)]/2` -/
def P972240614019268143.Spec : Prop :=
  ∀ n, P972240614019268143.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P1440640710399265393

`eq[A010124(n), A180315(n)]/2`
-/

namespace A119480.P1440640710399265393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P1440640710399265393

namespace A119480

/-- `eq[A010124(n), A180315(n)]/2` -/
def P1440640710399265393.Spec : Prop :=
  ∀ n, P1440640710399265393.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P14723790663304941783

`eq[A010138(n), A180315(n)]/2`
-/

namespace A119480.P14723790663304941783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P14723790663304941783

namespace A119480

/-- `eq[A010138(n), A180315(n)]/2` -/
def P14723790663304941783.Spec : Prop :=
  ∀ n, P14723790663304941783.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P541244083078190044

`eq[A010140(n), A180315(n)]/2`
-/

namespace A119480.P541244083078190044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P541244083078190044

namespace A119480

/-- `eq[A010140(n), A180315(n)]/2` -/
def P541244083078190044.Spec : Prop :=
  ∀ n, P541244083078190044.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P4053670131669619433

`eq[A010149(n), A180315(n)]/2`
-/

namespace A119480.P4053670131669619433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P4053670131669619433

namespace A119480

/-- `eq[A010149(n), A180315(n)]/2` -/
def P4053670131669619433.Spec : Prop :=
  ∀ n, P4053670131669619433.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P3017281244916956601

`eq[A075180(n), A180315(n)]/2`
-/

namespace A119480.P3017281244916956601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P3017281244916956601

namespace A119480

/-- `eq[A075180(n), A180315(n)]/2` -/
def P3017281244916956601.Spec : Prop :=
  ∀ n, P3017281244916956601.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P11410204319525302863

`eq[A165886(n), A180315(n)]/2`
-/

namespace A119480.P11410204319525302863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P11410204319525302863

namespace A119480

/-- `eq[A165886(n), A180315(n)]/2` -/
def P11410204319525302863.Spec : Prop :=
  ∀ n, P11410204319525302863.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P10030529941555005599

`A051226(n+1)/4`
-/

namespace A119480.P10030529941555005599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051226 (n + 1) : ℚ) / 4

end

end A119480.P10030529941555005599

namespace A119480

/-- `A051226(n+1)/4` -/
def P10030529941555005599.Spec : Prop :=
  ∀ n, P10030529941555005599.a n = (A119480 (n + 1) : ℚ)

theorem P10030529941555005599.correct : P10030529941555005599.Spec := by
  intro n
  simp only [A119480, Nat.add_sub_cancel, A119480.P10030529941555005599.a, A119480.P557192141545520741.f1, A119480.P557192141545520741.f2, A119480.P557192141545520741.a, A051226, A051226.P497692568898990968.a, A086668, A086668.P4920581332236016487.a, A051225, A051225.P4105070610435366321.a, A101264, A101264.P9977125953316836564.a, A305818, A305818.P15738816487274573770.f1, A305818.P15738816487274573770.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A119480

/-! ## A119480.P7115845426583527352

`eq[A055770(n+1), A180315(n)]/2`
-/

namespace A119480.P7115845426583527352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P7115845426583527352

namespace A119480

/-- `eq[A055770(n+1), A180315(n)]/2` -/
def P7115845426583527352.Spec : Prop :=
  ∀ n, P7115845426583527352.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P16364899744743780997

`eq[A055874(n+1), A180315(n)]/2`
-/

namespace A119480.P16364899744743780997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P16364899744743780997

namespace A119480

/-- `eq[A055874(n+1), A180315(n)]/2` -/
def P16364899744743780997.Spec : Prop :=
  ∀ n, P16364899744743780997.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P17696770834168888867

`eq[A055881(n+1), A180315(n)]/2`
-/

namespace A119480.P17696770834168888867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P17696770834168888867

namespace A119480

/-- `eq[A055881(n+1), A180315(n)]/2` -/
def P17696770834168888867.Spec : Prop :=
  ∀ n, P17696770834168888867.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P11029787870271356212

`eq[2, A138705(2*n)]`
-/

namespace A119480.P11029787870271356212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119480.P11029787870271356212

namespace A119480

/-- `eq[2, A138705(2*n)]` -/
def P11029787870271356212.Spec : Prop :=
  ∀ n, (P11029787870271356212.a n : ℤ) = A119480 (n + 1)

end A119480

/-! ## A119480.P8378052791319672762

`eq[1, A165949(2*(n+1))]+1`
-/

namespace A119480.P8378052791319672762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119480.P8378052791319672762

namespace A119480

/-- `eq[1, A165949(2*(n+1))]+1` -/
def P8378052791319672762.Spec : Prop :=
  ∀ n, (P8378052791319672762.a n : ℤ) = A119480 (n + 1)

end A119480

/-! ## A119480.P995943326642033610

`A001281(A051225(n+1))`
-/

namespace A119480.P995943326642033610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A051225 (n + 1)).toNat

end

end A119480.P995943326642033610

namespace A119480

/-- `A001281(A051225(n+1))` -/
def P995943326642033610.Spec : Prop :=
  ∀ n, P995943326642033610.a n = A119480 (n + 1)

end A119480

/-! ## A119480.P9295882858833543192

`eq[A002445(2*n), A040210(n)]`
-/

namespace A119480.P9295882858833543192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119480.P9295882858833543192

namespace A119480

/-- `eq[A002445(2*n), A040210(n)]` -/
def P9295882858833543192.Spec : Prop :=
  ∀ n, (P9295882858833543192.a n : ℤ) = A119480 (n + 1)

end A119480

/-! ## A119480.P8164977921293164766

`eq[A002445(n), A040210(n)]/2`
-/

namespace A119480.P8164977921293164766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040210 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P8164977921293164766

namespace A119480

/-- `eq[A002445(n), A040210(n)]/2` -/
def P8164977921293164766.Spec : Prop :=
  ∀ n, P8164977921293164766.a n = (A119480 (n + 1) : ℚ)

end A119480

/-! ## A119480.P314705646639659924

`eq[A002445(n), A040211(n)]/2`
-/

namespace A119480.P314705646639659924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040211 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A119480.P314705646639659924

namespace A119480

/-- `eq[A002445(n), A040211(n)]/2` -/
def P314705646639659924.Spec : Prop :=
  ∀ n, P314705646639659924.a n = (A119480 (n + 1) : ℚ)

end A119480

/-!
# A119483: Smallest m such that m * prime(n) consists of decimal digits not greater than 1.

The programs for A119483, there is no canonical definition to state claims against.
-/

/-! ## A119483.P14700067915450704241

`A079339(p?[xor(1, n)+1])`
-/

namespace A119483.P14700067915450704241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A119483.P14700067915450704241

/-! ## A119483.P8169769917806374014

`A079339(p?[n%3+n])`
-/

namespace A119483.P8169769917806374014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A119483.P8169769917806374014

/-! ## A119483.P668818530994960601

`A079339(p?[abs(xor(1, -n))])`
-/

namespace A119483.P668818530994960601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A119483.P668818530994960601

/-! ## A119483.P16232788209877375869

`A096681(2*p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A119483.P16232788209877375869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096681 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A119483.P16232788209877375869

/-! ## A119483.P11256023537012845599

`A079339(A051599(∑[n]))`
-/

namespace A119483.P11256023537012845599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (A051599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A119483.P11256023537012845599

/-!
# A119484: Products associated with multipliers in A119483.

The programs for A119484, there is no canonical definition to state claims against.
-/

/-! ## A119484.P9522144887888527785

`p?[n%3+n]*A079339(p?[n%3+n])`
-/

namespace A119484.P9522144887888527785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A079339 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A119484.P9522144887888527785

/-! ## A119484.P1712279373974399553

`A004290(A000040(n+1))`
-/

namespace A119484.P1712279373974399553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (A000040 (n + 1)).toNat

end

end A119484.P1712279373974399553

/-! ## A119484.P5670522962855502968

`A004290(A049551(n+1))`
-/

namespace A119484.P5670522962855502968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (A049551 (n + 1)).toNat

end

end A119484.P5670522962855502968

/-! ## A119484.P11075233157724684958

`A004290(A049569(n+1))`
-/

namespace A119484.P11075233157724684958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (A049569 (n + 1)).toNat

end

end A119484.P11075233157724684958

/-! ## A119484.P6011518224759867390

`A004290(A050260(n+1))`
-/

namespace A119484.P6011518224759867390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (A050260 (n + 1)).toNat

end

end A119484.P6011518224759867390

/-!
# A119485: Number of children for which any subset can be generated by a counting-out game.

The programs for A119485, there is no canonical definition to state claims against.
-/

/-! ## A119485.P12397815015625623167

`lt[∏{p}[2*n, n/#], n+1]`
-/

namespace A119485.P12397815015625623167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (p : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A119485.P12397815015625623167

/-! ## A119485.P616777736009177085

`lt[∑{p}[2*n, 2*n-#²], 2*n]`
-/

namespace A119485.P616777736009177085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((2 * n : ℤ) - (p ^ 2 : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A119485.P616777736009177085

/-! ## A119485.P1873468622146458524

`lt[∑{d}[n+1, lcm(2, #)/2], n+4]+1`
-/

namespace A119485.P1873468622146458524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm 2 d : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1

end

end A119485.P1873468622146458524

/-! ## A119485.P10959061013449970429

`comp[lt[n, A284466(n)]]`
-/

namespace A119485.P10959061013449970429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284466 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A119485.P10959061013449970429

/-! ## A119485.P7528703537321302221

`lt[A366852(2*n)², n]`
-/

namespace A119485.P7528703537321302221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366852 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119485.P7528703537321302221

/-!
# A119486: Numbers of children for which there is a subset which cannot be generated by a counting-out game.

The programs for A119486, there is no canonical definition to state claims against.
-/

/-! ## A119486.P4469214386306351727

`lt[14, ∏{e}[(4*n)², #]]`
-/

namespace A119486.P4469214386306351727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119486.P4469214386306351727

/-! ## A119486.P4706821082740317365

`lt[3, ∑{d}[∏{d}[n, #], #%2]]`
-/

namespace A119486.P4706821082740317365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119486.P4706821082740317365

/-! ## A119486.P14190215990634355807

`lt[n+2, ∑{d}[n, lcm(2, #)/2]]`
-/

namespace A119486.P14190215990634355807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (Nat.lcm 2 d : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A119486.P14190215990634355807

/-! ## A119486.P10619711844939679369

`lt[n+1, ∏{p}[2*n, n/#]]`
-/

namespace A119486.P10619711844939679369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (n : ℚ) / (p : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A119486.P10619711844939679369

/-! ## A119486.P15502824544904775033

`lt[1, A366852(n)]`
-/

namespace A119486.P15502824544904775033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119486.P15502824544904775033

/-!
# A119487: Primes of the form i*prime(i) + (i+1)*prime(i+1).

The programs for A119487, there is no canonical definition to state claims against.
-/

/-! ## A119487.P12308008853656929195

`A152117(A105454(n+1))`
-/

namespace A119487.P12308008853656929195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (A105454 (n + 1)).toNat

end

end A119487.P12308008853656929195

/-! ## A119487.P11648195385758091888

`p?[A152117(n+1)]`
-/

namespace A119487.P11648195385758091888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P11648195385758091888

/-! ## A119487.P15620896796499134697

`p?[or(1, A152117(A028310(n)))]`
-/

namespace A119487.P15620896796499134697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152117 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P15620896796499134697

/-! ## A119487.P7865978040525566369

`p?[A033286(n+1)+A033286(n+2)]`
-/

namespace A119487.P7865978040525566369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + A033286 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P7865978040525566369

/-! ## A119487.P8914670438445925312

`p?[A014285(n+3)-A014285(n+1)]`
-/

namespace A119487.P8914670438445925312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 3) - A014285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P8914670438445925312

/-! ## A119487.P5609820035814421644

`p?[A000040(n+2)+(n+1)*A001043(n+1)]`
-/

namespace A119487.P5609820035814421644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (n + 1 : ℤ) * A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P5609820035814421644

/-! ## A119487.P9199741497939255582

`p?[(n+1)*A000040(n+1)+(n+2)*A000040(n+2)]`
-/

namespace A119487.P9199741497939255582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) + (n + 2 : ℤ) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P9199741497939255582

/-! ## A119487.P8496990709988718782

`p?[A152117(A028310(n))]-A264668(n)`
-/

namespace A119487.P8496990709988718782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A264668 n

end

end A119487.P8496990709988718782

/-! ## A119487.P4918163339907868801

`p?[A057427(n)*A152117(A028310(n))]`
-/

namespace A119487.P4918163339907868801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A152117 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P4918163339907868801

/-! ## A119487.P1249280137637138782

`p?[A152117(A028310(n))%A005920(n)]`
-/

namespace A119487.P1249280137637138782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152117 (A028310 n).toNat) (A005920 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119487.P1249280137637138782

/-!
# A119488: Primes of the form prime(i+1)*(i+1) - prime(i)*i, for increasing values of i.

The programs for A119488, the canonical program `A119488.P10752404922273311260` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119488 has offset 1).

The definition of A119488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119488.P10752404922273311260

`p?[Δ[(n+2)*p?[2*n+1]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119488

/-- `p?[Δ[(n+2)*p?[2*n+1]]]` -/
def P10752404922273311260.Spec : Prop :=
  ∀ n, P10752404922273311260.a n = A119488 (n + 1)

theorem P10752404922273311260.correct : P10752404922273311260.Spec := by
  intro n
  simp only [A119488, Nat.add_sub_cancel]

end A119488

/-! ## A119488.P5511877544777291317

`p?[A033287(n)]`
-/

namespace A119488.P5511877544777291317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119488.P5511877544777291317

namespace A119488

/-- `p?[A033287(n)]` -/
def P5511877544777291317.Spec : Prop :=
  ∀ n, P5511877544777291317.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P1253148948014775344

`p?[A090942(n+2)]`
-/

namespace A119488.P1253148948014775344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119488.P1253148948014775344

namespace A119488

/-- `p?[A090942(n+2)]` -/
def P1253148948014775344.Spec : Prop :=
  ∀ n, P1253148948014775344.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P5567271171180514846

`p?[Δ[A033286(n+1)]]`
-/

namespace A119488.P5567271171180514846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119488.P5567271171180514846

namespace A119488

/-- `p?[Δ[A033286(n+1)]]` -/
def P5567271171180514846.Spec : Prop :=
  ∀ n, P5567271171180514846.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P11935604187847209189

`p?[Δ[(n+1)*A000040(n+1)]]`
-/

namespace A119488.P11935604187847209189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119488.P11935604187847209189

namespace A119488

/-- `p?[Δ[(n+1)*A000040(n+1)]]` -/
def P11935604187847209189.Spec : Prop :=
  ∀ n, P11935604187847209189.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P10358473642003450418

`p?[Δ[lcm(n+2, A000040(n+2))]]`
-/

namespace A119488.P10358473642003450418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A000040 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119488.P10358473642003450418

namespace A119488

/-- `p?[Δ[lcm(n+2, A000040(n+2))]]` -/
def P10358473642003450418.Spec : Prop :=
  ∀ n, P10358473642003450418.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P134904460365538698

`p?[A033286(n+2)-A033286(n+1)]`
-/

namespace A119488.P134904460365538698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 2) - A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119488.P134904460365538698

namespace A119488

/-- `p?[A033286(n+2)-A033286(n+1)]` -/
def P134904460365538698.Spec : Prop :=
  ∀ n, P134904460365538698.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P17373883804462880696

`filter[A033287(n), A010051(#)]`
-/

namespace A119488.P17373883804462880696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A119488.P17373883804462880696

namespace A119488

/-- `filter[A033287(n), A010051(#)]` -/
def P17373883804462880696.Spec : Prop :=
  ∀ n, P17373883804462880696.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P10642913978660274395

`filter[A033287(n), A379969(#)]`
-/

namespace A119488.P10642913978660274395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A119488.P10642913978660274395

namespace A119488

/-- `filter[A033287(n), A379969(#)]` -/
def P10642913978660274395.Spec : Prop :=
  ∀ n, P10642913978660274395.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P12316938393730112941

`filter[A033287(n), A380467(#)]`
-/

namespace A119488.P12316938393730112941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A119488.P12316938393730112941

namespace A119488

/-- `filter[A033287(n), A380467(#)]` -/
def P12316938393730112941.Spec : Prop :=
  ∀ n, P12316938393730112941.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P12799709701410655055

`filter[A033287(n+1), A365716(#)]`
-/

namespace A119488.P12799709701410655055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A119488.P12799709701410655055

namespace A119488

/-- `filter[A033287(n+1), A365716(#)]` -/
def P12799709701410655055.Spec : Prop :=
  ∀ n, P12799709701410655055.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P17723781894383655632

`filter[A090942(n+1), A379969(#)]`
-/

namespace A119488.P17723781894383655632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A119488.P17723781894383655632

namespace A119488

/-- `filter[A090942(n+1), A379969(#)]` -/
def P17723781894383655632.Spec : Prop :=
  ∀ n, P17723781894383655632.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P6530067775720171601

`filter[A090942(n+2), A010051(#)]`
-/

namespace A119488.P6530067775720171601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A119488.P6530067775720171601

namespace A119488

/-- `filter[A090942(n+2), A010051(#)]` -/
def P6530067775720171601.Spec : Prop :=
  ∀ n, P6530067775720171601.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P16384869847895072382

`filter[A033287(n), A323152(#)]`
-/

namespace A119488.P16384869847895072382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A119488.P16384869847895072382

namespace A119488

/-- `filter[A033287(n), A323152(#)]` -/
def P16384869847895072382.Spec : Prop :=
  ∀ n, P16384869847895072382.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P11304580690444838951

`filter[A033287(n), A323153(#)]`
-/

namespace A119488.P11304580690444838951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A119488.P11304580690444838951

namespace A119488

/-- `filter[A033287(n), A323153(#)]` -/
def P11304580690444838951.Spec : Prop :=
  ∀ n, P11304580690444838951.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P6089665290153063390

`filter[A033287(n), A327861(#)]`
-/

namespace A119488.P6089665290153063390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A119488.P6089665290153063390

namespace A119488

/-- `filter[A033287(n), A327861(#)]` -/
def P6089665290153063390.Spec : Prop :=
  ∀ n, P6089665290153063390.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P3765348097895437681

`filter[A033287(n), A353670(#)]`
-/

namespace A119488.P3765348097895437681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A119488.P3765348097895437681

namespace A119488

/-- `filter[A033287(n), A353670(#)]` -/
def P3765348097895437681.Spec : Prop :=
  ∀ n, P3765348097895437681.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P16466865595221156959

`filter[A033287(n+1), A340371(#)]`
-/

namespace A119488.P16466865595221156959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A119488.P16466865595221156959

namespace A119488

/-- `filter[A033287(n+1), A340371(#)]` -/
def P16466865595221156959.Spec : Prop :=
  ∀ n, P16466865595221156959.a n = A119488 (n + 1)

end A119488

/-! ## A119488.P14791175721313642700

`filter[A090942(n+1), A353670(#)]`
-/

namespace A119488.P14791175721313642700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A119488.P14791175721313642700

namespace A119488

/-- `filter[A090942(n+1), A353670(#)]` -/
def P14791175721313642700.Spec : Prop :=
  ∀ n, P14791175721313642700.a n = A119488 (n + 1)

end A119488

/-!
# A119489: Sum of the absolute values in row n of A118686.

The programs for A119489, there is no canonical definition to state claims against.
-/

/-! ## A119489.P8989624354522373969

`(A034386(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A119489.P8989624354522373969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A034386 (n - 1) + 1) * a (n - 1)

end

end A119489.P8989624354522373969

/-! ## A119489.P12017416980069852023

`(A066838(A007918(n))+1)*a(n-1)` with `a(0)=1`
-/

namespace A119489.P12017416980069852023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A066838 (A007918 n).toNat + 1) * a (n - 1)

end

end A119489.P12017416980069852023

/-! ## A119489.P16711642650535623377

`(∏{p}[abs(1-n)!, #]+1)*a(n-1)` with `a(0)=1`
-/

namespace A119489.P16711642650535623377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∏ p ∈ Nat.primeFactors (f1 n), p + 1) * a (n - 1)

end

end A119489.P16711642650535623377

/-!
# A119490: Sum of the absolute values in row n of A118687.

The programs for A119490, there is no canonical definition to state claims against.
-/

/-! ## A119490.P3448477917880319429

`(A049614(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A119490.P3448477917880319429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A049614 (n - 1) + 1) * a (n - 1)

end

end A119490.P3448477917880319429

/-! ## A119490.P14140450519259619360

`∏[A049614(A028310(n)-1)+1]/2`
-/

namespace A119490.P14140450519259619360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (A028310 n - 1).toNat + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A119490.P14140450519259619360

/-! ## A119490.P3506103732752760789

`∏[A120562(∏[A209421(2*(n+1))])]`
-/

namespace A119490.P3506103732752760789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209421 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A119490.P3506103732752760789

/-!
# A119491: Sum of the first n n-digit primes.

The programs for A119491, there is no canonical definition to state claims against.
-/

/-! ## A119491.P2870601174037994389

`A114053(n+1)+∑[A081045(n)]`
-/

namespace A119491.P2870601174037994389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114053 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119491.P2870601174037994389

/-! ## A119491.P8493770957244552050

`A114053(n+1)+A053541(n+1)`
-/

namespace A119491.P8493770957244552050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114053 (n + 1) + A053541 (n + 1)

end

end A119491.P8493770957244552050

/-! ## A119491.P11966425905630497319

`A114053(n+1)+∑[∑[A255381(n)]]`
-/

namespace A119491.P11966425905630497319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255381 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114053 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119491.P11966425905630497319

/-! ## A119491.P11655264299259947361

`A114053(n+1)+A094797(n+1)-1`
-/

namespace A119491.P11655264299259947361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114053 (n + 1) + (A094797 (n + 1) - 1)

end

end A119491.P11655264299259947361

/-! ## A119491.P16697254207369730026

`A114053(n+1)+(n+1)*A011557(n)`
-/

namespace A119491.P16697254207369730026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114053 (n + 1) + (n + 1 : ℤ) * A011557 n

end

end A119491.P16697254207369730026

/-! ## A119491.P4124950474286382153

`A000042(n+1)+A114053(n+1)+A033713(n+1)`
-/

namespace A119491.P4124950474286382153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A114053 (n + 1) + A033713 (n + 1))

end

end A119491.P4124950474286382153

/-!
# A119492: Composites c not dividing binomial(c,k) for any k to which c is not coprime.

The programs for A119492, there is no canonical definition to state claims against.
-/

/-! ## A119492.P9064258353000644189

`eq[A061467(A161332(n)), A339579(n+1)]`
-/

namespace A119492.P9064258353000644189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061467 (A161332 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119492.P9064258353000644189

/-!
# A119494: a(n) = smallest prime number p_k such that 1/p_n + 1/p_{n+1} + ... + 1/p_k > 1.

The programs for A119494, there is no canonical definition to state claims against.
-/

/-! ## A119494.P4948185901629095449

`A000040(A092325(n+1))`
-/

namespace A119494.P4948185901629095449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092325 (n + 1)).toNat

end

end A119494.P4948185901629095449

/-! ## A119494.P12819345254071455347

`A001748(A137368(n+1)+n)/3`
-/

namespace A119494.P12819345254071455347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A137368 (n + 1) + (n : ℤ)).toNat : ℚ) / 3

end

end A119494.P12819345254071455347

/-! ## A119494.P5032446360143057906

`A001748(A327600(n+1)+1+n)/3`
-/

namespace A119494.P5032446360143057906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A327600 (n + 1) + 1 + (n : ℤ)).toNat : ℚ) / 3

end

end A119494.P5032446360143057906

/-! ## A119494.P10595521943133370126

`A151800(A225671(n+1))`
-/

namespace A119494.P10595521943133370126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A225671 (n + 1)).toNat

end

end A119494.P10595521943133370126

/-!
# A119495: Number of bi-secondary structures of size N.

The programs for A119495, there is no canonical definition to state claims against.
-/

/-! ## A119495.P11101893679475952609

`A276797(2*A337720(n+2))`
-/

namespace A119495.P11101893679475952609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (2 * A337720 (n + 2)).toNat

end

end A119495.P11101893679475952609

/-! ## A119495.P5942401494541111174

`A343230(A058275(n))+A170941(n)`
-/

namespace A119495.P5942401494541111174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 (A058275 n).toNat + A170941 n

end

end A119495.P5942401494541111174

/-! ## A119495.P2215359257628869984

`A264749(or(A008619(n), A148833(n)))`
-/

namespace A119495.P2215359257628869984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.lor (A008619 n) (A148833 n)).toNat

end

end A119495.P2215359257628869984

/-! ## A119495.P3062890002742970569

`A126257(xor(A000085(n), A010750(n)))`
-/

namespace A119495.P3062890002742970569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (Int.xor (A000085 n) (A010750 n)).toNat

end

end A119495.P3062890002742970569

/-! ## A119495.P3994451447055925455

`A170941(n)+A000122(A003397(n+1))`
-/

namespace A119495.P3994451447055925455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170941 n + A000122 (A003397 (n + 1)).toNat

end

end A119495.P3994451447055925455

/-!
# A119496: Numbers k such that 2^k, 3^k, 5^k and 7^k have even digit sum.

The programs for A119496, there is no canonical definition to state claims against.
-/

/-! ## A119496.P3126908754964879292

`filter[A118867(2*n+1), A074937(#)]`
-/

namespace A119496.P3126908754964879292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118867 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A074937 (f1 j).toNat = 1) n)

end

end A119496.P3126908754964879292

/-!
# A119498: Consider the sign of A067276: determinant of n X n matrix containing the first n^2 primes in increasing order; then a(n) = 0 if negative and 1 if positive.

The programs for A119498, there is no canonical definition to state claims against.
-/

/-! ## A119498.P10607140173469162826

`ceil(acot(A067276(n+1)))`
-/

namespace A119498.P10607140173469162826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A067276 (n + 1) : ℝ)⌉

end

end A119498.P10607140173469162826

/-! ## A119498.P10301029074198598942

`A065043(A187556(n)+A000041(n+4))`
-/

namespace A119498.P10301029074198598942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A187556 n + A000041 (n + 4)).toNat

end

end A119498.P10301029074198598942

/-! ## A119498.P2261056754675800850

`A085002(A285267(n+4)+A204617(n+1))`
-/

namespace A119498.P2261056754675800850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A285267 (n + 4) + A204617 (n + 1)).toNat

end

end A119498.P2261056754675800850

/-! ## A119498.P11533302296802985229

`A327861(A327803(n)+A233929(n+1))`
-/

namespace A119498.P11533302296802985229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327861 (A327803 n + A233929 (n + 1)).toNat

end

end A119498.P11533302296802985229

/-! ## A119498.P13093675769636937327

`and(A038142(n+1), A047999(A308411(2*(n+2))))`
-/

namespace A119498.P13093675769636937327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038142 (n + 1)) (A047999 (A308411 (2 * (n + 2))).toNat)

end

end A119498.P13093675769636937327

/-!
# A119499: Records in A114717.

The programs for A119499, there is no canonical definition to state claims against.
-/

/-! ## A119499.P1223559155207602092

`record[A114717(n+1)]`
-/

namespace A119499.P1223559155207602092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119499.P1223559155207602092

/-! ## A119499.P15528553933998968869

`record[A119841(n+1)]`
-/

namespace A119499.P15528553933998968869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119499.P15528553933998968869

/-! ## A119499.P14375014687245189861

`A114717(A119500(n+1))`
-/

namespace A119499.P14375014687245189861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (A119500 (n + 1)).toNat

end

end A119499.P14375014687245189861

/-! ## A119499.P6874974867162827558

`record[ratio[A119841(A193592(n))]]`
-/

namespace A119499.P6874974867162827558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119841 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119499.P6874974867162827558

/-! ## A119499.P2504354426049528812

`record[A114717(A008619(n))^and(1, n)]`
-/

namespace A119499.P2504354426049528812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (A008619 n).toNat ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119499.P2504354426049528812

