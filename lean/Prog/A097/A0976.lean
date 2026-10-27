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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A097600: A Binet like formula using the Akiyama-Thurston tile roots for a Minimal Pisot theta0 sequence.

The programs for A097600, there is no canonical definition to state claims against.
-/

/-! ## A097600.P2280976189864663409

`A000196(Δ[Δ[A003520(2*n+3)]])`
-/

namespace A097600.P2280976189864663409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A097600.P2280976189864663409

/-! ## A097600.P14865385177840758418

`A000196(xor(∑{e}[n+1, #], A003520(2*n+1)))`
-/

namespace A097600.P14865385177840758418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A003520 (2 * n + 1))).toNat

end

end A097600.P14865385177840758418

/-! ## A097600.P10378549195697759433

`A000196(A003520(2*n+1)+∏{e}[n+1, floor(log(atan(#)))])`
-/

namespace A097600.P10378549195697759433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003520 (2 * n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋).toNat

end

end A097600.P10378549195697759433

/-! ## A097600.P15821988517144971165

`A000196(A008612(n)+Δ[A049854(n)])`
-/

namespace A097600.P15821988517144971165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008612 n + (f1 (n + 1) - f1 n)).toNat

end

end A097600.P15821988517144971165

/-! ## A097600.P4789591095235002056

`A000196(xor(A000035(n), A003520(2*n+1)))`
-/

namespace A097600.P4789591095235002056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A000035 n) (A003520 (2 * n + 1))).toNat

end

end A097600.P4789591095235002056

/-!
# A097601: Differences between A045918 and A047842.

The programs for A097601, there is no canonical definition to state claims against.
-/

/-! ## A097601.P5265617044220823565

`A045918(n)-A047842(n)`
-/

namespace A097601.P5265617044220823565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n - A047842 n

end

end A097601.P5265617044220823565

/-! ## A097601.P18228935046945493750

`A045918(n)+A008683(A046133(n+1))*A047842(n)`
-/

namespace A097601.P18228935046945493750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n + A008683 (A046133 (n + 1)).toNat * A047842 n

end

end A097601.P18228935046945493750

/-! ## A097601.P13086193247664498727

`A045918(n)+A001478(A047842(n)+1)+1`
-/

namespace A097601.P13086193247664498727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n + (A001478 (A047842 n + 1).toNat + 1)

end

end A097601.P13086193247664498727

/-! ## A097601.P4451551469116910856

`A244112(n)-A108782(A087019(n))-A047842(n)`
-/

namespace A097601.P4451551469116910856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A108782 (A087019 n).toNat - A047842 n

end

end A097601.P4451551469116910856

/-! ## A097601.P9434781874602604542

`A193581(A056143(n))`
-/

namespace A097601.P9434781874602604542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A056143 n).toNat

end

end A097601.P9434781874602604542

/-! ## A097601.P3135895339251905628

`A193581(A181352(n))`
-/

namespace A097601.P3135895339251905628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A181352 n).toNat

end

end A097601.P3135895339251905628

/-! ## A097601.P15946491711149601077

`A193581(A321536(n))/11`
-/

namespace A097601.P15946491711149601077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193581 (A321536 n).toNat : ℚ) / 11

end

end A097601.P15946491711149601077

/-! ## A097601.P9943204196987132612

`A193581(A338754(n))/11`
-/

namespace A097601.P9943204196987132612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193581 (A338754 n).toNat : ℚ) / 11

end

end A097601.P9943204196987132612

/-! ## A097601.P8321317305118929243

`A168095(n²)*A193581(n)`
-/

namespace A097601.P8321317305118929243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 (n ^ 2) * A193581 n

end

end A097601.P8321317305118929243

/-! ## A097601.P15773244524933332363

`A193581(A087019(n+1)-1)`
-/

namespace A097601.P15773244524933332363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A087019 (n + 1) - 1).toNat

end

end A097601.P15773244524933332363

/-! ## A097601.P10548828882924300745

`11*A193581(n)%A052015(n+1)`
-/

namespace A097601.P10548828882924300745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * Int.tmod (A193581 n) (A052015 (n + 1))

end

end A097601.P10548828882924300745

/-! ## A097601.P9259296456572508332

`(11*A193581(n))%∑[A038500((n+1)²)]`
-/

namespace A097601.P9259296456572508332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * A193581 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097601.P9259296456572508332

/-! ## A097601.P6876561328782754176

`A064429(A139337(n)*A193581(n))`
-/

namespace A097601.P6876561328782754176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A139337 n * A193581 n).toNat

end

end A097601.P6876561328782754176

/-! ## A097601.P17890828437182875862

`A193581(n)*A213217(A213217(n)+1)`
-/

namespace A097601.P17890828437182875862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n * A213217 (A213217 n + 1).toNat

end

end A097601.P17890828437182875862

/-!
# A097602: a(n+1) = a(n) + number of squares so far; a(1) = 1.

The programs for A097602, the canonical program `A097602.P609783979289905020` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097602 has offset 1).

The definition of A097602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097602.P3637523987834170646

`∑[∑[char[(3*n+1)^((n+1)²%3)]]]+1`
-/

namespace A097602.P3637523987834170646
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ ((n + 1) ^ 2 % 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097602.P3637523987834170646

namespace A097602

/-- `∑[∑[char[(3*n+1)^((n+1)²%3)]]]+1` -/
def P3637523987834170646.Spec : Prop :=
  ∀ n, (P3637523987834170646.a n : ℤ) = A097602 (n + 1)

end A097602

/-! ## A097602.P15187780074919399271

`∑[∑[char[A180964(n)]]]+1`
-/

namespace A097602.P15187780074919399271
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097602.P15187780074919399271

namespace A097602

/-- `∑[∑[char[A180964(n)]]]+1` -/
def P15187780074919399271.Spec : Prop :=
  ∀ n, (P15187780074919399271.a n : ℤ) = A097602 (n + 1)

end A097602

/-! ## A097602.P7775044883382353556

`∑[∑[char[A047356(n+1)+n]]]+1`
-/

namespace A097602.P7775044883382353556
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097602.P7775044883382353556

namespace A097602

/-- `∑[∑[char[A047356(n+1)+n]]]+1` -/
def P7775044883382353556.Spec : Prop :=
  ∀ n, (P7775044883382353556.a n : ℤ) = A097602 (n + 1)

end A097602

/-! ## A097602.P2302802218256275770

`∑[∑[A073644(a(n-1)+dr(n+1)+1)]]` with `a(0)=1`
-/

namespace A097602.P2302802218256275770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A073644 (f2 (n - 1) + (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097602.P2302802218256275770

namespace A097602

/-- `∑[∑[A073644(a(n-1)+dr(n+1)+1)]]` -/
def P2302802218256275770.Spec : Prop :=
  ∀ n, P2302802218256275770.a n = A097602 (n + 1)

end A097602

/-! ## A097602.P609783979289905020

`∑[A004396(n%A004396(n+1))+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097602

/-- `∑[A004396(n%A004396(n+1))+1]` -/
def P609783979289905020.Spec : Prop :=
  ∀ n, P609783979289905020.a n = A097602 (n + 1)

theorem P609783979289905020.correct : P609783979289905020.Spec := by
  intro n
  simp only [A097602, Nat.add_sub_cancel]

end A097602

/-! ## A097602.P18158476703054400599

`A004523(1-A004523(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A097602.P18158476703054400599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004523 (1 - A004523 n + (n : ℤ)).toNat + a (n - 1)

end

end A097602.P18158476703054400599

namespace A097602

/-- `A004523(1-A004523(n)+n)+a(n-1)` -/
def P18158476703054400599.Spec : Prop :=
  ∀ n, P18158476703054400599.a n = A097602 (n + 1)

end A097602

/-! ## A097602.P6878267478036499705

`∑[A004523(A008620(n+2))]+1`
-/

namespace A097602.P6878267478036499705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008620 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097602.P6878267478036499705

namespace A097602

/-- `∑[A004523(A008620(n+2))]+1` -/
def P6878267478036499705.Spec : Prop :=
  ∀ n, P6878267478036499705.a n = A097602 (n + 1)

end A097602

/-! ## A097602.P10621556867511796011

`∑[A004523(A002264(n+5))]+1`
-/

namespace A097602.P10621556867511796011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A002264 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097602.P10621556867511796011

namespace A097602

/-- `∑[A004523(A002264(n+5))]+1` -/
def P10621556867511796011.Spec : Prop :=
  ∀ n, P10621556867511796011.a n = A097602 (n + 1)

end A097602

/-! ## A097602.P3758050386538588570

`∑[A123919(A123919(2*(n+1)))]+1`
-/

namespace A097602.P3758050386538588570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A123919 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097602.P3758050386538588570

namespace A097602

/-- `∑[A123919(A123919(2*(n+1)))]+1` -/
def P3758050386538588570.Spec : Prop :=
  ∀ n, P3758050386538588570.a n = A097602 (n + 1)

end A097602

/-! ## A097602.P3130223704304283231

`A008619(∑[A285872(A008611(2*n+1))])`
-/

namespace A097602.P3130223704304283231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (A008611 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097602.P3130223704304283231

namespace A097602

/-- `A008619(∑[A285872(A008611(2*n+1))])` -/
def P3130223704304283231.Spec : Prop :=
  ∀ n, P3130223704304283231.a n = A097602 (n + 1)

end A097602

/-!
# A097603: Multiples of perfect numbers.

The programs for A097603, there is no canonical definition to state claims against.
-/

/-! ## A097603.P9756118830302177333

`∪[6*(n+1), 28*(n+1)]`
-/

namespace A097603.P9756118830302177333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A097603.P9756118830302177333

/-! ## A097603.P2833686805127905322

`A374198(n+2)`
-/

namespace A097603.P2833686805127905322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 2)

end

end A097603.P2833686805127905322

/-! ## A097603.P14798050712353418080

`lt[1, A325470(n+1)]+1`
-/

namespace A097603.P14798050712353418080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097603.P14798050712353418080

/-! ## A097603.P7258860909585438302

`lt[1, A325471(n+1)]+1`
-/

namespace A097603.P7258860909585438302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097603.P7258860909585438302

/-! ## A097603.P17658978581965558874

`comp[n-A325469(n+1)]+2`
-/

namespace A097603.P17658978581965558874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A325469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A097603.P17658978581965558874

/-! ## A097603.P13915476981981471346

`record[lcm(n+6, A080225(n+6))]`
-/

namespace A097603.P13915476981981471346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 6 : ℤ) (A080225 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097603.P13915476981981471346

/-! ## A097603.P2256609503169890399

`comp[n*(A080225(n+1)+1)]+1`
-/

namespace A097603.P2256609503169890399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A080225 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A097603.P2256609503169890399

/-! ## A097603.P15466911541169764743

`eq[0, A293438(A008706(n))]`
-/

namespace A097603.P15466911541169764743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293438 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097603.P15466911541169764743

/-! ## A097603.P6317969119125252452

`lt[0, A080225(A028310(n))]`
-/

namespace A097603.P6317969119125252452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097603.P6317969119125252452

/-!
# A097604: a(n) = floor( phi(n)*sqrt(2*n) ) - n.

The programs for A097604, the canonical program `A097604.P5712816953416192181` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097604 has offset 1).

The definition of A097604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000010(n+1)*sqrt(2*(n+1)))-(n+1)` (program `A097604.P12856192427490033839`, by `A097604.P12856192427490033839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097604.P5712816953416192181

`floor(sqrt(2*(n+1))*A000010(n+1))-(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097604

/-- `floor(sqrt(2*(n+1))*A000010(n+1))-(n+1)` -/
def P5712816953416192181.Spec : Prop :=
  ∀ n, P5712816953416192181.a n = A097604 (n + 1)

theorem P5712816953416192181.correct : P5712816953416192181.Spec := by
  intro n
  simp only [A097604, Nat.add_sub_cancel]

end A097604

/-! ## A097604.P12856192427490033839

`floor(A000010(n+1)*sqrt(2*(n+1)))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097604.P12856192427490033839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℝ) * Real.sqrt (2 * (n + 1) : ℝ)⌋ - (n + 1 : ℤ)

end

end A097604.P12856192427490033839

namespace A097604

/-- `floor(A000010(n+1)*sqrt(2*(n+1)))-(n+1)` -/
def P12856192427490033839.Spec : Prop :=
  ∀ n, P12856192427490033839.a n = A097604 (n + 1)

theorem P12856192427490033839.correct : P12856192427490033839.Spec := by
  intro n
  simp only [A097604, Nat.add_sub_cancel, A097604.P12856192427490033839.a, A097604.P5712816953416192181.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097604

/-! ## A097604.P12427423549477788589

`A172471((n+1)*A000010(n+1)²)-(n+1)`
-/

namespace A097604.P12427423549477788589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((n + 1 : ℤ) * A000010 (n + 1) ^ 2).toNat - (n + 1 : ℤ)

end

end A097604.P12427423549477788589

namespace A097604

/-- `A172471((n+1)*A000010(n+1)²)-(n+1)` -/
def P12427423549477788589.Spec : Prop :=
  ∀ n, P12427423549477788589.a n = A097604 (n + 1)

end A097604

/-!
# A097605: Numbers n such that phi(n) divides n^2 - 1, where phi(n) (A000010) is number of positive integers <= n and coprime to n.

The programs for A097605, the canonical program `A097605.P4373069648380416805` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097605 has offset 1).

The definition of A097605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097605.P2877707390796427223

`A097884(n)+a(n-1)` with `a(0)=1`
-/

namespace A097605.P2877707390796427223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097884 n + a (n - 1)

end

end A097605.P2877707390796427223

namespace A097605

/-- `A097884(n)+a(n-1)` -/
def P2877707390796427223.Spec : Prop :=
  ∀ n, P2877707390796427223.a n = A097605 (n + 1)

end A097605

/-! ## A097605.P9713043997954304384

`∪[A000040(n+1), A098271(n+1)]`
-/

namespace A097605.P9713043997954304384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097605.P9713043997954304384

namespace A097605

/-- `∪[A000040(n+1), A098271(n+1)]` -/
def P9713043997954304384.Spec : Prop :=
  ∀ n, (P9713043997954304384.a n : ℤ) = A097605 (n + 1)

end A097605

/-! ## A097605.P491895556834822448

`∪[A008578(n+1), A098271(n+1)]`
-/

namespace A097605.P491895556834822448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097605.P491895556834822448

namespace A097605

/-- `∪[A008578(n+1), A098271(n+1)]` -/
def P491895556834822448.Spec : Prop :=
  ∀ n, (P491895556834822448.a n : ℤ) = A097605 (n + 1)

end A097605

/-! ## A097605.P7775535610049619704

`∑[A097884(n+1)]+1-A097884(n+1)`
-/

namespace A097605.P7775535610049619704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A097884 (n + 1))

end

end A097605.P7775535610049619704

namespace A097605

/-- `∑[A097884(n+1)]+1-A097884(n+1)` -/
def P7775535610049619704.Spec : Prop :=
  ∀ n, P7775535610049619704.a n = A097605 (n + 1)

end A097605

/-! ## A097605.P4804584889215461165

`∑[A097884(A065033(n)+A004526(n))]`
-/

namespace A097605.P4804584889215461165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097884 (A065033 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097605.P4804584889215461165

namespace A097605

/-- `∑[A097884(A065033(n)+A004526(n))]` -/
def P4804584889215461165.Spec : Prop :=
  ∀ n, P4804584889215461165.a n = A097605 (n + 1)

end A097605

/-! ## A097605.P4373069648380416805

`lt[(n*(n+2))%A000010(n+1)+1, 2]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097605

/-- `lt[(n*(n+2))%A000010(n+1)+1, 2]+1` -/
def P4373069648380416805.Spec : Prop :=
  ∀ n, (P4373069648380416805.a n : ℤ) = A097605 (n + 1)

theorem P4373069648380416805.correct : P4373069648380416805.Spec := by
  intro n
  simp only [A097605, Nat.add_sub_cancel]

end A097605

/-! ## A097605.P6587786301718040570

`∑[A097884(A065033(2*n))]`
-/

namespace A097605.P6587786301718040570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097884 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097605.P6587786301718040570

namespace A097605

/-- `∑[A097884(A065033(2*n))]` -/
def P6587786301718040570.Spec : Prop :=
  ∀ n, P6587786301718040570.a n = A097605 (n + 1)

end A097605

/-! ## A097605.P15890967536790927681

`∑[A097884(A123108(2*n))]`
-/

namespace A097605.P15890967536790927681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097884 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097605.P15890967536790927681

namespace A097605

/-- `∑[A097884(A123108(2*n))]` -/
def P15890967536790927681.Spec : Prop :=
  ∀ n, P15890967536790927681.a n = A097605 (n + 1)

end A097605

/-! ## A097605.P6726074224549579107

`∪[A098271(n+1), A240960(n+1)]`
-/

namespace A097605.P6726074224549579107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097605.P6726074224549579107

namespace A097605

/-- `∪[A098271(n+1), A240960(n+1)]` -/
def P6726074224549579107.Spec : Prop :=
  ∀ n, (P6726074224549579107.a n : ℤ) = A097605 (n + 1)

end A097605

/-!
# A097607: Triangle read by rows: T(n,k) is number of Dyck paths of semilength n and having leftmost valley at altitude k (if path has no valleys, then this altitude is considered to be 0).

The programs for A097607, there is no canonical definition to state claims against.
-/

/-! ## A097607.P648837399082514556

`2*A114489(n)-A085516(A114489(n))`
-/

namespace A097607.P648837399082514556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114489 n - A085516 (A114489 n).toNat

end

end A097607.P648837399082514556

/-!
# A097608: Triangle read by rows: number of Dyck paths of semilength n and having abscissa of the leftmost valley equal to k (if no valley, then it is taken to be 2n; 2<=k<=2n).

The programs for A097608, there is no canonical definition to state claims against.
-/

/-! ## A097608.P676253507276582954

`A137752(A313988(n))%6`
-/

namespace A097608.P676253507276582954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137752 (A313988 n).toNat) 6

end

end A097608.P676253507276582954

/-! ## A097608.P4325836334526776431

`A351837(A206417(n+4)-1+n)%A143976(n+3)`
-/

namespace A097608.P4325836334526776431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351837 (A206417 (n + 4) - 1 + (n : ℤ)).toNat) (A143976 (n + 3))

end

end A097608.P4325836334526776431

/-!
# A097609: Triangle read by rows: T(n,k) is number of Motzkin paths of length n having k horizontal steps at level 0.

The programs for A097609, there is no canonical definition to state claims against.
-/

/-! ## A097609.P13254127200499683491

`round(sqrt(A186761(n)%A126895(2*n+1)))`
-/

namespace A097609.P13254127200499683491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A186761 n) (A126895 (2 * n + 1)) : ℝ))

end

end A097609.P13254127200499683491

/-! ## A097609.P7183796005640128509

`A000194(A186761(n)^A254730(n))`
-/

namespace A097609.P7183796005640128509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A186761 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A097609.P7183796005640128509

/-! ## A097609.P5137044127117156917

`A000194(C(A186761(n), A254730(n)))`
-/

namespace A097609.P5137044127117156917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.choose (A186761 n).toNat (A254730 n).toNat)

end

end A097609.P5137044127117156917

/-! ## A097609.P2146564656742189082

`A000194(A254730(n)²²*A186761(n))`
-/

namespace A097609.P2146564656742189082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A254730 n ^ 2) ^ 2 * A186761 n).toNat

end

end A097609.P2146564656742189082

/-! ## A097609.P12626588478716074722

`A000194(A186761(n^A344180(A237120(n))))`
-/

namespace A097609.P12626588478716074722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A186761 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A344180 (A237120 n).toNat : ℤ))).toNat).toNat

end

end A097609.P12626588478716074722

/-!
# A097610: Triangle read by rows: T(n,k) is number of Motzkin paths of length n and having k horizontal steps.

The programs for A097610, the canonical program `A097610.P1461864535676650287` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097610 has offset 0).

The definition of A097610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097610.P12214868802688199717

`A359364(A061579(n))`
-/

namespace A097610.P12214868802688199717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359364 (A061579 n).toNat

end

end A097610.P12214868802688199717

namespace A097610

/-- `A359364(A061579(n))` -/
def P12214868802688199717.Spec : Prop :=
  ∀ n, P12214868802688199717.a n = A097610 n

end A097610

/-! ## A097610.P14110095592259138252

`A359364(A038722(n+2))`
-/

namespace A097610.P14110095592259138252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359364 (A038722 (n + 2)).toNat

end

end A097610.P14110095592259138252

namespace A097610

/-- `A359364(A038722(n+2))` -/
def P14110095592259138252.Spec : Prop :=
  ∀ n, P14110095592259138252.a n = A097610 n

end A097610

/-! ## A097610.P15953117971653337952

`A121448(n)/A059268(n)`
-/

namespace A097610.P15953117971653337952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121448 n : ℚ) / (A059268 n : ℚ)

end

end A097610.P15953117971653337952

namespace A097610

/-- `A121448(n)/A059268(n)` -/
def P15953117971653337952.Spec : Prop :=
  ∀ n, P15953117971653337952.a n = (A097610 n : ℚ)

end A097610

/-! ## A097610.P10096069757004052086

`A109187(n)/A115514(n+1)`
-/

namespace A097610.P10096069757004052086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A115514 (n + 1) : ℚ)

end

end A097610.P10096069757004052086

namespace A097610

/-- `A109187(n)/A115514(n+1)` -/
def P10096069757004052086.Spec : Prop :=
  ∀ n, P10096069757004052086.a n = (A097610 n : ℚ)

end A097610

/-! ## A097610.P1461864535676650287

`A007318(n)*A126120(A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097610

/-- `A007318(n)*A126120(A025581(n))` -/
def P1461864535676650287.Spec : Prop :=
  ∀ n, P1461864535676650287.a n = A097610 n

theorem P1461864535676650287.correct : P1461864535676650287.Spec := by
  intro n
  simp only [A097610]

end A097610

/-! ## A097610.P7736172873775181172

`A126120(A025581(n))*A130595(n)`
-/

namespace A097610.P7736172873775181172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A025581 n).toNat * A130595 n

end

end A097610.P7736172873775181172

namespace A097610

/-- `A126120(A025581(n))*A130595(n)` -/
def P7736172873775181172.Spec : Prop :=
  ∀ n, P7736172873775181172.a n = A097610 n

end A097610

/-! ## A097610.P6596792684007879389

`A109187(n)/A008619(A025581(n))`
-/

namespace A097610.P6596792684007879389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A008619 (A025581 n).toNat : ℚ)

end

end A097610.P6596792684007879389

namespace A097610

/-- `A109187(n)/A008619(A025581(n))` -/
def P6596792684007879389.Spec : Prop :=
  ∀ n, P6596792684007879389.a n = (A097610 n : ℚ)

end A097610

/-! ## A097610.P8346808094460605388

`A007318(n)*A097331(A004736(n+1))`
-/

namespace A097610.P8346808094460605388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097331 (A004736 (n + 1)).toNat

end

end A097610.P8346808094460605388

namespace A097610

/-- `A007318(n)*A097331(A004736(n+1))` -/
def P8346808094460605388.Spec : Prop :=
  ∀ n, P8346808094460605388.a n = A097610 n

end A097610

/-! ## A097610.P10111453919324824061

`A007318(n)*A097331(A025581(n)+1)`
-/

namespace A097610.P10111453919324824061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097331 (A025581 n + 1).toNat

end

end A097610.P10111453919324824061

namespace A097610

/-- `A007318(n)*A097331(A025581(n)+1)` -/
def P10111453919324824061.Spec : Prop :=
  ∀ n, P10111453919324824061.a n = A097610 n

end A097610

/-! ## A097610.P7544924907861456575

`A109187(n)/A209278(n+1)`
-/

namespace A097610.P7544924907861456575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A209278 (n + 1) : ℚ)

end

end A097610.P7544924907861456575

namespace A097610

/-- `A109187(n)/A209278(n+1)` -/
def P7544924907861456575.Spec : Prop :=
  ∀ n, P7544924907861456575.a n = (A097610 n : ℚ)

end A097610

/-! ## A097610.P10308807751151501121

`A109187(n)/A135840(n+1)`
-/

namespace A097610.P10308807751151501121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A135840 (n + 1) : ℚ)

end

end A097610.P10308807751151501121

namespace A097610

/-- `A109187(n)/A135840(n+1)` -/
def P10308807751151501121.Spec : Prop :=
  ∀ n, P10308807751151501121.a n = (A097610 n : ℚ)

end A097610

/-!
# A097612: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n having k returns (i.e., down steps hitting the x-axis).

The programs for A097612, there is no canonical definition to state claims against.
-/

/-! ## A097612.P14882771182932470597

`A109193(n)/A000079(A055087(n))`
-/

namespace A097612.P14882771182932470597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109193 n : ℚ) / (A000079 (A055087 n).toNat : ℚ)

end

end A097612.P14882771182932470597

/-! ## A097612.P15466424357915224353

`A109193(n)/A059268(A091018(n))`
-/

namespace A097612.P15466424357915224353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109193 n : ℚ) / (A059268 (A091018 n).toNat : ℚ)

end

end A097612.P15466424357915224353

/-! ## A097612.P16159925236335179530

`A185284(A079262(n))+A097862(n)`
-/

namespace A097612.P16159925236335179530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A079262 n).toNat + A097862 n

end

end A097612.P16159925236335179530

/-! ## A097612.P9214212572338335285

`A212619(A052284(n))+A097862(n)`
-/

namespace A097612.P9214212572338335285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A052284 n).toNat + A097862 n

end

end A097612.P9214212572338335285

/-!
# A097613: a(n) = binomial(2n-3,n-1) + binomial(2n-2,n-2).

The programs for A097613, the canonical program `A097613.P17801274350353294577` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097613 has offset 1).

The definition of A097613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097613.P17801274350353294577

`ceil(A051924(n+1)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097613

/-- `ceil(A051924(n+1)/2)` -/
def P17801274350353294577.Spec : Prop :=
  ∀ n, P17801274350353294577.a n = A097613 (n + 1)

theorem P17801274350353294577.correct : P17801274350353294577.Spec := by
  intro n
  simp only [A097613, Nat.add_sub_cancel]

end A097613

/-! ## A097613.P6124598303305234266

`(6*(n+1)-4)*(2*(n+1)-3)*a(n-1)/((n+1)*(3*(n+1)-5))` with `a(0)=1, a(1)=2`
-/

namespace A097613.P6124598303305234266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (((6 * (n + 1) : ℤ) - 4) * ((2 * (n + 1) : ℤ) - 3) : ℚ) * a (n - 1) / ((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 5) : ℚ)

end

end A097613.P6124598303305234266

namespace A097613

/-- `(6*(n+1)-4)*(2*(n+1)-3)*a(n-1)/((n+1)*(3*(n+1)-5))` -/
def P6124598303305234266.Spec : Prop :=
  ∀ n, P6124598303305234266.a n = (A097613 (n + 1) : ℚ)

end A097613

/-! ## A097613.P17453459620872648034

`∑[A225015(n+1)]`
-/

namespace A097613.P17453459620872648034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097613.P17453459620872648034

namespace A097613

/-- `∑[A225015(n+1)]` -/
def P17453459620872648034.Spec : Prop :=
  ∀ n, P17453459620872648034.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P2310690018508763488

`A026010(comp[2*(n+1)])`
-/

namespace A097613.P2310690018508763488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A097613.P2310690018508763488

namespace A097613

/-- `A026010(comp[2*(n+1)])` -/
def P2310690018508763488.Spec : Prop :=
  ∀ n, P2310690018508763488.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P685336634752569954

`record[A026010(n*n%2)]`
-/

namespace A097613.P685336634752569954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097613.P685336634752569954

namespace A097613

/-- `record[A026010(n*n%2)]` -/
def P685336634752569954.Spec : Prop :=
  ∀ n, P685336634752569954.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P16553471980249776911

`record[A026010(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A097613.P16553471980249776911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026010 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097613.P16553471980249776911

namespace A097613

/-- `record[A026010(C(n, a(n-1)))]` -/
def P16553471980249776911.Spec : Prop :=
  ∀ n, P16553471980249776911.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P969551412360664771

`(floor(3/acot(n))+1)/2*A000108(n)`
-/

namespace A097613.P969551412360664771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + 1 : ℚ) / 2 * (A000108 n : ℚ)

end

end A097613.P969551412360664771

namespace A097613

/-- `(floor(3/acot(n))+1)/2*A000108(n)` -/
def P969551412360664771.Spec : Prop :=
  ∀ n, P969551412360664771.a n = (A097613 (n + 1) : ℚ)

end A097613

/-! ## A097613.P17323614260147204195

`A088218(n)+A001791(n)`
-/

namespace A097613.P17323614260147204195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A001791 n

end

end A097613.P17323614260147204195

namespace A097613

/-- `A088218(n)+A001791(n)` -/
def P17323614260147204195.Spec : Prop :=
  ∀ n, P17323614260147204195.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P651005678972381284

`A088218(n)+A323229(n)-1`
-/

namespace A097613.P651005678972381284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + (A323229 n - 1)

end

end A097613.P651005678972381284

namespace A097613

/-- `A088218(n)+A323229(n)-1` -/
def P651005678972381284.Spec : Prop :=
  ∀ n, P651005678972381284.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P2939849427882231141

`A260878(n)+A323229(n)-2`
-/

namespace A097613.P2939849427882231141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n + (A323229 n - 2)

end

end A097613.P2939849427882231141

namespace A097613

/-- `A260878(n)+A323229(n)-2` -/
def P2939849427882231141.Spec : Prop :=
  ∀ n, P2939849427882231141.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P3622740798382141331

`A088218(n)+A037952(2*n)`
-/

namespace A097613.P3622740798382141331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A037952 (2 * n)

end

end A097613.P3622740798382141331

namespace A097613

/-- `A088218(n)+A037952(2*n)` -/
def P3622740798382141331.Spec : Prop :=
  ∀ n, P3622740798382141331.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P3256832460839054052

`A210736(2*n)+A001791(n)`
-/

namespace A097613.P3256832460839054052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A001791 n

end

end A097613.P3256832460839054052

namespace A097613

/-- `A210736(2*n)+A001791(n)` -/
def P3256832460839054052.Spec : Prop :=
  ∀ n, P3256832460839054052.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P11200520856154398068

`A088218(n)+n*A000108(n)`
-/

namespace A097613.P11200520856154398068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + (n : ℤ) * A000108 n

end

end A097613.P11200520856154398068

namespace A097613

/-- `A088218(n)+n*A000108(n)` -/
def P11200520856154398068.Spec : Prop :=
  ∀ n, P11200520856154398068.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P3377393699759107420

`A191529(2*n+1)+A000984(n)`
-/

namespace A097613.P3377393699759107420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * n + 1) + A000984 n

end

end A097613.P3377393699759107420

namespace A097613

/-- `A191529(2*n+1)+A000984(n)` -/
def P3377393699759107420.Spec : Prop :=
  ∀ n, P3377393699759107420.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P14265627090619224056

`A210736(2*n)+A037952(2*n)`
-/

namespace A097613.P14265627090619224056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A037952 (2 * n)

end

end A097613.P14265627090619224056

namespace A097613

/-- `A210736(2*n)+A037952(2*n)` -/
def P14265627090619224056.Spec : Prop :=
  ∀ n, P14265627090619224056.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P16737323009841106381

`A210736(2*n)+A037955(2*n)`
-/

namespace A097613.P16737323009841106381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A037955 (2 * n)

end

end A097613.P16737323009841106381

namespace A097613

/-- `A210736(2*n)+A037955(2*n)` -/
def P16737323009841106381.Spec : Prop :=
  ∀ n, P16737323009841106381.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P12348880683574928264

`A191529(2*n+1)+A001405(2*n)`
-/

namespace A097613.P12348880683574928264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * n + 1) + A001405 (2 * n)

end

end A097613.P12348880683574928264

namespace A097613

/-- `A191529(2*n+1)+A001405(2*n)` -/
def P12348880683574928264.Spec : Prop :=
  ∀ n, P12348880683574928264.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P14762769229418714445

`A191529(2*n+1)+A129383(2*n)`
-/

namespace A097613.P14762769229418714445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * n + 1) + A129383 (2 * n)

end

end A097613.P14762769229418714445

namespace A097613

/-- `A191529(2*n+1)+A129383(2*n)` -/
def P14762769229418714445.Spec : Prop :=
  ∀ n, P14762769229418714445.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P571715559486086336

`A210736(2*n+1)+A191529(2*n+1)`
-/

namespace A097613.P571715559486086336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) + A191529 (2 * n + 1)

end

end A097613.P571715559486086336

namespace A097613

/-- `A210736(2*n+1)+A191529(2*n+1)` -/
def P571715559486086336.Spec : Prop :=
  ∀ n, P571715559486086336.a n = A097613 (n + 1)

end A097613

/-! ## A097613.P1901423631627375270

`A000984(n)+A088218(n)-A000108(n)`
-/

namespace A097613.P1901423631627375270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A088218 n - A000108 n)

end

end A097613.P1901423631627375270

namespace A097613

/-- `A000984(n)+A088218(n)-A000108(n)` -/
def P1901423631627375270.Spec : Prop :=
  ∀ n, P1901423631627375270.a n = A097613 (n + 1)

end A097613

/-!
# A097614: In the decimal expansion of Pi, the string "0" is found at position 32 counting from the first digit after the decimal point. The string "32" is found at position 15, the string "15" at position 3, the string "3" at position 9, etc.

The programs for A097614, there is no canonical definition to state claims against.
-/

/-! ## A097614.P1440352974035524219

`A014777(a(n-1))` with `a(0)=0, a(1)=32`
-/

namespace A097614.P1440352974035524219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 32] fun n a =>
  A014777 (a (n - 1)).toNat

end

end A097614.P1440352974035524219

/-! ## A097614.P13598437345149513790

`A014777(floor(a(A023443(n))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A097614.P13598437345149513790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014777 (a (A023443 n).toNat).toNat

end

end A097614.P13598437345149513790

/-! ## A097614.P2412749744353017122

`A256521(A000096(a(n-1)))` with `a(0)=0`
-/

namespace A097614.P2412749744353017122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256521 (A000096 (a (n - 1)).toNat).toNat

end

end A097614.P2412749744353017122

/-!
# A097615: Array (read by antidiagonals) where T(0,j) = 1, T(i,0) = 1, otherwise T(i,j) = floor[(1/Phi)*T(i,j-1) + (1+Phi)*T(i-1,j) - (1/Phi)*T(i-1,j-1)] where Phi = (sqrt(5)+1)/2.

The programs for A097615, there is no canonical definition to state claims against.
-/

/-! ## A097615.P1290825399729476787

`A163563(A113711(n))`
-/

namespace A097615.P1290825399729476787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A113711 n).toNat

end

end A097615.P1290825399729476787

/-! ## A097615.P12507901925135384377

`A347293(A125800(n))`
-/

namespace A097615.P12507901925135384377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347293 (A125800 n).toNat

end

end A097615.P12507901925135384377

/-! ## A097615.P4808705273416453368

`A347293(A142589(n))`
-/

namespace A097615.P4808705273416453368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347293 (A142589 n).toNat

end

end A097615.P4808705273416453368

/-! ## A097615.P16010267890669994306

`A255239(A357585(n))`
-/

namespace A097615.P16010267890669994306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255239 (A357585 n).toNat

end

end A097615.P16010267890669994306

/-! ## A097615.P1666061551650565931

`A308686(A322790(n))`
-/

namespace A097615.P1666061551650565931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308686 (A322790 n).toNat

end

end A097615.P1666061551650565931

/-!
# A097618: Successive basic U.S. postal rates since "uniform" rates (based on weight, not distance) were adopted in 1863.

The programs for A097618, there is no canonical definition to state claims against.
-/

/-! ## A097618.P12348507217331863623

`A114062(abs(1-n)+3)`
-/

namespace A097618.P12348507217331863623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114062 (|1 - (n : ℤ)| + 3).toNat

end

end A097618.P12348507217331863623

/-! ## A097618.P10685182931954790960

`A114062(n+2)-char[53*n]`
-/

namespace A097618.P10685182931954790960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114062 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097618.P10685182931954790960

/-! ## A097618.P561094876026118569

`A114139(n+1)+a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A097618.P561094876026118569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A114139 (n + 1) + a (n - 1)

end

end A097618.P561094876026118569

/-! ## A097618.P796380916282629022

`round(A114062(n+2)-1/A017402(n))`
-/

namespace A097618.P796380916282629022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114062 (n + 2) : ℚ) - 1 / (A017402 n : ℚ))

end

end A097618.P796380916282629022

/-!
# A097619: Numbers having more prime factors than each of their neighbors.

The programs for A097619, there is no canonical definition to state claims against.
-/

/-! ## A097619.P13192975110075854530

`∩[A322839(n+1), A322840(n+1)+1]`
-/

namespace A097619.P13192975110075854530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097619.P13192975110075854530

/-! ## A097619.P15297120272158567661

`∩[A100390(n+1), A101616(n)]`
-/

namespace A097619.P15297120272158567661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097619.P15297120272158567661

/-! ## A097619.P4096203258085642914

`∩[A100390(n+1), A114036(n+3)]`
-/

namespace A097619.P4096203258085642914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114036 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097619.P4096203258085642914

/-! ## A097619.P4557519392388678762

`∩[A101085(2*n+3), A100390(n+1)]`
-/

namespace A097619.P4557519392388678762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101085 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097619.P4557519392388678762

/-! ## A097619.P11246819319100435748

`record[A176296(abs(3-n)+1)]`
-/

namespace A097619.P11246819319100435748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176296 (|3 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097619.P11246819319100435748

/-!
# A097620: Numbers having more prime factors than their neighbors together.

The programs for A097620, there is no canonical definition to state claims against.
-/

/-! ## A097620.P14984883146656922250

`lt[A111660(n), A047967(A077462(n))]`
-/

namespace A097620.P14984883146656922250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097620.P14984883146656922250

/-! ## A097620.P965689511152240988

`lt[A336898(n), A000005(A144261(n+1))]`
-/

namespace A097620.P965689511152240988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A144261 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097620.P965689511152240988

/-! ## A097620.P11147542735590871258

`lt[A225901(A336898(n)), A059451(n+1)]`
-/

namespace A097620.P11147542735590871258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A336898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097620.P11147542735590871258

/-! ## A097620.P88791140932246990

`lt[A008683(A093659(7*n)), A325794(n+1)]+1`
-/

namespace A097620.P88791140932246990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A093659 (7 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A097620.P88791140932246990

/-! ## A097620.P1841988517651429845

`filter[A043544(n+1), A242718(#)]`
-/

namespace A097620.P1841988517651429845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A097620.P1841988517651429845

/-!
# A097621: In canonical prime factorization of n replace p^e with its index in A000961.

The programs for A097621, there is no canonical definition to state claims against.
-/

/-! ## A097621.P14940887317252581162

`∏{p}[A338224(n+1), A000720(#)+1]`
-/

namespace A097621.P14940887317252581162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000720 p + 1)

end

end A097621.P14940887317252581162

/-! ## A097621.P10489948123933908800

`∏{p}[A338224(n+1), A058933(#)+1]`
-/

namespace A097621.P10489948123933908800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A058933 p + 1)

end

end A097621.P10489948123933908800

/-! ## A097621.P4186809676251406520

`∏{p}[A338224(n+1), A065770(#)+1]`
-/

namespace A097621.P4186809676251406520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A065770 p + 1)

end

end A097621.P4186809676251406520

/-! ## A097621.P11822437075088937513

`∏{p}[A338224(n+1), A036234(#)]`
-/

namespace A097621.P11822437075088937513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036234 p

end

end A097621.P11822437075088937513

/-! ## A097621.P17054361186171929579

`∏{p}[A338224(n+1), A318994(#)]`
-/

namespace A097621.P17054361186171929579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A318994 p

end

end A097621.P17054361186171929579

/-! ## A097621.P642769071366446310

`∏{p}[A338224(n+1), A003963(#)+1]`
-/

namespace A097621.P642769071366446310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A003963 p + 1)

end

end A097621.P642769071366446310

/-! ## A097621.P11646502585191880550

`∏{p}[A338224(n+1), A055396(#)+1]`
-/

namespace A097621.P11646502585191880550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A055396 p + 1)

end

end A097621.P11646502585191880550

/-! ## A097621.P14995191450931010401

`∏{p}[A338224(n+1), A056239(#)+1]`
-/

namespace A097621.P14995191450931010401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A056239 p + 1)

end

end A097621.P14995191450931010401

/-! ## A097621.P1743148663634783832

`A003977(A338224(n+1))`
-/

namespace A097621.P1743148663634783832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A338224 (n + 1)).toNat

end

end A097621.P1743148663634783832

/-! ## A097621.P2715131576756011170

`∑{d}[A338224(n+1), A003963(#)]`
-/

namespace A097621.P2715131576756011170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d

end

end A097621.P2715131576756011170

/-! ## A097621.P5477992514076404202

`∑{d}[A338224(n+1), A156061(#)]`
-/

namespace A097621.P5477992514076404202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156061 d

end

end A097621.P5477992514076404202

/-!
# A097622: A097621(A097621(n)).

The programs for A097622, there is no canonical definition to state claims against.
-/

/-! ## A097622.P7240160059828344586

`A097621(A097621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097622.P7240160059828344586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (A097621 (n + 1)).toNat

end

end A097622.P7240160059828344586

/-! ## A097622.P14060889616851713625

`A097623(A097624(n+1))`
-/

namespace A097622.P14060889616851713625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (A097624 (n + 1)).toNat

end

end A097622.P14060889616851713625

/-! ## A097622.P11402375773521939030

`A097623(A000961(n+1))`
-/

namespace A097622.P11402375773521939030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (A000961 (n + 1)).toNat

end

end A097622.P11402375773521939030

/-! ## A097622.P1848349478165556545

`A097623(A036116(n+1))`
-/

namespace A097622.P1848349478165556545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (A036116 (n + 1)).toNat

end

end A097622.P1848349478165556545

/-! ## A097622.P9754195639059694465

`A097623(A195943(n+1))`
-/

namespace A097622.P9754195639059694465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (A195943 (n + 1)).toNat

end

end A097622.P9754195639059694465

/-!
# A097623: a(n) = A097621(A097621(A097621(n))).

The programs for A097623, there is no canonical definition to state claims against.
-/

/-! ## A097623.P9129819431639168356

`A097621(A097621(A097621(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097623.P9129819431639168356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (A097621 (A097621 (n + 1)).toNat).toNat

end

end A097623.P9129819431639168356

/-! ## A097623.P1833063121253288920

`A097622(A097621(n+1))`
-/

namespace A097623.P1833063121253288920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (A097621 (n + 1)).toNat

end

end A097623.P1833063121253288920

/-! ## A097623.P3703909595397697902

`A097622(∑{d}[A338224(n+1), A003963(#)])`
-/

namespace A097623.P3703909595397697902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d).toNat

end

end A097623.P3703909595397697902

/-! ## A097623.P12461601447682133342

`A097622(∑{d}[A338224(n+1), A156061(#)])`
-/

namespace A097623.P12461601447682133342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (∑ d ∈ Nat.divisors (f1 n).natAbs, A156061 d).toNat

end

end A097623.P12461601447682133342

/-! ## A097623.P3421919830597161948

`A097622(∏{p}[A338224(n+1), A003977(#)])`
-/

namespace A097623.P3421919830597161948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003977 p).toNat

end

end A097623.P3421919830597161948

/-! ## A097623.P6926402198692817574

`A097622(∏{p}[A338224(n+1), A036234(#)])`
-/

namespace A097623.P6926402198692817574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036234 p).toNat

end

end A097623.P6926402198692817574

/-! ## A097623.P11873117322252195779

`A097622(∏{p}[A338224(n+1), A064553(#)])`
-/

namespace A097623.P11873117322252195779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A064553 p).toNat

end

end A097623.P11873117322252195779

/-! ## A097623.P1008106905346350973

`A097622(A097624(A097622(n+1)))`
-/

namespace A097623.P1008106905346350973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (A097624 (A097622 (n + 1)).toNat).toNat

end

end A097623.P1008106905346350973

/-!
# A097626: Numbers k that are the hypotenuse of exactly 67 distinct integer-sided right triangles, i.e., k^2 can be written as a sum of two squares in 67 ways.

The programs for A097626, there is no canonical definition to state claims against.
-/

/-! ## A097626.P11892241600237065817

`A057679(A111696(n))*A097282(n+1)`
-/

namespace A097626.P11892241600237065817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057679 (A111696 n).toNat * A097282 (n + 1)

end

end A097626.P11892241600237065817

/-! ## A097626.P3580760868395556012

`A097282(n+1)*A265790(A251079(n))`
-/

namespace A097626.P3580760868395556012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097282 (n + 1) * A265790 (A251079 n).toNat

end

end A097626.P3580760868395556012

/-! ## A097626.P9736881854771342863

`A097280(A056467(n+1))*A097282(n+1)`
-/

namespace A097626.P9736881854771342863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 (A056467 (n + 1)).toNat * A097282 (n + 1)

end

end A097626.P9736881854771342863

/-! ## A097626.P10084048791607300655

`A010676(A299770(n+1))*A097282(n+1)`
-/

namespace A097626.P10084048791607300655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 (A299770 (n + 1)).toNat * A097282 (n + 1)

end

end A097626.P10084048791607300655

/-! ## A097626.P15742903736716043773

`A097282(n+1)*A229895(A121037(n+3))`
-/

namespace A097626.P15742903736716043773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097282 (n + 1) * A229895 (A121037 (n + 3)).toNat

end

end A097626.P15742903736716043773

/-!
# A097627: Number of rooted directed trees on n nodes with a red root.

The programs for A097627, there is no canonical definition to state claims against.
-/

/-! ## A097627.P5636718479239124286

`A052746(n+1)-A097628(n+1)`
-/

namespace A097627.P5636718479239124286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052746 (n + 1) - A097628 (n + 1)

end

end A097627.P5636718479239124286

/-! ## A097627.P10592240865515551850

`(n+1)*A097630(n+1)`
-/

namespace A097627.P10592240865515551850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097630 (n + 1)

end

end A097627.P10592240865515551850

/-! ## A097627.P20355284837917928

`A052746(n+1)-(n+1)*A097631(n+1)`
-/

namespace A097627.P20355284837917928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052746 (n + 1) - (n + 1 : ℤ) * A097631 (n + 1)

end

end A097627.P20355284837917928

/-! ## A097627.P10964235339756348081

`(n+1)*(A097629(n+1)-A097631(n+1))`
-/

namespace A097627.P10964235339756348081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A097629 (n + 1) - A097631 (n + 1))

end

end A097627.P10964235339756348081

/-! ## A097627.P896885212428010360

`(n+1)*(A038058(n+1)/2-A097631(n+1))`
-/

namespace A097627.P896885212428010360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A038058 (n + 1) : ℚ) / 2 - (A097631 (n + 1) : ℚ))

end

end A097627.P896885212428010360

/-!
# A097628: Number of rooted directed trees on n nodes with a green root.

The programs for A097628, there is no canonical definition to state claims against.
-/

/-! ## A097628.P15234862426139706026

`(n+1)*(2*(2*(n+1))^(n-1)-A097627(n+1)/(n+1))`
-/

namespace A097628.P15234862426139706026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A097627 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A097628.P15234862426139706026

/-! ## A097628.P16017476036792290639

`A052746(n+1)-A097627(n+1)`
-/

namespace A097628.P16017476036792290639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052746 (n + 1) - A097627 (n + 1)

end

end A097628.P16017476036792290639

/-! ## A097628.P8463186834998844797

`A103517(n)^n-A097627(n+1)`
-/

namespace A097628.P8463186834998844797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n ^ n - A097627 (n + 1)

end

end A097628.P8463186834998844797

/-! ## A097628.P3967852375422511248

`A038057(n+1)/2-A097627(n+1)`
-/

namespace A097628.P3967852375422511248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038057 (n + 1) : ℚ) / 2 - (A097627 (n + 1) : ℚ)

end

end A097628.P3967852375422511248

/-! ## A097628.P10027334500074518914

`(n+1)*A097631(n+1)`
-/

namespace A097628.P10027334500074518914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097631 (n + 1)

end

end A097628.P10027334500074518914

/-!
# A097629: a(n) = 2*(2*n)^(n-2).

The programs for A097629, the canonical program `A097629.P14300978744868495827` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097629 has offset 1).

The definition of A097629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097629.P14300978744868495827

`2*(2*(n+1))^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097629

/-- `2*(2*(n+1))^(n-1)` -/
def P14300978744868495827.Spec : Prop :=
  ∀ n, P14300978744868495827.a n = (A097629 (n + 1) : ℚ)

end A097629

/-! ## A097629.P9114404354098475159

`A052746(n+1)/(n+1)`
-/

namespace A097629.P9114404354098475159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052746 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097629.P9114404354098475159

namespace A097629

/-- `A052746(n+1)/(n+1)` -/
def P9114404354098475159.Spec : Prop :=
  ∀ n, P9114404354098475159.a n = (A097629 (n + 1) : ℚ)

end A097629

/-! ## A097629.P5769490937590207893

`A384718(∑[n+3])`
-/

namespace A097629.P5769490937590207893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097629.P5769490937590207893

namespace A097629

/-- `A384718(∑[n+3])` -/
def P5769490937590207893.Spec : Prop :=
  ∀ n, P5769490937590207893.a n = A097629 (n + 1)

end A097629

/-! ## A097629.P6147591588202003874

`A038058(n+1)/2`
-/

namespace A097629.P6147591588202003874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038058 (n + 1) : ℚ) / 2

end

end A097629.P6147591588202003874

namespace A097629

/-- `A038058(n+1)/2` -/
def P6147591588202003874.Spec : Prop :=
  ∀ n, P6147591588202003874.a n = (A097629 (n + 1) : ℚ)

end A097629

/-! ## A097629.P5685699664382299362

`abs(A000272(n+1)*A122803(n))`
-/

namespace A097629.P5685699664382299362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000272 (n + 1) * A122803 n|

end

end A097629.P5685699664382299362

namespace A097629

/-- `abs(A000272(n+1)*A122803(n))` -/
def P5685699664382299362.Spec : Prop :=
  ∀ n, P5685699664382299362.a n = A097629 (n + 1)

end A097629

/-! ## A097629.P8441671764958549644

`A000272(n+1)+A000225(n)*A000272(n+1)`
-/

namespace A097629.P8441671764958549644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) + A000225 n * A000272 (n + 1)

end

end A097629.P8441671764958549644

namespace A097629

/-- `A000272(n+1)+A000225(n)*A000272(n+1)` -/
def P8441671764958549644.Spec : Prop :=
  ∀ n, P8441671764958549644.a n = A097629 (n + 1)

end A097629

/-! ## A097629.P5490991306530666474

`record[(-sqrt(n+2))^n]/(n+1)`
-/

namespace A097629.P5490991306530666474
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (n + 2 : ℝ)) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℝ)

end

end A097629.P5490991306530666474

namespace A097629

/-- `record[(-sqrt(n+2))^n]/(n+1)` -/
def P5490991306530666474.Spec : Prop :=
  ∀ n, P5490991306530666474.a n = (A097629 (n + 1) : ℝ)

end A097629

/-! ## A097629.P13074524934128020413

`comp[or(n, ceil(acot(n)))]^n/(n+1)`
-/

namespace A097629.P13074524934128020413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ n : ℚ) / (n + 1 : ℚ)

end

end A097629.P13074524934128020413

namespace A097629

/-- `comp[or(n, ceil(acot(n)))]^n/(n+1)` -/
def P13074524934128020413.Spec : Prop :=
  ∀ n, P13074524934128020413.a n = (A097629 (n + 1) : ℚ)

end A097629

/-! ## A097629.P16506670158172737211

`(or(1, 2*n)+1)^n/(n+1)`
-/

namespace A097629.P16506670158172737211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) + 1) ^ n : ℚ) / (n + 1 : ℚ)

end

end A097629.P16506670158172737211

namespace A097629

/-- `(or(1, 2*n)+1)^n/(n+1)` -/
def P16506670158172737211.Spec : Prop :=
  ∀ n, P16506670158172737211.a n = (A097629 (n + 1) : ℚ)

end A097629

/-!
# A097630: Number of unrooted directed trees on n nodes with a red root.

The programs for A097630, there is no canonical definition to state claims against.
-/

/-! ## A097630.P11370284387374980467

`A097627(n+1)/(n+1)`
-/

namespace A097630.P11370284387374980467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097627 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097630.P11370284387374980467

/-! ## A097630.P12581310314316008728

`2*(2*(n+1))^(n-1)-A097631(n+1)`
-/

namespace A097630.P12581310314316008728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A097631 (n + 1) : ℚ)

end

end A097630.P12581310314316008728

/-! ## A097630.P9076745500358596825

`ceil(A038058(n+1)/2-A097631(n+1))`
-/

namespace A097630.P9076745500358596825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038058 (n + 1) : ℚ) / 2 - (A097631 (n + 1) : ℚ)⌉

end

end A097630.P9076745500358596825

/-! ## A097630.P4014003602915873727

`ceil(A052746(n+1)/(n+1)-A097631(n+1))`
-/

namespace A097630.P4014003602915873727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052746 (n + 1) : ℚ) / (n + 1 : ℚ) - (A097631 (n + 1) : ℚ)⌉

end

end A097630.P4014003602915873727

/-! ## A097630.P3805914630779903497

`ceil(A103517(n)^n/(n+1)-A097631(n+1))`
-/

namespace A097630.P3805914630779903497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103517 n ^ n : ℚ) / (n + 1 : ℚ) - (A097631 (n + 1) : ℚ)⌉

end

end A097630.P3805914630779903497

/-!
# A097631: Number of unrooted directed trees on n nodes with a green root.

The programs for A097631, there is no canonical definition to state claims against.
-/

/-! ## A097631.P8377525759148432875

`A097628(n+1)/(n+1)`
-/

namespace A097631.P8377525759148432875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097628 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097631.P8377525759148432875

/-! ## A097631.P8675874290497968161

`2*(2*(n+1))^(n-1)-A097630(n+1)`
-/

namespace A097631.P8675874290497968161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A097630 (n + 1) : ℚ)

end

end A097631.P8675874290497968161

/-! ## A097631.P7956280123939948523

`2*(2*(n+1))^(n-1)-A097627(n+1)/(n+1)`
-/

namespace A097631.P7956280123939948523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A097627 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097631.P7956280123939948523

/-! ## A097631.P5466178232822674469

`ceil(A038058(n+1)/2-A097630(n+1))`
-/

namespace A097631.P5466178232822674469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038058 (n + 1) : ℚ) / 2 - (A097630 (n + 1) : ℚ)⌉

end

end A097631.P5466178232822674469

/-! ## A097631.P7100576694965072643

`(A052746(n+1)-A097627(n+1))/(n+1)`
-/

namespace A097631.P7100576694965072643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052746 (n + 1) - A097627 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097631.P7100576694965072643

/-!
# A097632: a(n) = 2^n * Lucas(n) * (n-1)!.

The programs for A097632, the canonical program `A097632.P6649956969438189431` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097632 has offset 1).

The definition of A097632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*A000032(n+1)*n!` (program `A097632.P6649956969438189431`, by `A097632.P6649956969438189431.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097632.P6649956969438189431

`2^(n+1)*A000032(n+1)*n!`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097632

/-- `2^(n+1)*A000032(n+1)*n!` -/
def P6649956969438189431.Spec : Prop :=
  ∀ n, P6649956969438189431.a n = A097632 (n + 1)

theorem P6649956969438189431.correct : P6649956969438189431.Spec := by
  intro n
  simp only [A097632, Nat.add_sub_cancel]

end A097632

/-! ## A097632.P14085746065119856610

`A000204(n+1)*A066318(n+1)`
-/

namespace A097632.P14085746065119856610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A066318 (n + 1)

end

end A097632.P14085746065119856610

namespace A097632

/-- `A000204(n+1)*A066318(n+1)` -/
def P14085746065119856610.Spec : Prop :=
  ∀ n, P14085746065119856610.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P13426485069990067092

`2*A084057(n+1)*n!`
-/

namespace A097632.P13426485069990067092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084057 (n + 1) * (Nat.factorial n : ℤ)

end

end A097632.P13426485069990067092

namespace A097632

/-- `2*A084057(n+1)*n!` -/
def P13426485069990067092.Spec : Prop :=
  ∀ n, P13426485069990067092.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P15925837579963797821

`A000165(n)*A022112(n)`
-/

namespace A097632.P15925837579963797821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A022112 n

end

end A097632.P15925837579963797821

namespace A097632

/-- `A000165(n)*A022112(n)` -/
def P15925837579963797821.Spec : Prop :=
  ∀ n, P15925837579963797821.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P17503229878667188350

`∏[A004277(n)]*A022112(n)`
-/

namespace A097632.P17503229878667188350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A022112 n

end

end A097632.P17503229878667188350

namespace A097632

/-- `∏[A004277(n)]*A022112(n)` -/
def P17503229878667188350.Spec : Prop :=
  ∀ n, P17503229878667188350.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P1508722495128464108

`(A168674(n)+2)*A000165(n)`
-/

namespace A097632.P1508722495128464108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168674 n + 2) * A000165 n

end

end A097632.P1508722495128464108

namespace A097632

/-- `(A168674(n)+2)*A000165(n)` -/
def P1508722495128464108.Spec : Prop :=
  ∀ n, P1508722495128464108.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P7734861071357800884

`Δ[A126646(n)]*A039647(n+1)`
-/

namespace A097632.P7734861071357800884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A039647 (n + 1)

end

end A097632.P7734861071357800884

namespace A097632

/-- `Δ[A126646(n)]*A039647(n+1)` -/
def P7734861071357800884.Spec : Prop :=
  ∀ n, P7734861071357800884.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P637097819835604832

`∏[A004275(n+1)]*A022112(n)`
-/

namespace A097632.P637097819835604832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A022112 n

end

end A097632.P637097819835604832

namespace A097632

/-- `∏[A004275(n+1)]*A022112(n)` -/
def P637097819835604832.Spec : Prop :=
  ∀ n, P637097819835604832.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P2407310553685403192

`A000079(n+1)*A039692(A000124(n))`
-/

namespace A097632.P2407310553685403192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A039692 (A000124 n).toNat

end

end A097632.P2407310553685403192

namespace A097632

/-- `A000079(n+1)*A039692(A000124(n))` -/
def P2407310553685403192.Spec : Prop :=
  ∀ n, P2407310553685403192.a n = A097632 (n + 1)

end A097632

/-! ## A097632.P2687580903647800192

`2*A000079(n)*A039692(A000124(n))`
-/

namespace A097632.P2687580903647800192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A039692 (A000124 n).toNat)

end

end A097632.P2687580903647800192

namespace A097632

/-- `2*A000079(n)*A039692(A000124(n))` -/
def P2687580903647800192.Spec : Prop :=
  ∀ n, P2687580903647800192.a n = A097632 (n + 1)

end A097632

/-!
# A097633: Numbers not of form x^2 + y^2 + 7z^2.

The programs for A097633, there is no canonical definition to state claims against.
-/

/-! ## A097633.P12406450825854177572

`∩[2*n, A306718(n+1)]/2`
-/

namespace A097633.P12406450825854177572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306718 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A097633.P12406450825854177572

/-! ## A097633.P9905771442531697586

`comp[A000394(n)]`
-/

namespace A097633.P9905771442531697586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097633.P9905771442531697586

/-! ## A097633.P6545570693537367824

`lt[char[A000394(n)], A057427(n)]`
-/

namespace A097633.P6545570693537367824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A097633.P6545570693537367824

/-! ## A097633.P17428509393711505794

`∩[A306718(n+1), A004275(n)]/2`
-/

namespace A097633.P17428509393711505794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A097633.P17428509393711505794

/-! ## A097633.P9448269969535286208

`record[A025480(A306718(n+2))]`
-/

namespace A097633.P9448269969535286208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A306718 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097633.P9448269969535286208

/-!
# A097634: Numbers not of form x^2 + 2y^2 + 2yz + 4z^2.

The programs for A097634, there is no canonical definition to state claims against.
-/

/-! ## A097634.P9693284059009602742

`comp[A000398(n+1)]`
-/

namespace A097634.P9693284059009602742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097634.P9693284059009602742

/-! ## A097634.P2502050994787716315

`record[A025480(A306989(n+2))]`
-/

namespace A097634.P2502050994787716315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A306989 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097634.P2502050994787716315

/-! ## A097634.P9301618887794492159

`record[A220096(A306989(round(acot(n)+n)))]`
-/

namespace A097634.P9301618887794492159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (A306989 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097634.P9301618887794492159

/-! ## A097634.P10528114823060238871

`record[A220096(A306989(abs(1-n)+1))]`
-/

namespace A097634.P10528114823060238871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (A306989 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097634.P10528114823060238871

/-!
# A097635: Triangle read by rows: T(n,k) = number of unique-valued sequences of length k, n >= 1, 1 <= k <= 2n-3, in the symmetric group S_n.

The programs for A097635, there is no canonical definition to state claims against.
-/

/-! ## A097635.P11902860405682980661

`A122391(n)*A327163(A124949(n))`
-/

namespace A097635.P11902860405682980661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n * A327163 (A124949 n).toNat

end

end A097635.P11902860405682980661

/-!
# A097636: Odd composites of the form A024675(k) or 1+A024675(k), any k.

The programs for A097636, there is no canonical definition to state claims against.
-/

/-! ## A097636.P11758687821763510900

`or(1, A063932(A107987(n+1)))`
-/

namespace A097636.P11758687821763510900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063932 (A107987 (n + 1)).toNat)

end

end A097636.P11758687821763510900

/-! ## A097636.P3426602034818429335

`or(1, A063932(A136798(n+1)))`
-/

namespace A097636.P3426602034818429335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063932 (A136798 (n + 1)).toNat)

end

end A097636.P3426602034818429335

/-! ## A097636.P11284008080682296222

`or(1, A063932(A136799(n+1)))`
-/

namespace A097636.P11284008080682296222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063932 (A136799 (n + 1)).toNat)

end

end A097636.P11284008080682296222

/-! ## A097636.P11984888912693511938

`or(1, A063932(A141515(n+2)+2))`
-/

namespace A097636.P11984888912693511938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063932 (A141515 (n + 2) + 2).toNat)

end

end A097636.P11984888912693511938

/-! ## A097636.P5132562381303793417

`or(1, A063932(2*A174047(2*(n+1))))`
-/

namespace A097636.P5132562381303793417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063932 (2 * A174047 (2 * (n + 1))).toNat)

end

end A097636.P5132562381303793417

/-! ## A097636.P8823534455935687990

`or(1, A063932(p?[A018252(n+3)-2]+1))`
-/

namespace A097636.P8823534455935687990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063932 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat)

end

end A097636.P8823534455935687990

/-! ## A097636.P1516266845239141706

`eq[A004524(A166597(n)), A013632(n)]`
-/

namespace A097636.P1516266845239141706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097636.P1516266845239141706

/-! ## A097636.P12219895892710855551

`eq[A064722(n+1), A125748(A166597(n))]`
-/

namespace A097636.P12219895892710855551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125748 (A166597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097636.P12219895892710855551

/-! ## A097636.P9040063634903346984

`A004525(A136799(n+1)+A107987(n+1))`
-/

namespace A097636.P9040063634903346984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A136799 (n + 1) + A107987 (n + 1)).toNat

end

end A097636.P9040063634903346984

/-! ## A097636.P12240627721793241757

`A187180(A136799(n+1)+A136798(n+1))`
-/

namespace A097636.P12240627721793241757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A136799 (n + 1) + A136798 (n + 1)).toNat

end

end A097636.P12240627721793241757

/-!
# A097637: a(n) = Fibonacci(floor(n/16) + BinaryWeight(n mod 16)).

The programs for A097637, there is no canonical definition to state claims against.
-/

/-! ## A097637.P9957713251400779662

`A103609(A106486(comp[or(2, n)-1])+1)`
-/

namespace A097637.P9957713251400779662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A106486 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat

end

end A097637.P9957713251400779662

/-! ## A097637.P6496822840573958170

`A000045(A000120(n)%A112844(n))`
-/

namespace A097637.P6496822840573958170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A000120 n) (A112844 n)).toNat

end

end A097637.P6496822840573958170

/-! ## A097637.P17891506444661198791

`A005169(A000120(n))%A287706(n)`
-/

namespace A097637.P17891506444661198791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005169 (A000120 n).toNat) (A287706 n)

end

end A097637.P17891506444661198791

/-! ## A097637.P11039785350682627166

`A000045(A000120(n))%A036886(n+1)`
-/

namespace A097637.P11039785350682627166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A000120 n).toNat) (A036886 (n + 1))

end

end A097637.P11039785350682627166

/-! ## A097637.P13267518285608164154

`A124429(A000120(n))%A095757(n+1)`
-/

namespace A097637.P13267518285608164154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124429 (A000120 n).toNat) (A095757 (n + 1))

end

end A097637.P13267518285608164154

/-!
# A097638: a(n) is the smallest n-digit number m such that 10*m+1, 10*m+3, 10*m+7 & 10*m+9 are primes.

The programs for A097638, there is no canonical definition to state claims against.
-/

/-! ## A097638.P7860971824837532725

`A097639(n+1)+10^n`
-/

namespace A097638.P7860971824837532725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097639 (n + 1) + (10 ^ n : ℤ)

end

end A097638.P7860971824837532725

/-! ## A097638.P17908097854690252804

`floor(A135563(n+2)/10)`
-/

namespace A097638.P17908097854690252804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135563 (n + 2) : ℚ) / 10⌋

end

end A097638.P17908097854690252804

/-! ## A097638.P3164424474241075132

`ceil(A135563(n+2)/10-A096811(n))`
-/

namespace A097638.P3164424474241075132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135563 (n + 2) : ℚ) / 10 - (A096811 n : ℚ)⌉

end

end A097638.P3164424474241075132

/-! ## A097638.P10344552600776899667

`round((A135563(n+2)/10)^A014963(∑[6*n+2]))`
-/

namespace A097638.P10344552600776899667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A135563 (n + 2) : ℚ) / 10) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A097638.P10344552600776899667

/-!
# A097639: a(n) is the smallest number m such that for the n-digit number s=10^(n-1)+ m, 10*s+1, 10*s+3, 10*s+7 and 10*s+9 are primes.

The programs for A097639, there is no canonical definition to state claims against.
-/

/-! ## A097639.P6579051844654731350

`A097638(n+1)-10^n`
-/

namespace A097639.P6579051844654731350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097638 (n + 1) - (10 ^ n : ℤ)

end

end A097639.P6579051844654731350

/-! ## A097639.P13984927553789857796

`floor(A121066(n+1)/10)`
-/

namespace A097639.P13984927553789857796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121066 (n + 1) : ℚ) / 10⌋

end

end A097639.P13984927553789857796

/-! ## A097639.P13916919195664721229

`A007318(C(2, n))*round(A121066(n+1)/10)`
-/

namespace A097639.P13916919195664721229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A121066 (n + 1) : ℚ) / 10)

end

end A097639.P13916919195664721229

/-! ## A097639.P17273570148722553731

`round(A121066(n+1)/10)/A007318(C(n, n²))`
-/

namespace A097639.P17273570148722553731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A121066 (n + 1) : ℚ) / 10) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A097639.P17273570148722553731

/-! ## A097639.P403707111116248980

`A008683(4*(n+1))+round(A121066(n+1)/10)`
-/

namespace A097639.P403707111116248980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A121066 (n + 1) : ℚ) / 10)

end

end A097639.P403707111116248980

/-!
# A097645: Numbers k such that k = sigma(phi(k) + pi(k)).

The programs for A097645, there is no canonical definition to state claims against.
-/

/-! ## A097645.P4745450454908743907

`∏{e}[A092825(n+1), A167614(#)]`
-/

namespace A097645.P4745450454908743907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A167614 (Nat.factorization (f1 n).natAbs p)

end

end A097645.P4745450454908743907

/-!
# A097650: a(n) is the smallest number m such that phi(10^n + m) = 10^n.

The programs for A097650, there is no canonical definition to state claims against.
-/

/-! ## A097650.P5523308325013697282

`A072075(n)-10^n`
-/

namespace A097650.P5523308325013697282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072075 n - (10 ^ n : ℤ)

end

end A097650.P5523308325013697282

/-! ## A097650.P10498937931924944162

`A072075(n)%Δ[A002275(n)]`
-/

namespace A097650.P10498937931924944162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072075 n) (f1 (n + 1) - f1 n)

end

end A097650.P10498937931924944162

/-! ## A097650.P18264230460644464654

`A072075(A028310(n))%(10^n)`
-/

namespace A097650.P18264230460644464654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072075 (A028310 n).toNat) (10 ^ n : ℤ)

end

end A097650.P18264230460644464654

/-! ## A097650.P5769707951897314555

`A002275(n)+A072075(n)-A000042(n+1)`
-/

namespace A097650.P5769707951897314555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + (A072075 n - A000042 (n + 1))

end

end A097650.P5769707951897314555

/-! ## A097650.P13939662308844033745

`A097639(n+1)+A072075(n)-A097638(n+1)`
-/

namespace A097650.P13939662308844033745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097639 (n + 1) + (A072075 n - A097638 (n + 1))

end

end A097650.P13939662308844033745

/-!
# A097651: a(n) is the earliest number m such that n*pi(m)=phi(m).

The programs for A097651, there is no canonical definition to state claims against.
-/

/-! ## A097651.P5579609589685044175

`A226457(2*A307773(n+1))`
-/

namespace A097651.P5579609589685044175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226457 (2 * A307773 (n + 1)).toNat

end

end A097651.P5579609589685044175

/-!
# A097652: Numbers n such that n=phi(phi(n)+sigma(n)) and n is not of the form 2*p where p is a Sophie Germain odd prime.

The programs for A097652, there is no canonical definition to state claims against.
-/

/-! ## A097652.P4355182535831265377

`filter[A097646(n+1), A354108(#)]`
-/

namespace A097652.P4355182535831265377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A097652.P4355182535831265377

/-! ## A097652.P15923899459108934198

`∩[A097646(n+1), A107750(n)]`
-/

namespace A097652.P15923899459108934198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097652.P15923899459108934198

/-! ## A097652.P10117167349596609861

`∩[A097646(n+1), A336627(n)]`
-/

namespace A097652.P10117167349596609861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097652.P10117167349596609861

/-! ## A097652.P1214215153394439716

`∩[A019442(n+1), A097646(n+1)]`
-/

namespace A097652.P1214215153394439716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097652.P1214215153394439716

/-! ## A097652.P48758124163837767

`∩[A097646(n+1), A004271(A004271(n))]`
-/

namespace A097652.P48758124163837767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A004271 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097652.P48758124163837767

/-!
# A097655: Numbers n such that n = d_1!!*d_2!!*...*d_k!! where d_1 d_2 ... d_k is the decimal expansion of n.

The programs for A097655, there is no canonical definition to state claims against.
-/

/-! ## A097655.P10694512307062138702

`round(3^(n/2))*A295296(n^floor(n-atan(n)))`
-/

namespace A097655.P10694512307062138702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 2 : ℝ)) * A295296 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A097655.P10694512307062138702

/-!
# A097656: Binomial transform of A038507.

The programs for A097656, there is no canonical definition to state claims against.
-/

/-! ## A097656.P4057868369913016697

`2^n+n!*∑[1/n!]`
-/

namespace A097656.P4057868369913016697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097656.P4057868369913016697

/-! ## A097656.P11095191939177230596

`A097967(n)+2`
-/

namespace A097656.P11095191939177230596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097967 n + 2

end

end A097656.P11095191939177230596

/-! ## A097656.P4585498599472905406

`A000522(n)+2^n`
-/

namespace A097656.P4585498599472905406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (2 ^ n : ℤ)

end

end A097656.P4585498599472905406

/-! ## A097656.P16150345468737865994

`A073107(∑[n])+2^n`
-/

namespace A097656.P16150345468737865994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 ^ n : ℤ)

end

end A097656.P16150345468737865994

/-! ## A097656.P17114074656630104770

`A143409(∑[n])+2^n`
-/

namespace A097656.P17114074656630104770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 ^ n : ℤ)

end

end A097656.P17114074656630104770

/-! ## A097656.P11713324803507412324

`Δ[A002104(n)]+2^n`
-/

namespace A097656.P11713324803507412324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ n : ℤ)

end

end A097656.P11713324803507412324

/-! ## A097656.P12723237878477966556

`2^n+A007526(n)+1`
-/

namespace A097656.P12723237878477966556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A007526 n + 1)

end

end A097656.P12723237878477966556

/-! ## A097656.P8369350836656242997

`2^n+A073591(n)-1`
-/

namespace A097656.P8369350836656242997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A073591 n - 1)

end

end A097656.P8369350836656242997

/-! ## A097656.P16513566226148100284

`A007526(n)+A000051(n)`
-/

namespace A097656.P16513566226148100284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n + A000051 n

end

end A097656.P16513566226148100284

/-! ## A097656.P7751303487275577446

`A073591(n)+A000225(n)`
-/

namespace A097656.P7751303487275577446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 n + A000225 n

end

end A097656.P7751303487275577446

/-!
# A097657: Fibonacci sequence with first two terms 11 and 23.

The programs for A097657, the canonical program `A097657.P2126889802834623100` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097657 has offset 0).

The definition of A097657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097657.P2126889802834623100

`a(n-1)+a(n-2)` with `a(0)=11, a(1)=23`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097657

/-- `a(n-1)+a(n-2)` -/
def P2126889802834623100.Spec : Prop :=
  ∀ n, (P2126889802834623100.a n : ℤ) = A097657 n

theorem P2126889802834623100.correct : P2126889802834623100.Spec := by
  intro n
  simp only [A097657]

end A097657

/-! ## A097657.P17210990314644822543

`ogf((11+12x)/(1-x-x^2))`
-/

namespace A097657.P17210990314644822543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 12] [1, -1, -1] n

end

end A097657.P17210990314644822543

namespace A097657

/-- `ogf((11+12x)/(1-x-x^2))` -/
def P17210990314644822543.Spec : Prop :=
  ∀ n, P17210990314644822543.a n = A097657 n

end A097657

/-! ## A097657.P4639582371139247955

`A156279(n)+A022128(n)`
-/

namespace A097657.P4639582371139247955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A022128 n

end

end A097657.P4639582371139247955

namespace A097657

/-- `A156279(n)+A022128(n)` -/
def P4639582371139247955.Spec : Prop :=
  ∀ n, P4639582371139247955.a n = A097657 n

end A097657

/-! ## A097657.P3911772456000873940

`A184959(n)+A022104(n)`
-/

namespace A097657.P3911772456000873940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A022104 n

end

end A097657.P3911772456000873940

namespace A097657

/-- `A184959(n)+A022104(n)` -/
def P3911772456000873940.Spec : Prop :=
  ∀ n, P3911772456000873940.a n = A097657 n

end A097657

/-! ## A097657.P15766722776835294605

`A190996(n)+A022106(n)`
-/

namespace A097657.P15766722776835294605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A022106 n

end

end A097657.P15766722776835294605

namespace A097657

/-- `A190996(n)+A022106(n)` -/
def P15766722776835294605.Spec : Prop :=
  ∀ n, P15766722776835294605.a n = A097657 n

end A097657

/-! ## A097657.P12823961729330493792

`A190995(n)+A022370(n)`
-/

namespace A097657.P12823961729330493792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A022370 n

end

end A097657.P12823961729330493792

namespace A097657

/-- `A190995(n)+A022370(n)` -/
def P12823961729330493792.Spec : Prop :=
  ∀ n, P12823961729330493792.a n = A097657 n

end A097657

/-! ## A097657.P12179472401001279538

`A280154(n)+A022108(n)`
-/

namespace A097657.P12179472401001279538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022108 n

end

end A097657.P12179472401001279538

namespace A097657

/-- `A280154(n)+A022108(n)` -/
def P12179472401001279538.Spec : Prop :=
  ∀ n, P12179472401001279538.a n = A097657 n

end A097657

/-! ## A097657.P12295012779816758771

`A022115(n+1)+A022093(n)`
-/

namespace A097657.P12295012779816758771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 (n + 1) + A022093 n

end

end A097657.P12295012779816758771

namespace A097657

/-- `A022115(n+1)+A022093(n)` -/
def P12295012779816758771.Spec : Prop :=
  ∀ n, P12295012779816758771.a n = A097657 n

end A097657

/-! ## A097657.P12401928184315142077

`A022102(n)+A022100(n+1)`
-/

namespace A097657.P12401928184315142077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022100 (n + 1)

end

end A097657.P12401928184315142077

namespace A097657

/-- `A022102(n)+A022100(n+1)` -/
def P12401928184315142077.Spec : Prop :=
  ∀ n, P12401928184315142077.a n = A097657 n

end A097657

/-! ## A097657.P12102006079318670784

`A022103(n)+A022093(n+1)`
-/

namespace A097657.P12102006079318670784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022093 (n + 1)

end

end A097657.P12102006079318670784

namespace A097657

/-- `A022103(n)+A022093(n+1)` -/
def P12102006079318670784.Spec : Prop :=
  ∀ n, P12102006079318670784.a n = A097657 n

end A097657

/-! ## A097657.P15448659423896129513

`A022123(n+1)+A022092(n)`
-/

namespace A097657.P15448659423896129513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 (n + 1) + A022092 n

end

end A097657.P15448659423896129513

namespace A097657

/-- `A022123(n+1)+A022092(n)` -/
def P15448659423896129513.Spec : Prop :=
  ∀ n, P15448659423896129513.a n = A097657 n

end A097657

/-! ## A097657.P3353715665705939423

`A022122(n+1)+A022100(n)`
-/

namespace A097657.P3353715665705939423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 (n + 1) + A022100 n

end

end A097657.P3353715665705939423

namespace A097657

/-- `A022122(n+1)+A022100(n)` -/
def P3353715665705939423.Spec : Prop :=
  ∀ n, P3353715665705939423.a n = A097657 n

end A097657

/-! ## A097657.P7721070453054368998

`A022131(n+1)+A022091(n)`
-/

namespace A097657.P7721070453054368998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 (n + 1) + A022091 n

end

end A097657.P7721070453054368998

namespace A097657

/-- `A022131(n+1)+A022091(n)` -/
def P7721070453054368998.Spec : Prop :=
  ∀ n, P7721070453054368998.a n = A097657 n

end A097657

/-! ## A097657.P730368048645220834

`A022136(n+1)+A022090(n)`
-/

namespace A097657.P730368048645220834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 (n + 1) + A022090 n

end

end A097657.P730368048645220834

namespace A097657

/-- `A022136(n+1)+A022090(n)` -/
def P730368048645220834.Spec : Prop :=
  ∀ n, P730368048645220834.a n = A097657 n

end A097657

/-! ## A097657.P14094503024827398141

`A022125(n)+A022098(n+1)`
-/

namespace A097657.P14094503024827398141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022098 (n + 1)

end

end A097657.P14094503024827398141

namespace A097657

/-- `A022125(n)+A022098(n+1)` -/
def P14094503024827398141.Spec : Prop :=
  ∀ n, P14094503024827398141.a n = A097657 n

end A097657

/-! ## A097657.P6818291666281321102

`A022345(n)+A022101(n+1)`
-/

namespace A097657.P6818291666281321102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022101 (n + 1)

end

end A097657.P6818291666281321102

namespace A097657

/-- `A022345(n)+A022101(n+1)` -/
def P6818291666281321102.Spec : Prop :=
  ∀ n, P6818291666281321102.a n = A097657 n

end A097657

/-! ## A097657.P553124970277027781

`A022368(n)+A022114(n+1)`
-/

namespace A097657.P553124970277027781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A022114 (n + 1)

end

end A097657.P553124970277027781

namespace A097657

/-- `A022368(n)+A022114(n+1)` -/
def P553124970277027781.Spec : Prop :=
  ∀ n, P553124970277027781.a n = A097657 n

end A097657

/-! ## A097657.P11505139138305107347

`A022383(n)+A022113(n+1)`
-/

namespace A097657.P11505139138305107347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022383 n + A022113 (n + 1)

end

end A097657.P11505139138305107347

namespace A097657

/-- `A022383(n)+A022113(n+1)` -/
def P11505139138305107347.Spec : Prop :=
  ∀ n, P11505139138305107347.a n = A097657 n

end A097657

/-! ## A097657.P5908115244823453062

`A090991(n+1)+A022138(n)`
-/

namespace A097657.P5908115244823453062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + A022138 n

end

end A097657.P5908115244823453062

namespace A097657

/-- `A090991(n+1)+A022138(n)` -/
def P5908115244823453062.Spec : Prop :=
  ∀ n, P5908115244823453062.a n = A097657 n

end A097657

/-! ## A097657.P5963069485699148424

`A206419(n+1)+A022350(n)`
-/

namespace A097657.P5963069485699148424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A022350 n

end

end A097657.P5963069485699148424

namespace A097657

/-- `A206419(n+1)+A022350(n)` -/
def P5963069485699148424.Spec : Prop :=
  ∀ n, P5963069485699148424.a n = A097657 n

end A097657

/-!
# A097659: a(n) = 1001^n.

The programs for A097659, the canonical program `A097659.P7185566010094405551` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097659 has offset 0).

The definition of A097659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097659.P7185566010094405551

`91^n*A001020(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097659

/-- `91^n*A001020(n)` -/
def P7185566010094405551.Spec : Prop :=
  ∀ n, P7185566010094405551.a n = A097659 n

theorem P7185566010094405551.correct : P7185566010094405551.Spec := by
  intro n
  simp only [A097659]

end A097659

/-! ## A097659.P10023855922158744360

`(10^(6/2)+1)^n`
-/

namespace A097659.P10023855922158744360
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 : ℝ) ^ ((6 : ℚ) / 2 : ℝ) + 1) ^ n

end

end A097659.P10023855922158744360

namespace A097659

/-- `(10^(6/2)+1)^n` -/
def P10023855922158744360.Spec : Prop :=
  ∀ n, P10023855922158744360.a n = (A097659 n : ℝ)

end A097659

/-! ## A097659.P7770874959860621467

`13*77*a(n-1)` with `a(0)=1`
-/

namespace A097659.P7770874959860621467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  13 * (77 * a (n - 1))

end

end A097659.P7770874959860621467

namespace A097659

/-- `13*77*a(n-1)` -/
def P7770874959860621467.Spec : Prop :=
  ∀ n, (P7770874959860621467.a n : ℤ) = A097659 n

theorem P7770874959860621467.correct : P7770874959860621467.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097659, Nat.add_sub_cancel, A097659.P7770874959860621467.a, A097659.P7185566010094405551.a, A001020, A001020.P6110418391945528251.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097659, Nat.add_sub_cancel, A097659.P7770874959860621467.a, A097659.P7185566010094405551.a, A001020, A001020.P6110418391945528251.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A097659

/-!
# A097661: a(n)^n = A080808(n).

The programs for A097661, there is no canonical definition to state claims against.
-/

/-! ## A097661.P8380264094636957693

`root(A080808(n+1), n+1)`
-/

namespace A097661.P8380264094636957693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080808 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A097661.P8380264094636957693

/-!
# A097662: a(n) = A002720(n) - 1.

The programs for A097662, the canonical program `A097662.P16094723525980984548` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097662 has offset 0).

The definition of A097662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097662.P16094723525980984548

`A002720(n)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097662

/-- `A002720(n)-1` -/
def P16094723525980984548.Spec : Prop :=
  ∀ n, P16094723525980984548.a n = A097662 n

theorem P16094723525980984548.correct : P16094723525980984548.Spec := by
  intro n
  simp only [A097662]

end A097662

/-! ## A097662.P1758379207554663287

`A056953(2*n)-1`
-/

namespace A097662.P1758379207554663287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n) - 1

end

end A097662.P1758379207554663287

namespace A097662

/-- `A056953(2*n)-1` -/
def P1758379207554663287.Spec : Prop :=
  ∀ n, P1758379207554663287.a n = A097662 n

end A097662

/-! ## A097662.P15159194305175022281

`A176120(∑[n]+n)-1`
-/

namespace A097662.P15159194305175022281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f1 j + n) - 1

end

end A097662.P15159194305175022281

namespace A097662

/-- `A176120(∑[n]+n)-1` -/
def P15159194305175022281.Spec : Prop :=
  ∀ n, P15159194305175022281.a n = A097662 n

end A097662

/-! ## A097662.P10021545495519104777

`A289192(∑[n+2]-1)-1`
-/

namespace A097662.P10021545495519104777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A097662.P10021545495519104777

namespace A097662

/-- `A289192(∑[n+2]-1)-1` -/
def P10021545495519104777.Spec : Prop :=
  ∀ n, P10021545495519104777.a n = A097662 n

end A097662

/-! ## A097662.P15132242376052467371

`A293985(∑[n+2]-1)-1`
-/

namespace A097662.P15132242376052467371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A097662.P15132242376052467371

namespace A097662

/-- `A293985(∑[n+2]-1)-1` -/
def P15132242376052467371.Spec : Prop :=
  ∀ n, P15132242376052467371.a n = A097662 n

end A097662

/-! ## A097662.P13238593234312281035

`A317094(n)-(n+1)²-1`
-/

namespace A097662.P13238593234312281035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317094 n - ((n + 1) ^ 2 : ℤ) - 1

end

end A097662.P13238593234312281035

namespace A097662

/-- `A317094(n)-(n+1)²-1` -/
def P13238593234312281035.Spec : Prop :=
  ∀ n, P13238593234312281035.a n = A097662 n

theorem P13238593234312281035.correct : P13238593234312281035.Spec := by
  intro n
  simp only [A097662, Nat.add_sub_cancel, A097662.P13238593234312281035.a, A097662.P16094723525980984548.a, A002720, A002720.P9188981106848597072.a, A317094, A317094.P14704194393009013937.a, A000262, A000262.P5795723230427946542.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097662

/-! ## A097662.P7252219802672700518

`record[A056953(A029578(n))-1]`
-/

namespace A097662.P7252219802672700518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A029578 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097662.P7252219802672700518

namespace A097662

/-- `record[A056953(A029578(n))-1]` -/
def P7252219802672700518.Spec : Prop :=
  ∀ n, P7252219802672700518.a n = A097662 n

end A097662

/-! ## A097662.P4017003207968294703

`record[A056953(A056944(n))-1]`
-/

namespace A097662.P4017003207968294703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A056944 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097662.P4017003207968294703

namespace A097662

/-- `record[A056953(A056944(n))-1]` -/
def P4017003207968294703.Spec : Prop :=
  ∀ n, P4017003207968294703.a n = A097662 n

end A097662

/-! ## A097662.P4564961359571086892

`A000262(n)+A052852(n)-1`
-/

namespace A097662.P4564961359571086892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n + (A052852 n - 1)

end

end A097662.P4564961359571086892

namespace A097662

/-- `A000262(n)+A052852(n)-1` -/
def P4564961359571086892.Spec : Prop :=
  ∀ n, P4564961359571086892.a n = A097662 n

end A097662

/-! ## A097662.P6704273352287844619

`A052866(n)+A052874(n)-1`
-/

namespace A097662.P6704273352287844619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052866 n + (A052874 n - 1)

end

end A097662.P6704273352287844619

namespace A097662

/-- `A052866(n)+A052874(n)-1` -/
def P6704273352287844619.Spec : Prop :=
  ∀ n, P6704273352287844619.a n = A097662 n

end A097662

/-!
# A097677: E.g.f.: (1/(1-x^3))*exp( 3*sum_{i>=0} x^(3*i+1)/(3*i+1) ) for an order-3 linear recurrence with varying coefficients.

The programs for A097677, the canonical program `A097677.P3816711296297485372` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097677 has offset 0).

The definition of A097677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097677.P3816711296297485372

`3*a(n-1)+n!/(n-3)!*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097677

/-- `3*a(n-1)+n!/(n-3)!*a(n-3)` -/
def P3816711296297485372.Spec : Prop :=
  ∀ n, P3816711296297485372.a n = (A097677 n : ℚ)

end A097677

/-! ## A097677.P12795714139959918742

`A098514(or(n, a(n-1)))+1` with `a(0)=1`
-/

namespace A097677.P12795714139959918742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098514 (Int.lor (n : ℤ) (a (n - 1))).toNat + 1

end

end A097677.P12795714139959918742

namespace A097677

/-- `A098514(or(n, a(n-1)))+1` -/
def P12795714139959918742.Spec : Prop :=
  ∀ n, P12795714139959918742.a n = A097677 n

end A097677

/-!
# A097678: E.g.f.: (1/(1-x^3))*exp( 3*sum_{i>=0} x^(3*i+2)/(3*i+2) ) for an order-3 linear recurrence with varying coefficients.

The programs for A097678, the canonical program `A097678.P13041251272624707878` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097678 has offset 0).

The definition of A097678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097678.P13041251272624707878

`3*(n-1)*a(n-2)+n!/(n-3)!*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097678

/-- `3*(n-1)*a(n-2)+n!/(n-3)!*a(n-3)` -/
def P13041251272624707878.Spec : Prop :=
  ∀ n, P13041251272624707878.a n = (A097678 n : ℚ)

end A097678

/-! ## A097678.P8067109683829009139

`9*A096827(13*a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=6`
-/

namespace A097678.P8067109683829009139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 6] fun n a =>
  9 * A096827 (13 * a (n - 1) + 1).toNat

end

end A097678.P8067109683829009139

namespace A097678

/-- `9*A096827(13*a(n-1)+1)` -/
def P8067109683829009139.Spec : Prop :=
  ∀ n, P8067109683829009139.a n = A097678 n

end A097678

/-!
# A097679: E.g.f.: (1/(1-x^4))*exp( 4*Sum_{i>=0} x^(4*i+1)/(4*i+1) ) for an order-4 linear recurrence with varying coefficients.

The programs for A097679, the canonical program `A097679.P11625858058785828202` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097679 has offset 0).

The definition of A097679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097679.P11625858058785828202

`4*a(n-1)+n!/(n-4)!*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=64`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097679

/-- `4*a(n-1)+n!/(n-4)!*a(n-4)` -/
def P11625858058785828202.Spec : Prop :=
  ∀ n, P11625858058785828202.a n = (A097679 n : ℚ)

end A097679

/-! ## A097679.P17617225426046962758

`∑[A055034(A373928(n+1))]`
-/

namespace A097679.P17617225426046962758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A373928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097679.P17617225426046962758

namespace A097679

/-- `∑[A055034(A373928(n+1))]` -/
def P17617225426046962758.Spec : Prop :=
  ∀ n, P17617225426046962758.a n = A097679 n

end A097679

/-!
# A097680: E.g.f.: (1/(1-x^5))*exp( 5*sum_{i>=0} x^(5*i+1)/(5*i+1) ) for an order-5 linear recurrence with varying coefficients.

The programs for A097680, the canonical program `A097680.P6622937730618493417` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097680 has offset 0).

The definition of A097680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097680.P6622937730618493417

`5*a(n-1)+n!/(n-5)!*a(n-5)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=125, a(4)=625`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097680

/-- `5*a(n-1)+n!/(n-5)!*a(n-5)` -/
def P6622937730618493417.Spec : Prop :=
  ∀ n, P6622937730618493417.a n = (A097680 n : ℚ)

end A097680

/-! ## A097680.P487508575686123554

`A094923(4*A014946(n+1))`
-/

namespace A097680.P487508575686123554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094923 (4 * A014946 (n + 1)).toNat

end

end A097680.P487508575686123554

namespace A097680

/-- `A094923(4*A014946(n+1))` -/
def P487508575686123554.Spec : Prop :=
  ∀ n, P487508575686123554.a n = A097680 n

end A097680

/-!
# A097681: E.g.f.: (1/(1-x^6))*exp( 6*sum_{i>=0} x^(6*i+1)/(6*i+1) ) for an order-6 linear recurrence with varying coefficients.

The programs for A097681, there is no canonical definition to state claims against.
-/

/-! ## A097681.P14123204561588311148

`A024062(n)+A007791(A000957(n))`
-/

namespace A097681.P14123204561588311148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n + A007791 (A000957 n).toNat

end

end A097681.P14123204561588311148

/-! ## A097681.P12678609284864963164

`A118887(A005316(n))+A000400(n)`
-/

namespace A097681.P12678609284864963164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118887 (A005316 n).toNat + A000400 n

end

end A097681.P12678609284864963164

/-! ## A097681.P18128877595201414085

`A254109(A052720(n))+A000400(n)`
-/

namespace A097681.P18128877595201414085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A052720 n).toNat + A000400 n

end

end A097681.P18128877595201414085

/-!
# A097682: E.g.f.: (1/(1-x^8))*exp( 8*sum_{i>=0} x^(8*i+1)/(8*i+1) ) for an order-8 linear recurrence with varying coefficients.

The programs for A097682, there is no canonical definition to state claims against.
-/

/-! ## A097682.P8390821974962444677

`A291115(A001104(n+1))+A000079(3*n)`
-/

namespace A097682.P8390821974962444677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 (A001104 (n + 1)).toNat + A000079 (3 * n)

end

end A097682.P8390821974962444677

/-!
# A097683: Numbers k such that R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A097683, there is no canonical definition to state claims against.
-/

/-! ## A097683.P10139643184113960699

`A056654(A028310(n))+ceil(sin(n)²)`
-/

namespace A097683.P10139643184113960699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A097683.P10139643184113960699

/-! ## A097683.P3361959512596083156

`A056654(n-a(A000038(n)))+1` with `a(0)=0`
-/

namespace A097683.P3361959512596083156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056654 ((n : ℤ) - a (A000038 n).toNat).toNat + 1

end

end A097683.P3361959512596083156

/-! ## A097683.P18012913487675921759

`A057427(n)+A056654(round(sqrt(n²+1)))`
-/

namespace A097683.P18012913487675921759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056654 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A097683.P18012913487675921759

/-! ## A097683.P333594819354125542

`A056654(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A097683.P333594819354125542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A097683.P333594819354125542

/-! ## A097683.P7572834309845024958

`∪[A023086(n+1), A056654(n+1)+1]`
-/

namespace A097683.P7572834309845024958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097683.P7572834309845024958

/-!
# A097684: Numbers k such that (10^k - 1)/9 + 6 is prime.

The programs for A097684, there is no canonical definition to state claims against.
-/

/-! ## A097684.P9339665633290921605

`A056655(n+1)+1`
-/

namespace A097684.P9339665633290921605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056655 (n + 1) + 1

end

end A097684.P9339665633290921605

/-!
# A097685: Numbers k such that R_k + 8 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A097685, there is no canonical definition to state claims against.
-/

/-! ## A097685.P10794871519711819904

`A056659(n+1)+1`
-/

namespace A097685.P10794871519711819904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056659 (n + 1) + 1

end

end A097685.P10794871519711819904

/-! ## A097685.P14750570658724306679

`A020725(A056659(n+1))`
-/

namespace A097685.P14750570658724306679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056659 (n + 1)).toNat

end

end A097685.P14750570658724306679

/-!
# A097686: a(n+1) = if a(n) is even then a(n)/2 else (a(n) + number of earlier occurrences of a(n)), a(1) = 1.

The programs for A097686, there is no canonical definition to state claims against.
-/

/-! ## A097686.P12076242855088377914

`gcd(round(sqrt(record[n*ceil(sqrt(n+1))%2])), A341257(A219639(n+1)))`
-/

namespace A097686.P12076242855088377914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))) (A341257 (A219639 (n + 1)).toNat)

end

end A097686.P12076242855088377914

/-! ## A097686.P15240254505150509447

`A046951(A290670(n)-A257303(n+1))`
-/

namespace A097686.P15240254505150509447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A290670 n - A257303 (n + 1)).toNat

end

end A097686.P15240254505150509447

/-! ## A097686.P1753984255106850811

`gcd(A070082(n+1), A342303(A038611(n+1)))`
-/

namespace A097686.P1753984255106850811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070082 (n + 1)) (A342303 (A038611 (n + 1)).toNat)

end

end A097686.P1753984255106850811

/-! ## A097686.P1154932952927214023

`A273132(or(A016014(2*n+3), A268448(n+1)))`
-/

namespace A097686.P1154932952927214023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273132 (Int.lor (A016014 (2 * n + 3)) (A268448 (n + 1))).toNat

end

end A097686.P1154932952927214023

/-! ## A097686.P6284954255258945063

`gcd(A002262(A282423(n+1)+n+1), A285362(n+1))`
-/

namespace A097686.P6284954255258945063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (A282423 (n + 1) + (n + 1 : ℤ)).toNat) (A285362 (n + 1))

end

end A097686.P6284954255258945063

/-!
# A097687: Smallest m such that A097686(m)=n.

The programs for A097687, there is no canonical definition to state claims against.
-/

/-! ## A097687.P10785240181267993459

`A159699(n)+A159689(A071742(n))`
-/

namespace A097687.P10785240181267993459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159699 n + A159689 (A071742 n).toNat

end

end A097687.P10785240181267993459

/-! ## A097687.P14194128291380634708

`or(A023187(n+1), A240608(A198515(n+1)))`
-/

namespace A097687.P14194128291380634708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023187 (n + 1)) (A240608 (A198515 (n + 1)).toNat)

end

end A097687.P14194128291380634708

/-!
# A097688: Number of ones in the first n terms of A097686.

The programs for A097688, there is no canonical definition to state claims against.
-/

/-! ## A097688.P15482245198429926734

`∑[round(acot(A097686(n+1)))]`
-/

namespace A097688.P15482245198429926734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A097686 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P15482245198429926734

/-! ## A097688.P1080916184938452389

`∑[A063524(A097686(n+1))]`
-/

namespace A097688.P1080916184938452389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A097686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P1080916184938452389

/-! ## A097688.P1241512267110799131

`∑[A008683(A097686(n+1)²)]`
-/

namespace A097688.P1241512267110799131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A097686 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P1241512267110799131

/-! ## A097688.P7296077612991491596

`∑[A008966(A097686(n+1)²)]`
-/

namespace A097688.P7296077612991491596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A097686 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P7296077612991491596

/-! ## A097688.P700902816495110087

`∑[A019590(A097686(n+1)²)]`
-/

namespace A097688.P700902816495110087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A097686 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P700902816495110087

/-! ## A097688.P6011049979225780365

`∑[A036987(A097686(n+1)²)]`
-/

namespace A097688.P6011049979225780365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A097686 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P6011049979225780365

/-! ## A097688.P5592036284941001902

`∑[A069158(A097686(n+1)²)]`
-/

namespace A097688.P5592036284941001902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (A097686 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P5592036284941001902

/-! ## A097688.P13366635001243318228

`∑[A080339(A097686(n+1)²)]`
-/

namespace A097688.P13366635001243318228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A097686 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P13366635001243318228

/-! ## A097688.P489367077450870834

`∑[A019590(A097686(n+1)+1)]`
-/

namespace A097688.P489367077450870834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A097686 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P489367077450870834

/-! ## A097688.P7067354162899106948

`∑[A010051(2*A097686(n+1))]`
-/

namespace A097688.P7067354162899106948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A097686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097688.P7067354162899106948

/-!
# A097690: Numerators of the continued fraction n-1/(n-1/...) [n times].

The programs for A097690, there is no canonical definition to state claims against.
-/

/-! ## A097690.P5979148898056535545

`A073134(2*(n+1)²)`
-/

namespace A097690.P5979148898056535545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073134 (2 * (n + 1) ^ 2)

end

end A097690.P5979148898056535545

/-! ## A097690.P14990502065404138207

`A179943((n+1)²+n²)`
-/

namespace A097690.P14990502065404138207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 ((n + 1) ^ 2 + n ^ 2)

end

end A097690.P14990502065404138207

/-! ## A097690.P16519459207349217123

`record[A179943(∑[A014682(n)]-n)]`
-/

namespace A097690.P16519459207349217123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097690.P16519459207349217123

/-! ## A097690.P17766635129340618296

`record[A179943(∑[n]-A071045(n))]`
-/

namespace A097690.P17766635129340618296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097690.P17766635129340618296

/-! ## A097690.P9839064432690046956

`gcd(A000038(n), A179943(A001844(n)))`
-/

namespace A097690.P9839064432690046956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A179943 (A001844 n).toNat)

end

end A097690.P9839064432690046956

/-!
# A097691: Denominators of the continued fraction n-1/(n-1/...) [n times].

The programs for A097691, there is no canonical definition to state claims against.
-/

/-! ## A097691.P949985983224821431

`A179943(2*n²)`
-/

namespace A097691.P949985983224821431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (2 * n ^ 2)

end

end A097691.P949985983224821431

/-! ## A097691.P10335468299182775270

`record[A179943(∑[A014682(n)])]`
-/

namespace A097691.P10335468299182775270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097691.P10335468299182775270

/-! ## A097691.P14293526294454126879

`record[A179943(∑[A071045(n)+1])]`
-/

namespace A097691.P14293526294454126879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097691.P14293526294454126879

/-! ## A097691.P8332143582057305643

`A179943(A001105(n))%A343261(n)`
-/

namespace A097691.P8332143582057305643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179943 (A001105 n).toNat) (A343261 n)

end

end A097691.P8332143582057305643

/-! ## A097691.P1500060664249304101

`gcd(A000038(n), A179943(A001105(n)))`
-/

namespace A097691.P1500060664249304101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A179943 (A001105 n).toNat)

end

end A097691.P1500060664249304101

/-!
# A097692: Triangle read by rows: a(n,k) = number of paths of n upsteps U and n downsteps D that contain k UDUs.

The programs for A097692, the canonical program `A097692.P14164108178356660308` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097692 has offset 0).

The definition of A097692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097692.P5532532801948055586

`A006530(∏{e}[n+1, 2^#])*A171651(A004273(n)-n)`
-/

namespace A097692.P5532532801948055586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P5532532801948055586

namespace A097692

/-- `A006530(∏{e}[n+1, 2^#])*A171651(A004273(n)-n)` -/
def P5532532801948055586.Spec : Prop :=
  ∀ n, P5532532801948055586.a n = A097692 n

end A097692

/-! ## A097692.P4213927392330707964

`A014963(∏{e}[n+1, 2^#])*A171651(A004273(n)-n)`
-/

namespace A097692.P4213927392330707964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P4213927392330707964

namespace A097692

/-- `A014963(∏{e}[n+1, 2^#])*A171651(A004273(n)-n)` -/
def P4213927392330707964.Spec : Prop :=
  ∀ n, P4213927392330707964.a n = A097692 n

end A097692

/-! ## A097692.P14457415803822855007

`A020639(A008574(n))*A171651(A004273(n)-n)`
-/

namespace A097692.P14457415803822855007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P14457415803822855007

namespace A097692

/-- `A020639(A008574(n))*A171651(A004273(n)-n)` -/
def P14457415803822855007.Spec : Prop :=
  ∀ n, P14457415803822855007.a n = A097692 n

end A097692

/-! ## A097692.P10973673169356129724

`A020639(A004277(n))*A171651(n-A057427(n))`
-/

namespace A097692.P10973673169356129724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A171651 ((n : ℤ) - A057427 n).toNat

end

end A097692.P10973673169356129724

namespace A097692

/-- `A020639(A004277(n))*A171651(n-A057427(n))` -/
def P10973673169356129724.Spec : Prop :=
  ∀ n, P10973673169356129724.a n = A097692 n

end A097692

/-! ## A097692.P14164108178356660308

`A016001(A006530(n+1))*A171651(n-A057427(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A097692

/-- `A016001(A006530(n+1))*A171651(n-A057427(n))` -/
def P14164108178356660308.Spec : Prop :=
  ∀ n, P14164108178356660308.a n = A097692 n

theorem P14164108178356660308.correct : P14164108178356660308.Spec := by
  intro n
  simp only [A097692]

end A097692

/-! ## A097692.P18202840293383421129

`A001222(2*A006530(n+1))*A171651(A004273(n)-n)`
-/

namespace A097692.P18202840293383421129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P18202840293383421129

namespace A097692

/-- `A001222(2*A006530(n+1))*A171651(A004273(n)-n)` -/
def P18202840293383421129.Spec : Prop :=
  ∀ n, P18202840293383421129.a n = A097692 n

end A097692

/-! ## A097692.P12588166393161779671

`A016002(A006530(2*n+1))*A171651(n-A057427(n))`
-/

namespace A097692.P12588166393161779671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016002 (A006530 (2 * n + 1)).toNat * A171651 ((n : ℤ) - A057427 n).toNat

end

end A097692.P12588166393161779671

namespace A097692

/-- `A016002(A006530(2*n+1))*A171651(n-A057427(n))` -/
def P12588166393161779671.Spec : Prop :=
  ∀ n, P12588166393161779671.a n = A097692 n

end A097692

/-! ## A097692.P4572690897459210200

`A171651(n-A057427(n))*A280193(2*n)`
-/

namespace A097692.P4572690897459210200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171651 ((n : ℤ) - A057427 n).toNat * A280193 (2 * n)

end

end A097692.P4572690897459210200

namespace A097692

/-- `A171651(n-A057427(n))*A280193(2*n)` -/
def P4572690897459210200.Spec : Prop :=
  ∀ n, P4572690897459210200.a n = A097692 n

end A097692

/-! ## A097692.P8506712398473027709

`A000034(A247797(n+1))*A171651(A004273(n)-n)`
-/

namespace A097692.P8506712398473027709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A247797 (n + 1)).toNat * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P8506712398473027709

namespace A097692

/-- `A000034(A247797(n+1))*A171651(A004273(n)-n)` -/
def P8506712398473027709.Spec : Prop :=
  ∀ n, P8506712398473027709.a n = A097692 n

end A097692

/-! ## A097692.P5986772868381955316

`A014963(A046644(n+1))*A171651(A004273(n)-n)`
-/

namespace A097692.P5986772868381955316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046644 (n + 1)).toNat * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P5986772868381955316

namespace A097692

/-- `A014963(A046644(n+1))*A171651(A004273(n)-n)` -/
def P5986772868381955316.Spec : Prop :=
  ∀ n, P5986772868381955316.a n = A097692 n

end A097692

/-! ## A097692.P10731195047759774281

`A129654(A129633(n+1))*A171651(A004273(n)-n)`
-/

namespace A097692.P10731195047759774281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A129633 (n + 1)).toNat * A171651 (A004273 n - (n : ℤ)).toNat

end

end A097692.P10731195047759774281

namespace A097692

/-- `A129654(A129633(n+1))*A171651(A004273(n)-n)` -/
def P10731195047759774281.Spec : Prop :=
  ∀ n, P10731195047759774281.a n = A097692 n

end A097692

/-!
# A097693: Largest achievable determinant of a 3 X 3 matrix whose elements are 9 distinct integers chosen from the range -n...n.

The programs for A097693, the canonical program `A097693.P4076788236664843396` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097693 has offset 4).

The definition of A097693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097693.P4076788236664843396

`2*(2*(n+4)^3-7*(n+4)²+6*(n+4)+3)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097693

/-- `2*(2*(n+4)^3-7*(n+4)²+6*(n+4)+3)` -/
def P4076788236664843396.Spec : Prop :=
  ∀ n, P4076788236664843396.a n = A097693 (n + 4)

theorem P4076788236664843396.correct : P4076788236664843396.Spec := by
  intro n
  simp only [A097693, Nat.add_sub_cancel]

end A097693

/-! ## A097693.P9585363353736095296

`A167561(n+2)+6*(n+1)²`
-/

namespace A097693.P9585363353736095296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167561 (n + 2) + (6 * (n + 1) ^ 2 : ℤ)

end

end A097693.P9585363353736095296

namespace A097693

/-- `A167561(n+2)+6*(n+1)²` -/
def P9585363353736095296.Spec : Prop :=
  ∀ n, P9585363353736095296.a n = A097693 (n + 4)

theorem P9585363353736095296.correct : P9585363353736095296.Spec := by
  intro n
  simp only [A097693, Nat.add_sub_cancel, A097693.P9585363353736095296.a, A097693.P4076788236664843396.a, A167561, A167561.P17839987085415951587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097693

/-! ## A097693.P11808493882370274777

`Δ[A069756(n+2)]-A067728(n+1)`
-/

namespace A097693.P11808493882370274777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A067728 (n + 1)

end

end A097693.P11808493882370274777

namespace A097693

/-- `Δ[A069756(n+2)]-A067728(n+1)` -/
def P11808493882370274777.Spec : Prop :=
  ∀ n, P11808493882370274777.a n = A097693 (n + 4)

theorem P11808493882370274777.correct : P11808493882370274777.Spec := by
  intro n
  simp only [A097693, Nat.add_sub_cancel, A097693.P11808493882370274777.f1, A097693.P11808493882370274777.a, A097693.P4076788236664843396.a, A067728, A067728.P6158032751772494089.a, A069756, A069756.P8613557898676914719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097693

/-! ## A097693.P5025249843885029198

`A131464(n+3)+n²`
-/

namespace A097693.P5025249843885029198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131464 (n + 3) + (n ^ 2 : ℤ)

end

end A097693.P5025249843885029198

namespace A097693

/-- `A131464(n+3)+n²` -/
def P5025249843885029198.Spec : Prop :=
  ∀ n, P5025249843885029198.a n = A097693 (n + 4)

theorem P5025249843885029198.correct : P5025249843885029198.Spec := by
  intro n
  simp only [A097693, Nat.add_sub_cancel, A097693.P5025249843885029198.a, A097693.P4076788236664843396.a, A131464, A131464.P8425244943263735191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097693

/-! ## A097693.P9194687431680889042

`A294774(n+1)+A106231(n+3)`
-/

namespace A097693.P9194687431680889042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 (n + 1) + A106231 (n + 3)

end

end A097693.P9194687431680889042

namespace A097693

/-- `A294774(n+1)+A106231(n+3)` -/
def P9194687431680889042.Spec : Prop :=
  ∀ n, P9194687431680889042.a n = A097693 (n + 4)

end A097693

/-! ## A097693.P9057309962365775677

`A212343(2*n+7)+6`
-/

namespace A097693.P9057309962365775677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212343 (2 * n + 7) + 6

end

end A097693.P9057309962365775677

namespace A097693

/-- `A212343(2*n+7)+6` -/
def P9057309962365775677.Spec : Prop :=
  ∀ n, P9057309962365775677.a n = A097693 (n + 4)

end A097693

/-!
# A097697: Numbers k such that 4*k^2 + 3 is prime.

The programs for A097697, there is no canonical definition to state claims against.
-/

/-! ## A097697.P11211314722534163539

`A049422(n+2)/2`
-/

namespace A097697.P11211314722534163539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049422 (n + 2) : ℚ) / 2

end

end A097697.P11211314722534163539

/-! ## A097697.P13643551248692776933

`floor(sqrt(A049423(n+2))/2)`
-/

namespace A097697.P13643551248692776933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A049423 (n + 2) : ℝ) / 2⌋

end

end A097697.P13643551248692776933

/-! ## A097697.P12515094193112281020

`∑[A004525(Δ[A049422(n+1)])]`
-/

namespace A097697.P12515094193112281020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097697.P12515094193112281020

/-! ## A097697.P6197017206654791251

`∑[A004526(Δ[A049422(n+1)])]`
-/

namespace A097697.P6197017206654791251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097697.P6197017206654791251

/-! ## A097697.P4780121060992079109

`∑[A026741(Δ[A049422(n+1)])]`
-/

namespace A097697.P4780121060992079109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097697.P4780121060992079109

/-! ## A097697.P12695900063634326089

`∑[A032742(Δ[A049422(n+1)])]`
-/

namespace A097697.P12695900063634326089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097697.P12695900063634326089

/-! ## A097697.P13664386925555882471

`∑[A065033(Δ[A049422(n+1)])]`
-/

namespace A097697.P13664386925555882471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097697.P13664386925555882471

/-! ## A097697.P631794141986289710

`eq[3, A300817(2*n)]`
-/

namespace A097697.P631794141986289710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097697.P631794141986289710

/-! ## A097697.P11661359586817735067

`A001281(A049422(n+2))`
-/

namespace A097697.P11661359586817735067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049422 (n + 2)).toNat

end

end A097697.P11661359586817735067

/-! ## A097697.P18171560221793393657

`A078898(eq[3, A300817(n)])`
-/

namespace A097697.P18171560221793393657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097697.P18171560221793393657

/-! ## A097697.P11082370759945998738

`eq[9, A300817(A005843(n))²]`
-/

namespace A097697.P11082370759945998738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A005843 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097697.P11082370759945998738

/-! ## A097697.P6481019056328877584

`A004526(A049422(n+2)+1)`
-/

namespace A097697.P6481019056328877584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049422 (n + 2) + 1).toNat

end

end A097697.P6481019056328877584

/-! ## A097697.P456887521164940269

`A065033(A049422(n+2)-1)`
-/

namespace A097697.P456887521164940269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A049422 (n + 2) - 1).toNat

end

end A097697.P456887521164940269

/-! ## A097697.P11090073319659274204

`lt[A079978(n), A079978(A300817(2*n))]`
-/

namespace A097697.P11090073319659274204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A300817 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097697.P11090073319659274204

/-! ## A097697.P5463535856164419865

`A026741(A049422(n+1)+Δ[A049422(n+1)])`
-/

namespace A097697.P5463535856164419865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A049422 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A097697.P5463535856164419865

/-! ## A097697.P12077649237048848937

`A032742(A049422(n+1)+Δ[A049422(n+1)])`
-/

namespace A097697.P12077649237048848937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A049422 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A097697.P12077649237048848937

/-! ## A097697.P1887322097019646006

`round(sqrt(p?[(n+1)²+3])/2)`
-/

namespace A097697.P1887322097019646006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / 2)

end

end A097697.P1887322097019646006

/-! ## A097697.P16154202430311864010

`floor(sqrt(p?[n²+2*(n+2)]))/2`
-/

namespace A097697.P16154202430311864010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A097697.P16154202430311864010

/-! ## A097697.P14288113184928344142

`lt[∑{p}[(2*n)²+3, A002522(n)/#], n]`
-/

namespace A097697.P14288113184928344142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (A002522 n : ℚ) / (p : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A097697.P14288113184928344142

/-!
# A097698: Numbers k such that both 4*k^2 - 3 and 4*k^2 + 3 are primes.

The programs for A097698, there is no canonical definition to state claims against.
-/

/-! ## A097698.P8045278636556068994

`A153975(n+1)/2`
-/

namespace A097698.P8045278636556068994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153975 (n + 1) : ℚ) / 2

end

end A097698.P8045278636556068994

/-! ## A097698.P11752139742276987493

`sqrt(A153262(n+1))/2`
-/

namespace A097698.P11752139742276987493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153262 (n + 1) : ℝ) / 2

end

end A097698.P11752139742276987493

/-! ## A097698.P17334730825718423303

`∩[A083022(n+1), A097697(n+1)]`
-/

namespace A097698.P17334730825718423303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097698.P17334730825718423303

/-! ## A097698.P9825096260711713075

`∩[A028873(n+1), A049422(n+1)]/2`
-/

namespace A097698.P9825096260711713075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A097698.P9825096260711713075

/-! ## A097698.P3572692233965791889

`A014682(A153975(n+1))`
-/

namespace A097698.P3572692233965791889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A153975 (n + 1)).toNat

end

end A097698.P3572692233965791889

/-! ## A097698.P18140595999152970896

`A014682(sqrt(A153262(n+1)))`
-/

namespace A097698.P18140595999152970896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway (Real.sqrt (A153262 (n + 1) : ℝ))).toNat

end

end A097698.P18140595999152970896

/-! ## A097698.P8070913778895467961

`A246425(A153975(n+1)-1)`
-/

namespace A097698.P8070913778895467961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A153975 (n + 1) - 1).toNat

end

end A097698.P8070913778895467961

/-! ## A097698.P7650607943432473580

`A004525(sqrt(A153262(n+1)))`
-/

namespace A097698.P7650607943432473580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (Real.sqrt (A153262 (n + 1) : ℝ))).toNat

end

end A097698.P7650607943432473580

/-! ## A097698.P2713931494254138744

`A028242(A153975(n+1)+1)`
-/

namespace A097698.P2713931494254138744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A153975 (n + 1) + 1).toNat

end

end A097698.P2713931494254138744

/-! ## A097698.P10035426400824769363

`A001281(A153975(n+1)+2)-1`
-/

namespace A097698.P10035426400824769363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A153975 (n + 1) + 2).toNat - 1

end

end A097698.P10035426400824769363

/-! ## A097698.P16231572617964397928

`A004525(A153975(n+1)+2)-1`
-/

namespace A097698.P16231572617964397928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A153975 (n + 1) + 2).toNat - 1

end

end A097698.P16231572617964397928

/-! ## A097698.P1129103080290786079

`A246425(2*A153975(n+1))+A153975(n+1)`
-/

namespace A097698.P1129103080290786079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (2 * A153975 (n + 1)).toNat + A153975 (n + 1)

end

end A097698.P1129103080290786079

/-!
# A097699: Records in the numbers of antichains in the divisor lattice D(n) (A096827).

The programs for A097699, there is no canonical definition to state claims against.
-/

/-! ## A097699.P9521402496791813367

`record[A096827(n+1)]`
-/

namespace A097699.P9521402496791813367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097699.P9521402496791813367

/-! ## A097699.P15771034996946925886

`record[A096827(A028310(n))/2*gcd(2, n)]`
-/

namespace A097699.P15771034996946925886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096827 (A028310 n).toNat : ℚ) / 2 * (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097699.P15771034996946925886

/-! ## A097699.P9926750767790800088

`A096827(lcm(A166981(n+1), A307739(n)))`
-/

namespace A097699.P9926750767790800088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (Int.lcm (A166981 (n + 1)) (A307739 n))

end

end A097699.P9926750767790800088

/-! ## A097699.P14304394259945548512

`A096827(A002182(n+1)%A139217(n+2))`
-/

namespace A097699.P14304394259945548512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (Int.tmod (A002182 (n + 1)) (A139217 (n + 2))).toNat

end

end A097699.P14304394259945548512

/-! ## A097699.P15056804700872997049

`A096827(lcm(A002182(n+1), A055884(n+1)))`
-/

namespace A097699.P15056804700872997049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (Int.lcm (A002182 (n + 1)) (A055884 (n + 1)))

end

end A097699.P15056804700872997049

