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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214400: a(n) = binomial(n^2 + 3*n, n).

The programs for A214400, the canonical program `A214400.P9023896943631567876` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214400 has offset 0).

The definition of A214400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n²+3*n, n)` (program `A214400.P9023896943631567876`, by `A214400.P9023896943631567876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214400.P9023896943631567876

`C(n²+3*n, n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214400

/-- `C(n²+3*n, n)` -/
def P9023896943631567876.Spec : Prop :=
  ∀ n, (P9023896943631567876.a n : ℤ) = A214400 n

theorem P9023896943631567876.correct : P9023896943631567876.Spec := by
  intro n
  simp only [A214400]

end A214400

/-! ## A214400.P4238330851669472900

`(n+1)²*A182316(n)`
-/

namespace A214400.P4238330851669472900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A182316 n

end

end A214400.P4238330851669472900

namespace A214400

/-- `(n+1)²*A182316(n)` -/
def P4238330851669472900.Spec : Prop :=
  ∀ n, P4238330851669472900.a n = A214400 n

end A214400

/-! ## A214400.P1408660888374295668

`(n+1)*A351501(n+1)`
-/

namespace A214400.P1408660888374295668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351501 (n + 1)

end

end A214400.P1408660888374295668

namespace A214400

/-- `(n+1)*A351501(n+1)` -/
def P1408660888374295668.Spec : Prop :=
  ∀ n, P1408660888374295668.a n = A214400 n

end A214400

/-! ## A214400.P5627444208401050254

`lcm(n+1, C((n+1)²+n-1, n))`
-/

namespace A214400.P5627444208401050254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (((n + 1) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat n)

end

end A214400.P5627444208401050254

namespace A214400

/-- `lcm(n+1, C((n+1)²+n-1, n))` -/
def P5627444208401050254.Spec : Prop :=
  ∀ n, (P5627444208401050254.a n : ℤ) = A214400 n

end A214400

/-! ## A214400.P10415535181781771411

`(n+1)²*A070914(A142463(n+1))`
-/

namespace A214400.P10415535181781771411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A070914 (A142463 (n + 1)).toNat

end

end A214400.P10415535181781771411

namespace A214400

/-- `(n+1)²*A070914(A142463(n+1))` -/
def P10415535181781771411.Spec : Prop :=
  ∀ n, P10415535181781771411.a n = A214400 n

end A214400

/-!
# A214401: Denominator of Sum_{k=0..n} n^k/k!.

The programs for A214401, there is no canonical definition to state claims against.
-/

/-! ## A214401.P6459760813445416461

`(n+1)!/A214402(n+1)`
-/

namespace A214401.P6459760813445416461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A214402 (n + 1) : ℚ)

end

end A214401.P6459760813445416461

/-! ## A214401.P13922271278074406028

`A001783(n+1)/A214402(n+1)*A066570(n+1)`
-/

namespace A214401.P13922271278074406028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (A214402 (n + 1) : ℚ) * (A066570 (n + 1) : ℚ)

end

end A214401.P13922271278074406028

/-! ## A214401.P12651809637649742468

`A095996(n+1)/gcd(A095996(n+1), A214402(n+1))`
-/

namespace A214401.P12651809637649742468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095996 (n + 1) : ℚ) / (Int.gcd (A095996 (n + 1)) (A214402 (n + 1)) : ℚ)

end

end A214401.P12651809637649742468

/-! ## A214401.P1407070991618735004

`record[A094587(n)]/A214402(n+1)`
-/

namespace A214401.P1407070991618735004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214402 (n + 1) : ℚ)

end

end A214401.P1407070991618735004

/-! ## A214401.P17697059387674672298

`record[A227550(n)]/A214402(n+1)`
-/

namespace A214401.P17697059387674672298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214402 (n + 1) : ℚ)

end

end A214401.P17697059387674672298

/-! ## A214401.P9429406353854467773

`∏[A000027(n+1)]/A214402(n+1)`
-/

namespace A214401.P9429406353854467773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A214402 (n + 1) : ℚ)

end

end A214401.P9429406353854467773

/-! ## A214401.P8250687632598465174

`A120266(n+1)-A120267(n+1)`
-/

namespace A214401.P8250687632598465174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120266 (n + 1) - A120267 (n + 1)

end

end A214401.P8250687632598465174

/-! ## A214401.P1710953302658915826

`A063170(n+1)/A214402(n+1)-A120267(n+1)`
-/

namespace A214401.P1710953302658915826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063170 (n + 1) : ℚ) / (A214402 (n + 1) : ℚ) - (A120267 (n + 1) : ℚ)

end

end A214401.P1710953302658915826

/-!
# A214402: Cancellation factor in reducing Sum_{k=0...n} n^k/k! to lowest terms.

The programs for A214402, there is no canonical definition to state claims against.
-/

/-! ## A214402.P7132731841971926839

`(n+1)!/A214401(n+1)`
-/

namespace A214402.P7132731841971926839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P7132731841971926839

/-! ## A214402.P14826486919571361169

`record[A084938(n)]/A214401(n+1)`
-/

namespace A214402.P14826486919571361169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P14826486919571361169

/-! ## A214402.P789033117919893551

`record[A094587(n)]/A214401(n+1)`
-/

namespace A214402.P789033117919893551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P789033117919893551

/-! ## A214402.P15818551920237341085

`record[A098361(n)]/A214401(n+1)`
-/

namespace A214402.P15818551920237341085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P15818551920237341085

/-! ## A214402.P10990178643650574304

`record[A152656(n)]/A214401(n+1)`
-/

namespace A214402.P10990178643650574304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P10990178643650574304

/-! ## A214402.P10225769920302941947

`record[A227550(n)]/A214401(n+1)`
-/

namespace A214402.P10225769920302941947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P10225769920302941947

/-! ## A214402.P2318234799788371568

`A000142(n+1)/A214401(n+1)`
-/

namespace A214402.P2318234799788371568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P2318234799788371568

/-! ## A214402.P3257056241385225817

`(∑[A001563(n)]+1)/A214401(n+1)`
-/

namespace A214402.P3257056241385225817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P3257056241385225817

/-! ## A214402.P1846428677471516073

`∑[A001563(A028310(n))]/A214401(n+1)`
-/

namespace A214402.P1846428677471516073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A214401 (n + 1) : ℚ)

end

end A214402.P1846428677471516073

/-! ## A214402.P9770353579003215090

`gcd(A000142(n), A090878(n+1))*A051696(n+1)`
-/

namespace A214402.P9770353579003215090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000142 n) (A090878 (n + 1)) : ℤ) * A051696 (n + 1)

end

end A214402.P9770353579003215090

/-!
# A214404: G.f. satisfies: A( x - A(x)^2 ) = x+x^2 - A(x)^2.

The programs for A214404, there is no canonical definition to state claims against.
-/

/-! ## A214404.P3398159326747578935

`A283472(A025243(2*(n+1))+A025243(n+1))`
-/

namespace A214404.P3398159326747578935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (A025243 (2 * (n + 1)) + A025243 (n + 1)).toNat

end

end A214404.P3398159326747578935

/-! ## A214404.P505828332243874815

`∏{p}[A000081(3*n), floor(sqrt(#))]`
-/

namespace A214404.P505828332243874815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.sqrt p

end

end A214404.P505828332243874815

/-!
# A214405: Numbers of the form (4k+3)^2-8 or (4k+5)^2+4.

The programs for A214405, the canonical program `A214405.P14539094166080315683` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214405 has offset 1).

The definition of A214405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214405.P14539094166080315683

`4*n*(n+3)-6*(-1)^n+7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214405

/-- `4*n*(n+3)-6*(-1)^n+7` -/
def P14539094166080315683.Spec : Prop :=
  ∀ n, P14539094166080315683.a n = A214405 (n + 1)

theorem P14539094166080315683.correct : P14539094166080315683.Spec := by
  intro n
  simp only [A214405, Nat.add_sub_cancel]

end A214405

/-! ## A214405.P912304790383639270

`xor(5, A259755(n+1)+(2*n)²)`
-/

namespace A214405.P912304790383639270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A259755 (n + 1) + ((2 * n) ^ 2 : ℤ))

end

end A214405.P912304790383639270

namespace A214405

/-- `xor(5, A259755(n+1)+(2*n)²)` -/
def P912304790383639270.Spec : Prop :=
  ∀ n, P912304790383639270.a n = A214405 (n + 1)

end A214405

/-! ## A214405.P4958246024147262461

`∑[A110185(A004275(A052938(n)))]`
-/

namespace A214405.P4958246024147262461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110185 (A004275 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214405.P4958246024147262461

namespace A214405

/-- `∑[A110185(A004275(A052938(n)))]` -/
def P4958246024147262461.Spec : Prop :=
  ∀ n, P4958246024147262461.a n = A214405 (n + 1)

end A214405

/-! ## A214405.P7486232321036794318

`abs(a(n-1)-A054000(2*(n+1)))` with `a(0)=1`
-/

namespace A214405.P7486232321036794318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A054000 (2 * (n + 1))|

end

end A214405.P7486232321036794318

namespace A214405

/-- `abs(a(n-1)-A054000(2*(n+1)))` -/
def P7486232321036794318.Spec : Prop :=
  ∀ n, P7486232321036794318.a n = A214405 (n + 1)

end A214405

/-! ## A214405.P1997115682307059735

`A042963(A166519(∑[A168277(n+2)]))`
-/

namespace A214405.P1997115682307059735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A166519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A214405.P1997115682307059735

namespace A214405

/-- `A042963(A166519(∑[A168277(n+2)]))` -/
def P1997115682307059735.Spec : Prop :=
  ∀ n, P1997115682307059735.a n = A214405 (n + 1)

end A214405

/-!
# A214406: Triangle of second-order Eulerian numbers of type B.

The programs for A214406, the canonical program `A214406.P5728865302751931513` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214406 has offset 0).

The definition of A214406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214406.P5728865302751931513

`(4*row(n)-2*col(n)-1)*T(n-1,k-1)+(2*col(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214406

/-- `(4*row(n)-2*col(n)-1)*T(n-1,k-1)+(2*col(n)+1)*T(n-1,k)` -/
def P5728865302751931513.Spec : Prop :=
  ∀ n, P5728865302751931513.a n = A214406 n

theorem P5728865302751931513.correct : P5728865302751931513.Spec := by
  intro n
  simp only [A214406]

end A214406

/-! ## A214406.P14036034163553055215

`A288875(∑[2*n]%comp[∑[n]])`
-/

namespace A214406.P14036034163553055215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288875 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A214406.P14036034163553055215

namespace A214406

/-- `A288875(∑[2*n]%comp[∑[n]])` -/
def P14036034163553055215.Spec : Prop :=
  ∀ n, P14036034163553055215.a n = A214406 n

end A214406

/-! ## A214406.P3438806220533751373

`A288875(∑[char[∑[n]]]²-n-1)`
-/

namespace A214406.P3438806220533751373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288875 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A214406.P3438806220533751373

namespace A214406

/-- `A288875(∑[char[∑[n]]]²-n-1)` -/
def P3438806220533751373.Spec : Prop :=
  ∀ n, P3438806220533751373.a n = A214406 n

end A214406

/-! ## A214406.P17532639440724121216

`gcd(A000038(n), A288875(A061579(n)))`
-/

namespace A214406.P17532639440724121216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288875 (A061579 n).toNat)

end

end A214406.P17532639440724121216

namespace A214406

/-- `gcd(A000038(n), A288875(A061579(n)))` -/
def P17532639440724121216.Spec : Prop :=
  ∀ n, (P17532639440724121216.a n : ℤ) = A214406 n

end A214406

/-! ## A214406.P8062344080374487385

`xor(A000038(n+1), A288875(A061579(n)))`
-/

namespace A214406.P8062344080374487385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 1)) (A288875 (A061579 n).toNat)

end

end A214406.P8062344080374487385

namespace A214406

/-- `xor(A000038(n+1), A288875(A061579(n)))` -/
def P8062344080374487385.Spec : Prop :=
  ∀ n, P8062344080374487385.a n = A214406 n

end A214406

/-! ## A214406.P8231548389854058655

`A288875(A061579(n))+A000038(2*(n+1))`
-/

namespace A214406.P8231548389854058655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288875 (A061579 n).toNat + A000038 (2 * (n + 1))

end

end A214406.P8231548389854058655

namespace A214406

/-- `A288875(A061579(n))+A000038(2*(n+1))` -/
def P8231548389854058655.Spec : Prop :=
  ∀ n, P8231548389854058655.a n = A214406 n

end A214406

/-! ## A214406.P10483515056302213763

`A000035(A269170(2*n+3))*A288875(A061579(n))`
-/

namespace A214406.P10483515056302213763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A269170 (2 * n + 3)).toNat * A288875 (A061579 n).toNat

end

end A214406.P10483515056302213763

namespace A214406

/-- `A000035(A269170(2*n+3))*A288875(A061579(n))` -/
def P10483515056302213763.Spec : Prop :=
  ∀ n, P10483515056302213763.a n = A214406 n

end A214406

/-! ## A214406.P9496474369697244835

`A290315(n)/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A214406.P9496474369697244835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290315 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A214406.P9496474369697244835

namespace A214406

/-- `A290315(n)/2^(n-C(∑[char[∑[n]]], 2))` -/
def P9496474369697244835.Spec : Prop :=
  ∀ n, P9496474369697244835.a n = (A214406 n : ℚ)

end A214406

/-! ## A214406.P7275940055017868670

`A290315(n)/A059268(n)`
-/

namespace A214406.P7275940055017868670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290315 n : ℚ) / (A059268 n : ℚ)

end

end A214406.P7275940055017868670

namespace A214406

/-- `A290315(n)/A059268(n)` -/
def P7275940055017868670.Spec : Prop :=
  ∀ n, P7275940055017868670.a n = (A214406 n : ℚ)

end A214406

/-! ## A214406.P6782263849785518422

`A290315(n)/A000079(A002262(n))`
-/

namespace A214406.P6782263849785518422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290315 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A214406.P6782263849785518422

namespace A214406

/-- `A290315(n)/A000079(A002262(n))` -/
def P6782263849785518422.Spec : Prop :=
  ∀ n, P6782263849785518422.a n = (A214406 n : ℚ)

end A214406

/-!
# A214407: Triangle read by rows. The coefficients in ascending order of x^i of the polynomials p{0}(x) = 1 and p{n}(x) = Sum_{k=0..n-1; k even} binomial(n, k) * p{k}(0)*(1 - n%2 + x^(n - k)).

The programs for A214407, there is no canonical definition to state claims against.
-/

/-! ## A214407.P6103277562430838695

`A167025(A128890(n))`
-/

namespace A214407.P6103277562430838695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167025 (A128890 n).toNat

end

end A214407.P6103277562430838695

/-! ## A214407.P17285445067043476479

`lcm(A178111(A185869(n+1)), A335953(n))`
-/

namespace A214407.P17285445067043476479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178111 (A185869 (n + 1)).toNat) (A335953 n)

end

end A214407.P17285445067043476479

/-! ## A214407.P6274699771432405152

`A351594(A060524(n))`
-/

namespace A214407.P6274699771432405152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 (A060524 n).toNat

end

end A214407.P6274699771432405152

/-! ## A214407.P11671990593472286328

`A367094(A378061(n))`
-/

namespace A214407.P11671990593472286328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367094 (A378061 n).toNat

end

end A214407.P11671990593472286328

/-! ## A214407.P18228807326004605995

`A309237(A164652(n))%10`
-/

namespace A214407.P18228807326004605995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309237 (A164652 n).toNat) 10

end

end A214407.P18228807326004605995

/-!
# A214408: Abundant numbers for which the abundance is not a divisor.

The programs for A214408, the canonical program `A214408.P1183294702136454259` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214408 has offset 1).

The definition of A214408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214408.P1183294702136454259

`lt[A009194(n+1), A033880(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A214408

/-- `lt[A009194(n+1), A033880(n+1)]+1` -/
def P1183294702136454259.Spec : Prop :=
  ∀ n, (P1183294702136454259.a n : ℤ) = A214408 (n + 1)

theorem P1183294702136454259.correct : P1183294702136454259.Spec := by
  intro n
  simp only [A214408, Nat.add_sub_cancel]

end A214408

/-! ## A214408.P4969891785666117664

`A020725(lt[A009194(n+1), A033880(n+1)])`
-/

namespace A214408.P4969891785666117664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P4969891785666117664

namespace A214408

/-- `A020725(lt[A009194(n+1), A033880(n+1)])` -/
def P4969891785666117664.Spec : Prop :=
  ∀ n, P4969891785666117664.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P12265770565322744655

`A065475(lt[A009194(n+1), A033880(n+1)])`
-/

namespace A214408.P12265770565322744655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P12265770565322744655

namespace A214408

/-- `A065475(lt[A009194(n+1), A033880(n+1)])` -/
def P12265770565322744655.Spec : Prop :=
  ∀ n, P12265770565322744655.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P4912340769100362697

`A114637(lt[A009194(n+1), A033880(n+1)])`
-/

namespace A214408.P4912340769100362697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P4912340769100362697

namespace A214408

/-- `A114637(lt[A009194(n+1), A033880(n+1)])` -/
def P4912340769100362697.Spec : Prop :=
  ∀ n, P4912340769100362697.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P14414234142733689999

`A153152(lt[A009194(n+1), A033880(n+1)])`
-/

namespace A214408.P14414234142733689999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P14414234142733689999

namespace A214408

/-- `A153152(lt[A009194(n+1), A033880(n+1)])` -/
def P14414234142733689999.Spec : Prop :=
  ∀ n, P14414234142733689999.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P2015701127162842095

`A065475(lt[A009194(n+1), A000203(n+1)-2*(n+1)])`
-/

namespace A214408.P2015701127162842095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P2015701127162842095

namespace A214408

/-- `A065475(lt[A009194(n+1), A000203(n+1)-2*(n+1)])` -/
def P2015701127162842095.Spec : Prop :=
  ∀ n, P2015701127162842095.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P5341380667248731891

`A153152(lt[A009194(n+1), A000203(n+1)-2*(n+1)])`
-/

namespace A214408.P5341380667248731891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P5341380667248731891

namespace A214408

/-- `A153152(lt[A009194(n+1), A000203(n+1)-2*(n+1)])` -/
def P5341380667248731891.Spec : Prop :=
  ∀ n, P5341380667248731891.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P13491516616710730236

`A065475(lt[A009194(n+1), A155085(n+1)-3*(n+1)])`
-/

namespace A214408.P13491516616710730236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (3 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P13491516616710730236

namespace A214408

/-- `A065475(lt[A009194(n+1), A155085(n+1)-3*(n+1)])` -/
def P13491516616710730236.Spec : Prop :=
  ∀ n, P13491516616710730236.a n = A214408 (n + 1)

end A214408

/-! ## A214408.P4825327345165791192

`A153152(lt[A009194(n+1), A155085(n+1)-3*(n+1)])`
-/

namespace A214408.P4825327345165791192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (3 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214408.P4825327345165791192

namespace A214408

/-- `A153152(lt[A009194(n+1), A155085(n+1)-3*(n+1)])` -/
def P4825327345165791192.Spec : Prop :=
  ∀ n, P4825327345165791192.a n = A214408 (n + 1)

end A214408

/-!
# A214409: a(n) is the smallest conjectured m such that the irreducible fraction m/n is a known abundancy index.

The programs for A214409, there is no canonical definition to state claims against.
-/

/-! ## A214409.P1776911524559718468

`A215509(A351374(n+1))`
-/

namespace A214409.P1776911524559718468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215509 (A351374 (n + 1)).toNat

end

end A214409.P1776911524559718468

/-! ## A214409.P4650072586869721075

`A351870(A215509(n+1))`
-/

namespace A214409.P4650072586869721075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A215509 (n + 1)).toNat

end

end A214409.P4650072586869721075

/-! ## A214409.P9294195372001358838

`A215509(∑[∑[A072189(n)]])`
-/

namespace A214409.P9294195372001358838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214409.P9294195372001358838

/-! ## A214409.P13588725217766302863

`A215509(A072189(n)!+n)`
-/

namespace A214409.P13588725217766302863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215509 (Nat.factorial (A072189 n).toNat + n)

end

end A214409.P13588725217766302863

/-! ## A214409.P13219356734966366567

`A215509(n+1)%A215239(n)`
-/

namespace A214409.P13219356734966366567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215509 (n + 1)) (A215239 n)

end

end A214409.P13219356734966366567

/-!
# A214410: Numbers that can't be expressed as the sum of a square and a Fibonacci number.

The programs for A214410, there is no canonical definition to state claims against.
-/

/-! ## A214410.P17088878133658430233

`eq[0, A362503(n)]`
-/

namespace A214410.P17088878133658430233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214410.P17088878133658430233

/-! ## A214410.P2427661647468741887

`lt[A362503(n+1), 1]+1`
-/

namespace A214410.P2427661647468741887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A214410.P2427661647468741887

/-! ## A214410.P17196207937533580598

`A000027(lt[A362503(n), 1])`
-/

namespace A214410.P17196207937533580598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A214410.P17196207937533580598

/-! ## A214410.P3039190925324175389

`lt[A362503(A028310(n)), 1]`
-/

namespace A214410.P3039190925324175389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214410.P3039190925324175389

/-! ## A214410.P4126061852121023340

`lt[A362503(n), A057427(n)]`
-/

namespace A214410.P4126061852121023340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214410.P4126061852121023340

/-! ## A214410.P9235887849178773416

`lt[A362503(n), A294619(n)]`
-/

namespace A214410.P9235887849178773416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214410.P9235887849178773416

/-! ## A214410.P3830573187125154775

`lt[A362503(n), A267084(n+1)]`
-/

namespace A214410.P3830573187125154775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214410.P3830573187125154775

/-! ## A214410.P16152219023963103921

`lt[A002604(n)*A362503(n), 1]`
-/

namespace A214410.P16152219023963103921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n * A362503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214410.P16152219023963103921

/-! ## A214410.P13858137929969723615

`lt[A004277(n)*A362503(n), 1]`
-/

namespace A214410.P13858137929969723615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A362503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214410.P13858137929969723615

/-! ## A214410.P7454480360917300361

`comp[A141169(n)+A095831(n+1)]`
-/

namespace A214410.P7454480360917300361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A095831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214410.P7454480360917300361

/-!
# A214411: The maximum exponent k of 7 such that 7^k divides n.

The programs for A214411, the canonical program `A214411.P333833577955200913` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214411 has offset 1).

The definition of A214411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214411.P333833577955200913

`val(n+1, 7)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214411

/-- `val(n+1, 7)` -/
def P333833577955200913.Spec : Prop :=
  ∀ n, (P333833577955200913.a n : ℤ) = A214411 (n + 1)

theorem P333833577955200913.correct : P333833577955200913.Spec := by
  intro n
  simp only [A214411, Nat.add_sub_cancel]

end A214411

/-!
# A214412: Numbers that can't be expressed as the sum of a Fibonacci number and a square of a positive integer.

The programs for A214412, the canonical program `A214412.P17651394908834805650` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214412 has offset 1).

The definition of A214412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214412.P11888878834148312304

`eq[A010056(n), A362503(n)]`
-/

namespace A214412.P11888878834148312304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214412.P11888878834148312304

namespace A214412

/-- `eq[A010056(n), A362503(n)]` -/
def P11888878834148312304.Spec : Prop :=
  ∀ n, (P11888878834148312304.a n : ℤ) = A214412 (n + 1)

end A214412

/-! ## A214412.P1991864888282812939

`eq[A104162(n), A362503(n)]`
-/

namespace A214412.P1991864888282812939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214412.P1991864888282812939

namespace A214412

/-- `eq[A104162(n), A362503(n)]` -/
def P1991864888282812939.Spec : Prop :=
  ∀ n, (P1991864888282812939.a n : ℤ) = A214412 (n + 1)

end A214412

/-! ## A214412.P16991842633908354118

`eq[char[A000045(n)], A362503(n)]`
-/

namespace A214412.P16991842633908354118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A214412.P16991842633908354118

namespace A214412

/-- `eq[char[A000045(n)], A362503(n)]` -/
def P16991842633908354118.Spec : Prop :=
  ∀ n, (P16991842633908354118.a n : ℤ) = A214412 (n + 1)

end A214412

/-! ## A214412.P17651394908834805650

`comp[A141169(n)+A193739(n)²]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214412

/-- `comp[A141169(n)+A193739(n)²]` -/
def P17651394908834805650.Spec : Prop :=
  ∀ n, (P17651394908834805650.a n : ℤ) = A214412 (n + 1)

theorem P17651394908834805650.correct : P17651394908834805650.Spec := by
  intro n
  simp only [A214412, Nat.add_sub_cancel]

end A214412

/-! ## A214412.P16865124810543403421

`comp[A141169(n)+A055461(n+1)]`
-/

namespace A214412.P16865124810543403421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A055461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214412.P16865124810543403421

namespace A214412

/-- `comp[A141169(n)+A055461(n+1)]` -/
def P16865124810543403421.Spec : Prop :=
  ∀ n, (P16865124810543403421.a n : ℤ) = A214412 (n + 1)

end A214412

/-!
# A214413: a(n) is the smallest m such that the irreducible fraction m/n is not an abundancy outlaw.

The programs for A214413, there is no canonical definition to state claims against.
-/

/-! ## A214413.P9943148230403048101

`A333382(A296561(n+1))+∑{d}[n+1, #]`
-/

namespace A214413.P9943148230403048101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A296561 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A214413.P9943148230403048101

/-! ## A214413.P11046659515582021257

`A327527(A067911(n+1))+n`
-/

namespace A214413.P11046659515582021257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (A067911 (n + 1)).toNat + (n : ℤ)

end

end A214413.P11046659515582021257

/-! ## A214413.P12942309737198459812

`A305445(A199583(n+1))+∑{d}[n+1, #]`
-/

namespace A214413.P12942309737198459812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305445 (A199583 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A214413.P12942309737198459812

/-! ## A214413.P4259131553433702845

`A048266(or(∑{d}[n+1, #], A111775(n+1)))`
-/

namespace A214413.P4259131553433702845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A111775 (n + 1))).toNat

end

end A214413.P4259131553433702845

/-! ## A214413.P2854671158567466848

`or(∑{d}[n+1, #], A108455(A001055(2*(n+1))!))`
-/

namespace A214413.P2854671158567466848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A108455 (Nat.factorial (A001055 (2 * (n + 1))).toNat))

end

end A214413.P2854671158567466848

/-!
# A214414: Fixed points of permutations A105027 and A214417.

The programs for A214414, there is no canonical definition to state claims against.
-/

/-! ## A214414.P2870079966544904109

`eq[1, A105154(n)]`
-/

namespace A214414.P2870079966544904109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214414.P2870079966544904109

/-!
# A214415: Numbers n such that prevprime(2^n) AND nextprime(2^n) = 1, where AND is the bitwise AND operator.

The programs for A214415, there is no canonical definition to state claims against.
-/

/-! ## A214415.P14498417518899764114

`ceil(log2(A334150(n+1)))`
-/

namespace A214415.P14498417518899764114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A334150 (n + 1) : ℝ)⌉

end

end A214415.P14498417518899764114

/-! ## A214415.P772946015855014447

`A028310(round(log2(A334150(n+1))))`
-/

namespace A214415.P772946015855014447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.logb 2 (A334150 (n + 1) : ℝ))).toNat

end

end A214415.P772946015855014447

/-! ## A214415.P1098350514426373747

`round(log2(A334150(n+1)))%A107953(n)`
-/

namespace A214415.P1098350514426373747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A334150 (n + 1) : ℝ))) (A107953 n)

end

end A214415.P1098350514426373747

/-! ## A214415.P5085937199464566692

`round(log2(A334150(n+1)))+A008594(n)%2`
-/

namespace A214415.P5085937199464566692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A334150 (n + 1) : ℝ)) + Int.tmod (A008594 n) 2

end

end A214415.P5085937199464566692

/-!
# A214416: Inverse permutation to A105025.

The programs for A214416, there is no canonical definition to state claims against.
-/

/-! ## A214416.P9238605843603848218

`A105027(xor(n, A063725(A061561(n))))`
-/

namespace A214416.P9238605843603848218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (Int.xor (n : ℤ) (A063725 (A061561 n).toNat)).toNat

end

end A214416.P9238605843603848218

/-! ## A214416.P7766073531084605693

`A105025(A105025(A105025(A000120(A000225(n)))))`
-/

namespace A214416.P7766073531084605693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (A105025 (A105025 (A000120 (A000225 n).toNat).toNat).toNat).toNat

end

end A214416.P7766073531084605693

/-!
# A214417: Inverse permutation to A105027.

The programs for A214417, there is no canonical definition to state claims against.
-/

/-! ## A214417.P5195104935042059106

`A105027(A105027(A103122(A102370(A105027(n)))))`
-/

namespace A214417.P5195104935042059106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (A105027 (A103122 (A102370 (A105027 n).toNat).toNat).toNat).toNat

end

end A214417.P5195104935042059106

/-! ## A214417.P15388959038169898380

`A105025(xor(n, A063725(A061561(n))))`
-/

namespace A214417.P15388959038169898380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (Int.xor (n : ℤ) (A063725 (A061561 n).toNat)).toNat

end

end A214417.P15388959038169898380

/-! ## A214417.P5649498515262315622

`A105027(A105027(A105027(A000523(A103745(n+1)))))`
-/

namespace A214417.P5649498515262315622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (A105027 (A105027 (A000523 (A103745 (n + 1)).toNat).toNat).toNat).toNat

end

end A214417.P5649498515262315622

/-!
# A214420: Numbers not representable as the sum of three 11-gonal numbers.

The programs for A214420, there is no canonical definition to state claims against.
-/

/-! ## A214420.P3705083284430711070

`lt[A075162(A054353(n+1)), ∑[n]]`
-/

namespace A214420.P3705083284430711070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075162 (A054353 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214420.P3705083284430711070

/-!
# A214421: Numbers not representable as the sum of three 12-gonal numbers.

The programs for A214421, there is no canonical definition to state claims against.
-/

/-! ## A214421.P6099457799086091008

`∑[∏{e}[A144972(A067259(n+1)²), #]]`
-/

namespace A214421.P6099457799086091008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (A067259 (n + 1) ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214421.P6099457799086091008

/-! ## A214421.P17889466943998967318

`∑[A051903(A144972(A067259(n+1)²))]`
-/

namespace A214421.P17889466943998967318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A144972 (A067259 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214421.P17889466943998967318

/-! ## A214421.P12546546459103107210

`A119797(n+2)+A007425(A256076(n+1))`
-/

namespace A214421.P12546546459103107210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119797 (n + 2) + A007425 (A256076 (n + 1)).toNat

end

end A214421.P12546546459103107210

/-! ## A214421.P6621369334437141187

`lt[A036036(A184414(3*n+2)), A010881(n)]`
-/

namespace A214421.P6621369334437141187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A184414 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214421.P6621369334437141187

/-! ## A214421.P5886088334040527961

`lt[A320033(A002378(3*n+2)), A053832(n)]`
-/

namespace A214421.P5886088334040527961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320033 (A002378 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214421.P5886088334040527961

/-!
# A214422: Least number k > 9 that is palindromic in exactly n bases b, with 2 <= b <= 10.

The programs for A214422, there is no canonical definition to state claims against.
-/

/-! ## A214422.P10473943550502012895

`a(n-3)²` with `a(0)=19, a(1)=11, a(2)=15, a(3)=10`
-/

namespace A214422.P10473943550502012895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19, 11, 15, 10] fun n a =>
  a (n - 3) ^ 2

end

end A214422.P10473943550502012895

/-!
# A214423: Numbers n palindromic in only one base b, 2 <= b <= 10.

The programs for A214423, there is no canonical definition to state claims against.
-/

/-! ## A214423.P12836428132300387281

`eq[1, A050812(n)]`
-/

namespace A214423.P12836428132300387281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214423.P12836428132300387281

/-! ## A214423.P17718940355683401308

`lt[A002102(A126796(n)), A106566(n)]`
-/

namespace A214423.P17718940355683401308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (A126796 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214423.P17718940355683401308

/-!
# A214424: Numbers that are palindromic in exactly two bases b, 2 <= b <= 10.

The programs for A214424, there is no canonical definition to state claims against.
-/

/-! ## A214424.P3610499924414659244

`eq[2, A050812(n)]`
-/

namespace A214424.P3610499924414659244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214424.P3610499924414659244

/-! ## A214424.P11573361608378450452

`eq[∑[A095408(n+1)]+3, A055098(n+1)]`
-/

namespace A214424.P11573361608378450452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A214424.P11573361608378450452

/-! ## A214424.P17448294643166375902

`lt[A295881(n+1), A300584(A341235(n+1))]`
-/

namespace A214424.P17448294643166375902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300584 (A341235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214424.P17448294643166375902

/-!
# A214425: Numbers n palindromic in exactly three bases b, 2 <= b <= 10.

The programs for A214425, there is no canonical definition to state claims against.
-/

/-! ## A214425.P10751711494944838155

`eq[3, A050812(n)]`
-/

namespace A214425.P10751711494944838155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214425.P10751711494944838155

/-!
# A214427: The base for which A214423(n) is palindromic.

The programs for A214427, there is no canonical definition to state claims against.
-/

/-! ## A214427.P11418933307603068658

`A016026(A214423(n+1))`
-/

namespace A214427.P11418933307603068658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A214423 (n + 1)).toNat

end

end A214427.P11418933307603068658

/-! ## A214427.P17646622730657671147

`A016026(eq[1, A050812(n)])`
-/

namespace A214427.P17646622730657671147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214427.P17646622730657671147

/-!
# A214428: Carmichael numbers n such that A002322(n) = 2^k * p, where k is an integer and p is a prime.

The programs for A214428, there is no canonical definition to state claims against.
-/

/-! ## A214428.P13966833454692785235

`A263403(eq[floor(n/4), A263395(n)])`
-/

namespace A214428.P13966833454692785235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263403 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A214428.P13966833454692785235

/-!
# A214429: Integers of the form (k^2 - 49) / 120.

The programs for A214429, the canonical program `A214429.P10067170425681112200` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214429 has offset 0).

The definition of A214429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214429.P10067170425681112200

`2*a(n-4)-a(n-8)+15` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=11, a(5)=15, a(6)=18, a(7)=23`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214429

/-- `2*a(n-4)-a(n-8)+15` -/
def P10067170425681112200.Spec : Prop :=
  ∀ n, P10067170425681112200.a n = A214429 n

theorem P10067170425681112200.correct : P10067170425681112200.Spec := by
  intro n
  simp only [A214429]

end A214429

/-! ## A214429.P3647918761968527615

`A316672(n+1)+1`
-/

namespace A214429.P3647918761968527615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316672 (n + 1) + 1

end

end A214429.P3647918761968527615

namespace A214429

/-- `A316672(n+1)+1` -/
def P3647918761968527615.Spec : Prop :=
  ∀ n, P3647918761968527615.a n = A214429 n

end A214429

/-! ## A214429.P11561826236394537466

`(A047201(n+1)²-A111711(n+1))/2`
-/

namespace A214429.P11561826236394537466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047201 (n + 1) ^ 2 - A111711 (n + 1) : ℚ) / 2

end

end A214429.P11561826236394537466

namespace A214429

/-- `(A047201(n+1)²-A111711(n+1))/2` -/
def P11561826236394537466.Spec : Prop :=
  ∀ n, P11561826236394537466.a n = (A214429 n : ℚ)

end A214429

/-! ## A214429.P14170334383120184014

`A008680(A280014(n+1)-11)`
-/

namespace A214429.P14170334383120184014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A280014 (n + 1) - 11).toNat

end

end A214429.P14170334383120184014

namespace A214429

/-- `A008680(A280014(n+1)-11)` -/
def P14170334383120184014.Spec : Prop :=
  ∀ n, P14170334383120184014.a n = A214429 n

end A214429

/-! ## A214429.P1988271685927086203

`eq[1, abs(A116915(n))]`
-/

namespace A214429.P1988271685927086203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116915 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214429.P1988271685927086203

namespace A214429

/-- `eq[1, abs(A116915(n))]` -/
def P1988271685927086203.Spec : Prop :=
  ∀ n, (P1988271685927086203.a n : ℤ) = A214429 n

end A214429

/-! ## A214429.P4564869993967442443

`eq[1, A113431(n)²]`
-/

namespace A214429.P4564869993967442443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113431 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214429.P4564869993967442443

namespace A214429

/-- `eq[1, A113431(n)²]` -/
def P4564869993967442443.Spec : Prop :=
  ∀ n, (P4564869993967442443.a n : ℤ) = A214429 n

end A214429

/-! ## A214429.P8034039260811126771

`floor(record[A058281(A008732(n))]/4)`
-/

namespace A214429.P8034039260811126771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A008732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌋

end

end A214429.P8034039260811126771

namespace A214429

/-- `floor(record[A058281(A008732(n))]/4)` -/
def P8034039260811126771.Spec : Prop :=
  ∀ n, P8034039260811126771.a n = A214429 n

end A214429

/-! ## A214429.P9157026918633775401

`A004526(A047201(n+1)²-A085787(n))`
-/

namespace A214429.P9157026918633775401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047201 (n + 1) ^ 2 - A085787 n).toNat

end

end A214429.P9157026918633775401

namespace A214429

/-- `A004526(A047201(n+1)²-A085787(n))` -/
def P9157026918633775401.Spec : Prop :=
  ∀ n, P9157026918633775401.a n = A214429 n

end A214429

/-! ## A214429.P14873822217707018478

`A004525(A047201(n+1)²-A111711(n+1))`
-/

namespace A214429.P14873822217707018478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047201 (n + 1) ^ 2 - A111711 (n + 1)).toNat

end

end A214429.P14873822217707018478

namespace A214429

/-- `A004525(A047201(n+1)²-A111711(n+1))` -/
def P14873822217707018478.Spec : Prop :=
  ∀ n, P14873822217707018478.a n = A214429 n

end A214429

/-! ## A214429.P7127835032435722420

`A025480(A047201(n+1)²-A111711(n+1))`
-/

namespace A214429.P7127835032435722420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A047201 (n + 1) ^ 2 - A111711 (n + 1)).toNat

end

end A214429.P7127835032435722420

namespace A214429

/-- `A025480(A047201(n+1)²-A111711(n+1))` -/
def P7127835032435722420.Spec : Prop :=
  ∀ n, P7127835032435722420.a n = A214429 n

end A214429

/-! ## A214429.P17306060806579281694

`A110654(A047201(n+1)²-A111711(n+1))`
-/

namespace A214429.P17306060806579281694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A047201 (n + 1) ^ 2 - A111711 (n + 1)).toNat

end

end A214429.P17306060806579281694

namespace A214429

/-- `A110654(A047201(n+1)²-A111711(n+1))` -/
def P17306060806579281694.Spec : Prop :=
  ∀ n, P17306060806579281694.a n = A214429 n

end A214429

/-!
# A214431: E.g.f. satisfies: A(x) = x + arcsin( A(x) )^2.

The programs for A214431, there is no canonical definition to state claims against.
-/

/-! ## A214431.P3459346113234329682

`A214224(n+1)+A025437(A185193(n+1))`
-/

namespace A214431.P3459346113234329682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214224 (n + 1) + A025437 (A185193 (n + 1)).toNat

end

end A214431.P3459346113234329682

/-! ## A214431.P702333722370674349

`A227461(n+1)-A025437(A028937(n+1))`
-/

namespace A214431.P702333722370674349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227461 (n + 1) - A025437 (A028937 (n + 1)).toNat

end

end A214431.P702333722370674349

/-!
# A214432: Indices for which A046825, the numerator of sum( 1/binomial(n,i), i=0..n ), sets a new record.

The programs for A214432, there is no canonical definition to state claims against.
-/

/-! ## A214432.P9348748078355147760

`record[A046825(n+1)]-record[A046825(n+1)-(n+1)]`
-/

namespace A214432.P9348748078355147760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046825 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A214432.P9348748078355147760

/-! ## A214432.P16123772603187483525

`∑[A053000(A306690(A257278(n+1)))]`
-/

namespace A214432.P16123772603187483525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A306690 (A257278 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214432.P16123772603187483525

/-! ## A214432.P16955012580344807547

`lt[A054705(A002624(n)), A231933(n+2)]`
-/

namespace A214432.P16955012580344807547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (A002624 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231933 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214432.P16955012580344807547

/-! ## A214432.P8635478112604640200

`lt[A096733(n+2), A014963(A096782(n+1))]`
-/

namespace A214432.P8635478112604640200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096733 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A096782 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214432.P8635478112604640200

/-!
# A214433: Where A105025 and A105027 agree.

The programs for A214433, there is no canonical definition to state claims against.
-/

/-! ## A214433.P18062063473150219217

`eq[A105025(n), A105027(n)]`
-/

namespace A214433.P18062063473150219217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214433.P18062063473150219217

/-! ## A214433.P7823772956551945343

`eq[A214417(A105025(n)), A325805(n)]`
-/

namespace A214433.P7823772956551945343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214417 (A105025 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214433.P7823772956551945343

/-! ## A214433.P2638771800735829540

`eq[A214416(A105027(n)), A325805(n)]`
-/

namespace A214433.P2638771800735829540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214416 (A105027 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214433.P2638771800735829540

/-! ## A214433.P8913122218754940542

`eq[n, A214417(A105025(n))]%A039302(n)`
-/

namespace A214433.P8913122218754940542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214417 (A105025 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A039302 n)

end

end A214433.P8913122218754940542

/-! ## A214433.P13233959966702868885

`eq[n, A214417(A105025(n))%A018252(n+1)]`
-/

namespace A214433.P13233959966702868885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214417 (A105025 n).toNat) (A018252 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214433.P13233959966702868885

/-!
# A214434: Composite numbers k such that k divides Fibonacci(k+1) or Fibonacci(k-1) and 2^(k-1) == 1 (mod k).

The programs for A214434, there is no canonical definition to state claims against.
-/

/-! ## A214434.P16004500795233527680

`∩[A001567(n+1), A182554(n+1)]`
-/

namespace A214434.P16004500795233527680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214434.P16004500795233527680

/-! ## A214434.P6322824110851084734

`∩[A001567(n+1), A069106(n+1)]`
-/

namespace A214434.P6322824110851084734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214434.P6322824110851084734

/-!
# A214438: Numerator of correlation kernels arising in adding a list of numbers in base 3 considering the distribution of number of carries.

The programs for A214438, there is no canonical definition to state claims against.
-/

/-! ## A214438.P17952164292316243358

`ogf((1+x+x^2)/(1-x^2+x^4))`
-/

namespace A214438.P17952164292316243358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 0, -1, 0, 1] n

end

end A214438.P17952164292316243358

/-!
# A214439: Denominators of correlation kernels arising in adding a list of numbers in base 3 considering the distribution of number of carries.

The programs for A214439, there is no canonical definition to state claims against.
-/

/-! ## A214439.P14366485948737002942

`A072560(A093178(n))^A008619(n)`
-/

namespace A214439.P14366485948737002942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072560 (A093178 n).toNat : ℚ) ^ (A008619 n : ℤ)

end

end A214439.P14366485948737002942

/-! ## A214439.P17799324037521087066

`A169609(A133265(n))^A008619(n)`
-/

namespace A214439.P17799324037521087066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169609 (A133265 n).toNat : ℚ) ^ (A008619 n : ℤ)

end

end A214439.P17799324037521087066

/-! ## A214439.P8088914730147648662

`A169609(A152271(n))^A008619(n)`
-/

namespace A214439.P8088914730147648662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169609 (A152271 n).toNat : ℚ) ^ (A008619 n : ℤ)

end

end A214439.P8088914730147648662

/-! ## A214439.P11733783556156418260

`A169609(A266072(n))^A008619(n)`
-/

namespace A214439.P11733783556156418260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169609 (A266072 n).toNat : ℚ) ^ (A008619 n : ℤ)

end

end A214439.P11733783556156418260

/-! ## A214439.P10047585542773187686

`A000244(A008619(n)*A097325(n+1))`
-/

namespace A214439.P10047585542773187686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A008619 n * A097325 (n + 1)).toNat

end

end A214439.P10047585542773187686

/-!
# A214441: Catalan numbers at square positions: a(n) = A000108(n^2).

The programs for A214441, the canonical program `A214441.P16344468953018238025` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214441 has offset 0).

The definition of A214441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n²)` (program `A214441.P16344468953018238025`, by `A214441.P16344468953018238025.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214441.P16344468953018238025

`A000108(n²)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A214441

/-- `A000108(n²)` -/
def P16344468953018238025.Spec : Prop :=
  ∀ n, P16344468953018238025.a n = A214441 n

theorem P16344468953018238025.correct : P16344468953018238025.Spec := by
  intro n
  simp only [A214441]

end A214441

/-! ## A214441.P9283688194105325466

`abs(A168491(n²))`
-/

namespace A214441.P9283688194105325466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n ^ 2)|

end

end A214441.P9283688194105325466

namespace A214441

/-- `abs(A168491(n²))` -/
def P9283688194105325466.Spec : Prop :=
  ∀ n, P9283688194105325466.a n = A214441 n

end A214441

/-! ## A214441.P1394679573747457853

`A120588(n²+1)`
-/

namespace A214441.P1394679573747457853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n ^ 2 + 1)

end

end A214441.P1394679573747457853

namespace A214441

/-- `A120588(n²+1)` -/
def P1394679573747457853.Spec : Prop :=
  ∀ n, P1394679573747457853.a n = A214441 n

end A214441

/-! ## A214441.P10551771283453951983

`A028304(n*2*n)`
-/

namespace A214441.P10551771283453951983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (n * (2 * n))

end

end A214441.P10551771283453951983

namespace A214441

/-- `A028304(n*2*n)` -/
def P10551771283453951983.Spec : Prop :=
  ∀ n, P10551771283453951983.a n = A214441 n

end A214441

/-! ## A214441.P4144577476317064707

`A089408(A000290(n)+n²+1)`
-/

namespace A214441.P4144577476317064707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A000290 n + (n ^ 2 : ℤ) + 1).toNat

end

end A214441.P4144577476317064707

namespace A214441

/-- `A089408(A000290(n)+n²+1)` -/
def P4144577476317064707.Spec : Prop :=
  ∀ n, P4144577476317064707.a n = A214441 n

end A214441

/-!
# A214444: Arithmetic mean of next a(n) successive squares is prime.

The programs for A214444, there is no canonical definition to state claims against.
-/

/-! ## A214444.P4177067143346205127

`A144567(A283059(n)+1)`
-/

namespace A214444.P4177067143346205127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144567 (A283059 n + 1).toNat

end

end A214444.P4177067143346205127

/-! ## A214444.P16105630442388097885

`A324644(A034474(n))+4`
-/

namespace A214444.P16105630442388097885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324644 (A034474 n).toNat + 4

end

end A214444.P16105630442388097885

/-! ## A214444.P3772027423049884585

`or(5, A068527(A014448(n)))`
-/

namespace A214444.P3772027423049884585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A068527 (A014448 n).toNat)

end

end A214444.P3772027423049884585

/-!
# A214445: a(n) = Euler(2*n)*binomial(4*n,2*n).

The programs for A214445, there is no canonical definition to state claims against.
-/

/-! ## A214445.P1051703385484590558

`A153641((2*n+1)²-(n+1))`
-/

namespace A214445.P1051703385484590558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 ((2 * n + 1) ^ 2 - (n + 1))

end

end A214445.P1051703385484590558

/-! ## A214445.P11644785514180217299

`A081658(A033586(n))`
-/

namespace A214445.P11644785514180217299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 (A033586 n).toNat

end

end A214445.P11644785514180217299

/-! ## A214445.P12035883285846598884

`A081658(A046092(2*n))`
-/

namespace A214445.P12035883285846598884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 (A046092 (2 * n)).toNat

end

end A214445.P12035883285846598884

/-! ## A214445.P5360569007986022502

`A119879(4*A014105(n))`
-/

namespace A214445.P5360569007986022502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (4 * A014105 n).toNat

end

end A214445.P5360569007986022502

/-! ## A214445.P7210370808687034413

`A119879(n*A017113(n))`
-/

namespace A214445.P7210370808687034413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 ((n : ℤ) * A017113 n).toNat

end

end A214445.P7210370808687034413

/-!
# A214446: a(n) = n*(n^2-2*n-1).

The programs for A214446, the canonical program `A214446.P3976769411482421604` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214446 has offset 1).

The definition of A214446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+1)²-2*(n+1)-1)` (program `A214446.P3976769411482421604`, by `A214446.P3976769411482421604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214446.P15706376482326387226

`(n+1)*((n-1)*(n+1)-1)`
-/

namespace A214446.P15706376482326387226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n : ℤ) - 1) * (n + 1 : ℤ) - 1)

end

end A214446.P15706376482326387226

namespace A214446

/-- `(n+1)*((n-1)*(n+1)-1)` -/
def P15706376482326387226.Spec : Prop :=
  ∀ n, P15706376482326387226.a n = A214446 (n + 1)

theorem P15706376482326387226.correct : P15706376482326387226.Spec := by
  intro n
  simp only [A214446, Nat.add_sub_cancel, A214446.P15706376482326387226.a, A214446.P3976769411482421604.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214446

/-! ## A214446.P3976769411482421604

`(n+1)*((n+1)²-2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214446

/-- `(n+1)*((n+1)²-2*(n+1)-1)` -/
def P3976769411482421604.Spec : Prop :=
  ∀ n, P3976769411482421604.a n = A214446 (n + 1)

theorem P3976769411482421604.correct : P3976769411482421604.Spec := by
  intro n
  simp only [A214446, Nat.add_sub_cancel]

end A214446

/-! ## A214446.P16582894015995968031

`∑[lcm(n, 1-3*n)-2]`
-/

namespace A214446.P16582894015995968031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (1 - (3 * n : ℤ)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P16582894015995968031

namespace A214446

/-- `∑[lcm(n, 1-3*n)-2]` -/
def P16582894015995968031.Spec : Prop :=
  ∀ n, P16582894015995968031.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P17098091147286144214

`(n+1)/tan(acot(n²-2))`
-/

namespace A214446.P17098091147286144214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((n ^ 2 : ℤ) - 2 : ℝ))

end

end A214446.P17098091147286144214

namespace A214446

/-- `(n+1)/tan(acot(n²-2))` -/
def P17098091147286144214.Spec : Prop :=
  ∀ n, P17098091147286144214.a n = (A214446 (n + 1) : ℝ)

end A214446

/-! ## A214446.P8586168847138924066

`(n²-2)/cot(atan(n+1))`
-/

namespace A214446.P8586168847138924066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A214446.P8586168847138924066

namespace A214446

/-- `(n²-2)/cot(atan(n+1))` -/
def P8586168847138924066.Spec : Prop :=
  ∀ n, P8586168847138924066.a n = (A214446 (n + 1) : ℝ)

end A214446

/-! ## A214446.P15126422242139153427

`∑[∑[a(n-1)+6]]` with `a(0)=-2, a(1)=2`
-/

namespace A214446.P15126422242139153427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P15126422242139153427

namespace A214446

/-- `∑[∑[a(n-1)+6]]` -/
def P15126422242139153427.Spec : Prop :=
  ∀ n, P15126422242139153427.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P9412387730992763601

`∑[∑[ogf((-2+6x+2x^2)/(1-2x+x^2))]]`
-/

namespace A214446.P9412387730992763601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 6, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P9412387730992763601

namespace A214446

/-- `∑[∑[ogf((-2+6x+2x^2)/(1-2x+x^2))]]` -/
def P9412387730992763601.Spec : Prop :=
  ∀ n, P9412387730992763601.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P10909837810555773687

`ogf((-2+6x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A214446.P10909837810555773687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 6, 2] [1, -4, 6, -4, 1] n

end

end A214446.P10909837810555773687

namespace A214446

/-- `ogf((-2+6x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10909837810555773687.Spec : Prop :=
  ∀ n, P10909837810555773687.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P2754334581653129495

`2*(n+2)*C(n, 2)-2`
-/

namespace A214446.P2754334581653129495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 2) * Nat.choose n 2) : ℤ) - 2

end

end A214446.P2754334581653129495

namespace A214446

/-- `2*(n+2)*C(n, 2)-2` -/
def P2754334581653129495.Spec : Prop :=
  ∀ n, P2754334581653129495.a n = A214446 (n + 1)

theorem P2754334581653129495.correct : P2754334581653129495.Spec := by
  intro n
  simp only [A214446, Nat.add_sub_cancel, A214446.P2754334581653129495.a, A214446.P3976769411482421604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A214446

/-! ## A214446.P2718407471145615436

`∑[2-∑[a(n-1)-6]]` with `a(0)=4`
-/

namespace A214446.P2718407471145615436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P2718407471145615436

namespace A214446

/-- `∑[2-∑[a(n-1)-6]]` -/
def P2718407471145615436.Spec : Prop :=
  ∀ n, P2718407471145615436.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P15289463542412952748

`∑[C(2*n, 2)-(2-n²)]`
-/

namespace A214446.P15289463542412952748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - (2 - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P15289463542412952748

namespace A214446

/-- `∑[C(2*n, 2)-(2-n²)]` -/
def P15289463542412952748.Spec : Prop :=
  ∀ n, P15289463542412952748.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P16325808301547904759

`(n-1)*record[n*(n-2)]-2`
-/

namespace A214446.P16325808301547904759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A214446.P16325808301547904759

namespace A214446

/-- `(n-1)*record[n*(n-2)]-2` -/
def P16325808301547904759.Spec : Prop :=
  ∀ n, P16325808301547904759.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P1890435861529376985

`lcm(n+1, n²)-(n+2+n)`
-/

namespace A214446.P1890435861529376985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) - (n + 2 + n : ℤ)

end

end A214446.P1890435861529376985

namespace A214446

/-- `lcm(n+1, n²)-(n+2+n)` -/
def P1890435861529376985.Spec : Prop :=
  ∀ n, P1890435861529376985.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P6495856994049779354

`a(n-1)/n+n^3-1` with `a(0)=-2`
-/

namespace A214446.P6495856994049779354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-2] fun n a =>
  a (n - 1) / (n : ℚ) + ((n ^ 3 : ℤ) - 1 : ℚ)

end

end A214446.P6495856994049779354

namespace A214446

/-- `a(n-1)/n+n^3-1` -/
def P6495856994049779354.Spec : Prop :=
  ∀ n, P6495856994049779354.a n = (A214446 (n + 1) : ℚ)

end A214446

/-! ## A214446.P7377851770748669136

`(a(n-1)+n²²)/n-1` with `a(0)=-2`
-/

namespace A214446.P7377851770748669136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-2] fun n a =>
  (a (n - 1) + ((n ^ 2) ^ 2 : ℚ)) / (n : ℚ) - 1

end

end A214446.P7377851770748669136

namespace A214446

/-- `(a(n-1)+n²²)/n-1` -/
def P7377851770748669136.Spec : Prop :=
  ∀ n, P7377851770748669136.a n = (A214446 (n + 1) : ℚ)

end A214446

/-! ## A214446.P5164540547838972021

`∑[(Δ[C(2*n, 2)]-(n-1))*(n-1)]`
-/

namespace A214446.P5164540547838972021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((n : ℤ) - 1)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P5164540547838972021

namespace A214446

/-- `∑[(Δ[C(2*n, 2)]-(n-1))*(n-1)]` -/
def P5164540547838972021.Spec : Prop :=
  ∀ n, P5164540547838972021.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P16458586730177749679

`A168297(n)-3`
-/

namespace A214446.P16458586730177749679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 n - 3

end

end A214446.P16458586730177749679

namespace A214446

/-- `A168297(n)-3` -/
def P16458586730177749679.Spec : Prop :=
  ∀ n, P16458586730177749679.a n = A214446 (n + 1)

theorem P16458586730177749679.correct : P16458586730177749679.Spec := by
  intro n
  simp only [A214446, Nat.add_sub_cancel, A214446.P16458586730177749679.a, A214446.P3976769411482421604.a, A168297, A168297.P10015316482910448573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214446

/-! ## A214446.P10670917355113970262

`∑[A049450(n)-2]`
-/

namespace A214446.P10670917355113970262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P10670917355113970262

namespace A214446

/-- `∑[A049450(n)-2]` -/
def P10670917355113970262.Spec : Prop :=
  ∀ n, P10670917355113970262.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P16057366973158465800

`∑[A056106(n)-3]`
-/

namespace A214446.P16057366973158465800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214446.P16057366973158465800

namespace A214446

/-- `∑[A056106(n)-3]` -/
def P16057366973158465800.Spec : Prop :=
  ∀ n, P16057366973158465800.a n = A214446 (n + 1)

end A214446

/-! ## A214446.P17465903416618002765

`A214731(n+1)-n`
-/

namespace A214446.P17465903416618002765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214731 (n + 1) - (n : ℤ)

end

end A214446.P17465903416618002765

namespace A214446

/-- `A214731(n+1)-n` -/
def P17465903416618002765.Spec : Prop :=
  ∀ n, P17465903416618002765.a n = A214446 (n + 1)

theorem P17465903416618002765.correct : P17465903416618002765.Spec := by
  intro n
  simp only [A214446, Nat.add_sub_cancel, A214446.P17465903416618002765.a, A214446.P3976769411482421604.a, A214731, A214731.P11100101771334017780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214446

/-!
# A214447: a(n) = (-2)^n * Euler_polynomial(n,1) * binomial(2*n,n).

The programs for A214447, there is no canonical definition to state claims against.
-/

/-! ## A214447.P2128957581238573320

`A000984(n)*A004174(∑[n])`
-/

namespace A214447.P2128957581238573320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A004174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214447.P2128957581238573320

/-! ## A214447.P14510329654897705365

`A000079(n)*A004173(A002378(n))`
-/

namespace A214447.P14510329654897705365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004173 (A002378 n).toNat

end

end A214447.P14510329654897705365

/-! ## A214447.P12024917494246129104

`A000079(n)*A004173(A028392(n²))`
-/

namespace A214447.P12024917494246129104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004173 (A028392 (n ^ 2)).toNat

end

end A214447.P12024917494246129104

/-! ## A214447.P7763449063347035382

`A000079(n)*A004173(A005843(∑[n]))`
-/

namespace A214447.P7763449063347035382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004173 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A214447.P7763449063347035382

/-! ## A214447.P6869958708105801462

`A000079(n)*A036968(n+1)*A000108(n)`
-/

namespace A214447.P6869958708105801462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A036968 (n + 1) * A000108 n

end

end A214447.P6869958708105801462

/-!
# A214448: Least m>0 such that m^4 >= n!.

The programs for A214448, the canonical program `A214448.P5634866226720412578` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214448 has offset 1).

The definition of A214448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214448.P5634866226720412578

`ceil((n+1)!^(1/4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214448

/-- `ceil((n+1)!^(1/4))` -/
def P5634866226720412578.Spec : Prop :=
  ∀ n, P5634866226720412578.a n = A214448 (n + 1)

theorem P5634866226720412578.correct : P5634866226720412578.Spec := by
  intro n
  simp only [A214448, Nat.add_sub_cancel]

end A214448

/-! ## A214448.P16804604813184290070

`ceil(∏[root(n+1, 4)])`
-/

namespace A214448.P16804604813184290070
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A214448.P16804604813184290070

namespace A214448

/-- `ceil(∏[root(n+1, 4)])` -/
def P16804604813184290070.Spec : Prop :=
  ∀ n, P16804604813184290070.a n = A214448 (n + 1)

end A214448

/-! ## A214448.P1558378642839420355

`ceil(sqrt(sqrt((n+1)!)))%A000211(n)²`
-/

namespace A214448.P1558378642839420355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (Real.sqrt (Nat.factorial (n + 1) : ℝ))⌉ (A000211 n ^ 2)

end

end A214448.P1558378642839420355

namespace A214448

/-- `ceil(sqrt(sqrt((n+1)!)))%A000211(n)²` -/
def P1558378642839420355.Spec : Prop :=
  ∀ n, P1558378642839420355.a n = A214448 (n + 1)

end A214448

/-! ## A214448.P12215126870435930047

`ceil(sqrt(sqrt((n+1)!)))*A000034(2*n)`
-/

namespace A214448.P12215126870435930047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (Nat.factorial (n + 1) : ℝ))⌉ * A000034 (2 * n)

end

end A214448.P12215126870435930047

namespace A214448

/-- `ceil(sqrt(sqrt((n+1)!)))*A000034(2*n)` -/
def P12215126870435930047.Spec : Prop :=
  ∀ n, P12215126870435930047.a n = A214448 (n + 1)

end A214448

/-! ## A214448.P1538762948713061878

`A008683(8*(n+1))+ceil(sqrt(sqrt((n+1)!)))`
-/

namespace A214448.P1538762948713061878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + ⌈Real.sqrt (Real.sqrt (Nat.factorial (n + 1) : ℝ))⌉

end

end A214448.P1538762948713061878

namespace A214448

/-- `A008683(8*(n+1))+ceil(sqrt(sqrt((n+1)!)))` -/
def P1538762948713061878.Spec : Prop :=
  ∀ n, P1538762948713061878.a n = A214448 (n + 1)

end A214448

/-! ## A214448.P14249511979797664739

`ceil(sqrt(sqrt((n+1)!)))*A014963(10*(n+1))`
-/

namespace A214448.P14249511979797664739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (Nat.factorial (n + 1) : ℝ))⌉ * A014963 (10 * (n + 1))

end

end A214448.P14249511979797664739

namespace A214448

/-- `ceil(sqrt(sqrt((n+1)!)))*A014963(10*(n+1))` -/
def P14249511979797664739.Spec : Prop :=
  ∀ n, P14249511979797664739.a n = A214448 (n + 1)

end A214448

/-! ## A214448.P18427527381373034270

`((-1)^A000009(n))²*ceil(sqrt(sqrt((n+1)!)))`
-/

namespace A214448.P18427527381373034270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A000009 n : ℤ)) ^ 2 * (⌈Real.sqrt (Real.sqrt (Nat.factorial (n + 1) : ℝ))⌉ : ℚ)

end

end A214448.P18427527381373034270

namespace A214448

/-- `((-1)^A000009(n))²*ceil(sqrt(sqrt((n+1)!)))` -/
def P18427527381373034270.Spec : Prop :=
  ∀ n, P18427527381373034270.a n = (A214448 (n + 1) : ℚ)

end A214448

/-!
# A214449: Least m>0 such that n! <= m^m.

The programs for A214449, there is no canonical definition to state claims against.
-/

/-! ## A214449.P13851866956581972966

`A064317(n+1)+1-A000007(n)`
-/

namespace A214449.P13851866956581972966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (n + 1) + (1 - A000007 n)

end

end A214449.P13851866956581972966

/-! ## A214449.P11694067703136646216

`A064317(n+1)%∑[A064317(n)]+1`
-/

namespace A214449.P11694067703136646216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064317 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A214449.P11694067703136646216

/-! ## A214449.P2706967497582993069

`A064317(n+1)+1-A036987(2*n)`
-/

namespace A214449.P2706967497582993069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (n + 1) + (1 - A036987 (2 * n))

end

end A214449.P2706967497582993069

/-! ## A214449.P13087144318738809255

`A064317(n+1)+n²%A020639(n+1)`
-/

namespace A214449.P13087144318738809255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (n + 1) + Int.tmod (n ^ 2 : ℤ) (A020639 (n + 1))

end

end A214449.P13087144318738809255

/-! ## A214449.P13295885328465263168

`A064317(n+1)+A000007((n+1)*A000007(n))`
-/

namespace A214449.P13295885328465263168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (n + 1) + A000007 ((n + 1 : ℤ) * A000007 n).toNat

end

end A214449.P13295885328465263168

/-! ## A214449.P678645141455911567

`A064317(n+1)+n/A064317(A064318(n+1))`
-/

namespace A214449.P678645141455911567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064317 (n + 1) : ℚ) + (n : ℚ) / (A064317 (A064318 (n + 1)).toNat : ℚ)

end

end A214449.P678645141455911567

/-! ## A214449.P682870686865152179

`A064317(n+1)+a(A035444(2*n+1))` with `a(0)=1`
-/

namespace A214449.P682870686865152179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064317 (n + 1) + a (A035444 (2 * n + 1)).toNat

end

end A214449.P682870686865152179

/-! ## A214449.P15901597515095362944

`A064722(2*(n+1))+A064317(n+1)-A064722(2*n+1)`
-/

namespace A214449.P15901597515095362944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (2 * (n + 1)) + (A064317 (n + 1) - A064722 (2 * n + 1))

end

end A214449.P15901597515095362944

/-! ## A214449.P1912941609664658597

`A064317(n+1)+A004218(2*n+1)/A004218(2*(n+1))`
-/

namespace A214449.P1912941609664658597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064317 (n + 1) : ℚ) + (A004218 (2 * n + 1) : ℚ) / (A004218 (2 * (n + 1)) : ℚ)

end

end A214449.P1912941609664658597

/-! ## A214449.P4296976532799458749

`A064317(n+1)+2-A340087(A007491(n+1)+1)`
-/

namespace A214449.P4296976532799458749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (n + 1) + (2 - A340087 (A007491 (n + 1) + 1).toNat)

end

end A214449.P4296976532799458749

/-!
# A214451: Arithmetic mean of next a(n) successive squares of positive integers is prime.

The programs for A214451, there is no canonical definition to state claims against.
-/

/-! ## A214451.P16795527386545590971

`A308168(A082083(n+2)+1)`
-/

namespace A214451.P16795527386545590971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308168 (A082083 (n + 2) + 1).toNat

end

end A214451.P16795527386545590971

/-! ## A214451.P15242838830644965038

`A107257(and(A008098(n), A008100(n)))`
-/

namespace A214451.P15242838830644965038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (Int.land (A008098 n) (A008100 n)).toNat

end

end A214451.P15242838830644965038

/-!
# A214452: Number of primes of the form x^4 + 1 less than 10^n.

The programs for A214452, there is no canonical definition to state claims against.
-/

/-! ## A214452.P7995327638131876821

`A055572(A018059(n))`
-/

namespace A214452.P7995327638131876821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A018059 n).toNat

end

end A214452.P7995327638131876821

/-! ## A214452.P208626497866569363

`∑[A159630(A068033(n))]`
-/

namespace A214452.P208626497866569363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159630 (A068033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214452.P208626497866569363

/-! ## A214452.P35986064055025714

`∑[A131469(∏[A014643(n+1)])]`
-/

namespace A214452.P35986064055025714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214452.P35986064055025714

/-! ## A214452.P3883519436426729264

`∑[A152595(A095062(n+1)+1)]`
-/

namespace A214452.P3883519436426729264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152595 (A095062 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214452.P3883519436426729264

/-! ## A214452.P6339209294478803572

`A214927(2*n+1)+A060135(A060132(n))`
-/

namespace A214452.P6339209294478803572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (2 * n + 1) + A060135 (A060132 n).toNat

end

end A214452.P6339209294478803572

/-!
# A214455: Number of primes of the form x^16 + 1 less than 10^n.

The programs for A214455, there is no canonical definition to state claims against.
-/

/-! ## A214455.P11187884910040577479

`∑[A010054(A251736(n+1)+2)]`
-/

namespace A214455.P11187884910040577479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A251736 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214455.P11187884910040577479

/-! ## A214455.P7326797632690778584

`∑[A008284(A122286(3*n+4))]-n`
-/

namespace A214455.P7326797632690778584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A122286 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A214455.P7326797632690778584

/-! ## A214455.P14298911300722425013

`round(root(A135579(2*(n+2)), 6))`
-/

namespace A214455.P14298911300722425013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135579 (2 * (n + 2)) : ℝ) ^ (1 / (6 : ℝ)))

end

end A214455.P14298911300722425013

/-! ## A214455.P9389694361277216388

`round(root(A211772(2*n+5), 8))`
-/

namespace A214455.P9389694361277216388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211772 (2 * n + 5) : ℝ) ^ (1 / (8 : ℝ)))

end

end A214455.P9389694361277216388

/-! ## A214455.P14993319081042330027

`∑[val(A325362(2*n+5), 3)]`
-/

namespace A214455.P14993319081042330027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325362 (2 * n + 5)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214455.P14993319081042330027

/-!
# A214456: Expansion of b(q^2) * (b(q) + 2 * b(q^4)) / 3 in powers of q where b() is a cubic AGM theta function.

The programs for A214456, there is no canonical definition to state claims against.
-/

/-! ## A214456.P18248152091604706347

`(-1)^n*A118271(n)`
-/

namespace A214456.P18248152091604706347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A118271 n

end

end A214456.P18248152091604706347

/-! ## A214456.P8727301269372799617

`A131943(n)/3^(n%2)`
-/

namespace A214456.P8727301269372799617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A214456.P8727301269372799617

/-! ## A214456.P1967577962458321751

`A131943(n)/A010684(n)`
-/

namespace A214456.P1967577962458321751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (A010684 n : ℚ)

end

end A214456.P1967577962458321751

/-! ## A214456.P5495300681811082652

`A118271(n)/A033999(n)`
-/

namespace A214456.P5495300681811082652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 n : ℚ) / (A033999 n : ℚ)

end

end A214456.P5495300681811082652

/-! ## A214456.P12058648603325577394

`A131943(n)/(2-A033999(n))`
-/

namespace A214456.P12058648603325577394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (2 - A033999 n : ℚ)

end

end A214456.P12058648603325577394

/-! ## A214456.P5637378205330094445

`A131943(n)/(A033999(n+1)+2)`
-/

namespace A214456.P5637378205330094445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (A033999 (n + 1) + 2 : ℚ)

end

end A214456.P5637378205330094445

/-! ## A214456.P4948265230719789088

`A121443(n+1)/A214361(n+1)*A131943(n)`
-/

namespace A214456.P4948265230719789088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A214361 (n + 1) : ℚ) * (A131943 n : ℚ)

end

end A214456.P4948265230719789088

/-! ## A214456.P2426874192648262616

`A226132(n+1)/A124449(n+1)*A131943(n)`
-/

namespace A214456.P2426874192648262616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226132 (n + 1) : ℚ) / (A124449 (n + 1) : ℚ) * (A131943 n : ℚ)

end

end A214456.P2426874192648262616

/-! ## A214456.P6867187239457123693

`(A118271(A109043(n))+A118271(n))/2`
-/

namespace A214456.P6867187239457123693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (A109043 n).toNat + A118271 n : ℚ) / 2

end

end A214456.P6867187239457123693

/-! ## A214456.P15275456593260233440

`A118271(2*n)/A010684(n)`
-/

namespace A214456.P15275456593260233440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (2 * n) : ℚ) / (A010684 n : ℚ)

end

end A214456.P15275456593260233440

/-! ## A214456.P15307336972620126561

`A226139(2*n)/A010684(n)`
-/

namespace A214456.P15307336972620126561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 (2 * n) : ℚ) / (A010684 n : ℚ)

end

end A214456.P15307336972620126561

/-! ## A214456.P13519364568219382890

`A226139(2*n)/Δ[A042948(n)]`
-/

namespace A214456.P13519364568219382890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 (2 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A214456.P13519364568219382890

/-! ## A214456.P567389043239948275

`A131943(n)/(2-A057077(2*n))`
-/

namespace A214456.P567389043239948275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (2 - A057077 (2 * n) : ℚ)

end

end A214456.P567389043239948275

/-! ## A214456.P3114137338455569836

`A226139(2*n)/(2-A033999(n))`
-/

namespace A214456.P3114137338455569836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 (2 * n) : ℚ) / (2 - A033999 n : ℚ)

end

end A214456.P3114137338455569836

/-! ## A214456.P8828582370448277012

`A226139(2*n)/(A033999(n+1)+2)`
-/

namespace A214456.P8828582370448277012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 (2 * n) : ℚ) / (A033999 (n + 1) + 2 : ℚ)

end

end A214456.P8828582370448277012

/-! ## A214456.P557391663181329950

`(A118271(A005843(n))+A118271(n))/2`
-/

namespace A214456.P557391663181329950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (A005843 n).toNat + A118271 n : ℚ) / 2

end

end A214456.P557391663181329950

/-! ## A214456.P3735276878401406234

`(A118271(A109045(n))+A118271(n))/2`
-/

namespace A214456.P3735276878401406234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (A109045 n).toNat + A118271 n : ℚ) / 2

end

end A214456.P3735276878401406234

/-! ## A214456.P848728459006110766

`(A118271(A008574(n))+A118271(n))/2`
-/

namespace A214456.P848728459006110766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (A008574 n).toNat + A118271 n : ℚ) / 2

end

end A214456.P848728459006110766

/-! ## A214456.P3243671068611324582

`(A118271(A008586(n))+A118271(n))/2`
-/

namespace A214456.P3243671068611324582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (A008586 n).toNat + A118271 n : ℚ) / 2

end

end A214456.P3243671068611324582

/-! ## A214456.P4573123837436294164

`(A118271(A008590(n))+A118271(n))/2`
-/

namespace A214456.P4573123837436294164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 (A008590 n).toNat + A118271 n : ℚ) / 2

end

end A214456.P4573123837436294164

/-!
# A214457: Table read by antidiagonals in which entry T(n,k) in row n and column k gives the number of possible rhombus tilings of an octagon with interior angles of 135 degrees and sequences of side lengths {n, k, 1, 1, n, k, 1, 1} (as the octagon is traversed), n,k in {1,2,3,...}.

The programs for A214457, there is no canonical definition to state claims against.
-/

/-! ## A214457.P8447898831197633940

`A145596((n-comp[∑[n]])²+1-n)`
-/

namespace A214457.P8447898831197633940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145596 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (1 - (n : ℤ))).toNat

end

end A214457.P8447898831197633940

/-!
# A214459: Number of n X 3 nonconsecutive chess tableaux.

The programs for A214459, there is no canonical definition to state claims against.
-/

/-! ## A214459.P4292371175221603071

`A214088(∑[n+3]+n+3)`
-/

namespace A214459.P4292371175221603071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214088 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A214459.P4292371175221603071

/-! ## A214459.P14586717921359276983

`A065712(A110578(n)-A335441(n))`
-/

namespace A214459.P14586717921359276983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (A110578 n - A335441 n).toNat

end

end A214459.P14586717921359276983

/-! ## A214459.P10571645662276857597

`A065712(∑[A110577(n)]-A335441(n))`
-/

namespace A214459.P10571645662276857597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (∑ j ∈ Finset.range (n + 1), f1 j - A335441 n).toNat

end

end A214459.P10571645662276857597

/-! ## A214459.P15758614051231412521

`A065712(∑[∑[A110576(n)]]-A335441(n))`
-/

namespace A214459.P15758614051231412521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (∑ j ∈ Finset.range (n + 1), f1 j - A335441 n).toNat

end

end A214459.P15758614051231412521

/-!
# A214460: Number of 4 X 2*n+1 nonconsecutive chess tableaux.

The programs for A214460, there is no canonical definition to state claims against.
-/

/-! ## A214460.P18242921188946755509

`A179474(a(n-1))+A147652(n)` with `a(0)=1`
-/

namespace A214460.P18242921188946755509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179474 (a (n - 1)).toNat + A147652 n

end

end A214460.P18242921188946755509

/-! ## A214460.P11154707537741862038

`ceil(A332338(3*n+4)/A345174(3*n+2))`
-/

namespace A214460.P11154707537741862038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332338 (3 * n + 4) : ℚ) / (A345174 (3 * n + 2) : ℚ)⌉

end

end A214460.P11154707537741862038

/-! ## A214460.P12143463097323880176

`A126760(A161130(n)+A161126(n+1))`
-/

namespace A214460.P12143463097323880176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A161130 n + A161126 (n + 1)).toNat

end

end A214460.P12143463097323880176

/-! ## A214460.P3466073717356496978

`A023022(A319612(n)+A304491(n+1))`
-/

namespace A214460.P3466073717356496978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A319612 n + A304491 (n + 1)).toNat

end

end A214460.P3466073717356496978

/-!
# A214461: Number of 5 X n nonconsecutive chess tableaux.

The programs for A214461, there is no canonical definition to state claims against.
-/

/-! ## A214461.P7476839259885403057

`A214088(A167499(n+4))`
-/

namespace A214461.P7476839259885403057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214088 (A167499 (n + 4)).toNat

end

end A214461.P7476839259885403057

/-! ## A214461.P14215873122231526412

`A214088(eq[5, A002262(n)])`
-/

namespace A214461.P14215873122231526412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214461.P14215873122231526412

/-! ## A214461.P6748710970958324647

`A214088(eq[6, A193738(n)])`
-/

namespace A214461.P6748710970958324647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214461.P6748710970958324647

/-! ## A214461.P5101640171369042043

`A214088(eq[5, A144328(n+1)])`
-/

namespace A214461.P5101640171369042043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214461.P5101640171369042043

/-! ## A214461.P5265511686151147191

`A214088(eq[6, A002260(n+1)])`
-/

namespace A214461.P5265511686151147191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214461.P5265511686151147191

/-!
# A214462: Degrees of irreducible representations of orthogonal group O7(3).

The programs for A214462, there is no canonical definition to state claims against.
-/

/-! ## A214462.P3383403586763944194

`A214468(A050086(n+1)^A260757(n))`
-/

namespace A214462.P3383403586763944194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214468 (SequenceMachineLib.roundAway ((A050086 (n + 1) : ℚ) ^ (A260757 n : ℤ))).toNat

end

end A214462.P3383403586763944194

/-!
# A214464: Degrees of irreducible representations of Suzuki group Sz(32).

The programs for A214464, there is no canonical definition to state claims against.
-/

/-! ## A214464.P5616522029611263998

`A138694((A131666(n+1)+A000005(n+1))^3)`
-/

namespace A214464.P5616522029611263998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138694 ((A131666 (n + 1) + A000005 (n + 1)) ^ 3).toNat

end

end A214464.P5616522029611263998

/-!
# A214469: Degrees of irreducible representations of symplectic group S8(2).

The programs for A214469, there is no canonical definition to state claims against.
-/

/-! ## A214469.P10443948654986468714

`∑[A040304(A083412(n)!)]`
-/

namespace A214469.P10443948654986468714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040304 (Nat.factorial (A083412 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214469.P10443948654986468714

/-! ## A214469.P11121191327952615367

`∑[A040304(A027262(n+1))]`
-/

namespace A214469.P11121191327952615367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040304 (A027262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214469.P11121191327952615367

/-!
# A214485: Degrees of irreducible representations of simple Chevalley group G2(5).

The programs for A214485, there is no canonical definition to state claims against.
-/

/-! ## A214485.P13606555725062265721

`A003901(lcm(n!, A008486(n)))`
-/

namespace A214485.P13606555725062265721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003901 (Int.lcm (Nat.factorial n : ℤ) (A008486 n))

end

end A214485.P13606555725062265721

/-!
# A214488: List of words over {1,3} with equal numbers of 1's and 3's.

The programs for A214488, there is no canonical definition to state claims against.
-/

/-! ## A214488.P9444538019333566807

`A368804(n+1)+A214218(n+1)`
-/

namespace A214488.P9444538019333566807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214218 (n + 1)

end

end A214488.P9444538019333566807

/-! ## A214488.P1597522764653804566

`A214521(n+1)-A368804(n+1)`
-/

namespace A214488.P1597522764653804566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) - A368804 (n + 1)

end

end A214488.P1597522764653804566

/-! ## A214488.P1915428122733154208

`A214218(n+1)+A214522(n+1)-A214521(n+1)`
-/

namespace A214488.P1915428122733154208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214522 (n + 1) - A214521 (n + 1))

end

end A214488.P1915428122733154208

/-! ## A214488.P10421484863889770063

`A214218(n+1)+A214524(n+1)-A214522(n+1)`
-/

namespace A214488.P10421484863889770063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214524 (n + 1) - A214522 (n + 1))

end

end A214488.P10421484863889770063

/-! ## A214488.P869175812704102186

`A214218(n+1)+A214530(n+1)-A214524(n+1)`
-/

namespace A214488.P869175812704102186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214530 (n + 1) - A214524 (n + 1))

end

end A214488.P869175812704102186

/-! ## A214488.P2131498081386331033

`A214218(n+1)+A214531(n+1)-A214530(n+1)`
-/

namespace A214488.P2131498081386331033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214531 (n + 1) - A214530 (n + 1))

end

end A214488.P2131498081386331033

/-! ## A214488.P183865548829483501

`A214218(n+1)+A214532(n+1)-A214531(n+1)`
-/

namespace A214488.P183865548829483501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214532 (n + 1) - A214531 (n + 1))

end

end A214488.P183865548829483501

/-! ## A214488.P18364399295759166150

`A214521(n+1)+A214524(n+1)-A214530(n+1)`
-/

namespace A214488.P18364399295759166150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214524 (n + 1) - A214530 (n + 1))

end

end A214488.P18364399295759166150

/-! ## A214488.P8507383845837014959

`A214521(n+1)+A214530(n+1)-A214531(n+1)`
-/

namespace A214488.P8507383845837014959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214530 (n + 1) - A214531 (n + 1))

end

end A214488.P8507383845837014959

/-! ## A214488.P6319002792526043245

`A214522(n+1)+A214522(n+1)-A214530(n+1)`
-/

namespace A214488.P6319002792526043245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214522 (n + 1) - A214530 (n + 1))

end

end A214488.P6319002792526043245

/-! ## A214488.P13027319167652091768

`A214521(n+1)+A214531(n+1)-A214532(n+1)`
-/

namespace A214488.P13027319167652091768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214531 (n + 1) - A214532 (n + 1))

end

end A214488.P13027319167652091768

/-! ## A214488.P1664025521963627483

`A214524(n+1)+A214524(n+1)-A214532(n+1)`
-/

namespace A214488.P1664025521963627483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214524 (n + 1) - A214532 (n + 1))

end

end A214488.P1664025521963627483

/-! ## A214488.P1909884312975625105

`A032917(A258410(n+1))`
-/

namespace A214488.P1909884312975625105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A258410 (n + 1)).toNat

end

end A214488.P1909884312975625105

/-! ## A214488.P18188293870716769982

`A032917(A031448(n+2)-1)`
-/

namespace A214488.P18188293870716769982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A031448 (n + 2) - 1).toNat

end

end A214488.P18188293870716769982

/-! ## A214488.P15575230960250534986

`A072961(A258410(n+1))-A214218(n+1)`
-/

namespace A214488.P15575230960250534986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (A258410 (n + 1)).toNat - A214218 (n + 1)

end

end A214488.P15575230960250534986

/-! ## A214488.P17719138046348025327

`A072961(A258410(n+1))-A007931(A031448(n+2)-1)`
-/

namespace A214488.P17719138046348025327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (A258410 (n + 1)).toNat - A007931 (A031448 (n + 2) - 1).toNat

end

end A214488.P17719138046348025327

/-! ## A214488.P14044399881424833330

`A072961(A258410(n+1))-(3*A214524(n+1))%A214531(n+1)`
-/

namespace A214488.P14044399881424833330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (A258410 (n + 1)).toNat - Int.tmod (3 * A214524 (n + 1)) (A214531 (n + 1))

end

end A214488.P14044399881424833330

/-!
# A214489: Numbers m such that A070939(m) = A070939(m + A070939(m)), A070939 = length of binary representation.

The programs for A214489, the canonical program `A214489.P13760201785312530605` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214489 has offset 1).

The definition of A214489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214489.P13347940654671428471

`lt[log2(n+1), (a(n-1)-1+n)%n]` with `a(0)=1`
-/

namespace A214489.P13347940654671428471
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (f2 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A214489.P13347940654671428471

namespace A214489

/-- `lt[log2(n+1), (a(n-1)-1+n)%n]` -/
def P13347940654671428471.Spec : Prop :=
  ∀ n, (P13347940654671428471.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P4128688431533034931

`comp[A005187(n)+1-A006257(n)]`
-/

namespace A214489.P4128688431533034931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (1 - A006257 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214489.P4128688431533034931

namespace A214489

/-- `comp[A005187(n)+1-A006257(n)]` -/
def P4128688431533034931.Spec : Prop :=
  ∀ n, (P4128688431533034931.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P13760201785312530605

`lt[A006257(n), A006257(2*A046699(n+1))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A214489

/-- `lt[A006257(n), A006257(2*A046699(n+1))]` -/
def P13760201785312530605.Spec : Prop :=
  ∀ n, (P13760201785312530605.a n : ℤ) = A214489 (n + 1)

theorem P13760201785312530605.correct : P13760201785312530605.Spec := by
  intro n
  simp only [A214489, Nat.add_sub_cancel]

end A214489

/-! ## A214489.P2949280093730986290

`lt[log2(n+1), A035327(n)]`
-/

namespace A214489.P2949280093730986290
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A214489.P2949280093730986290

namespace A214489

/-- `lt[log2(n+1), A035327(n)]` -/
def P2949280093730986290.Spec : Prop :=
  ∀ n, (P2949280093730986290.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P16440279173437244803

`eq[A105025(n), A105029(n)]`
-/

namespace A214489.P16440279173437244803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214489.P16440279173437244803

namespace A214489

/-- `eq[A105025(n), A105029(n)]` -/
def P16440279173437244803.Spec : Prop :=
  ∀ n, (P16440279173437244803.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P520673793590907063

`lt[A102370(n), A003817(n)+1]`
-/

namespace A214489.P520673793590907063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214489.P520673793590907063

namespace A214489

/-- `lt[A102370(n), A003817(n)+1]` -/
def P520673793590907063.Spec : Prop :=
  ∀ n, (P520673793590907063.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P3307079974544959634

`lt[A005811(n), A006257(A046699(n+1))]`
-/

namespace A214489.P3307079974544959634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A046699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214489.P3307079974544959634

namespace A214489

/-- `lt[A005811(n), A006257(A046699(n+1))]` -/
def P3307079974544959634.Spec : Prop :=
  ∀ n, (P3307079974544959634.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P3035518504527694266

`lt[A160385(n), A006257(A046699(n+1))]`
-/

namespace A214489.P3035518504527694266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A046699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214489.P3035518504527694266

namespace A214489

/-- `lt[A160385(n), A006257(A046699(n+1))]` -/
def P3035518504527694266.Spec : Prop :=
  ∀ n, (P3035518504527694266.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P11606551427711319370

`lt[xor(n, comp[2^n]), n+1]`
-/

namespace A214489.P11606551427711319370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A214489.P11606551427711319370

namespace A214489

/-- `lt[xor(n, comp[2^n]), n+1]` -/
def P11606551427711319370.Spec : Prop :=
  ∀ n, (P11606551427711319370.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P1251678053999865843

`lt[A006257(n), A006257(A007843(n))]`
-/

namespace A214489.P1251678053999865843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A007843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214489.P1251678053999865843

namespace A214489

/-- `lt[A006257(n), A006257(A007843(n))]` -/
def P1251678053999865843.Spec : Prop :=
  ∀ n, (P1251678053999865843.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P793196120251082759

`lt[2, A071044(A007843(n))]`
-/

namespace A214489.P793196120251082759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A007843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214489.P793196120251082759

namespace A214489

/-- `lt[2, A071044(A007843(n))]` -/
def P793196120251082759.Spec : Prop :=
  ∀ n, (P793196120251082759.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P9168881397606313711

`comp[A003817(n)-A023416(n)]`
-/

namespace A214489.P9168881397606313711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A023416 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214489.P9168881397606313711

namespace A214489

/-- `comp[A003817(n)-A023416(n)]` -/
def P9168881397606313711.Spec : Prop :=
  ∀ n, (P9168881397606313711.a n : ℤ) = A214489 (n + 1)

end A214489

/-! ## A214489.P11059956291543657557

`comp[A004755(n+1)-(A001511(n+1)+n+1)]`
-/

namespace A214489.P11059956291543657557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1) - (A001511 (n + 1) + (n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214489.P11059956291543657557

namespace A214489

/-- `comp[A004755(n+1)-(A001511(n+1)+n+1)]` -/
def P11059956291543657557.Spec : Prop :=
  ∀ n, (P11059956291543657557.a n : ℤ) = A214489 (n + 1)

end A214489

/-!
# A214493: Numbers of the form ((6k+5)^2+9)/2 or 2(3k+4)^2-9.

The programs for A214493, the canonical program `A214493.P10662032263876536613` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214493 has offset 0).

The definition of A214493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214493.P12610433203669660132

`(6*n*(3*n+10)+27*(-1)^n+41)/4`
-/

namespace A214493.P12610433203669660132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n * (3 * n + 10) : ℤ) + 27 * (-1) ^ n + 41 : ℚ) / 4

end

end A214493.P12610433203669660132

namespace A214493

/-- `(6*n*(3*n+10)+27*(-1)^n+41)/4` -/
def P12610433203669660132.Spec : Prop :=
  ∀ n, P12610433203669660132.a n = (A214493 n : ℚ)

theorem P12610433203669660132.correct : P12610433203669660132.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A214493, Nat.add_sub_cancel, A214493.P12610433203669660132.a, A214493.P10662032263876536613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A214493, Nat.add_sub_cancel, A214493.P12610433203669660132.a, A214493.P10662032263876536613.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A214493

/-! ## A214493.P10662032263876536613

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=17, a(1)=23, a(2)=65, a(3)=89`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214493

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10662032263876536613.Spec : Prop :=
  ∀ n, P10662032263876536613.a n = A214493 n

theorem P10662032263876536613.correct : P10662032263876536613.Spec := by
  intro n
  simp only [A214493]

end A214493

/-! ## A214493.P12060140212777486932

`A178977(n)+A017197(A028242(n))`
-/

namespace A214493.P12060140212777486932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n + A017197 (A028242 n).toNat

end

end A214493.P12060140212777486932

namespace A214493

/-- `A178977(n)+A017197(A028242(n))` -/
def P12060140212777486932.Spec : Prop :=
  ∀ n, P12060140212777486932.a n = A214493 n

end A214493

/-! ## A214493.P17289529254799011011

`A017185(A028242(n))+∑[A017233(n)]`
-/

namespace A214493.P17289529254799011011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A028242 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214493.P17289529254799011011

namespace A214493

/-- `A017185(A028242(n))+∑[A017233(n)]` -/
def P17289529254799011011.Spec : Prop :=
  ∀ n, P17289529254799011011.a n = A214493 n

end A214493

/-! ## A214493.P2480262290105399359

`A267984(n+1)+A195158(n)-A032528(n)`
-/

namespace A214493.P2480262290105399359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) + (A195158 n - A032528 n)

end

end A214493.P2480262290105399359

namespace A214493

/-- `A267984(n+1)+A195158(n)-A032528(n)` -/
def P2480262290105399359.Spec : Prop :=
  ∀ n, P2480262290105399359.a n = A214493 n

end A214493

/-! ## A214493.P1952155988222295892

`A016969(A166517(n)+A001859(n))`
-/

namespace A214493.P1952155988222295892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A166517 n + A001859 n).toNat

end

end A214493.P1952155988222295892

namespace A214493

/-- `A016969(A166517(n)+A001859(n))` -/
def P1952155988222295892.Spec : Prop :=
  ∀ n, P1952155988222295892.a n = A214493 n

end A214493

/-! ## A214493.P8772974513399541712

`A016969(A166517(n)+∑[A007494(n)])`
-/

namespace A214493.P8772974513399541712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A166517 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214493.P8772974513399541712

namespace A214493

/-- `A016969(A166517(n)+∑[A007494(n)])` -/
def P8772974513399541712.Spec : Prop :=
  ∀ n, P8772974513399541712.a n = A214493 n

end A214493

/-! ## A214493.P1790225497735712965

`A016969(A004442(n)+∑[A001651(n+1)])`
-/

namespace A214493.P1790225497735712965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A004442 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214493.P1790225497735712965

namespace A214493

/-- `A016969(A004442(n)+∑[A001651(n+1)])` -/
def P1790225497735712965.Spec : Prop :=
  ∀ n, P1790225497735712965.a n = A214493 n

end A214493

/-! ## A214493.P1278880123331129969

`A016969(A004442(n)+∑[A008619(3*n)])`
-/

namespace A214493.P1278880123331129969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A004442 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214493.P1278880123331129969

namespace A214493

/-- `A016969(A004442(n)+∑[A008619(3*n)])` -/
def P1278880123331129969.Spec : Prop :=
  ∀ n, P1278880123331129969.a n = A214493 n

end A214493

/-! ## A214493.P2047681184730340034

`A016789(A168418(n+1)+A005449(n))`
-/

namespace A214493.P2047681184730340034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A168418 (n + 1) + A005449 n).toNat

end

end A214493.P2047681184730340034

namespace A214493

/-- `A016789(A168418(n+1)+A005449(n))` -/
def P2047681184730340034.Spec : Prop :=
  ∀ n, P2047681184730340034.a n = A214493 n

end A214493

/-!
# A214494: Triangle read by rows ; T(n,k) = C(n,k) - 2*C(n,k-1) where C(n,k) is a binomial coefficient .

The programs for A214494, there is no canonical definition to state claims against.
-/

/-! ## A214494.P11103643522466011970

`A047060(lt[A126736(n), A094440(n+1)])`
-/

namespace A214494.P11103643522466011970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214494.P11103643522466011970

/-! ## A214494.P5566066945088306668

`A339443(A019565(floor((n/4)²)))`
-/

namespace A214494.P5566066945088306668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A019565 ⌊((n : ℚ) / 4) ^ 2⌋.toNat).toNat

end

end A214494.P5566066945088306668

/-! ## A214494.P8958757546428332035

`A167969(A341145(n)+A341131(n))`
-/

namespace A214494.P8958757546428332035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A341145 (n + 39) + A341131 (n + 10)).toNat

end

end A214494.P8958757546428332035

/-!
# A214496: Smallest k>0 such that (3^n+k)*3^n-1 and (3^n+k)*3^n+1 are a twin prime pair.

The programs for A214496, there is no canonical definition to state claims against.
-/

/-! ## A214496.P18227556160286884478

`A234300(∑[∏[A091599(n+1)]])`
-/

namespace A214496.P18227556160286884478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214496.P18227556160286884478

/-! ## A214496.P8284375095126853792

`A324294(A312068(n)+A000311(n))`
-/

namespace A214496.P8284375095126853792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324294 (A312068 n + A000311 n).toNat

end

end A214496.P8284375095126853792

/-! ## A214496.P15864046900241660192

`A324699(A001285(n)*A370640(n))`
-/

namespace A214496.P15864046900241660192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (A001285 n * A370640 n).toNat

end

end A214496.P15864046900241660192

