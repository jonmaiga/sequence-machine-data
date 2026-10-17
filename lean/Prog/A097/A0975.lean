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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A097503: Numbers k such that A000203(k) = sigma(k) is not divisible by 6.

The programs for A097503, the canonical program `A097503.P814692216769319230` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097503 has offset 1).

The definition of A097503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097503.P814692216769319230

`lt[gcd(6, A000203(n+1)), 6]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097503

/-- `lt[gcd(6, A000203(n+1)), 6]+1` -/
def P814692216769319230.Spec : Prop :=
  ∀ n, (P814692216769319230.a n : ℤ) = A097503 (n + 1)

theorem P814692216769319230.correct : P814692216769319230.Spec := by
  intro n
  simp only [A097503, Nat.add_sub_cancel]

end A097503

/-! ## A097503.P10548480950067319628

`∪[A028982(n+1), A329963(n+1)]`
-/

namespace A097503.P10548480950067319628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097503.P10548480950067319628

namespace A097503

/-- `∪[A028982(n+1), A329963(n+1)]` -/
def P10548480950067319628.Spec : Prop :=
  ∀ n, (P10548480950067319628.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P8390447834143799195

`∪[A067051(n+1), A329963(n+1)]`
-/

namespace A097503.P8390447834143799195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097503.P8390447834143799195

namespace A097503

/-- `∪[A067051(n+1), A329963(n+1)]` -/
def P8390447834143799195.Spec : Prop :=
  ∀ n, (P8390447834143799195.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P16541740170429508443

`record[(n+1)/A032852(val(A000203(n+1), 6)+1)]`
-/

namespace A097503.P16541740170429508443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032852 (SequenceMachineLib.valuation (A000203 (n + 1)).toNat 6 + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097503.P16541740170429508443

namespace A097503

/-- `record[(n+1)/A032852(val(A000203(n+1), 6)+1)]` -/
def P16541740170429508443.Spec : Prop :=
  ∀ n, P16541740170429508443.a n = (A097503 (n + 1) : ℚ)

end A097503

/-! ## A097503.P15009092802238123624

`lt[0, A084301(n+1)]+1`
-/

namespace A097503.P15009092802238123624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097503.P15009092802238123624

namespace A097503

/-- `lt[0, A084301(n+1)]+1` -/
def P15009092802238123624.Spec : Prop :=
  ∀ n, (P15009092802238123624.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P13182571979943153580

`record[gcd(n+1, val(∑{d}[n+1, #], 6))]`
-/

namespace A097503.P13182571979943153580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f2 n), d) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097503.P13182571979943153580

namespace A097503

/-- `record[gcd(n+1, val(∑{d}[n+1, #], 6))]` -/
def P13182571979943153580.Spec : Prop :=
  ∀ n, (P13182571979943153580.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P2280639073704902708

`lt[0, ∑{d}[n, #]%6]`
-/

namespace A097503.P2280639073704902708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097503.P2280639073704902708

namespace A097503

/-- `lt[0, ∑{d}[n, #]%6]` -/
def P2280639073704902708.Spec : Prop :=
  ∀ n, (P2280639073704902708.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P1323562532134942459

`lt[gcd(6, ∑{d}[n, #]), 4]`
-/

namespace A097503.P1323562532134942459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A097503.P1323562532134942459

namespace A097503

/-- `lt[gcd(6, ∑{d}[n, #]), 4]` -/
def P1323562532134942459.Spec : Prop :=
  ∀ n, (P1323562532134942459.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P6997753449879181972

`eq[A057427(n), A245477(A039653(n))]`
-/

namespace A097503.P6997753449879181972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097503.P6997753449879181972

namespace A097503

/-- `eq[A057427(n), A245477(A039653(n))]` -/
def P6997753449879181972.Spec : Prop :=
  ∀ n, (P6997753449879181972.a n : ℤ) = A097503 (n + 1)

end A097503

/-! ## A097503.P390838420343309427

`lt[A077959(∑{d}[n, #]), 1]`
-/

namespace A097503.P390838420343309427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A097503.P390838420343309427

namespace A097503

/-- `lt[A077959(∑{d}[n, #]), 1]` -/
def P390838420343309427.Spec : Prop :=
  ∀ n, (P390838420343309427.a n : ℤ) = A097503 (n + 1)

end A097503

/-!
# A097504: Denominator of b(n), where Sum_{k>=1} b(k)/k^r = 1/(Sum_{k>=1} H(k)/k^r). H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A097504, there is no canonical definition to state claims against.
-/

/-! ## A097504.P15089244210101615660

`A066678(A002805(n+1)/∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A097504.P15089244210101615660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066678 (SequenceMachineLib.roundAway ((A002805 (n + 1) : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))).toNat

end

end A097504.P15089244210101615660

/-! ## A097504.P5050163662173375343

`A002805(n+1)/A076269(A275734(n))`
-/

namespace A097504.P5050163662173375343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A076269 (A275734 n).toNat : ℚ)

end

end A097504.P5050163662173375343

/-! ## A097504.P6401714427467467138

`A162246(A366928(n+1))`
-/

namespace A097504.P6401714427467467138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (A366928 (n + 1)).toNat

end

end A097504.P6401714427467467138

/-!
# A097505: Triangle read by rows: T(n,k) = Sum_{j=1..k} Prime(n+j-1).

The programs for A097505, the canonical program `A097505.P1588586263477079278` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097505 has offset 1).

The definition of A097505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097505.P1588586263477079278

`A007504(A094727(n+1))-A007504(A003056(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A097505

/-- `A007504(A094727(n+1))-A007504(A003056(n))` -/
def P1588586263477079278.Spec : Prop :=
  ∀ n, P1588586263477079278.a n = A097505 (n + 1)

theorem P1588586263477079278.correct : P1588586263477079278.Spec := by
  intro n
  simp only [A097505, Nat.add_sub_cancel]

end A097505

/-! ## A097505.P9196727838470922989

`A194939(A245300(n)+1)`
-/

namespace A097505.P9196727838470922989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A245300 n + 1).toNat

end

end A097505.P9196727838470922989

namespace A097505

/-- `A194939(A245300(n)+1)` -/
def P9196727838470922989.Spec : Prop :=
  ∀ n, P9196727838470922989.a n = A097505 (n + 1)

end A097505

/-! ## A097505.P17555051925383202991

`A331835(A043569(n+1)*A059268(n))`
-/

namespace A097505.P17555051925383202991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (A043569 (n + 1) * A059268 n).toNat

end

end A097505.P17555051925383202991

namespace A097505

/-- `A331835(A043569(n+1)*A059268(n))` -/
def P17555051925383202991.Spec : Prop :=
  ∀ n, P17555051925383202991.a n = A097505 (n + 1)

end A097505

/-! ## A097505.P13581342834707795579

`A331835(2^A002262(n)*A043569(n+1))`
-/

namespace A097505.P13581342834707795579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n : ℤ) * (A043569 (n + 1) : ℚ))).toNat

end

end A097505.P13581342834707795579

namespace A097505

/-- `A331835(2^A002262(n)*A043569(n+1))` -/
def P13581342834707795579.Spec : Prop :=
  ∀ n, P13581342834707795579.a n = A097505 (n + 1)

end A097505

/-! ## A097505.P7612796389105038092

`A113580(A162711(n+1))`
-/

namespace A097505.P7612796389105038092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113580 (A162711 (n + 1)).toNat

end

end A097505.P7612796389105038092

namespace A097505

/-- `A113580(A162711(n+1))` -/
def P7612796389105038092.Spec : Prop :=
  ∀ n, P7612796389105038092.a n = A097505 (n + 1)

end A097505

/-!
# A097507: 24*a(n) counts the solid partitions of n that have no symmetry under any single or combined operations built from mirroring (F), rotation (T) or 4-D rotation (L).

The programs for A097507, there is no canonical definition to state claims against.
-/

/-! ## A097507.P6889730382293288471

`A307230(A054191(n))`
-/

namespace A097507.P6889730382293288471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307230 (A054191 n).toNat

end

end A097507.P6889730382293288471

/-! ## A097507.P17285667533079647427

`A307230(A054193(n+1))`
-/

namespace A097507.P17285667533079647427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307230 (A054193 (n + 1)).toNat

end

end A097507.P17285667533079647427

/-! ## A097507.P8368549995245502022

`A320313(A107385(n+1))`
-/

namespace A097507.P8368549995245502022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (A107385 (n + 1)).toNat

end

end A097507.P8368549995245502022

/-! ## A097507.P17074326234919409003

`A316468(A279785(n))-A279785(n)`
-/

namespace A097507.P17074326234919409003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (A279785 n).toNat - A279785 n

end

end A097507.P17074326234919409003

/-! ## A097507.P13788197711610188914

`A010422(A068036(n))`
-/

namespace A097507.P13788197711610188914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010422 (A068036 n).toNat

end

end A097507.P13788197711610188914

/-!
# A097508: a(n) = floor(n*(sqrt(2)-1)).

The programs for A097508, the canonical program `A097508.P15482133836038292803` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097508 has offset 0).

The definition of A097508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097508.P9674317466208008734

`floor((sqrt(2)-1)*n)`
-/

namespace A097508.P9674317466208008734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) - 1) * (n : ℝ)⌋

end

end A097508.P9674317466208008734

namespace A097508

/-- `floor((sqrt(2)-1)*n)` -/
def P9674317466208008734.Spec : Prop :=
  ∀ n, P9674317466208008734.a n = A097508 n

end A097508

/-! ## A097508.P15482133836038292803

`A001951(n)-n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097508

/-- `A001951(n)-n` -/
def P15482133836038292803.Spec : Prop :=
  ∀ n, P15482133836038292803.a n = A097508 n

theorem P15482133836038292803.correct : P15482133836038292803.Spec := by
  intro n
  simp only [A097508]

end A097508

/-! ## A097508.P15158298409690633633

`ceil(n*sqrt(2))%(n+1)`
-/

namespace A097508.P15158298409690633633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉ (n + 1 : ℤ)

end

end A097508.P15158298409690633633

namespace A097508

/-- `ceil(n*sqrt(2))%(n+1)` -/
def P15158298409690633633.Spec : Prop :=
  ∀ n, P15158298409690633633.a n = A097508 n

end A097508

/-! ## A097508.P13472485803221686674

`floor(n/cos(π/4))-n`
-/

namespace A097508.P13472485803221686674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.cos (Real.pi / 4)⌋ - (n : ℤ)

end

end A097508.P13472485803221686674

namespace A097508

/-- `floor(n/cos(π/4))-n` -/
def P13472485803221686674.Spec : Prop :=
  ∀ n, P13472485803221686674.a n = A097508 n

end A097508

/-! ## A097508.P1464599781384941046

`n-A195119(n)`
-/

namespace A097508.P1464599781384941046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A195119 n

end

end A097508.P1464599781384941046

namespace A097508

/-- `n-A195119(n)` -/
def P1464599781384941046.Spec : Prop :=
  ∀ n, P1464599781384941046.a n = A097508 n

end A097508

/-! ## A097508.P6961618302897459209

`∑[char[∑[A097509(n)]]]`
-/

namespace A097508.P6961618302897459209
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097508.P6961618302897459209

namespace A097508

/-- `∑[char[∑[A097509(n)]]]` -/
def P6961618302897459209.Spec : Prop :=
  ∀ n, (P6961618302897459209.a n : ℤ) = A097508 n

end A097508

/-! ## A097508.P4353303736058598708

`2*n-A195176(n)`
-/

namespace A097508.P4353303736058598708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A195176 n

end

end A097508.P4353303736058598708

namespace A097508

/-- `2*n-A195176(n)` -/
def P4353303736058598708.Spec : Prop :=
  ∀ n, P4353303736058598708.a n = A097508 n

end A097508

/-! ## A097508.P7329519232299323830

`∑[char[A080754(n+1)]]`
-/

namespace A097508.P7329519232299323830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097508.P7329519232299323830

namespace A097508

/-- `∑[char[A080754(n+1)]]` -/
def P7329519232299323830.Spec : Prop :=
  ∀ n, (P7329519232299323830.a n : ℤ) = A097508 n

end A097508

/-! ## A097508.P7432406780086599923

`∑[A285076(n+1)]-1`
-/

namespace A097508.P7432406780086599923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097508.P7432406780086599923

namespace A097508

/-- `∑[A285076(n+1)]-1` -/
def P7432406780086599923.Spec : Prop :=
  ∀ n, P7432406780086599923.a n = A097508 n

end A097508

/-! ## A097508.P1574533269889656705

`n-round(A195178(n)/2)`
-/

namespace A097508.P1574533269889656705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((A195178 n : ℚ) / 2)

end

end A097508.P1574533269889656705

namespace A097508

/-- `n-round(A195178(n)/2)` -/
def P1574533269889656705.Spec : Prop :=
  ∀ n, P1574533269889656705.a n = A097508 n

end A097508

/-! ## A097508.P9461891897618255110

`comp[A001952(n+1)]-n`
-/

namespace A097508.P9461891897618255110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A097508.P9461891897618255110

namespace A097508

/-- `comp[A001952(n+1)]-n` -/
def P9461891897618255110.Spec : Prop :=
  ∀ n, P9461891897618255110.a n = A097508 n

end A097508

/-! ## A097508.P11037798409432651027

`A188037(n)+a(n-1)` with `a(0)=0`
-/

namespace A097508.P11037798409432651027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188037 n + a (n - 1)

end

end A097508.P11037798409432651027

namespace A097508

/-- `A188037(n)+a(n-1)` -/
def P11037798409432651027.Spec : Prop :=
  ∀ n, P11037798409432651027.a n = A097508 n

end A097508

/-! ## A097508.P13037060307295688497

`∑[char[A003151(n+1)+1]]`
-/

namespace A097508.P13037060307295688497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097508.P13037060307295688497

namespace A097508

/-- `∑[char[A003151(n+1)+1]]` -/
def P13037060307295688497.Spec : Prop :=
  ∀ n, (P13037060307295688497.a n : ℤ) = A097508 n

end A097508

/-! ## A097508.P8578359427753299163

`∑[char[A285075(n+2)-1]]`
-/

namespace A097508.P8578359427753299163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097508.P8578359427753299163

namespace A097508

/-- `∑[char[A285075(n+2)-1]]` -/
def P8578359427753299163.Spec : Prop :=
  ∀ n, (P8578359427753299163.a n : ℤ) = A097508 n

end A097508

/-! ## A097508.P2062248182132230933

`∑[char[A285078(n+2)-1]]`
-/

namespace A097508.P2062248182132230933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097508.P2062248182132230933

namespace A097508

/-- `∑[char[A285078(n+2)-1]]` -/
def P2062248182132230933.Spec : Prop :=
  ∀ n, (P2062248182132230933.a n : ℤ) = A097508 n

end A097508

/-! ## A097508.P3777348760673417983

`∑[char[A188040(2*(n+1))]]`
-/

namespace A097508.P3777348760673417983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097508.P3777348760673417983

namespace A097508

/-- `∑[char[A188040(2*(n+1))]]` -/
def P3777348760673417983.Spec : Prop :=
  ∀ n, (P3777348760673417983.a n : ℤ) = A097508 n

end A097508

/-! ## A097508.P5535055282686286939

`comp[∑[A276864(n+1)]]-n`
-/

namespace A097508.P5535055282686286939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A097508.P5535055282686286939

namespace A097508

/-- `comp[∑[A276864(n+1)]]-n` -/
def P5535055282686286939.Spec : Prop :=
  ∀ n, P5535055282686286939.a n = A097508 n

end A097508

/-!
# A097510: Leftmost terms of the triangle A097825.

The programs for A097510, there is no canonical definition to state claims against.
-/

/-! ## A097510.P4666500245690406739

`A097825(∑[n]+1)`
-/

namespace A097510.P4666500245690406739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097510.P4666500245690406739

/-! ## A097510.P3753650202319655288

`A097825(A000124(n))%(n+2)`
-/

namespace A097510.P3753650202319655288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097825 (A000124 n).toNat) (n + 2 : ℤ)

end

end A097510.P3753650202319655288

/-! ## A097510.P651341961254210315

`lcm(A097825(A000124(n)), A158388(n))`
-/

namespace A097510.P651341961254210315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097825 (A000124 n).toNat) (A158388 n)

end

end A097510.P651341961254210315

/-! ## A097510.P16771745211118671679

`A097825(A000124(n))+A063524(n+3)`
-/

namespace A097510.P16771745211118671679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (A000124 n).toNat + A063524 (n + 3)

end

end A097510.P16771745211118671679

/-! ## A097510.P617333121377939733

`A131533(3*n)+A097825(A000124(n))`
-/

namespace A097510.P617333121377939733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 (3 * n) + A097825 (A000124 n).toNat

end

end A097510.P617333121377939733

/-! ## A097510.P4188343401142677215

`A097825(A000124(n))+A014072(3*n+1)`
-/

namespace A097510.P4188343401142677215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (A000124 n).toNat + A014072 (3 * n + 1)

end

end A097510.P4188343401142677215

/-! ## A097510.P16401343185699208090

`A097825(A000124(n))*A158388(2*n+1)`
-/

namespace A097510.P16401343185699208090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (A000124 n).toNat * A158388 (2 * n + 1)

end

end A097510.P16401343185699208090

/-! ## A097510.P3795305183287043733

`A217156(A193592(n))+A097825(A000124(n))`
-/

namespace A097510.P3795305183287043733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (A193592 n).toNat + A097825 (A000124 n).toNat

end

end A097510.P3795305183287043733

/-!
# A097511: Rightmost terms of the triangle A097825.

The programs for A097511, there is no canonical definition to state claims against.
-/

/-! ## A097511.P15062246061051118290

`A097825(∑[n+1])`
-/

namespace A097511.P15062246061051118290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097511.P15062246061051118290

/-! ## A097511.P8507257568934636231

`A097825(A000217(n+1))%(n+3)`
-/

namespace A097511.P8507257568934636231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097825 (A000217 (n + 1)).toNat) (n + 3 : ℤ)

end

end A097511.P8507257568934636231

/-! ## A097511.P14730362220171896546

`abs(A097825(Δ[A000292(n)])-1)+1`
-/

namespace A097511.P14730362220171896546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097825 (f1 (n + 1) - f1 n).toNat - 1| + 1

end

end A097511.P14730362220171896546

/-! ## A097511.P4432745722440472030

`A097825(A000217(n+1))^A178334(n)`
-/

namespace A097511.P4432745722440472030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097825 (A000217 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A097511.P4432745722440472030

/-! ## A097511.P9709058468030424162

`(A097825(Δ[A000292(n)])-1)%A039000(n+1)+1`
-/

namespace A097511.P9709058468030424162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097825 (f1 (n + 1) - f1 n).toNat - 1) (A039000 (n + 1)) + 1

end

end A097511.P9709058468030424162

/-! ## A097511.P18043004505157548436

`A097825(Δ[A000292(n)])+A000027(n+1)-(n+1)`
-/

namespace A097511.P18043004505157548436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (f1 (n + 1) - f1 n).toNat + A000027 (n + 1) - (n + 1 : ℤ)

end

end A097511.P18043004505157548436

/-!
# A097512: a(n) = 6*Lucas(2n) - Fibonacci(2n+2).

The programs for A097512, the canonical program `A097512.P1554634005254621627` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097512 has offset 0).

The definition of A097512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097512.P1554634005254621627

`3*a(n-1)-a(n-2)` with `a(0)=11, a(1)=15`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097512

/-- `3*a(n-1)-a(n-2)` -/
def P1554634005254621627.Spec : Prop :=
  ∀ n, P1554634005254621627.a n = A097512 n

theorem P1554634005254621627.correct : P1554634005254621627.Spec := by
  intro n
  simp only [A097512]

end A097512

/-! ## A097512.P4708810114870972344

`8*A005248(n)-A005248(n+1)-2*A001519(n)`
-/

namespace A097512.P4708810114870972344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A005248 n - A005248 (n + 1) - 2 * A001519 n

end

end A097512.P4708810114870972344

namespace A097512

/-- `8*A005248(n)-A005248(n+1)-2*A001519(n)` -/
def P4708810114870972344.Spec : Prop :=
  ∀ n, P4708810114870972344.a n = A097512 n

end A097512

/-! ## A097512.P16021081804974117206

`A396201(2*n)+A190996(2*n)`
-/

namespace A097512.P16021081804974117206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396201 (2 * n) + A190996 (2 * n)

end

end A097512.P16021081804974117206

namespace A097512

/-- `A396201(2*n)+A190996(2*n)` -/
def P16021081804974117206.Spec : Prop :=
  ∀ n, P16021081804974117206.a n = A097512 n

end A097512

/-! ## A097512.P18140122470576459509

`A206611(2*n+1)-A001519(n+2)`
-/

namespace A097512.P18140122470576459509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (2 * n + 1) - A001519 (n + 2)

end

end A097512.P18140122470576459509

namespace A097512

/-- `A206611(2*n+1)-A001519(n+2)` -/
def P18140122470576459509.Spec : Prop :=
  ∀ n, P18140122470576459509.a n = A097512 n

end A097512

/-! ## A097512.P11627710225908836391

`A022101(2*n+1)-A022091(2*n)`
-/

namespace A097512.P11627710225908836391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (2 * n + 1) - A022091 (2 * n)

end

end A097512.P11627710225908836391

namespace A097512

/-- `A022101(2*n+1)-A022091(2*n)` -/
def P11627710225908836391.Spec : Prop :=
  ∀ n, P11627710225908836391.a n = A097512 n

end A097512

/-! ## A097512.P11389130515595283984

`A022345(2*n+1)-A022090(2*n)`
-/

namespace A097512.P11389130515595283984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (2 * n + 1) - A022090 (2 * n)

end

end A097512.P11389130515595283984

namespace A097512

/-- `A022345(2*n+1)-A022090(2*n)` -/
def P11389130515595283984.Spec : Prop :=
  ∀ n, P11389130515595283984.a n = A097512 n

end A097512

/-! ## A097512.P1653115923869907106

`A022346(2*n+1)-A022098(2*n)`
-/

namespace A097512.P1653115923869907106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (2 * n + 1) - A022098 (2 * n)

end

end A097512.P1653115923869907106

namespace A097512

/-- `A022346(2*n+1)-A022098(2*n)` -/
def P1653115923869907106.Spec : Prop :=
  ∀ n, P1653115923869907106.a n = A097512 n

end A097512

/-! ## A097512.P12649732845203885318

`A206609(2*n+1)-A001060(2*n)`
-/

namespace A097512.P12649732845203885318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (2 * n + 1) - A001060 (2 * n)

end

end A097512.P12649732845203885318

namespace A097512

/-- `A206609(2*n+1)-A001060(2*n)` -/
def P12649732845203885318.Spec : Prop :=
  ∀ n, P12649732845203885318.a n = A097512 n

end A097512

/-! ## A097512.P6558104452328069681

`A022346(2*n+1)-(A022312(2*n)+1)`
-/

namespace A097512.P6558104452328069681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (2 * n + 1) - (A022312 (2 * n) + 1)

end

end A097512.P6558104452328069681

namespace A097512

/-- `A022346(2*n+1)-(A022312(2*n)+1)` -/
def P6558104452328069681.Spec : Prop :=
  ∀ n, P6558104452328069681.a n = A097512 n

end A097512

/-! ## A097512.P9404762287080317966

`A206423(2*n+1)-A000032(2*n+1)`
-/

namespace A097512.P9404762287080317966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (2 * n + 1) - A000032 (2 * n + 1)

end

end A097512.P9404762287080317966

namespace A097512

/-- `A206423(2*n+1)-A000032(2*n+1)` -/
def P9404762287080317966.Spec : Prop :=
  ∀ n, P9404762287080317966.a n = A097512 n

end A097512

/-! ## A097512.P1155743678949869763

`A206423(2*n+1)-A000204(2*n+1)`
-/

namespace A097512.P1155743678949869763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (2 * n + 1) - A000204 (2 * n + 1)

end

end A097512.P1155743678949869763

namespace A097512

/-- `A206423(2*n+1)-A000204(2*n+1)` -/
def P1155743678949869763.Spec : Prop :=
  ∀ n, P1155743678949869763.a n = A097512 n

end A097512

/-! ## A097512.P11254362165895191006

`A206609(2*n+1)-A013655(2*n+1)`
-/

namespace A097512.P11254362165895191006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (2 * n + 1) - A013655 (2 * n + 1)

end

end A097512.P11254362165895191006

namespace A097512

/-- `A206609(2*n+1)-A013655(2*n+1)` -/
def P11254362165895191006.Spec : Prop :=
  ∀ n, P11254362165895191006.a n = A097512 n

end A097512

/-! ## A097512.P17968101984903712670

`A206610(2*n+1)-A133586(2*(n+1))`
-/

namespace A097512.P17968101984903712670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (2 * n + 1) - A133586 (2 * (n + 1))

end

end A097512.P17968101984903712670

namespace A097512

/-- `A206610(2*n+1)-A133586(2*(n+1))` -/
def P17968101984903712670.Spec : Prop :=
  ∀ n, P17968101984903712670.a n = A097512 n

end A097512

/-! ## A097512.P11465540138397743646

`2*A022089(2*n+1)-A022098(2*n)`
-/

namespace A097512.P11465540138397743646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022089 (2 * n + 1) - A022098 (2 * n)

end

end A097512.P11465540138397743646

namespace A097512

/-- `2*A022089(2*n+1)-A022098(2*n)` -/
def P11465540138397743646.Spec : Prop :=
  ∀ n, P11465540138397743646.a n = A097512 n

end A097512

/-! ## A097512.P16353778866490524975

`A022101(2*n+1)-2*A022087(2*n)`
-/

namespace A097512.P16353778866490524975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (2 * n + 1) - 2 * A022087 (2 * n)

end

end A097512.P16353778866490524975

namespace A097512

/-- `A022101(2*n+1)-2*A022087(2*n)` -/
def P16353778866490524975.Spec : Prop :=
  ∀ n, P16353778866490524975.a n = A097512 n

end A097512

/-! ## A097512.P16132681114495738038

`A022101(2*n+1)-A022350(2*n)/2`
-/

namespace A097512.P16132681114495738038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022101 (2 * n + 1) : ℚ) - (A022350 (2 * n) : ℚ) / 2

end

end A097512.P16132681114495738038

namespace A097512

/-- `A022101(2*n+1)-A022350(2*n)/2` -/
def P16132681114495738038.Spec : Prop :=
  ∀ n, P16132681114495738038.a n = (A097512 n : ℚ)

end A097512

/-! ## A097512.P16920790204154292051

`A206423(2*n+1)-A022112(2*n)/2`
-/

namespace A097512.P16920790204154292051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206423 (2 * n + 1) : ℚ) - (A022112 (2 * n) : ℚ) / 2

end

end A097512.P16920790204154292051

namespace A097512

/-- `A206423(2*n+1)-A022112(2*n)/2` -/
def P16920790204154292051.Spec : Prop :=
  ∀ n, P16920790204154292051.a n = (A097512 n : ℚ)

end A097512

/-! ## A097512.P17680488217977104526

`A206608(2*n+1)-2*A000032(2*n+1)`
-/

namespace A097512.P17680488217977104526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (2 * n + 1) - 2 * A000032 (2 * n + 1)

end

end A097512.P17680488217977104526

namespace A097512

/-- `A206608(2*n+1)-2*A000032(2*n+1)` -/
def P17680488217977104526.Spec : Prop :=
  ∀ n, P17680488217977104526.a n = A097512 n

end A097512

/-! ## A097512.P16830564820612638331

`A206612(2*n+1)-2*A000045(2*n+1)`
-/

namespace A097512.P16830564820612638331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (2 * n + 1) - 2 * A000045 (2 * n + 1)

end

end A097512.P16830564820612638331

namespace A097512

/-- `A206612(2*n+1)-2*A000045(2*n+1)` -/
def P16830564820612638331.Spec : Prop :=
  ∀ n, P16830564820612638331.a n = A097512 n

end A097512

/-!
# A097513: Number of ways to label the vertices of the octahedron (or faces of the cube) with nonnegative integers summing to n, where labelings that differ only by rotation or reflection are considered the same.

The programs for A097513, the canonical program `A097513.P517344334834478891` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097513 has offset 0).

The definition of A097513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097513.P517344334834478891

`A003082(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A097513

/-- `A003082(n)-a(n-3)` -/
def P517344334834478891.Spec : Prop :=
  ∀ n, P517344334834478891.a n = A097513 n

theorem P517344334834478891.correct : P517344334834478891.Spec := by
  intro n
  simp only [A097513]

end A097513

/-! ## A097513.P893952565850143491

`A275416(∑[n+2]+4)`
-/

namespace A097513.P893952565850143491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A097513.P893952565850143491

namespace A097513

/-- `A275416(∑[n+2]+4)` -/
def P893952565850143491.Spec : Prop :=
  ∀ n, P893952565850143491.a n = A097513 n

end A097513

/-! ## A097513.P14859204278509196658

`or(C(C(2, n), 2), A275416(A167614(n+1)))`
-/

namespace A097513.P14859204278509196658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (Nat.choose 2 n) 2 : ℤ) (A275416 (A167614 (n + 1)).toNat)

end

end A097513.P14859204278509196658

namespace A097513

/-- `or(C(C(2, n), 2), A275416(A167614(n+1)))` -/
def P14859204278509196658.Spec : Prop :=
  ∀ n, P14859204278509196658.a n = A097513 n

end A097513

/-! ## A097513.P6194118184354933218

`or(A000007(n), A275416(A167614(n+1)))`
-/

namespace A097513.P6194118184354933218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275416 (A167614 (n + 1)).toNat)

end

end A097513.P6194118184354933218

namespace A097513

/-- `or(A000007(n), A275416(A167614(n+1)))` -/
def P6194118184354933218.Spec : Prop :=
  ∀ n, P6194118184354933218.a n = A097513 n

end A097513

/-! ## A097513.P12635507786082196176

`A054123(C(2, n²))*A275416(A167614(n+1))`
-/

namespace A097513.P12635507786082196176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (Nat.choose 2 (n ^ 2)) * A275416 (A167614 (n + 1)).toNat

end

end A097513.P12635507786082196176

namespace A097513

/-- `A054123(C(2, n²))*A275416(A167614(n+1))` -/
def P12635507786082196176.Spec : Prop :=
  ∀ n, P12635507786082196176.a n = A097513 n

end A097513

/-! ## A097513.P9485472091720382865

`A112661(C(2, n²))*A275416(A167614(n+1))`
-/

namespace A097513.P9485472091720382865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112661 (Nat.choose 2 (n ^ 2)) * A275416 (A167614 (n + 1)).toNat

end

end A097513.P9485472091720382865

namespace A097513

/-- `A112661(C(2, n²))*A275416(A167614(n+1))` -/
def P9485472091720382865.Spec : Prop :=
  ∀ n, P9485472091720382865.a n = A097513 n

end A097513

/-! ## A097513.P1779985748614249954

`A275416(A167614(n+1))%A224465(n)`
-/

namespace A097513.P1779985748614249954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275416 (A167614 (n + 1)).toNat) (A224465 n)

end

end A097513.P1779985748614249954

namespace A097513

/-- `A275416(A167614(n+1))%A224465(n)` -/
def P1779985748614249954.Spec : Prop :=
  ∀ n, P1779985748614249954.a n = A097513 n

end A097513

/-!
# A097514: Number of partitions of an n-set without blocks of size 2.

The programs for A097514, there is no canonical definition to state claims against.
-/

/-! ## A097514.P9959734090516188369

`A124498(A002620(n+1))`
-/

namespace A097514.P9959734090516188369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124498 (A002620 (n + 1)).toNat

end

end A097514.P9959734090516188369

/-! ## A097514.P10825094921158184618

`A124498(A076921(n+1))`
-/

namespace A097514.P10825094921158184618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124498 (A076921 (n + 1)).toNat

end

end A097514.P10825094921158184618

/-! ## A097514.P15255177060143514100

`A124498(A182531(n+1))`
-/

namespace A097514.P15255177060143514100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124498 (A182531 (n + 1)).toNat

end

end A097514.P15255177060143514100

/-! ## A097514.P3122823555982938387

`A124498(∑[abs(A001057(n))])`
-/

namespace A097514.P3122823555982938387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097514.P3122823555982938387

/-! ## A097514.P17487320813786635763

`A124498(A000217(n)-A002620(n))`
-/

namespace A097514.P17487320813786635763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124498 (A000217 n - A002620 n).toNat

end

end A097514.P17487320813786635763

/-! ## A097514.P6083230755576959012

`A000110(n)-A327885(n)`
-/

namespace A097514.P6083230755576959012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A327885 n

end

end A097514.P6083230755576959012

/-! ## A097514.P15601707027799077866

`Δ[A005001(n)]-A327885(n)`
-/

namespace A097514.P15601707027799077866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A327885 n

end

end A097514.P15601707027799077866

/-! ## A097514.P12603473632871054403

`A011971(A000217(n))-A327885(n)`
-/

namespace A097514.P12603473632871054403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A327885 n

end

end A097514.P12603473632871054403

/-! ## A097514.P11710940795830239610

`A011971(A161680(n+1))-A327885(n)`
-/

namespace A097514.P11710940795830239610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A161680 (n + 1)).toNat - A327885 n

end

end A097514.P11710940795830239610

/-! ## A097514.P7506722948496236992

`A000296(n+1)+A000296(n)-A327885(n)`
-/

namespace A097514.P7506722948496236992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) + (A000296 n - A327885 n)

end

end A097514.P7506722948496236992

/-!
# A097515: a(n) = (largest prime < 10^n) + (smallest prime > 10^n).

The programs for A097515, there is no canonical definition to state claims against.
-/

/-! ## A097515.P6846238364351390918

`A003618(n+1)+A003617(n+2)`
-/

namespace A097515.P6846238364351390918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) + A003617 (n + 2)

end

end A097515.P6846238364351390918

/-! ## A097515.P1809366786438545898

`A069588(n+2)+A003618(n+1)`
-/

namespace A097515.P1809366786438545898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069588 (n + 2) + A003618 (n + 1)

end

end A097515.P1809366786438545898

/-! ## A097515.P17577190961009152573

`A038804(n+1)+2*A003618(n+1)`
-/

namespace A097515.P17577190961009152573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1) + 2 * A003618 (n + 1)

end

end A097515.P17577190961009152573

/-! ## A097515.P9975674953497186275

`A101592(2*(n+1))+A003617(n+2)`
-/

namespace A097515.P9975674953497186275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (n + 1)) + A003617 (n + 2)

end

end A097515.P9975674953497186275

/-! ## A097515.P15819818577139405124

`A132153(2*(n+1))+A003617(n+2)`
-/

namespace A097515.P15819818577139405124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * (n + 1)) + A003617 (n + 2)

end

end A097515.P15819818577139405124

/-!
# A097516: a(n) counts the solid partitions of n that are symmetric under all of the operations mirroring (F), rotation (T) and 4-D rotation (L).

The programs for A097516, there is no canonical definition to state claims against.
-/

/-! ## A097516.P10368681502397292502

`and(A030229(n+1), A043289(A325077(2*n+3)))`
-/

namespace A097516.P10368681502397292502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030229 (n + 1)) (A043289 (A325077 (2 * n + 3)).toNat)

end

end A097516.P10368681502397292502

/-! ## A097516.P6562128345277152449

`val(A327924(or(12, A024642(n))), 2)`
-/

namespace A097516.P6562128345277152449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327924 (Int.lor 12 (A024642 n)).toNat).toNat 2

end

end A097516.P6562128345277152449

/-! ## A097516.P11210262956476419791

`A000720(A327924(or(12, A024642(n))))`
-/

namespace A097516.P11210262956476419791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A327924 (Int.lor 12 (A024642 n)).toNat).toNat

end

end A097516.P11210262956476419791

/-! ## A097516.P15475049565350462918

`and(A000125(A063866(n)), A325599(n+1))`
-/

namespace A097516.P15475049565350462918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000125 (A063866 n).toNat) (A325599 (n + 1))

end

end A097516.P15475049565350462918

/-! ## A097516.P2816242554103463966

`A069843(or(A000045(n), A001605(n+1)))`
-/

namespace A097516.P2816242554103463966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069843 (Int.lor (A000045 n) (A001605 (n + 1))).toNat

end

end A097516.P2816242554103463966

/-!
# A097517: Consider the difference (A033873(k)) between the smallest prime > 10^k and 10^k; sequence lists the successive values of A033873(k) which are primes.

The programs for A097517, there is no canonical definition to state claims against.
-/

/-! ## A097517.P4279546811953838041

`p?[A033873(n)]`
-/

namespace A097517.P4279546811953838041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097517.P4279546811953838041

/-! ## A097517.P17358296617349396883

`p?[A272006(n+1)+1]`
-/

namespace A097517.P17358296617349396883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097517.P17358296617349396883

/-! ## A097517.P11670283281516063419

`filter[A033873(n), A010051(#)]`
-/

namespace A097517.P11670283281516063419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097517.P11670283281516063419

/-! ## A097517.P17519318781957966398

`filter[A033873(n), A257531(#)]`
-/

namespace A097517.P17519318781957966398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A097517.P17519318781957966398

/-! ## A097517.P12017824910288618859

`filter[A033873(n), A323153(#)]`
-/

namespace A097517.P12017824910288618859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A097517.P12017824910288618859

/-! ## A097517.P2533170330598530984

`filter[A033873(n), A327861(#)]`
-/

namespace A097517.P2533170330598530984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A097517.P2533170330598530984

/-! ## A097517.P4861274724539457894

`filter[A033873(n), A353670(#)]`
-/

namespace A097517.P4861274724539457894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A097517.P4861274724539457894

/-! ## A097517.P16788684835905219923

`filter[A033873(n), A354817(#)]`
-/

namespace A097517.P16788684835905219923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A097517.P16788684835905219923

/-! ## A097517.P3551566591224026602

`filter[A033873(n), A379969(#)]`
-/

namespace A097517.P3551566591224026602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A097517.P3551566591224026602

/-! ## A097517.P3741757947069245649

`p?[A004442(A272006(n+1))]`
-/

namespace A097517.P3741757947069245649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A272006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097517.P3741757947069245649

/-!
# A097518: Zero-free Harshad left truncatable numbers.

The programs for A097518, there is no canonical definition to state claims against.
-/

/-! ## A097518.P7531174503548960283

`record[A097569(n+1)%A185869(n+1)]`
-/

namespace A097518.P7531174503548960283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097569 (n + 1)) (A185869 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097518.P7531174503548960283

/-! ## A097518.P11840534933839568936

`A097569(n+1)-A185284(A332579(n))`
-/

namespace A097518.P11840534933839568936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (n + 1) - A185284 (A332579 n).toNat

end

end A097518.P11840534933839568936

/-! ## A097518.P1356365768955665782

`record[A097569(n+1)%A006218(A020705(n))]`
-/

namespace A097518.P1356365768955665782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097569 (n + 1)) (A006218 (A020705 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097518.P1356365768955665782

/-! ## A097518.P6683291015822712491

`A217973(n+1)+A102681(A199832(n+1))`
-/

namespace A097518.P6683291015822712491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1) + A102681 (A199832 (n + 1)).toNat

end

end A097518.P6683291015822712491

/-! ## A097518.P4138716675717697157

`A288707(A196856(n+1))+A217973(n+1)`
-/

namespace A097518.P4138716675717697157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288707 (A196856 (n + 1)).toNat + A217973 (n + 1)

end

end A097518.P4138716675717697157

/-!
# A097519: Prime differences between nextprime(2^n) and 2^n.

The programs for A097519, the canonical program `A097519.P2332801550437158901` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097519 has offset 1).

The definition of A097519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097519.P2332801550437158901

`p?[A013597(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097519

/-- `p?[A013597(n)]` -/
def P2332801550437158901.Spec : Prop :=
  ∀ n, P2332801550437158901.a n = A097519 (n + 1)

theorem P2332801550437158901.correct : P2332801550437158901.Spec := by
  intro n
  simp only [A097519, Nat.add_sub_cancel]

end A097519

/-! ## A097519.P9945805890390526480

`p?[A037035(n)+1]`
-/

namespace A097519.P9945805890390526480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P9945805890390526480

namespace A097519

/-- `p?[A037035(n)+1]` -/
def P9945805890390526480.Spec : Prop :=
  ∀ n, P9945805890390526480.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P16401497919694166375

`p?[A092131(n+1)]`
-/

namespace A097519.P16401497919694166375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P16401497919694166375

namespace A097519

/-- `p?[A092131(n+1)]` -/
def P16401497919694166375.Spec : Prop :=
  ∀ n, P16401497919694166375.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P7951994917946587014

`p?[A004442(A037035(n))]`
-/

namespace A097519.P7951994917946587014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A037035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P7951994917946587014

namespace A097519

/-- `p?[A004442(A037035(n))]` -/
def P7951994917946587014.Spec : Prop :=
  ∀ n, P7951994917946587014.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P1703043492339002516

`filter[A013597(n), A010051(#)]`
-/

namespace A097519.P1703043492339002516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097519.P1703043492339002516

namespace A097519

/-- `filter[A013597(n), A010051(#)]` -/
def P1703043492339002516.Spec : Prop :=
  ∀ n, P1703043492339002516.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P1291760774780629729

`filter[A013597(n), A323153(#)]`
-/

namespace A097519.P1291760774780629729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A097519.P1291760774780629729

namespace A097519

/-- `filter[A013597(n), A323153(#)]` -/
def P1291760774780629729.Spec : Prop :=
  ∀ n, P1291760774780629729.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P14088880481001958068

`filter[A013597(n), A327861(#)]`
-/

namespace A097519.P14088880481001958068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A097519.P14088880481001958068

namespace A097519

/-- `filter[A013597(n), A327861(#)]` -/
def P14088880481001958068.Spec : Prop :=
  ∀ n, P14088880481001958068.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P4034735246513819285

`filter[A013597(n), A353670(#)]`
-/

namespace A097519.P4034735246513819285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A097519.P4034735246513819285

namespace A097519

/-- `filter[A013597(n), A353670(#)]` -/
def P4034735246513819285.Spec : Prop :=
  ∀ n, P4034735246513819285.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P15349236868351941835

`filter[A013597(n), A379969(#)]`
-/

namespace A097519.P15349236868351941835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A097519.P15349236868351941835

namespace A097519

/-- `filter[A013597(n), A379969(#)]` -/
def P15349236868351941835.Spec : Prop :=
  ∀ n, P15349236868351941835.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P800045050602466167

`p?[xor(A037035(n), A057427(n))]`
-/

namespace A097519.P800045050602466167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037035 n) (A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P800045050602466167

namespace A097519

/-- `p?[xor(A037035(n), A057427(n))]` -/
def P800045050602466167.Spec : Prop :=
  ∀ n, P800045050602466167.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P5354857142549298342

`filter[A092131(n+2), A010051(#)]`
-/

namespace A097519.P5354857142549298342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097519.P5354857142549298342

namespace A097519

/-- `filter[A092131(n+2), A010051(#)]` -/
def P5354857142549298342.Spec : Prop :=
  ∀ n, P5354857142549298342.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P13997745910811795390

`p?[A058249(n+1)-A013603(n+1)]`
-/

namespace A097519.P13997745910811795390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (n + 1) - A013603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P13997745910811795390

namespace A097519

/-- `p?[A058249(n+1)-A013603(n+1)]` -/
def P13997745910811795390.Spec : Prop :=
  ∀ n, P13997745910811795390.a n = A097519 (n + 1)

end A097519

/-! ## A097519.P13970937772573586412

`p?[A014210(n)-2^n]`
-/

namespace A097519.P13970937772573586412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P13970937772573586412

namespace A097519

/-- `p?[A014210(n)-2^n]` -/
def P13970937772573586412.Spec : Prop :=
  ∀ n, P13970937772573586412.a n = A097519 (n + 1)

end A097519

/-!
# A097520: Numbers of the form p^11 + 11^p for p prime.

The programs for A097520, there is no canonical definition to state claims against.
-/

/-! ## A097520.P14526846526729132964

`A177069(p?[comp[n²]])`
-/

namespace A097520.P14526846526729132964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177069 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097520.P14526846526729132964

/-! ## A097520.P4910895890322037994

`A177069(A000040(n+1))`
-/

namespace A097520.P4910895890322037994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177069 (A000040 (n + 1)).toNat

end

end A097520.P4910895890322037994

/-! ## A097520.P17857515802862903738

`A177069(record[A006530(n+2)])`
-/

namespace A097520.P17857515802862903738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097520.P17857515802862903738

/-! ## A097520.P356615964248725713

`A177069(record[A014963(n+2)])`
-/

namespace A097520.P356615964248725713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097520.P356615964248725713

/-! ## A097520.P10381296579144005074

`A177069(record[A020639(n+2)])`
-/

namespace A097520.P10381296579144005074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097520.P10381296579144005074

/-!
# A097521: Difference between F(n) = 2^(2^n)+1 and nextprime(F(n)) where F(n) is the n-th Fermat Number.

The programs for A097521, there is no canonical definition to state claims against.
-/

/-! ## A097521.P13380462562888082264

`A264050(2^n)-1`
-/

namespace A097521.P13380462562888082264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264050 (2 ^ n) - 1

end

end A097521.P13380462562888082264

/-! ## A097521.P12298963604676454005

`A233583(A264050(2^n))`
-/

namespace A097521.P12298963604676454005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A264050 (2 ^ n)).toNat

end

end A097521.P12298963604676454005

/-! ## A097521.P11502755666585537389

`xor(1, A264050(A000079(n)))`
-/

namespace A097521.P11502755666585537389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A264050 (A000079 n).toNat)

end

end A097521.P11502755666585537389

/-! ## A097521.P1479305620525492873

`xor(1, A264050(A008863(n)))`
-/

namespace A097521.P1479305620525492873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A264050 (A008863 n).toNat)

end

end A097521.P1479305620525492873

/-! ## A097521.P4093645769014698629

`xor(1, A264050(A171559(n)))`
-/

namespace A097521.P4093645769014698629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A264050 (A171559 n).toNat)

end

end A097521.P4093645769014698629

/-!
# A097523: a(n) = least k such that k - prime(n) and k + prime(n) are both prime.

The programs for A097523, there is no canonical definition to state claims against.
-/

/-! ## A097523.P15097344878381809722

`A087711(A000040(n+1))`
-/

namespace A097523.P15097344878381809722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (A000040 (n + 1)).toNat

end

end A097523.P15097344878381809722

/-! ## A097523.P15833870374301588038

`A073703(n+1)+Δ[A007504(n)]`
-/

namespace A097523.P15833870374301588038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + (f1 (n + 1) - f1 n)

end

end A097523.P15833870374301588038

/-! ## A097523.P8343596139150088209

`A073703(n+1)+A000040(n+1)`
-/

namespace A097523.P8343596139150088209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + A000040 (n + 1)

end

end A097523.P8343596139150088209

/-! ## A097523.P5973622818597822199

`A073704(n+1)-A000040(n+1)`
-/

namespace A097523.P5973622818597822199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (n + 1) - A000040 (n + 1)

end

end A097523.P5973622818597822199

/-! ## A097523.P15213135816435064297

`A073703(n+1)+abs(A273960(n+1))`
-/

namespace A097523.P15213135816435064297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + |A273960 (n + 1)|

end

end A097523.P15213135816435064297

/-! ## A097523.P10176761562025106733

`A073703(n+1)+∑[A054541(n+1)]`
-/

namespace A097523.P10176761562025106733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097523.P10176761562025106733

/-! ## A097523.P7177394518175242248

`A052147(n+1)+A073703(n+1)-2`
-/

namespace A097523.P7177394518175242248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (A073703 (n + 1) - 2)

end

end A097523.P7177394518175242248

/-! ## A097523.P14907410711193533879

`A073703(n+1)+A113935(n+1)-3`
-/

namespace A097523.P14907410711193533879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + (A113935 (n + 1) - 3)

end

end A097523.P14907410711193533879

/-! ## A097523.P9196160182742733909

`(A073704(n+1)+A073703(n+1))/2`
-/

namespace A097523.P9196160182742733909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073704 (n + 1) + A073703 (n + 1) : ℚ) / 2

end

end A097523.P9196160182742733909

/-! ## A097523.P10194881734133440251

`A073703(n+1)+A100484(n+1)/2`
-/

namespace A097523.P10194881734133440251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073703 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A097523.P10194881734133440251

/-! ## A097523.P16576969720714260046

`A073704(n+1)-A100484(n+1)/2`
-/

namespace A097523.P16576969720714260046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073704 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A097523.P16576969720714260046

/-! ## A097523.P12160921750521201249

`A000040(n+1)+A190664(n+1)/A073704(n+1)`
-/

namespace A097523.P12160921750521201249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A190664 (n + 1) : ℚ) / (A073704 (n + 1) : ℚ)

end

end A097523.P12160921750521201249

/-! ## A097523.P4988499057023075991

`A073703(n+1)+A008578(n+2)`
-/

namespace A097523.P4988499057023075991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + A008578 (n + 2)

end

end A097523.P4988499057023075991

/-! ## A097523.P16812478076816385188

`A073704(n+1)-A008578(n+2)`
-/

namespace A097523.P16812478076816385188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (n + 1) - A008578 (n + 2)

end

end A097523.P16812478076816385188

/-! ## A097523.P5878191708860019444

`A073703(n+1)+p?[A000961(n+1)]`
-/

namespace A097523.P5878191708860019444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097523.P5878191708860019444

/-! ## A097523.P8683587914963974767

`A073703(n+1)+record[A020482(n+2)]`
-/

namespace A097523.P8683587914963974767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097523.P8683587914963974767

/-! ## A097523.P6909575638595310938

`A087711(p?[comp[n²]])`
-/

namespace A097523.P6909575638595310938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097523.P6909575638595310938

/-! ## A097523.P10347092383497054833

`A087711(A008578(n+2))`
-/

namespace A097523.P10347092383497054833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (A008578 (n + 2)).toNat

end

end A097523.P10347092383497054833

/-! ## A097523.P2472581078363359925

`A087711(A182986(n+2))`
-/

namespace A097523.P2472581078363359925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (A182986 (n + 2)).toNat

end

end A097523.P2472581078363359925

/-!
# A097535: Dimensions of spaces of cusp forms.

The programs for A097535, the canonical program `A097535.P5399689886954939678` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097535 has offset 4).

The definition of A097535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097535.P5399689886954939678

`A008620(n)+A004773(A132292(n+4))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097535

/-- `A008620(n)+A004773(A132292(n+4))` -/
def P5399689886954939678.Spec : Prop :=
  ∀ n, P5399689886954939678.a n = A097535 (n + 4)

theorem P5399689886954939678.correct : P5399689886954939678.Spec := by
  intro n
  simp only [A097535, Nat.add_sub_cancel]

end A097535

/-! ## A097535.P14102071413212868696

`∑[A179952(A081267(2*n+1))]`
-/

namespace A097535.P14102071413212868696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179952 (A081267 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097535.P14102071413212868696

namespace A097535

/-- `∑[A179952(A081267(2*n+1))]` -/
def P14102071413212868696.Spec : Prop :=
  ∀ n, P14102071413212868696.a n = A097535 (n + 4)

end A097535

/-!
# A097537: -Sum_{k=1..2*q-1} J(k,q)*J(-4,k)*k/4 as q runs through primes == 3 (mod 4), where J(i,j) is the Jacobi symbol.

The programs for A097537, there is no canonical definition to state claims against.
-/

/-! ## A097537.P14635356867695554608

`A000061(p?[4*n-1])/2`
-/

namespace A097537.P14635356867695554608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A097537.P14635356867695554608

/-! ## A097537.P14885331057975697262

`A266575(p?[A004767(n)])/4`
-/

namespace A097537.P14885331057975697262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266575 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 4

end

end A097537.P14885331057975697262

/-! ## A097537.P3679383823473094579

`A000061(A002145(n+1))/2`
-/

namespace A097537.P3679383823473094579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000061 (A002145 (n + 1)).toNat : ℚ) / 2

end

end A097537.P3679383823473094579

/-! ## A097537.P2303340909422567301

`A000061(record[A020639(4*n+3)])/2`
-/

namespace A097537.P2303340909422567301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A097537.P2303340909422567301

/-! ## A097537.P2680542595379258031

`A014682(A000061(p?[A004767(n)]))`
-/

namespace A097537.P2680542595379258031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A097537.P2680542595379258031

/-! ## A097537.P2026324719375432767

`A014682(∏{d}[A002145(n+1), A000061(#)])`
-/

namespace A097537.P2026324719375432767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∏ d ∈ Nat.divisors (f1 n).natAbs, A000061 d).toNat

end

end A097537.P2026324719375432767

/-!
# A097538: Subtract 2 from primes == 3 (mod 4).

The programs for A097538, there is no canonical definition to state claims against.
-/

/-! ## A097538.P342455910045812156

`xor(2, p?[record[xor(3, n)]])`
-/

namespace A097538.P342455910045812156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097538.P342455910045812156

/-! ## A097538.P3301148736485469625

`p?[4*n-1]-2`
-/

namespace A097538.P3301148736485469625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A097538.P3301148736485469625

/-! ## A097538.P17454737948732067979

`xor(2, p?[4*n+3])`
-/

namespace A097538.P17454737948732067979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097538.P17454737948732067979

/-! ## A097538.P15134417129342532441

`and(p?[or(2*n, n%4)], -3)`
-/

namespace A097538.P15134417129342532441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-3)

end

end A097538.P15134417129342532441

/-! ## A097538.P327008482709634774

`or(1, p?[a(n-1)+4])-2` with `a(0)=3`
-/

namespace A097538.P327008482709634774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - 2

end

end A097538.P327008482709634774

/-! ## A097538.P371999164864872047

`∏{d}[p?[a(n-1)+4], #]-2` with `a(0)=3`
-/

namespace A097538.P371999164864872047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2

end

end A097538.P371999164864872047

/-! ## A097538.P9226094100920118015

`abs(p?[a(n-1)+4]-1)-1` with `a(0)=3`
-/

namespace A097538.P9226094100920118015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1| - 1

end

end A097538.P9226094100920118015

/-! ## A097538.P2174470045971229983

`record[A071182(or(2, n))]`
-/

namespace A097538.P2174470045971229983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071182 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097538.P2174470045971229983

/-! ## A097538.P6905437565516430107

`record[A109606(or(3, n))]`
-/

namespace A097538.P6905437565516430107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (Nat.lor 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097538.P6905437565516430107

/-! ## A097538.P15275024586232246249

`and(p?[A014601(n)], -3)`
-/

namespace A097538.P15275024586232246249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (-3)

end

end A097538.P15275024586232246249

/-!
# A097539: Subtract 4 from primes == 1 (mod 4).

The programs for A097539, the canonical program `A097539.P1835301190722499886` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097539 has offset 1).

The definition of A097539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097539.P1835301190722499886

`p?[4*n+1]-4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097539

/-- `p?[4*n+1]-4` -/
def P1835301190722499886.Spec : Prop :=
  ∀ n, P1835301190722499886.a n = A097539 (n + 1)

theorem P1835301190722499886.correct : P1835301190722499886.Spec := by
  intro n
  simp only [A097539, Nat.add_sub_cancel]

end A097539

/-! ## A097539.P15687579188521435595

`record[∏{p}[2*n+2*n+1, #-4]]`
-/

namespace A097539.P15687579188521435595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097539.P15687579188521435595

namespace A097539

/-- `record[∏{p}[2*n+2*n+1, #-4]]` -/
def P15687579188521435595.Spec : Prop :=
  ∀ n, P15687579188521435595.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P16911078438861140957

`A152680(n+1)-3`
-/

namespace A097539.P16911078438861140957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) - 3

end

end A097539.P16911078438861140957

namespace A097539

/-- `A152680(n+1)-3` -/
def P16911078438861140957.Spec : Prop :=
  ∀ n, P16911078438861140957.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P3676222330654126795

`A002144(n+1)-4`
-/

namespace A097539.P3676222330654126795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - 4

end

end A097539.P3676222330654126795

namespace A097539

/-- `A002144(n+1)-4` -/
def P3676222330654126795.Spec : Prop :=
  ∀ n, P3676222330654126795.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P2708815596251376244

`A002313(n+2)-4`
-/

namespace A097539.P2708815596251376244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 4

end

end A097539.P2708815596251376244

namespace A097539

/-- `A002313(n+2)-4` -/
def P2708815596251376244.Spec : Prop :=
  ∀ n, P2708815596251376244.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P16784184818499339546

`A280084(n+2)-4`
-/

namespace A097539.P16784184818499339546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - 4

end

end A097539.P16784184818499339546

namespace A097539

/-- `A280084(n+2)-4` -/
def P16784184818499339546.Spec : Prop :=
  ∀ n, P16784184818499339546.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P16499567944486097719

`A055131(n)/3-4`
-/

namespace A097539.P16499567944486097719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 - 4

end

end A097539.P16499567944486097719

namespace A097539

/-- `A055131(n)/3-4` -/
def P16499567944486097719.Spec : Prop :=
  ∀ n, P16499567944486097719.a n = (A097539 (n + 1) : ℚ)

end A097539

/-! ## A097539.P277142523993267478

`sqrt(A080109(n+1))-4`
-/

namespace A097539.P277142523993267478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) - 4

end

end A097539.P277142523993267478

namespace A097539

/-- `sqrt(A080109(n+1))-4` -/
def P277142523993267478.Spec : Prop :=
  ∀ n, P277142523993267478.a n = (A097539 (n + 1) : ℝ)

end A097539

/-! ## A097539.P16853954905408495661

`4*A111215(n+1)+1`
-/

namespace A097539.P16853954905408495661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111215 (n + 1) + 1

end

end A097539.P16853954905408495661

namespace A097539

/-- `4*A111215(n+1)+1` -/
def P16853954905408495661.Spec : Prop :=
  ∀ n, P16853954905408495661.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P14187973338177450258

`2*A104636(n+1)-3`
-/

namespace A097539.P14187973338177450258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104636 (n + 1) - 3

end

end A097539.P14187973338177450258

namespace A097539

/-- `2*A104636(n+1)-3` -/
def P14187973338177450258.Spec : Prop :=
  ∀ n, P14187973338177450258.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P16457124245018983527

`A111744(2*n+1)-4`
-/

namespace A097539.P16457124245018983527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (2 * n + 1) - 4

end

end A097539.P16457124245018983527

namespace A097539

/-- `A111744(2*n+1)-4` -/
def P16457124245018983527.Spec : Prop :=
  ∀ n, P16457124245018983527.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P5958831211428797665

`4*A005098(n+1)-3`
-/

namespace A097539.P5958831211428797665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005098 (n + 1) - 3

end

end A097539.P5958831211428797665

namespace A097539

/-- `4*A005098(n+1)-3` -/
def P5958831211428797665.Spec : Prop :=
  ∀ n, P5958831211428797665.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P8220779432536282586

`2*A119681(n+1)-5`
-/

namespace A097539.P8220779432536282586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119681 (n + 1) - 5

end

end A097539.P8220779432536282586

namespace A097539

/-- `2*A119681(n+1)-5` -/
def P8220779432536282586.Spec : Prop :=
  ∀ n, P8220779432536282586.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P15704189821421190056

`A139794(3*(n+1))-4`
-/

namespace A097539.P15704189821421190056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (3 * (n + 1)) - 4

end

end A097539.P15704189821421190056

namespace A097539

/-- `A139794(3*(n+1))-4` -/
def P15704189821421190056.Spec : Prop :=
  ∀ n, P15704189821421190056.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P16881647354009332018

`A082073(n)+a(n-1)` with `a(0)=1`
-/

namespace A097539.P16881647354009332018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082073 n + a (n - 1)

end

end A097539.P16881647354009332018

namespace A097539

/-- `A082073(n)+a(n-1)` -/
def P16881647354009332018.Spec : Prop :=
  ∀ n, P16881647354009332018.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P9936499454116582797

`record[A057033(2*(n+1))-2]`
-/

namespace A097539.P9936499454116582797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097539.P9936499454116582797

namespace A097539

/-- `record[A057033(2*(n+1))-2]` -/
def P9936499454116582797.Spec : Prop :=
  ∀ n, P9936499454116582797.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P1702162340900650940

`eq[and(2, n), A000005(n+2)]-2`
-/

namespace A097539.P1702162340900650940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A097539.P1702162340900650940

namespace A097539

/-- `eq[and(2, n), A000005(n+2)]-2` -/
def P1702162340900650940.Spec : Prop :=
  ∀ n, P1702162340900650940.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P14876386736412425390

`4*eq[2, A000005(4*n+1)]-3`
-/

namespace A097539.P14876386736412425390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 3

end

end A097539.P14876386736412425390

namespace A097539

/-- `4*eq[2, A000005(4*n+1)]-3` -/
def P14876386736412425390.Spec : Prop :=
  ∀ n, P14876386736412425390.a n = A097539 (n + 1)

end A097539

/-! ## A097539.P2281254376743600133

`eq[n+3, A000010(and(2, n+2)²+n)]`
-/

namespace A097539.P2281254376743600133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.land 2 (n + 2) ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097539.P2281254376743600133

namespace A097539

/-- `eq[n+3, A000010(and(2, n+2)²+n)]` -/
def P2281254376743600133.Spec : Prop :=
  ∀ n, (P2281254376743600133.a n : ℤ) = A097539 (n + 1)

end A097539

/-! ## A097539.P16614116828477709608

`eq[n+3, A000010(and(2, n+1)+n+2)]`
-/

namespace A097539.P16614116828477709608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.land 2 (n + 1) + (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097539.P16614116828477709608

namespace A097539

/-- `eq[n+3, A000010(and(2, n+1)+n+2)]` -/
def P16614116828477709608.Spec : Prop :=
  ∀ n, (P16614116828477709608.a n : ℤ) = A097539 (n + 1)

end A097539

/-!
# A097542: a(n) = Sum_{k=1..2*n-1} J(4*n,k)*k, where J(i,j) is the Jacobi symbol.

The programs for A097542, there is no canonical definition to state claims against.
-/

/-! ## A097542.P17197116600159481334

`A097541(2*(n+1))`
-/

namespace A097542.P17197116600159481334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097541 (2 * (n + 1))

end

end A097542.P17197116600159481334

/-! ## A097542.P14460274115172627806

`A097541(n+2+n)%A000032(n+3)`
-/

namespace A097542.P14460274115172627806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097541 (n + 2 + n)) (A000032 (n + 3))

end

end A097542.P14460274115172627806

/-! ## A097542.P9704665158178973701

`A097541(n+2+n)/A007318(∑[n])`
-/

namespace A097542.P9704665158178973701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097541 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A097542.P9704665158178973701

/-! ## A097542.P18278413706211046967

`A097541(n+2+n)%A111299(A127141(n))`
-/

namespace A097542.P18278413706211046967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097541 (n + 2 + n)) (A111299 (A127141 n).toNat)

end

end A097542.P18278413706211046967

/-!
# A097544: Sum_{k=1..2n-1} J(4*n,k)*k^2, where J(i,j) is the Jacobi symbol.

The programs for A097544, there is no canonical definition to state claims against.
-/

/-! ## A097544.P11918762166597209262

`A097543(2*(n+1))`
-/

namespace A097544.P11918762166597209262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097543 (2 * (n + 1))

end

end A097544.P11918762166597209262

/-! ## A097544.P14427968935922932769

`A097543(n+2+n)/A000108(C(n, n²))`
-/

namespace A097544.P14427968935922932769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097543 (n + 2 + n) : ℚ) / (A000108 (Nat.choose n (n ^ 2)) : ℚ)

end

end A097544.P14427968935922932769

/-! ## A097544.P4439066347465256126

`A097543(n+2+n)%A000108(n+4)`
-/

namespace A097544.P4439066347465256126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097543 (n + 2 + n)) (A000108 (n + 4))

end

end A097544.P4439066347465256126

/-! ## A097544.P15500385395339451480

`A097543(n+2+n)%A188161(n)`
-/

namespace A097544.P15500385395339451480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097543 (n + 2 + n)) (A188161 n)

end

end A097544.P15500385395339451480

/-! ## A097544.P16971000652593396241

`A097543(n+2+n)/A007318(∑[n])`
-/

namespace A097544.P16971000652593396241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097543 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A097544.P16971000652593396241

/-!
# A097547: a(n) = n^(2^n).

The programs for A097547, the canonical program `A097547.P15178310136394932174` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097547 has offset 0).

The definition of A097547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^2^n` (program `A097547.P15178310136394932174`, by `A097547.P15178310136394932174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097547.P15178310136394932174

`n^2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097547

/-- `n^2^n` -/
def P15178310136394932174.Spec : Prop :=
  ∀ n, (P15178310136394932174.a n : ℤ) = A097547 n

theorem P15178310136394932174.correct : P15178310136394932174.Spec := by
  intro n
  simp only [A097547]

end A097547

/-!
# A097550: Number of positive words of length n in the monoid Br_3 of positive braids on 4 strands.

The programs for A097550, the canonical program `A097550.P2845546144587948553` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097550 has offset 0).

The definition of A097550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097550.P2845546144587948553

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097550

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P2845546144587948553.Spec : Prop :=
  ∀ n, P2845546144587948553.a n = A097550 n

theorem P2845546144587948553.correct : P2845546144587948553.Spec := by
  intro n
  simp only [A097550]

end A097550

/-! ## A097550.P10550118494279802676

`A084338(3*n+1)`
-/

namespace A097550.P10550118494279802676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (3 * n + 1)

end

end A097550.P10550118494279802676

namespace A097550

/-- `A084338(3*n+1)` -/
def P10550118494279802676.Spec : Prop :=
  ∀ n, P10550118494279802676.a n = A097550 n

end A097550

/-! ## A097550.P15389276625850363197

`A159329(n)-A159347(n)`
-/

namespace A097550.P15389276625850363197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159329 n - A159347 n

end

end A097550.P15389276625850363197

namespace A097550

/-- `A159329(n)-A159347(n)` -/
def P15389276625850363197.Spec : Prop :=
  ∀ n, P15389276625850363197.a n = A097550 n

end A097550

/-! ## A097550.P15661922100295288051

`A159330(n)-A159348(n)`
-/

namespace A097550.P15661922100295288051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n - A159348 n

end

end A097550.P15661922100295288051

namespace A097550

/-- `A159330(n)-A159348(n)` -/
def P15661922100295288051.Spec : Prop :=
  ∀ n, P15661922100295288051.a n = A097550 n

end A097550

/-! ## A097550.P14036201182934279608

`A159331(n)-A159349(n)`
-/

namespace A097550.P14036201182934279608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159331 n - A159349 n

end

end A097550.P14036201182934279608

namespace A097550

/-- `A159331(n)-A159349(n)` -/
def P14036201182934279608.Spec : Prop :=
  ∀ n, P14036201182934279608.a n = A097550 n

end A097550

/-! ## A097550.P7924401587804211281

`A159334(n)-A159350(n)`
-/

namespace A097550.P7924401587804211281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - A159350 n

end

end A097550.P7924401587804211281

namespace A097550

/-- `A159334(n)-A159350(n)` -/
def P7924401587804211281.Spec : Prop :=
  ∀ n, P7924401587804211281.a n = A097550 n

end A097550

/-! ## A097550.P8999773529346497999

`A052921(n+1)-A034943(n)`
-/

namespace A097550.P8999773529346497999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) - A034943 n

end

end A097550.P8999773529346497999

namespace A097550

/-- `A052921(n+1)-A034943(n)` -/
def P8999773529346497999.Spec : Prop :=
  ∀ n, P8999773529346497999.a n = A097550 n

end A097550

/-! ## A097550.P7653938349806780547

`A159328(n)-A034943(n+1)`
-/

namespace A097550.P7653938349806780547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n - A034943 (n + 1)

end

end A097550.P7653938349806780547

namespace A097550

/-- `A159328(n)-A034943(n+1)` -/
def P7653938349806780547.Spec : Prop :=
  ∀ n, P7653938349806780547.a n = A097550 n

end A097550

/-! ## A097550.P3645732062474325072

`A181984(n+1)-A052921(n)`
-/

namespace A097550.P3645732062474325072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1) - A052921 n

end

end A097550.P3645732062474325072

namespace A097550

/-- `A181984(n+1)-A052921(n)` -/
def P3645732062474325072.Spec : Prop :=
  ∀ n, P3645732062474325072.a n = A097550 n

end A097550

/-! ## A097550.P1036397104653912332

`Δ[A034943(n)]+Δ[A181984(n)]`
-/

namespace A097550.P1036397104653912332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A097550.P1036397104653912332

namespace A097550

/-- `Δ[A034943(n)]+Δ[A181984(n)]` -/
def P1036397104653912332.Spec : Prop :=
  ∀ n, P1036397104653912332.a n = A097550 n

end A097550

/-! ## A097550.P4547304970045069889

`A034943(n+2)+Δ[A034943(n+1)]`
-/

namespace A097550.P4547304970045069889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 2) + (f1 (n + 1) - f1 n)

end

end A097550.P4547304970045069889

namespace A097550

/-- `A034943(n+2)+Δ[A034943(n+1)]` -/
def P4547304970045069889.Spec : Prop :=
  ∀ n, P4547304970045069889.a n = A097550 n

end A097550

/-! ## A097550.P17904554182001094904

`A134816(3*n+1)+A007307(3*n)`
-/

namespace A097550.P17904554182001094904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * n + 1) + A007307 (3 * n)

end

end A097550.P17904554182001094904

namespace A097550

/-- `A134816(3*n+1)+A007307(3*n)` -/
def P17904554182001094904.Spec : Prop :=
  ∀ n, P17904554182001094904.a n = A097550 n

end A097550

/-! ## A097550.P12661644214657962927

`A182097(A016777(n))+A181984(n)`
-/

namespace A097550.P12661644214657962927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A016777 n).toNat + A181984 n

end

end A097550.P12661644214657962927

namespace A097550

/-- `A182097(A016777(n))+A181984(n)` -/
def P12661644214657962927.Spec : Prop :=
  ∀ n, P12661644214657962927.a n = A097550 n

end A097550

/-! ## A097550.P17978833014925475479

`A181984(n)+A181984(n)-A034943(n+1)`
-/

namespace A097550.P17978833014925475479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + (A181984 n - A034943 (n + 1))

end

end A097550.P17978833014925475479

namespace A097550

/-- `A181984(n)+A181984(n)-A034943(n+1)` -/
def P17978833014925475479.Spec : Prop :=
  ∀ n, P17978833014925475479.a n = A097550 n

end A097550

/-! ## A097550.P2026593811215898821

`A034943(n+1)+A095263(n+1)-A034943(n)`
-/

namespace A097550.P2026593811215898821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A095263 (n + 1) - A034943 n)

end

end A097550.P2026593811215898821

namespace A097550

/-- `A034943(n+1)+A095263(n+1)-A034943(n)` -/
def P2026593811215898821.Spec : Prop :=
  ∀ n, P2026593811215898821.a n = A097550 n

end A097550

/-! ## A097550.P752166172399924560

`A023434(3*n)+A052954(3*n)-A000931(3*n)`
-/

namespace A097550.P752166172399924560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (3 * n) + (A052954 (3 * n) - A000931 (3 * n))

end

end A097550.P752166172399924560

namespace A097550

/-- `A023434(3*n)+A052954(3*n)-A000931(3*n)` -/
def P752166172399924560.Spec : Prop :=
  ∀ n, P752166172399924560.a n = A097550 n

end A097550

/-! ## A097550.P7824532169566815984

`floor(A159340(n+1)/2)`
-/

namespace A097550.P7824532169566815984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A159340 (n + 1) : ℚ) / 2⌋

end

end A097550.P7824532169566815984

namespace A097550

/-- `floor(A159340(n+1)/2)` -/
def P7824532169566815984.Spec : Prop :=
  ∀ n, P7824532169566815984.a n = A097550 n

end A097550

/-! ## A097550.P16250542894728812938

`Δ[A181984(n)+A034943(n)]`
-/

namespace A097550.P16250542894728812938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A034943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097550.P16250542894728812938

namespace A097550

/-- `Δ[A181984(n)+A034943(n)]` -/
def P16250542894728812938.Spec : Prop :=
  ∀ n, P16250542894728812938.a n = A097550 n

end A097550

/-! ## A097550.P9691632813861718159

`A136305(n)-A181984(n+1)`
-/

namespace A097550.P9691632813861718159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136305 n - A181984 (n + 1)

end

end A097550.P9691632813861718159

namespace A097550

/-- `A136305(n)-A181984(n+1)` -/
def P9691632813861718159.Spec : Prop :=
  ∀ n, P9691632813861718159.a n = A097550 n

end A097550

/-!
# A097551: Number of positive words of length n in the monoid Br_4 of positive braids on 5 strands.

The programs for A097551, there is no canonical definition to state claims against.
-/

/-! ## A097551.P10224388334894078797

`A048473(n)-A139251(∑[floor(8^(n-1))])`
-/

namespace A097551.P10224388334894078797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n - A139251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097551.P10224388334894078797

/-! ## A097551.P13095500346249590660

`∑[A100196(A161944(n))]`
-/

namespace A097551.P13095500346249590660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A161944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097551.P13095500346249590660

/-!
# A097552: Number of positive words of length n in the monoid Br_5 of positive braids on 6 strands.

The programs for A097552, there is no canonical definition to state claims against.
-/

/-! ## A097552.P13360950381845556828

`∑[A008776(n)-A026834(A255631(n))]`
-/

namespace A097552.P13360950381845556828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A026834 (A255631 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097552.P13360950381845556828

/-! ## A097552.P11776976708869255906

`A248607(A027831(n))`
-/

namespace A097552.P11776976708869255906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A027831 n).toNat

end

end A097552.P11776976708869255906

/-!
# A097553: Number of positive words of length n in the monoid Br_6 of positive braids on 7 strands.

The programs for A097553, there is no canonical definition to state claims against.
-/

/-! ## A097553.P17411667283236428227

`A335473(2*(n+1))-A352517(A108976(2*(n+2)))`
-/

namespace A097553.P17411667283236428227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335473 (2 * (n + 1)) - A352517 (A108976 (2 * (n + 2))).toNat

end

end A097553.P17411667283236428227

/-!
# A097554: Number of positive words of length n in the monoid Br_7 of positive braids on 8 strands.

The programs for A097554, there is no canonical definition to state claims against.
-/

/-! ## A097554.P10861814779016841547

`A359400(A367080(n))+A094256(n+1)`
-/

namespace A097554.P10861814779016841547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 (A367080 n).toNat + A094256 (n + 1)

end

end A097554.P10861814779016841547

/-!
# A097555: Number of positive words of length n in the monoid Br_8 of positive braids on 9 strands.

The programs for A097555, there is no canonical definition to state claims against.
-/

/-! ## A097555.P17946263820535706398

`A023007(n)+A002487(A267532(n))`
-/

namespace A097555.P17946263820535706398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023007 n + A002487 (A267532 n).toNat

end

end A097555.P17946263820535706398

/-!
# A097557: a(n+1) = a(n) + number of nonprimes so far; a(1) = 1.

The programs for A097557, there is no canonical definition to state claims against.
-/

/-! ## A097557.P15397493804867142902

`∑[∑[A144611(A051013(n))]]`
-/

namespace A097557.P15397493804867142902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A051013 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097557.P15397493804867142902

/-! ## A097557.P5087691143823311407

`∑[∑[A033182(n+6)]-A185284(2*n+1)]`
-/

namespace A097557.P5087691143823311407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A185284 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097557.P5087691143823311407

/-! ## A097557.P5730232713100398102

`A000196(∑[∑[A033182(n+6)]]²)`
-/

namespace A097557.P5730232713100398102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A097557.P5730232713100398102

/-! ## A097557.P5737288892722201064

`A037213(∑[∑[A033182(n+6)]]²)`
-/

namespace A097557.P5737288892722201064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A097557.P5737288892722201064

/-! ## A097557.P11548227680752420789

`∑[∑[A008966(A250481(3*n+2)+1)]]`
-/

namespace A097557.P11548227680752420789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A250481 (3 * n + 2) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097557.P11548227680752420789

/-!
# A097558: Sum{k=1 to oo} a(k)/k^r = sqrt(zeta(r) -3/4) +1/2.

The programs for A097558, there is no canonical definition to state claims against.
-/

/-! ## A097558.P8799624561345693064

`A356098(floor(∏{e}[n+1, #+1]/2)*∏{e}[n+1, 2*#+1])`
-/

namespace A097558.P8799624561345693064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356098 (⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ * ((∏ p ∈ Nat.primeFactors (f2 n), (2 * Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)).toNat

end

end A097558.P8799624561345693064

/-! ## A097558.P2338587958011877194

`A345416(A293514(n+1))`
-/

namespace A097558.P2338587958011877194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345416 (A293514 (n + 1)).toNat

end

end A097558.P2338587958011877194

/-! ## A097558.P2155191687532500660

`A342682(A063647(n+1)!)`
-/

namespace A097558.P2155191687532500660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342682 (Nat.factorial (A063647 (n + 1)).toNat)

end

end A097558.P2155191687532500660

/-! ## A097558.P12437110208985597659

`1-A127771(A347464(n+1))`
-/

namespace A097558.P12437110208985597659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127771 (A347464 (n + 1)).toNat

end

end A097558.P12437110208985597659

/-! ## A097558.P532274855749571710

`A325794(A016008(n+1)^A264857(n+1))`
-/

namespace A097558.P532274855749571710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (SequenceMachineLib.roundAway ((A016008 (n + 1) : ℚ) ^ (A264857 (n + 1) : ℤ))).toNat

end

end A097558.P532274855749571710

/-!
# A097564: a(n) = (a(n-1) mod 2)*a(n-1) + a(n-2) with a(0)=0, a(1)=1.

The programs for A097564, the canonical program `A097564.P7007851749628662406` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097564 has offset 0).

The definition of A097564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097564.P7007851749628662406

`2*a(n-3)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097564

/-- `2*a(n-3)+a(n-6)` -/
def P7007851749628662406.Spec : Prop :=
  ∀ n, (P7007851749628662406.a n : ℤ) = A097564 n

theorem P7007851749628662406.correct : P7007851749628662406.Spec := by
  intro n
  simp only [A097564]

end A097564

/-! ## A097564.P18406682787906278279

`lcm(2, a(n-1))+a(n-2)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A097564.P18406682787906278279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) + (a (n - 2) - a (n - 1))

end

end A097564.P18406682787906278279

namespace A097564

/-- `lcm(2, a(n-1))+a(n-2)-a(n-1)` -/
def P18406682787906278279.Spec : Prop :=
  ∀ n, P18406682787906278279.a n = A097564 n

end A097564

/-! ## A097564.P16643897713557375641

`A249576(A061800(n)+1)`
-/

namespace A097564.P16643897713557375641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A061800 n + 1).toNat

end

end A097564.P16643897713557375641

namespace A097564

/-- `A249576(A061800(n)+1)` -/
def P16643897713557375641.Spec : Prop :=
  ∀ n, P16643897713557375641.a n = A097564 n

end A097564

/-! ## A097564.P16122903443835083750

`A116560(A020735(n+2))-A116560(2*n+1)`
-/

namespace A097564.P16122903443835083750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A020735 (n + 2)).toNat - A116560 (2 * n + 1)

end

end A097564.P16122903443835083750

namespace A097564

/-- `A116560(A020735(n+2))-A116560(2*n+1)` -/
def P16122903443835083750.Spec : Prop :=
  ∀ n, P16122903443835083750.a n = A097564 n

end A097564

/-! ## A097564.P15588198068276800816

`Δ[A249576(n+1)+A249576(n+4)]`
-/

namespace A097564.P15588198068276800816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (n + 1) + A249576 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097564.P15588198068276800816

namespace A097564

/-- `Δ[A249576(n+1)+A249576(n+4)]` -/
def P15588198068276800816.Spec : Prop :=
  ∀ n, P15588198068276800816.a n = A097564 n

end A097564

/-!
# A097566: Number of partitions p of n for which Odd(p) = Odd(p') (mod 4), where p' is the conjugate of p.

The programs for A097566, there is no canonical definition to state claims against.
-/

/-! ## A097566.P6664969404297350510

`(A000041(n)+A085261(n))/2`
-/

namespace A097566.P6664969404297350510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + A085261 n : ℚ) / 2

end

end A097566.P6664969404297350510

/-! ## A097566.P5168855050693460987

`A085261(n)+2*A190101(n)`
-/

namespace A097566.P5168855050693460987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085261 n + 2 * A190101 n

end

end A097566.P5168855050693460987

/-! ## A097566.P9332184086022635093

`A000041(n)-2*A190101(n)`
-/

namespace A097566.P9332184086022635093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A190101 n

end

end A097566.P9332184086022635093

/-! ## A097566.P10607839029718871267

`∑[A002865(n)]-2*A190101(n)`
-/

namespace A097566.P10607839029718871267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A190101 n

end

end A097566.P10607839029718871267

/-! ## A097566.P16291599379071343372

`sqrt(A001255(n))-2*A190101(n)`
-/

namespace A097566.P16291599379071343372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (2 * A190101 n : ℝ)

end

end A097566.P16291599379071343372

/-!
# A097567: T(n,k)= count of partitions p such that Abs( Odd(p)-Odd(p') ) = k, where p' is the transpose of p and Odd(p) counts the odd elements in p. Related to Stanley's 'f'.

The programs for A097567, there is no canonical definition to state claims against.
-/

/-! ## A097567.P9951506526790856727

`A052173(n)*A163351(A260361(n))`
-/

namespace A097567.P9951506526790856727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 n * A163351 (A260361 n).toNat

end

end A097567.P9951506526790856727

/-! ## A097567.P2021979668339472220

`C(A048996(n), A199898(A048986(n+1)))`
-/

namespace A097567.P2021979668339472220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048996 n).toNat (A199898 (A048986 (n + 1)).toNat).toNat

end

end A097567.P2021979668339472220

/-! ## A097567.P15679163154234205755

`and(A000001(A208567(n+2)), A204890(n+1))`
-/

namespace A097567.P15679163154234205755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000001 (A208567 (n + 2)).toNat) (A204890 (n + 1))

end

end A097567.P15679163154234205755

/-!
# A097569: Right-truncatable Harshad numbers (zeros not permitted).

The programs for A097569, there is no canonical definition to state claims against.
-/

/-! ## A097569.P12949587280168873058

`A185284(A332579(n))+A097518(n+1)`
-/

namespace A097569.P12949587280168873058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A332579 n).toNat + A097518 (n + 1)

end

end A097569.P12949587280168873058

/-!
# A097571: Numbers n such that triangular number t(n) (see A000217) = n(n+1)/2 is a product of three consecutive integers.

The programs for A097571, there is no canonical definition to state claims against.
-/

/-! ## A097571.P10488407371609046967

`floor(sqrt(2*A001219(n+1)))`
-/

namespace A097571.P10488407371609046967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A001219 (n + 1))

end

end A097571.P10488407371609046967

/-!
# A097572: Numerator of f(n) where f(1) = 1, f(n+1) = n^2/f(n) + f(n)/n^2 + 2.

The programs for A097572, there is no canonical definition to state claims against.
-/

/-! ## A097572.P151802090133767356

`A238587(∑[A046631(n)])²`
-/

namespace A097572.P151802090133767356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A097572.P151802090133767356

/-!
# A097573: Denominator of f(n) where f(1) = 1, f(n+1) = n^2/f(n) + f(n)/n^2 + 2.

The programs for A097573, there is no canonical definition to state claims against.
-/

/-! ## A097573.P14665675918188751414

`∏[A105607(round(n!/2))²]`
-/

namespace A097573.P14665675918188751414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105607 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097573.P14665675918188751414

/-!
# A097575: A 2 X 2 matrix Fibonacci sequence.

The programs for A097575, the canonical program `A097575.P9353994462816053905` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097575 has offset 0).

The definition of A097575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097575.P9353994462816053905

`a(n-4)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2, a(6)=2, a(7)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097575

/-- `a(n-4)+a(n-8)` -/
def P9353994462816053905.Spec : Prop :=
  ∀ n, (P9353994462816053905.a n : ℤ) = A097575 n

theorem P9353994462816053905.correct : P9353994462816053905.Spec := by
  intro n
  simp only [A097575]

end A097575

/-! ## A097575.P1472755017486432945

`A103610(2*n+9)`
-/

namespace A097575.P1472755017486432945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (2 * n + 9)

end

end A097575.P1472755017486432945

namespace A097575

/-- `A103610(2*n+9)` -/
def P1472755017486432945.Spec : Prop :=
  ∀ n, P1472755017486432945.a n = A097575 n

end A097575

/-! ## A097575.P9302135033303202915

`A000045(n+3-∑[log2(gcd(4, n))])`
-/

namespace A097575.P9302135033303202915
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n + 3 : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A097575.P9302135033303202915

namespace A097575

/-- `A000045(n+3-∑[log2(gcd(4, n))])` -/
def P9302135033303202915.Spec : Prop :=
  ∀ n, P9302135033303202915.a n = A097575 n

end A097575

/-! ## A097575.P11114847488139555805

`A000045(round(gcd(2, n+1)+n/4))`
-/

namespace A097575.P11114847488139555805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.gcd 2 (n + 1) : ℚ) + (n : ℚ) / 4)).toNat

end

end A097575.P11114847488139555805

namespace A097575

/-- `A000045(round(gcd(2, n+1)+n/4))` -/
def P11114847488139555805.Spec : Prop :=
  ∀ n, P11114847488139555805.a n = A097575 n

end A097575

/-! ## A097575.P6236962608613333752

`A000045(n+3-∑[val(or(4, n), 2)])`
-/

namespace A097575.P6236962608613333752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 4 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097575.P6236962608613333752

namespace A097575

/-- `A000045(n+3-∑[val(or(4, n), 2)])` -/
def P6236962608613333752.Spec : Prop :=
  ∀ n, P6236962608613333752.a n = A097575 n

end A097575

/-! ## A097575.P15935316766437464938

`A000045(round(n/4)-char[2*n]+2)`
-/

namespace A097575.P15935316766437464938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) / 4) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2).toNat

end

end A097575.P15935316766437464938

namespace A097575

/-- `A000045(round(n/4)-char[2*n]+2)` -/
def P15935316766437464938.Spec : Prop :=
  ∀ n, P15935316766437464938.a n = A097575 n

end A097575

/-! ## A097575.P18312980271907330398

`A001611(2*n+1-A047344(n+1))-1`
-/

namespace A097575.P18312980271907330398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ((2 * n + 1 : ℤ) - A047344 (n + 1)).toNat - 1

end

end A097575.P18312980271907330398

namespace A097575

/-- `A001611(2*n+1-A047344(n+1))-1` -/
def P18312980271907330398.Spec : Prop :=
  ∀ n, P18312980271907330398.a n = A097575 n

end A097575

/-! ## A097575.P853438390710416453

`A097637(4*n+2)`
-/

namespace A097575.P853438390710416453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 (4 * n + 2)

end

end A097575.P853438390710416453

namespace A097575

/-- `A097637(4*n+2)` -/
def P853438390710416453.Spec : Prop :=
  ∀ n, P853438390710416453.a n = A097575 n

end A097575

/-! ## A097575.P15877764755291143453

`A104762(A166515(n+1))`
-/

namespace A097575.P15877764755291143453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (A166515 (n + 1)).toNat

end

end A097575.P15877764755291143453

namespace A097575

/-- `A104762(A166515(n+1))` -/
def P15877764755291143453.Spec : Prop :=
  ∀ n, P15877764755291143453.a n = A097575 n

end A097575

/-!
# A097576: A 2 X 2 matrix version of A005185: Hofstadter's sequence.

The programs for A097576, there is no canonical definition to state claims against.
-/

/-! ## A097576.P17806186739999654658

`A097865(A055264(n))`
-/

namespace A097576.P17806186739999654658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (A055264 n).toNat

end

end A097576.P17806186739999654658

/-! ## A097576.P2893651951678751824

`A097865(A214068(n))`
-/

namespace A097576.P2893651951678751824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (A214068 n).toNat

end

end A097576.P2893651951678751824

/-! ## A097576.P4442496318508572902

`A097865(eq[1, A097864(2*n+1)])`
-/

namespace A097576.P4442496318508572902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097576.P4442496318508572902

/-! ## A097576.P18227669616539456459

`A097865(A032766(A032766(n)))`
-/

namespace A097576.P18227669616539456459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (A032766 (A032766 n).toNat).toNat

end

end A097576.P18227669616539456459

/-!
# A097578: a(n) = (2*n+1)*2^floor((n+1)/2).

The programs for A097578, the canonical program `A097578.P11091662220531960434` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097578 has offset 0).

The definition of A097578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097578.P11091662220531960434

`(2*n+1)*2^floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097578

/-- `(2*n+1)*2^floor((n+1)/2)` -/
def P11091662220531960434.Spec : Prop :=
  ∀ n, P11091662220531960434.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P11856831728634266807

`lcm(2*n+1, 2^round(n/2))`
-/

namespace A097578.P11856831728634266807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 2) : ℤ)))

end

end A097578.P11856831728634266807

namespace A097578

/-- `lcm(2*n+1, 2^round(n/2))` -/
def P11856831728634266807.Spec : Prop :=
  ∀ n, (P11856831728634266807.a n : ℤ) = A097578 n

end A097578

/-! ## A097578.P13040916351382201723

`(2*n+1)/∏[gcd(2, n)/2]`
-/

namespace A097578.P13040916351382201723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A097578.P13040916351382201723

namespace A097578

/-- `(2*n+1)/∏[gcd(2, n)/2]` -/
def P13040916351382201723.Spec : Prop :=
  ∀ n, P13040916351382201723.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P13741770297243174799

`(2*n+1)/∏[(n+2)/lcm(2, n+2)]`
-/

namespace A097578.P13741770297243174799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.lcm 2 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A097578.P13741770297243174799

namespace A097578

/-- `(2*n+1)/∏[(n+2)/lcm(2, n+2)]` -/
def P13741770297243174799.Spec : Prop :=
  ∀ n, P13741770297243174799.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P3916830308024608622

`abs(Δ[n²]*A152166(n))`
-/

namespace A097578.P3916830308024608622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A152166 n|

end

end A097578.P3916830308024608622

namespace A097578

/-- `abs(Δ[n²]*A152166(n))` -/
def P3916830308024608622.Spec : Prop :=
  ∀ n, P3916830308024608622.a n = A097578 n

end A097578

/-! ## A097578.P12955850727910039875

`abs((2*n+1)*A117575(n+2))`
-/

namespace A097578.P12955850727910039875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) * A117575 (n + 2)|

end

end A097578.P12955850727910039875

namespace A097578

/-- `abs((2*n+1)*A117575(n+2))` -/
def P12955850727910039875.Spec : Prop :=
  ∀ n, P12955850727910039875.a n = A097578 n

end A097578

/-! ## A097578.P1047413959414383393

`2*A132344(n+1)-A016116(n+1)`
-/

namespace A097578.P1047413959414383393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132344 (n + 1) - A016116 (n + 1)

end

end A097578.P1047413959414383393

namespace A097578

/-- `2*A132344(n+1)-A016116(n+1)` -/
def P1047413959414383393.Spec : Prop :=
  ∀ n, P1047413959414383393.a n = A097578 n

end A097578

/-! ## A097578.P13259539466399247967

`or(Δ[n²]*A016116(n+1), A000007(n))`
-/

namespace A097578.P13259539466399247967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A016116 (n + 1)) (A000007 n)

end

end A097578.P13259539466399247967

namespace A097578

/-- `or(Δ[n²]*A016116(n+1), A000007(n))` -/
def P13259539466399247967.Spec : Prop :=
  ∀ n, P13259539466399247967.a n = A097578 n

end A097578

/-! ## A097578.P2199630699161783727

`A016116(n+1)+A005843(n)*A016116(n+1)`
-/

namespace A097578.P2199630699161783727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + A005843 n * A016116 (n + 1)

end

end A097578.P2199630699161783727

namespace A097578

/-- `A016116(n+1)+A005843(n)*A016116(n+1)` -/
def P2199630699161783727.Spec : Prop :=
  ∀ n, P2199630699161783727.a n = A097578 n

end A097578

/-! ## A097578.P13481064659920874906

`A004277(n+1)*A016116(n+1)-A016116(n+1)`
-/

namespace A097578.P13481064659920874906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A016116 (n + 1) - A016116 (n + 1)

end

end A097578.P13481064659920874906

namespace A097578

/-- `A004277(n+1)*A016116(n+1)-A016116(n+1)` -/
def P13481064659920874906.Spec : Prop :=
  ∀ n, P13481064659920874906.a n = A097578 n

end A097578

/-! ## A097578.P11312416981652508523

`A132344(n+1)+A004526(2*n)*A016116(n+1)`
-/

namespace A097578.P11312416981652508523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132344 (n + 1) + A004526 (2 * n) * A016116 (n + 1)

end

end A097578.P11312416981652508523

namespace A097578

/-- `A132344(n+1)+A004526(2*n)*A016116(n+1)` -/
def P11312416981652508523.Spec : Prop :=
  ∀ n, P11312416981652508523.a n = A097578 n

end A097578

/-! ## A097578.P10286187833620987452

`A016116(n+1)+A004442(2*n+1)*A016116(n+1)`
-/

namespace A097578.P10286187833620987452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + A004442 (2 * n + 1) * A016116 (n + 1)

end

end A097578.P10286187833620987452

namespace A097578

/-- `A016116(n+1)+A004442(2*n+1)*A016116(n+1)` -/
def P10286187833620987452.Spec : Prop :=
  ∀ n, P10286187833620987452.a n = A097578 n

end A097578

/-! ## A097578.P12966028565156211242

`A014480(n)/A016116(n)`
-/

namespace A097578.P12966028565156211242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014480 n : ℚ) / (A016116 n : ℚ)

end

end A097578.P12966028565156211242

namespace A097578

/-- `A014480(n)/A016116(n)` -/
def P12966028565156211242.Spec : Prop :=
  ∀ n, P12966028565156211242.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P14466146986892169070

`A014480(n)/2^A004526(n)`
-/

namespace A097578.P14466146986892169070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014480 n : ℚ) / (2 : ℚ) ^ (A004526 n : ℤ)

end

end A097578.P14466146986892169070

namespace A097578

/-- `A014480(n)/2^A004526(n)` -/
def P14466146986892169070.Spec : Prop :=
  ∀ n, P14466146986892169070.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P16971864827209581389

`A093968(2*n+1)/A016116(n)`
-/

namespace A097578.P16971864827209581389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093968 (2 * n + 1) : ℚ) / (A016116 n : ℚ)

end

end A097578.P16971864827209581389

namespace A097578

/-- `A093968(2*n+1)/A016116(n)` -/
def P16971864827209581389.Spec : Prop :=
  ∀ n, P16971864827209581389.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P13047484036513183992

`A132344(2*n+1)/A016116(n)`
-/

namespace A097578.P13047484036513183992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132344 (2 * n + 1) : ℚ) / (A016116 n : ℚ)

end

end A097578.P13047484036513183992

namespace A097578

/-- `A132344(2*n+1)/A016116(n)` -/
def P13047484036513183992.Spec : Prop :=
  ∀ n, P13047484036513183992.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P1360599306380485312

`abs(A316386(2*n+1)/A320770(n))`
-/

namespace A097578.P1360599306380485312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A316386 (2 * n + 1) : ℚ) / (A320770 n : ℚ)|

end

end A097578.P1360599306380485312

namespace A097578

/-- `abs(A316386(2*n+1)/A320770(n))` -/
def P1360599306380485312.Spec : Prop :=
  ∀ n, P1360599306380485312.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P13529808504789450000

`A000079(n)*A005408(n)/A016116(n)`
-/

namespace A097578.P13529808504789450000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A005408 n : ℚ) / (A016116 n : ℚ)

end

end A097578.P13529808504789450000

namespace A097578

/-- `A000079(n)*A005408(n)/A016116(n)` -/
def P13529808504789450000.Spec : Prop :=
  ∀ n, P13529808504789450000.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P15167488738546444115

`A014480(n)/(A052955(n+1)-A052955(n))`
-/

namespace A097578.P15167488738546444115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014480 n : ℚ) / (A052955 (n + 1) - A052955 n : ℚ)

end

end A097578.P15167488738546444115

namespace A097578

/-- `A014480(n)/(A052955(n+1)-A052955(n))` -/
def P15167488738546444115.Spec : Prop :=
  ∀ n, P15167488738546444115.a n = (A097578 n : ℚ)

end A097578

/-! ## A097578.P15235275007215715283

`record[A000265(n+1)*A016116(n)]/A016116(n)`
-/

namespace A097578.P15235275007215715283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A016116 n : ℚ)

end

end A097578.P15235275007215715283

namespace A097578

/-- `record[A000265(n+1)*A016116(n)]/A016116(n)` -/
def P15235275007215715283.Spec : Prop :=
  ∀ n, P15235275007215715283.a n = (A097578 n : ℚ)

end A097578

/-!
# A097579: Triangular numbers k such that 2*k-1 is also a triangular number.

The programs for A097579, there is no canonical definition to state claims against.
-/

/-! ## A097579.P18170069057286317319

`9*A075528(n)+1`
-/

namespace A097579.P18170069057286317319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A075528 n + 1

end

end A097579.P18170069057286317319

/-! ## A097579.P1256327414210390066

`ceil(A217758(n+1)/2)`
-/

namespace A097579.P1256327414210390066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A217758 (n + 1) : ℚ) / 2⌉

end

end A097579.P1256327414210390066

/-! ## A097579.P11674109535278287392

`9/2*A029549(n)+1`
-/

namespace A097579.P11674109535278287392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (A029549 n : ℚ) + 1

end

end A097579.P11674109535278287392

/-! ## A097579.P12598235238988558389

`A075528(n)+A008844(n)`
-/

namespace A097579.P12598235238988558389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075528 n + A008844 n

end

end A097579.P12598235238988558389

/-! ## A097579.P13566914971670329062

`A008844(n)+A029549(n)/2`
-/

namespace A097579.P13566914971670329062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008844 n : ℚ) + (A029549 n : ℚ) / 2

end

end A097579.P13566914971670329062

/-! ## A097579.P3392845709838776168

`A075528(n)+A001653(n+1)²`
-/

namespace A097579.P3392845709838776168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075528 n + A001653 (n + 1) ^ 2

end

end A097579.P3392845709838776168

/-! ## A097579.P11827939736147127404

`A078522(n+1)+A075528(n)+1`
-/

namespace A097579.P11827939736147127404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078522 (n + 1) + (A075528 n + 1)

end

end A097579.P11827939736147127404

/-! ## A097579.P13004584038847578912

`A079291(A005408(n))+A075528(n)`
-/

namespace A097579.P13004584038847578912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 (A005408 n).toNat + A075528 n

end

end A097579.P13004584038847578912

/-! ## A097579.P10086215159970292767

`C(3*∑[abs(A176981(2*n+1))]+2, 2)`
-/

namespace A097579.P10086215159970292767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (2 * n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat 2

end

end A097579.P10086215159970292767

/-!
# A097581: a(n) = 3*2^floor((n-1)/2) + (-1)^n.

The programs for A097581, the canonical program `A097581.P9951151405714806681` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097581 has offset 1).

The definition of A097581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097581.P9951151405714806681

`(-1)^n+2*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097581

/-- `(-1)^n+2*a(n-2)` -/
def P9951151405714806681.Spec : Prop :=
  ∀ n, P9951151405714806681.a n = A097581 (n + 1)

theorem P9951151405714806681.correct : P9951151405714806681.Spec := by
  intro n
  simp only [A097581, Nat.add_sub_cancel]

end A097581

/-! ## A097581.P9847149521169206528

`2*(a(n-2)-n%2)+1` with `a(0)=2, a(1)=4`
-/

namespace A097581.P9847149521169206528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (a (n - 2) - ((n % 2 : ℕ) : ℤ)) + 1

end

end A097581.P9847149521169206528

namespace A097581

/-- `2*(a(n-2)-n%2)+1` -/
def P9847149521169206528.Spec : Prop :=
  ∀ n, P9847149521169206528.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P14747150214873693706

`2*(a(n-2)+gcd(2, n))-3` with `a(0)=2, a(1)=4`
-/

namespace A097581.P14747150214873693706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (a (n - 2) + (Nat.gcd 2 n : ℤ)) - 3

end

end A097581.P14747150214873693706

namespace A097581

/-- `2*(a(n-2)+gcd(2, n))-3` -/
def P14747150214873693706.Spec : Prop :=
  ∀ n, P14747150214873693706.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P7585283186843370505

`a(n-2)+a(n-2)+(-1)^n` with `a(0)=2, a(1)=4`
-/

namespace A097581.P7585283186843370505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + (-1) ^ n)

end

end A097581.P7585283186843370505

namespace A097581

/-- `a(n-2)+a(n-2)+(-1)^n` -/
def P7585283186843370505.Spec : Prop :=
  ∀ n, P7585283186843370505.a n = A097581 (n + 1)

theorem P7585283186843370505.correct : P7585283186843370505.Spec := by
  intro n
  simp only [A097581, Nat.add_sub_cancel, A097581.P7585283186843370505.a, A097581.P9951151405714806681.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097581

/-! ## A097581.P3792645968780560540

`3-2*(a(n-1)%3-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A097581.P3792645968780560540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  3 - 2 * (Int.tmod (a (n - 1)) 3 - a (n - 2))

end

end A097581.P3792645968780560540

namespace A097581

/-- `3-2*(a(n-1)%3-a(n-2))` -/
def P3792645968780560540.Spec : Prop :=
  ∀ n, P3792645968780560540.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P7623490196281124885

`A086341(n)+A016116(n)`
-/

namespace A097581.P7623490196281124885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 n + A016116 n

end

end A097581.P7623490196281124885

namespace A097581

/-- `A086341(n)+A016116(n)` -/
def P7623490196281124885.Spec : Prop :=
  ∀ n, P7623490196281124885.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P17017831521119706083

`A140407(n)+A060546(n)`
-/

namespace A097581.P17017831521119706083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 n + A060546 n

end

end A097581.P17017831521119706083

namespace A097581

/-- `A140407(n)+A060546(n)` -/
def P17017831521119706083.Spec : Prop :=
  ∀ n, P17017831521119706083.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P16966701388505426763

`∪[A153893(n), A181565(n)]`
-/

namespace A097581.P16966701388505426763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097581.P16966701388505426763

namespace A097581

/-- `∪[A153893(n), A181565(n)]` -/
def P16966701388505426763.Spec : Prop :=
  ∀ n, (P16966701388505426763.a n : ℤ) = A097581 (n + 1)

end A097581

/-! ## A097581.P8929221245204880653

`A083416(n+1)+A000034(n)`
-/

namespace A097581.P8929221245204880653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (n + 1) + A000034 n

end

end A097581.P8929221245204880653

namespace A097581

/-- `A083416(n+1)+A000034(n)` -/
def P8929221245204880653.Spec : Prop :=
  ∀ n, P8929221245204880653.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P10924804171823946098

`A140407(n)+A016116(n+1)`
-/

namespace A097581.P10924804171823946098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 n + A016116 (n + 1)

end

end A097581.P10924804171823946098

namespace A097581

/-- `A140407(n)+A016116(n+1)` -/
def P10924804171823946098.Spec : Prop :=
  ∀ n, P10924804171823946098.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P6539465617405116664

`3*A016116(n)-A033999(n)`
-/

namespace A097581.P6539465617405116664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016116 n - A033999 n

end

end A097581.P6539465617405116664

namespace A097581

/-- `3*A016116(n)-A033999(n)` -/
def P6539465617405116664.Spec : Prop :=
  ∀ n, P6539465617405116664.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P18009665634526602551

`A134451(n+1)+A083416(n+1)`
-/

namespace A097581.P18009665634526602551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) + A083416 (n + 1)

end

end A097581.P18009665634526602551

namespace A097581

/-- `A134451(n+1)+A083416(n+1)` -/
def P18009665634526602551.Spec : Prop :=
  ∀ n, P18009665634526602551.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P3358954095793110435

`∪[A003945(n+1)+1, A083329(n+1)]`
-/

namespace A097581.P3358954095793110435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097581.P3358954095793110435

namespace A097581

/-- `∪[A003945(n+1)+1, A083329(n+1)]` -/
def P3358954095793110435.Spec : Prop :=
  ∀ n, (P3358954095793110435.a n : ℤ) = A097581 (n + 1)

end A097581

/-! ## A097581.P7229469428591241295

`∪[A042950(n+1)+1, A083329(n+1)]`
-/

namespace A097581.P7229469428591241295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097581.P7229469428591241295

namespace A097581

/-- `∪[A042950(n+1)+1, A083329(n+1)]` -/
def P7229469428591241295.Spec : Prop :=
  ∀ n, (P7229469428591241295.a n : ℤ) = A097581 (n + 1)

end A097581

/-! ## A097581.P10700152114047542263

`∪[A004119(n+1)-2, A004119(n+1)]`
-/

namespace A097581.P10700152114047542263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097581.P10700152114047542263

namespace A097581

/-- `∪[A004119(n+1)-2, A004119(n+1)]` -/
def P10700152114047542263.Spec : Prop :=
  ∀ n, (P10700152114047542263.a n : ℤ) = A097581 (n + 1)

end A097581

/-! ## A097581.P8668487593130197597

`∪[A103204(n+2)-2, A103204(n+2)]`
-/

namespace A097581.P8668487593130197597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097581.P8668487593130197597

namespace A097581

/-- `∪[A103204(n+2)-2, A103204(n+2)]` -/
def P8668487593130197597.Spec : Prop :=
  ∀ n, (P8668487593130197597.a n : ℤ) = A097581 (n + 1)

end A097581

/-! ## A097581.P4413673794376457724

`∪[A052955(2*n+1), A052955(2*n+1)+2]`
-/

namespace A097581.P4413673794376457724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097581.P4413673794376457724

namespace A097581

/-- `∪[A052955(2*n+1), A052955(2*n+1)+2]` -/
def P4413673794376457724.Spec : Prop :=
  ∀ n, (P4413673794376457724.a n : ℤ) = A097581 (n + 1)

end A097581

/-! ## A097581.P12631897384235677332

`A086341(n)+A000079(A004526(n))`
-/

namespace A097581.P12631897384235677332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 n + A000079 (A004526 n).toNat

end

end A097581.P12631897384235677332

namespace A097581

/-- `A086341(n)+A000079(A004526(n))` -/
def P12631897384235677332.Spec : Prop :=
  ∀ n, P12631897384235677332.a n = A097581 (n + 1)

end A097581

/-! ## A097581.P10608327892543378403

`A077957(n+1)+A140407(n)+A077957(n)`
-/

namespace A097581.P10608327892543378403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + (A140407 n + A077957 n)

end

end A097581.P10608327892543378403

namespace A097581

/-- `A077957(n+1)+A140407(n)+A077957(n)` -/
def P10608327892543378403.Spec : Prop :=
  ∀ n, P10608327892543378403.a n = A097581 (n + 1)

end A097581

/-!
# A097584: Number of well-rounded minimal classes of lattices in dimension n.

The programs for A097584, there is no canonical definition to state claims against.
-/

/-! ## A097584.P7883236024574281725

`ceil(∑[sqrt(A231490(n))])`
-/

namespace A097584.P7883236024574281725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A231490 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A097584.P7883236024574281725

/-!
# A097585: Binary representation of n if n is prime, otherwise the ternary representation of n.

The programs for A097585, there is no canonical definition to state claims against.
-/

/-! ## A097585.P11362678360829350206

`filter[A108787(n+1), A089939(#)]`
-/

namespace A097585.P11362678360829350206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A097585.P11362678360829350206

/-!
# A097587: a(n)= floor(P(k)/P(n)) with P(k)=Fortunate prime numbers for P(n)# (A005235).

The programs for A097587, there is no canonical definition to state claims against.
-/

/-! ## A097587.P16909924816449559193

`A001285(A061898(n+1)*A174618(n+1))`
-/

namespace A097587.P16909924816449559193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A061898 (n + 1) * A174618 (n + 1)).toNat

end

end A097587.P16909924816449559193

/-! ## A097587.P11538296045724597323

`A001285(lcm(A061898(n+1), A174618(n+1)))`
-/

namespace A097587.P11538296045724597323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.lcm (A061898 (n + 1)) (A174618 (n + 1)))

end

end A097587.P11538296045724597323

/-! ## A097587.P14611866258097380542

`gcd(2, A083346(A079933(2*n+5)))`
-/

namespace A097587.P14611866258097380542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A083346 (A079933 (2 * n + 5)).toNat)

end

end A097587.P14611866258097380542

/-! ## A097587.P10336850185365659521

`gcd(A016035(A262883(n)), A094840(n+1))`
-/

namespace A097587.P10336850185365659521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016035 (A262883 n).toNat) (A094840 (n + 1))

end

end A097587.P10336850185365659521

/-! ## A097587.P12369614869180813103

`A384877(A005882(n)*A384877(3*n+1))`
-/

namespace A097587.P12369614869180813103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384877 (A005882 n * A384877 (3 * n + 1)).toNat

end

end A097587.P12369614869180813103

/-!
# A097588: a(n)=floor(P(k)/P(n)) with P(k)=lesser Fortunate numbers for P(n)# (A055211).

The programs for A097588, there is no canonical definition to state claims against.
-/

/-! ## A097588.P8898290898318520303

`floor(A055211(n+2)/A065091(n+1))`
-/

namespace A097588.P8898290898318520303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055211 (n + 2) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A097588.P8898290898318520303

/-! ## A097588.P1607375327826518146

`floor(A055211(n+2)/A000040(n+2))`
-/

namespace A097588.P1607375327826518146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055211 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A097588.P1607375327826518146

/-! ## A097588.P15573817929684875202

`floor(A000040(A098166(n+2))/A065091(n+1))`
-/

namespace A097588.P15573817929684875202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (A098166 (n + 2)).toNat : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A097588.P15573817929684875202

/-! ## A097588.P14731527355794960892

`floor(A008578(A098166(n+2)+1)/A065091(n+1))`
-/

namespace A097588.P14731527355794960892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (A098166 (n + 2) + 1).toNat : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A097588.P14731527355794960892

/-! ## A097588.P7435753220375455866

`floor(A065091(A098166(n+2)-1)/A065091(n+1))`
-/

namespace A097588.P7435753220375455866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (A098166 (n + 2) - 1).toNat : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A097588.P7435753220375455866

/-!
# A097589: a(n) = Sum_{i=1..n} A005235(i).

The programs for A097589, there is no canonical definition to state claims against.
-/

/-! ## A097589.P8453997788976763731

`∑[A005235(n+1)]`
-/

namespace A097589.P8453997788976763731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097589.P8453997788976763731

/-! ## A097589.P16180495682069176383

`∑[A281318(n+1)+2]`
-/

namespace A097589.P16180495682069176383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281318 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097589.P16180495682069176383

/-! ## A097589.P2975547936398776205

`∑[A009056(A281318(n+1))]`
-/

namespace A097589.P2975547936398776205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A281318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097589.P2975547936398776205

/-! ## A097589.P11069679428254818836

`∑[A051543(A281318(-xor(n, -1)))]`
-/

namespace A097589.P11069679428254818836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (A281318 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097589.P11069679428254818836

/-! ## A097589.P8282527235634789966

`A000027(∑[A005235(Δ[n²]-n)])`
-/

namespace A097589.P8282527235634789966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097589.P8282527235634789966

/-! ## A097589.P12036604450254520897

`a(n-1)+A007318(C(2, n))*A005235(n+1)` with `a(0)=3`
-/

namespace A097589.P12036604450254520897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A005235 (n + 1)

end

end A097589.P12036604450254520897

/-! ## A097589.P1104748603189360976

`∑[A000040(A348424(n+1)+1+n)]`
-/

namespace A097589.P1104748603189360976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A348424 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097589.P1104748603189360976

/-! ## A097589.P1790358466867479722

`∑[A000040(A098168(n+1))]`
-/

namespace A097589.P1790358466867479722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097589.P1790358466867479722

/-!
# A097590: a(n) = Sum_{i=2..n} A055211(i).

The programs for A097590, there is no canonical definition to state claims against.
-/

/-! ## A097590.P1322600754598988203

`∑[A055211(n+2)]`
-/

namespace A097590.P1322600754598988203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055211 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097590.P1322600754598988203

/-! ## A097590.P8400029444304955030

`∑[A000040(A098166(n+2))]`
-/

namespace A097590.P8400029444304955030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098166 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097590.P8400029444304955030

/-! ## A097590.P2464173860060155901

`∑[A008578(A098166(n+2)+1)]`
-/

namespace A097590.P2464173860060155901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098166 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097590.P2464173860060155901

/-! ## A097590.P2280042334348108285

`∑[A065091(A098166(n+2)-1)]`
-/

namespace A097590.P2280042334348108285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A098166 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097590.P2280042334348108285

/-! ## A097590.P15385307044453774843

`∑[∑{d}[A098166(n+2), A007444(#)]]`
-/

namespace A097590.P15385307044453774843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098166 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007444 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097590.P15385307044453774843

/-!
# A097591: Triangle read by rows: T(n,k) is the number of permutations of [n] with exactly k increasing runs of odd length.

The programs for A097591, there is no canonical definition to state claims against.
-/

/-! ## A097591.P5568525554195880597

`A241322(A282252(n))%26`
-/

namespace A097591.P5568525554195880597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241322 (A282252 n).toNat) 26

end

end A097591.P5568525554195880597

/-! ## A097591.P14632984514440063633

`∑{d}[A119879(n), A006075(#)]`
-/

namespace A097591.P14632984514440063633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006075 d

end

end A097591.P14632984514440063633

/-! ## A097591.P6583776269741644891

`A000196(A031876(A147309(n)²))`
-/

namespace A097591.P6583776269741644891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A031876 (A147309 n ^ 2).toNat).toNat

end

end A097591.P6583776269741644891

/-! ## A097591.P5426323905478506657

`A020994(n+2)%A089006(A053121(n))`
-/

namespace A097591.P5426323905478506657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020994 (n + 2)) (A089006 (A053121 n).toNat)

end

end A097591.P5426323905478506657

/-! ## A097591.P11306693141459166282

`A307297(A147308(n)²)`
-/

namespace A097591.P11306693141459166282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307297 (A147308 n ^ 2).toNat

end

end A097591.P11306693141459166282

/-!
# A097593: Number of increasing runs of even length in all permutations of [n].

The programs for A097593, there is no canonical definition to state claims against.
-/

/-! ## A097593.P13599968418812877198

`A057354(Δ[A038128(n!)]+1)`
-/

namespace A097593.P13599968418812877198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (f1 (n + 1) - f1 n + 1).toNat

end

end A097593.P13599968418812877198

/-! ## A097593.P10962154883350432372

`∑[A002266(∑[A295104(n+1)])]`
-/

namespace A097593.P10962154883350432372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295104 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097593.P10962154883350432372

/-! ## A097593.P7660025261574348857

`A002264(A186371(n)-A222379(n))`
-/

namespace A097593.P7660025261574348857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A186371 n - A222379 n).toNat

end

end A097593.P7660025261574348857

/-!
# A097594: a(n) = (a(n-1) mod a(n-2)) + a(n-2), a(0) = 3, a(1) = 2.

The programs for A097594, the canonical program `A097594.P11923209112492583808` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097594 has offset 0).

The definition of A097594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097594.P11923209112492583808

`A053602(n+6)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097594

/-- `A053602(n+6)` -/
def P11923209112492583808.Spec : Prop :=
  ∀ n, P11923209112492583808.a n = A097594 n

theorem P11923209112492583808.correct : P11923209112492583808.Spec := by
  intro n
  simp only [A097594]

end A097594

/-! ## A097594.P1903758853275336611

`abs(A051792(n+12))`
-/

namespace A097594.P1903758853275336611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051792 (n + 12)|

end

end A097594.P1903758853275336611

namespace A097594

/-- `abs(A051792(n+12))` -/
def P1903758853275336611.Spec : Prop :=
  ∀ n, P1903758853275336611.a n = A097594 n

end A097594

/-! ## A097594.P10292416886519585608

`round(ϕ*a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A097594.P10292416886519585608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) : ℝ))

end

end A097594.P10292416886519585608

namespace A097594

/-- `round(ϕ*a(n-2))` -/
def P10292416886519585608.Spec : Prop :=
  ∀ n, P10292416886519585608.a n = A097594 n

end A097594

/-! ## A097594.P1863844169987094066

`round(a(n-2)/(ϕ-1))` with `a(0)=2, a(1)=5`
-/

namespace A097594.P1863844169987094066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) / (Real.goldenRatio - 1))

end

end A097594.P1863844169987094066

namespace A097594

/-- `round(a(n-2)/(ϕ-1))` -/
def P1863844169987094066.Spec : Prop :=
  ∀ n, P1863844169987094066.a n = A097594 n

end A097594

/-! ## A097594.P5023414390281146100

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=5, a(2)=3, a(3)=8`
-/

namespace A097594.P5023414390281146100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 3, 8] fun n a =>
  a (n - 2) + a (n - 4)

end

end A097594.P5023414390281146100

namespace A097594

/-- `a(n-2)+a(n-4)` -/
def P5023414390281146100.Spec : Prop :=
  ∀ n, (P5023414390281146100.a n : ℤ) = A097594 n

end A097594

/-! ## A097594.P10383904101888300509

`A123231(n+5)`
-/

namespace A097594.P10383904101888300509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 5)

end

end A097594.P10383904101888300509

namespace A097594

/-- `A123231(n+5)` -/
def P10383904101888300509.Spec : Prop :=
  ∀ n, P10383904101888300509.a n = A097594 n

end A097594

/-! ## A097594.P4455525516145443720

`A272912(n+8)`
-/

namespace A097594.P4455525516145443720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 8)

end

end A097594.P4455525516145443720

namespace A097594

/-- `A272912(n+8)` -/
def P4455525516145443720.Spec : Prop :=
  ∀ n, P4455525516145443720.a n = A097594 n

end A097594

/-! ## A097594.P17430907074429300662

`A000045(round(xor(1, n+7)/2))`
-/

namespace A097594.P17430907074429300662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.xor 1 (n + 7) : ℚ) / 2)).toNat

end

end A097594.P17430907074429300662

namespace A097594

/-- `A000045(round(xor(1, n+7)/2))` -/
def P17430907074429300662.Spec : Prop :=
  ∀ n, P17430907074429300662.a n = A097594 n

end A097594

/-! ## A097594.P14049036590253511937

`A000045(∑[or(2, (1-n)%2)])`
-/

namespace A097594.P14049036590253511937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.tmod (1 - (n : ℤ)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097594.P14049036590253511937

namespace A097594

/-- `A000045(∑[or(2, (1-n)%2)])` -/
def P14049036590253511937.Spec : Prop :=
  ∀ n, P14049036590253511937.a n = A097594 n

end A097594

/-! ## A097594.P18091727856652510303

`A000045(∑[1-a(n-1)])` with `a(0)=3, a(1)=2`
-/

namespace A097594.P18091727856652510303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097594.P18091727856652510303

namespace A097594

/-- `A000045(∑[1-a(n-1)])` -/
def P18091727856652510303.Spec : Prop :=
  ∀ n, P18091727856652510303.a n = A097594 n

end A097594

/-! ## A097594.P1199521964200862452

`A020695(A030451(n))`
-/

namespace A097594.P1199521964200862452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A030451 n).toNat

end

end A097594.P1199521964200862452

namespace A097594

/-- `A020695(A030451(n))` -/
def P1199521964200862452.Spec : Prop :=
  ∀ n, P1199521964200862452.a n = A097594 n

end A097594

/-! ## A097594.P4683043370143764639

`A000045(Δ[A035104(n)])`
-/

namespace A097594.P4683043370143764639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A097594.P4683043370143764639

namespace A097594

/-- `A000045(Δ[A035104(n)])` -/
def P4683043370143764639.Spec : Prop :=
  ∀ n, P4683043370143764639.a n = A097594 n

end A097594

/-! ## A097594.P14138051122303537143

`A020695(A028242(n+1))`
-/

namespace A097594.P14138051122303537143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A028242 (n + 1)).toNat

end

end A097594.P14138051122303537143

namespace A097594

/-- `A020695(A028242(n+1))` -/
def P14138051122303537143.Spec : Prop :=
  ∀ n, P14138051122303537143.a n = A097594 n

end A097594

/-! ## A097594.P3228191689340067417

`A000045(A052938(n)+2)`
-/

namespace A097594.P3228191689340067417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A052938 n + 2).toNat

end

end A097594.P3228191689340067417

namespace A097594

/-- `A000045(A052938(n)+2)` -/
def P3228191689340067417.Spec : Prop :=
  ∀ n, P3228191689340067417.a n = A097594 n

end A097594

/-! ## A097594.P4089311500809843643

`A000045(A030451(n)+3)`
-/

namespace A097594.P4089311500809843643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030451 n + 3).toNat

end

end A097594.P4089311500809843643

namespace A097594

/-- `A000045(A030451(n)+3)` -/
def P4089311500809843643.Spec : Prop :=
  ∀ n, P4089311500809843643.a n = A097594 n

end A097594

/-! ## A097594.P12172134084240802694

`A000045(A060762(n+3))`
-/

namespace A097594.P12172134084240802694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A060762 (n + 3)).toNat

end

end A097594.P12172134084240802694

namespace A097594

/-- `A000045(A060762(n+3))` -/
def P12172134084240802694.Spec : Prop :=
  ∀ n, P12172134084240802694.a n = A097594 n

end A097594

/-! ## A097594.P8582886735394481387

`A212804(A060762(n+5))`
-/

namespace A097594.P8582886735394481387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A060762 (n + 5)).toNat

end

end A097594.P8582886735394481387

namespace A097594

/-- `A212804(A060762(n+5))` -/
def P8582886735394481387.Spec : Prop :=
  ∀ n, P8582886735394481387.a n = A097594 n

end A097594

/-! ## A097594.P564929049030062481

`A020695(1-(A028242(n)-n))`
-/

namespace A097594.P564929049030062481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (1 - (A028242 n - (n : ℤ))).toNat

end

end A097594.P564929049030062481

namespace A097594

/-- `A020695(1-(A028242(n)-n))` -/
def P564929049030062481.Spec : Prop :=
  ∀ n, P564929049030062481.a n = A097594 n

end A097594

/-! ## A097594.P13458977218020034624

`A000045(A168233(n+1)+2-n)`
-/

namespace A097594.P13458977218020034624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A168233 (n + 1) + (2 - (n : ℤ))).toNat

end

end A097594.P13458977218020034624

namespace A097594

/-- `A000045(A168233(n+1)+2-n)` -/
def P13458977218020034624.Spec : Prop :=
  ∀ n, P13458977218020034624.a n = A097594 n

end A097594

/-!
# A097595: a(0) = 2, a(1) = 5, a(n) = a(n-2)^2 + a(n-1)*a(n-2).

The programs for A097595, there is no canonical definition to state claims against.
-/

/-! ## A097595.P8851517539077739311

`(a(n-1)+a(n-2))*a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A097595.P8851517539077739311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 1) + a (n - 2)) * a (n - 2)

end

end A097595.P8851517539077739311

/-! ## A097595.P5951781684291391177

`lcm(a(n-1)+a(n-2), a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A097595.P5951781684291391177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  Nat.lcm (a (n - 1) + a (n - 2)) (a (n - 2))

end

end A097595.P5951781684291391177

/-! ## A097595.P17901627465159695242

`(a(n-1)-floor(-a(n-2)))*a(n-2)` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A097595.P17901627465159695242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 2)

end

end A097595.P17901627465159695242

/-! ## A097595.P17744728442042906948

`(a(n-1)-ceil(-a(n-2)))*a(n-2)` with `a(0)=2, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A097595.P17744728442042906948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 2)

end

end A097595.P17744728442042906948

/-! ## A097595.P14301109858326735034

`(a(n-1)-round(-a(n-2)))*a(n-2)` with `a(0)=2, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A097595.P14301109858326735034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 2)

end

end A097595.P14301109858326735034

/-!
# A097596: Expansion of g.f. x*(1-x+x^5+x^6-x^7+x^9)/(1-2*x+x^4+x^6-2*x^7+x^10).

The programs for A097596, the canonical program `A097596.P4648669206790262908` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097596 has offset 1).

The definition of A097596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097596.P4648669206790262908

`2*a(n-1)-a(n-4)-a(n-6)+2*a(n-7)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=14, a(6)=26, a(7)=48, a(8)=89, a(9)=165`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A097596

/-- `2*a(n-1)-a(n-4)-a(n-6)+2*a(n-7)-a(n-10)` -/
def P4648669206790262908.Spec : Prop :=
  ∀ n, P4648669206790262908.a n = A097596 (n + 1)

theorem P4648669206790262908.correct : P4648669206790262908.Spec := by
  intro n
  simp only [A097596, Nat.add_sub_cancel]

end A097596

/-! ## A097596.P2621070911698720257

`floor(A000213(2*(n+1))/A141523(n+2))`
-/

namespace A097596.P2621070911698720257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000213 (2 * (n + 1)) : ℚ) / (A141523 (n + 2) : ℚ)⌋

end

end A097596.P2621070911698720257

namespace A097596

/-- `floor(A000213(2*(n+1))/A141523(n+2))` -/
def P2621070911698720257.Spec : Prop :=
  ∀ n, P2621070911698720257.a n = A097596 (n + 1)

end A097596

/-! ## A097596.P7807767354540649016

`floor(A000073(2*n+3)/A020992(n+2))`
-/

namespace A097596.P7807767354540649016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000073 (2 * n + 3) : ℚ) / (A020992 (n + 2) : ℚ)⌋

end

end A097596.P7807767354540649016

namespace A097596

/-- `floor(A000073(2*n+3)/A020992(n+2))` -/
def P7807767354540649016.Spec : Prop :=
  ∀ n, P7807767354540649016.a n = A097596 (n + 1)

end A097596

/-! ## A097596.P14679934935224556481

`floor(A112476(2*(n+2))/A020992(n+3))`
-/

namespace A097596.P14679934935224556481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112476 (2 * (n + 2)) : ℚ) / (A020992 (n + 3) : ℚ)⌋

end

end A097596.P14679934935224556481

namespace A097596

/-- `floor(A112476(2*(n+2))/A020992(n+3))` -/
def P14679934935224556481.Spec : Prop :=
  ∀ n, P14679934935224556481.a n = A097596 (n + 1)

end A097596

/-! ## A097596.P14500872848309154755

`floor(A301657(3*(n+1))/A020992(2*(n+2)))`
-/

namespace A097596.P14500872848309154755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301657 (3 * (n + 1)) : ℚ) / (A020992 (2 * (n + 2)) : ℚ)⌋

end

end A097596.P14500872848309154755

namespace A097596

/-- `floor(A301657(3*(n+1))/A020992(2*(n+2)))` -/
def P14500872848309154755.Spec : Prop :=
  ∀ n, P14500872848309154755.a n = A097596 (n + 1)

end A097596

/-!
# A097597: Number of permutations of [n] with no increasing runs of even length.

The programs for A097597, there is no canonical definition to state claims against.
-/

/-! ## A097597.P15951400155062890657

`A097592(A002620(n+1))`
-/

namespace A097597.P15951400155062890657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A002620 (n + 1)).toNat

end

end A097597.P15951400155062890657

/-! ## A097597.P956375055526066164

`A097592(A076921(n+1))`
-/

namespace A097597.P956375055526066164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A076921 (n + 1)).toNat

end

end A097597.P956375055526066164

/-! ## A097597.P14283686468130617356

`A097592(A182531(n+1))`
-/

namespace A097597.P14283686468130617356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A182531 (n + 1)).toNat

end

end A097597.P14283686468130617356

/-! ## A097597.P13817060252981751429

`A097592(∑[∑[A000035(n)]])`
-/

namespace A097597.P13817060252981751429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097597.P13817060252981751429

/-! ## A097597.P9699149800975196277

`A097592(∑[A004526(n+1)])`
-/

namespace A097597.P9699149800975196277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097597.P9699149800975196277

/-! ## A097597.P4362429604125267640

`A097592(∑[n]-A002620(n))`
-/

namespace A097597.P4362429604125267640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002620 n).toNat

end

end A097597.P4362429604125267640

/-! ## A097597.P13692989039615569129

`A097592(∑[n-A004526(n)])`
-/

namespace A097597.P13692989039615569129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097597.P13692989039615569129

/-! ## A097597.P396030226032989135

`A097592(A033638(n+1)-1)`
-/

namespace A097597.P396030226032989135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A033638 (n + 1) - 1).toNat

end

end A097597.P396030226032989135

/-! ## A097597.P8967502913031947545

`A097592(record[A076110(n+1)-1])`
-/

namespace A097597.P8967502913031947545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097597.P8967502913031947545

/-!
# A097598: Describe n from right to left.

The programs for A097598, there is no canonical definition to state claims against.
-/

/-! ## A097598.P74640083570393641

`A047842(n)+99*and(2^n-1, n%10-val(∑{digits}[n, 5^#], 5))`
-/

namespace A097598.P74640083570393641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 99 * Int.land ((2 ^ n : ℤ) - 1) (((n % 10 : ℕ) : ℤ) - (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ))

end

end A097598.P74640083570393641

/-! ## A097598.P8502600869096593035

`A045918(n)+11-11*((11*floor(n/10)-n)*dr(n-dr(n))+1)`
-/

namespace A097598.P8502600869096593035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n + (11 - 11 * ((11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℤ) + 1))

end

end A097598.P8502600869096593035

/-! ## A097598.P11714750911096838552

`A244112(n)-A097601(n)`
-/

namespace A097598.P11714750911096838552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A097601 n

end

end A097598.P11714750911096838552

/-! ## A097598.P6136650339878117860

`A047842(n)+11*A108782(n)`
-/

namespace A097598.P6136650339878117860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 11 * A108782 n

end

end A097598.P6136650339878117860

/-! ## A097598.P1423152509321819858

`A244112(n)-11*A193581(n)`
-/

namespace A097598.P1423152509321819858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - 11 * A193581 n

end

end A097598.P1423152509321819858

/-!
# A097599: Differences between A097598 and A047842.

The programs for A097599, there is no canonical definition to state claims against.
-/

/-! ## A097599.P13823368678777307167

`99*(dr(val(∑{digits}[n, 5^#], 5)-n)-floor(n/10))`
-/

namespace A097599.P13823368678777307167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * ((SequenceMachineLib.digitalRoot ((SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ) - (n : ℤ)) : ℤ) - ⌊(n : ℚ) / 10⌋)

end

end A097599.P13823368678777307167

/-! ## A097599.P2742291548960769598

`99*and(2^n-1, n%10-val(∑{digits}[n, 5^#], 5))`
-/

namespace A097599.P2742291548960769598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * Int.land ((2 ^ n : ℤ) - 1) (((n % 10 : ℕ) : ℤ) - (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ))

end

end A097599.P2742291548960769598

/-! ## A097599.P734444865938275817

`11*9*(n-(comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)))`
-/

namespace A097599.P734444865938275817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (9 * ((n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (SequenceMachineLib.digitalRoot ((SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ) - (n : ℤ)) : ℤ))))

end

end A097599.P734444865938275817

/-! ## A097599.P6169604338105787014

`11*9*(dr(val(∑{digits}[n, 5^#], 5)-n)-((n-∑{digits}[n, #])/9)%(2^n))`
-/

namespace A097599.P6169604338105787014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (9 * ((SequenceMachineLib.digitalRoot ((SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ) - (n : ℤ)) : ℤ) - Int.tmod (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)) (2 ^ n : ℤ)))

end

end A097599.P6169604338105787014

/-! ## A097599.P8405637095701449809

`11*A108782(n)`
-/

namespace A097599.P8405637095701449809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A108782 n

end

end A097599.P8405637095701449809

