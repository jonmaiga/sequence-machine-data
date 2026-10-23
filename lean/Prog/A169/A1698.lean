import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A169801: a(n) = ((n-1)^2*n^2*(n+1)^2)/6 - 2*Sum_{l=2..n}Sum_{k=2..n}(n-k+1)*(n-l+1)*(k-1)*(l-1).

The programs for A169801, the canonical program `A169801.P5810404408131223066` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169801 has offset 0).

The definition of A169801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169801.P5810404408131223066

`∑[n-n²]²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169801

/-- `∑[n-n²]²` -/
def P5810404408131223066.Spec : Prop :=
  ∀ n, P5810404408131223066.a n = A169801 n

theorem P5810404408131223066.correct : P5810404408131223066.Spec := by
  intro n
  simp only [A169801]

end A169801

/-! ## A169801.P1153030836181816554

`4*∑[C(n, 2)]²`
-/

namespace A169801.P1153030836181816554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169801.P1153030836181816554

namespace A169801

/-- `4*∑[C(n, 2)]²` -/
def P1153030836181816554.Spec : Prop :=
  ∀ n, (P1153030836181816554.a n : ℤ) = A169801 n

end A169801

/-! ## A169801.P1556768001743657867

`4*C(n+1, 3)²`
-/

namespace A169801.P1556768001743657867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 1) 3 ^ 2

end

end A169801.P1556768001743657867

namespace A169801

/-- `4*C(n+1, 3)²` -/
def P1556768001743657867.Spec : Prop :=
  ∀ n, (P1556768001743657867.a n : ℤ) = A169801 n

end A169801

/-! ## A169801.P2393569171150144025

`∑[2*C(n, 2)]^2`
-/

namespace A169801.P2393569171150144025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169801.P2393569171150144025

namespace A169801

/-- `∑[2*C(n, 2)]^2` -/
def P2393569171150144025.Spec : Prop :=
  ∀ n, (P2393569171150144025.a n : ℤ) = A169801 n

end A169801

/-! ## A169801.P1787166443784967927

`(2*C(n+1, 3))^2`
-/

namespace A169801.P1787166443784967927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 1) 3) ^ 2

end

end A169801.P1787166443784967927

namespace A169801

/-- `(2*C(n+1, 3))^2` -/
def P1787166443784967927.Spec : Prop :=
  ∀ n, (P1787166443784967927.a n : ℤ) = A169801 n

end A169801

/-! ## A169801.P6083158812191531644

`∑[lcm(n, n-1)]^(4/2)`
-/

namespace A169801.P6083158812191531644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

end

end A169801.P6083158812191531644

namespace A169801

/-- `∑[lcm(n, n-1)]^(4/2)` -/
def P6083158812191531644.Spec : Prop :=
  ∀ n, P6083158812191531644.a n = (A169801 n : ℝ)

end A169801

/-! ## A169801.P8368885022952221822

`∑[C(2*n, 3)*C(n, 2)]`
-/

namespace A169801.P8368885022952221822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169801.P8368885022952221822

namespace A169801

/-- `∑[C(2*n, 3)*C(n, 2)]` -/
def P8368885022952221822.Spec : Prop :=
  ∀ n, (P8368885022952221822.a n : ℤ) = A169801 n

end A169801

/-! ## A169801.P3202548587848572106

`∑[n*(n-1)]^gcd(2, 2*n)`
-/

namespace A169801.P3202548587848572106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (2 * n)

end

end A169801.P3202548587848572106

namespace A169801

/-- `∑[n*(n-1)]^gcd(2, 2*n)` -/
def P3202548587848572106.Spec : Prop :=
  ∀ n, P3202548587848572106.a n = A169801 n

end A169801

/-! ## A169801.P12594170272320742523

`4*C(n+1, 3)*C(n+1, 3)`
-/

namespace A169801.P12594170272320742523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 1) 3 * Nat.choose (n + 1) 3

end

end A169801.P12594170272320742523

namespace A169801

/-- `4*C(n+1, 3)*C(n+1, 3)` -/
def P12594170272320742523.Spec : Prop :=
  ∀ n, (P12594170272320742523.a n : ℤ) = A169801 n

end A169801

/-! ## A169801.P1090481768875583566

`4*(n-A004006(n))²`
-/

namespace A169801.P1090481768875583566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - A004006 n) ^ 2

end

end A169801.P1090481768875583566

namespace A169801

/-- `4*(n-A004006(n))²` -/
def P1090481768875583566.Spec : Prop :=
  ∀ n, P1090481768875583566.a n = A169801 n

end A169801

/-! ## A169801.P17607012949292816077

`2/3*A179058(n+1)`
-/

namespace A169801.P17607012949292816077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A179058 (n + 1) : ℚ)

end

end A169801.P17607012949292816077

namespace A169801

/-- `2/3*A179058(n+1)` -/
def P17607012949292816077.Spec : Prop :=
  ∀ n, P17607012949292816077.a n = (A169801 n : ℚ)

end A169801

/-! ## A169801.P9795308305007635385

`∑[C(2*n, 3)*A161680(n)]`
-/

namespace A169801.P9795308305007635385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℤ) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169801.P9795308305007635385

namespace A169801

/-- `∑[C(2*n, 3)*A161680(n)]` -/
def P9795308305007635385.Spec : Prop :=
  ∀ n, P9795308305007635385.a n = A169801 n

end A169801

/-! ## A169801.P18120641178638629323

`A288961(n+1)²/(n+1)²`
-/

namespace A169801.P18120641178638629323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288961 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A169801.P18120641178638629323

namespace A169801

/-- `A288961(n+1)²/(n+1)²` -/
def P18120641178638629323.Spec : Prop :=
  ∀ n, P18120641178638629323.a n = (A169801 n : ℚ)

end A169801

/-! ## A169801.P10067954055753849217

`A160836(n)-A160788(n)`
-/

namespace A169801.P10067954055753849217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160836 n - A160788 n

end

end A169801.P10067954055753849217

namespace A169801

/-- `A160836(n)-A160788(n)` -/
def P10067954055753849217.Spec : Prop :=
  ∀ n, P10067954055753849217.a n = A169801 n

end A169801

/-! ## A169801.P16799744836902509845

`A160834(n)-A160816(n)`
-/

namespace A169801.P16799744836902509845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A160816 n

end

end A169801.P16799744836902509845

namespace A169801

/-- `A160834(n)-A160816(n)` -/
def P16799744836902509845.Spec : Prop :=
  ∀ n, P16799744836902509845.a n = A169801 n

end A169801

/-! ## A169801.P15863083507098159782

`A160833(n)-A160836(n)`
-/

namespace A169801.P15863083507098159782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A160836 n

end

end A169801.P15863083507098159782

namespace A169801

/-- `A160833(n)-A160836(n)` -/
def P15863083507098159782.Spec : Prop :=
  ∀ n, P15863083507098159782.a n = A169801 n

end A169801

/-! ## A169801.P12364031023518771625

`2*(A160817(n)-A160815(n))`
-/

namespace A169801.P12364031023518771625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160817 n - A160815 n)

end

end A169801.P12364031023518771625

namespace A169801

/-- `2*(A160817(n)-A160815(n))` -/
def P12364031023518771625.Spec : Prop :=
  ∀ n, P12364031023518771625.a n = A169801 n

end A169801

/-! ## A169801.P8243874534362152034

`2*(A160836(n)-A160816(n))`
-/

namespace A169801.P8243874534362152034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160836 n - A160816 n)

end

end A169801.P8243874534362152034

namespace A169801

/-- `2*(A160836(n)-A160816(n))` -/
def P8243874534362152034.Spec : Prop :=
  ∀ n, P8243874534362152034.a n = A169801 n

end A169801

/-! ## A169801.P6248046673581453213

`2*(A160833(n)-A160834(n))`
-/

namespace A169801.P6248046673581453213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160833 n - A160834 n)

end

end A169801.P6248046673581453213

namespace A169801

/-- `2*(A160833(n)-A160834(n))` -/
def P6248046673581453213.Spec : Prop :=
  ∀ n, P6248046673581453213.a n = A169801 n

end A169801

/-! ## A169801.P15975374380516096319

`2*(A160834(n)-A160836(n))`
-/

namespace A169801.P15975374380516096319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160834 n - A160836 n)

end

end A169801.P15975374380516096319

namespace A169801

/-- `2*(A160834(n)-A160836(n))` -/
def P15975374380516096319.Spec : Prop :=
  ∀ n, P15975374380516096319.a n = A169801 n

end A169801

/-!
# A169802: Numbers k equal to A074036(k) = sum of primes from least to largest prime factor.

The programs for A169802, there is no canonical definition to state claims against.
-/

/-! ## A169802.P209719395358392934

`eq[n, A074036(round(acot(n)+n))]`
-/

namespace A169802.P209719395358392934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169802.P209719395358392934

/-! ## A169802.P4870138924751882246

`eq[n, A074036(abs(1-n)+1)]`
-/

namespace A169802.P4870138924751882246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169802.P4870138924751882246

/-! ## A169802.P11766336021923250258

`record[gcd(n+2, A074036(n+2))]`
-/

namespace A169802.P11766336021923250258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A074036 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169802.P11766336021923250258

/-! ## A169802.P12210405340740002364

`eq[n+1, A074036(n+1)]+1`
-/

namespace A169802.P12210405340740002364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169802.P12210405340740002364

/-! ## A169802.P15068039283623256897

`A020725(eq[n+1, A074036(n+1)])`
-/

namespace A169802.P15068039283623256897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169802.P15068039283623256897

/-! ## A169802.P18102803022726891725

`∪[A000040(n+1)*A000040((n+1)²+2), A000040(n+1)]`
-/

namespace A169802.P18102803022726891725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 ((n + 1) ^ 2 + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169802.P18102803022726891725

/-!
# A169803: Triangle read by rows: T(n,k) = binomial(n+1-k,k) (n >= 0, 0 <= k <= n).

The programs for A169803, the canonical program `A169803.P13265818388148329398` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169803 has offset 0).

The definition of A169803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169803.P664371574495287097

`C(A193592(n), A002262(n))`
-/

namespace A169803.P664371574495287097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A193592 n).toNat (A002262 n).toNat

end

end A169803.P664371574495287097

namespace A169803

/-- `C(A193592(n), A002262(n))` -/
def P664371574495287097.Spec : Prop :=
  ∀ n, (P664371574495287097.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P13265818388148329398

`C(A004736(n+1), A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A169803

/-- `C(A004736(n+1), A002262(n))` -/
def P13265818388148329398.Spec : Prop :=
  ∀ n, (P13265818388148329398.a n : ℤ) = A169803 n

theorem P13265818388148329398.correct : P13265818388148329398.Spec := by
  intro n
  simp only [A169803]

end A169803

/-! ## A169803.P2844118237231999596

`C(A025581(n)+1, A002262(n))`
-/

namespace A169803.P2844118237231999596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n + 1).toNat (A002262 n).toNat

end

end A169803.P2844118237231999596

namespace A169803

/-- `C(A025581(n)+1, A002262(n))` -/
def P2844118237231999596.Spec : Prop :=
  ∀ n, (P2844118237231999596.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P4470665286134018326

`C(A004736(n+1), log2(A059268(n)))`
-/

namespace A169803.P4470665286134018326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A169803.P4470665286134018326

namespace A169803

/-- `C(A004736(n+1), log2(A059268(n)))` -/
def P4470665286134018326.Spec : Prop :=
  ∀ n, (P4470665286134018326.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P6807894382086579601

`C(A025581(n)+1, log2(A059268(n)))`
-/

namespace A169803.P6807894382086579601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n + 1).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A169803.P6807894382086579601

namespace A169803

/-- `C(A025581(n)+1, log2(A059268(n)))` -/
def P6807894382086579601.Spec : Prop :=
  ∀ n, (P6807894382086579601.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P6293946245104449996

`C(A144257(n+1)+1, A002262(n))`
-/

namespace A169803.P6293946245104449996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1) + 1).toNat (A002262 n).toNat

end

end A169803.P6293946245104449996

namespace A169803

/-- `C(A144257(n+1)+1, A002262(n))` -/
def P6293946245104449996.Spec : Prop :=
  ∀ n, (P6293946245104449996.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P12059657985640019967

`C(A004736(n+1), n-A057944(n))`
-/

namespace A169803.P12059657985640019967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat ((n : ℤ) - A057944 n).toNat

end

end A169803.P12059657985640019967

namespace A169803

/-- `C(A004736(n+1), n-A057944(n))` -/
def P12059657985640019967.Spec : Prop :=
  ∀ n, (P12059657985640019967.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P17260913141975549691

`C(A127739(n+1)-n, A002262(n))`
-/

namespace A169803.P17260913141975549691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127739 (n + 1) - (n : ℤ)).toNat (A002262 n).toNat

end

end A169803.P17260913141975549691

namespace A169803

/-- `C(A127739(n+1)-n, A002262(n))` -/
def P17260913141975549691.Spec : Prop :=
  ∀ n, (P17260913141975549691.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P9766925069034433043

`C(A127739(n+1)-n, log2(A059268(n)))`
-/

namespace A169803.P9766925069034433043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127739 (n + 1) - (n : ℤ)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A169803.P9766925069034433043

namespace A169803

/-- `C(A127739(n+1)-n, log2(A059268(n)))` -/
def P9766925069034433043.Spec : Prop :=
  ∀ n, (P9766925069034433043.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P10080340805585497009

`C(A004736(n+1), A002260(n+1)-1)`
-/

namespace A169803.P10080340805585497009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A002260 (n + 1) - 1).toNat

end

end A169803.P10080340805585497009

namespace A169803

/-- `C(A004736(n+1), A002260(n+1)-1)` -/
def P10080340805585497009.Spec : Prop :=
  ∀ n, (P10080340805585497009.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P7836647892937520433

`C(A004736(n+1), sqrt(A133819(n+1))-1)`
-/

namespace A169803.P7836647892937520433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ) - 1)).toNat

end

end A169803.P7836647892937520433

namespace A169803

/-- `C(A004736(n+1), sqrt(A133819(n+1))-1)` -/
def P7836647892937520433.Spec : Prop :=
  ∀ n, (P7836647892937520433.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P15855207697815719152

`C(log2(A090988(n+1)), A002260(n+1)-1)`
-/

namespace A169803.P15855207697815719152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat (A002260 (n + 1) - 1).toNat

end

end A169803.P15855207697815719152

namespace A169803

/-- `C(log2(A090988(n+1)), A002260(n+1)-1)` -/
def P15855207697815719152.Spec : Prop :=
  ∀ n, (P15855207697815719152.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P337509478467465284

`C(A002024(n+1)-A002262(n), A002262(n))`
-/

namespace A169803.P337509478467465284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) - A002262 n).toNat (A002262 n).toNat

end

end A169803.P337509478467465284

namespace A169803

/-- `C(A002024(n+1)-A002262(n), A002262(n))` -/
def P337509478467465284.Spec : Prop :=
  ∀ n, (P337509478467465284.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P1778167521365088622

`C(A004736(n+1), A003056(n)-A025581(n))`
-/

namespace A169803.P1778167521365088622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A003056 n - A025581 n).toNat

end

end A169803.P1778167521365088622

namespace A169803

/-- `C(A004736(n+1), A003056(n)-A025581(n))` -/
def P1778167521365088622.Spec : Prop :=
  ∀ n, (P1778167521365088622.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P12257135632236221972

`C(A002260(A038722(n+1)), A002260(n+1)-1)`
-/

namespace A169803.P12257135632236221972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (A038722 (n + 1)).toNat).toNat (A002260 (n + 1) - 1).toNat

end

end A169803.P12257135632236221972

namespace A169803

/-- `C(A002260(A038722(n+1)), A002260(n+1)-1)` -/
def P12257135632236221972.Spec : Prop :=
  ∀ n, (P12257135632236221972.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P5373444411992592481

`C(A004736(n+1), A002024(n+1)-A004736(n+1))`
-/

namespace A169803.P5373444411992592481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A002024 (n + 1) - A004736 (n + 1)).toNat

end

end A169803.P5373444411992592481

namespace A169803

/-- `C(A004736(n+1), A002024(n+1)-A004736(n+1))` -/
def P5373444411992592481.Spec : Prop :=
  ∀ n, (P5373444411992592481.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P229670743129764014

`A030528(A038722(n+1))`
-/

namespace A169803.P229670743129764014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A038722 (n + 1)).toNat

end

end A169803.P229670743129764014

namespace A169803

/-- `A030528(A038722(n+1))` -/
def P229670743129764014.Spec : Prop :=
  ∀ n, P229670743129764014.a n = A169803 n

end A169803

/-! ## A169803.P17901385741610084665

`A030528(A061579(n)+1)`
-/

namespace A169803.P17901385741610084665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A061579 n + 1).toNat

end

end A169803.P17901385741610084665

namespace A169803

/-- `A030528(A061579(n)+1)` -/
def P17901385741610084665.Spec : Prop :=
  ∀ n, P17901385741610084665.a n = A169803 n

end A169803

/-! ## A169803.P17439912276756422040

`C(A002262(A038722(n+1)), A002262(n))`
-/

namespace A169803.P17439912276756422040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A038722 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A169803.P17439912276756422040

namespace A169803

/-- `C(A002262(A038722(n+1)), A002262(n))` -/
def P17439912276756422040.Spec : Prop :=
  ∀ n, (P17439912276756422040.a n : ℤ) = A169803 n

end A169803

/-! ## A169803.P16184622052247390946

`C(A002262(A061579(n)+1), A002262(n))`
-/

namespace A169803.P16184622052247390946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A061579 n + 1).toNat).toNat (A002262 n).toNat

end

end A169803.P16184622052247390946

namespace A169803

/-- `C(A002262(A061579(n)+1), A002262(n))` -/
def P16184622052247390946.Spec : Prop :=
  ∀ n, (P16184622052247390946.a n : ℤ) = A169803 n

end A169803

/-!
# A169804: Numbers k such that A074036(k) > k.

The programs for A169804, there is no canonical definition to state claims against.
-/

/-! ## A169804.P10087365803721680140

`lt[n, A074036(round(sqrt(n²+1)))]`
-/

namespace A169804.P10087365803721680140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169804.P10087365803721680140

/-! ## A169804.P5025203892639345512

`lt[n+1, A074036(n+1)]+1`
-/

namespace A169804.P5025203892639345512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169804.P5025203892639345512

/-! ## A169804.P16930331927260713555

`A020725(lt[n+1, A074036(n+1)])`
-/

namespace A169804.P16930331927260713555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169804.P16930331927260713555

/-! ## A169804.P9521555016794357841

`A326178(lt[n+1, A074036(n+1)])`
-/

namespace A169804.P9521555016794357841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169804.P9521555016794357841

/-! ## A169804.P12974131332083407176

`lt[A107463(A137688(n)), A107463(n)]`
-/

namespace A169804.P12974131332083407176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A137688 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169804.P12974131332083407176

/-!
# A169805: Twice the sum of the digits of n.

The programs for A169805, the canonical program `A169805.P17977796700678006772` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169805 has offset 0).

The definition of A169805 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169805.P17977796700678006772

`2*A007953(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A169805

/-- `2*A007953(n)` -/
def P17977796700678006772.Spec : Prop :=
  ∀ n, P17977796700678006772.a n = A169805 n

theorem P17977796700678006772.correct : P17977796700678006772.Spec := by
  intro n
  simp only [A169805]

end A169805

/-! ## A169805.P17302764416756926373

`2*∑{digits}[n, #]`
-/

namespace A169805.P17302764416756926373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A169805.P17302764416756926373

namespace A169805

/-- `2*∑{digits}[n, #]` -/
def P17302764416756926373.Spec : Prop :=
  ∀ n, (P17302764416756926373.a n : ℤ) = A169805 n

end A169805

/-! ## A169805.P17203880695782921843

`∑{digits}[n, #+#]`
-/

namespace A169805.P17203880695782921843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + x).sum

end

end A169805.P17203880695782921843

namespace A169805

/-- `∑{digits}[n, #+#]` -/
def P17203880695782921843.Spec : Prop :=
  ∀ n, (P17203880695782921843.a n : ℤ) = A169805 n

end A169805

/-! ## A169805.P13205969707716464660

`log2(∏{digits}[n, 4^#])`
-/

namespace A169805.P13205969707716464660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 4 ^ x).prod : ℕ) : ℝ)

end

end A169805.P13205969707716464660

namespace A169805

/-- `log2(∏{digits}[n, 4^#])` -/
def P13205969707716464660.Spec : Prop :=
  ∀ n, P13205969707716464660.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P17187901716320577876

`log(∏{digits}[n, exp(#)²])`
-/

namespace A169805.P17187901716320577876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ) ^ 2).prod

end

end A169805.P17187901716320577876

namespace A169805

/-- `log(∏{digits}[n, exp(#)²])` -/
def P17187901716320577876.Spec : Prop :=
  ∀ n, P17187901716320577876.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P17753469167179250736

`val(4^∑{digits}[n, #], 2)`
-/

namespace A169805.P17753469167179250736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) 2

end

end A169805.P17753469167179250736

namespace A169805

/-- `val(4^∑{digits}[n, #], 2)` -/
def P17753469167179250736.Spec : Prop :=
  ∀ n, (P17753469167179250736.a n : ℤ) = A169805 n

end A169805

/-! ## A169805.P17142400331428607539

`val(∏{digits}[n, 4^#], 2)`
-/

namespace A169805.P17142400331428607539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 4 ^ x).prod 2

end

end A169805.P17142400331428607539

namespace A169805

/-- `val(∏{digits}[n, 4^#], 2)` -/
def P17142400331428607539.Spec : Prop :=
  ∀ n, (P17142400331428607539.a n : ℤ) = A169805 n

end A169805

/-! ## A169805.P16550424997135738567

`log2((2^∑{digits}[n, #])²)`
-/

namespace A169805.P16550424997135738567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) ^ 2 : ℝ)

end

end A169805.P16550424997135738567

namespace A169805

/-- `log2((2^∑{digits}[n, #])²)` -/
def P16550424997135738567.Spec : Prop :=
  ∀ n, P16550424997135738567.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P17433603300723760598

`∑{digits}[n, #]/sqrt(1/4)`
-/

namespace A169805.P17433603300723760598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A169805.P17433603300723760598

namespace A169805

/-- `∑{digits}[n, #]/sqrt(1/4)` -/
def P17433603300723760598.Spec : Prop :=
  ∀ n, P17433603300723760598.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P911235255147109304

`log2(A329562(n)²)`
-/

namespace A169805.P911235255147109304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n ^ 2 : ℝ)

end

end A169805.P911235255147109304

namespace A169805

/-- `log2(A329562(n)²)` -/
def P911235255147109304.Spec : Prop :=
  ∀ n, P911235255147109304.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P10291742442223486322

`A005843(∑{digits}[n, #])`
-/

namespace A169805.P10291742442223486322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A169805.P10291742442223486322

namespace A169805

/-- `A005843(∑{digits}[n, #])` -/
def P10291742442223486322.Spec : Prop :=
  ∀ n, P10291742442223486322.a n = A169805 n

end A169805

/-! ## A169805.P6820503872123398535

`2*sqrt(A118881(n))`
-/

namespace A169805.P6820503872123398535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A118881 n : ℝ)

end

end A169805.P6820503872123398535

namespace A169805

/-- `2*sqrt(A118881(n))` -/
def P6820503872123398535.Spec : Prop :=
  ∀ n, P6820503872123398535.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P13058186024562128166

`2*(A062028(n)-n)`
-/

namespace A169805.P13058186024562128166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062028 n - (n : ℤ))

end

end A169805.P13058186024562128166

namespace A169805

/-- `2*(A062028(n)-n)` -/
def P13058186024562128166.Spec : Prop :=
  ∀ n, P13058186024562128166.a n = A169805 n

end A169805

/-! ## A169805.P5968048949289808830

`2*(n-A066568(n))`
-/

namespace A169805.P5968048949289808830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A066568 n)

end

end A169805.P5968048949289808830

namespace A169805

/-- `2*(n-A066568(n))` -/
def P5968048949289808830.Spec : Prop :=
  ∀ n, P5968048949289808830.a n = A169805 n

end A169805

/-! ## A169805.P13872864507474026592

`A005408(∑{digits}[n, #])-1`
-/

namespace A169805.P13872864507474026592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - 1

end

end A169805.P13872864507474026592

namespace A169805

/-- `A005408(∑{digits}[n, #])-1` -/
def P13872864507474026592.Spec : Prop :=
  ∀ n, P13872864507474026592.a n = A169805 n

end A169805

/-! ## A169805.P14047123049895766376

`A008586(∑{digits}[n, #])/2`
-/

namespace A169805.P14047123049895766376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ) / 2

end

end A169805.P14047123049895766376

namespace A169805

/-- `A008586(∑{digits}[n, #])/2` -/
def P14047123049895766376.Spec : Prop :=
  ∀ n, P14047123049895766376.a n = (A169805 n : ℚ)

end A169805

/-! ## A169805.P16211292016351387732

`log2(A000079(∑{digits}[n, #])²)`
-/

namespace A169805.P16211292016351387732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000079 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℝ)

end

end A169805.P16211292016351387732

namespace A169805

/-- `log2(A000079(∑{digits}[n, #])²)` -/
def P16211292016351387732.Spec : Prop :=
  ∀ n, P16211292016351387732.a n = (A169805 n : ℝ)

end A169805

/-! ## A169805.P12633382352071390201

`2*(n+1-A160941(n+1))`
-/

namespace A169805.P12633382352071390201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A160941 (n + 1))

end

end A169805.P12633382352071390201

namespace A169805

/-- `2*(n+1-A160941(n+1))` -/
def P12633382352071390201.Spec : Prop :=
  ∀ n, P12633382352071390201.a n = A169805 n

end A169805

/-! ## A169805.P11386758302294804333

`2*(A160939(n+1)-(n+1))`
-/

namespace A169805.P11386758302294804333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160939 (n + 1) - (n + 1 : ℤ))

end

end A169805.P11386758302294804333

namespace A169805

/-- `2*(A160939(n+1)-(n+1))` -/
def P11386758302294804333.Spec : Prop :=
  ∀ n, P11386758302294804333.a n = A169805 n

end A169805

/-! ## A169805.P10157368434801767855

`2/(n+1)*A160942(n+1)`
-/

namespace A169805.P10157368434801767855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A160942 (n + 1) : ℚ)

end

end A169805.P10157368434801767855

namespace A169805

/-- `2/(n+1)*A160942(n+1)` -/
def P10157368434801767855.Spec : Prop :=
  ∀ n, P10157368434801767855.a n = (A169805 n : ℚ)

end A169805

/-!
# A169808: Array T(n,k) read by antidiagonals: T(n,k) is the number of [n,k]-triangulations in the plane, n >= 0, k >= 0.

The programs for A169808, there is no canonical definition to state claims against.
-/

/-! ## A169808.P11778930452913957246

`(A262586(n)+A169809(n))/2`
-/

namespace A169808.P11778930452913957246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262586 n + A169809 n : ℚ) / 2

end

end A169808.P11778930452913957246

/-! ## A169808.P2092900682447628164

`(A262586(n)+A169809(n))*2^A033999(or(1, n))`
-/

namespace A169808.P2092900682447628164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262586 n + A169809 n : ℚ) * (2 : ℚ) ^ (A033999 (Nat.lor 1 n) : ℤ)

end

end A169808.P2092900682447628164

/-! ## A169808.P17462628573307831747

`A014682(A262586(n)+A169809(n))`
-/

namespace A169808.P17462628573307831747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A262586 n + A169809 n).toNat

end

end A169808.P17462628573307831747

/-! ## A169808.P5840520683108182200

`A273943(A262586(n)+A169809(n))`
-/

namespace A169808.P5840520683108182200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A262586 n + A169809 n).toNat

end

end A169808.P5840520683108182200

/-! ## A169808.P8402472951076328920

`A302042(A262586(n)+A169809(n))`
-/

namespace A169808.P8402472951076328920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A262586 n + A169809 n).toNat

end

end A169808.P8402472951076328920

/-!
# A169809: Array T(n,k) read by antidiagonals: T(n,k) is the number of [n,k]-triangulations in the plane that have reflection symmetry, n >= 0, k >= 0.

The programs for A169809, there is no canonical definition to state claims against.
-/

/-! ## A169809.P12785677248872076294

`2*A169808(n)-A262586(n)`
-/

namespace A169809.P12785677248872076294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169808 n - A262586 n

end

end A169809.P12785677248872076294

/-! ## A169809.P7371981167300622233

`A004277(A169808(n))-A262586(n)`
-/

namespace A169809.P7371981167300622233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169808 n).toNat - A262586 n

end

end A169809.P7371981167300622233

/-!
# A169810: a(n) = n XOR n^2.

The programs for A169810, the canonical program `A169810.P10198644930100574312` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169810 has offset 0).

The definition of A169810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169810.P10198644930100574312

`xor(n, n²)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169810

/-- `xor(n, n²)` -/
def P10198644930100574312.Spec : Prop :=
  ∀ n, (P10198644930100574312.a n : ℤ) = A169810 n

theorem P10198644930100574312.correct : P10198644930100574312.Spec := by
  intro n
  simp only [A169810]

end A169810

/-! ## A169810.P8762164732998788684

`A396236(n)+A396237(n)`
-/

namespace A169810.P8762164732998788684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396236 n + A396237 n

end

end A169810.P8762164732998788684

namespace A169810

/-- `A396236(n)+A396237(n)` -/
def P8762164732998788684.Spec : Prop :=
  ∀ n, P8762164732998788684.a n = A169810 n

end A169810

/-! ## A169810.P17674259144097715655

`2*(∑[n]-and(n, n²))`
-/

namespace A169810.P17674259144097715655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land n (n ^ 2) : ℤ))

end

end A169810.P17674259144097715655

namespace A169810

/-- `2*(∑[n]-and(n, n²))` -/
def P17674259144097715655.Spec : Prop :=
  ∀ n, P17674259144097715655.a n = A169810 n

end A169810

/-! ## A169810.P1921412882456233889

`abs(xor(n, ∑[2*n]-n))`
-/

namespace A169810.P1921412882456233889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))|

end

end A169810.P1921412882456233889

namespace A169810

/-- `abs(xor(n, ∑[2*n]-n))` -/
def P1921412882456233889.Spec : Prop :=
  ∀ n, P1921412882456233889.a n = A169810 n

end A169810

/-! ## A169810.P5189960035033299655

`xor(2*n, n*2*n)/2`
-/

namespace A169810.P5189960035033299655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n) (n * (2 * n)) : ℚ) / 2

end

end A169810.P5189960035033299655

namespace A169810

/-- `xor(2*n, n*2*n)/2` -/
def P5189960035033299655.Spec : Prop :=
  ∀ n, P5189960035033299655.a n = (A169810 n : ℚ)

end A169810

/-! ## A169810.P9087489583561977114

`n²-(2*and(n, n²)-n)`
-/

namespace A169810.P9087489583561977114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((2 * Nat.land n (n ^ 2) : ℤ) - (n : ℤ))

end

end A169810.P9087489583561977114

namespace A169810

/-- `n²-(2*and(n, n²)-n)` -/
def P9087489583561977114.Spec : Prop :=
  ∀ n, P9087489583561977114.a n = A169810 n

end A169810

/-! ## A169810.P17370225882788850260

`xor(∑[2*n]-n, n-2)+2`
-/

namespace A169810.P17370225882788850260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) ((n : ℤ) - 2) + 2

end

end A169810.P17370225882788850260

namespace A169810

/-- `xor(∑[2*n]-n, n-2)+2` -/
def P17370225882788850260.Spec : Prop :=
  ∀ n, P17370225882788850260.a n = A169810 n

end A169810

/-! ## A169810.P3068413403854988826

`or(2*n, 2*n²)-∑[2*n]`
-/

namespace A169810.P3068413403854988826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (2 * n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A169810.P3068413403854988826

namespace A169810

/-- `or(2*n, 2*n²)-∑[2*n]` -/
def P3068413403854988826.Spec : Prop :=
  ∀ n, P3068413403854988826.a n = A169810 n

end A169810

/-! ## A169810.P18350772965496062992

`1-xor(n-2, n-1-∑[2*n])`
-/

namespace A169810.P18350772965496062992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor ((n : ℤ) - 2) ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A169810.P18350772965496062992

namespace A169810

/-- `1-xor(n-2, n-1-∑[2*n])` -/
def P18350772965496062992.Spec : Prop :=
  ∀ n, P18350772965496062992.a n = A169810 n

end A169810

/-! ## A169810.P9503354206748650268

`∑[2*n]-and(2*n, n*2*n)`
-/

namespace A169810.P9503354206748650268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land (2 * n) (n * (2 * n)) : ℤ)

end

end A169810.P9503354206748650268

namespace A169810

/-- `∑[2*n]-and(2*n, n*2*n)` -/
def P9503354206748650268.Spec : Prop :=
  ∀ n, P9503354206748650268.a n = A169810 n

end A169810

/-! ## A169810.P17046066294330814090

`n²-A174375(n)`
-/

namespace A169810.P17046066294330814090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A174375 n

end

end A169810.P17046066294330814090

namespace A169810

/-- `n²-A174375(n)` -/
def P17046066294330814090.Spec : Prop :=
  ∀ n, P17046066294330814090.a n = A169810 n

end A169810

/-! ## A169810.P801668953685976440

`2*(∑[n]-A213541(n))`
-/

namespace A169810.P801668953685976440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A213541 n)

end

end A169810.P801668953685976440

namespace A169810

/-- `2*(∑[n]-A213541(n))` -/
def P801668953685976440.Spec : Prop :=
  ∀ n, P801668953685976440.a n = A169810 n

end A169810

/-! ## A169810.P10214294955236183916

`A002378(n)-2*A213541(n)`
-/

namespace A169810.P10214294955236183916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - 2 * A213541 n

end

end A169810.P10214294955236183916

namespace A169810

/-- `A002378(n)-2*A213541(n)` -/
def P10214294955236183916.Spec : Prop :=
  ∀ n, P10214294955236183916.a n = A169810 n

end A169810

/-! ## A169810.P16548002492584049150

`n²+A396237(n)-A213541(n)`
-/

namespace A169810.P16548002492584049150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A396237 n - A213541 n)

end

end A169810.P16548002492584049150

namespace A169810

/-- `n²+A396237(n)-A213541(n)` -/
def P16548002492584049150.Spec : Prop :=
  ∀ n, P16548002492584049150.a n = A169810 n

end A169810

/-! ## A169810.P5477612845488056755

`xor(n, A000290(n))*A001221(A105884(n+1))`
-/

namespace A169810.P5477612845488056755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000290 n) * A001221 (A105884 (n + 1)).toNat

end

end A169810.P5477612845488056755

namespace A169810

/-- `xor(n, A000290(n))*A001221(A105884(n+1))` -/
def P5477612845488056755.Spec : Prop :=
  ∀ n, P5477612845488056755.a n = A169810 n

end A169810

/-! ## A169810.P1623200303977578091

`xor(n, A000290(n))*A002260(A000217(n+1)+1)`
-/

namespace A169810.P1623200303977578091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000290 n) * A002260 (A000217 (n + 1) + 1).toNat

end

end A169810.P1623200303977578091

namespace A169810

/-- `xor(n, A000290(n))*A002260(A000217(n+1)+1)` -/
def P1623200303977578091.Spec : Prop :=
  ∀ n, P1623200303977578091.a n = A169810 n

end A169810

/-! ## A169810.P7346807193380780279

`A245092(xor(n, A000290(n)))`
-/

namespace A169810.P7346807193380780279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (Int.xor (n : ℤ) (A000290 n)).toNat

end

end A169810.P7346807193380780279

namespace A169810

/-- `A245092(xor(n, A000290(n)))` -/
def P7346807193380780279.Spec : Prop :=
  ∀ n, P7346807193380780279.a n = A169810 n

end A169810

/-! ## A169810.P8243755476285503674

`A059029(xor(n, A000290(n)))`
-/

namespace A169810.P8243755476285503674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Int.xor (n : ℤ) (A000290 n)).toNat

end

end A169810.P8243755476285503674

namespace A169810

/-- `A059029(xor(n, A000290(n)))` -/
def P8243755476285503674.Spec : Prop :=
  ∀ n, P8243755476285503674.a n = A169810 n

end A169810

/-! ## A169810.P1539299636931157637

`A153733(xor(n, A000290(n)))`
-/

namespace A169810.P1539299636931157637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (Int.xor (n : ℤ) (A000290 n)).toNat

end

end A169810.P1539299636931157637

namespace A169810

/-- `A153733(xor(n, A000290(n)))` -/
def P1539299636931157637.Spec : Prop :=
  ∀ n, P1539299636931157637.a n = A169810 n

end A169810

/-! ## A169810.P1057775057543233582

`A022998(xor(n, A000290(n)))/2`
-/

namespace A169810.P1057775057543233582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (Int.xor (n : ℤ) (A000290 n)).toNat : ℚ) / 2

end

end A169810.P1057775057543233582

namespace A169810

/-- `A022998(xor(n, A000290(n)))/2` -/
def P1057775057543233582.Spec : Prop :=
  ∀ n, P1057775057543233582.a n = (A169810 n : ℚ)

end A169810

/-!
# A169811: a(n) = n XOR n*(n+1)/2.

The programs for A169811, the canonical program `A169811.P2386253213964869796` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169811 has offset 0).

The definition of A169811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169811.P2386253213964869796

`xor(n*(n+1)/2, n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169811

/-- `xor(n*(n+1)/2, n)` -/
def P2386253213964869796.Spec : Prop :=
  ∀ n, P2386253213964869796.a n = A169811 n

theorem P2386253213964869796.correct : P2386253213964869796.Spec := by
  intro n
  simp only [A169811]

end A169811

/-! ## A169811.P1545546396936798073

`abs(xor(n, n²-C(n, 2)))`
-/

namespace A169811.P1545546396936798073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))|

end

end A169811.P1545546396936798073

namespace A169811

/-- `abs(xor(n, n²-C(n, 2)))` -/
def P1545546396936798073.Spec : Prop :=
  ∀ n, P1545546396936798073.a n = A169811 n

end A169811

/-! ## A169811.P10871433426723068862

`abs(xor(n, n-Δ[-C(n, 3)]))`
-/

namespace A169811.P10871433426723068862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - (f1 (n + 1) - f1 n))|

end

end A169811.P10871433426723068862

namespace A169811

/-- `abs(xor(n, n-Δ[-C(n, 3)]))` -/
def P10871433426723068862.Spec : Prop :=
  ∀ n, P10871433426723068862.a n = A169811 n

end A169811

/-! ## A169811.P4363473458768149681

`abs(xor(n, record[C(n, 2)-n]-n))`
-/

namespace A169811.P4363473458768149681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))|

end

end A169811.P4363473458768149681

namespace A169811

/-- `abs(xor(n, record[C(n, 2)-n]-n))` -/
def P4363473458768149681.Spec : Prop :=
  ∀ n, P4363473458768149681.a n = A169811 n

end A169811

/-! ## A169811.P681094162384289653

`∑[n]-and(2*n, ∑[2*n])+n`
-/

namespace A169811.P681094162384289653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land (2 * n) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + (n : ℤ)

end

end A169811.P681094162384289653

namespace A169811

/-- `∑[n]-and(2*n, ∑[2*n])+n` -/
def P681094162384289653.Spec : Prop :=
  ∀ n, P681094162384289653.a n = A169811 n

end A169811

/-! ## A169811.P2101184212798323144

`n-(and(2*n, ∑[2*n])-∑[n])`
-/

namespace A169811.P2101184212798323144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A169811.P2101184212798323144

namespace A169811

/-- `n-(and(2*n, ∑[2*n])-∑[n])` -/
def P2101184212798323144.Spec : Prop :=
  ∀ n, P2101184212798323144.a n = A169811 n

end A169811

/-! ## A169811.P4329376451070093190

`or(2*n+1, n²+n)-∑[n+1]`
-/

namespace A169811.P4329376451070093190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n + 1) (n ^ 2 + n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A169811.P4329376451070093190

namespace A169811

/-- `or(2*n+1, n²+n)-∑[n+1]` -/
def P4329376451070093190.Spec : Prop :=
  ∀ n, P4329376451070093190.a n = A169811 n

end A169811

/-! ## A169811.P2859406193845280008

`abs(xor(n, A000124(n)-1))`
-/

namespace A169811.P2859406193845280008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A000124 n - 1)|

end

end A169811.P2859406193845280008

namespace A169811

/-- `abs(xor(n, A000124(n)-1))` -/
def P2859406193845280008.Spec : Prop :=
  ∀ n, P2859406193845280008.a n = A169811 n

end A169811

/-! ## A169811.P5825075414089294996

`abs(xor(n, A000096(n)-n))`
-/

namespace A169811.P5825075414089294996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A000096 n - (n : ℤ))|

end

end A169811.P5825075414089294996

namespace A169811

/-- `abs(xor(n, A000096(n)-n))` -/
def P5825075414089294996.Spec : Prop :=
  ∀ n, P5825075414089294996.a n = A169811 n

end A169811

/-! ## A169811.P1437429553851912564

`abs(xor(n, (A005563(n)-n)/2))`
-/

namespace A169811.P1437429553851912564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((A005563 n - (n : ℤ) : ℚ) / 2))|

end

end A169811.P1437429553851912564

namespace A169811

/-- `abs(xor(n, (A005563(n)-n)/2))` -/
def P1437429553851912564.Spec : Prop :=
  ∀ n, P1437429553851912564.a n = A169811 n

end A169811

/-! ## A169811.P15197651344801088978

`abs(xor(n, A089071(n+2)-2))`
-/

namespace A169811.P15197651344801088978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A089071 (n + 2) - 2)|

end

end A169811.P15197651344801088978

namespace A169811

/-- `abs(xor(n, A089071(n+2)-2))` -/
def P15197651344801088978.Spec : Prop :=
  ∀ n, P15197651344801088978.a n = A169811 n

end A169811

/-!
# A169812: a(n) = n XOR d(n) (cf. A000005).

The programs for A169812, the canonical program `A169812.P5493332274551538101` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169812 has offset 1).

The definition of A169812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169812.P5493332274551538101

`xor(n+1, ∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169812

/-- `xor(n+1, ∏{e}[n+1, #+1])` -/
def P5493332274551538101.Spec : Prop :=
  ∀ n, (P5493332274551538101.a n : ℤ) = A169812 (n + 1)

theorem P5493332274551538101.correct : P5493332274551538101.Spec := by
  intro n
  simp only [A169812, Nat.add_sub_cancel]

end A169812

/-! ## A169812.P16180538527750713231

`xor(n+1, ∑{d}[n+1, gcd(n, #)])`
-/

namespace A169812.P16180538527750713231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A169812.P16180538527750713231

namespace A169812

/-- `xor(n+1, ∑{d}[n+1, gcd(n, #)])` -/
def P16180538527750713231.Spec : Prop :=
  ∀ n, (P16180538527750713231.a n : ℤ) = A169812 (n + 1)

end A169812

/-! ## A169812.P1246339217310927122

`xor(n+1, ∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A169812.P1246339217310927122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A169812.P1246339217310927122

namespace A169812

/-- `xor(n+1, ∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P1246339217310927122.Spec : Prop :=
  ∀ n, P1246339217310927122.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P12673294843149137611

`xor(n+1, Δ[A006218(n)])`
-/

namespace A169812.P12673294843149137611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A169812.P12673294843149137611

namespace A169812

/-- `xor(n+1, Δ[A006218(n)])` -/
def P12673294843149137611.Spec : Prop :=
  ∀ n, P12673294843149137611.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P6312459614010810545

`xor(n+1, Δ[A054519(n)])`
-/

namespace A169812.P6312459614010810545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A169812.P6312459614010810545

namespace A169812

/-- `xor(n+1, Δ[A054519(n)])` -/
def P6312459614010810545.Spec : Prop :=
  ∀ n, P6312459614010810545.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P3591227183992198110

`xor(n+1, A000005(n+1))`
-/

namespace A169812.P3591227183992198110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000005 (n + 1))

end

end A169812.P3591227183992198110

namespace A169812

/-- `xor(n+1, A000005(n+1))` -/
def P3591227183992198110.Spec : Prop :=
  ∀ n, P3591227183992198110.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P11444318535708277667

`xor(n+1, ∑[A341062(n+1)])`
-/

namespace A169812.P11444318535708277667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169812.P11444318535708277667

namespace A169812

/-- `xor(n+1, ∑[A341062(n+1)])` -/
def P11444318535708277667.Spec : Prop :=
  ∀ n, P11444318535708277667.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P826288477198909118

`xor(n+1, A032741(n+1)+1)`
-/

namespace A169812.P826288477198909118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A032741 (n + 1) + 1)

end

end A169812.P826288477198909118

namespace A169812

/-- `xor(n+1, A032741(n+1)+1)` -/
def P826288477198909118.Spec : Prop :=
  ∀ n, P826288477198909118.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P15867947081245218733

`xor(n+1, A320111(2*(n+1)))`
-/

namespace A169812.P15867947081245218733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A320111 (2 * (n + 1)))

end

end A169812.P15867947081245218733

namespace A169812

/-- `xor(n+1, A320111(2*(n+1)))` -/
def P15867947081245218733.Spec : Prop :=
  ∀ n, P15867947081245218733.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P18374849921762706282

`xor(A038040(n+1)/(n+1), n+1)`
-/

namespace A169812.P18374849921762706282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A169812.P18374849921762706282

namespace A169812

/-- `xor(A038040(n+1)/(n+1), n+1)` -/
def P18374849921762706282.Spec : Prop :=
  ∀ n, P18374849921762706282.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P7379295588629597823

`xor(n+1, A006218(n+1)-A006218(n))`
-/

namespace A169812.P7379295588629597823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A006218 (n + 1) - A006218 n)

end

end A169812.P7379295588629597823

namespace A169812

/-- `xor(n+1, A006218(n+1)-A006218(n))` -/
def P7379295588629597823.Spec : Prop :=
  ∀ n, P7379295588629597823.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P5888213853054305200

`xor(n+1, A087991(n+1)+A087990(n+1))`
-/

namespace A169812.P5888213853054305200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A087991 (n + 1) + A087990 (n + 1))

end

end A169812.P5888213853054305200

namespace A169812

/-- `xor(n+1, A087991(n+1)+A087990(n+1))` -/
def P5888213853054305200.Spec : Prop :=
  ∀ n, P5888213853054305200.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P14592591780005570726

`xor(n+1, ∑{d}[n+1, A057427(#)])`
-/

namespace A169812.P14592591780005570726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (∑ d ∈ Nat.divisors (f1 n), A057427 d)

end

end A169812.P14592591780005570726

namespace A169812

/-- `xor(n+1, ∑{d}[n+1, A057427(#)])` -/
def P14592591780005570726.Spec : Prop :=
  ∀ n, P14592591780005570726.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P7212465960809045830

`xor(A000005(A008619(2*n)), A008619(2*n))`
-/

namespace A169812.P7212465960809045830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A169812.P7212465960809045830

namespace A169812

/-- `xor(A000005(A008619(2*n)), A008619(2*n))` -/
def P7212465960809045830.Spec : Prop :=
  ∀ n, P7212465960809045830.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P6947684869160562296

`xor(n+1, A069157(2*(n+1)))`
-/

namespace A169812.P6947684869160562296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A069157 (2 * (n + 1)))

end

end A169812.P6947684869160562296

namespace A169812

/-- `xor(n+1, A069157(2*(n+1)))` -/
def P6947684869160562296.Spec : Prop :=
  ∀ n, P6947684869160562296.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P1737592369437521153

`xor(n+1, A183063(2*(n+1)))`
-/

namespace A169812.P1737592369437521153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A183063 (2 * (n + 1)))

end

end A169812.P1737592369437521153

namespace A169812

/-- `xor(n+1, A183063(2*(n+1)))` -/
def P1737592369437521153.Spec : Prop :=
  ∀ n, P1737592369437521153.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P4954028680642419683

`xor(A000005(A008611(3*n)), A008611(3*n))`
-/

namespace A169812.P4954028680642419683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A008611 (3 * n)).toNat) (A008611 (3 * n))

end

end A169812.P4954028680642419683

namespace A169812

/-- `xor(A000005(A008611(3*n)), A008611(3*n))` -/
def P4954028680642419683.Spec : Prop :=
  ∀ n, P4954028680642419683.a n = A169812 (n + 1)

end A169812

/-! ## A169812.P7860778097607697404

`A051933(A000217(n+1)+A000005(n+1))`
-/

namespace A169812.P7860778097607697404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (A000217 (n + 1) + A000005 (n + 1)).toNat

end

end A169812.P7860778097607697404

namespace A169812

/-- `A051933(A000217(n+1)+A000005(n+1))` -/
def P7860778097607697404.Spec : Prop :=
  ∀ n, P7860778097607697404.a n = A169812 (n + 1)

end A169812

/-!
# A169813: a(n) = n XOR sigma(n), where sigma(n) is the number of divisors of n, A000203.

The programs for A169813, the canonical program `A169813.P13181076588970900483` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169813 has offset 1).

The definition of A169813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169813.P13181076588970900483

`xor(n+1, ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169813

/-- `xor(n+1, ∑{d}[n+1, #])` -/
def P13181076588970900483.Spec : Prop :=
  ∀ n, (P13181076588970900483.a n : ℤ) = A169813 (n + 1)

theorem P13181076588970900483.correct : P13181076588970900483.Spec := by
  intro n
  simp only [A169813, Nat.add_sub_cancel]

end A169813

/-! ## A169813.P18219411456243137372

`xor(n+1, Δ[A160664(n)])`
-/

namespace A169813.P18219411456243137372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A169813.P18219411456243137372

namespace A169813

/-- `xor(n+1, Δ[A160664(n)])` -/
def P18219411456243137372.Spec : Prop :=
  ∀ n, P18219411456243137372.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P10001350271022612094

`xor(n+1, A000203(n+1))`
-/

namespace A169813.P10001350271022612094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000203 (n + 1))

end

end A169813.P10001350271022612094

namespace A169813

/-- `xor(n+1, A000203(n+1))` -/
def P10001350271022612094.Spec : Prop :=
  ∀ n, P10001350271022612094.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P2797642247083740356

`xor(n+1, abs(Δ[A330725(n)]))`
-/

namespace A169813.P2797642247083740356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) |f1 (n + 1) - f1 n|

end

end A169813.P2797642247083740356

namespace A169813

/-- `xor(n+1, abs(Δ[A330725(n)]))` -/
def P2797642247083740356.Spec : Prop :=
  ∀ n, P2797642247083740356.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P9738136454191249073

`xor(n+1, A245092(Δ[n²]))`
-/

namespace A169813.P9738136454191249073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A169813.P9738136454191249073

namespace A169813

/-- `xor(n+1, A245092(Δ[n²]))` -/
def P9738136454191249073.Spec : Prop :=
  ∀ n, P9738136454191249073.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P17793282410060594907

`xor(n+1, sqrt(A072861(n+1)))`
-/

namespace A169813.P17793282410060594907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ)))

end

end A169813.P17793282410060594907

namespace A169813

/-- `xor(n+1, sqrt(A072861(n+1)))` -/
def P17793282410060594907.Spec : Prop :=
  ∀ n, P17793282410060594907.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P10223481697198706317

`xor(n+1, A039653(n+1)+1)`
-/

namespace A169813.P10223481697198706317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A039653 (n + 1) + 1)

end

end A169813.P10223481697198706317

namespace A169813

/-- `xor(n+1, A039653(n+1)+1)` -/
def P10223481697198706317.Spec : Prop :=
  ∀ n, P10223481697198706317.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P17846742739141559995

`xor(n+1, A088580(n+1)-1)`
-/

namespace A169813.P17846742739141559995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A088580 (n + 1) - 1)

end

end A169813.P17846742739141559995

namespace A169813

/-- `xor(n+1, A088580(n+1)-1)` -/
def P17846742739141559995.Spec : Prop :=
  ∀ n, P17846742739141559995.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P12582272090997746859

`xor(A074400(n+1)/2, n+1)`
-/

namespace A169813.P12582272090997746859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)) (n + 1 : ℤ)

end

end A169813.P12582272090997746859

namespace A169813

/-- `xor(A074400(n+1)/2, n+1)` -/
def P12582272090997746859.Spec : Prop :=
  ∀ n, P12582272090997746859.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P7193934016829969678

`xor(n+1, A064987(n+1)/(n+1))`
-/

namespace A169813.P7193934016829969678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A169813.P7193934016829969678

namespace A169813

/-- `xor(n+1, A064987(n+1)/(n+1))` -/
def P7193934016829969678.Spec : Prop :=
  ∀ n, P7193934016829969678.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P6374450887028790844

`xor(n+1, A000027(A155085(n+1)-(n+1)))`
-/

namespace A169813.P6374450887028790844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000027 (A155085 (n + 1) - (n + 1 : ℤ)).toNat)

end

end A169813.P6374450887028790844

namespace A169813

/-- `xor(n+1, A000027(A155085(n+1)-(n+1)))` -/
def P6374450887028790844.Spec : Prop :=
  ∀ n, P6374450887028790844.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P11402686590257524527

`xor(A003959(n+1)-A348029(n+1), n+1)`
-/

namespace A169813.P11402686590257524527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003959 (n + 1) - A348029 (n + 1)) (n + 1 : ℤ)

end

end A169813.P11402686590257524527

namespace A169813

/-- `xor(A003959(n+1)-A348029(n+1), n+1)` -/
def P11402686590257524527.Spec : Prop :=
  ∀ n, P11402686590257524527.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P15237786546979895710

`xor(A000593(n+1)*A038712(n+1), n+1)`
-/

namespace A169813.P15237786546979895710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000593 (n + 1) * A038712 (n + 1)) (n + 1 : ℤ)

end

end A169813.P15237786546979895710

namespace A169813

/-- `xor(A000593(n+1)*A038712(n+1), n+1)` -/
def P15237786546979895710.Spec : Prop :=
  ∀ n, P15237786546979895710.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P2475178117871536665

`xor(n+1, A326065(2*(n+1)))`
-/

namespace A169813.P2475178117871536665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A326065 (2 * (n + 1)))

end

end A169813.P2475178117871536665

namespace A169813

/-- `xor(n+1, A326065(2*(n+1)))` -/
def P2475178117871536665.Spec : Prop :=
  ∀ n, P2475178117871536665.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P12128659414984698479

`xor(A000203(A008619(2*n)), A008619(2*n))`
-/

namespace A169813.P12128659414984698479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A169813.P12128659414984698479

namespace A169813

/-- `xor(A000203(A008619(2*n)), A008619(2*n))` -/
def P12128659414984698479.Spec : Prop :=
  ∀ n, P12128659414984698479.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P19395686418385668

`xor(A000203(A052938(2*n)), A052938(2*n))`
-/

namespace A169813.P19395686418385668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (A052938 (2 * n)).toNat) (A052938 (2 * n))

end

end A169813.P19395686418385668

namespace A169813

/-- `xor(A000203(A052938(2*n)), A052938(2*n))` -/
def P19395686418385668.Spec : Prop :=
  ∀ n, P19395686418385668.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P4572362293574680374

`xor(n+1, A262610(2*n+1))`
-/

namespace A169813.P4572362293574680374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A262610 (2 * n + 1))

end

end A169813.P4572362293574680374

namespace A169813

/-- `xor(n+1, A262610(2*n+1))` -/
def P4572362293574680374.Spec : Prop :=
  ∀ n, P4572362293574680374.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P3866187241043681888

`xor(A000203(A008611(3*n)), A008611(3*n))`
-/

namespace A169813.P3866187241043681888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (A008611 (3 * n)).toNat) (A008611 (3 * n))

end

end A169813.P3866187241043681888

namespace A169813

/-- `xor(A000203(A008611(3*n)), A008611(3*n))` -/
def P3866187241043681888.Spec : Prop :=
  ∀ n, P3866187241043681888.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P1178054388368023688

`xor(n+1, A008619(A002659(n+1)))`
-/

namespace A169813.P1178054388368023688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A008619 (A002659 (n + 1)).toNat)

end

end A169813.P1178054388368023688

namespace A169813

/-- `xor(n+1, A008619(A002659(n+1)))` -/
def P1178054388368023688.Spec : Prop :=
  ∀ n, P1178054388368023688.a n = A169813 (n + 1)

end A169813

/-! ## A169813.P350299859597285423

`xor(n+1, A026741(A074400(n+1)))`
-/

namespace A169813.P350299859597285423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A026741 (A074400 (n + 1)).toNat)

end

end A169813.P350299859597285423

namespace A169813

/-- `xor(n+1, A026741(A074400(n+1)))` -/
def P350299859597285423.Spec : Prop :=
  ∀ n, P350299859597285423.a n = A169813 (n + 1)

end A169813

/-!
# A169814: a(n) = n XOR phi(n).

The programs for A169814, the canonical program `A169814.P1469145148772648033` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169814 has offset 1).

The definition of A169814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169814.P11244081362218226392

`xor(n+1, Δ[A002088(n)])`
-/

namespace A169814.P11244081362218226392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A169814.P11244081362218226392

namespace A169814

/-- `xor(n+1, Δ[A002088(n)])` -/
def P11244081362218226392.Spec : Prop :=
  ∀ n, P11244081362218226392.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P4033275495226744099

`xor(n+1, Δ[A005728(n)])`
-/

namespace A169814.P4033275495226744099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A169814.P4033275495226744099

namespace A169814

/-- `xor(n+1, Δ[A005728(n)])` -/
def P4033275495226744099.Spec : Prop :=
  ∀ n, P4033275495226744099.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P16935715741195993836

`xor(n+1, A000010(n+1))`
-/

namespace A169814.P16935715741195993836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000010 (n + 1))

end

end A169814.P16935715741195993836

namespace A169814

/-- `xor(n+1, A000010(n+1))` -/
def P16935715741195993836.Spec : Prop :=
  ∀ n, P16935715741195993836.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P16047383802768672620

`xor(n+1, sqrt(A127473(n+1)))`
-/

namespace A169814.P16047383802768672620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ)))

end

end A169814.P16047383802768672620

namespace A169814

/-- `xor(n+1, sqrt(A127473(n+1)))` -/
def P16047383802768672620.Spec : Prop :=
  ∀ n, P16047383802768672620.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P1209199400659607936

`xor(n+1, Δ[A100449(n)/4])`
-/

namespace A169814.P1209199400659607936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A169814.P1209199400659607936

namespace A169814

/-- `xor(n+1, Δ[A100449(n)/4])` -/
def P1209199400659607936.Spec : Prop :=
  ∀ n, P1209199400659607936.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P12185469513484325595

`xor(n+1, A109606(n+1)+1)`
-/

namespace A169814.P12185469513484325595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A109606 (n + 1) + 1)

end

end A169814.P12185469513484325595

namespace A169814

/-- `xor(n+1, A109606(n+1)+1)` -/
def P12185469513484325595.Spec : Prop :=
  ∀ n, P12185469513484325595.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P10882716258897895288

`xor(n+1, A039649(n+1)-1)`
-/

namespace A169814.P10882716258897895288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A039649 (n + 1) - 1)

end

end A169814.P10882716258897895288

namespace A169814

/-- `xor(n+1, A039649(n+1)-1)` -/
def P10882716258897895288.Spec : Prop :=
  ∀ n, P10882716258897895288.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P15380787727716552215

`xor(n+1, A349137(2*n+1))`
-/

namespace A169814.P15380787727716552215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A349137 (2 * n + 1))

end

end A169814.P15380787727716552215

namespace A169814

/-- `xor(n+1, A349137(2*n+1))` -/
def P15380787727716552215.Spec : Prop :=
  ∀ n, P15380787727716552215.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P14488547155000882570

`xor(n+1, A319998(2*(n+1))/2)`
-/

namespace A169814.P14488547155000882570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2))

end

end A169814.P14488547155000882570

namespace A169814

/-- `xor(n+1, A319998(2*(n+1))/2)` -/
def P14488547155000882570.Spec : Prop :=
  ∀ n, P14488547155000882570.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P127498203023261773

`xor(n+1, A002618(n+1)/(n+1))`
-/

namespace A169814.P127498203023261773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A169814.P127498203023261773

namespace A169814

/-- `xor(n+1, A002618(n+1)/(n+1))` -/
def P127498203023261773.Spec : Prop :=
  ∀ n, P127498203023261773.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P1469145148772648033

`xor(n+1, A239443(n+1)%(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A169814

/-- `xor(n+1, A239443(n+1)%(n+2))` -/
def P1469145148772648033.Spec : Prop :=
  ∀ n, P1469145148772648033.a n = A169814 (n + 1)

theorem P1469145148772648033.correct : P1469145148772648033.Spec := by
  intro n
  simp only [A169814, Nat.add_sub_cancel]

end A169814

/-! ## A169814.P7274275948741803924

`xor(n+1, A002088(n+1)-A002088(n))`
-/

namespace A169814.P7274275948741803924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A002088 (n + 1) - A002088 n)

end

end A169814.P7274275948741803924

namespace A169814

/-- `xor(n+1, A002088(n+1)-A002088(n))` -/
def P7274275948741803924.Spec : Prop :=
  ∀ n, P7274275948741803924.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P16346813845559022438

`xor(n+1, A046073(n+1)*A060594(n+1))`
-/

namespace A169814.P16346813845559022438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A046073 (n + 1) * A060594 (n + 1))

end

end A169814.P16346813845559022438

namespace A169814

/-- `xor(n+1, A046073(n+1)*A060594(n+1))` -/
def P16346813845559022438.Spec : Prop :=
  ∀ n, P16346813845559022438.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P11926964710174426631

`xor(n+1, A067541(2*n+1))`
-/

namespace A169814.P11926964710174426631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A067541 (2 * n + 1))

end

end A169814.P11926964710174426631

namespace A169814

/-- `xor(n+1, A067541(2*n+1))` -/
def P11926964710174426631.Spec : Prop :=
  ∀ n, P11926964710174426631.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P18268835569831105319

`xor(n+1, A309563(2*n+1))`
-/

namespace A169814.P18268835569831105319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A309563 (2 * n + 1))

end

end A169814.P18268835569831105319

namespace A169814

/-- `xor(n+1, A309563(2*n+1))` -/
def P18268835569831105319.Spec : Prop :=
  ∀ n, P18268835569831105319.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P1914140284077082555

`xor(A000010(A028242(2*n)), A028242(2*n))`
-/

namespace A169814.P1914140284077082555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000010 (A028242 (2 * n)).toNat) (A028242 (2 * n))

end

end A169814.P1914140284077082555

namespace A169814

/-- `xor(A000010(A028242(2*n)), A028242(2*n))` -/
def P1914140284077082555.Spec : Prop :=
  ∀ n, P1914140284077082555.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P8945872647010693942

`xor(n+1, Δ[A206297(n+1)/2])`
-/

namespace A169814.P8945872647010693942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A169814.P8945872647010693942

namespace A169814

/-- `xor(n+1, Δ[A206297(n+1)/2])` -/
def P8945872647010693942.Spec : Prop :=
  ∀ n, P8945872647010693942.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P4619493734307128924

`xor(n+1, A089929(2*(n+1)))`
-/

namespace A169814.P4619493734307128924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A089929 (2 * (n + 1)))

end

end A169814.P4619493734307128924

namespace A169814

/-- `xor(n+1, A089929(2*(n+1)))` -/
def P4619493734307128924.Spec : Prop :=
  ∀ n, P4619493734307128924.a n = A169814 (n + 1)

end A169814

/-! ## A169814.P4960879113822470844

`xor(n+1, A282634(∑[n]+1))`
-/

namespace A169814.P4960879113822470844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A169814.P4960879113822470844

namespace A169814

/-- `xor(n+1, A282634(∑[n]+1))` -/
def P4960879113822470844.Spec : Prop :=
  ∀ n, P4960879113822470844.a n = A169814 (n + 1)

end A169814

/-!
# A169815: a(n) = lcm(1, 2, ..., n)^(n-1)/(n!*(n-1)!).

The programs for A169815, there is no canonical definition to state claims against.
-/

/-! ## A169815.P8169794612337067267

`3*A087108(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A169815.P8169794612337067267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * A087108 (a (n - 1)).toNat

end

end A169815.P8169794612337067267

/-!
# A169817: n-th prime with both a prime number of 0's and a prime number of 1's in binary representation minus n-th semiprime with both a prime number of 0's and a prime number of 1's in their binary representation.

The programs for A169817, the canonical program `A169817.P582197871743041052` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169817 has offset 1).

The definition of A169817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144214, A178350, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169817.P582197871743041052

`A144214(n+1)-A178350(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A169817

/-- `A144214(n+1)-A178350(n+1)` -/
def P582197871743041052.Spec : Prop :=
  ∀ n, P582197871743041052.a n = A169817 (n + 1)

theorem P582197871743041052.correct : P582197871743041052.Spec := by
  intro n
  simp only [A169817, Nat.add_sub_cancel]

end A169817

/-! ## A169817.P8920641766770945834

`p?[A343258(n+1)]-A178350(n+1)`
-/

namespace A169817.P8920641766770945834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A178350 (n + 1)

end

end A169817.P8920641766770945834

namespace A169817

/-- `p?[A343258(n+1)]-A178350(n+1)` -/
def P8920641766770945834.Spec : Prop :=
  ∀ n, P8920641766770945834.a n = A169817 (n + 1)

end A169817

/-! ## A169817.P16303499648973427523

`p?[A160899(A144213(n+1))]-A178350(n+1)`
-/

namespace A169817.P16303499648973427523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160899 (A144213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A178350 (n + 1)

end

end A169817.P16303499648973427523

namespace A169817

/-- `p?[A160899(A144213(n+1))]-A178350(n+1)` -/
def P16303499648973427523.Spec : Prop :=
  ∀ n, P16303499648973427523.a n = A169817 (n + 1)

end A169817

/-! ## A169817.P6319265553821827637

`p?[A160899(A144754(n+1))]-A178350(n+1)`
-/

namespace A169817.P6319265553821827637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160899 (A144754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A178350 (n + 1)

end

end A169817.P6319265553821827637

namespace A169817

/-- `p?[A160899(A144754(n+1))]-A178350(n+1)` -/
def P6319265553821827637.Spec : Prop :=
  ∀ n, P6319265553821827637.a n = A169817 (n + 1)

end A169817

/-! ## A169817.P17522388853161828121

`record[A014963(A343258(n+4))]-A178350(n+1)`
-/

namespace A169817.P17522388853161828121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A343258 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A178350 (n + 1)

end

end A169817.P17522388853161828121

namespace A169817

/-- `record[A014963(A343258(n+4))]-A178350(n+1)` -/
def P17522388853161828121.Spec : Prop :=
  ∀ n, P17522388853161828121.a n = A169817 (n + 1)

end A169817

/-! ## A169817.P3346380493891104578

`record[A006530(2*A343258(n+4))]-A178350(n+1)`
-/

namespace A169817.P3346380493891104578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A343258 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A178350 (n + 1)

end

end A169817.P3346380493891104578

namespace A169817

/-- `record[A006530(2*A343258(n+4))]-A178350(n+1)` -/
def P3346380493891104578.Spec : Prop :=
  ∀ n, P3346380493891104578.a n = A169817 (n + 1)

end A169817

/-! ## A169817.P9867547400841809354

`∩[A000040(n+1), A343258(n+1)]-A178350(n+1)`
-/

namespace A169817.P9867547400841809354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A178350 (n + 1)

end

end A169817.P9867547400841809354

namespace A169817

/-- `∩[A000040(n+1), A343258(n+1)]-A178350(n+1)` -/
def P9867547400841809354.Spec : Prop :=
  ∀ n, P9867547400841809354.a n = A169817 (n + 1)

end A169817

/-!
# A169818: Rank of n-th prime as defined in A177854.

The programs for A169818, there is no canonical definition to state claims against.
-/

/-! ## A169818.P13877460300190179997

`A190592((8*n+4)*A107750(n))`
-/

namespace A169818.P13877460300190179997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 ((8 * n + 4 : ℤ) * A107750 n).toNat

end

end A169818.P13877460300190179997

/-! ## A169818.P14308835732224382694

`floor(A335875(A100484(n+1)²)^(1/2))`
-/

namespace A169818.P14308835732224382694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335875 (A100484 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A169818.P14308835732224382694

/-! ## A169818.P16720354709706275133

`A000196(A335875(A100484(n+1)²))`
-/

namespace A169818.P16720354709706275133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A335875 (A100484 (n + 1) ^ 2).toNat).toNat

end

end A169818.P16720354709706275133

/-! ## A169818.P10032122577512822822

`A190592(A145771(n+1)-A074909(n))`
-/

namespace A169818.P10032122577512822822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 (A145771 (n + 1) - A074909 n).toNat

end

end A169818.P10032122577512822822

/-! ## A169818.P1390752397922660392

`∑{d}[A335875(A100484(n+1)²), A074941(#)]`
-/

namespace A169818.P1390752397922660392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (A100484 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A074941 d

end

end A169818.P1390752397922660392

/-!
# A169819: a(n) = total number of distinct divisors of n and all of its substrings.

The programs for A169819, there is no canonical definition to state claims against.
-/

/-! ## A169819.P872334287455750972

`gcd(A000038(37*n²), A003056(A069949(n+1)))`
-/

namespace A169819.P872334287455750972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (37 * n ^ 2)) (A003056 (A069949 (n + 1)).toNat)

end

end A169819.P872334287455750972

/-! ## A169819.P7515814370371238834

`A008619(A000010(n+2))-A073490(A002531(n))`
-/

namespace A169819.P7515814370371238834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000010 (n + 2)).toNat - A073490 (A002531 n).toNat

end

end A169819.P7515814370371238834

/-! ## A169819.P7789284309022670537

`A003056(A069949(n+1))^A001222(A202264(n+1))`
-/

namespace A169819.P7789284309022670537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A069949 (n + 1)).toNat : ℚ) ^ (A001222 (A202264 (n + 1)).toNat : ℤ)

end

end A169819.P7789284309022670537

/-! ## A169819.P9853786884484064936

`A125005(A094436(2*n))+A000005(n+1)`
-/

namespace A169819.P9853786884484064936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A094436 (2 * n)).toNat + A000005 (n + 1)

end

end A169819.P9853786884484064936

/-! ## A169819.P4022487176437743628

`A350289(A228540(n))+A000005(n+1)`
-/

namespace A169819.P4022487176437743628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350289 (A228540 n).toNat + A000005 (n + 1)

end

end A169819.P4022487176437743628

/-!
# A169820: 1 followed by first differences of A169799.

The programs for A169820, there is no canonical definition to state claims against.
-/

/-! ## A169820.P12052577687818427692

`Δ[Δ[A167209(A289207(n+1))]]`
-/

namespace A169820.P12052577687818427692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 (A289207 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169820.P12052577687818427692

/-! ## A169820.P4653742484421336173

`Δ[Δ[A167209(A004273(n)-n)]]`
-/

namespace A169820.P4653742484421336173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169820.P4653742484421336173

/-! ## A169820.P521546602712378462

`Δ[Δ[A167209(n-A057427(n))]]`
-/

namespace A169820.P521546602712378462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169820.P521546602712378462

/-! ## A169820.P1801319432609030101

`Δ[A169799(A028310(n))%(n+1)²]`
-/

namespace A169820.P1801319432609030101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169799 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169820.P1801319432609030101

/-! ## A169820.P13928048678791874432

`A028310(Δ[A169799(A028310(n))])`
-/

namespace A169820.P13928048678791874432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A169820.P13928048678791874432

/-! ## A169820.P13280371308866567936

`A169799(n+1)-A057427(n)*A169799(A028310(n))`
-/

namespace A169820.P13280371308866567936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (n + 1) - A057427 n * A169799 (A028310 n).toNat

end

end A169820.P13280371308866567936

/-! ## A169820.P2721468386920221305

`A169799(n+1)-A169799(A028310(n))*A178334(n)`
-/

namespace A169820.P2721468386920221305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (n + 1) - A169799 (A028310 n).toNat * A178334 n

end

end A169820.P2721468386920221305

/-!
# A169821: a(n) = n*n in carryless arithmetic mod 9 in base 10.

The programs for A169821, there is no canonical definition to state claims against.
-/

/-! ## A169821.P279892937947163591

`n²%A006945(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A169821.P279892937947163591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A006945 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum))

end

end A169821.P279892937947163591

/-! ## A169821.P5088514382117706587

`n²%A072563(A111696(n))`
-/

namespace A169821.P5088514382117706587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A072563 (A111696 n).toNat)

end

end A169821.P5088514382117706587

/-! ## A169821.P13969745256752618301

`A000290(n)%A081655(A111696(n))`
-/

namespace A169821.P13969745256752618301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A081655 (A111696 n).toNat)

end

end A169821.P13969745256752618301

/-! ## A169821.P5974241934689238976

`A169908(n)%A081655(A111696(n))`
-/

namespace A169821.P5974241934689238976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169908 n) (A081655 (A111696 n).toNat)

end

end A169821.P5974241934689238976

/-! ## A169821.P4529625423387034966

`A170990(n)%A289631(A072656(2*n+1))`
-/

namespace A169821.P4529625423387034966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170990 n) (A289631 (A072656 (2 * n + 1)).toNat)

end

end A169821.P4529625423387034966

/-!
# A169823: Multiples of 60.

The programs for A169823, the canonical program `A169823.P12585432685136228227` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169823 has offset 0).

The definition of A169823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169823.P12585432685136228227

`60*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169823

/-- `60*n` -/
def P12585432685136228227.Spec : Prop :=
  ∀ n, (P12585432685136228227.a n : ℤ) = A169823 n

theorem P12585432685136228227.correct : P12585432685136228227.Spec := by
  intro n
  simp only [A169823]

end A169823

/-!
# A169824: Numbers n such that n is divisible by n-with-its-digits-reversed.

The programs for A169824, there is no canonical definition to state claims against.
-/

/-! ## A169824.P2695167223068635454

`record[(n+1)/A000201((n+1)%A004086(n+1)+1)]`
-/

namespace A169824.P2695167223068635454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000201 (Int.tmod (n + 1 : ℤ) (A004086 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169824.P2695167223068635454

/-! ## A169824.P10214859117868096878

`record[(n+1)²/A068634(n+1)]`
-/

namespace A169824.P10214859117868096878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A068634 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169824.P10214859117868096878

/-! ## A169824.P30867087779455172

`eq[n, A068634(A028310(n))]`
-/

namespace A169824.P30867087779455172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169824.P30867087779455172

/-! ## A169824.P17300823492505404939

`record[A004277(n+1)-A068634(n+1)]`
-/

namespace A169824.P17300823492505404939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - A068634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169824.P17300823492505404939

/-! ## A169824.P9936031754379238044

`A068634(record[n/(A068634(n+1)-n)]+1)`
-/

namespace A169824.P9936031754379238044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A068634 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A169824.P9936031754379238044

/-! ## A169824.P17593524163325006161

`A068634(record[2*n+1-A068634(n+1)]+1)`
-/

namespace A169824.P17593524163325006161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A068634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A169824.P17593524163325006161

/-! ## A169824.P711563095932602039

`A281625(n+1)%A002189(n)`
-/

namespace A169824.P711563095932602039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281625 (n + 1)) (A002189 n)

end

end A169824.P711563095932602039

/-! ## A169824.P14413775290166624569

`∩[A083970(n+1), A325152(n+1)]`
-/

namespace A169824.P14413775290166624569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169824.P14413775290166624569

/-! ## A169824.P17169547990914637900

`∩[A113763(n+1), A325152(n+1)]`
-/

namespace A169824.P17169547990914637900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169824.P17169547990914637900

/-!
# A169825: Multiples of 420.

The programs for A169825, the canonical program `A169825.P14779344498431350681` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169825 has offset 0).

The definition of A169825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169825.P14779344498431350681

`420*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169825

/-- `420*n` -/
def P14779344498431350681.Spec : Prop :=
  ∀ n, (P14779344498431350681.a n : ℤ) = A169825 n

theorem P14779344498431350681.correct : P14779344498431350681.Spec := by
  intro n
  simp only [A169825]

end A169825

/-!
# A169826: Row sums of triangle A178568.

The programs for A169826, there is no canonical definition to state claims against.
-/

/-! ## A169826.P8607531467441224307

`A123578(∑[2^n*A014689(n+1)])`
-/

namespace A169826.P8607531467441224307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169826.P8607531467441224307

/-! ## A169826.P7268807477675226384

`A328547(n)+A060953(A003418(n))`
-/

namespace A169826.P7268807477675226384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328547 n + A060953 (A003418 n).toNat

end

end A169826.P7268807477675226384

/-! ## A169826.P2475979918711258060

`A328547(n)+A276004(A317652(n))`
-/

namespace A169826.P2475979918711258060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328547 n + A276004 (A317652 n).toNat

end

end A169826.P2475979918711258060

/-! ## A169826.P15986165369558236803

`A003056(A302830(n)*A302833(n))`
-/

namespace A169826.P15986165369558236803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A302830 n * A302833 n).toNat

end

end A169826.P15986165369558236803

/-!
# A169827: Multiples of 840.

The programs for A169827, the canonical program `A169827.P13262497012665629211` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169827 has offset 0).

The definition of A169827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169827.P13262497012665629211

`840*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169827

/-- `840*n` -/
def P13262497012665629211.Spec : Prop :=
  ∀ n, (P13262497012665629211.a n : ℤ) = A169827 n

theorem P13262497012665629211.correct : P13262497012665629211.Spec := by
  intro n
  simp only [A169827]

end A169827

/-!
# A169829: Palindromes that are a product of consecutive primes.

The programs for A169829, the canonical program `A169829.P7353233119474052115` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169829 has offset 1).

The definition of A169829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169829.P5359097885794890364

`∩[A071251(n+1), A260442(n)]`
-/

namespace A169829.P5359097885794890364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P5359097885794890364

namespace A169829

/-- `∩[A071251(n+1), A260442(n)]` -/
def P5359097885794890364.Spec : Prop :=
  ∀ n, (P5359097885794890364.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P9547499593200378714

`∩[A002113(n+1), A073485(n+1)]`
-/

namespace A169829.P9547499593200378714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P9547499593200378714

namespace A169829

/-- `∩[A002113(n+1), A073485(n+1)]` -/
def P9547499593200378714.Spec : Prop :=
  ∀ n, (P9547499593200378714.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P3293895413070195235

`∩[A071251(n+1), A073485(n+1)]`
-/

namespace A169829.P3293895413070195235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P3293895413070195235

namespace A169829

/-- `∩[A071251(n+1), A073485(n+1)]` -/
def P3293895413070195235.Spec : Prop :=
  ∀ n, (P3293895413070195235.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P3714374602853253404

`∩[A071251(n+1), A133810(n+1)]`
-/

namespace A169829.P3714374602853253404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P3714374602853253404

namespace A169829

/-- `∩[A071251(n+1), A133810(n+1)]` -/
def P3714374602853253404.Spec : Prop :=
  ∀ n, (P3714374602853253404.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P15435067053057781653

`∩[A071251(n+1), A133812(n+1)]`
-/

namespace A169829.P15435067053057781653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P15435067053057781653

namespace A169829

/-- `∩[A071251(n+1), A133812(n+1)]` -/
def P15435067053057781653.Spec : Prop :=
  ∀ n, (P15435067053057781653.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P15395941517059926381

`∩[A073485(n+1), A306273(n+1)]`
-/

namespace A169829.P15395941517059926381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P15395941517059926381

namespace A169829

/-- `∩[A073485(n+1), A306273(n+1)]` -/
def P15395941517059926381.Spec : Prop :=
  ∀ n, (P15395941517059926381.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P15648442489350830725

`∩[A071251(n+1), A073491(n+1)]`
-/

namespace A169829.P15648442489350830725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169829.P15648442489350830725

namespace A169829

/-- `∩[A071251(n+1), A073491(n+1)]` -/
def P15648442489350830725.Spec : Prop :=
  ∀ n, (P15648442489350830725.a n : ℤ) = A169829 (n + 1)

end A169829

/-! ## A169829.P7353233119474052115

`∩[A073485(n+1), A110751(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A169829

/-- `∩[A073485(n+1), A110751(n+1)]` -/
def P7353233119474052115.Spec : Prop :=
  ∀ n, (P7353233119474052115.a n : ℤ) = A169829 (n + 1)

theorem P7353233119474052115.correct : P7353233119474052115.Spec := by
  intro n
  simp only [A169829, Nat.add_sub_cancel]

end A169829

/-! ## A169829.P5006828167620413708

`filter[A071251(n+1), A137794(#)]`
-/

namespace A169829.P5006828167620413708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A169829.P5006828167620413708

namespace A169829

/-- `filter[A071251(n+1), A137794(#)]` -/
def P5006828167620413708.Spec : Prop :=
  ∀ n, P5006828167620413708.a n = A169829 (n + 1)

end A169829

/-! ## A169829.P2602045259467777559

`filter[A071251(n+1), A389449(#)]`
-/

namespace A169829.P2602045259467777559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A169829.P2602045259467777559

namespace A169829

/-- `filter[A071251(n+1), A389449(#)]` -/
def P2602045259467777559.Spec : Prop :=
  ∀ n, P2602045259467777559.a n = A169829 (n + 1)

end A169829

/-!
# A169831: a(n) = 5*2^(n+1) - 3*(n+3).

The programs for A169831, the canonical program `A169831.P10133078793643380953` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169831 has offset 0).

The definition of A169831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^(n+1)-3*(n+3)` (program `A169831.P10133078793643380953`, by `A169831.P10133078793643380953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169831.P10133078793643380953

`5*2^(n+1)-3*(n+3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169831

/-- `5*2^(n+1)-3*(n+3)` -/
def P10133078793643380953.Spec : Prop :=
  ∀ n, P10133078793643380953.a n = A169831 n

theorem P10133078793643380953.correct : P10133078793643380953.Spec := by
  intro n
  simp only [A169831]

end A169831

/-! ## A169831.P13780907286023458120

`∑[ogf((1+4x-2x^2)/(1-3x+2x^2))]`
-/

namespace A169831.P13780907286023458120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P13780907286023458120

namespace A169831

/-- `∑[ogf((1+4x-2x^2)/(1-3x+2x^2))]` -/
def P13780907286023458120.Spec : Prop :=
  ∀ n, P13780907286023458120.a n = A169831 n

end A169831

/-! ## A169831.P2205625269771672330

`ogf((1+4x-2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A169831.P2205625269771672330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2] [1, -4, 5, -2] n

end

end A169831.P2205625269771672330

namespace A169831

/-- `ogf((1+4x-2x^2)/(1-4x+5x^2-2x^3))` -/
def P2205625269771672330.Spec : Prop :=
  ∀ n, P2205625269771672330.a n = A169831 n

end A169831

/-! ## A169831.P6000879330885040015

`∑[2*a(n-1)+3]` with `a(0)=1, a(1)=7`
-/

namespace A169831.P6000879330885040015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P6000879330885040015

namespace A169831

/-- `∑[2*a(n-1)+3]` -/
def P6000879330885040015.Spec : Prop :=
  ∀ n, (P6000879330885040015.a n : ℤ) = A169831 n

end A169831

/-! ## A169831.P2191544811840070499

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=6, a(2)=10`
-/

namespace A169831.P2191544811840070499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 10] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P2191544811840070499

namespace A169831

/-- `∑[∑[2*a(n-1)]]` -/
def P2191544811840070499.Spec : Prop :=
  ∀ n, (P2191544811840070499.a n : ℤ) = A169831 n

end A169831

/-! ## A169831.P8923336298609043646

`floor(2*a(n-1)+3*(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A169831.P8923336298609043646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 3 * (n + 1)

end

end A169831.P8923336298609043646

namespace A169831

/-- `floor(2*a(n-1)+3*(n+1))` -/
def P8923336298609043646.Spec : Prop :=
  ∀ n, (P8923336298609043646.a n : ℤ) = A169831 n

theorem P8923336298609043646.correct : P8923336298609043646.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169831, Nat.add_sub_cancel, A169831.P8923336298609043646.a, A169831.P10133078793643380953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169831, Nat.add_sub_cancel, A169831.P8923336298609043646.a, A169831.P10133078793643380953.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A169831

/-! ## A169831.P16660046147616409081

`∑[a(n-1)+a(n-1)+3]` with `a(0)=1, a(1)=7`
-/

namespace A169831.P16660046147616409081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P16660046147616409081

namespace A169831

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P16660046147616409081.Spec : Prop :=
  ∀ n, (P16660046147616409081.a n : ℤ) = A169831 n

end A169831

/-! ## A169831.P3307074908968057049

`2*(a(n-1)+(n+1)*3/2)` with `a(0)=1`
-/

namespace A169831.P3307074908968057049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (n + 1 : ℚ) * ((3 : ℚ) / 2))

end

end A169831.P3307074908968057049

namespace A169831

/-- `2*(a(n-1)+(n+1)*3/2)` -/
def P3307074908968057049.Spec : Prop :=
  ∀ n, P3307074908968057049.a n = (A169831 n : ℚ)

theorem P3307074908968057049.correct : P3307074908968057049.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169831, Nat.add_sub_cancel, A169831.P3307074908968057049.a, A169831.P10133078793643380953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169831, Nat.add_sub_cancel, A169831.P3307074908968057049.a, A169831.P10133078793643380953.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A169831

/-! ## A169831.P18179144475845420044

`∑[2*A052549(n)-1]`
-/

namespace A169831.P18179144475845420044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052549 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P18179144475845420044

namespace A169831

/-- `∑[2*A052549(n)-1]` -/
def P18179144475845420044.Spec : Prop :=
  ∀ n, P18179144475845420044.a n = A169831 n

end A169831

/-! ## A169831.P16947230963895230720

`∑[A134067(n)+A000225(n)]`
-/

namespace A169831.P16947230963895230720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P16947230963895230720

namespace A169831

/-- `∑[A134067(n)+A000225(n)]` -/
def P16947230963895230720.Spec : Prop :=
  ∀ n, P16947230963895230720.a n = A169831 n

end A169831

/-! ## A169831.P4363981559852403106

`∑[A134067(n)+∑[A131577(n)]]`
-/

namespace A169831.P4363981559852403106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P4363981559852403106

namespace A169831

/-- `∑[A134067(n)+∑[A131577(n)]]` -/
def P4363981559852403106.Spec : Prop :=
  ∀ n, P4363981559852403106.a n = A169831 n

end A169831

/-! ## A169831.P12718933814280776775

`∑[A000079(n)+A134067(n)-1]`
-/

namespace A169831.P12718933814280776775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A134067 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P12718933814280776775

namespace A169831

/-- `∑[A000079(n)+A134067(n)-1]` -/
def P12718933814280776775.Spec : Prop :=
  ∀ n, P12718933814280776775.a n = A169831 n

end A169831

/-! ## A169831.P12078204166613460553

`∑[A052940(n)+2*A000225(n)]`
-/

namespace A169831.P12078204166613460553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n + 2 * A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P12078204166613460553

namespace A169831

/-- `∑[A052940(n)+2*A000225(n)]` -/
def P12078204166613460553.Spec : Prop :=
  ∀ n, P12078204166613460553.a n = A169831 n

end A169831

/-! ## A169831.P1693868331809210885

`∑[A134067(n)+floor(A033484(n)/3)]`
-/

namespace A169831.P1693868331809210885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n + ⌊(A033484 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P1693868331809210885

namespace A169831

/-- `∑[A134067(n)+floor(A033484(n)/3)]` -/
def P1693868331809210885.Spec : Prop :=
  ∀ n, P1693868331809210885.a n = A169831 n

end A169831

/-! ## A169831.P3560404802846290833

`∑[2*(A033484(n)-A011782(n))+1]`
-/

namespace A169831.P3560404802846290833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033484 n - A011782 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P3560404802846290833

namespace A169831

/-- `∑[2*(A033484(n)-A011782(n))+1]` -/
def P3560404802846290833.Spec : Prop :=
  ∀ n, P3560404802846290833.a n = A169831 n

end A169831

/-! ## A169831.P10644005203715120639

`∑[A134067(n)+A198275(n)%A000079(n)]`
-/

namespace A169831.P10644005203715120639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n + Int.tmod (A198275 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169831.P10644005203715120639

namespace A169831

/-- `∑[A134067(n)+A198275(n)%A000079(n)]` -/
def P10644005203715120639.Spec : Prop :=
  ∀ n, P10644005203715120639.a n = A169831 n

end A169831

/-! ## A169831.P14740891313000562806

`A387391(n)%A156202(n+1)`
-/

namespace A169831.P14740891313000562806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387391 n) (A156202 (n + 1))

end

end A169831.P14740891313000562806

namespace A169831

/-- `A387391(n)%A156202(n+1)` -/
def P14740891313000562806.Spec : Prop :=
  ∀ n, P14740891313000562806.a n = A169831 n

end A169831

/-!
# A169832: a(n) = 15*2^(n+1) - (5*n^2+22*n+30).

The programs for A169832, the canonical program `A169832.P2197005489416343122` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169832 has offset 0).

The definition of A169832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^(n+1)-(5*n²+22*n+30)` (program `A169832.P2197005489416343122`, by `A169832.P2197005489416343122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169832.P2197005489416343122

`15*2^(n+1)-(5*n²+22*n+30)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169832

/-- `15*2^(n+1)-(5*n²+22*n+30)` -/
def P2197005489416343122.Spec : Prop :=
  ∀ n, P2197005489416343122.a n = A169832 n

theorem P2197005489416343122.correct : P2197005489416343122.Spec := by
  intro n
  simp only [A169832]

end A169832

/-! ## A169832.P5436932262551078795

`∑[A075326(A050488(n))]`
-/

namespace A169832.P5436932262551078795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (A050488 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169832.P5436932262551078795

namespace A169832

/-- `∑[A075326(A050488(n))]` -/
def P5436932262551078795.Spec : Prop :=
  ∀ n, P5436932262551078795.a n = A169832 n

end A169832

/-!
# A169833: a(n) = 25*2^(n+3) - (198+392*n/3+36*n^2+10*n^3/3).

The programs for A169833, the canonical program `A169833.P12576482676920839500` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169833 has offset 0).

The definition of A169833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169833.P12576482676920839500

`25*2^(n+3)-(198+392*n/3+36*n²+10*n^3/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169833

/-- `25*2^(n+3)-(198+392*n/3+36*n²+10*n^3/3)` -/
def P12576482676920839500.Spec : Prop :=
  ∀ n, P12576482676920839500.a n = (A169833 n : ℚ)

end A169833

/-!
# A169834: Numbers k such that d(k-1) = d(k) = d(k+1).

The programs for A169834, the canonical program `A169834.P3285917251730372984` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169834 has offset 1).

The definition of A169834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005238, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169834.P3285917251730372984

`A005238(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A169834

/-- `A005238(n+1)+1` -/
def P3285917251730372984.Spec : Prop :=
  ∀ n, P3285917251730372984.a n = A169834 (n + 1)

theorem P3285917251730372984.correct : P3285917251730372984.Spec := by
  intro n
  simp only [A169834, Nat.add_sub_cancel]

end A169834

/-! ## A169834.P2282989878745886474

`filter[A074757(n+1), A361022(#)]`
-/

namespace A169834.P2282989878745886474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A169834.P2282989878745886474

namespace A169834

/-- `filter[A074757(n+1), A361022(#)]` -/
def P2282989878745886474.Spec : Prop :=
  ∀ n, P2282989878745886474.a n = A169834 (n + 1)

end A169834

/-! ## A169834.P4232128685204413259

`∩[A005237(n+1), A074757(n+1)]`
-/

namespace A169834.P4232128685204413259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P4232128685204413259

namespace A169834

/-- `∩[A005237(n+1), A074757(n+1)]` -/
def P4232128685204413259.Spec : Prop :=
  ∀ n, (P4232128685204413259.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P14804766182483323271

`∩[A005237(n+1), A083795(n+1)]`
-/

namespace A169834.P14804766182483323271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P14804766182483323271

namespace A169834

/-- `∩[A005237(n+1), A083795(n+1)]` -/
def P14804766182483323271.Spec : Prop :=
  ∀ n, (P14804766182483323271.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P4984425178780700975

`∩[A074757(n+1), A083795(n+1)]`
-/

namespace A169834.P4984425178780700975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P4984425178780700975

namespace A169834

/-- `∩[A074757(n+1), A083795(n+1)]` -/
def P4984425178780700975.Spec : Prop :=
  ∀ n, (P4984425178780700975.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P976075515792440983

`record[gcd(A005237(n+6), A083795(n+5))]`
-/

namespace A169834.P976075515792440983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005237 (n + 6)) (A083795 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169834.P976075515792440983

namespace A169834

/-- `record[gcd(A005237(n+6), A083795(n+5))]` -/
def P976075515792440983.Spec : Prop :=
  ∀ n, (P976075515792440983.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P16029202575337452940

`∩[A083795(n+2)-1, A083795(n+2)]`
-/

namespace A169834.P16029202575337452940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P16029202575337452940

namespace A169834

/-- `∩[A083795(n+2)-1, A083795(n+2)]` -/
def P16029202575337452940.Spec : Prop :=
  ∀ n, (P16029202575337452940.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P16305165595843281652

`A083795(eq[1, A005237(n+2)-A005237(n+1)]+1)`
-/

namespace A169834.P16305165595843281652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2) - A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A169834.P16305165595843281652

namespace A169834

/-- `A083795(eq[1, A005237(n+2)-A005237(n+1)]+1)` -/
def P16305165595843281652.Spec : Prop :=
  ∀ n, P16305165595843281652.a n = A169834 (n + 1)

end A169834

/-! ## A169834.P8208091492676257136

`∩[A005237(n+1), A067888(n+1)]`
-/

namespace A169834.P8208091492676257136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P8208091492676257136

namespace A169834

/-- `∩[A005237(n+1), A067888(n+1)]` -/
def P8208091492676257136.Spec : Prop :=
  ∀ n, (P8208091492676257136.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P11845902903253656982

`∩[A067888(n+1), A074757(n+1)]`
-/

namespace A169834.P11845902903253656982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P11845902903253656982

namespace A169834

/-- `∩[A067888(n+1), A074757(n+1)]` -/
def P11845902903253656982.Spec : Prop :=
  ∀ n, (P11845902903253656982.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P1097420581500424919

`∩[A067888(n+1), A083795(n+1)]`
-/

namespace A169834.P1097420581500424919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P1097420581500424919

namespace A169834

/-- `∩[A067888(n+1), A083795(n+1)]` -/
def P1097420581500424919.Spec : Prop :=
  ∀ n, (P1097420581500424919.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P12822315157399995343

`∩[A005237(n+1), A062832(n+1)+1]`
-/

namespace A169834.P12822315157399995343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P12822315157399995343

namespace A169834

/-- `∩[A005237(n+1), A062832(n+1)+1]` -/
def P12822315157399995343.Spec : Prop :=
  ∀ n, (P12822315157399995343.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P1632296101303509398

`∩[A062832(n+1), A075034(n+1)]+1`
-/

namespace A169834.P1632296101303509398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A169834.P1632296101303509398

namespace A169834

/-- `∩[A062832(n+1), A075034(n+1)]+1` -/
def P1632296101303509398.Spec : Prop :=
  ∀ n, (P1632296101303509398.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P15046049955945472013

`∩[A062832(n+1), A075032(n+1)]+1`
-/

namespace A169834.P15046049955945472013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A169834.P15046049955945472013

namespace A169834

/-- `∩[A062832(n+1), A075032(n+1)]+1` -/
def P15046049955945472013.Spec : Prop :=
  ∀ n, (P15046049955945472013.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P4928393492475206474

`∩[A075032(n+1), A075034(n+1)]+1`
-/

namespace A169834.P4928393492475206474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A169834.P4928393492475206474

namespace A169834

/-- `∩[A075032(n+1), A075034(n+1)]+1` -/
def P4928393492475206474.Spec : Prop :=
  ∀ n, (P4928393492475206474.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P575918229089670482

`∩[A074757(n+1), A057922(n)]`
-/

namespace A169834.P575918229089670482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169834.P575918229089670482

namespace A169834

/-- `∩[A074757(n+1), A057922(n)]` -/
def P575918229089670482.Spec : Prop :=
  ∀ n, (P575918229089670482.a n : ℤ) = A169834 (n + 1)

end A169834

/-! ## A169834.P11942030442743513721

`A083795(eq[0, A051950(A005237(n+1))])`
-/

namespace A169834.P11942030442743513721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A005237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169834.P11942030442743513721

namespace A169834

/-- `A083795(eq[0, A051950(A005237(n+1))])` -/
def P11942030442743513721.Spec : Prop :=
  ∀ n, P11942030442743513721.a n = A169834 (n + 1)

end A169834

/-! ## A169834.P7973664774336925745

`A011760(A005238(n+1))`
-/

namespace A169834.P7973664774336925745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A005238 (n + 1)).toNat

end

end A169834.P7973664774336925745

namespace A169834

/-- `A011760(A005238(n+1))` -/
def P7973664774336925745.Spec : Prop :=
  ∀ n, P7973664774336925745.a n = A169834 (n + 1)

end A169834

/-! ## A169834.P3868904139172081169

`filter[A067888(n+1), A130638(#)]`
-/

namespace A169834.P3868904139172081169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A169834.P3868904139172081169

namespace A169834

/-- `filter[A067888(n+1), A130638(#)]` -/
def P3868904139172081169.Spec : Prop :=
  ∀ n, P3868904139172081169.a n = A169834 (n + 1)

end A169834

/-! ## A169834.P9809278506135517225

`filter[A074757(n+1), A130638(#)]`
-/

namespace A169834.P9809278506135517225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A169834.P9809278506135517225

namespace A169834

/-- `filter[A074757(n+1), A130638(#)]` -/
def P9809278506135517225.Spec : Prop :=
  ∀ n, P9809278506135517225.a n = A169834 (n + 1)

end A169834

/-!
# A169835: Perfect squares that are a product of two triangular numbers.

The programs for A169835, there is no canonical definition to state claims against.
-/

/-! ## A169835.P17097157987386252342

`∩[A085780(n+2), n²]`
-/

namespace A169835.P17097157987386252342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A169835.P17097157987386252342

/-! ## A169835.P9828550711908179881

`∩[A000290(n+1), A085780(n+1)]`
-/

namespace A169835.P9828550711908179881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169835.P9828550711908179881

/-! ## A169835.P563329665159025084

`∩[A005563(n)+1, A085780(n+1)]`
-/

namespace A169835.P563329665159025084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169835.P563329665159025084

/-! ## A169835.P4874136038851258550

`∩[A266918(n+1), A085780(n+1)]`
-/

namespace A169835.P4874136038851258550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169835.P4874136038851258550

/-! ## A169835.P12934904964316613597

`record[A008833(A085780(n+2))]`
-/

namespace A169835.P12934904964316613597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A085780 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169835.P12934904964316613597

/-!
# A169836: Perfect squares that are a product of two distinct triangular numbers.

The programs for A169836, there is no canonical definition to state claims against.
-/

/-! ## A169836.P17602380304006679379

`A175497(n+1)²`
-/

namespace A169836.P17602380304006679379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175497 (n + 1) ^ 2

end

end A169836.P17602380304006679379

/-! ## A169836.P15395154375352201204

`A175497(n+1)^A036453(n+1)`
-/

namespace A169836.P15395154375352201204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A169836.P15395154375352201204

/-! ## A169836.P15503966176601030204

`A175497(n+1)^(A057427(n)+1)`
-/

namespace A169836.P15503966176601030204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A169836.P15503966176601030204

/-! ## A169836.P1228703463765531897

`A175497(n+1)^A286161(p?[2*n+1])`
-/

namespace A169836.P1228703463765531897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A286161 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A169836.P1228703463765531897

/-! ## A169836.P17209348013605896805

`A175497(A004526(2*(n+1)))*A175497(n+1)`
-/

namespace A169836.P17209348013605896805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175497 (A004526 (2 * (n + 1))).toNat * A175497 (n + 1)

end

end A169836.P17209348013605896805

/-! ## A169836.P3147084932039746433

`A175497(n+1)^A359541(A084758(n+1))`
-/

namespace A169836.P3147084932039746433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A359541 (A084758 (n + 1)).toNat : ℤ)

end

end A169836.P3147084932039746433

/-! ## A169836.P14909245237127460762

`A175497(n+1)^A305800(A255898(n+1))`
-/

namespace A169836.P14909245237127460762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A305800 (A255898 (n + 1)).toNat : ℤ)

end

end A169836.P14909245237127460762

/-! ## A169836.P10551477645717464843

`A175497(n+1)^A020639(A028326(n))`
-/

namespace A169836.P10551477645717464843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (A028326 n).toNat : ℤ)

end

end A169836.P10551477645717464843

/-! ## A169836.P8546152208723302590

`A175497(n+1)^A020639(A177905(n+1))`
-/

namespace A169836.P8546152208723302590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (A177905 (n + 1)).toNat : ℤ)

end

end A169836.P8546152208723302590

/-! ## A169836.P15584249498510806942

`A175497(n+1)^A000005(A256970(n+1))`
-/

namespace A169836.P15584249498510806942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A000005 (A256970 (n + 1)).toNat : ℤ)

end

end A169836.P15584249498510806942

/-! ## A169836.P8829654466420947084

`A175497(n+1)^A020639(A033996(A000010(n+1)))`
-/

namespace A169836.P8829654466420947084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (A033996 (A000010 (n + 1)).toNat).toNat : ℤ)

end

end A169836.P8829654466420947084

/-! ## A169836.P7246982125560853993

`A175497(n+1)^A020639(A033996(n+1))`
-/

namespace A169836.P7246982125560853993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (A033996 (n + 1)).toNat : ℤ)

end

end A169836.P7246982125560853993

/-! ## A169836.P15179270977223029293

`A175497(n+1)^A020639(record[A179682(n)])`
-/

namespace A169836.P15179270977223029293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A169836.P15179270977223029293

/-! ## A169836.P12715071472657045728

`A175497(n+1)^A020639(A214300(2*(n+1)))`
-/

namespace A169836.P12715071472657045728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (A214300 (2 * (n + 1))).toNat : ℤ)

end

end A169836.P12715071472657045728

/-! ## A169836.P8618191536274107631

`A175497(n+1)^A020639(2*A270677(n))`
-/

namespace A169836.P8618191536274107631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175497 (n + 1) : ℚ) ^ (A020639 (2 * A270677 n).toNat : ℤ)

end

end A169836.P8618191536274107631

/-!
# A169839: EKG sequence started at 4 instead of 2.

The programs for A169839, there is no canonical definition to state claims against.
-/

/-! ## A169839.P17460443118274202191

`A064413(C(2, C(3, n²))+n+1)`
-/

namespace A169839.P17460443118274202191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n + 1)

end

end A169839.P17460443118274202191

/-! ## A169839.P3287441356478927318

`A064413(A181440(n+1)+1)`
-/

namespace A169839.P3287441356478927318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A181440 (n + 1) + 1).toNat

end

end A169839.P3287441356478927318

/-! ## A169839.P1595434889489618262

`A094339(n+1)/A109890(n+1)*A064413(n+2)`
-/

namespace A169839.P1595434889489618262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094339 (n + 1) : ℚ) / (A109890 (n + 1) : ℚ) * (A064413 (n + 2) : ℚ)

end

end A169839.P1595434889489618262

/-! ## A169839.P10474141364194605460

`A304753(a(n-1)+1)` with `a(0)=4, a(1)=2, a(2)=6`
-/

namespace A169839.P10474141364194605460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 6] fun n a =>
  A304753 (a (n - 1) + 1).toNat

end

end A169839.P10474141364194605460

/-! ## A169839.P8505398522054523779

`A064413(A052938(record[A029579(n)]))`
-/

namespace A169839.P8505398522054523779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A052938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A169839.P8505398522054523779

/-! ## A169839.P10403150316787002149

`A064413(A052938(A004280(n+1)))`
-/

namespace A169839.P10403150316787002149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A052938 (A004280 (n + 1)).toNat).toNat

end

end A169839.P10403150316787002149

/-! ## A169839.P4391479083731388830

`A064413(A094339(A109736(n+1))+1)`
-/

namespace A169839.P4391479083731388830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A094339 (A109736 (n + 1)).toNat + 1).toNat

end

end A169839.P4391479083731388830

/-! ## A169839.P2985505309361713915

`A064413(A036234(p?[A065190(n+1)]))`
-/

namespace A169839.P2985505309361713915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A169839.P2985505309361713915

/-! ## A169839.P2547573496300750550

`A064413(log2(Δ[A130102(n+1)]+2)+1)`
-/

namespace A169839.P2547573496300750550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n + 2 : ℝ) + 1)).toNat

end

end A169839.P2547573496300750550

/-!
# A169840: a(n) = position of n in A169839.

The programs for A169840, there is no canonical definition to state claims against.
-/

/-! ## A169840.P675134784119525854

`A064664(n+2)-A294619(n)`
-/

namespace A169840.P675134784119525854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 2) - A294619 n

end

end A169840.P675134784119525854

/-! ## A169840.P15852019802610166416

`A181440(A064421(n+2))`
-/

namespace A169840.P15852019802610166416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A064421 (n + 2)).toNat

end

end A169840.P15852019802610166416

/-! ## A169840.P11240879624475527851

`A181440(A064664(n+2)-1)`
-/

namespace A169840.P11240879624475527851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A064664 (n + 2) - 1).toNat

end

end A169840.P11240879624475527851

/-! ## A169840.P9242931614455163145

`A064421(A256415(2*(n+1))-n)`
-/

namespace A169840.P9242931614455163145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A256415 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A169840.P9242931614455163145

/-! ## A169840.P15656779624209298135

`A064664(n+2)-A056926(A081118(n+1)-1)`
-/

namespace A169840.P15656779624209298135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 2) - A056926 (A081118 (n + 1) - 1).toNat

end

end A169840.P15656779624209298135

/-! ## A169840.P17349493317947527765

`A064664(n+2)-A051904(∑[A051548(n)])`
-/

namespace A169840.P17349493317947527765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 2) - A051904 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169840.P17349493317947527765

/-!
# A169851: EKG sequence started at 10 instead of 2.

The programs for A169851, there is no canonical definition to state claims against.
-/

/-! ## A169851.P15406790036763683529

`A169841(sqrt(record[A331154(n+3)]))`
-/

namespace A169851.P15406790036763683529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169841 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A169851.P15406790036763683529

/-! ## A169851.P5324053717563804222

`A169841(n+2)%A128337(n+1)`
-/

namespace A169851.P5324053717563804222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169841 (n + 2)) (A128337 (n + 1))

end

end A169851.P5324053717563804222

/-! ## A169851.P10193696953415889868

`A169841(n+2)+A000007(A001006(n))`
-/

namespace A169851.P10193696953415889868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169841 (n + 2) + A000007 (A001006 n).toNat

end

end A169851.P10193696953415889868

/-! ## A169851.P13126835816252730794

`A169841(n+2)+A008423(A000051(n))`
-/

namespace A169851.P13126835816252730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169841 (n + 2) + A008423 (A000051 n).toNat

end

end A169851.P13126835816252730794

/-! ## A169851.P3435275998888084050

`A277007(A007598(n))+A169841(n+2)`
-/

namespace A169851.P3435275998888084050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A007598 n).toNat + A169841 (n + 2)

end

end A169851.P3435275998888084050

/-!
# A169858: Smallest integer k such that k or one of its left substrings (or prefixes, regarded as an integer) is divisible by any integer from {1,2,...,n}.

The programs for A169858, there is no canonical definition to state claims against.
-/

/-! ## A169858.P9813805913346923229

`A093637(n)*A329312(A005382(n+1))`
-/

namespace A169858.P9813805913346923229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093637 n * A329312 (A005382 (n + 1)).toNat

end

end A169858.P9813805913346923229

/-! ## A169858.P14681970074424749505

`A160385(A200731(n))*A200746(n+1)`
-/

namespace A169858.P14681970074424749505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A200731 n).toNat * A200746 (n + 1)

end

end A169858.P14681970074424749505

/-! ## A169858.P814348084049239670

`A257539(A257519(n))*A319626(n+1)`
-/

namespace A169858.P814348084049239670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257539 (A257519 n).toNat * A319626 (n + 1)

end

end A169858.P814348084049239670

/-!
# A169859: 

The programs for A169859, there is no canonical definition to state claims against.
-/

/-! ## A169859.P15401407550075973380

`A137416(n+1)%Δ[A137416(n+1)]`
-/

namespace A169859.P15401407550075973380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137416 (n + 1)) (f1 (n + 1) - f1 n)

end

end A169859.P15401407550075973380

/-!
# A169860: Floor of n inches converted to millimeters.

The programs for A169860, the canonical program `A169860.P7985610550666838387` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169860 has offset 0).

The definition of A169860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169860.P7985610550666838387

`floor(n*127/5)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169860

/-- `floor(n*127/5)` -/
def P7985610550666838387.Spec : Prop :=
  ∀ n, P7985610550666838387.a n = A169860 n

theorem P7985610550666838387.correct : P7985610550666838387.Spec := by
  intro n
  simp only [A169860]

end A169860

/-! ## A169860.P7797679280486910682

`A057354(n)+25*n`
-/

namespace A169860.P7797679280486910682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + (25 * n : ℤ)

end

end A169860.P7797679280486910682

namespace A169860

/-- `A057354(n)+25*n` -/
def P7797679280486910682.Spec : Prop :=
  ∀ n, P7797679280486910682.a n = A169860 n

end A169860

/-! ## A169860.P13454292705324164432

`A169861(n)-A011558(n)`
-/

namespace A169860.P13454292705324164432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169861 n - A011558 n

end

end A169860.P13454292705324164432

namespace A169860

/-- `A169861(n)-A011558(n)` -/
def P13454292705324164432.Spec : Prop :=
  ∀ n, P13454292705324164432.a n = A169860 n

end A169860

/-! ## A169860.P12034554291658733920

`A047381(n+1)+A008606(n)`
-/

namespace A169860.P12034554291658733920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (n + 1) + A008606 n

end

end A169860.P12034554291658733920

namespace A169860

/-- `A047381(n+1)+A008606(n)` -/
def P12034554291658733920.Spec : Prop :=
  ∀ n, P12034554291658733920.a n = A169860 n

end A169860

/-! ## A169860.P18142819743264825954

`A175884(n+1)+A008605(n)`
-/

namespace A169860.P18142819743264825954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1) + A008605 n

end

end A169860.P18142819743264825954

namespace A169860

/-- `A175884(n+1)+A008605(n)` -/
def P18142819743264825954.Spec : Prop :=
  ∀ n, P18142819743264825954.a n = A169860 n

end A169860

/-! ## A169860.P10305518511979571868

`A183010(n)+A032796(n+1)`
-/

namespace A169860.P10305518511979571868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A032796 (n + 1)

end

end A169860.P10305518511979571868

namespace A169860

/-- `A183010(n)+A032796(n+1)` -/
def P10305518511979571868.Spec : Prop :=
  ∀ n, P10305518511979571868.a n = A169860 n

end A169860

/-! ## A169860.P4624106125073289023

`A305548(n)-A047496(n+1)`
-/

namespace A169860.P4624106125073289023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 n - A047496 (n + 1)

end

end A169860.P4624106125073289023

namespace A169860

/-- `A305548(n)-A047496(n+1)` -/
def P4624106125073289023.Spec : Prop :=
  ∀ n, P4624106125073289023.a n = A169860 n

end A169860

/-! ## A169860.P1232515617046816031

`A002266(2*n)+5*5*n`
-/

namespace A169860.P1232515617046816031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n) + (5 * (5 * n) : ℤ)

end

end A169860.P1232515617046816031

namespace A169860

/-- `A002266(2*n)+5*5*n` -/
def P1232515617046816031.Spec : Prop :=
  ∀ n, P1232515617046816031.a n = A169860 n

end A169860

/-! ## A169860.P5898389530992718517

`A008587(A008587(n))+A002266(2*n)`
-/

namespace A169860.P5898389530992718517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A008587 n).toNat + A002266 (2 * n)

end

end A169860.P5898389530992718517

namespace A169860

/-- `A008587(A008587(n))+A002266(2*n)` -/
def P5898389530992718517.Spec : Prop :=
  ∀ n, P5898389530992718517.a n = A169860 n

end A169860

/-! ## A169860.P8416766857898041639

`A175884(A017401(n))-n`
-/

namespace A169860.P8416766857898041639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (A017401 n).toNat - (n : ℤ)

end

end A169860.P8416766857898041639

namespace A169860

/-- `A175884(A017401(n))-n` -/
def P8416766857898041639.Spec : Prop :=
  ∀ n, P8416766857898041639.a n = A169860 n

end A169860

/-! ## A169860.P6073780365718810155

`A090223(33*n)-n`
-/

namespace A169860.P6073780365718810155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (33 * n) - (n : ℤ)

end

end A169860.P6073780365718810155

namespace A169860

/-- `A090223(33*n)-n` -/
def P6073780365718810155.Spec : Prop :=
  ∀ n, P6073780365718810155.a n = A169860 n

end A169860

/-! ## A169860.P4547962650381801813

`A057355(44*n)-n`
-/

namespace A169860.P4547962650381801813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (44 * n) - (n : ℤ)

end

end A169860.P4547962650381801813

namespace A169860

/-- `A057355(44*n)-n` -/
def P4547962650381801813.Spec : Prop :=
  ∀ n, P4547962650381801813.a n = A169860 n

end A169860

/-!
# A169861: Ceiling of n inches converted to millimeters.

The programs for A169861, the canonical program `A169861.P3546769687470358037` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169861 has offset 0).

The definition of A169861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169861.P3546769687470358037

`ceil(n*127/5)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169861

/-- `ceil(n*127/5)` -/
def P3546769687470358037.Spec : Prop :=
  ∀ n, P3546769687470358037.a n = A169861 n

theorem P3546769687470358037.correct : P3546769687470358037.Spec := by
  intro n
  simp only [A169861]

end A169861

/-! ## A169861.P6534800022023082055

`A169860(n)+A011558(n)`
-/

namespace A169861.P6534800022023082055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169860 n + A011558 n

end

end A169861.P6534800022023082055

namespace A169861

/-- `A169860(n)+A011558(n)` -/
def P6534800022023082055.Spec : Prop :=
  ∀ n, P6534800022023082055.a n = A169861 n

end A169861

/-! ## A169861.P6942299333971683474

`A252994(n)-A057355(n)`
-/

namespace A169861.P6942299333971683474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 n - A057355 n

end

end A169861.P6942299333971683474

namespace A169861

/-- `A252994(n)-A057355(n)` -/
def P6942299333971683474.Spec : Prop :=
  ∀ n, P6942299333971683474.a n = A169861 n

end A169861

/-! ## A169861.P1730287383644663587

`A047332(n+1)+A008606(n)`
-/

namespace A169861.P1730287383644663587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047332 (n + 1) + A008606 n

end

end A169861.P1730287383644663587

namespace A169861

/-- `A047332(n+1)+A008606(n)` -/
def P1730287383644663587.Spec : Prop :=
  ∀ n, P1730287383644663587.a n = A169861 n

end A169861

/-! ## A169861.P13536183046979497368

`A305548(n)-A047416(n+1)`
-/

namespace A169861.P13536183046979497368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 n - A047416 (n + 1)

end

end A169861.P13536183046979497368

namespace A169861

/-- `A305548(n)-A047416(n+1)` -/
def P13536183046979497368.Spec : Prop :=
  ∀ n, P13536183046979497368.a n = A169861 n

end A169861

/-! ## A169861.P7182606930438604042

`A057354(n+2)+25*n`
-/

namespace A169861.P7182606930438604042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 2) + (25 * n : ℤ)

end

end A169861.P7182606930438604042

namespace A169861

/-- `A057354(n+2)+25*n` -/
def P7182606930438604042.Spec : Prop :=
  ∀ n, P7182606930438604042.a n = A169861 n

end A169861

/-! ## A169861.P4081387979416986561

`A047248(2*n+1)+A008593(2*n)+n`
-/

namespace A169861.P4081387979416986561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (2 * n + 1) + (A008593 (2 * n) + (n : ℤ))

end

end A169861.P4081387979416986561

namespace A169861

/-- `A047248(2*n+1)+A008593(2*n)+n` -/
def P4081387979416986561.Spec : Prop :=
  ∀ n, P4081387979416986561.a n = A169861 n

end A169861

/-! ## A169861.P17762875674355532764

`A008616(A004767(n))+A008607(n)`
-/

namespace A169861.P17762875674355532764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A004767 n).toNat + A008607 n

end

end A169861.P17762875674355532764

namespace A169861

/-- `A008616(A004767(n))+A008607(n)` -/
def P17762875674355532764.Spec : Prop :=
  ∀ n, P17762875674355532764.a n = A169861 n

end A169861

/-! ## A169861.P7850950857587994116

`A008587(A008587(n))+n-A057355(n)`
-/

namespace A169861.P7850950857587994116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A008587 n).toNat + ((n : ℤ) - A057355 n)

end

end A169861.P7850950857587994116

namespace A169861

/-- `A008587(A008587(n))+n-A057355(n)` -/
def P7850950857587994116.Spec : Prop :=
  ∀ n, P7850950857587994116.a n = A169861 n

end A169861

/-! ## A169861.P5955681110437818922

`A047248(A161709(n))-n`
-/

namespace A169861.P5955681110437818922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (A161709 n).toNat - (n : ℤ)

end

end A169861.P5955681110437818922

namespace A169861

/-- `A047248(A161709(n))-n` -/
def P5955681110437818922.Spec : Prop :=
  ∀ n, P5955681110437818922.a n = A169861 n

end A169861

/-!
# A169862: Decimal expansion of root of x^(x-1) = (x-1)^x.

The programs for A169862, there is no canonical definition to state claims against.
-/

/-! ## A169862.P4518792623864247864

`A085846(n)+A000007(n)`
-/

namespace A169862.P4518792623864247864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085846 (n + 1) + A000007 n

end

end A169862.P4518792623864247864

/-! ## A169862.P6533014738329753683

`xor(A000007(2*n), A085846(n))`
-/

namespace A169862.P6533014738329753683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A085846 (n + 1))

end

end A169862.P6533014738329753683

/-! ## A169862.P14770672751853004483

`or(A000007(A000120(n)), A085846(n))`
-/

namespace A169862.P14770672751853004483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000120 n).toNat) (A085846 (n + 1))

end

end A169862.P14770672751853004483

/-! ## A169862.P3775276893546328606

`or(A000007(A008585(n)), A085846(n))`
-/

namespace A169862.P3775276893546328606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A008585 n).toNat) (A085846 (n + 1))

end

end A169862.P3775276893546328606

/-! ## A169862.P6599875658208396354

`or(A000007(A056926(n)), A085846(n))`
-/

namespace A169862.P6599875658208396354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A056926 n).toNat) (A085846 (n + 1))

end

end A169862.P6599875658208396354

/-! ## A169862.P10491525051342012376

`A109017(A260188(n+1))+A085846(n)`
-/

namespace A169862.P10491525051342012376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A260188 (n + 1)).toNat + A085846 (n + 1)

end

end A169862.P10491525051342012376

/-! ## A169862.P16059269682388930347

`or(A000007(n)*A064225(n), A085846(n))`
-/

namespace A169862.P16059269682388930347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n * A064225 n) (A085846 (n + 1))

end

end A169862.P16059269682388930347

/-! ## A169862.P8313783868226615768

`or(A000007(n)*A163890(n), A085846(n))`
-/

namespace A169862.P8313783868226615768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n * A163890 n) (A085846 (n + 1))

end

end A169862.P8313783868226615768

/-! ## A169862.P9448254968821615867

`A085846(n)+A008683(A165825(2*n+1))`
-/

namespace A169862.P9448254968821615867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085846 (n + 1) + A008683 (A165825 (2 * n + 1)).toNat

end

end A169862.P9448254968821615867

/-! ## A169862.P10131407929833453879

`A085846(n)+A010892(record[A001281(n)])`
-/

namespace A169862.P10131407929833453879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085846 (n + 1) + A010892 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A169862.P10131407929833453879

/-! ## A169862.P9532193824947816290

`A109017(A048883(n))+A085846(n)`
-/

namespace A169862.P9532193824947816290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A048883 n).toNat + A085846 (n + 1)

end

end A169862.P9532193824947816290

/-! ## A169862.P4976449912903667283

`A085846(n)+A008683(A165825(n+1))²`
-/

namespace A169862.P4976449912903667283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085846 (n + 1) + A008683 (A165825 (n + 1)).toNat ^ 2

end

end A169862.P4976449912903667283

/-! ## A169862.P7351923189957586159

`A085846(n)+and(1, A000079(n))`
-/

namespace A169862.P7351923189957586159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085846 (n + 1) + Int.land 1 (A000079 n)

end

end A169862.P7351923189957586159

/-! ## A169862.P17020617475101966612

`A085846(n)+A008683((n+1)²)`
-/

namespace A169862.P17020617475101966612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085846 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A169862.P17020617475101966612

/-!
# A169863: Complement of A093848.

The programs for A169863, there is no canonical definition to state claims against.
-/

/-! ## A169863.P9167058346740067551

`comp[A056133(n+1)-1]+n+1`
-/

namespace A169863.P9167058346740067551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1)

end

end A169863.P9167058346740067551

/-! ## A169863.P15079858912159031329

`comp[A056133(A008619(n))-1]+1+n`
-/

namespace A169863.P15079858912159031329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (A008619 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A169863.P15079858912159031329

/-! ## A169863.P7401365232817814026

`comp[A056133(A126759(n))-1]+1+n`
-/

namespace A169863.P7401365232817814026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (A126759 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A169863.P7401365232817814026

/-! ## A169863.P17040906913557250606

`comp[A056133(n+2)-A056133(n+1)]`
-/

namespace A169863.P17040906913557250606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (n + 2) - A056133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169863.P17040906913557250606

/-! ## A169863.P5526950573011807769

`A183295(A130823(3*n+5))%A062860(n+3)`
-/

namespace A169863.P5526950573011807769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183295 (A130823 (3 * n + 5)).toNat) (A062860 (n + 3))

end

end A169863.P5526950573011807769

/-!
# A169864: The sequence S of a pair S, T generalizing Golomb's sequence A001462 and the pair A093848, A169863. See Comments for definition.

The programs for A169864, there is no canonical definition to state claims against.
-/

/-! ## A169864.P7246496256333383087

`comp[comp[∑[A191925(n+1)+n]-1+n]+n]`
-/

namespace A169864.P7246496256333383087
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191925 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A169864.P7246496256333383087

/-! ## A169864.P8804656450464801063

`A003056(A122797(A001614(A122793(n+2))))`
-/

namespace A169864.P8804656450464801063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A122797 (A001614 (A122793 (n + 2)).toNat).toNat).toNat

end

end A169864.P8804656450464801063

/-! ## A169864.P5925193876394381975

`eq[1, A010060(A043569(n+3))]`
-/

namespace A169864.P5925193876394381975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A043569 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169864.P5925193876394381975

/-! ## A169864.P14455873522558906368

`lt[A000035(A127330(n+2)), 1]`
-/

namespace A169864.P14455873522558906368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A127330 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A169864.P14455873522558906368

/-! ## A169864.P8288222304020549746

`lt[0, A000035(A191664(n+3))]`
-/

namespace A169864.P8288222304020549746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A191664 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169864.P8288222304020549746

/-!
# A169865: The sequence T of a pair S, T generalizing Golomb's sequence A001462 and the pair A093848, A169863. See Comments for definition.

The programs for A169865, there is no canonical definition to state claims against.
-/

/-! ## A169865.P17254814129754064290

`∑[Δ[comp[n²]]+1]`
-/

namespace A169865.P17254814129754064290
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169865.P17254814129754064290

/-! ## A169865.P3364285628381569835

`comp[n²-floor(atan(n))]+n`
-/

namespace A169865.P3364285628381569835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊Real.arctan (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A169865.P3364285628381569835

/-! ## A169865.P2291320718690658374

`comp[ceil(n²-atan(n))]+n`
-/

namespace A169865.P2291320718690658374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - Real.arctan (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A169865.P2291320718690658374

/-! ## A169865.P18289897064495017972

`lt[2, ∏{d}[n+1, -#]]+n`
-/

namespace A169865.P18289897064495017972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-(d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n

end

end A169865.P18289897064495017972

/-! ## A169865.P3179634766133594537

`comp[record[abs(n*(2-n))]]+n`
-/

namespace A169865.P3179634766133594537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (2 - (n : ℤ))|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A169865.P3179634766133594537

/-!
# A169868: Positions of zeros in binary expansion of the reciprocal of the golden ratio (0.618...).

The programs for A169868, there is no canonical definition to state claims against.
-/

/-! ## A169868.P1980255445464918410

`∪[A247519(n+1), A247520(n+1)]`
-/

namespace A169868.P1980255445464918410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169868.P1980255445464918410

/-! ## A169868.P12268104541432238684

`eq[0, A068432(n+1)]`
-/

namespace A169868.P12268104541432238684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169868.P12268104541432238684

/-! ## A169868.P4354396586898228696

`lt[A068432(n+2), 1]+1`
-/

namespace A169868.P4354396586898228696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169868.P4354396586898228696

/-! ## A169868.P15390087467158956162

`lt[A004555(n+4), 1]+2`
-/

namespace A169868.P15390087467158956162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A169868.P15390087467158956162

/-! ## A169868.P9276876861820940836

`eq[A004555(n+2), A063524(n)]`
-/

namespace A169868.P9276876861820940836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169868.P9276876861820940836

/-! ## A169868.P8893203933482497665

`lt[A068432(n+1), A057427(n)]`
-/

namespace A169868.P8893203933482497665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169868.P8893203933482497665

/-! ## A169868.P11293128137869495984

`eq[A004555(n+2), A033322(n+1)]`
-/

namespace A169868.P11293128137869495984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169868.P11293128137869495984

/-! ## A169868.P9057147985505722540

`eq[A004555(n+2)+1, A157928(n)]`
-/

namespace A169868.P9057147985505722540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169868.P9057147985505722540

/-! ## A169868.P10771498117308581598

`eq[A004555(n+3), A010051(2*(n+1))]+1`
-/

namespace A169868.P10771498117308581598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A169868.P10771498117308581598

/-! ## A169868.P2011516467089767116

`eq[1, A004555(n+2)+A000010(a(n-1))]` with `a(0)=4`
-/

namespace A169868.P2011516467089767116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A004555 (n + 2) + A000010 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169868.P2011516467089767116

/-! ## A169868.P7325050663685066789

`eq[1, A004547(a(n-1)+1)-A004555(n+2)]` with `a(0)=9`
-/

namespace A169868.P7325050663685066789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f2 =>
  A004547 (f2 (n - 1) + 1).toNat - A004555 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169868.P7325050663685066789

/-! ## A169868.P4009027755536155620

`eq[A004555(n+2)+1, A043545(A000010(n+1))]`
-/

namespace A169868.P4009027755536155620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169868.P4009027755536155620

/-! ## A169868.P7156155052139747303

`eq[A004555(n+2), A010051(A010051(n+1)+n+1)]`
-/

namespace A169868.P7156155052139747303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A010051 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169868.P7156155052139747303

/-! ## A169868.P16799192663111777680

`lt[A068432(A028242(2*n)), 1]`
-/

namespace A169868.P16799192663111777680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (A028242 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A169868.P16799192663111777680

/-! ## A169868.P6717658317390684714

`eq[0, and(1, floor(ϕ*2^n))]`
-/

namespace A169868.P6717658317390684714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (2 ^ n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169868.P6717658317390684714

/-! ## A169868.P11466791494151526512

`eq[and(2, A293313(n+1)), 0]`
-/

namespace A169868.P11466791494151526512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A293313 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A169868.P11466791494151526512

/-!
# A169872: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 1 over the field F_2^n.

The programs for A169872, there is no canonical definition to state claims against.
-/

/-! ## A169872.P8278045808380071257

`A005523(A182908(n+1))`
-/

namespace A169872.P8278045808380071257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005523 (A182908 (n + 1)).toNat

end

end A169872.P8278045808380071257

/-! ## A169872.P16740336584005500746

`A065361(A169877(n+1))`
-/

namespace A169872.P16740336584005500746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A169877 (n + 1)).toNat

end

end A169872.P16740336584005500746

/-! ## A169872.P8512319910299353345

`round(sqrt(A186892(4^n+1)))`
-/

namespace A169872.P8512319910299353345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A186892 (4 ^ n + 1) : ℝ))

end

end A169872.P8512319910299353345

/-!
# A169873: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 2 over the field F_2^n.

The programs for A169873, there is no canonical definition to state claims against.
-/

/-! ## A169873.P9606307666276865025

`A005525(A182908(n+1))`
-/

namespace A169873.P9606307666276865025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005525 (A182908 (n + 1)).toNat

end

end A169873.P9606307666276865025

/-! ## A169873.P7038132915063038169

`A005525(A024622(n+1)-1)`
-/

namespace A169873.P7038132915063038169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005525 (A024622 (n + 1) - 1).toNat

end

end A169873.P7038132915063038169

/-!
# A169874: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 3 over the field F_2^n.

The programs for A169874, there is no canonical definition to state claims against.
-/

/-! ## A169874.P2916592380433611073

`A045673(A056877(n+1))+A003229(n+4)`
-/

namespace A169874.P2916592380433611073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045673 (A056877 (n + 1)).toNat + A003229 (n + 4)

end

end A169874.P2916592380433611073

/-! ## A169874.P1173195397802779541

`A288631(n+1)+A001614(A288599(n+1))-n`
-/

namespace A169874.P1173195397802779541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288631 (n + 1) + (A001614 (A288599 (n + 1)).toNat - (n : ℤ))

end

end A169874.P1173195397802779541

/-!
# A169877: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 1 over the field F_3^n.

The programs for A169877, there is no canonical definition to state claims against.
-/

/-! ## A169877.P6038275133752324606

`A345803(A134169(n))-A187367(n+1)`
-/

namespace A169877.P6038275133752324606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345803 (A134169 n).toNat - A187367 (n + 1)

end

end A169877.P6038275133752324606

/-!
# A169878: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 2 over the field F_3^n.

The programs for A169878, there is no canonical definition to state claims against.
-/

/-! ## A169878.P10070714263372634280

`2*A094192(A000081(2*(n+2)))`
-/

namespace A169878.P10070714263372634280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094192 (A000081 (2 * (n + 2))).toNat

end

end A169878.P10070714263372634280

/-!
# A169879: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 3 over the field F_3^n.

The programs for A169879, there is no canonical definition to state claims against.
-/

/-! ## A169879.P5605639149772090039

`or(n, ∑[A180565(n+2)])+1`
-/

namespace A169879.P5605639149772090039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A169879.P5605639149772090039

/-!
# A169880: Maximum number of rational points on a smooth absolutely irreducible projective curve of genus 1 over the field F_5^n.

The programs for A169880, there is no canonical definition to state claims against.
-/

/-! ## A169880.P16515728153507820207

`A081688(A089259(n)+A074600(n+1))`
-/

namespace A169880.P16515728153507820207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (A089259 n + A074600 (n + 1)).toNat

end

end A169880.P16515728153507820207

/-!
# A169884: Numbers consisting of either all even digits or just 5's and 0's.

The programs for A169884, the canonical program `A169884.P13403275088466269213` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169884 has offset 1).

The definition of A169884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169884.P13403275088466269213

`∪[A014263(n+1), A169964(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A169884

/-- `∪[A014263(n+1), A169964(n+1)]` -/
def P13403275088466269213.Spec : Prop :=
  ∀ n, (P13403275088466269213.a n : ℤ) = A169884 (n + 1)

theorem P13403275088466269213.correct : P13403275088466269213.Spec := by
  intro n
  simp only [A169884, Nat.add_sub_cancel]

end A169884

/-! ## A169884.P4618897649497572034

`comp[A169968(n+1)]`
-/

namespace A169884.P4618897649497572034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169884.P4618897649497572034

namespace A169884

/-- `comp[A169968(n+1)]` -/
def P4618897649497572034.Spec : Prop :=
  ∀ n, (P4618897649497572034.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P11253800425445814993

`eq[0, A004180(n)*A045841(n)]`
-/

namespace A169884.P11253800425445814993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n * A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P11253800425445814993

namespace A169884

/-- `eq[0, A004180(n)*A045841(n)]` -/
def P11253800425445814993.Spec : Prop :=
  ∀ n, (P11253800425445814993.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P18415414076586477688

`eq[0, A004520(n)*A045841(n)]`
-/

namespace A169884.P18415414076586477688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n * A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P18415414076586477688

namespace A169884

/-- `eq[0, A004520(n)*A045841(n)]` -/
def P18415414076586477688.Spec : Prop :=
  ∀ n, (P18415414076586477688.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P9717052717496708734

`eq[0, A004180(n)*A103181(n)]`
-/

namespace A169884.P9717052717496708734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n * A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P9717052717496708734

namespace A169884

/-- `eq[0, A004180(n)*A103181(n)]` -/
def P9717052717496708734.Spec : Prop :=
  ∀ n, (P9717052717496708734.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P3083742192430712043

`eq[0, A004520(n)*A103181(n)]`
-/

namespace A169884.P3083742192430712043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n * A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P3083742192430712043

namespace A169884

/-- `eq[0, A004520(n)*A103181(n)]` -/
def P3083742192430712043.Spec : Prop :=
  ∀ n, (P3083742192430712043.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P3711104170645568116

`eq[0, A004180(n)*A196564(n)]`
-/

namespace A169884.P3711104170645568116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n * A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P3711104170645568116

namespace A169884

/-- `eq[0, A004180(n)*A196564(n)]` -/
def P3711104170645568116.Spec : Prop :=
  ∀ n, (P3711104170645568116.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P10884329831963445017

`eq[0, A004520(n)*A196564(n)]`
-/

namespace A169884.P10884329831963445017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n * A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P10884329831963445017

namespace A169884

/-- `eq[0, A004520(n)*A196564(n)]` -/
def P10884329831963445017.Spec : Prop :=
  ∀ n, (P10884329831963445017.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P3553382996912611497

`eq[gcd(n, A103181(n)), A222222(n)]`
-/

namespace A169884.P3553382996912611497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A103181 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169884.P3553382996912611497

namespace A169884

/-- `eq[gcd(n, A103181(n)), A222222(n)]` -/
def P3553382996912611497.Spec : Prop :=
  ∀ n, (P3553382996912611497.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P7224414743732762840

`eq[n*A001613(n), A004180(n)²]`
-/

namespace A169884.P7224414743732762840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169884.P7224414743732762840

namespace A169884

/-- `eq[n*A001613(n), A004180(n)²]` -/
def P7224414743732762840.Spec : Prop :=
  ∀ n, (P7224414743732762840.a n : ℤ) = A169884 (n + 1)

end A169884

/-! ## A169884.P4319711479180488577

`eq[n*A059628(n), A059628(n)²]`
-/

namespace A169884.P4319711479180488577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169884.P4319711479180488577

namespace A169884

/-- `eq[n*A059628(n), A059628(n)²]` -/
def P4319711479180488577.Spec : Prop :=
  ∀ n, (P4319711479180488577.a n : ℤ) = A169884 (n + 1)

end A169884

/-!
# A169885: Cubes (n * n * n) in carryless arithmetic mod 10.

The programs for A169885, there is no canonical definition to state claims against.
-/

/-! ## A169885.P2592798607003460510

`A361390(A046691(n+2))`
-/

namespace A169885.P2592798607003460510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A046691 (n + 2)).toNat

end

end A169885.P2592798607003460510

/-! ## A169885.P64979439593745086

`A361390(eq[3, A025581(n)])`
-/

namespace A169885.P64979439593745086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169885.P64979439593745086

/-! ## A169885.P3004930547334342855

`A361390(eq[4, A193739(n)])`
-/

namespace A169885.P3004930547334342855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169885.P3004930547334342855

/-! ## A169885.P17722712289051998331

`A361390(A034856(n+3)-2)`
-/

namespace A169885.P17722712289051998331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A034856 (n + 3) - 2).toNat

end

end A169885.P17722712289051998331

/-! ## A169885.P514846529232837576

`A361390(eq[4, A004736(n+1)])`
-/

namespace A169885.P514846529232837576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169885.P514846529232837576

/-!
# A169886: Fourth powers (n * n * n * n) in carryless arithmetic mod 10.

The programs for A169886, there is no canonical definition to state claims against.
-/

/-! ## A169886.P2198134464885158537

`A361390(eq[4, A025581(n)])`
-/

namespace A169886.P2198134464885158537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169886.P2198134464885158537

/-! ## A169886.P6519749322597139943

`A361390(eq[5, A193739(n)])`
-/

namespace A169886.P6519749322597139943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169886.P6519749322597139943

/-! ## A169886.P12396271847318043756

`A361390(A046691(n+3)-1)`
-/

namespace A169886.P12396271847318043756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A046691 (n + 3) - 1).toNat

end

end A169886.P12396271847318043756

/-! ## A169886.P4454712830839180718

`A361390(A133263(n+5)-7)`
-/

namespace A169886.P4454712830839180718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A133263 (n + 5) - 7).toNat

end

end A169886.P4454712830839180718

/-! ## A169886.P2874941591884670218

`A059729(A059729(n))`
-/

namespace A169886.P2874941591884670218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 (A059729 n).toNat

end

end A169886.P2874941591884670218

/-!
# A169887: Primes in carryless arithmetic mod 10.

The programs for A169887, there is no canonical definition to state claims against.
-/

/-! ## A169887.P15383405011986555292

`∪[A163396(n+1), A169984(n+1)]`
-/

namespace A169887.P15383405011986555292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169887.P15383405011986555292

/-! ## A169887.P5786420858384646507

`lt[A155989(n+1), A000040(A005940(n+2))]`
-/

namespace A169887.P5786420858384646507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005940 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169887.P5786420858384646507

/-! ## A169887.P5308401183010946371

`∪[A143712(n+1), A144162(n+1)]%A169984(3*n+4)`
-/

namespace A169887.P5308401183010946371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144162 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A169984 (3 * n + 4))

end

end A169887.P5308401183010946371

/-! ## A169887.P15801017462663253548

`A007929(A062399(n+1))`
-/

namespace A169887.P15801017462663253548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (A062399 (n + 1)).toNat

end

end A169887.P15801017462663253548

/-! ## A169887.P16215768471889080546

`A168485(A007929(n+1))`
-/

namespace A169887.P16215768471889080546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A007929 (n + 1)).toNat

end

end A169887.P16215768471889080546

/-!
# A169888: Number of n-member subsets of 1..2n whose elements sum to a multiple of n.

The programs for A169888, there is no canonical definition to state claims against.
-/

/-! ## A169888.P5858484659505921274

`A061865(n²+A028310(n²))`
-/

namespace A169888.P5858484659505921274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A169888.P5858484659505921274

/-! ## A169888.P13783911195355341631

`A061865(A001105(n)+A000007(n))`
-/

namespace A169888.P13783911195355341631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A001105 n + A000007 n).toNat

end

end A169888.P13783911195355341631

/-! ## A169888.P15618456778025418866

`A061865(A028310(n)+A000384(n))`
-/

namespace A169888.P15618456778025418866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A028310 n + A000384 n).toNat

end

end A169888.P15618456778025418866

/-! ## A169888.P8641208824662597120

`A061865(A058331(n)-A178334(n))`
-/

namespace A169888.P8641208824662597120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A058331 n - A178334 n).toNat

end

end A169888.P8641208824662597120

/-! ## A169888.P15121169552572243523

`A061865(A001105(n)^A178334(n))`
-/

namespace A169888.P15121169552572243523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (SequenceMachineLib.roundAway ((A001105 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A169888.P15121169552572243523

/-! ## A169888.P7424356571270243174

`A061865(xor(A000007(n), A001105(n)))`
-/

namespace A169888.P7424356571270243174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (Int.xor (A000007 n) (A001105 n)).toNat

end

end A169888.P7424356571270243174

/-! ## A169888.P15600851059391676327

`A061865(xor(A058331(n), A178334(n)))`
-/

namespace A169888.P15600851059391676327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (Int.xor (A058331 n) (A178334 n)).toNat

end

end A169888.P15600851059391676327

/-! ## A169888.P7489276293318276510

`A061865(A028310(2*n)*A028310(n))`
-/

namespace A169888.P7489276293318276510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A028310 (2 * n) * A028310 n).toNat

end

end A169888.P7489276293318276510

/-! ## A169888.P1496013709927226965

`A061865(A028310(2*n²))`
-/

namespace A169888.P1496013709927226965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A028310 (2 * n ^ 2)).toNat

end

end A169888.P1496013709927226965

/-!
# A169890: Carryless sum 1+2+3+...+n.

The programs for A169890, there is no canonical definition to state claims against.
-/

/-! ## A169890.P5608187412837544346

`∑[n]%A095275(A147069(n+1))`
-/

namespace A169890.P5608187412837544346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A095275 (A147069 (n + 1)).toNat)

end

end A169890.P5608187412837544346

/-!
# A169891: Number of numbers i in the range 1 <= i <= n such that there is a number j in the range 1 <= j <= n for which the carryless product i*j equals n.

The programs for A169891, there is no canonical definition to state claims against.
-/

/-! ## A169891.P6933737041572082046

`Δ[eq[1, A169896(n+1)]]`
-/

namespace A169891.P6933737041572082046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169896 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A169891.P6933737041572082046

/-! ## A169891.P14322706344658017561

`A250247(Δ[record[n/A169896(n+1)]])`
-/

namespace A169891.P14322706344658017561
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A169896 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250247 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A169891.P14322706344658017561

/-!
# A169893: Carryless sum of {numbers i in the range 1 <= i <= n such that there is a number j in the range 1 <= j <= n for which the carryless product i*j equals n}.

The programs for A169893, there is no canonical definition to state claims against.
-/

/-! ## A169893.P14875197350126561656

`A169892(n+1)%A118959(A115205(n))`
-/

namespace A169893.P14875197350126561656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169892 (n + 1)) (A118959 (A115205 n).toNat)

end

end A169893.P14875197350126561656

/-!
# A169894: Table of carryless sums i + j, i>=0, j>=0, read by antidiagonals.

The programs for A169894, there is no canonical definition to state claims against.
-/

/-! ## A169894.P18164924905544104798

`comp[∑[n]]-n-(gcd(11, A022166(n))+1)`
-/

namespace A169894.P18164924905544104798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (Int.gcd 11 (A022166 n) + 1 : ℤ)

end

end A169894.P18164924905544104798

/-! ## A169894.P10373684678199886542

`A002024(n+1)-gcd(11, A022166(n))`
-/

namespace A169894.P10373684678199886542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (Int.gcd 11 (A022166 n) : ℤ)

end

end A169894.P10373684678199886542

/-! ## A169894.P11267517749735374560

`val(A137688(n), A126759(A146532(n)))`
-/

namespace A169894.P11267517749735374560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137688 n).toNat (A126759 (A146532 n).toNat).toNat

end

end A169894.P11267517749735374560

/-! ## A169894.P12329943852890547436

`A003056(n)%A097598(A168016(n+1))`
-/

namespace A169894.P12329943852890547436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) (A097598 (A168016 (n + 1)).toNat)

end

end A169894.P12329943852890547436

/-! ## A169894.P6117141698933239007

`A003056(n)%A010931(A000267(n))`
-/

namespace A169894.P6117141698933239007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) (A010931 (A000267 n).toNat)

end

end A169894.P6117141698933239007

/-! ## A169894.P2007249241512368339

`∑[A073424(n)]%A230356(A113061(n+1))`
-/

namespace A169894.P2007249241512368339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A230356 (A113061 (n + 1)).toNat)

end

end A169894.P2007249241512368339

/-! ## A169894.P5721614735452833506

`A023443(A002024(n+1))%A230356(A113061(n+1))`
-/

namespace A169894.P5721614735452833506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A002024 (n + 1)).toNat) (A230356 (A113061 (n + 1)).toNat)

end

end A169894.P5721614735452833506

/-! ## A169894.P8055806008135841867

`A003056(n)*A086299(A001263(n+1))`
-/

namespace A169894.P8055806008135841867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A086299 (A001263 (n + 1)).toNat

end

end A169894.P8055806008135841867

/-! ## A169894.P612137767686628578

`A159797(A057944(n))%A133998(or(1, n+2))`
-/

namespace A169894.P612137767686628578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159797 (A057944 n).toNat) (A133998 (Nat.lor 1 (n + 2)))

end

end A169894.P612137767686628578

/-! ## A169894.P11309476487468877637

`A003056(n)%A017772(n)`
-/

namespace A169894.P11309476487468877637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) (A017772 n)

end

end A169894.P11309476487468877637

/-!
# A169896: Irregular triangle read by rows in which row n (n>=1) lists distinct carryless divisors i of n in range 1 <= i <= n.

The programs for A169896, there is no canonical definition to state claims against.
-/

/-! ## A169896.P12387971761070079873

`A216477(A048941(n+1)+1)`
-/

namespace A169896.P12387971761070079873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216477 (A048941 (n + 1) + 1).toNat

end

end A169896.P12387971761070079873

/-! ## A169896.P16826975981623241511

`A216477(A346419(n+1)+1)`
-/

namespace A169896.P16826975981623241511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216477 (A346419 (n + 1) + 1).toNat

end

end A169896.P16826975981623241511

/-! ## A169896.P5673644421061720131

`A339443(A334828(n+1)+A252976(n+1))`
-/

namespace A169896.P5673644421061720131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A334828 (n + 1) + A252976 (n + 1)).toNat

end

end A169896.P5673644421061720131

/-! ## A169896.P11998729808336560081

`A193739(A125568(∑[n]))`
-/

namespace A169896.P11998729808336560081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A125568 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A169896.P11998729808336560081

/-! ## A169896.P7506160722532696475

`A006530(A222589(n))%(comp[∑[n]]-n)`
-/

namespace A169896.P7506160722532696475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A222589 n).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A169896.P7506160722532696475

/-!
# A169897: Number of distinct numbers i in the range 1 <= i <= n such that there is a number j in the range 1 <= j <= n for which the carryless product i*j equals n.

The programs for A169897, there is no canonical definition to state claims against.
-/

/-! ## A169897.P7805364533586699107

`A323238(A169891(n+1)%A196040(2*(n+1)))`
-/

namespace A169897.P7805364533586699107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 (Int.tmod (A169891 (n + 1)) (A196040 (2 * (n + 1)))).toNat

end

end A169897.P7805364533586699107

/-! ## A169897.P1575418242570913104

`A323238(A169891(n+1))%A143940(3*n+2)`
-/

namespace A169897.P1575418242570913104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323238 (A169891 (n + 1)).toNat) (A143940 (3 * n + 2))

end

end A169897.P1575418242570913104

/-! ## A169897.P12531579160370699856

`A322809(Δ[eq[1, A169896(n+1)]])`
-/

namespace A169897.P12531579160370699856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169896 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A169897.P12531579160370699856

/-! ## A169897.P1284730643104834559

`A323238(Δ[eq[1, A169896(n+1)]])`
-/

namespace A169897.P1284730643104834559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169896 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323238 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A169897.P1284730643104834559

/-!
# A169899: Carryless sum of {distinct numbers i in the range 1 <= i <= n such that there is a number j in the range 1 <= j <= n for which the carryless product i*j equals n}.

The programs for A169899, there is no canonical definition to state claims against.
-/

/-! ## A169899.P2768448823239641588

`A169898(n+1)%A118959(A115205(n))`
-/

namespace A169899.P2768448823239641588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169898 (n + 1)) (A118959 (A115205 n).toNat)

end

end A169899.P2768448823239641588

