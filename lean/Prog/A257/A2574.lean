import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A257400: Expansion of psi(q) * phi(q^2) * chi(-q^3) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A257400, there is no canonical definition to state claims against.
-/

/-! ## A257400.P8867974814270153693

`A033999(n)*A263767(A008590(n))`
-/

namespace A257400.P8867974814270153693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263767 (A008590 n).toNat

end

end A257400.P8867974814270153693

/-! ## A257400.P8781448925373726609

`A263767(A008590(n))/A057428(n)^n`
-/

namespace A257400.P8781448925373726609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263767 (A008590 n).toNat : ℚ) / (A057428 n ^ n : ℚ)

end

end A257400.P8781448925373726609

/-! ## A257400.P17024069879056418157

`A263767(A008590(n))/A070048(n)*A116498(n)`
-/

namespace A257400.P17024069879056418157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263767 (A008590 n).toNat : ℚ) / (A070048 n : ℚ) * (A116498 n : ℚ)

end

end A257400.P17024069879056418157

/-! ## A257400.P2249007680446232953

`A010815(A000326(n))*A263767(A008590(n))`
-/

namespace A257400.P2249007680446232953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A263767 (A008590 n).toNat

end

end A257400.P2249007680446232953

/-!
# A257402: Expansion of chi(x) * psi(-x^3) * psi(x^12) in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A257402, the canonical program `A257402.P10523308612613138728` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257402 has offset 0).

The definition of A257402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257402.P10523308612613138728

`A216282(6*n+11)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A257402

/-- `A216282(6*n+11)` -/
def P10523308612613138728.Spec : Prop :=
  ∀ n, P10523308612613138728.a n = A257402 n

theorem P10523308612613138728.correct : P10523308612613138728.Spec := by
  intro n
  simp only [A257402]

end A257402

/-! ## A257402.P8365977903235047610

`A026741(A113411(3*(n+1)+2))`
-/

namespace A257402.P8365977903235047610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A113411 (3 * (n + 1) + 2)).toNat

end

end A257402.P8365977903235047610

namespace A257402

/-- `A026741(A113411(3*(n+1)+2))` -/
def P8365977903235047610.Spec : Prop :=
  ∀ n, P8365977903235047610.a n = A257402 n

end A257402

/-! ## A257402.P10436062726539834850

`A256574(4*n+1)`
-/

namespace A257402.P10436062726539834850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256574 (4 * n + 1)

end

end A257402.P10436062726539834850

namespace A257402

/-- `A256574(4*n+1)` -/
def P10436062726539834850.Spec : Prop :=
  ∀ n, P10436062726539834850.a n = A257402 n

end A257402

/-! ## A257402.P5556788925903906592

`A002325(6*n+11)/2`
-/

namespace A257402.P5556788925903906592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (6 * n + 11) : ℚ) / 2

end

end A257402.P5556788925903906592

namespace A257402

/-- `A002325(6*n+11)/2` -/
def P5556788925903906592.Spec : Prop :=
  ∀ n, P5556788925903906592.a n = (A257402 n : ℚ)

end A257402

/-! ## A257402.P9840427599578552968

`A226225(4*A016969(n+1))/4`
-/

namespace A257402.P9840427599578552968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226225 (4 * A016969 (n + 1)).toNat : ℚ) / 4

end

end A257402.P9840427599578552968

namespace A257402

/-- `A226225(4*A016969(n+1))/4` -/
def P9840427599578552968.Spec : Prop :=
  ∀ n, P9840427599578552968.a n = (A257402 n : ℚ)

end A257402

/-!
# A257403: Multiplicative with a(2) = 1, a(2^e) = 0 if e>1, a(3^e) = 0^e, a(p^e) = e+1 if p == 1, 3 (mod 8), a(p^e) = (1 + (-1)^e) / 2 if p == 5, 7 (mod 8).

The programs for A257403, the canonical program `A257403.P16021545718010594509` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257403 has offset 1).

The definition of A257403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257403.P13361463918516128236

`∑{d}[n+1, A257477(#)]`
-/

namespace A257403.P13361463918516128236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257477 d

end

end A257403.P13361463918516128236

namespace A257403

/-- `∑{d}[n+1, A257477(#)]` -/
def P13361463918516128236.Spec : Prop :=
  ∀ n, P13361463918516128236.a n = A257403 (n + 1)

end A257403

/-! ## A257403.P7891896228651728841

`A000089(A065331(n+1))*A002325(n+1)`
-/

namespace A257403.P7891896228651728841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A065331 (n + 1)).toNat * A002325 (n + 1)

end

end A257403.P7891896228651728841

namespace A257403

/-- `A000089(A065331(n+1))*A002325(n+1)` -/
def P7891896228651728841.Spec : Prop :=
  ∀ n, P7891896228651728841.a n = A257403 (n + 1)

end A257403

/-! ## A257403.P16021545718010594509

`A000089(A065331(n+1))*A035172(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257403

/-- `A000089(A065331(n+1))*A035172(n+1)` -/
def P16021545718010594509.Spec : Prop :=
  ∀ n, P16021545718010594509.a n = A257403 (n + 1)

theorem P16021545718010594509.correct : P16021545718010594509.Spec := by
  intro n
  simp only [A257403, Nat.add_sub_cancel]

end A257403

/-! ## A257403.P737939777188761174

`lcm(A002325(n+1), A128834(A076109(n+1)))`
-/

namespace A257403.P737939777188761174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002325 (n + 1)) (A128834 (A076109 (n + 1)).toNat)

end

end A257403.P737939777188761174

namespace A257403

/-- `lcm(A002325(n+1), A128834(A076109(n+1)))` -/
def P737939777188761174.Spec : Prop :=
  ∀ n, (P737939777188761174.a n : ℤ) = A257403 (n + 1)

end A257403

/-! ## A257403.P9910605502810270363

`lcm(A000089(A065331(n+1)), A129134(n+1))`
-/

namespace A257403.P9910605502810270363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000089 (A065331 (n + 1)).toNat) (A129134 (n + 1))

end

end A257403.P9910605502810270363

namespace A257403

/-- `lcm(A000089(A065331(n+1)), A129134(n+1))` -/
def P9910605502810270363.Spec : Prop :=
  ∀ n, (P9910605502810270363.a n : ℤ) = A257403 (n + 1)

end A257403

/-! ## A257403.P1907857420770244564

`A002325(n+1)*A128834(A076109(n+1)²)`
-/

namespace A257403.P1907857420770244564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) * A128834 (A076109 (n + 1) ^ 2).toNat

end

end A257403.P1907857420770244564

namespace A257403

/-- `A002325(n+1)*A128834(A076109(n+1)²)` -/
def P1907857420770244564.Spec : Prop :=
  ∀ n, P1907857420770244564.a n = A257403 (n + 1)

end A257403

/-!
# A257404: Numbers of the form p * q^p where p and q are primes, in increasing order.

The programs for A257404, there is no canonical definition to state claims against.
-/

/-! ## A257404.P18192750855880622917

`∩[A319736(n+1), A352081(n+1)]`
-/

namespace A257404.P18192750855880622917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257404.P18192750855880622917

/-!
# A257405: For n=1 or prime, a(n)=n; otherwise, a(n) is the smallest number not already used which shares a factor with a(n-1).

The programs for A257405, there is no canonical definition to state claims against.
-/

/-! ## A257405.P13278618232961868096

`A196330(n+1)%(∑[A000005(A014491(2^n+10))]+1)`
-/

namespace A257405.P13278618232961868096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014491 (2 ^ n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196330 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257405.P13278618232961868096

/-!
# A257408: Values of n such that there is exactly 1 solution to x^2 - y^2 = n with x > y >= 0.

The programs for A257408, the canonical program `A257408.P7293558973563838932` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257408 has offset 1).

The definition of A257408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257408.P7293558973563838932

`eq[1, A034178(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257408

/-- `eq[1, A034178(n+1)]+1` -/
def P7293558973563838932.Spec : Prop :=
  ∀ n, (P7293558973563838932.a n : ℤ) = A257408 (n + 1)

theorem P7293558973563838932.correct : P7293558973563838932.Spec := by
  intro n
  simp only [A257408, Nat.add_sub_cancel]

end A257408

/-! ## A257408.P7969818529098933293

`eq[n%2, A220400(n+1)]+1`
-/

namespace A257408.P7969818529098933293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257408.P7969818529098933293

namespace A257408

/-- `eq[n%2, A220400(n+1)]+1` -/
def P7969818529098933293.Spec : Prop :=
  ∀ n, (P7969818529098933293.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P5160755194606787900

`eq[A056594(n), A220400(n)]`
-/

namespace A257408.P5160755194606787900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P5160755194606787900

namespace A257408

/-- `eq[A056594(n), A220400(n)]` -/
def P5160755194606787900.Spec : Prop :=
  ∀ n, (P5160755194606787900.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P4784435405374624255

`eq[A059841(n), A220400(n)]`
-/

namespace A257408.P4784435405374624255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P4784435405374624255

namespace A257408

/-- `eq[A059841(n), A220400(n)]` -/
def P4784435405374624255.Spec : Prop :=
  ∀ n, (P4784435405374624255.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P12790401187593731369

`filter[A096157(n+1), A152822(#)]`
-/

namespace A257408.P12790401187593731369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A257408.P12790401187593731369

namespace A257408

/-- `filter[A096157(n+1), A152822(#)]` -/
def P12790401187593731369.Spec : Prop :=
  ∀ n, P12790401187593731369.a n = A257408 (n + 1)

end A257408

/-! ## A257408.P16712577812301041684

`filter[A096157(n+1), A359590(#)]`
-/

namespace A257408.P16712577812301041684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A257408.P16712577812301041684

namespace A257408

/-- `filter[A096157(n+1), A359590(#)]` -/
def P16712577812301041684.Spec : Prop :=
  ∀ n, P16712577812301041684.a n = A257408 (n + 1)

end A257408

/-! ## A257408.P12660840389124878692

`eq[A220400(n)+1, A087230(n)]`
-/

namespace A257408.P12660840389124878692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P12660840389124878692

namespace A257408

/-- `eq[A220400(n)+1, A087230(n)]` -/
def P12660840389124878692.Spec : Prop :=
  ∀ n, (P12660840389124878692.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P7000179647388226934

`eq[2, A220400(n)+A000034(n)]`
-/

namespace A257408.P7000179647388226934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257408.P7000179647388226934

namespace A257408

/-- `eq[2, A220400(n)+A000034(n)]` -/
def P7000179647388226934.Spec : Prop :=
  ∀ n, (P7000179647388226934.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P9646696554158111605

`eq[A220400(n)+2, A176059(n)]`
-/

namespace A257408.P9646696554158111605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P9646696554158111605

namespace A257408

/-- `eq[A220400(n)+2, A176059(n)]` -/
def P9646696554158111605.Spec : Prop :=
  ∀ n, (P9646696554158111605.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P5720828621577520825

`eq[A121262(2*n), A220400(n)]`
-/

namespace A257408.P5720828621577520825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P5720828621577520825

namespace A257408

/-- `eq[A121262(2*n), A220400(n)]` -/
def P5720828621577520825.Spec : Prop :=
  ∀ n, (P5720828621577520825.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P3064477661959817402

`eq[A220400(n)+2, A290102(n+1)]`
-/

namespace A257408.P3064477661959817402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P3064477661959817402

namespace A257408

/-- `eq[A220400(n)+2, A290102(n+1)]` -/
def P3064477661959817402.Spec : Prop :=
  ∀ n, (P3064477661959817402.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P7301810969268026711

`∩[A042965(n+1), A096157(n+1)]`
-/

namespace A257408.P7301810969268026711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257408.P7301810969268026711

namespace A257408

/-- `∩[A042965(n+1), A096157(n+1)]` -/
def P7301810969268026711.Spec : Prop :=
  ∀ n, (P7301810969268026711.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P3516912169432813018

`∩[A096157(n+1), A325130(n+1)]`
-/

namespace A257408.P3516912169432813018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257408.P3516912169432813018

namespace A257408

/-- `∩[A096157(n+1), A325130(n+1)]` -/
def P3516912169432813018.Spec : Prop :=
  ∀ n, (P3516912169432813018.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P13736798694229159840

`∩[A096157(n+1), A348004(n+1)]`
-/

namespace A257408.P13736798694229159840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257408.P13736798694229159840

namespace A257408

/-- `∩[A096157(n+1), A348004(n+1)]` -/
def P13736798694229159840.Spec : Prop :=
  ∀ n, (P13736798694229159840.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P1206003051934823703

`∪[2*A001747(n+1), A006005(n+1)]`
-/

namespace A257408.P1206003051934823703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257408.P1206003051934823703

namespace A257408

/-- `∪[2*A001747(n+1), A006005(n+1)]` -/
def P1206003051934823703.Spec : Prop :=
  ∀ n, (P1206003051934823703.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P2438846050814265417

`eq[A220400(A087230(n)²), A220400(n)]`
-/

namespace A257408.P2438846050814265417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A087230 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257408.P2438846050814265417

namespace A257408

/-- `eq[A220400(A087230(n)²), A220400(n)]` -/
def P2438846050814265417.Spec : Prop :=
  ∀ n, (P2438846050814265417.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P10961677169444188772

`lt[A277894(A316631(n))², A316631(n)]`
-/

namespace A257408.P10961677169444188772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (A316631 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257408.P10961677169444188772

namespace A257408

/-- `lt[A277894(A316631(n))², A316631(n)]` -/
def P10961677169444188772.Spec : Prop :=
  ∀ n, (P10961677169444188772.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P3198807009943903327

`eq[n, A028310(n)*A034178(A028310(n))]`
-/

namespace A257408.P3198807009943903327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257408.P3198807009943903327

namespace A257408

/-- `eq[n, A028310(n)*A034178(A028310(n))]` -/
def P3198807009943903327.Spec : Prop :=
  ∀ n, (P3198807009943903327.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P13098584316388472525

`eq[A100073(A000005(n+1)+1), A100073(n+1)]+1`
-/

namespace A257408.P13098584316388472525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257408.P13098584316388472525

namespace A257408

/-- `eq[A100073(A000005(n+1)+1), A100073(n+1)]+1` -/
def P13098584316388472525.Spec : Prop :=
  ∀ n, (P13098584316388472525.a n : ℤ) = A257408 (n + 1)

end A257408

/-! ## A257408.P648554069855480593

`eq[A086961(A112329(n+1)+1), A112329(n+1)]+1`
-/

namespace A257408.P648554069855480593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A112329 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257408.P648554069855480593

namespace A257408

/-- `eq[A086961(A112329(n+1)+1), A112329(n+1)]+1` -/
def P648554069855480593.Spec : Prop :=
  ∀ n, (P648554069855480593.a n : ℤ) = A257408 (n + 1)

end A257408

/-!
# A257409: Values of n such that there are exactly 2 solutions to x^2 - y^2 = n, with x > y >= 0.

The programs for A257409, the canonical program `A257409.P13798852354601103833` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257409 has offset 1).

The definition of A257409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257409.P1644831256346843966

`eq[A040001(n), A220400(n)]`
-/

namespace A257409.P1644831256346843966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P1644831256346843966

namespace A257409

/-- `eq[A040001(n), A220400(n)]` -/
def P1644831256346843966.Spec : Prop :=
  ∀ n, (P1644831256346843966.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P13798852354601103833

`eq[A121262(n)+1, A220400(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A257409

/-- `eq[A121262(n)+1, A220400(n)]` -/
def P13798852354601103833.Spec : Prop :=
  ∀ n, (P13798852354601103833.a n : ℤ) = A257409 (n + 1)

theorem P13798852354601103833.correct : P13798852354601103833.Spec := by
  intro n
  simp only [A257409, Nat.add_sub_cancel]

end A257409

/-! ## A257409.P8449400028158522739

`eq[A177405(a(n-1))+1, A220400(n)]` with `a(0)=2`
-/

namespace A257409.P8449400028158522739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A177405 (f1 (n - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P8449400028158522739

namespace A257409

/-- `eq[A177405(a(n-1))+1, A220400(n)]` -/
def P8449400028158522739.Spec : Prop :=
  ∀ n, (P8449400028158522739.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P13430783621788090633

`eq[A177405(5-a(n-1)), A220400(n)]` with `a(0)=2`
-/

namespace A257409.P13430783621788090633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A177405 (5 - f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P13430783621788090633

namespace A257409

/-- `eq[A177405(5-a(n-1)), A220400(n)]` -/
def P13430783621788090633.Spec : Prop :=
  ∀ n, (P13430783621788090633.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P17370176099358732373

`eq[A193804(a(n-1)+1)+1, A220400(n)]` with `a(0)=2`
-/

namespace A257409.P17370176099358732373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A193804 (f1 (n - 1) + 1).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P17370176099358732373

namespace A257409

/-- `eq[A193804(a(n-1)+1)+1, A220400(n)]` -/
def P17370176099358732373.Spec : Prop :=
  ∀ n, (P17370176099358732373.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P8579807322016143862

`eq[2, A034178(n+1)]+1`
-/

namespace A257409.P8579807322016143862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257409.P8579807322016143862

namespace A257409

/-- `eq[2, A034178(n+1)]+1` -/
def P8579807322016143862.Spec : Prop :=
  ∀ n, (P8579807322016143862.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P5512000307404183463

`eq[2, A034178(A028310(n))]`
-/

namespace A257409.P5512000307404183463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257409.P5512000307404183463

namespace A257409

/-- `eq[2, A034178(A028310(n))]` -/
def P5512000307404183463.Spec : Prop :=
  ∀ n, (P5512000307404183463.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P10174460228638062475

`eq[A087230(n), A220400(n)]`
-/

namespace A257409.P10174460228638062475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P10174460228638062475

namespace A257409

/-- `eq[A087230(n), A220400(n)]` -/
def P10174460228638062475.Spec : Prop :=
  ∀ n, (P10174460228638062475.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P15173554510770167026

`A020725(eq[2, A034178(n+1)])`
-/

namespace A257409.P15173554510770167026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257409.P15173554510770167026

namespace A257409

/-- `A020725(eq[2, A034178(n+1)])` -/
def P15173554510770167026.Spec : Prop :=
  ∀ n, P15173554510770167026.a n = A257409 (n + 1)

end A257409

/-! ## A257409.P5380380766502259510

`A061767(eq[2, A034178(n+1)])`
-/

namespace A257409.P5380380766502259510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257409.P5380380766502259510

namespace A257409

/-- `A061767(eq[2, A034178(n+1)])` -/
def P5380380766502259510.Spec : Prop :=
  ∀ n, P5380380766502259510.a n = A257409 (n + 1)

end A257409

/-! ## A257409.P3908630437440584984

`A065475(eq[2, A034178(n+1)])`
-/

namespace A257409.P3908630437440584984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257409.P3908630437440584984

namespace A257409

/-- `A065475(eq[2, A034178(n+1)])` -/
def P3908630437440584984.Spec : Prop :=
  ∀ n, P3908630437440584984.a n = A257409 (n + 1)

end A257409

/-! ## A257409.P2685542266458291947

`eq[A000034(n+1), A220400(n)]`
-/

namespace A257409.P2685542266458291947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P2685542266458291947

namespace A257409

/-- `eq[A000034(n+1), A220400(n)]` -/
def P2685542266458291947.Spec : Prop :=
  ∀ n, (P2685542266458291947.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P1460909042486520852

`eq[A059815(n+1), A220400(n)]`
-/

namespace A257409.P1460909042486520852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P1460909042486520852

namespace A257409

/-- `eq[A059815(n+1), A220400(n)]` -/
def P1460909042486520852.Spec : Prop :=
  ∀ n, (P1460909042486520852.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P879478823976356211

`eq[A059841(n)+1, A220400(n)]`
-/

namespace A257409.P879478823976356211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P879478823976356211

namespace A257409

/-- `eq[A059841(n)+1, A220400(n)]` -/
def P879478823976356211.Spec : Prop :=
  ∀ n, (P879478823976356211.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P80750920490846429

`eq[A091090(n+1), A220400(n)]`
-/

namespace A257409.P80750920490846429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P80750920490846429

namespace A257409

/-- `eq[A091090(n+1), A220400(n)]` -/
def P80750920490846429.Spec : Prop :=
  ∀ n, (P80750920490846429.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P4983289839692962974

`eq[A220400(n)+1, A176059(n)]`
-/

namespace A257409.P4983289839692962974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P4983289839692962974

namespace A257409

/-- `eq[A220400(n)+1, A176059(n)]` -/
def P4983289839692962974.Spec : Prop :=
  ∀ n, (P4983289839692962974.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P18107860519874756408

`eq[A001511(n+2), A220400(n)]`
-/

namespace A257409.P18107860519874756408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P18107860519874756408

namespace A257409

/-- `eq[A001511(n+2), A220400(n)]` -/
def P18107860519874756408.Spec : Prop :=
  ∀ n, (P18107860519874756408.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P298824356865384018

`eq[2, A000034(n)*A220400(n)]`
-/

namespace A257409.P298824356865384018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257409.P298824356865384018

namespace A257409

/-- `eq[2, A000034(n)*A220400(n)]` -/
def P298824356865384018.Spec : Prop :=
  ∀ n, (P298824356865384018.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P10634288633806486144

`eq[A107453(n+4), A220400(n)]`
-/

namespace A257409.P10634288633806486144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P10634288633806486144

namespace A257409

/-- `eq[A107453(n+4), A220400(n)]` -/
def P10634288633806486144.Spec : Prop :=
  ∀ n, (P10634288633806486144.a n : ℤ) = A257409 (n + 1)

end A257409

/-! ## A257409.P801807451753292128

`eq[A056594(n)²+1, A220400(n)]`
-/

namespace A257409.P801807451753292128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P801807451753292128

namespace A257409

/-- `eq[A056594(n)²+1, A220400(n)]` -/
def P801807451753292128.Spec : Prop :=
  ∀ n, (P801807451753292128.a n : ℤ) = A257409 (n + 1)

end A257409

/-!
# A257410: Values of n such that there are exactly 3 solutions to x^2 - y^2 = n with x > y >= 0.

The programs for A257410, the canonical program `A257410.P7877436251234973800` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257410 has offset 1).

The definition of A257410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257410.P7890544339285520853

`eq[A040001(n)+1, A220400(n)]`
-/

namespace A257410.P7890544339285520853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P7890544339285520853

namespace A257410

/-- `eq[A040001(n)+1, A220400(n)]` -/
def P7890544339285520853.Spec : Prop :=
  ∀ n, (P7890544339285520853.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P7877436251234973800

`eq[A121262(n)+2, A220400(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A257410

/-- `eq[A121262(n)+2, A220400(n)]` -/
def P7877436251234973800.Spec : Prop :=
  ∀ n, (P7877436251234973800.a n : ℤ) = A257410 (n + 1)

theorem P7877436251234973800.correct : P7877436251234973800.Spec := by
  intro n
  simp only [A257410, Nat.add_sub_cancel]

end A257410

/-! ## A257410.P1186602363481871401

`eq[3, A034178(n+1)]+1`
-/

namespace A257410.P1186602363481871401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257410.P1186602363481871401

namespace A257410

/-- `eq[3, A034178(n+1)]+1` -/
def P1186602363481871401.Spec : Prop :=
  ∀ n, (P1186602363481871401.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P12689318554507449023

`eq[A176059(n), A220400(n)]`
-/

namespace A257410.P12689318554507449023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P12689318554507449023

namespace A257410

/-- `eq[A176059(n), A220400(n)]` -/
def P12689318554507449023.Spec : Prop :=
  ∀ n, (P12689318554507449023.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P1693124863794935025

`eq[1, A034178(A028310(n))-2]`
-/

namespace A257410.P1693124863794935025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257410.P1693124863794935025

namespace A257410

/-- `eq[1, A034178(A028310(n))-2]` -/
def P1693124863794935025.Spec : Prop :=
  ∀ n, (P1693124863794935025.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P3604639727527298462

`eq[A087230(n)+1, A220400(n)]`
-/

namespace A257410.P3604639727527298462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P3604639727527298462

namespace A257410

/-- `eq[A087230(n)+1, A220400(n)]` -/
def P3604639727527298462.Spec : Prop :=
  ∀ n, (P3604639727527298462.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P15195055220924785938

`eq[A220400(n), A290102(n+1)]`
-/

namespace A257410.P15195055220924785938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P15195055220924785938

namespace A257410

/-- `eq[A220400(n), A290102(n+1)]` -/
def P15195055220924785938.Spec : Prop :=
  ∀ n, (P15195055220924785938.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P12609729094282933873

`eq[A056594(n)+2, A220400(n)]`
-/

namespace A257410.P12609729094282933873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P12609729094282933873

namespace A257410

/-- `eq[A056594(n)+2, A220400(n)]` -/
def P12609729094282933873.Spec : Prop :=
  ∀ n, (P12609729094282933873.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P9642133013662339095

`eq[A059841(n)+2, A220400(n)]`
-/

namespace A257410.P9642133013662339095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P9642133013662339095

namespace A257410

/-- `eq[A059841(n)+2, A220400(n)]` -/
def P9642133013662339095.Spec : Prop :=
  ∀ n, (P9642133013662339095.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P17407029954855997709

`eq[4, A220400(n)+A000034(n)]`
-/

namespace A257410.P17407029954855997709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257410.P17407029954855997709

namespace A257410

/-- `eq[4, A220400(n)+A000034(n)]` -/
def P17407029954855997709.Spec : Prop :=
  ∀ n, (P17407029954855997709.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P13258055910012059543

`eq[A059815(n+1)+1, A220400(n)]`
-/

namespace A257410.P13258055910012059543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059815 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P13258055910012059543

namespace A257410

/-- `eq[A059815(n+1)+1, A220400(n)]` -/
def P13258055910012059543.Spec : Prop :=
  ∀ n, (P13258055910012059543.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P16911102578226587035

`eq[A107453(n+4)+1, A220400(n)]`
-/

namespace A257410.P16911102578226587035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P16911102578226587035

namespace A257410

/-- `eq[A107453(n+4)+1, A220400(n)]` -/
def P16911102578226587035.Spec : Prop :=
  ∀ n, (P16911102578226587035.a n : ℤ) = A257410 (n + 1)

end A257410

/-! ## A257410.P3809465116973315327

`eq[A001511(n+2), A276331(A220400(n))]`
-/

namespace A257410.P3809465116973315327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A220400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P3809465116973315327

namespace A257410

/-- `eq[A001511(n+2), A276331(A220400(n))]` -/
def P3809465116973315327.Spec : Prop :=
  ∀ n, (P3809465116973315327.a n : ℤ) = A257410 (n + 1)

end A257410

/-!
# A257411: Values of n such that there are exactly 4 solutions to x^2 - y^2 = n with x > y >= 0.

The programs for A257411, the canonical program `A257411.P9185470921176240693` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257411 has offset 1).

The definition of A257411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257411.P5918023267535128136

`eq[A040001(n)+2, A220400(n)]`
-/

namespace A257411.P5918023267535128136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P5918023267535128136

namespace A257411

/-- `eq[A040001(n)+2, A220400(n)]` -/
def P5918023267535128136.Spec : Prop :=
  ∀ n, (P5918023267535128136.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P9185470921176240693

`eq[4, A034178(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257411

/-- `eq[4, A034178(n+1)]+1` -/
def P9185470921176240693.Spec : Prop :=
  ∀ n, (P9185470921176240693.a n : ℤ) = A257411 (n + 1)

theorem P9185470921176240693.correct : P9185470921176240693.Spec := by
  intro n
  simp only [A257411, Nat.add_sub_cancel]

end A257411

/-! ## A257411.P16138423480306433329

`eq[4, A034178(A028310(n))]`
-/

namespace A257411.P16138423480306433329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257411.P16138423480306433329

namespace A257411

/-- `eq[4, A034178(A028310(n))]` -/
def P16138423480306433329.Spec : Prop :=
  ∀ n, (P16138423480306433329.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P12051343037391130744

`A020725(eq[4, A034178(n+1)])`
-/

namespace A257411.P12051343037391130744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257411.P12051343037391130744

namespace A257411

/-- `A020725(eq[4, A034178(n+1)])` -/
def P12051343037391130744.Spec : Prop :=
  ∀ n, P12051343037391130744.a n = A257411 (n + 1)

end A257411

/-! ## A257411.P3183458033636321867

`A065475(eq[4, A034178(n+1)])`
-/

namespace A257411.P3183458033636321867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257411.P3183458033636321867

namespace A257411

/-- `A065475(eq[4, A034178(n+1)])` -/
def P3183458033636321867.Spec : Prop :=
  ∀ n, P3183458033636321867.a n = A257411 (n + 1)

end A257411

/-! ## A257411.P9971981603126671119

`eq[A176059(n)+1, A220400(n)]`
-/

namespace A257411.P9971981603126671119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P9971981603126671119

namespace A257411

/-- `eq[A176059(n)+1, A220400(n)]` -/
def P9971981603126671119.Spec : Prop :=
  ∀ n, (P9971981603126671119.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P17784392928057546986

`eq[A087230(n)+2, A220400(n)]`
-/

namespace A257411.P17784392928057546986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P17784392928057546986

namespace A257411

/-- `eq[A087230(n)+2, A220400(n)]` -/
def P17784392928057546986.Spec : Prop :=
  ∀ n, (P17784392928057546986.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P8461462186601173772

`eq[5, A220400(n)+A000034(n)]`
-/

namespace A257411.P8461462186601173772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n + A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257411.P8461462186601173772

namespace A257411

/-- `eq[5, A220400(n)+A000034(n)]` -/
def P8461462186601173772.Spec : Prop :=
  ∀ n, (P8461462186601173772.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P9694272804556131294

`eq[A290102(n+1)+1, A220400(n)]`
-/

namespace A257411.P9694272804556131294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290102 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P9694272804556131294

namespace A257411

/-- `eq[A290102(n+1)+1, A220400(n)]` -/
def P9694272804556131294.Spec : Prop :=
  ∀ n, (P9694272804556131294.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P7288151315855266696

`eq[A059815(n+1)+2, A220400(n)]`
-/

namespace A257411.P7288151315855266696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059815 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P7288151315855266696

namespace A257411

/-- `eq[A059815(n+1)+2, A220400(n)]` -/
def P7288151315855266696.Spec : Prop :=
  ∀ n, (P7288151315855266696.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P11504237085470287145

`eq[A107453(n+4)+2, A220400(n)]`
-/

namespace A257411.P11504237085470287145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P11504237085470287145

namespace A257411

/-- `eq[A107453(n+4)+2, A220400(n)]` -/
def P11504237085470287145.Spec : Prop :=
  ∀ n, (P11504237085470287145.a n : ℤ) = A257411 (n + 1)

end A257411

/-! ## A257411.P80109408014469255

`eq[A000045(A220400(n)), A176059(n)]`
-/

namespace A257411.P80109408014469255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A220400 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257411.P80109408014469255

namespace A257411

/-- `eq[A000045(A220400(n)), A176059(n)]` -/
def P80109408014469255.Spec : Prop :=
  ∀ n, (P80109408014469255.a n : ℤ) = A257411 (n + 1)

end A257411

/-!
# A257412: Values of n such that there are exactly 5 solutions to x^2 - y^2 = n with x > y >= 0.

The programs for A257412, the canonical program `A257412.P2136020918674413741` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257412 has offset 1).

The definition of A257412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257412.P2136020918674413741

`eq[5, A034178(A028310(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257412

/-- `eq[5, A034178(A028310(n))]` -/
def P2136020918674413741.Spec : Prop :=
  ∀ n, (P2136020918674413741.a n : ℤ) = A257412 (n + 1)

theorem P2136020918674413741.correct : P2136020918674413741.Spec := by
  intro n
  simp only [A257412, Nat.add_sub_cancel]

end A257412

/-! ## A257412.P15211813011663315486

`A020725(eq[5, A034178(n+1)])`
-/

namespace A257412.P15211813011663315486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257412.P15211813011663315486

namespace A257412

/-- `A020725(eq[5, A034178(n+1)])` -/
def P15211813011663315486.Spec : Prop :=
  ∀ n, P15211813011663315486.a n = A257412 (n + 1)

end A257412

/-! ## A257412.P15416987452122763838

`A065475(eq[5, A034178(n+1)])`
-/

namespace A257412.P15416987452122763838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257412.P15416987452122763838

namespace A257412

/-- `A065475(eq[5, A034178(n+1)])` -/
def P15416987452122763838.Spec : Prop :=
  ∀ n, P15416987452122763838.a n = A257412 (n + 1)

end A257412

/-! ## A257412.P13660653516328981050

`eq[A010710(n+1), A220400(n)]`
-/

namespace A257412.P13660653516328981050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257412.P13660653516328981050

namespace A257412

/-- `eq[A010710(n+1), A220400(n)]` -/
def P13660653516328981050.Spec : Prop :=
  ∀ n, (P13660653516328981050.a n : ℤ) = A257412 (n + 1)

end A257412

/-!
# A257413: Values of n such that there are exactly 6 solutions to x^2 - y^2 = n with x > y >= 0.

The programs for A257413, the canonical program `A257413.P16665506709251320358` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257413 has offset 1).

The definition of A257413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257413.P16665506709251320358

`eq[6, A034178(A028310(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257413

/-- `eq[6, A034178(A028310(n))]` -/
def P16665506709251320358.Spec : Prop :=
  ∀ n, (P16665506709251320358.a n : ℤ) = A257413 (n + 1)

theorem P16665506709251320358.correct : P16665506709251320358.Spec := by
  intro n
  simp only [A257413, Nat.add_sub_cancel]

end A257413

/-! ## A257413.P14222959744685171027

`A020725(eq[6, A034178(n+1)])`
-/

namespace A257413.P14222959744685171027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257413.P14222959744685171027

namespace A257413

/-- `A020725(eq[6, A034178(n+1)])` -/
def P14222959744685171027.Spec : Prop :=
  ∀ n, P14222959744685171027.a n = A257413 (n + 1)

end A257413

/-! ## A257413.P3885242120620344584

`A065475(eq[6, A034178(n+1)])`
-/

namespace A257413.P3885242120620344584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257413.P3885242120620344584

namespace A257413

/-- `A065475(eq[6, A034178(n+1)])` -/
def P3885242120620344584.Spec : Prop :=
  ∀ n, P3885242120620344584.a n = A257413 (n + 1)

end A257413

/-! ## A257413.P17630552684543060429

`eq[A049636(A087230(n)), A220400(n)]`
-/

namespace A257413.P17630552684543060429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (A087230 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257413.P17630552684543060429

namespace A257413

/-- `eq[A049636(A087230(n)), A220400(n)]` -/
def P17630552684543060429.Spec : Prop :=
  ∀ n, (P17630552684543060429.a n : ℤ) = A257413 (n + 1)

end A257413

/-!
# A257415: Values of n such that there are exactly 8 solutions to x^2 - y^2 = n with x > y >= 0.

The programs for A257415, the canonical program `A257415.P10533796931957512431` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257415 has offset 1).

The definition of A257415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257415.P10533796931957512431

`eq[8, A034178(A028310(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257415

/-- `eq[8, A034178(A028310(n))]` -/
def P10533796931957512431.Spec : Prop :=
  ∀ n, (P10533796931957512431.a n : ℤ) = A257415 (n + 1)

theorem P10533796931957512431.correct : P10533796931957512431.Spec := by
  intro n
  simp only [A257415, Nat.add_sub_cancel]

end A257415

/-! ## A257415.P18094706838023547804

`A153152(eq[8, A034178(n+1)])`
-/

namespace A257415.P18094706838023547804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257415.P18094706838023547804

namespace A257415

/-- `A153152(eq[8, A034178(n+1)])` -/
def P18094706838023547804.Spec : Prop :=
  ∀ n, P18094706838023547804.a n = A257415 (n + 1)

end A257415

/-!
# A257417: Values of n such that there are exactly 10 solutions to x^2 - y^2 = n with x > y >= 0.

The programs for A257417, there is no canonical definition to state claims against.
-/

/-! ## A257417.P13102250591723678553

`A310076(lcm(8, A030638(n+1)))`
-/

namespace A257417.P13102250591723678553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310076 (Int.lcm 8 (A030638 (n + 1)))

end

end A257417.P13102250591723678553

/-! ## A257417.P8159403625812172580

`A010675(A000670(n))*A030638(n+1)`
-/

namespace A257417.P8159403625812172580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 (A000670 n).toNat * A030638 (n + 1)

end

end A257417.P8159403625812172580

/-! ## A257417.P13332456709793137559

`A030638(n+1)*A088899(A038052(n))`
-/

namespace A257417.P13332456709793137559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1) * A088899 (A038052 n).toNat

end

end A257417.P13332456709793137559

/-!
# A257418: Number of pieces after a sheet of paper is folded n times and cut diagonally.

The programs for A257418, the canonical program `A257418.P9202250464617158013` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257418 has offset 0).

The definition of A257418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257418.P9202250464617158013

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=13, a(5)=23`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257418

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P9202250464617158013.Spec : Prop :=
  ∀ n, P9202250464617158013.a n = A257418 n

theorem P9202250464617158013.correct : P9202250464617158013.Spec := by
  intro n
  simp only [A257418]

end A257418

/-! ## A257418.P14706064352838916377

`∑[ceil(A005418(n+1)/2)]+1`
-/

namespace A257418.P14706064352838916377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005418 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257418.P14706064352838916377

namespace A257418

/-- `∑[ceil(A005418(n+1)/2)]+1` -/
def P14706064352838916377.Spec : Prop :=
  ∀ n, P14706064352838916377.a n = A257418 n

end A257418

/-! ## A257418.P2573543993622751598

`A011782(n)+∑[A166444(A065033(n))]`
-/

namespace A257418.P2573543993622751598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257418.P2573543993622751598

namespace A257418

/-- `A011782(n)+∑[A166444(A065033(n))]` -/
def P2573543993622751598.Spec : Prop :=
  ∀ n, P2573543993622751598.a n = A257418 n

end A257418

/-! ## A257418.P3515377308711115708

`A094373(A004526(n))+A005418(n+1)`
-/

namespace A257418.P3515377308711115708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A004526 n).toNat + A005418 (n + 1)

end

end A257418.P3515377308711115708

namespace A257418

/-- `A094373(A004526(n))+A005418(n+1)` -/
def P3515377308711115708.Spec : Prop :=
  ∀ n, P3515377308711115708.a n = A257418 n

end A257418

/-! ## A257418.P16233394702036289385

`A166444(n+1)+∑[A166444(A065033(n))]`
-/

namespace A257418.P16233394702036289385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257418.P16233394702036289385

namespace A257418

/-- `A166444(n+1)+∑[A166444(A065033(n))]` -/
def P16233394702036289385.Spec : Prop :=
  ∀ n, P16233394702036289385.a n = A257418 n

end A257418

/-! ## A257418.P8981201445479990010

`floor((A183979(n+1)-1)/2)`
-/

namespace A257418.P8981201445479990010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183979 (n + 1) - 1 : ℚ) / 2⌋

end

end A257418.P8981201445479990010

namespace A257418

/-- `floor((A183979(n+1)-1)/2)` -/
def P8981201445479990010.Spec : Prop :=
  ∀ n, P8981201445479990010.a n = A257418 n

end A257418

/-! ## A257418.P5791925300333727227

`floor((A183981(n+1)-10)/2)`
-/

namespace A257418.P5791925300333727227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183981 (n + 1) - 10 : ℚ) / 2⌋

end

end A257418.P5791925300333727227

namespace A257418

/-- `floor((A183981(n+1)-10)/2)` -/
def P5791925300333727227.Spec : Prop :=
  ∀ n, P5791925300333727227.a n = A257418 n

end A257418

/-! ## A257418.P3260917245000233834

`floor(A183982(n+1)/2)-10`
-/

namespace A257418.P3260917245000233834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183982 (n + 1) : ℚ) / 2⌋ - 10

end

end A257418.P3260917245000233834

namespace A257418

/-- `floor(A183982(n+1)/2)-10` -/
def P3260917245000233834.Spec : Prop :=
  ∀ n, P3260917245000233834.a n = A257418 n

end A257418

/-! ## A257418.P15757275070198946808

`∪[A343175(n), A343176(n)]`
-/

namespace A257418.P15757275070198946808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343176 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257418.P15757275070198946808

namespace A257418

/-- `∪[A343175(n), A343176(n)]` -/
def P15757275070198946808.Spec : Prop :=
  ∀ n, (P15757275070198946808.a n : ℤ) = A257418 n

end A257418

/-!
# A257419: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257419, there is no canonical definition to state claims against.
-/

/-! ## A257419.P1620530164239460183

`A257426(∑[4*n]+1)`
-/

namespace A257419.P1620530164239460183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257419.P1620530164239460183

/-! ## A257419.P3414296628335301005

`and(-1, A257426(A001844(n)))`
-/

namespace A257419.P3414296628335301005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A257426 (A001844 n).toNat)

end

end A257419.P3414296628335301005

/-! ## A257419.P6546858286566774051

`record[A257426(A330613(n+1))]`
-/

namespace A257419.P6546858286566774051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257419.P6546858286566774051

/-! ## A257419.P15673310279046335347

`record[A003982(n)*A257426(n+1)]`
-/

namespace A257419.P15673310279046335347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A257426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257419.P15673310279046335347

/-! ## A257419.P5475308698005080431

`record[A214505(n)*A257426(n+1)]`
-/

namespace A257419.P5475308698005080431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A257426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257419.P5475308698005080431

/-!
# A257420: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257420, there is no canonical definition to state claims against.
-/

/-! ## A257420.P6852401640868788431

`A257426(∑[n+2])`
-/

namespace A257420.P6852401640868788431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257420.P6852401640868788431

/-! ## A257420.P5290016894341169092

`record[A257426(abs(A201163(n)))]`
-/

namespace A257420.P5290016894341169092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257420.P5290016894341169092

/-! ## A257420.P2127196638782289532

`A257426(A000096(n+1))+char[24]`
-/

namespace A257420.P2127196638782289532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257420.P2127196638782289532

/-! ## A257420.P18325794678177134670

`record[A257426(n+2)/A172179(n+4)]`
-/

namespace A257420.P18325794678177134670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257426 (n + 2) : ℚ) / (A172179 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257420.P18325794678177134670

/-! ## A257420.P12970016127211841640

`A007318(C(2, n))*A257426(A000096(n+1))`
-/

namespace A257420.P12970016127211841640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A257426 (A000096 (n + 1)).toNat

end

end A257420.P12970016127211841640

/-!
# A257421: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257421, there is no canonical definition to state claims against.
-/

/-! ## A257421.P15370079497608269141

`A257426(∑[n+3]+1)`
-/

namespace A257421.P15370079497608269141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257421.P15370079497608269141

/-! ## A257421.P4668768034999688236

`record[A257426(A198464(n+1))]`
-/

namespace A257421.P4668768034999688236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257421.P4668768034999688236

/-! ## A257421.P5479640654578375305

`lcm(2, A257426(Δ[A008778(n)]))`
-/

namespace A257421.P5479640654578375305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257426 (f1 (n + 1) - f1 n).toNat)

end

end A257421.P5479640654578375305

/-! ## A257421.P4615827908007872964

`A257426(A141214(n)+1)+char[24]`
-/

namespace A257421.P4615827908007872964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A141214 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257421.P4615827908007872964

/-! ## A257421.P11950046463704126527

`A257426(A034856(n+2))+C(n, 64)`
-/

namespace A257421.P11950046463704126527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A034856 (n + 2)).toNat + (Nat.choose n 64 : ℤ)

end

end A257421.P11950046463704126527

/-!
# A257422: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257422, there is no canonical definition to state claims against.
-/

/-! ## A257422.P4426748669160645811

`A257426(∑[n+4]+3)`
-/

namespace A257422.P4426748669160645811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A257422.P4426748669160645811

/-! ## A257422.P13136386230211727385

`A257426(A141214(n+1))+char[29]`
-/

namespace A257422.P13136386230211727385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257422.P13136386230211727385

/-! ## A257422.P3962288599114584748

`A007318(C(n, 2))*A257426(A141214(n+1))`
-/

namespace A257422.P3962288599114584748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A257426 (A141214 (n + 1)).toNat

end

end A257422.P3962288599114584748

/-! ## A257422.P13796012142764242087

`A007318(gcd(n, n+1))*A257426(A141214(n+1))`
-/

namespace A257422.P13796012142764242087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A257426 (A141214 (n + 1)).toNat

end

end A257422.P13796012142764242087

/-! ## A257422.P9206823821310921607

`A257426(A141214(n+1))+2-A000032(C(n, n+1))`
-/

namespace A257422.P9206823821310921607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A141214 (n + 1)).toNat + 2 - A000032 (Nat.choose n (n + 1))

end

end A257422.P9206823821310921607

/-!
# A257423: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257423, there is no canonical definition to state claims against.
-/

/-! ## A257423.P17098299794915840570

`A257426(Δ[A264443(n)])`
-/

namespace A257423.P17098299794915840570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (f1 (n + 1) - f1 n).toNat

end

end A257423.P17098299794915840570

/-! ## A257423.P6509065615786757625

`A257426(A046691(n+3))`
-/

namespace A257423.P6509065615786757625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A046691 (n + 3)).toNat

end

end A257423.P6509065615786757625

/-! ## A257423.P11195346366533708939

`A257426(A056115(n)+11)`
-/

namespace A257423.P11195346366533708939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056115 n + 11).toNat

end

end A257423.P11195346366533708939

/-! ## A257423.P17222446037115199337

`A257426(eq[2, A092921(n)])`
-/

namespace A257423.P17222446037115199337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257423.P17222446037115199337

/-! ## A257423.P10499314878703400698

`A257426(eq[3, A152157(n)])`
-/

namespace A257423.P10499314878703400698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257423.P10499314878703400698

/-!
# A257424: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257424, there is no canonical definition to state claims against.
-/

/-! ## A257424.P11832701314692213254

`A257426(A052905(n+3))`
-/

namespace A257424.P11832701314692213254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A052905 (n + 3)).toNat

end

end A257424.P11832701314692213254

/-! ## A257424.P7440929260510781043

`A257426(A302537(n)+15)`
-/

namespace A257424.P7440929260510781043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A302537 n + 15).toNat

end

end A257424.P7440929260510781043

/-! ## A257424.P2552370323452397941

`A257426(A056119(n)+16)`
-/

namespace A257424.P2552370323452397941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056119 n + 16).toNat

end

end A257424.P2552370323452397941

/-! ## A257424.P11810450394407672244

`A257426(eq[3, A219347(n)])`
-/

namespace A257424.P11810450394407672244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257424.P11810450394407672244

/-! ## A257424.P16520430792450322018

`A257426(eq[5, A193592(n)])`
-/

namespace A257424.P16520430792450322018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257424.P16520430792450322018

/-!
# A257425: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257425, there is no canonical definition to state claims against.
-/

/-! ## A257425.P1793645752489336101

`A257426(A055999(n+4))`
-/

namespace A257425.P1793645752489336101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A055999 (n + 4)).toNat

end

end A257425.P1793645752489336101

/-! ## A257425.P14067270601452553750

`A257426(eq[4, A219347(n)])`
-/

namespace A257425.P14067270601452553750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257425.P14067270601452553750

/-! ## A257425.P16985674340230120448

`A257426(eq[6, A193592(n)])`
-/

namespace A257425.P16985674340230120448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257425.P16985674340230120448

/-! ## A257425.P15971291760503188047

`A257426(Δ[A023551(n+2)])`
-/

namespace A257425.P15971291760503188047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (f1 (n + 1) - f1 n).toNat

end

end A257425.P15971291760503188047

/-! ## A257425.P11565151490665183524

`A257426(A052905(n+4)-1)`
-/

namespace A257425.P11565151490665183524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A052905 (n + 4) - 1).toNat

end

end A257425.P11565151490665183524

/-!
# A257427: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257427, there is no canonical definition to state claims against.
-/

/-! ## A257427.P11507120015587365114

`A257426(∑[n+1]+2)`
-/

namespace A257427.P11507120015587365114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257427.P11507120015587365114

/-! ## A257427.P4913205961805913937

`record[A257426(A061857(n+1)+2)]`
-/

namespace A257427.P4913205961805913937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A061857 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257427.P4913205961805913937

/-! ## A257427.P18062470085319901146

`A257426(A000096(n)+3)+char[28]`
-/

namespace A257427.P18062470085319901146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257427.P18062470085319901146

/-! ## A257427.P13815534111182413342

`record[A010054(n)*A257426(n+2)]`
-/

namespace A257427.P13815534111182413342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257426 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257427.P13815534111182413342

/-! ## A257427.P11371969422031299512

`record[root(A257426(n+2), A013610(n))]`
-/

namespace A257427.P11371969422031299512
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257426 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257427.P11371969422031299512

/-!
# A257428: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257428, there is no canonical definition to state claims against.
-/

/-! ## A257428.P14434017278874526000

`A257426(∑[n+2]+4)`
-/

namespace A257428.P14434017278874526000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A257428.P14434017278874526000

/-! ## A257428.P10956192702460909740

`or(char[1], A257426(A167614(n+1)))`
-/

namespace A257428.P10956192702460909740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257426 (A167614 (n + 1)).toNat)

end

end A257428.P10956192702460909740

/-! ## A257428.P1212190788627306144

`or(char[1], A257426(A046691(n)+7))`
-/

namespace A257428.P1212190788627306144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257426 (A046691 n + 7).toNat)

end

end A257428.P1212190788627306144

/-! ## A257428.P6241081121644158147

`A257426(A152949(n+4))+char[24]`
-/

namespace A257428.P6241081121644158147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A152949 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257428.P6241081121644158147

/-! ## A257428.P4094110947952878495

`A257426(A055998(n)+6)+char[27]`
-/

namespace A257428.P4094110947952878495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257428.P4094110947952878495

/-!
# A257429: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257429, there is no canonical definition to state claims against.
-/

/-! ## A257429.P16532341727284318824

`A257426(∑[n+3]+7)`
-/

namespace A257429.P16532341727284318824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A257429.P16532341727284318824

/-! ## A257429.P15079336358885781651

`or(char[1], A257426(A027379(n+1)+7))`
-/

namespace A257429.P15079336358885781651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257426 (A027379 (n + 1) + 7).toNat)

end

end A257429.P15079336358885781651

/-! ## A257429.P17605023625853162983

`A007318(C(2, n))*A257426(A027379(n+1)+7)`
-/

namespace A257429.P17605023625853162983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A257426 (A027379 (n + 1) + 7).toNat

end

end A257429.P17605023625853162983

/-! ## A257429.P3023320541248063090

`A007318(and(3, -n))*A257426(A027379(n+1)+7)`
-/

namespace A257429.P3023320541248063090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A257426 (A027379 (n + 1) + 7).toNat

end

end A257429.P3023320541248063090

/-! ## A257429.P16101519969339617679

`(A000041(n)%2)!*A257426(A027379(n+1)+7)`
-/

namespace A257429.P16101519969339617679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A257426 (A027379 (n + 1) + 7).toNat

end

end A257429.P16101519969339617679

/-!
# A257430: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257430, there is no canonical definition to state claims against.
-/

/-! ## A257430.P4778007426615142185

`A257426(∑[n+4]+11)`
-/

namespace A257430.P4778007426615142185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A257430.P4778007426615142185

/-! ## A257430.P17149649179013141285

`A257426(A056000(n)+15)%A257424(n+1)`
-/

namespace A257430.P17149649179013141285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257426 (A056000 n + 15).toNat) (A257424 (n + 1))

end

end A257430.P17149649179013141285

/-! ## A257430.P18005544586426369933

`A257426(A056000(n)+15)+A008683(16*(n+1))`
-/

namespace A257430.P18005544586426369933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056000 n + 15).toNat + A008683 (16 * (n + 1))

end

end A257430.P18005544586426369933

/-! ## A257430.P8285037093350712207

`A001221(A006562(n+1))*A257426(A056000(n)+15)`
-/

namespace A257430.P8285037093350712207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006562 (n + 1)).toNat * A257426 (A056000 n + 15).toNat

end

end A257430.P8285037093350712207

/-!
# A257431: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257431, there is no canonical definition to state claims against.
-/

/-! ## A257431.P3469485492404801558

`A257426(A166136(n+4))`
-/

namespace A257431.P3469485492404801558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A166136 (n + 4)).toNat

end

end A257431.P3469485492404801558

/-! ## A257431.P9908323608078024560

`A257426(A056115(n)+21)`
-/

namespace A257431.P9908323608078024560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056115 n + 21).toNat

end

end A257431.P9908323608078024560

/-! ## A257431.P8073436345569655125

`A257426(A167499(n+4)+1)`
-/

namespace A257431.P8073436345569655125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A167499 (n + 4) + 1).toNat

end

end A257431.P8073436345569655125

/-! ## A257431.P11131785801751365699

`A257426(A167614(n+4)+3)`
-/

namespace A257431.P11131785801751365699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A167614 (n + 4) + 3).toNat

end

end A257431.P11131785801751365699

/-! ## A257431.P16471163674101674546

`A257426(A000124(n+5)+5)`
-/

namespace A257431.P16471163674101674546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A000124 (n + 5) + 5).toNat

end

end A257431.P16471163674101674546

/-!
# A257432: Number of (7+2) X (n+2) 0..1 arrays with every 3 X 3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257432, there is no canonical definition to state claims against.
-/

/-! ## A257432.P5139960132597245350

`A257426(A056119(n)+28)`
-/

namespace A257432.P5139960132597245350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056119 n + 28).toNat

end

end A257432.P5139960132597245350

/-! ## A257432.P7979018929879195093

`A257426(eq[11, A066657(n)])`
-/

namespace A257432.P7979018929879195093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257432.P7979018929879195093

/-! ## A257432.P12849914632001863542

`A257426(A167499(n+5)+2)`
-/

namespace A257432.P12849914632001863542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A167499 (n + 5) + 2).toNat

end

end A257432.P12849914632001863542

/-! ## A257432.P5317753777403107984

`A257426(A167614(n+5)+4)`
-/

namespace A257432.P5317753777403107984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A167614 (n + 5) + 4).toNat

end

end A257432.P5317753777403107984

/-! ## A257432.P1777780671193182631

`A257426(A133263(n+6)+5)`
-/

namespace A257432.P1777780671193182631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A133263 (n + 6) + 5).toNat

end

end A257432.P1777780671193182631

/-!
# A257439: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257439, there is no canonical definition to state claims against.
-/

/-! ## A257439.P3226220429548336178

`A257447(∑[4*n]+1)`
-/

namespace A257439.P3226220429548336178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257439.P3226220429548336178

/-! ## A257439.P9205370951274445440

`or(char[2], A257447(A001844(n)))`
-/

namespace A257439.P9205370951274445440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A001844 n).toNat)

end

end A257439.P9205370951274445440

/-! ## A257439.P7928200324804854340

`A257447(A001844(n))+A025443(n)`
-/

namespace A257439.P7928200324804854340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A001844 n).toNat + A025443 n

end

end A257439.P7928200324804854340

/-! ## A257439.P8081828010689355193

`A007318(∑[n])*A257447(A001844(n))`
-/

namespace A257439.P8081828010689355193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A257447 (A001844 n).toNat

end

end A257439.P8081828010689355193

/-! ## A257439.P17232598742264935401

`A257447(A001844(n))%A233717(n+1)`
-/

namespace A257439.P17232598742264935401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257447 (A001844 n).toNat) (A233717 (n + 1))

end

end A257439.P17232598742264935401

/-!
# A257440: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257440, there is no canonical definition to state claims against.
-/

/-! ## A257440.P2421107719688260999

`A257447(∑[n]+1)`
-/

namespace A257440.P2421107719688260999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257440.P2421107719688260999

/-! ## A257440.P2205521128079611710

`record[A257447(n+1)]`
-/

namespace A257440.P2205521128079611710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257440.P2205521128079611710

/-! ## A257440.P7370541255388824273

`abs(1-A257447(C(n+1, 2)+1))+1`
-/

namespace A257440.P7370541255388824273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A257447 (Nat.choose (n + 1) 2 + 1)| + 1

end

end A257440.P7370541255388824273

/-! ## A257440.P875640977084272781

`or(char[2], A257447(A000124(n)))`
-/

namespace A257440.P875640977084272781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A000124 n).toNat)

end

end A257440.P875640977084272781

/-! ## A257440.P2029937544976234731

`abs(A257447(A000217(n)+1)-n)+n`
-/

namespace A257440.P2029937544976234731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257447 (A000217 n + 1).toNat - (n : ℤ)| + (n : ℤ)

end

end A257440.P2029937544976234731

/-! ## A257440.P13935476384447110156

`A257447(C(n+1, 2)+1)%A257445(n+1)`
-/

namespace A257440.P13935476384447110156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257447 (Nat.choose (n + 1) 2 + 1)) (A257445 (n + 1))

end

end A257440.P13935476384447110156

/-! ## A257440.P8063086510943319187

`A257447(A000124(n))%A016961(n)`
-/

namespace A257440.P8063086510943319187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257447 (A000124 n).toNat) (A016961 n)

end

end A257440.P8063086510943319187

/-! ## A257440.P11807397306056858125

`A257447(A000124(n))+A000007(n+1)`
-/

namespace A257440.P11807397306056858125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A000124 n).toNat + A000007 (n + 1)

end

end A257440.P11807397306056858125

/-! ## A257440.P12178480854200560310

`A007318(C(2, n))*A257447(A000124(n))`
-/

namespace A257440.P12178480854200560310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A257447 (A000124 n).toNat

end

end A257440.P12178480854200560310

/-! ## A257440.P2930787430044226686

`A257447(A000124(n))/A007318(C(n, 64))`
-/

namespace A257440.P2930787430044226686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257447 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose n 64) : ℚ)

end

end A257440.P2930787430044226686

/-!
# A257441: Number of (n+2) X (2+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257441, the canonical program `A257441.P4642174828422543324` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257441 has offset 1).

The definition of A257441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257441.P4642174828422543324

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=36, a(1)=38, a(2)=41, a(3)=51, a(4)=68, a(5)=95, a(6)=134, a(7)=191`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257441

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P4642174828422543324.Spec : Prop :=
  ∀ n, P4642174828422543324.a n = A257441 (n + 1)

theorem P4642174828422543324.correct : P4642174828422543324.Spec := by
  intro n
  simp only [A257441, Nat.add_sub_cancel]

end A257441

/-! ## A257441.P7486000379416382723

`A257447(∑[n+1]+2)`
-/

namespace A257441.P7486000379416382723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257441.P7486000379416382723

namespace A257441

/-- `A257447(∑[n+1]+2)` -/
def P7486000379416382723.Spec : Prop :=
  ∀ n, P7486000379416382723.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P3527783727016630102

`record[A257447(A008795(n)+2)]`
-/

namespace A257441.P3527783727016630102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257441.P3527783727016630102

namespace A257441

/-- `record[A257447(A008795(n)+2)]` -/
def P3527783727016630102.Spec : Prop :=
  ∀ n, P3527783727016630102.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P3886891052231226140

`record[A257447(A133263(abs(1-n)))]`
-/

namespace A257441.P3886891052231226140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257441.P3886891052231226140

namespace A257441

/-- `record[A257447(A133263(abs(1-n)))]` -/
def P3886891052231226140.Spec : Prop :=
  ∀ n, P3886891052231226140.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P3415122590312627492

`or(char[2], A257447(A000096(n)+3))`
-/

namespace A257441.P3415122590312627492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A000096 n + 3).toNat)

end

end A257441.P3415122590312627492

namespace A257441

/-- `or(char[2], A257447(A000096(n)+3))` -/
def P3415122590312627492.Spec : Prop :=
  ∀ n, P3415122590312627492.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P8036872609663307692

`A000045(gcd(n, n+1))*A257447(A133263(n+1))`
-/

namespace A257441.P8036872609663307692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A257447 (A133263 (n + 1)).toNat

end

end A257441.P8036872609663307692

namespace A257441

/-- `A000045(gcd(n, n+1))*A257447(A133263(n+1))` -/
def P8036872609663307692.Spec : Prop :=
  ∀ n, P8036872609663307692.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P16658773779589297280

`A257447(A000096(n)+3)+A001222(((-1)^n)²)`
-/

namespace A257441.P16658773779589297280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A000096 n + 3).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A257441.P16658773779589297280

namespace A257441

/-- `A257447(A000096(n)+3)+A001222(((-1)^n)²)` -/
def P16658773779589297280.Spec : Prop :=
  ∀ n, P16658773779589297280.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P12301475403655847896

`and(1, A000010(n+2))!*A257447(A000096(n)+3)`
-/

namespace A257441.P12301475403655847896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℤ) * A257447 (A000096 n + 3).toNat

end

end A257441.P12301475403655847896

namespace A257441

/-- `and(1, A000010(n+2))!*A257447(A000096(n)+3)` -/
def P12301475403655847896.Spec : Prop :=
  ∀ n, P12301475403655847896.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P9673266175464838146

`xor(1, xor(1, A257447(A000096(n+1))))`
-/

namespace A257441.P9673266175464838146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A257447 (A000096 (n + 1)).toNat))

end

end A257441.P9673266175464838146

namespace A257441

/-- `xor(1, xor(1, A257447(A000096(n+1))))` -/
def P9673266175464838146.Spec : Prop :=
  ∀ n, P9673266175464838146.a n = A257441 (n + 1)

end A257441

/-! ## A257441.P7476277947765663721

`A257447(A000096(n+1))%A000219(n+9)`
-/

namespace A257441.P7476277947765663721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257447 (A000096 (n + 1)).toNat) (A000219 (n + 9))

end

end A257441.P7476277947765663721

namespace A257441

/-- `A257447(A000096(n+1))%A000219(n+9)` -/
def P7476277947765663721.Spec : Prop :=
  ∀ n, P7476277947765663721.a n = A257441 (n + 1)

end A257441

/-!
# A257442: Number of (n+2) X (3+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257442, the canonical program `A257442.P4188754951773174610` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257442 has offset 1).

The definition of A257442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257442.P4188754951773174610

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=39, a(1)=41, a(2)=47, a(3)=59, a(4)=77, a(5)=104`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257442

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P4188754951773174610.Spec : Prop :=
  ∀ n, P4188754951773174610.a n = A257442 (n + 1)

theorem P4188754951773174610.correct : P4188754951773174610.Spec := by
  intro n
  simp only [A257442, Nat.add_sub_cancel]

end A257442

/-! ## A257442.P11757633327320132485

`A257447(∑[n+2]+4)`
-/

namespace A257442.P11757633327320132485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A257442.P11757633327320132485

namespace A257442

/-- `A257447(∑[n+2]+4)` -/
def P11757633327320132485.Spec : Prop :=
  ∀ n, P11757633327320132485.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P11229342479756748336

`record[A257447(A008795(n)+3)]`
-/

namespace A257442.P11229342479756748336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257442.P11229342479756748336

namespace A257442

/-- `record[A257447(A008795(n)+3)]` -/
def P11229342479756748336.Spec : Prop :=
  ∀ n, P11229342479756748336.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P8984784149591217750

`or(char[1], A257447(A167614(n+1)))`
-/

namespace A257442.P8984784149591217750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A167614 (n + 1)).toNat)

end

end A257442.P8984784149591217750

namespace A257442

/-- `or(char[1], A257447(A167614(n+1)))` -/
def P8984784149591217750.Spec : Prop :=
  ∀ n, P8984784149591217750.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P5046367551703798068

`and(log2(1/2), A257447(A055998(n)+6))`
-/

namespace A257442.P5046367551703798068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A257447 (A055998 n + 6).toNat)

end

end A257442.P5046367551703798068

namespace A257442

/-- `and(log2(1/2), A257447(A055998(n)+6))` -/
def P5046367551703798068.Spec : Prop :=
  ∀ n, P5046367551703798068.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P12030359919046709168

`or(char[1], A257447(A000124(n+2)+2))`
-/

namespace A257442.P12030359919046709168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A000124 (n + 2) + 2).toNat)

end

end A257442.P12030359919046709168

namespace A257442

/-- `or(char[1], A257447(A000124(n+2)+2))` -/
def P12030359919046709168.Spec : Prop :=
  ∀ n, P12030359919046709168.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P11363100531201006743

`A007318(C(2, n))*A257447(A055998(n)+6)`
-/

namespace A257442.P11363100531201006743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A257447 (A055998 n + 6).toNat

end

end A257442.P11363100531201006743

namespace A257442

/-- `A007318(C(2, n))*A257447(A055998(n)+6)` -/
def P11363100531201006743.Spec : Prop :=
  ∀ n, P11363100531201006743.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P2746369891602990469

`A007318(C(2, n))*A257447(A000124(n+2)+2)`
-/

namespace A257442.P2746369891602990469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A257447 (A000124 (n + 2) + 2).toNat

end

end A257442.P2746369891602990469

namespace A257442

/-- `A007318(C(2, n))*A257447(A000124(n+2)+2)` -/
def P2746369891602990469.Spec : Prop :=
  ∀ n, P2746369891602990469.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P20590825227416729

`A014963(6*(n+1))*A257447(A000124(n+2)+2)`
-/

namespace A257442.P20590825227416729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A257447 (A000124 (n + 2) + 2).toNat

end

end A257442.P20590825227416729

namespace A257442

/-- `A014963(6*(n+1))*A257447(A000124(n+2)+2)` -/
def P20590825227416729.Spec : Prop :=
  ∀ n, P20590825227416729.a n = A257442 (n + 1)

end A257442

/-! ## A257442.P670679779963761498

`A257447(A000124(n+2)+2)+(2*A000045(n))%2`
-/

namespace A257442.P670679779963761498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A000124 (n + 2) + 2).toNat + Int.tmod (2 * A000045 n) 2

end

end A257442.P670679779963761498

namespace A257442

/-- `A257447(A000124(n+2)+2)+(2*A000045(n))%2` -/
def P670679779963761498.Spec : Prop :=
  ∀ n, P670679779963761498.a n = A257442 (n + 1)

end A257442

/-!
# A257443: Number of (n+2) X (4+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257443, the canonical program `A257443.P16871600136131898385` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257443 has offset 1).

The definition of A257443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257443.P16871600136131898385

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=49, a(1)=51, a(2)=59, a(3)=71, a(4)=89, a(5)=116`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257443

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P16871600136131898385.Spec : Prop :=
  ∀ n, P16871600136131898385.a n = A257443 (n + 1)

theorem P16871600136131898385.correct : P16871600136131898385.Spec := by
  intro n
  simp only [A257443, Nat.add_sub_cancel]

end A257443

/-! ## A257443.P6753024042036170685

`A257447(∑[n+3]+7)`
-/

namespace A257443.P6753024042036170685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A257443.P6753024042036170685

namespace A257443

/-- `A257447(∑[n+3]+7)` -/
def P6753024042036170685.Spec : Prop :=
  ∀ n, P6753024042036170685.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P3558765232753110845

`or(char[1], A257447(A145018(n+4)))`
-/

namespace A257443.P3558765232753110845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A145018 (n + 4)).toNat)

end

end A257443.P3558765232753110845

namespace A257443

/-- `or(char[1], A257447(A145018(n+4)))` -/
def P3558765232753110845.Spec : Prop :=
  ∀ n, P3558765232753110845.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P10900685452766663836

`or(char[1], A257447(A167614(n+2)+1))`
-/

namespace A257443.P10900685452766663836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A167614 (n + 2) + 1).toNat)

end

end A257443.P10900685452766663836

namespace A257443

/-- `or(char[1], A257447(A167614(n+2)+1))` -/
def P10900685452766663836.Spec : Prop :=
  ∀ n, P10900685452766663836.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P17100516401429329960

`or(char[1], A257447(A161680(n+4)+4))`
-/

namespace A257443.P17100516401429329960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A257447 (A161680 (n + 4) + 4).toNat)

end

end A257443.P17100516401429329960

namespace A257443

/-- `or(char[1], A257447(A161680(n+4)+4))` -/
def P17100516401429329960.Spec : Prop :=
  ∀ n, P17100516401429329960.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P2940968163258397184

`A057427(n+1)*A257447(A145018(n+4))`
-/

namespace A257443.P2940968163258397184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A257447 (A145018 (n + 4)).toNat

end

end A257443.P2940968163258397184

namespace A257443

/-- `A057427(n+1)*A257447(A145018(n+4))` -/
def P2940968163258397184.Spec : Prop :=
  ∀ n, P2940968163258397184.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P15113077091833778323

`A007318(C(2, n))*A257447(A145018(n+4))`
-/

namespace A257443.P15113077091833778323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A257447 (A145018 (n + 4)).toNat

end

end A257443.P15113077091833778323

namespace A257443

/-- `A007318(C(2, n))*A257447(A145018(n+4))` -/
def P15113077091833778323.Spec : Prop :=
  ∀ n, P15113077091833778323.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P9733255963363421290

`A007318(C(n, 2))*A257447(A167614(n+2)+1)`
-/

namespace A257443.P9733255963363421290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A257447 (A167614 (n + 2) + 1).toNat

end

end A257443.P9733255963363421290

namespace A257443

/-- `A007318(C(n, 2))*A257447(A167614(n+2)+1)` -/
def P9733255963363421290.Spec : Prop :=
  ∀ n, P9733255963363421290.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P17981069925455260383

`A014963(gcd(n, n+1))*A257447(A145018(n+4))`
-/

namespace A257443.P17981069925455260383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A257447 (A145018 (n + 4)).toNat

end

end A257443.P17981069925455260383

namespace A257443

/-- `A014963(gcd(n, n+1))*A257447(A145018(n+4))` -/
def P17981069925455260383.Spec : Prop :=
  ∀ n, P17981069925455260383.a n = A257443 (n + 1)

end A257443

/-! ## A257443.P13974549350424338157

`A014963(ceil(1/(n+1)))*A257447(A145018(n+4))`
-/

namespace A257443.P13974549350424338157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌈1 / (n + 1 : ℚ)⌉.toNat * A257447 (A145018 (n + 4)).toNat

end

end A257443.P13974549350424338157

namespace A257443

/-- `A014963(ceil(1/(n+1)))*A257447(A145018(n+4))` -/
def P13974549350424338157.Spec : Prop :=
  ∀ n, P13974549350424338157.a n = A257443 (n + 1)

end A257443

/-!
# A257444: Number of (n+2) X (5+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257444, the canonical program `A257444.P1880484331838550698` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257444 has offset 1).

The definition of A257444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257444.P10681836553415774519

`A255225(n+1)+A054977(n)²`
-/

namespace A257444.P10681836553415774519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A054977 n ^ 2

end

end A257444.P10681836553415774519

namespace A257444

/-- `A255225(n+1)+A054977(n)²` -/
def P10681836553415774519.Spec : Prop :=
  ∀ n, P10681836553415774519.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P1880484331838550698

`A255225(n+1)+A019428(A008574(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257444

/-- `A255225(n+1)+A019428(A008574(n))` -/
def P1880484331838550698.Spec : Prop :=
  ∀ n, P1880484331838550698.a n = A257444 (n + 1)

theorem P1880484331838550698.correct : P1880484331838550698.Spec := by
  intro n
  simp only [A257444, Nat.add_sub_cancel]

end A257444

/-! ## A257444.P2308246759830653998

`A255225(n+1)+A208645(A007843(n))`
-/

namespace A257444.P2308246759830653998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A208645 (A007843 n).toNat

end

end A257444.P2308246759830653998

namespace A257444

/-- `A255225(n+1)+A208645(A007843(n))` -/
def P2308246759830653998.Spec : Prop :=
  ∀ n, P2308246759830653998.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P3847795876525593882

`A255225(n+1)+A208645(A008458(n))`
-/

namespace A257444.P3847795876525593882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A208645 (A008458 n).toNat

end

end A257444.P3847795876525593882

namespace A257444

/-- `A255225(n+1)+A208645(A008458(n))` -/
def P3847795876525593882.Spec : Prop :=
  ∀ n, P3847795876525593882.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P5175109190372871576

`A255225(n+1)+A019428(A066043(n+1))`
-/

namespace A257444.P5175109190372871576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A019428 (A066043 (n + 1)).toNat

end

end A257444.P5175109190372871576

namespace A257444

/-- `A255225(n+1)+A019428(A066043(n+1))` -/
def P5175109190372871576.Spec : Prop :=
  ∀ n, P5175109190372871576.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P6742734459000129607

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=65, a(1)=68, a(2)=77, a(3)=89, a(4)=107`
-/

namespace A257444.P6742734459000129607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [65, 68, 77, 89, 107] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A257444.P6742734459000129607

namespace A257444

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P6742734459000129607.Spec : Prop :=
  ∀ n, P6742734459000129607.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P9564886659961361242

`A255225(n+1)+A208645(A134058(n))`
-/

namespace A257444.P9564886659961361242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A208645 (A134058 n).toNat

end

end A257444.P9564886659961361242

namespace A257444

/-- `A255225(n+1)+A208645(A134058(n))` -/
def P9564886659961361242.Spec : Prop :=
  ∀ n, P9564886659961361242.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P12409905631818916115

`A255225(n+1)+A102376(A151934(n))`
-/

namespace A257444.P12409905631818916115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A102376 (A151934 n).toNat

end

end A257444.P12409905631818916115

namespace A257444

/-- `A255225(n+1)+A102376(A151934(n))` -/
def P12409905631818916115.Spec : Prop :=
  ∀ n, P12409905631818916115.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P9282517092427409671

`A257447(A374005(n+1))`
-/

namespace A257444.P9282517092427409671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A374005 (n + 1)).toNat

end

end A257444.P9282517092427409671

namespace A257444

/-- `A257447(A374005(n+1))` -/
def P9282517092427409671.Spec : Prop :=
  ∀ n, P9282517092427409671.a n = A257444 (n + 1)

end A257444

/-! ## A257444.P11291887029596701149

`A257447(A167614(n+3)+2)`
-/

namespace A257444.P11291887029596701149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A167614 (n + 3) + 2).toNat

end

end A257444.P11291887029596701149

namespace A257444

/-- `A257447(A167614(n+3)+2)` -/
def P11291887029596701149.Spec : Prop :=
  ∀ n, P11291887029596701149.a n = A257444 (n + 1)

end A257444

/-!
# A257445: Number of (n+2) X (6+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257445, the canonical program `A257445.P15690453960209871658` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257445 has offset 1).

The definition of A257445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257445.P17252666818684722762

`A255226(n+1)+A054977(n)`
-/

namespace A257445.P17252666818684722762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A054977 n

end

end A257445.P17252666818684722762

namespace A257445

/-- `A255226(n+1)+A054977(n)` -/
def P17252666818684722762.Spec : Prop :=
  ∀ n, P17252666818684722762.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P8846554187112597653

`A255226(n+1)+gcd(n, A013634(n))`
-/

namespace A257445.P8846554187112597653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + (Int.gcd (n : ℤ) (A013634 n) : ℤ)

end

end A257445.P8846554187112597653

namespace A257445

/-- `A255226(n+1)+gcd(n, A013634(n))` -/
def P8846554187112597653.Spec : Prop :=
  ∀ n, P8846554187112597653.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P15690453960209871658

`A255226(n+1)+A000034(A001316(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257445

/-- `A255226(n+1)+A000034(A001316(n))` -/
def P15690453960209871658.Spec : Prop :=
  ∀ n, P15690453960209871658.a n = A257445 (n + 1)

theorem P15690453960209871658.correct : P15690453960209871658.Spec := by
  intro n
  simp only [A257445, Nat.add_sub_cancel]

end A257445

/-! ## A257445.P12907310205552956601

`A255226(n+1)+A000034(A008458(n))`
-/

namespace A257445.P12907310205552956601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A000034 (A008458 n).toNat

end

end A257445.P12907310205552956601

namespace A257445

/-- `A255226(n+1)+A000034(A008458(n))` -/
def P12907310205552956601.Spec : Prop :=
  ∀ n, P12907310205552956601.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P1524121353744226561

`A255226(n+1)+A000034(A008574(n))`
-/

namespace A257445.P1524121353744226561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A000034 (A008574 n).toNat

end

end A257445.P1524121353744226561

namespace A257445

/-- `A255226(n+1)+A000034(A008574(n))` -/
def P1524121353744226561.Spec : Prop :=
  ∀ n, P1524121353744226561.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P1889078227609538842

`A255226(n+1)+A014963(A016825(n))`
-/

namespace A257445.P1889078227609538842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A014963 (A016825 n).toNat

end

end A257445.P1889078227609538842

namespace A257445

/-- `A255226(n+1)+A014963(A016825(n))` -/
def P1889078227609538842.Spec : Prop :=
  ∀ n, P1889078227609538842.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P888540269981106937

`A255226(n+1)+A014963(A100484(n+1))`
-/

namespace A257445.P888540269981106937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A014963 (A100484 (n + 1)).toNat

end

end A257445.P888540269981106937

namespace A257445

/-- `A255226(n+1)+A014963(A100484(n+1))` -/
def P888540269981106937.Spec : Prop :=
  ∀ n, P888540269981106937.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P14805371215145206559

`A255226(n+1)+A253641(A066190(n+1))`
-/

namespace A257445.P14805371215145206559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A253641 (A066190 (n + 1)).toNat

end

end A257445.P14805371215145206559

namespace A257445

/-- `A255226(n+1)+A253641(A066190(n+1))` -/
def P14805371215145206559.Spec : Prop :=
  ∀ n, P14805371215145206559.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P8592065855875013651

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=90, a(1)=95, a(2)=104, a(3)=116, a(4)=134`
-/

namespace A257445.P8592065855875013651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [90, 95, 104, 116, 134] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A257445.P8592065855875013651

namespace A257445

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P8592065855875013651.Spec : Prop :=
  ∀ n, P8592065855875013651.a n = A257445 (n + 1)

end A257445

/-! ## A257445.P15603768304607522070

`A257447(A374007(n+1))`
-/

namespace A257445.P15603768304607522070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A374007 (n + 1)).toNat

end

end A257445.P15603768304607522070

namespace A257445

/-- `A257447(A374007(n+1))` -/
def P15603768304607522070.Spec : Prop :=
  ∀ n, P15603768304607522070.a n = A257445 (n + 1)

end A257445

/-!
# A257446: Number of (n+2) X (7+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

The programs for A257446, the canonical program `A257446.P10810494062127799661` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257446 has offset 1).

The definition of A257446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257446.P10810494062127799661

`A255227(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257446

/-- `A255227(n+1)+1` -/
def P10810494062127799661.Spec : Prop :=
  ∀ n, P10810494062127799661.a n = A257446 (n + 1)

theorem P10810494062127799661.correct : P10810494062127799661.Spec := by
  intro n
  simp only [A257446, Nat.add_sub_cancel]

end A257446

/-! ## A257446.P9193820853217191911

`A255226(n+1)+40`
-/

namespace A257446.P9193820853217191911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + 40

end

end A257446.P9193820853217191911

namespace A257446

/-- `A255226(n+1)+40` -/
def P9193820853217191911.Spec : Prop :=
  ∀ n, P9193820853217191911.a n = A257446 (n + 1)

end A257446

/-! ## A257446.P2546727311210373189

`A255225(A020639(2*(n+1)))+A255225(n+1)`
-/

namespace A257446.P2546727311210373189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (A020639 (2 * (n + 1))).toNat + A255225 (n + 1)

end

end A257446.P2546727311210373189

namespace A257446

/-- `A255225(A020639(2*(n+1)))+A255225(n+1)` -/
def P2546727311210373189.Spec : Prop :=
  ∀ n, P2546727311210373189.a n = A257446 (n + 1)

end A257446

/-! ## A257446.P16922566786752870924

`A255225(n+1)+A344797(A344797(n+1))-A344797(n+1)`
-/

namespace A257446.P16922566786752870924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + (A344797 (A344797 (n + 1)).toNat - A344797 (n + 1))

end

end A257446.P16922566786752870924

namespace A257446

/-- `A255225(n+1)+A344797(A344797(n+1))-A344797(n+1)` -/
def P16922566786752870924.Spec : Prop :=
  ∀ n, P16922566786752870924.a n = A257446 (n + 1)

end A257446

/-! ## A257446.P15408890969673485544

`A255223(n+1)+A345477(A345477(n+1))-A345477(n+1)`
-/

namespace A257446.P15408890969673485544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + (A345477 (A345477 (n + 1)).toNat - A345477 (n + 1))

end

end A257446.P15408890969673485544

namespace A257446

/-- `A255223(n+1)+A345477(A345477(n+1))-A345477(n+1)` -/
def P15408890969673485544.Spec : Prop :=
  ∀ n, P15408890969673485544.a n = A257446 (n + 1)

end A257446

/-! ## A257446.P1667462013150740144

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=128, a(1)=134, a(2)=143, a(3)=155`
-/

namespace A257446.P1667462013150740144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [128, 134, 143, 155] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A257446.P1667462013150740144

namespace A257446

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P1667462013150740144.Spec : Prop :=
  ∀ n, P1667462013150740144.a n = A257446 (n + 1)

end A257446

/-! ## A257446.P16780335425250772238

`A255225(n+1)+A255225(ratio[A000079(n)])`
-/

namespace A257446.P16780335425250772238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A255225 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A257446.P16780335425250772238

namespace A257446

/-- `A255225(n+1)+A255225(ratio[A000079(n)])` -/
def P16780335425250772238.Spec : Prop :=
  ∀ n, P16780335425250772238.a n = A257446 (n + 1)

end A257446

/-! ## A257446.P8049532314513960047

`A257447(A374008(n+1))`
-/

namespace A257446.P8049532314513960047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257447 (A374008 (n + 1)).toNat

end

end A257446.P8049532314513960047

namespace A257446

/-- `A257447(A374008(n+1))` -/
def P8049532314513960047.Spec : Prop :=
  ∀ n, P8049532314513960047.a n = A257446 (n + 1)

end A257446

/-!
# A257448: a(n) = 13*(2^n - 1) - 3*n^2 - 9*n.

The programs for A257448, the canonical program `A257448.P1466205608425500141` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257448 has offset 1).

The definition of A257448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*(2^(n+1)-1)-3*(n+1)²-9*(n+1)` (program `A257448.P1466205608425500141`, by `A257448.P1466205608425500141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257448.P1466205608425500141

`13*(2^(n+1)-1)-3*(n+1)²-9*(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257448

/-- `13*(2^(n+1)-1)-3*(n+1)²-9*(n+1)` -/
def P1466205608425500141.Spec : Prop :=
  ∀ n, P1466205608425500141.a n = A257448 (n + 1)

theorem P1466205608425500141.correct : P1466205608425500141.Spec := by
  intro n
  simp only [A257448, Nat.add_sub_cancel]

end A257448

/-! ## A257448.P4795442089417365341

`∑[∑[ogf((1+4x+x^2)/(1-3x+2x^2))]]`
-/

namespace A257448.P4795442089417365341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257448.P4795442089417365341

namespace A257448

/-- `∑[∑[ogf((1+4x+x^2)/(1-3x+2x^2))]]` -/
def P4795442089417365341.Spec : Prop :=
  ∀ n, P4795442089417365341.a n = A257448 (n + 1)

end A257448

/-! ## A257448.P8945870909045081300

`∑[∑[2*(a(n-1)+3)]]` with `a(0)=1, a(1)=7`
-/

namespace A257448.P8945870909045081300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  2 * (f2 (n - 1) + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257448.P8945870909045081300

namespace A257448

/-- `∑[∑[2*(a(n-1)+3)]]` -/
def P8945870909045081300.Spec : Prop :=
  ∀ n, (P8945870909045081300.a n : ℤ) = A257448 (n + 1)

end A257448

/-! ## A257448.P8241267653417096738

`∑[∑[a(n-1)+a(n-1)+6]]` with `a(0)=1, a(1)=7`
-/

namespace A257448.P8241267653417096738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257448.P8241267653417096738

namespace A257448

/-- `∑[∑[a(n-1)+a(n-1)+6]]` -/
def P8241267653417096738.Spec : Prop :=
  ∀ n, (P8241267653417096738.a n : ℤ) = A257448 (n + 1)

end A257448

/-! ## A257448.P14107978526520642384

`∑[∑[A100206(n)]+1]`
-/

namespace A257448.P14107978526520642384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257448.P14107978526520642384

namespace A257448

/-- `∑[∑[A100206(n)]+1]` -/
def P14107978526520642384.Spec : Prop :=
  ∀ n, P14107978526520642384.a n = A257448 (n + 1)

end A257448

/-! ## A257448.P1362614000266889676

`Δ[2*a(n-1)+n*n²]` with `a(0)=0`
-/

namespace A257448.P1362614000266889676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) + n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A257448.P1362614000266889676

namespace A257448

/-- `Δ[2*a(n-1)+n*n²]` -/
def P1362614000266889676.Spec : Prop :=
  ∀ n, P1362614000266889676.a n = A257448 (n + 1)

end A257448

/-!
# A257449: a(n) = 75*(2^n - 1) - 4*n^3 - 18*n^2 - 52*n.

The programs for A257449, the canonical program `A257449.P14361594380329654968` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257449 has offset 1).

The definition of A257449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `75*(2^(n+1)-1)-4*(n+1)^3-18*(n+1)²-52*(n+1)` (program `A257449.P14361594380329654968`, by `A257449.P14361594380329654968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257449.P14361594380329654968

`75*(2^(n+1)-1)-4*(n+1)^3-18*(n+1)²-52*(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257449

/-- `75*(2^(n+1)-1)-4*(n+1)^3-18*(n+1)²-52*(n+1)` -/
def P14361594380329654968.Spec : Prop :=
  ∀ n, P14361594380329654968.a n = A257449 (n + 1)

theorem P14361594380329654968.correct : P14361594380329654968.Spec := by
  intro n
  simp only [A257449, Nat.add_sub_cancel]

end A257449

/-! ## A257449.P5119196387989326326

`Δ[n²²+2*a(n-1)]` with `a(0)=0`
-/

namespace A257449.P5119196387989326326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 2) ^ 2 + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A257449.P5119196387989326326

namespace A257449

/-- `Δ[n²²+2*a(n-1)]` -/
def P5119196387989326326.Spec : Prop :=
  ∀ n, P5119196387989326326.a n = A257449 (n + 1)

end A257449

/-! ## A257449.P12393695089394814539

`Δ[2*a(n-1)-(1-n^4)]` with `a(0)=1`
-/

namespace A257449.P12393695089394814539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - (1 - (n ^ 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257449.P12393695089394814539

namespace A257449

/-- `Δ[2*a(n-1)-(1-n^4)]` -/
def P12393695089394814539.Spec : Prop :=
  ∀ n, P12393695089394814539.a n = A257449 (n + 1)

end A257449

/-!
# A257450: a(n) = 541*(2^n - 1) - 5*n^4 - 30*n^3 - 130*n^2 - 375*n.

The programs for A257450, the canonical program `A257450.P2330400453790553097` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257450 has offset 1).

The definition of A257450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `541*(2^(n+1)-1)-5*(n+1)^4-30*(n+1)^3-130*(n+1)²-375*(n+1)` (program `A257450.P2330400453790553097`, by `A257450.P2330400453790553097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257450.P2330400453790553097

`541*(2^(n+1)-1)-5*(n+1)^4-30*(n+1)^3-130*(n+1)²-375*(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257450

/-- `541*(2^(n+1)-1)-5*(n+1)^4-30*(n+1)^3-130*(n+1)²-375*(n+1)` -/
def P2330400453790553097.Spec : Prop :=
  ∀ n, P2330400453790553097.a n = A257450 (n + 1)

theorem P2330400453790553097.correct : P2330400453790553097.Spec := by
  intro n
  simp only [A257450, Nat.add_sub_cancel]

end A257450

/-! ## A257450.P5046226751897412833

`Δ[2*a(n-1)-(1-n^5)]` with `a(0)=1`
-/

namespace A257450.P5046226751897412833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - (1 - (n ^ 5 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257450.P5046226751897412833

namespace A257450

/-- `Δ[2*a(n-1)-(1-n^5)]` -/
def P5046226751897412833.Spec : Prop :=
  ∀ n, P5046226751897412833.a n = A257450 (n + 1)

end A257450

/-! ## A257450.P5073069775147899166

`Δ[A000584(n)+2*a(n-1)]` with `a(0)=0`
-/

namespace A257450.P5073069775147899166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000584 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257450.P5073069775147899166

namespace A257450

/-- `Δ[A000584(n)+2*a(n-1)]` -/
def P5073069775147899166.Spec : Prop :=
  ∀ n, P5073069775147899166.a n = A257450 (n + 1)

end A257450

/-!
# A257453: E.g.f.: C(x) = Sum_{n>=0} cos((2*n+1)*x) * x^n / (1 + x^(2*n+1)).

The programs for A257453, there is no canonical definition to state claims against.
-/

/-! ## A257453.P10440935844197642786

`A354946(∑[(n+1)^n])-∑[lcm(n, (-n)^n)]`
-/

namespace A257453.P10440935844197642786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354946 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A257453.P10440935844197642786

/-!
# A257457: Indices of primes in A257339.

The programs for A257457, there is no canonical definition to state claims against.
-/

/-! ## A257457.P10527031968548988525

`eq[1, A001222(A257339(n+1))]+1`
-/

namespace A257457.P10527031968548988525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257339 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257457.P10527031968548988525

/-! ## A257457.P18022990040138341520

`A257455(Δ[A007504(n)])`
-/

namespace A257457.P18022990040138341520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (f1 (n + 1) - f1 n).toNat

end

end A257457.P18022990040138341520

/-! ## A257457.P6062931586804471318

`A257455(A000040(n+1))`
-/

namespace A257457.P6062931586804471318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (A000040 (n + 1)).toNat

end

end A257457.P6062931586804471318

/-! ## A257457.P11197949022852463374

`A257455(A008578(n+2))`
-/

namespace A257457.P11197949022852463374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (A008578 (n + 2)).toNat

end

end A257457.P11197949022852463374

/-! ## A257457.P18188698720444085940

`A257455(A182986(n+2))`
-/

namespace A257457.P18188698720444085940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (A182986 (n + 2)).toNat

end

end A257457.P18188698720444085940

/-! ## A257457.P13742283299559296987

`A257455(∑[A054541(n+1)])`
-/

namespace A257457.P13742283299559296987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257457.P13742283299559296987

/-! ## A257457.P14183832346489030223

`A257455(record[A006530(n+2)])`
-/

namespace A257457.P14183832346489030223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257457.P14183832346489030223

/-! ## A257457.P309786133099124459

`A257455(record[A014963(n+2)])`
-/

namespace A257457.P309786133099124459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257457.P309786133099124459

/-! ## A257457.P13914261623149786034

`A257455(record[A020639(n+2)])`
-/

namespace A257457.P13914261623149786034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257457.P13914261623149786034

/-! ## A257457.P17450662768600264444

`eq[A014963(A257339(n+2)), A257339(n+2)]+2`
-/

namespace A257457.P17450662768600264444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A257339 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257339 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A257457.P17450662768600264444

/-!
# A257458: Indices of prime powers in A257339.

The programs for A257458, there is no canonical definition to state claims against.
-/

/-! ## A257458.P986387849546727221

`lt[A010815(n), A296508(A238279(n))]`
-/

namespace A257458.P986387849546727221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296508 (A238279 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257458.P986387849546727221

/-!
# A257464: Number of factorizations of m^n into 3 factors, where m is a product of exactly 3 distinct primes and each factor is a product of n primes (counted with multiplicity).

The programs for A257464, the canonical program `A257464.P12698508547421429426` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257464 has offset 0).

The definition of A257464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257464.P12698508547421429426

`∑[A083709(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257464

/-- `∑[A083709(n)]` -/
def P12698508547421429426.Spec : Prop :=
  ∀ n, P12698508547421429426.a n = A257464 n

theorem P12698508547421429426.correct : P12698508547421429426.Spec := by
  intro n
  simp only [A257464]

end A257464

/-! ## A257464.P9247407881691599216

`A083707(n)+A008795(n)`
-/

namespace A257464.P9247407881691599216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083707 n + A008795 n

end

end A257464.P9247407881691599216

namespace A257464

/-- `A083707(n)+A008795(n)` -/
def P9247407881691599216.Spec : Prop :=
  ∀ n, P9247407881691599216.a n = A257464 n

end A257464

/-! ## A257464.P13221166706634400145

`∑[A030533(n)]-A001840(n)`
-/

namespace A257464.P13221166706634400145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001840 n

end

end A257464.P13221166706634400145

namespace A257464

/-- `∑[A030533(n)]-A001840(n)` -/
def P13221166706634400145.Spec : Prop :=
  ∀ n, P13221166706634400145.a n = A257464 n

end A257464

/-! ## A257464.P2854469718308135847

`A008796(n)+∑[∑[A001057(n)²]]`
-/

namespace A257464.P2854469718308135847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257464.P2854469718308135847

namespace A257464

/-- `A008796(n)+∑[∑[A001057(n)²]]` -/
def P2854469718308135847.Spec : Prop :=
  ∀ n, P2854469718308135847.a n = A257464 n

end A257464

/-! ## A257464.P11648116547707700615

`A008796(n)+∑[∑[A110654(n)²]]`
-/

namespace A257464.P11648116547707700615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257464.P11648116547707700615

namespace A257464

/-- `A008796(n)+∑[∑[A110654(n)²]]` -/
def P11648116547707700615.Spec : Prop :=
  ∀ n, P11648116547707700615.a n = A257464 n

end A257464

/-! ## A257464.P3281268870901454373

`∑[∑[A028242(n)²]]-A001840(n)`
-/

namespace A257464.P3281268870901454373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001840 n

end

end A257464.P3281268870901454373

namespace A257464

/-- `∑[∑[A028242(n)²]]-A001840(n)` -/
def P3281268870901454373.Spec : Prop :=
  ∀ n, P3281268870901454373.a n = A257464 n

end A257464

/-! ## A257464.P3549126891092618270

`A083709(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A257464.P3549126891092618270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083709 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A257464.P3549126891092618270

namespace A257464

/-- `A083709(A000007(n)+n)+a(n-1)` -/
def P3549126891092618270.Spec : Prop :=
  ∀ n, P3549126891092618270.a n = A257464 n

end A257464

/-! ## A257464.P9698421240691906665

`A083709(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A257464.P9698421240691906665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083709 n - (A000007 n - a (n - 1))

end

end A257464.P9698421240691906665

namespace A257464

/-- `A083709(n)-(A000007(n)-a(n-1))` -/
def P9698421240691906665.Spec : Prop :=
  ∀ n, P9698421240691906665.a n = A257464 n

end A257464

/-! ## A257464.P15187827488972192174

`∑[A030533(n)-A110654(A004396(n))]`
-/

namespace A257464.P15187827488972192174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A110654 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257464.P15187827488972192174

namespace A257464

/-- `∑[A030533(n)-A110654(A004396(n))]` -/
def P15187827488972192174.Spec : Prop :=
  ∀ n, P15187827488972192174.a n = A257464 n

end A257464

/-! ## A257464.P3576989992582523131

`∑[A030533(n)-A008615(2*n)]`
-/

namespace A257464.P3576989992582523131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A008615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257464.P3576989992582523131

namespace A257464

/-- `∑[A030533(n)-A008615(2*n)]` -/
def P3576989992582523131.Spec : Prop :=
  ∀ n, P3576989992582523131.a n = A257464 n

end A257464

/-!
# A257466: Smallest prime number p such that p + pps(1), p + pps(2), ..., p + pps(n) are all prime but p + pps(n+1) is not, where pps(n) is the partial primorial sum (A060389(n)).

The programs for A257466, there is no canonical definition to state claims against.
-/

/-! ## A257466.P1600514582589798336

`A079375(A171590(n))`
-/

namespace A257466.P1600514582589798336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079375 (A171590 n).toNat

end

end A257466.P1600514582589798336

/-! ## A257466.P18244887169856365539

`A006530(and(A234220(n+1), A234228(n+3)))`
-/

namespace A257466.P18244887169856365539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (A234220 (n + 1)) (A234228 (n + 3))).toNat

end

end A257466.P18244887169856365539

/-!
# A257467: Smallest prime number p such that p + psq(1), p + psq(2), ... p + psq(n) are all prime but p+psq(n+1) is not. (psq(n) is the square of the primorial.)

The programs for A257467, there is no canonical definition to state claims against.
-/

/-! ## A257467.P2459964525066248808

`A082087(A202789(n+1))`
-/

namespace A257467.P2459964525066248808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A202789 (n + 1)).toNat

end

end A257467.P2459964525066248808

/-!
# A257468: Triangle read by rows in which the n-th row lists the multinomials A036038 for all partitions of 2n with only even parts in Abramowitz-Stegun ordering.

The programs for A257468, there is no canonical definition to state claims against.
-/

/-! ## A257468.P10662032488847721367

`A096162(n+1)*A257490(n+1)`
-/

namespace A257468.P10662032488847721367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096162 (n + 1) * A257490 (n + 1)

end

end A257468.P10662032488847721367

/-! ## A257468.P412489092403299894

`∏{e}[A185974(n+1), #!]*A257490(n+1)`
-/

namespace A257468.P412489092403299894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A257490 (n + 1)

end

end A257468.P412489092403299894

/-! ## A257468.P2796656149314144936

`A112624(A185974(n+1))*A257490(n+1)`
-/

namespace A257468.P2796656149314144936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A185974 (n + 1)).toNat * A257490 (n + 1)

end

end A257468.P2796656149314144936

/-! ## A257468.P8983602951463431616

`∏{e}[A185974(n+1), A000142(#)]*A257490(n+1)`
-/

namespace A257468.P8983602951463431616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)) * A257490 (n + 1)

end

end A257468.P8983602951463431616

/-! ## A257468.P17884721534264810412

`∏{e}[A185974(n+1), A033646(#)]*A257490(n+1)`
-/

namespace A257468.P17884721534264810412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033646 (Nat.factorization (f1 n).natAbs p)) * A257490 (n + 1)

end

end A257468.P17884721534264810412

/-!
# A257469: Expansion of f(-x) * psi(x^6) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A257469, there is no canonical definition to state claims against.
-/

/-! ## A257469.P2814275087599532696

`A226862(4*n+3)/2`
-/

namespace A257469.P2814275087599532696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226862 (4 * n + 3) : ℚ) / 2

end

end A257469.P2814275087599532696

/-! ## A257469.P14684874562867081939

`A226860(9*n+7)/2`
-/

namespace A257469.P14684874562867081939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226860 (9 * n + 7) : ℚ) / 2

end

end A257469.P14684874562867081939

/-! ## A257469.P3525104531994985184

`A073097(A059174(n+3)-A347731(3*n+2))`
-/

namespace A257469.P3525104531994985184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A059174 (n + 3) - A347731 (3 * n + 2)).toNat

end

end A257469.P3525104531994985184

/-! ## A257469.P10226539921225920655

`A008683(A138822(n+1)+A049472(n))`
-/

namespace A257469.P10226539921225920655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A138822 (n + 1) + A049472 n).toNat

end

end A257469.P10226539921225920655

/-! ## A257469.P6730379999421172580

`A008683(A138822(n+1)+A057359(n))`
-/

namespace A257469.P6730379999421172580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A138822 (n + 1) + A057359 n).toNat

end

end A257469.P6730379999421172580

/-!
# A257470: a(n+1) = least number not occurring earlier such that max{a(n), a(n+1)} >= 2 min{a(n), a(n+1)}; a(0) = 0.

The programs for A257470, there is no canonical definition to state claims against.
-/

/-! ## A257470.P9841328885712959382

`∑{e}[A000244(n), A139080(#)]`
-/

namespace A257470.P9841328885712959382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A139080 (Nat.factorization (f1 n).natAbs p)

end

end A257470.P9841328885712959382

/-! ## A257470.P826296038781947615

`∑{e}[A000244(n), A122111(A114744(#))]`
-/

namespace A257470.P826296038781947615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A122111 (A114744 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A257470.P826296038781947615

/-! ## A257470.P8444770674077279009

`A247555(lt[A055645(n), A205695(n+1)])`
-/

namespace A257470.P8444770674077279009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257470.P8444770674077279009

/-! ## A257470.P10952372479696392831

`A247555(lt[A247570(n+2), A247569(n+6)])`
-/

namespace A257470.P10952372479696392831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247570 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247569 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257470.P10952372479696392831

/-! ## A257470.P6350335470111416408

`A247555(eq[A000007(n), A054907(n)])`
-/

namespace A257470.P6350335470111416408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257470.P6350335470111416408

/-!
# A257474: Number of unordered ways to write n = a + b, where a and b are distinct elements of the set {floor(x/3): 3*x-1 and 3*x+1 are twin prime}, one of a and b is even, and one of a and b has the form p-1 or p-2 with p prime.

The programs for A257474, there is no canonical definition to state claims against.
-/

/-! ## A257474.P5299724297969784883

`A003558(A257317(n+1)%A062241(n))`
-/

namespace A257474.P5299724297969784883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Int.tmod (A257317 (n + 1)) (A062241 n)).toNat

end

end A257474.P5299724297969784883

/-! ## A257474.P14166968206537236599

`A003558(and(A062241(n), A257317(n+1)))`
-/

namespace A257474.P14166968206537236599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Int.land (A062241 n) (A257317 (n + 1))).toNat

end

end A257474.P14166968206537236599

/-! ## A257474.P288279169250546558

`A023816(and(A062241(n), A257317(n+1)))`
-/

namespace A257474.P288279169250546558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (Int.land (A062241 n) (A257317 (n + 1))).toNat

end

end A257474.P288279169250546558

/-! ## A257474.P17345220683938135186

`A006530(and(A062241(n), A257317(n+1))!)`
-/

namespace A257474.P17345220683938135186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (Int.land (A062241 n) (A257317 (n + 1))).toNat)

end

end A257474.P17345220683938135186

/-! ## A257474.P12600282794570864409

`A029578(and(A062241(n), A257317(n+1)))+1`
-/

namespace A257474.P12600282794570864409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Int.land (A062241 n) (A257317 (n + 1))).toNat + 1

end

end A257474.P12600282794570864409

/-!
# A257475: Position of second and last occurrence of n in A256918.

The programs for A257475, there is no canonical definition to state claims against.
-/

/-! ## A257475.P2610703213092805920

`A257478(n+1)+A257120(n+1)`
-/

namespace A257475.P2610703213092805920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257478 (n + 1) + A257120 (n + 1)

end

end A257475.P2610703213092805920

/-!
# A257476: E.g.f. satisfies: A'(x) = exp(A(x)) / (1 - A(x))^2.

The programs for A257476, there is no canonical definition to state claims against.
-/

/-! ## A257476.P14485268792663500658

`A063754(4*a(n-1))` with `a(0)=1`
-/

namespace A257476.P14485268792663500658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063754 (4 * a (n - 1)).toNat

end

end A257476.P14485268792663500658

/-!
# A257477: Multiplicative with a(2) = 0, a(4) = -1, a(2^e) = 0 if e>2, a(3) = -1, a(3^e) = 0^e if e>1, a(p^e) = 1 if p == 1, 3 (mod 8), a(p^e) = (-1)^e if p == 5, 7 (mod 8).

The programs for A257477, the canonical program `A257477.P17128871858641603141` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257477 has offset 1).

The definition of A257477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257477.P17128871858641603141

`∑{d}[n+1, A008683(#)*A257403((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A257477

/-- `∑{d}[n+1, A008683(#)*A257403((n+1)/#)]` -/
def P17128871858641603141.Spec : Prop :=
  ∀ n, P17128871858641603141.a n = A257477 (n + 1)

theorem P17128871858641603141.correct : P17128871858641603141.Spec := by
  intro n
  simp only [A257477, Nat.add_sub_cancel]

end A257477

/-!
# A257478: Distance of positions of first and last occurrence of n in A256918.

The programs for A257478, there is no canonical definition to state claims against.
-/

/-! ## A257478.P8749956754636508025

`A257475(n+1)-A257120(n+1)`
-/

namespace A257478.P8749956754636508025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257475 (n + 1) - A257120 (n + 1)

end

end A257478.P8749956754636508025

/-!
# A257480: S(n) = (3 + (3/2)^v(1 + F(4*n - 3))*(1 + F(4*n - 3)))/6, n >= 1, where F(x) = (3*x + 1)/2^v(3*x + 1) for x odd, and v(y) denotes the 2-adic valuation of y.

The programs for A257480, there is no canonical definition to state claims against.
-/

/-! ## A257480.P11928691600968230158

`ceil(A254070(n+1)/4)`
-/

namespace A257480.P11928691600968230158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254070 (n + 1) : ℚ) / 4⌉

end

end A257480.P11928691600968230158

/-! ## A257480.P11913895461141369501

`A008621(A254070(n+1))`
-/

namespace A257480.P11913895461141369501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A254070 (n + 1)).toNat

end

end A257480.P11913895461141369501

/-! ## A257480.P10519328787738525496

`A003602(A254070(n+1)+1)`
-/

namespace A257480.P10519328787738525496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A254070 (n + 1) + 1).toNat

end

end A257480.P10519328787738525496

/-! ## A257480.P3464905052786702121

`A008624(A254070(n+1)+1)`
-/

namespace A257480.P3464905052786702121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A254070 (n + 1) + 1).toNat

end

end A257480.P3464905052786702121

/-! ## A257480.P16050724621736467333

`A110622(A254070(n+1)+1)`
-/

namespace A257480.P16050724621736467333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A254070 (n + 1) + 1).toNat

end

end A257480.P16050724621736467333

/-! ## A257480.P7592710711305200172

`A077814(A254070(n+1)+2)`
-/

namespace A257480.P7592710711305200172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A254070 (n + 1) + 2).toNat

end

end A257480.P7592710711305200172

/-! ## A257480.P1211498430361184180

`A002265(A254070(n+1)+3)`
-/

namespace A257480.P1211498430361184180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A254070 (n + 1) + 3).toNat

end

end A257480.P1211498430361184180

/-! ## A257480.P12130816014458157587

`A051724(A254070(n+1)+3)`
-/

namespace A257480.P12130816014458157587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A254070 (n + 1) + 3).toNat

end

end A257480.P12130816014458157587

/-! ## A257480.P11727946781047222075

`(A254070(n+1)+3)/A020639(2*(n+5))²`
-/

namespace A257480.P11727946781047222075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254070 (n + 1) + 3 : ℚ) / (A020639 (2 * (n + 5)) ^ 2 : ℚ)

end

end A257480.P11727946781047222075

/-! ## A257480.P113364681323470318

`round(A000041(abs((-1)^n))+A254070(n+1)/4)`
-/

namespace A257480.P113364681323470318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000041 |(-1) ^ n|.toNat : ℚ) + (A254070 (n + 1) : ℚ) / 4)

end

end A257480.P113364681323470318

/-!
# A257482: Numbers m such that prime(m) mod 8 == prime(m) mod 27.

The programs for A257482, there is no canonical definition to state claims against.
-/

/-! ## A257482.P8772105392373399975

`A000720(A257483(n+1))`
-/

namespace A257482.P8772105392373399975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A257483 (n + 1)).toNat

end

end A257482.P8772105392373399975

/-! ## A257482.P8470705717155085929

`A061395(p?[A257483(n+1)])`
-/

namespace A257482.P8470705717155085929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257482.P8470705717155085929

/-! ## A257482.P9098743764999672166

`A061395(∏{d}[A257483(n+1), #])`
-/

namespace A257482.P9098743764999672166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A257482.P9098743764999672166

/-! ## A257482.P9625493456364679418

`A061395(A257483(n+1)%A120571(n+1))`
-/

namespace A257482.P9625493456364679418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A257483 (n + 1)) (A120571 (n + 1))).toNat

end

end A257482.P9625493456364679418

/-! ## A257482.P17304406972775534028

`A061395(A257483(n+1))%A124142(n+1)`
-/

namespace A257482.P17304406972775534028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A257483 (n + 1)).toNat) (A124142 (n + 1))

end

end A257482.P17304406972775534028

/-! ## A257482.P16841354126192008640

`char[A060681(n+1)]*A061395(A257483(n+1))`
-/

namespace A257482.P16841354126192008640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061395 (A257483 (n + 1)).toNat

end

end A257482.P16841354126192008640

/-! ## A257482.P14268884847890094761

`A061395(A257483(n+1))/A001221(A007645(n+1))`
-/

namespace A257482.P14268884847890094761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (A257483 (n + 1)).toNat : ℚ) / (A001221 (A007645 (n + 1)).toNat : ℚ)

end

end A257482.P14268884847890094761

/-! ## A257482.P17116707953569771822

`A001221(A007645(n+2))*A061395(A257483(n+1))`
-/

namespace A257482.P17116707953569771822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007645 (n + 2)).toNat * A061395 (A257483 (n + 1)).toNat

end

end A257482.P17116707953569771822

/-! ## A257482.P4991256999596654130

`A061395(2*A257483(n+1))`
-/

namespace A257482.P4991256999596654130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A257483 (n + 1)).toNat

end

end A257482.P4991256999596654130

/-! ## A257482.P6034050536768772920

`A316431(2*A257483(n+1))`
-/

namespace A257482.P6034050536768772920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A257483 (n + 1)).toNat

end

end A257482.P6034050536768772920

/-!
# A257483: Primes p such that (p mod 8) = (p mod 27).

The programs for A257483, there is no canonical definition to state claims against.
-/

/-! ## A257483.P5445766583506585733

`A000040(A257482(n+1))`
-/

namespace A257483.P5445766583506585733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A257482 (n + 1)).toNat

end

end A257483.P5445766583506585733

/-! ## A257483.P3440355888425317224

`A008578(A257482(n+1)+1)`
-/

namespace A257483.P3440355888425317224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A257482 (n + 1) + 1).toNat

end

end A257483.P3440355888425317224

/-! ## A257483.P16217552112818053594

`A006005(A257482(n+1))+A000007(n)`
-/

namespace A257483.P16217552112818053594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A257482 (n + 1)).toNat + A000007 n

end

end A257483.P16217552112818053594

/-! ## A257483.P2974258855047162963

`A006005(A257482(n+1))*A054977(n)`
-/

namespace A257483.P2974258855047162963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A257482 (n + 1)).toNat * A054977 n

end

end A257483.P2974258855047162963

/-! ## A257483.P14528722794047436466

`A006005(A257482(n+1))+A000035(A004277(n))`
-/

namespace A257483.P14528722794047436466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A257482 (n + 1)).toNat + A000035 (A004277 n).toNat

end

end A257483.P14528722794047436466

/-! ## A257483.P8004192485960077670

`A006005(A257482(n+1))+A000035(A035877(n))`
-/

namespace A257483.P8004192485960077670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A257482 (n + 1)).toNat + A000035 (A035877 n).toNat

end

end A257483.P8004192485960077670

/-!
# A257487: Expansion of ( -4+15*x-8*x^2 ) / ( (x-1)*(x^2-4*x+1) ).

The programs for A257487, the canonical program `A257487.P7311523091005935837` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257487 has offset 0).

The definition of A257487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-15x+8x^2)/(1-5x+5x^2-x^3))` (program `A257487.P7311523091005935837`, by `A257487.P7311523091005935837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257487.P7311523091005935837

`ogf((4-15x+8x^2)/(1-5x+5x^2-x^3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257487

/-- `ogf((4-15x+8x^2)/(1-5x+5x^2-x^3))` -/
def P7311523091005935837.Spec : Prop :=
  ∀ n, P7311523091005935837.a n = A257487 n

theorem P7311523091005935837.correct : P7311523091005935837.Spec := by
  intro n
  simp only [A257487]

end A257487

/-! ## A257487.P13373168790465251330

`(5*A001353(n+1)-13*A001353(n)+3)/2`
-/

namespace A257487.P13373168790465251330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A001353 (n + 1) - 13 * A001353 n + 3 : ℚ) / 2

end

end A257487.P13373168790465251330

namespace A257487

/-- `(5*A001353(n+1)-13*A001353(n)+3)/2` -/
def P13373168790465251330.Spec : Prop :=
  ∀ n, P13373168790465251330.a n = (A257487 n : ℚ)

end A257487

/-! ## A257487.P3777748101284959791

`(5+sqrt(3))*(2-sqrt(3))^n/4+(5-sqrt(3))*(2+sqrt(3))^n/4+3/2`
-/

namespace A257487.P3777748101284959791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + Real.sqrt (3 : ℝ)) * (2 - Real.sqrt (3 : ℝ)) ^ n / 4 + (5 - Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ n / 4 + ((3 : ℚ) / 2 : ℝ)

end

end A257487.P3777748101284959791

namespace A257487

/-- `(5+sqrt(3))*(2-sqrt(3))^n/4+(5-sqrt(3))*(2+sqrt(3))^n/4+3/2` -/
def P3777748101284959791.Spec : Prop :=
  ∀ n, P3777748101284959791.a n = (A257487 n : ℝ)

end A257487

/-!
# A257490: Irregular triangle read by rows in which the n-th row lists multinomials (A036040) for partitions of 2n which have only even parts in Abramowitz-Stegun ordering.

The programs for A257490, there is no canonical definition to state claims against.
-/

/-! ## A257490.P3957751410048403225

`A257468(n+1)/A096162(n+1)`
-/

namespace A257490.P3957751410048403225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257468 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ)

end

end A257490.P3957751410048403225

/-! ## A257490.P9754395107076712008

`A327022(n+1)/A178803(n+1)`
-/

namespace A257490.P9754395107076712008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327022 (n + 1) : ℚ) / (A178803 (n + 1) : ℚ)

end

end A257490.P9754395107076712008

/-! ## A257490.P14688544675230974656

`A327022(n+1)/A036043(n+1)!`
-/

namespace A257490.P14688544675230974656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327022 (n + 1) : ℚ) / (Nat.factorial (A036043 (n + 1)).toNat : ℚ)

end

end A257490.P14688544675230974656

/-! ## A257490.P7387558980853636040

`A036040(n+1)/A036038(n+1)*A257468(n+1)`
-/

namespace A257490.P7387558980853636040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036040 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A257468 (n + 1) : ℚ)

end

end A257490.P7387558980853636040

/-!
# A257492: Positions where Pi and the Golden Ratio have a common decimal digit.

The programs for A257492, there is no canonical definition to state claims against.
-/

/-! ## A257492.P5271918505147667198

`eq[A000796(n), A001622(n)]+1`
-/

namespace A257492.P5271918505147667198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257492.P5271918505147667198

/-! ## A257492.P3062511505096426962

`eq[A000796(n), A104457(n)]+1`
-/

namespace A257492.P3062511505096426962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257492.P3062511505096426962

/-! ## A257492.P9521312689116024250

`eq[A030644(n), A109866(n+1)]+1`
-/

namespace A257492.P9521312689116024250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257492.P9521312689116024250

/-! ## A257492.P3321258051732412165

`1-A001478(eq[A000796(n), A104457(n)])`
-/

namespace A257492.P3321258051732412165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257492.P3321258051732412165

/-! ## A257492.P10842662171646097718

`A008619(2*eq[A000796(n), A001622(n)])`
-/

namespace A257492.P10842662171646097718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257492.P10842662171646097718

/-! ## A257492.P10425180971731828993

`A028242(2*eq[A000796(n), A001622(n)])`
-/

namespace A257492.P10425180971731828993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257492.P10425180971731828993

/-! ## A257492.P2414302742987089393

`A131732(2*eq[A000796(n), A001622(n)])`
-/

namespace A257492.P2414302742987089393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257492.P2414302742987089393

/-!
# A257493: Number A(n,k) of n X n nonnegative integer matrices with all row and column sums equal to k; square array A(n,k), n >= 0, k >= 0, read by antidiagonals.

The programs for A257493, there is no canonical definition to state claims against.
-/

/-! ## A257493.P3455756700670549128

`A069777(A061579(n)%A061935(n+1))`
-/

namespace A257493.P3455756700670549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (Int.tmod (A061579 n) (A061935 (n + 1))).toNat

end

end A257493.P3455756700670549128

/-! ## A257493.P1128337670844966870

`A069777(A061579(n))%A237794(n+1)`
-/

namespace A257493.P1128337670844966870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069777 (A061579 n).toNat) (A237794 (n + 1))

end

end A257493.P1128337670844966870

/-! ## A257493.P4287930617589994875

`A246376(A291709(n)%A265153(n+2))`
-/

namespace A257493.P4287930617589994875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (Int.tmod (A291709 n) (A265153 (n + 2))).toNat

end

end A257493.P4287930617589994875

/-! ## A257493.P157082493169710557

`A246376(A326323(n)%A265153(n+2))`
-/

namespace A257493.P157082493169710557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (Int.tmod (A326323 n) (A265153 (n + 2))).toNat

end

end A257493.P157082493169710557

/-! ## A257493.P5959679237940038188

`A246376(A291709(n)^A291709(n+3))`
-/

namespace A257493.P5959679237940038188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (SequenceMachineLib.roundAway ((A291709 n : ℚ) ^ (A291709 (n + 3) : ℤ))).toNat

end

end A257493.P5959679237940038188

/-!
# A257494: Positions where e and the Golden Ratio have a common decimal digit.

The programs for A257494, there is no canonical definition to state claims against.
-/

/-! ## A257494.P6314756426223730718

`eq[A001113(n), A001622(n)]+1`
-/

namespace A257494.P6314756426223730718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257494.P6314756426223730718

/-! ## A257494.P9142429134796003028

`eq[A001113(n), A020837(n)]+1`
-/

namespace A257494.P9142429134796003028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257494.P9142429134796003028

/-! ## A257494.P8083827703930023334

`eq[A132338(n), A153805(n)]+2`
-/

namespace A257494.P8083827703930023334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A257494.P8083827703930023334

/-! ## A257494.P14000859145608723837

`A008619(2*eq[A001113(n), A020837(n)])`
-/

namespace A257494.P14000859145608723837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257494.P14000859145608723837

/-! ## A257494.P8435262175113789635

`A052938(2*eq[A001113(n), A020837(n)])`
-/

namespace A257494.P8435262175113789635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257494.P8435262175113789635

/-!
# A257495: The number of iterations (x -> 2x+1) until a prime is found, starting with prime(n); or 0 if a prime is never found.

The programs for A257495, there is no canonical definition to state claims against.
-/

/-! ## A257495.P17276152388055569530

`A050412(p?[xor(1, n)])`
-/

namespace A257495.P17276152388055569530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A257495.P17276152388055569530

/-! ## A257495.P14471696374230232100

`A050412(Δ[A007504(n)])`
-/

namespace A257495.P14471696374230232100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (n + 1) - f1 n).toNat

end

end A257495.P14471696374230232100

/-! ## A257495.P13429433984093001689

`A050412(A000040(n+1))`
-/

namespace A257495.P13429433984093001689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A000040 (n + 1)).toNat

end

end A257495.P13429433984093001689

/-! ## A257495.P12934806556293249545

`A050412(A006005(n+1))`
-/

namespace A257495.P12934806556293249545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A006005 (n + 1)).toNat

end

end A257495.P12934806556293249545

/-! ## A257495.P9818492590921821577

`A050412(A161847(n+1))`
-/

namespace A257495.P9818492590921821577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A161847 (n + 1)).toNat

end

end A257495.P9818492590921821577

/-! ## A257495.P9247469043356433856

`A050412(A008578(n+2))`
-/

namespace A257495.P9247469043356433856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A008578 (n + 2)).toNat

end

end A257495.P9247469043356433856

/-! ## A257495.P783550737151255570

`A050412(A075643(n+2))`
-/

namespace A257495.P783550737151255570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A075643 (n + 2)).toNat

end

end A257495.P783550737151255570

/-! ## A257495.P5649286248509439098

`A050412(A116974(n+2))`
-/

namespace A257495.P5649286248509439098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A116974 (n + 2)).toNat

end

end A257495.P5649286248509439098

/-! ## A257495.P8020394122133124987

`A050412(A171525(n+2))`
-/

namespace A257495.P8020394122133124987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A171525 (n + 2)).toNat

end

end A257495.P8020394122133124987

/-! ## A257495.P5664072405984625150

`A050412(A182986(n+2))`
-/

namespace A257495.P5664072405984625150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A182986 (n + 2)).toNat

end

end A257495.P5664072405984625150

/-! ## A257495.P12597908446848494772

`A050412(record[A037225(n)+1])`
-/

namespace A257495.P12597908446848494772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257495.P12597908446848494772

/-! ## A257495.P13901983360969543714

`A050412(record[A006530(n+2)])`
-/

namespace A257495.P13901983360969543714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257495.P13901983360969543714

/-! ## A257495.P8217177715951578621

`A050412(record[A014963(n+2)])`
-/

namespace A257495.P8217177715951578621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257495.P8217177715951578621

/-! ## A257495.P8750478222471644417

`A050412(record[A020639(n+2)])`
-/

namespace A257495.P8750478222471644417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257495.P8750478222471644417

/-! ## A257495.P6131847498383309794

`A050412(record[A033677(n+2)])`
-/

namespace A257495.P6131847498383309794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257495.P6131847498383309794

/-! ## A257495.P5435122102137307293

`A050412(p?[A001281(n+2)])`
-/

namespace A257495.P5435122102137307293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257495.P5435122102137307293

/-! ## A257495.P11720041351976851622

`A050412(p?[n-A001281(n)])`
-/

namespace A257495.P11720041351976851622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257495.P11720041351976851622

/-! ## A257495.P1237392648189484762

`A050412(A006093(n+1)+1)`
-/

namespace A257495.P1237392648189484762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A006093 (n + 1) + 1).toNat

end

end A257495.P1237392648189484762

/-! ## A257495.P3820775713502616049

`A050412(A156037(n+1)+1)`
-/

namespace A257495.P3820775713502616049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A156037 (n + 1) + 1).toNat

end

end A257495.P3820775713502616049

/-! ## A257495.P1261567076057449730

`A050412(A100484(n+1)/2)`
-/

namespace A257495.P1261567076057449730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A257495.P1261567076057449730

/-!
# A257497: Number of ordered ways to write n as the sum of a term of A257121 and a positive generalized pentagonal number.

The programs for A257497, there is no canonical definition to state claims against.
-/

/-! ## A257497.P11758272393877955172

`A043276(A014963(A258036(n+1))*A257180(n))`
-/

namespace A257497.P11758272393877955172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A014963 (A258036 (n + 1)).toNat * A257180 n).toNat

end

end A257497.P11758272393877955172

/-! ## A257497.P14442126978473896029

`A001511(A152322(n+1)%A016825(n))`
-/

namespace A257497.P14442126978473896029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.tmod (A152322 (n + 1)) (A016825 n)).toNat

end

end A257497.P14442126978473896029

/-!
# A257499: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (1 + 2^n*(6*k-3+2*(-1)^n))/3, n,k >= 1.

The programs for A257499, the canonical program `A257499.P1186898740780545041` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257499 has offset 1).

The definition of A257499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257499.P1186898740780545041

`2*A258415(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A257499

/-- `2*A258415(n+1)-1` -/
def P1186898740780545041.Spec : Prop :=
  ∀ n, P1186898740780545041.a n = A257499 (n + 1)

theorem P1186898740780545041.correct : P1186898740780545041.Spec := by
  intro n
  simp only [A257499, Nat.add_sub_cancel]

end A257499

/-! ## A257499.P13208365376658098102

`A257791(n+1)-A257852(n+1)`
-/

namespace A257499.P13208365376658098102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257791 (n + 1) - A257852 (n + 1)

end

end A257499.P13208365376658098102

namespace A257499

/-- `A257791(n+1)-A257852(n+1)` -/
def P13208365376658098102.Spec : Prop :=
  ∀ n, P13208365376658098102.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P12506600031143232738

`A008683(A020483(n))+2*A258415(n+1)`
-/

namespace A257499.P12506600031143232738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A258415 (n + 1)

end

end A257499.P12506600031143232738

namespace A257499

/-- `A008683(A020483(n))+2*A258415(n+1)` -/
def P12506600031143232738.Spec : Prop :=
  ∀ n, P12506600031143232738.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P4269893215178110701

`A057428(n+1)+2*A258415(n+1)`
-/

namespace A257499.P4269893215178110701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A258415 (n + 1)

end

end A257499.P4269893215178110701

namespace A257499

/-- `A057428(n+1)+2*A258415(n+1)` -/
def P4269893215178110701.Spec : Prop :=
  ∀ n, P4269893215178110701.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P14005977817072513135

`A008683(record[A014963(n+2)])+2*A258415(n+1)`
-/

namespace A257499.P14005977817072513135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A258415 (n + 1)

end

end A257499.P14005977817072513135

namespace A257499

/-- `A008683(record[A014963(n+2)])+2*A258415(n+1)` -/
def P14005977817072513135.Spec : Prop :=
  ∀ n, P14005977817072513135.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P10037553178068631087

`A008683(A241059(n+1))+2*A258415(n+1)`
-/

namespace A257499.P10037553178068631087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A241059 (n + 1)).toNat + 2 * A258415 (n + 1)

end

end A257499.P10037553178068631087

namespace A257499

/-- `A008683(A241059(n+1))+2*A258415(n+1)` -/
def P10037553178068631087.Spec : Prop :=
  ∀ n, P10037553178068631087.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P5167544922179401055

`A008683(A241046(n+1))+2*A258415(n+1)`
-/

namespace A257499.P5167544922179401055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A241046 (n + 1)).toNat + 2 * A258415 (n + 1)

end

end A257499.P5167544922179401055

namespace A257499

/-- `A008683(A241046(n+1))+2*A258415(n+1)` -/
def P5167544922179401055.Spec : Prop :=
  ∀ n, P5167544922179401055.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P1396476491140918733

`A004273(A258415(n+1))`
-/

namespace A257499.P1396476491140918733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A258415 (n + 1)).toNat

end

end A257499.P1396476491140918733

namespace A257499

/-- `A004273(A258415(n+1))` -/
def P1396476491140918733.Spec : Prop :=
  ∀ n, P1396476491140918733.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P3178929728364413328

`A005408(A258415(n+1)-1)`
-/

namespace A257499.P3178929728364413328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A258415 (n + 1) - 1).toNat

end

end A257499.P3178929728364413328

namespace A257499

/-- `A005408(A258415(n+1)-1)` -/
def P3178929728364413328.Spec : Prop :=
  ∀ n, P3178929728364413328.a n = A257499 (n + 1)

end A257499

/-! ## A257499.P8139009992733365610

`A004277(A258415(n+1))-char[A001281(n)]`
-/

namespace A257499.P8139009992733365610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A258415 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257499.P8139009992733365610

namespace A257499

/-- `A004277(A258415(n+1))-char[A001281(n)]` -/
def P8139009992733365610.Spec : Prop :=
  ∀ n, P8139009992733365610.a n = A257499 (n + 1)

end A257499

