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
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A118400: Triangle T, read by rows, where all columns of T are different and yet all columns of the matrix square T^2 (A118401) are equal; a signed version of triangle A087698.

The programs for A118400, there is no canonical definition to state claims against.
-/

/-! ## A118400.P11613485264513344315

`Δ[A010751(n)]*A159853(n)`
-/

namespace A118400.P11613485264513344315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A159853 n

end

end A118400.P11613485264513344315

/-! ## A118400.P6521269657621356294

`A033999(comp[∑[n]]+n)*A159853(n)`
-/

namespace A118400.P6521269657621356294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) * A159853 n

end

end A118400.P6521269657621356294

/-! ## A118400.P6967305741981681032

`(-1)^A003057(n+2)*A159853(n)`
-/

namespace A118400.P6967305741981681032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A003057 (n + 2) : ℤ) * (A159853 n : ℚ)

end

end A118400.P6967305741981681032

/-! ## A118400.P7772990200620917361

`A014451(A003056(n))*A159853(n)`
-/

namespace A118400.P7772990200620917361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003056 n).toNat * A159853 n

end

end A118400.P7772990200620917361

/-! ## A118400.P10813548033986757148

`A014451(A003987(n))*A159853(n)`
-/

namespace A118400.P10813548033986757148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003987 n).toNat * A159853 n

end

end A118400.P10813548033986757148

/-! ## A118400.P17431949229306825047

`A008836(A137688(n))*A159853(n)`
-/

namespace A118400.P17431949229306825047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A137688 n).toNat * A159853 n

end

end A118400.P17431949229306825047

/-! ## A118400.P13381994533791816180

`A097807(A057944(n))*A159853(n)`
-/

namespace A118400.P13381994533791816180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A057944 n).toNat * A159853 n

end

end A118400.P13381994533791816180

/-! ## A118400.P3180683151030883261

`A062157(A002024(n+1))*A159853(n)`
-/

namespace A118400.P3180683151030883261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002024 (n + 1)).toNat * A159853 n

end

end A118400.P3180683151030883261

/-! ## A118400.P14310985214877680506

`A062157(A133196(n+1))*A159853(n)`
-/

namespace A118400.P14310985214877680506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A133196 (n + 1)).toNat * A159853 n

end

end A118400.P14310985214877680506

/-! ## A118400.P7290229832729952180

`A057428(n)^A114327(n)*A159853(n)`
-/

namespace A118400.P7290229832729952180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A114327 n : ℤ) * (A159853 n : ℚ)

end

end A118400.P7290229832729952180

/-!
# A118401: Triangle, read by rows, equal to the matrix square of triangle A118400; also equals the matrix inverse of triangle A118407.

The programs for A118401, there is no canonical definition to state claims against.
-/

/-! ## A118401.P6688110938890555695

`-A196199(A106447(A130321(n)))`
-/

namespace A118401.P6688110938890555695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A196199 (A106447 (A130321 n).toNat).toNat

end

end A118401.P6688110938890555695

/-! ## A118401.P13088426479751490394

`A226304(2*A103217(n))`
-/

namespace A118401.P13088426479751490394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226304 (2 * A103217 n).toNat

end

end A118401.P13088426479751490394

/-! ## A118401.P923507718009622298

`A256232(A111308(A099375(n)))`
-/

namespace A118401.P923507718009622298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (A111308 (A099375 n).toNat).toNat

end

end A118401.P923507718009622298

/-! ## A118401.P8092971729418022186

`A226304(A099375(n)+A099375(n)²)`
-/

namespace A118401.P8092971729418022186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226304 (A099375 n + A099375 n ^ 2).toNat

end

end A118401.P8092971729418022186

/-!
# A118402: Row sums of triangle A118401.

The programs for A118402, the canonical program `A118402.P13483459339420525971` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118402 has offset 0).

The definition of A118402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118402.P13483459339420525971

`2-xor(1-n, (2-n)%2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118402

/-- `2-xor(1-n, (2-n)%2)` -/
def P13483459339420525971.Spec : Prop :=
  ∀ n, P13483459339420525971.a n = A118402 n

theorem P13483459339420525971.correct : P13483459339420525971.Spec := by
  intro n
  simp only [A118402]

end A118402

/-! ## A118402.P15677013404632580862

`Δ[lcm(2, 2-n)]%(n+1)+1`
-/

namespace A118402.P15677013404632580862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (n + 1 : ℤ) + 1

end

end A118402.P15677013404632580862

namespace A118402

/-- `Δ[lcm(2, 2-n)]%(n+1)+1` -/
def P15677013404632580862.Spec : Prop :=
  ∀ n, P15677013404632580862.a n = A118402 n

end A118402

/-! ## A118402.P14196093374277802920

`xor(4-n, xor(n, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A118402.P14196093374277802920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.xor (4 - (n : ℤ)) (Int.xor (n : ℤ) (a (n - 1)))

end

end A118402.P14196093374277802920

namespace A118402

/-- `xor(4-n, xor(n, a(n-1)))` -/
def P14196093374277802920.Spec : Prop :=
  ∀ n, P14196093374277802920.a n = A118402 n

end A118402

/-! ## A118402.P9192432855429555482

`n+1-lcm(2*n-3, n%2)`
-/

namespace A118402.P9192432855429555482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm ((2 * n : ℤ) - 3) ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A118402.P9192432855429555482

namespace A118402

/-- `n+1-lcm(2*n-3, n%2)` -/
def P9192432855429555482.Spec : Prop :=
  ∀ n, P9192432855429555482.a n = A118402 n

end A118402

/-! ## A118402.P16715006694981610155

`n+1-lcm(n-3+n, and(1, n))`
-/

namespace A118402.P16715006694981610155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm ((n : ℤ) - 3 + (n : ℤ)) (Nat.land 1 n : ℤ) : ℤ)

end

end A118402.P16715006694981610155

namespace A118402

/-- `n+1-lcm(n-3+n, and(1, n))` -/
def P16715006694981610155.Spec : Prop :=
  ∀ n, P16715006694981610155.a n = A118402 n

end A118402

/-! ## A118402.P372667732173369063

`5-(a(n-1)-(-1)^n)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A118402.P372667732173369063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  5 - (a (n - 1) - (-1) ^ n)

end

end A118402.P372667732173369063

namespace A118402

/-- `5-(a(n-1)-(-1)^n)` -/
def P372667732173369063.Spec : Prop :=
  ∀ n, P372667732173369063.a n = A118402 n

end A118402

/-! ## A118402.P2067821039472016214

`a(gcd(2, n))+3-a(n-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A118402.P2067821039472016214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (Nat.gcd 2 n) + (3 - a (n - 1))

end

end A118402.P2067821039472016214

namespace A118402

/-- `a(gcd(2, n))+3-a(n-1)` -/
def P2067821039472016214.Spec : Prop :=
  ∀ n, P2067821039472016214.a n = A118402 n

end A118402

/-! ## A118402.P9693774152241890377

`n+2-and(2*n+1, a(n-1)+n-2)` with `a(0)=1, a(1)=1`
-/

namespace A118402.P9693774152241890377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 2 : ℤ) - Int.land (2 * n + 1 : ℤ) (a (n - 1) + ((n : ℤ) - 2))

end

end A118402.P9693774152241890377

namespace A118402

/-- `n+2-and(2*n+1, a(n-1)+n-2)` -/
def P9693774152241890377.Spec : Prop :=
  ∀ n, P9693774152241890377.a n = A118402 n

end A118402

/-! ## A118402.P14889877074424762249

`A267352(xor(1, n))-A004442(n)`
-/

namespace A118402.P14889877074424762249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 (Nat.xor 1 n) - A004442 n

end

end A118402.P14889877074424762249

namespace A118402

/-- `A267352(xor(1, n))-A004442(n)` -/
def P14889877074424762249.Spec : Prop :=
  ∀ n, P14889877074424762249.a n = A118402 n

end A118402

/-! ## A118402.P17559442909467206385

`A267352(A004442(n))-A004442(n)`
-/

namespace A118402.P17559442909467206385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 (A004442 n).toNat - A004442 n

end

end A118402.P17559442909467206385

namespace A118402

/-- `A267352(A004442(n))-A004442(n)` -/
def P17559442909467206385.Spec : Prop :=
  ∀ n, P17559442909467206385.a n = A118402 n

end A118402

/-! ## A118402.P6105685516577793768

`∑[A118401(∑[n])]`
-/

namespace A118402.P6105685516577793768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118401 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118402.P6105685516577793768

namespace A118402

/-- `∑[A118401(∑[n])]` -/
def P6105685516577793768.Spec : Prop :=
  ∀ n, P6105685516577793768.a n = A118402 n

end A118402

/-!
# A118403: Unsigned row sums of triangle A118401; a(n) = A118402(n^2-n+2), where A118402 is the row sums of triangle A118400.

The programs for A118403, the canonical program `A118403.P5566679814895796632` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118403 has offset 0).

The definition of A118403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118403.P5566679814895796632

`∑[2*(n-a(2%n))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118403

/-- `∑[2*(n-a(2%n))]` -/
def P5566679814895796632.Spec : Prop :=
  ∀ n, P5566679814895796632.a n = A118403 n

theorem P5566679814895796632.correct : P5566679814895796632.Spec := by
  intro n
  simp only [A118403]

end A118403

/-! ## A118403.P1237852338329366993

`∑[a(n-1)+2]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A118403.P1237852338329366993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118403.P1237852338329366993

namespace A118403

/-- `∑[a(n-1)+2]` -/
def P1237852338329366993.Spec : Prop :=
  ∀ n, (P1237852338329366993.a n : ℤ) = A118403 n

end A118403

/-! ## A118403.P12640210888531258017

`(1-n)²+2-abs(2-n)`
-/

namespace A118403.P12640210888531258017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (2 - |2 - (n : ℤ)|)

end

end A118403.P12640210888531258017

namespace A118403

/-- `(1-n)²+2-abs(2-n)` -/
def P12640210888531258017.Spec : Prop :=
  ∀ n, P12640210888531258017.a n = A118403 n

end A118403

/-! ## A118403.P9008857453023394959

`gcd((2-n)²+n+1, C(2, n²))`
-/

namespace A118403.P9008857453023394959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 - (n : ℤ)) ^ 2 + (n + 1 : ℤ)) (Nat.choose 2 (n ^ 2) : ℤ)

end

end A118403.P9008857453023394959

namespace A118403

/-- `gcd((2-n)²+n+1, C(2, n²))` -/
def P9008857453023394959.Spec : Prop :=
  ∀ n, (P9008857453023394959.a n : ℤ) = A118403 n

end A118403

/-! ## A118403.P5959154795070370122

`∑[(n-2)*gcd(2, a(n-1))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A118403.P5959154795070370122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  ((n : ℤ) - 2) * (Int.gcd 2 (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118403.P5959154795070370122

namespace A118403

/-- `∑[(n-2)*gcd(2, a(n-1))]` -/
def P5959154795070370122.Spec : Prop :=
  ∀ n, P5959154795070370122.a n = A118403 n

end A118403

/-! ## A118403.P2725497125856780131

`abs(4-(a(n-1)+n)-n)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A118403.P2725497125856780131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  |4 - (a (n - 1) + (n : ℤ)) - (n : ℤ)|

end

end A118403.P2725497125856780131

namespace A118403

/-- `abs(4-(a(n-1)+n)-n)` -/
def P2725497125856780131.Spec : Prop :=
  ∀ n, P2725497125856780131.a n = A118403 n

end A118403

/-! ## A118403.P11864920379157788491

`C((2-n)²+n+1, floor(2*n/(n+2)))`
-/

namespace A118403.P11864920379157788491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 - (n : ℤ)) ^ 2 + (n + 1 : ℤ)).toNat ⌊(2 * n : ℚ) / (n + 2 : ℚ)⌋.toNat

end

end A118403.P11864920379157788491

namespace A118403

/-- `C((2-n)²+n+1, floor(2*n/(n+2)))` -/
def P11864920379157788491.Spec : Prop :=
  ∀ n, (P11864920379157788491.a n : ℤ) = A118403 n

end A118403

/-! ## A118403.P15145040433329362892

`or(1, A289207(n)²+n)`
-/

namespace A118403.P15145040433329362892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A289207 n ^ 2 + (n : ℤ))

end

end A118403.P15145040433329362892

namespace A118403

/-- `or(1, A289207(n)²+n)` -/
def P15145040433329362892.Spec : Prop :=
  ∀ n, P15145040433329362892.a n = A118403 n

end A118403

/-! ## A118403.P3252944219703993390

`A027688(n-ceil(atan(n)))%(4*C(n, 2)+2)`
-/

namespace A118403.P3252944219703993390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027688 ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉).toNat) (4 * Nat.choose n 2 + 2 : ℤ)

end

end A118403.P3252944219703993390

namespace A118403

/-- `A027688(n-ceil(atan(n)))%(4*C(n, 2)+2)` -/
def P3252944219703993390.Spec : Prop :=
  ∀ n, P3252944219703993390.a n = A118403 n

end A118403

/-! ## A118403.P16223000984074658939

`∑[2*n-A000005(2*n-a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A118403.P16223000984074658939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (2 * n : ℤ) - A000005 ((2 * n : ℤ) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118403.P16223000984074658939

namespace A118403

/-- `∑[2*n-A000005(2*n-a(n-2))]` -/
def P16223000984074658939.Spec : Prop :=
  ∀ n, P16223000984074658939.a n = A118403 n

end A118403

/-! ## A118403.P7570090169379967805

`A028309(A092535(n))`
-/

namespace A118403.P7570090169379967805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028309 (A092535 n).toNat

end

end A118403.P7570090169379967805

namespace A118403

/-- `A028309(A092535(n))` -/
def P7570090169379967805.Spec : Prop :=
  ∀ n, P7570090169379967805.a n = A118403 n

end A118403

/-! ## A118403.P9024064777838286421

`A028309(A058992(n+1))`
-/

namespace A118403.P9024064777838286421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028309 (A058992 (n + 1)).toNat

end

end A118403.P9024064777838286421

namespace A118403

/-- `A028309(A058992(n+1))` -/
def P9024064777838286421.Spec : Prop :=
  ∀ n, P9024064777838286421.a n = A118403 n

end A118403

/-! ## A118403.P18409682131696751006

`A000265(∑[A004275(abs(1-n))]+1)`
-/

namespace A118403.P18409682131696751006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A118403.P18409682131696751006

namespace A118403

/-- `A000265(∑[A004275(abs(1-n))]+1)` -/
def P18409682131696751006.Spec : Prop :=
  ∀ n, P18409682131696751006.a n = A118403 n

end A118403

/-! ## A118403.P6853772029221127973

`A334869(A334869((1-n)²+n))`
-/

namespace A118403.P6853772029221127973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334869 (A334869 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat).toNat

end

end A118403.P6853772029221127973

namespace A118403

/-- `A334869(A334869((1-n)²+n))` -/
def P6853772029221127973.Spec : Prop :=
  ∀ n, P6853772029221127973.a n = A118403 n

end A118403

/-! ## A118403.P3885835791245739626

`A004273(A022856(n+2))`
-/

namespace A118403.P3885835791245739626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A022856 (n + 2)).toNat

end

end A118403.P3885835791245739626

namespace A118403

/-- `A004273(A022856(n+2))` -/
def P3885835791245739626.Spec : Prop :=
  ∀ n, P3885835791245739626.a n = A118403 n

end A118403

/-! ## A118403.P15329238488645805010

`A005408(A000217(n)-A004275(n))`
-/

namespace A118403.P15329238488645805010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000217 n - A004275 n).toNat

end

end A118403.P15329238488645805010

namespace A118403

/-- `A005408(A000217(n)-A004275(n))` -/
def P15329238488645805010.Spec : Prop :=
  ∀ n, P15329238488645805010.a n = A118403 n

end A118403

/-! ## A118403.P14983066984353048430

`A004273(A000217(n)+1-A004275(n))`
-/

namespace A118403.P14983066984353048430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000217 n + (1 - A004275 n)).toNat

end

end A118403.P14983066984353048430

namespace A118403

/-- `A004273(A000217(n)+1-A004275(n))` -/
def P14983066984353048430.Spec : Prop :=
  ∀ n, P14983066984353048430.a n = A118403 n

end A118403

/-! ## A118403.P12288007686243306222

`A004273(1-(A004275(n)-A000217(n)))`
-/

namespace A118403.P12288007686243306222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - (A004275 n - A000217 n)).toNat

end

end A118403.P12288007686243306222

namespace A118403

/-- `A004273(1-(A004275(n)-A000217(n)))` -/
def P12288007686243306222.Spec : Prop :=
  ∀ n, P12288007686243306222.a n = A118403 n

end A118403

/-! ## A118403.P11067523134411555467

`A004273(A000217(n)+2-A004280(n+1))`
-/

namespace A118403.P11067523134411555467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000217 n + (2 - A004280 (n + 1))).toNat

end

end A118403.P11067523134411555467

namespace A118403

/-- `A004273(A000217(n)+2-A004280(n+1))` -/
def P11067523134411555467.Spec : Prop :=
  ∀ n, P11067523134411555467.a n = A118403 n

end A118403

/-!
# A118404: Triangle T, read by rows, where all columns of T are different and yet all columns of the matrix square T^2 (A118407) are equal; also equals the matrix inverse of triangle A118400.

The programs for A118404, there is no canonical definition to state claims against.
-/

/-! ## A118404.P4329681643586569475

`A002324(A032437(2*n+5))-A047999(n)`
-/

namespace A118404.P4329681643586569475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A032437 (2 * n + 5)).toNat - A047999 n

end

end A118404.P4329681643586569475

/-!
# A118405: Row sums of triangle A118404.

The programs for A118405, the canonical program `A118405.P16701848106596771454` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118405 has offset 0).

The definition of A118405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118405.P12771081569521245672

`(-2)^(n-2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A118405.P12771081569521245672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 2)

end

end A118405.P12771081569521245672

namespace A118405

/-- `(-2)^(n-2)-a(n-2)` -/
def P12771081569521245672.Spec : Prop :=
  ∀ n, P12771081569521245672.a n = (A118405 n : ℚ)

end A118405

/-! ## A118405.P16701848106596771454

`2*(1-or(and(3, n-1), a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118405

/-- `2*(1-or(and(3, n-1), a(n-1)))` -/
def P16701848106596771454.Spec : Prop :=
  ∀ n, P16701848106596771454.a n = A118405 n

theorem P16701848106596771454.correct : P16701848106596771454.Spec := by
  intro n
  simp only [A118405]

end A118405

/-! ## A118405.P5529764350977420370

`A084099(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A118405.P5529764350977420370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084099 n - 2 * a (n - 1)

end

end A118405.P5529764350977420370

namespace A118405

/-- `A084099(n)-2*a(n-1)` -/
def P5529764350977420370.Spec : Prop :=
  ∀ n, P5529764350977420370.a n = A118405 n

end A118405

/-! ## A118405.P695025624013070664

`Δ[A087960(2*n+1)*A139800(n)]`
-/

namespace A118405.P695025624013070664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n + 1) * A139800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118405.P695025624013070664

namespace A118405

/-- `Δ[A087960(2*n+1)*A139800(n)]` -/
def P695025624013070664.Spec : Prop :=
  ∀ n, P695025624013070664.a n = A118405 n

end A118405

/-! ## A118405.P14884792820260621744

`Δ[(A001045(n)-A007909(n))*A033999(n)]`
-/

namespace A118405.P14884792820260621744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 n - A007909 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118405.P14884792820260621744

namespace A118405

/-- `Δ[(A001045(n)-A007909(n))*A033999(n)]` -/
def P14884792820260621744.Spec : Prop :=
  ∀ n, P14884792820260621744.a n = A118405 n

end A118405

/-!
# A118406: Unsigned row sums of triangle A118404.

The programs for A118406, the canonical program `A118406.P14829043614593646063` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118406 has offset 0).

The definition of A118406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118406.P2769099348806743288

`2*(a(n-1)-log2(gcd(4, n)))` with `a(0)=1`
-/

namespace A118406.P2769099348806743288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - Real.logb 2 (Nat.gcd 4 n : ℝ))

end

end A118406.P2769099348806743288

namespace A118406

/-- `2*(a(n-1)-log2(gcd(4, n)))` -/
def P2769099348806743288.Spec : Prop :=
  ∀ n, P2769099348806743288.a n = (A118406 n : ℝ)

end A118406

/-! ## A118406.P14829043614593646063

`2*(a(n-1)-val(or(4, n), 2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118406

/-- `2*(a(n-1)-val(or(4, n), 2))` -/
def P14829043614593646063.Spec : Prop :=
  ∀ n, P14829043614593646063.a n = A118406 n

theorem P14829043614593646063.correct : P14829043614593646063.Spec := by
  intro n
  simp only [A118406]

end A118406

/-! ## A118406.P3144411035219138265

`2*(a(n-1)-∑[gcd(2, ∑[n])]%3)` with `a(0)=1`
-/

namespace A118406.P3144411035219138265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A118406.P3144411035219138265

namespace A118406

/-- `2*(a(n-1)-∑[gcd(2, ∑[n])]%3)` -/
def P3144411035219138265.Spec : Prop :=
  ∀ n, P3144411035219138265.a n = A118406 n

end A118406

/-! ## A118406.P7019104714633605642

`2*(a(n-2)-2)+a(n-1)+and(2, n)` with `a(0)=1, a(1)=2`
-/

namespace A118406.P7019104714633605642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) - 2) + (a (n - 1) + (Nat.land 2 n : ℤ))

end

end A118406.P7019104714633605642

namespace A118406

/-- `2*(a(n-2)-2)+a(n-1)+and(2, n)` -/
def P7019104714633605642.Spec : Prop :=
  ∀ n, P7019104714633605642.a n = A118406 n

end A118406

/-! ## A118406.P13154769307237030384

`2*(a(n-1)+(a(n-2)-a(n-1))%3)` with `a(0)=1, a(1)=2`
-/

namespace A118406.P13154769307237030384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + Int.tmod (a (n - 2) - a (n - 1)) 3)

end

end A118406.P13154769307237030384

namespace A118406

/-- `2*(a(n-1)+(a(n-2)-a(n-1))%3)` -/
def P13154769307237030384.Spec : Prop :=
  ∀ n, P13154769307237030384.a n = A118406 n

end A118406

/-! ## A118406.P4006598227737792748

`A390562(n)-A187331(n)`
-/

namespace A118406.P4006598227737792748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390562 n - A187331 n

end

end A118406.P4006598227737792748

namespace A118406

/-- `A390562(n)-A187331(n)` -/
def P4006598227737792748.Spec : Prop :=
  ∀ n, P4006598227737792748.a n = A118406 n

end A118406

/-! ## A118406.P6682086065412771273

`A256494(n+1)+A177704(n)`
-/

namespace A118406.P6682086065412771273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 1) + A177704 n

end

end A118406.P6682086065412771273

namespace A118406

/-- `A256494(n+1)+A177704(n)` -/
def P6682086065412771273.Spec : Prop :=
  ∀ n, P6682086065412771273.a n = A118406 n

end A118406

/-! ## A118406.P13272247821320360858

`A049332(n)-A007910(n)`
-/

namespace A118406.P13272247821320360858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 n - A007910 n

end

end A118406.P13272247821320360858

namespace A118406

/-- `A049332(n)-A007910(n)` -/
def P13272247821320360858.Spec : Prop :=
  ∀ n, P13272247821320360858.a n = A118406 n

end A118406

/-! ## A118406.P2804955928989079983

`floor(A177704(n)+A062709(n)/5)`
-/

namespace A118406.P2804955928989079983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177704 n : ℚ) + (A062709 n : ℚ) / 5⌋

end

end A118406.P2804955928989079983

namespace A118406

/-- `floor(A177704(n)+A062709(n)/5)` -/
def P2804955928989079983.Spec : Prop :=
  ∀ n, P2804955928989079983.a n = A118406 n

end A118406

/-! ## A118406.P15933866416146959299

`2*(a(n-1)-A000032(2*n)%3)` with `a(0)=1`
-/

namespace A118406.P15933866416146959299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - Int.tmod (A000032 (2 * n)) 3)

end

end A118406.P15933866416146959299

namespace A118406

/-- `2*(a(n-1)-A000032(2*n)%3)` -/
def P15933866416146959299.Spec : Prop :=
  ∀ n, P15933866416146959299.a n = A118406 n

end A118406

/-! ## A118406.P4885837165672588356

`A000079(n)-2*A140659(n)`
-/

namespace A118406.P4885837165672588356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2 * A140659 n

end

end A118406.P4885837165672588356

namespace A118406

/-- `A000079(n)-2*A140659(n)` -/
def P4885837165672588356.Spec : Prop :=
  ∀ n, P4885837165672588356.a n = A118406 n

end A118406

/-! ## A118406.P11177005391589385590

`A011782(n+1)-2*A140659(n)`
-/

namespace A118406.P11177005391589385590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - 2 * A140659 n

end

end A118406.P11177005391589385590

namespace A118406

/-- `A011782(n+1)-2*A140659(n)` -/
def P11177005391589385590.Spec : Prop :=
  ∀ n, P11177005391589385590.a n = A118406 n

end A118406

/-!
# A118407: Triangle, read by rows, equal to the matrix square of triangle A118404; also equals the matrix inverse of triangle A118401.

The programs for A118407, there is no canonical definition to state claims against.
-/

/-! ## A118407.P825289610225819557

`A262780(A062344(A099375(n)²))`
-/

namespace A118407.P825289610225819557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (A062344 (A099375 n ^ 2).toNat).toNat

end

end A118407.P825289610225819557

/-! ## A118407.P4288899272195744806

`A020639(A048854(n))*A128834(A099375(n))`
-/

namespace A118407.P4288899272195744806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048854 n).toNat * A128834 (A099375 n).toNat

end

end A118407.P4288899272195744806

/-! ## A118407.P8410108134130434782

`A321925(A158753(n+2))`
-/

namespace A118407.P8410108134130434782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321925 (A158753 (n + 2)).toNat

end

end A118407.P8410108134130434782

/-! ## A118407.P6841177729688766740

`A208955(round(3/acot(2*n)²)*A025581(n))`
-/

namespace A118407.P6841177729688766740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208955 (SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2) * A025581 n).toNat

end

end A118407.P6841177729688766740

/-! ## A118407.P2264845904849354484

`A008683(A099375(n))*A226304(2*A103217(n))`
-/

namespace A118407.P2264845904849354484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A099375 n).toNat * A226304 (2 * A103217 n).toNat

end

end A118407.P2264845904849354484

/-!
# A118408: Row sums of triangle A118407.

The programs for A118408, the canonical program `A118408.P7991888673922869917` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118408 has offset 0).

The definition of A118408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118408.P7991888673922869917

`A137505(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118408

/-- `A137505(n)-a(n-2)` -/
def P7991888673922869917.Spec : Prop :=
  ∀ n, P7991888673922869917.a n = A118408 n

theorem P7991888673922869917.correct : P7991888673922869917.Spec := by
  intro n
  simp only [A118408]

end A118408

/-! ## A118408.P6501612276194551554

`∑[A118407(∑[n])]`
-/

namespace A118408.P6501612276194551554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118407 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118408.P6501612276194551554

namespace A118408

/-- `∑[A118407(∑[n])]` -/
def P6501612276194551554.Spec : Prop :=
  ∀ n, P6501612276194551554.a n = A118408 n

end A118408

/-!
# A118409: Unsigned row sums of triangle A118407.

The programs for A118409, there is no canonical definition to state claims against.
-/

/-! ## A118409.P10668805341751321481

`∑[abs(A118407(∑[n]))]`
-/

namespace A118409.P10668805341751321481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118407 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118409.P10668805341751321481

/-! ## A118409.P4265121384064554273

`∑[A000194(A118407(∑[n])²)]`
-/

namespace A118409.P4265121384064554273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A118407 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118409.P4265121384064554273

/-!
# A118410: G.f. A(x) = Sum_{n>=0} a(n)*x^n/2^(n*(n-1)/2) satisfies: A(x) = Sum_{n>=0} A(x)^n*x^n/2^(n*(n-1)/2).

The programs for A118410, there is no canonical definition to state claims against.
-/

/-! ## A118410.P1745773658633317708

`and(A183483(A023439(2*n+1)), A240936(n))`
-/

namespace A118410.P1745773658633317708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183483 (A023439 (2 * n + 1)).toNat) (A240936 n)

end

end A118410.P1745773658633317708

/-! ## A118410.P18386354475138783228

`and(A183483(A171997(3*n+4)), A240936(n))`
-/

namespace A118410.P18386354475138783228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183483 (A171997 (3 * n + 4)).toNat) (A240936 n)

end

end A118410.P18386354475138783228

/-!
# A118413: Triangle read by rows: T(n,k) = (2*n-1)*2^(k-1), 0

The programs for A118413, the canonical program `A118413.P8171649626606925658` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118413 has offset 1).

The definition of A118413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118413.P8171649626606925658

`A059268(n)*A131507(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A118413

/-- `A059268(n)*A131507(n)` -/
def P8171649626606925658.Spec : Prop :=
  ∀ n, P8171649626606925658.a n = A118413 (n + 1)

theorem P8171649626606925658.correct : P8171649626606925658.Spec := by
  intro n
  simp only [A118413, Nat.add_sub_cancel]

end A118413

/-! ## A118413.P15949000476604918146

`A393901(n+1)+A152920(n)`
-/

namespace A118413.P15949000476604918146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393901 (n + 1) + A152920 n

end

end A118413.P15949000476604918146

namespace A118413

/-- `A393901(n+1)+A152920(n)` -/
def P15949000476604918146.Spec : Prop :=
  ∀ n, P15949000476604918146.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P10935104765922935404

`2^A002262(n)*A131507(n)`
-/

namespace A118413.P10935104765922935404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A131507 n : ℚ)

end

end A118413.P10935104765922935404

namespace A118413

/-- `2^A002262(n)*A131507(n)` -/
def P10935104765922935404.Spec : Prop :=
  ∀ n, P10935104765922935404.a n = (A118413 (n + 1) : ℚ)

end A118413

/-! ## A118413.P16208910529855501755

`A118416(n+1)-A123002(n+1)`
-/

namespace A118413.P16208910529855501755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118416 (n + 1) - A123002 (n + 1)

end

end A118413.P16208910529855501755

namespace A118413

/-- `A118416(n+1)-A123002(n+1)` -/
def P16208910529855501755.Spec : Prop :=
  ∀ n, P16208910529855501755.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P8117738982919355732

`(A111650(n+1)-1)*A059268(n)`
-/

namespace A118413.P8117738982919355732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111650 (n + 1) - 1) * A059268 n

end

end A118413.P8117738982919355732

namespace A118413

/-- `(A111650(n+1)-1)*A059268(n)` -/
def P8117738982919355732.Spec : Prop :=
  ∀ n, P8117738982919355732.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P5853293880487425335

`lcm(A059268(n), A131507(n%(n+1)))`
-/

namespace A118413.P5853293880487425335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A131507 (n % (n + 1)))

end

end A118413.P5853293880487425335

namespace A118413

/-- `lcm(A059268(n), A131507(n%(n+1)))` -/
def P5853293880487425335.Spec : Prop :=
  ∀ n, (P5853293880487425335.a n : ℤ) = A118413 (n + 1)

end A118413

/-! ## A118413.P3522177209560155263

`A005408(A003056(n))*A059268(n)`
-/

namespace A118413.P3522177209560155263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003056 n).toNat * A059268 n

end

end A118413.P3522177209560155263

namespace A118413

/-- `A005408(A003056(n))*A059268(n)` -/
def P3522177209560155263.Spec : Prop :=
  ∀ n, P3522177209560155263.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P985185820288700285

`A000079(A002262(n))*A131507(n)`
-/

namespace A118413.P985185820288700285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A131507 n

end

end A118413.P985185820288700285

namespace A118413

/-- `A000079(A002262(n))*A131507(n)` -/
def P985185820288700285.Spec : Prop :=
  ∀ n, P985185820288700285.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P12350071645965804804

`A004273(A002024(n+1))*A059268(n)`
-/

namespace A118413.P12350071645965804804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002024 (n + 1)).toNat * A059268 n

end

end A118413.P12350071645965804804

namespace A118413

/-- `A004273(A002024(n+1))*A059268(n)` -/
def P12350071645965804804.Spec : Prop :=
  ∀ n, P12350071645965804804.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P13626126452362371110

`(A003056(n)+A002024(n+1))*A059268(n)`
-/

namespace A118413.P13626126452362371110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + A002024 (n + 1)) * A059268 n

end

end A118413.P13626126452362371110

namespace A118413

/-- `(A003056(n)+A002024(n+1))*A059268(n)` -/
def P13626126452362371110.Spec : Prop :=
  ∀ n, P13626126452362371110.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P17781699499303547143

`A000079(A002262(n))*A005408(A003056(n))`
-/

namespace A118413.P17781699499303547143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A005408 (A003056 n).toNat

end

end A118413.P17781699499303547143

namespace A118413

/-- `A000079(A002262(n))*A005408(A003056(n))` -/
def P17781699499303547143.Spec : Prop :=
  ∀ n, P17781699499303547143.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P3729434152943159532

`A000267(A061885(n))*A059268(n)`
-/

namespace A118413.P3729434152943159532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A061885 n).toNat * A059268 n

end

end A118413.P3729434152943159532

namespace A118413

/-- `A000267(A061885(n))*A059268(n)` -/
def P3729434152943159532.Spec : Prop :=
  ∀ n, P3729434152943159532.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P17599029259205172751

`A004273(A000194(2*n+1))*A059268(n)`
-/

namespace A118413.P17599029259205172751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000194 (2 * n + 1)).toNat * A059268 n

end

end A118413.P17599029259205172751

namespace A118413

/-- `A004273(A000194(2*n+1))*A059268(n)` -/
def P17599029259205172751.Spec : Prop :=
  ∀ n, P17599029259205172751.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P2234808014330044518

`A135764(A245300(n)+1)`
-/

namespace A118413.P2234808014330044518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A245300 n + 1).toNat

end

end A118413.P2234808014330044518

namespace A118413

/-- `A135764(A245300(n)+1)` -/
def P2234808014330044518.Spec : Prop :=
  ∀ n, P2234808014330044518.a n = A118413 (n + 1)

end A118413

/-! ## A118413.P3664145456282550753

`(A294317(n)+A000005(A059268(n)))*A059268(n)`
-/

namespace A118413.P3664145456282550753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294317 n + A000005 (A059268 n).toNat) * A059268 n

end

end A118413.P3664145456282550753

namespace A118413

/-- `(A294317(n)+A000005(A059268(n)))*A059268(n)` -/
def P3664145456282550753.Spec : Prop :=
  ∀ n, P3664145456282550753.a n = A118413 (n + 1)

end A118413

/-!
# A118414: a(n) = (2*n - 1) * (2^n - 1).

The programs for A118414, the canonical program `A118414.P15947017237183833583` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118414 has offset 1).

The definition of A118414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118414.P15947017237183833583

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=9, a(2)=35, a(3)=105`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118414

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P15947017237183833583.Spec : Prop :=
  ∀ n, P15947017237183833583.a n = A118414 (n + 1)

theorem P15947017237183833583.correct : P15947017237183833583.Spec := by
  intro n
  simp only [A118414, Nat.add_sub_cancel]

end A118414

/-! ## A118414.P920013604476094858

`∑[2^n]*Δ[n²]`
-/

namespace A118414.P920013604476094858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A118414.P920013604476094858

namespace A118414

/-- `∑[2^n]*Δ[n²]` -/
def P920013604476094858.Spec : Prop :=
  ∀ n, P920013604476094858.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P9196074177345547407

`or(1, (2*n+1)*∑[2^n])`
-/

namespace A118414.P9196074177345547407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A118414.P9196074177345547407

namespace A118414

/-- `or(1, (2*n+1)*∑[2^n])` -/
def P9196074177345547407.Spec : Prop :=
  ∀ n, (P9196074177345547407.a n : ℤ) = A118414 (n + 1)

end A118414

/-! ## A118414.P10597973491139663172

`2*(lcm(2^n, Δ[n²])-n)-1`
-/

namespace A118414.P10597973491139663172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Int.lcm (2 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n : ℤ)) - 1

end

end A118414.P10597973491139663172

namespace A118414

/-- `2*(lcm(2^n, Δ[n²])-n)-1` -/
def P10597973491139663172.Spec : Prop :=
  ∀ n, P10597973491139663172.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P5910695923551176827

`floor((2*n+1)*∑[2*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A118414.P5910695923551176827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118414.P5910695923551176827

namespace A118414

/-- `floor((2*n+1)*∑[2*a(n-1)])` -/
def P5910695923551176827.Spec : Prop :=
  ∀ n, (P5910695923551176827.a n : ℤ) = A118414 (n + 1)

end A118414

/-! ## A118414.P9450594232118866991

`lcm(2*n+1, (2*n+1)*∑[2^n])`
-/

namespace A118414.P9450594232118866991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A118414.P9450594232118866991

namespace A118414

/-- `lcm(2*n+1, (2*n+1)*∑[2^n])` -/
def P9450594232118866991.Spec : Prop :=
  ∀ n, (P9450594232118866991.a n : ℤ) = A118414 (n + 1)

end A118414

/-! ## A118414.P12343126564683513207

`(2*n+1)*Δ[2*a(n-1)]-(2*n+1)` with `a(0)=2`
-/

namespace A118414.P12343126564683513207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (2 * n + 1 : ℤ)

end

end A118414.P12343126564683513207

namespace A118414

/-- `(2*n+1)*Δ[2*a(n-1)]-(2*n+1)` -/
def P12343126564683513207.Spec : Prop :=
  ∀ n, P12343126564683513207.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P16364550177059592614

`A118417(n)-Δ[n²]`
-/

namespace A118414.P16364550177059592614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118417 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118414.P16364550177059592614

namespace A118414

/-- `A118417(n)-Δ[n²]` -/
def P16364550177059592614.Spec : Prop :=
  ∀ n, P16364550177059592614.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P12669940251047725534

`∑[A128135(n+2)-2]`
-/

namespace A118414.P12669940251047725534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118414.P12669940251047725534

namespace A118414

/-- `∑[A128135(n+2)-2]` -/
def P12669940251047725534.Spec : Prop :=
  ∀ n, P12669940251047725534.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P4431480797349403359

`record[(n+1)*A077896(n)]`
-/

namespace A118414.P4431480797349403359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118414.P4431480797349403359

namespace A118414

/-- `record[(n+1)*A077896(n)]` -/
def P4431480797349403359.Spec : Prop :=
  ∀ n, P4431480797349403359.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P11167518106566162882

`record[(n+1)*A316742(n)]`
-/

namespace A118414.P11167518106566162882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118414.P11167518106566162882

namespace A118414

/-- `record[(n+1)*A316742(n)]` -/
def P11167518106566162882.Spec : Prop :=
  ∀ n, P11167518106566162882.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P8681772908150175231

`record[or(1, n)*A290678(n)]`
-/

namespace A118414.P8681772908150175231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A290678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118414.P8681772908150175231

namespace A118414

/-- `record[or(1, n)*A290678(n)]` -/
def P8681772908150175231.Spec : Prop :=
  ∀ n, P8681772908150175231.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P5094306391398420229

`2*A208658(n+1)+1`
-/

namespace A118414.P5094306391398420229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208658 (n + 1) + 1

end

end A118414.P5094306391398420229

namespace A118414

/-- `2*A208658(n+1)+1` -/
def P5094306391398420229.Spec : Prop :=
  ∀ n, P5094306391398420229.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P3855954875214389409

`2*A271771(n+1)-1`
-/

namespace A118414.P3855954875214389409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271771 (n + 1) - 1

end

end A118414.P3855954875214389409

namespace A118414

/-- `2*A271771(n+1)-1` -/
def P3855954875214389409.Spec : Prop :=
  ∀ n, P3855954875214389409.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P3804680137028110303

`A059673(n+1)-(n+1)`
-/

namespace A118414.P3804680137028110303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059673 (n + 1) - (n + 1 : ℤ)

end

end A118414.P3804680137028110303

namespace A118414

/-- `A059673(n+1)-(n+1)` -/
def P3804680137028110303.Spec : Prop :=
  ∀ n, P3804680137028110303.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P6578716153358568605

`abs(Δ[n²]*A000225(n+1))`
-/

namespace A118414.P6578716153358568605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000225 (n + 1)|

end

end A118414.P6578716153358568605

namespace A118414

/-- `abs(Δ[n²]*A000225(n+1))` -/
def P6578716153358568605.Spec : Prop :=
  ∀ n, P6578716153358568605.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P7227846262906371638

`A392083(n+1)-2*(n+1)`
-/

namespace A118414.P7227846262906371638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392083 (n + 1) - (2 * (n + 1) : ℤ)

end

end A118414.P7227846262906371638

namespace A118414

/-- `A392083(n+1)-2*(n+1)` -/
def P7227846262906371638.Spec : Prop :=
  ∀ n, P7227846262906371638.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P1649354123086788504

`A075554(2*n+1)-Δ[n²]`
-/

namespace A118414.P1649354123086788504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075554 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118414.P1649354123086788504

namespace A118414

/-- `A075554(2*n+1)-Δ[n²]` -/
def P1649354123086788504.Spec : Prop :=
  ∀ n, P1649354123086788504.a n = A118414 (n + 1)

end A118414

/-! ## A118414.P6247013780093916727

`A132314(2*n+1)-Δ[n²]`
-/

namespace A118414.P6247013780093916727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132314 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118414.P6247013780093916727

namespace A118414

/-- `A132314(2*n+1)-Δ[n²]` -/
def P6247013780093916727.Spec : Prop :=
  ∀ n, P6247013780093916727.a n = A118414 (n + 1)

end A118414

/-!
# A118415: a(n) = (4*n - 3) * 2^(n - 1).

The programs for A118415, the canonical program `A118415.P15989238626860958252` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118415 has offset 1).

The definition of A118415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118415.P15989238626860958252

`(4*n+1)*2^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118415

/-- `(4*n+1)*2^n` -/
def P15989238626860958252.Spec : Prop :=
  ∀ n, (P15989238626860958252.a n : ℤ) = A118415 (n + 1)

theorem P15989238626860958252.correct : P15989238626860958252.Spec := by
  intro n
  simp only [A118415, Nat.add_sub_cancel]

end A118415

/-! ## A118415.P14350657644718009996

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A118415.P14350657644718009996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A118415.P14350657644718009996

namespace A118415

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P14350657644718009996.Spec : Prop :=
  ∀ n, P14350657644718009996.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P4379941849760154194

`a(n-1)+a(n-1)+2^(n+2)` with `a(0)=1`
-/

namespace A118415.P4379941849760154194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ (n + 2))

end

end A118415.P4379941849760154194

namespace A118415

/-- `a(n-1)+a(n-1)+2^(n+2)` -/
def P4379941849760154194.Spec : Prop :=
  ∀ n, (P4379941849760154194.a n : ℤ) = A118415 (n + 1)

end A118415

/-! ## A118415.P16630226548642562104

`lcm(2*n+2*n+1, Δ[2*a(n-1)])` with `a(0)=1`
-/

namespace A118415.P16630226548642562104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + (2 * n + 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118415.P16630226548642562104

namespace A118415

/-- `lcm(2*n+2*n+1, Δ[2*a(n-1)])` -/
def P16630226548642562104.Spec : Prop :=
  ∀ n, (P16630226548642562104.a n : ℤ) = A118415 (n + 1)

end A118415

/-! ## A118415.P5529149127121569139

`A097578(2*n)`
-/

namespace A118415.P5529149127121569139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097578 (2 * n)

end

end A118415.P5529149127121569139

namespace A118415

/-- `A097578(2*n)` -/
def P5529149127121569139.Spec : Prop :=
  ∀ n, P5529149127121569139.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P2641415543315893885

`A118417(n)-2^n`
-/

namespace A118415.P2641415543315893885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118417 n - (2 ^ n : ℤ)

end

end A118415.P2641415543315893885

namespace A118415

/-- `A118417(n)-2^n` -/
def P2641415543315893885.Spec : Prop :=
  ∀ n, P2641415543315893885.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P15915977436105722345

`record[Δ[n²]*A077957(n)]`
-/

namespace A118415.P15915977436105722345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118415.P15915977436105722345

namespace A118415

/-- `record[Δ[n²]*A077957(n)]` -/
def P15915977436105722345.Spec : Prop :=
  ∀ n, P15915977436105722345.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P5200507330914922198

`lcm(4*n+1, A000079(n))`
-/

namespace A118415.P5200507330914922198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * n + 1 : ℤ) (A000079 n)

end

end A118415.P5200507330914922198

namespace A118415

/-- `lcm(4*n+1, A000079(n))` -/
def P5200507330914922198.Spec : Prop :=
  ∀ n, (P5200507330914922198.a n : ℤ) = A118415 (n + 1)

end A118415

/-! ## A118415.P14072779498826346829

`A000079(n+2)+2*a(n-1)` with `a(0)=1`
-/

namespace A118415.P14072779498826346829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (n + 2) + 2 * a (n - 1)

end

end A118415.P14072779498826346829

namespace A118415

/-- `A000079(n+2)+2*a(n-1)` -/
def P14072779498826346829.Spec : Prop :=
  ∀ n, P14072779498826346829.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P6191911583787576944

`A131577(n+3)+2*a(n-1)` with `a(0)=1`
-/

namespace A118415.P6191911583787576944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131577 (n + 3) + 2 * a (n - 1)

end

end A118415.P6191911583787576944

namespace A118415

/-- `A131577(n+3)+2*a(n-1)` -/
def P6191911583787576944.Spec : Prop :=
  ∀ n, P6191911583787576944.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P4566946448336590625

`a(n-1)+A146541(n)+a(n-1)` with `a(0)=1`
-/

namespace A118415.P4566946448336590625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A146541 n + a (n - 1))

end

end A118415.P4566946448336590625

namespace A118415

/-- `a(n-1)+A146541(n)+a(n-1)` -/
def P4566946448336590625.Spec : Prop :=
  ∀ n, P4566946448336590625.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P17904310631817044209

`A048479(n)+A000225(n)`
-/

namespace A118415.P17904310631817044209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048479 n + A000225 n

end

end A118415.P17904310631817044209

namespace A118415

/-- `A048479(n)+A000225(n)` -/
def P17904310631817044209.Spec : Prop :=
  ∀ n, P17904310631817044209.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P11490541701412048482

`A087323(n)+A048477(n)`
-/

namespace A118415.P11490541701412048482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A048477 n

end

end A118415.P11490541701412048482

namespace A118415

/-- `A087323(n)+A048477(n)` -/
def P11490541701412048482.Spec : Prop :=
  ∀ n, P11490541701412048482.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P4829070140924009131

`A130129(n)+A036289(n)`
-/

namespace A118415.P4829070140924009131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130129 n + A036289 n

end

end A118415.P4829070140924009131

namespace A118415

/-- `A130129(n)+A036289(n)` -/
def P4829070140924009131.Spec : Prop :=
  ∀ n, P4829070140924009131.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P5386496585331833749

`A241204(n)+A155559(n)`
-/

namespace A118415.P5386496585331833749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241204 n + A155559 n

end

end A118415.P5386496585331833749

namespace A118415

/-- `A241204(n)+A155559(n)` -/
def P5386496585331833749.Spec : Prop :=
  ∀ n, P5386496585331833749.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P14051835050617426765

`lcm(A000079(n), A016813(n))`
-/

namespace A118415.P14051835050617426765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016813 n)

end

end A118415.P14051835050617426765

namespace A118415

/-- `lcm(A000079(n), A016813(n))` -/
def P14051835050617426765.Spec : Prop :=
  ∀ n, (P14051835050617426765.a n : ℤ) = A118415 (n + 1)

end A118415

/-! ## A118415.P6432305609070760842

`xor(A007283(n), A118417(n))`
-/

namespace A118415.P6432305609070760842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A118417 n)

end

end A118415.P6432305609070760842

namespace A118415

/-- `xor(A007283(n), A118417(n))` -/
def P6432305609070760842.Spec : Prop :=
  ∀ n, P6432305609070760842.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P11479345464760860241

`A036799(n+1)+A000918(n)`
-/

namespace A118415.P11479345464760860241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 (n + 1) + A000918 n

end

end A118415.P11479345464760860241

namespace A118415

/-- `A036799(n+1)+A000918(n)` -/
def P11479345464760860241.Spec : Prop :=
  ∀ n, P11479345464760860241.a n = A118415 (n + 1)

end A118415

/-! ## A118415.P10227142095792674010

`A058922(n+1)+A014480(n)`
-/

namespace A118415.P10227142095792674010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1) + A014480 n

end

end A118415.P10227142095792674010

namespace A118415

/-- `A058922(n+1)+A014480(n)` -/
def P10227142095792674010.Spec : Prop :=
  ∀ n, P10227142095792674010.a n = A118415 (n + 1)

end A118415

/-!
# A118416: Triangle read by rows: T(n,k) = (2*k-1)*2^(n-1), 0 < k <= n.

The programs for A118416, the canonical program `A118416.P17695903883508484901` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118416 has offset 1).

The definition of A118416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118416.P17695903883508484901

`A054582(n)*A059268(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A118416

/-- `A054582(n)*A059268(n)` -/
def P17695903883508484901.Spec : Prop :=
  ∀ n, P17695903883508484901.a n = A118416 (n + 1)

theorem P17695903883508484901.correct : P17695903883508484901.Spec := by
  intro n
  simp only [A118416, Nat.add_sub_cancel]

end A118416

/-! ## A118416.P5246773537246551092

`lcm(A054582(n), A137688(n))`
-/

namespace A118416.P5246773537246551092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054582 n) (A137688 n)

end

end A118416.P5246773537246551092

namespace A118416

/-- `lcm(A054582(n), A137688(n))` -/
def P5246773537246551092.Spec : Prop :=
  ∀ n, (P5246773537246551092.a n : ℤ) = A118416 (n + 1)

end A118416

/-! ## A118416.P3413088609323683996

`A137688(n)*A158405(n+1)`
-/

namespace A118416.P3413088609323683996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A158405 (n + 1)

end

end A118416.P3413088609323683996

namespace A118416

/-- `A137688(n)*A158405(n+1)` -/
def P3413088609323683996.Spec : Prop :=
  ∀ n, P3413088609323683996.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P7042329690833759324

`(A288870(n)-1)*A059268(n)`
-/

namespace A118416.P7042329690833759324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288870 n - 1) * A059268 n

end

end A118416.P7042329690833759324

namespace A118416

/-- `(A288870(n)-1)*A059268(n)` -/
def P7042329690833759324.Spec : Prop :=
  ∀ n, P7042329690833759324.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P30661620810498429

`A123002(n+1)+A118413(n+1)`
-/

namespace A118416.P30661620810498429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123002 (n + 1) + A118413 (n + 1)

end

end A118416.P30661620810498429

namespace A118416

/-- `A123002(n+1)+A118413(n+1)` -/
def P30661620810498429.Spec : Prop :=
  ∀ n, P30661620810498429.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P12353049958063135660

`2*A130124(n+1)-A137688(n)`
-/

namespace A118416.P12353049958063135660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130124 (n + 1) - A137688 n

end

end A118416.P12353049958063135660

namespace A118416

/-- `2*A130124(n+1)-A137688(n)` -/
def P12353049958063135660.Spec : Prop :=
  ∀ n, P12353049958063135660.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P4717032756336723347

`A158405(n+1)/2*A140513(n)`
-/

namespace A118416.P4717032756336723347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158405 (n + 1) : ℚ) / 2 * (A140513 n : ℚ)

end

end A118416.P4717032756336723347

namespace A118416

/-- `A158405(n+1)/2*A140513(n)` -/
def P4717032756336723347.Spec : Prop :=
  ∀ n, P4717032756336723347.a n = (A118416 (n + 1) : ℚ)

end A118416

/-! ## A118416.P13904770906184103509

`2^A003056(n)*A158405(n+1)`
-/

namespace A118416.P13904770906184103509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A158405 (n + 1) : ℚ)

end

end A118416.P13904770906184103509

namespace A118416

/-- `2^A003056(n)*A158405(n+1)` -/
def P13904770906184103509.Spec : Prop :=
  ∀ n, P13904770906184103509.a n = (A118416 (n + 1) : ℚ)

end A118416

/-! ## A118416.P4262927321453074348

`A005408(A002262(n))*A137688(n)`
-/

namespace A118416.P4262927321453074348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A137688 n

end

end A118416.P4262927321453074348

namespace A118416

/-- `A005408(A002262(n))*A137688(n)` -/
def P4262927321453074348.Spec : Prop :=
  ∀ n, P4262927321453074348.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P4762355728659286748

`A054582(n)*A054582(A112367(n))`
-/

namespace A118416.P4762355728659286748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n * A054582 (A112367 n).toNat

end

end A118416.P4762355728659286748

namespace A118416

/-- `A054582(n)*A054582(A112367(n))` -/
def P4762355728659286748.Spec : Prop :=
  ∀ n, P4762355728659286748.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P8113867612743472599

`Δ[A007664(n)]*A005408(A002262(n))`
-/

namespace A118416.P8113867612743472599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005408 (A002262 n).toNat

end

end A118416.P8113867612743472599

namespace A118416

/-- `Δ[A007664(n)]*A005408(A002262(n))` -/
def P8113867612743472599.Spec : Prop :=
  ∀ n, P8113867612743472599.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P4779280262236195800

`(A000051(A002262(n))-1)*A054582(n)`
-/

namespace A118416.P4779280262236195800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 (A002262 n).toNat - 1) * A054582 n

end

end A118416.P4779280262236195800

namespace A118416

/-- `(A000051(A002262(n))-1)*A054582(n)` -/
def P4779280262236195800.Spec : Prop :=
  ∀ n, P4779280262236195800.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P18386717271160731204

`A000079(A002260(n+1)-1)*A054582(n)`
-/

namespace A118416.P18386717271160731204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1) - 1).toNat * A054582 n

end

end A118416.P18386717271160731204

namespace A118416

/-- `A000079(A002260(n+1)-1)*A054582(n)` -/
def P18386717271160731204.Spec : Prop :=
  ∀ n, P18386717271160731204.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P18267052444719553706

`A000079(A279891(n)/2)*A158405(n+1)`
-/

namespace A118416.P18267052444719553706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A279891 n : ℚ) / 2)).toNat * A158405 (n + 1)

end

end A118416.P18267052444719553706

namespace A118416

/-- `A000079(A279891(n)/2)*A158405(n+1)` -/
def P18267052444719553706.Spec : Prop :=
  ∀ n, P18267052444719553706.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P15575656462217522267

`A130128(n+1)/A004736(n+1)*A054582(n)`
-/

namespace A118416.P15575656462217522267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130128 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A054582 n : ℚ)

end

end A118416.P15575656462217522267

namespace A118416

/-- `A130128(n+1)/A004736(n+1)*A054582(n)` -/
def P15575656462217522267.Spec : Prop :=
  ∀ n, P15575656462217522267.a n = (A118416 (n + 1) : ℚ)

end A118416

/-! ## A118416.P5600513620128901930

`A000079(A003056(n))*A005408(A002262(n))`
-/

namespace A118416.P5600513620128901930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A005408 (A002262 n).toNat

end

end A118416.P5600513620128901930

namespace A118416

/-- `A000079(A003056(n))*A005408(A002262(n))` -/
def P5600513620128901930.Spec : Prop :=
  ∀ n, P5600513620128901930.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P14603259772036449974

`A054582(A245300(n))`
-/

namespace A118416.P14603259772036449974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A245300 n).toNat

end

end A118416.P14603259772036449974

namespace A118416

/-- `A054582(A245300(n))` -/
def P14603259772036449974.Spec : Prop :=
  ∀ n, P14603259772036449974.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P10407521845491433251

`A135764(n+1)/A000265(A135764(n+1))*A054582(n)`
-/

namespace A118416.P10407521845491433251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135764 (n + 1) : ℚ) / (A000265 (A135764 (n + 1)).toNat : ℚ) * (A054582 n : ℚ)

end

end A118416.P10407521845491433251

namespace A118416

/-- `A135764(n+1)/A000265(A135764(n+1))*A054582(n)` -/
def P10407521845491433251.Spec : Prop :=
  ∀ n, P10407521845491433251.a n = (A118416 (n + 1) : ℚ)

end A118416

/-! ## A118416.P14746649636682464819

`A002260(n+1)*A140513(n)-A000010(A140513(n))`
-/

namespace A118416.P14746649636682464819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A140513 n - A000010 (A140513 n).toNat

end

end A118416.P14746649636682464819

namespace A118416

/-- `A002260(n+1)*A140513(n)-A000010(A140513(n))` -/
def P14746649636682464819.Spec : Prop :=
  ∀ n, P14746649636682464819.a n = A118416 (n + 1)

end A118416

/-! ## A118416.P7887538077284294377

`A006519(A135764(n+1))*A054582(n)`
-/

namespace A118416.P7887538077284294377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A135764 (n + 1)).toNat * A054582 n

end

end A118416.P7887538077284294377

namespace A118416

/-- `A006519(A135764(n+1))*A054582(n)` -/
def P7887538077284294377.Spec : Prop :=
  ∀ n, P7887538077284294377.a n = A118416 (n + 1)

end A118416

/-!
# A118417: a(n) = (2*n + 1) * 2^(n + 1).

The programs for A118417, the canonical program `A118417.P9530151106302004125` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118417 has offset 0).

The definition of A118417 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*2^(n+1)` (program `A118417.P9530151106302004125`, by `A118417.P9530151106302004125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118417.P9530151106302004125

`(2*n+1)*2^(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118417

/-- `(2*n+1)*2^(n+1)` -/
def P9530151106302004125.Spec : Prop :=
  ∀ n, (P9530151106302004125.a n : ℤ) = A118417 n

theorem P9530151106302004125.correct : P9530151106302004125.Spec := by
  intro n
  simp only [A118417]

end A118417

/-! ## A118417.P2906076284961848958

`lcm(2^(n+1), Δ[n²])`
-/

namespace A118417.P2906076284961848958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ (n + 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118417.P2906076284961848958

namespace A118417

/-- `lcm(2^(n+1), Δ[n²])` -/
def P2906076284961848958.Spec : Prop :=
  ∀ n, (P2906076284961848958.a n : ℤ) = A118417 n

end A118417

/-! ## A118417.P3228943645823979467

`floor((2*n+1)*Δ[2*a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A118417.P3228943645823979467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118417.P3228943645823979467

namespace A118417

/-- `floor((2*n+1)*Δ[2*a(n-1)])` -/
def P3228943645823979467.Spec : Prop :=
  ∀ n, P3228943645823979467.a n = A118417 n

end A118417

/-! ## A118417.P14438643818729560560

`floor((2*n+1)*∑[2*a(n-1)])` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A118417.P14438643818729560560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118417.P14438643818729560560

namespace A118417

/-- `floor((2*n+1)*∑[2*a(n-1)])` -/
def P14438643818729560560.Spec : Prop :=
  ∀ n, (P14438643818729560560.a n : ℤ) = A118417 n

end A118417

/-! ## A118417.P2134471301059673651

`a(n-1)+a(n-1)+2^(n+2)` with `a(0)=2`
-/

namespace A118417.P2134471301059673651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ (n + 2))

end

end A118417.P2134471301059673651

namespace A118417

/-- `a(n-1)+a(n-1)+2^(n+2)` -/
def P2134471301059673651.Spec : Prop :=
  ∀ n, (P2134471301059673651.a n : ℤ) = A118417 n

end A118417

/-! ## A118417.P7690599777845118950

`floor(2*(a(n-1)+a(n-1)/(n-1/2)))` with `a(0)=2`
-/

namespace A118417.P7690599777845118950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊2 * ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / ((n : ℚ) - (1 : ℚ) / 2))⌋

end

end A118417.P7690599777845118950

namespace A118417

/-- `floor(2*(a(n-1)+a(n-1)/(n-1/2)))` -/
def P7690599777845118950.Spec : Prop :=
  ∀ n, P7690599777845118950.a n = A118417 n

end A118417

/-! ## A118417.P6564372713828245044

`(2*n+1)*∑[2*a(n-1)]+2*n+1` with `a(0)=1`
-/

namespace A118417.P6564372713828245044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1)

end

end A118417.P6564372713828245044

namespace A118417

/-- `(2*n+1)*∑[2*a(n-1)]+2*n+1` -/
def P6564372713828245044.Spec : Prop :=
  ∀ n, (P6564372713828245044.a n : ℤ) = A118417 n

end A118417

/-! ## A118417.P14598918995673181180

`A075554(Δ[n²])`
-/

namespace A118417.P14598918995673181180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118417.P14598918995673181180

namespace A118417

/-- `A075554(Δ[n²])` -/
def P14598918995673181180.Spec : Prop :=
  ∀ n, P14598918995673181180.a n = A118417 n

end A118417

/-! ## A118417.P6555746609055376216

`A132314(Δ[n²])`
-/

namespace A118417.P6555746609055376216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132314 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118417.P6555746609055376216

namespace A118417

/-- `A132314(Δ[n²])` -/
def P6555746609055376216.Spec : Prop :=
  ∀ n, P6555746609055376216.a n = A118417 n

end A118417

/-! ## A118417.P7351862017386933313

`A187272(Δ[n²])`
-/

namespace A118417.P7351862017386933313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118417.P7351862017386933313

namespace A118417

/-- `A187272(Δ[n²])` -/
def P7351862017386933313.Spec : Prop :=
  ∀ n, P7351862017386933313.a n = A118417 n

end A118417

/-! ## A118417.P15597856340460299626

`∑[2*A052951(n)]`
-/

namespace A118417.P15597856340460299626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118417.P15597856340460299626

namespace A118417

/-- `∑[2*A052951(n)]` -/
def P15597856340460299626.Spec : Prop :=
  ∀ n, P15597856340460299626.a n = A118417 n

end A118417

/-! ## A118417.P12287156815628223897

`A392083(n+1)-1`
-/

namespace A118417.P12287156815628223897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392083 (n + 1) - 1

end

end A118417.P12287156815628223897

namespace A118417

/-- `A392083(n+1)-1` -/
def P12287156815628223897.Spec : Prop :=
  ∀ n, P12287156815628223897.a n = A118417 n

end A118417

/-! ## A118417.P4779229939613256287

`A059673(n+1)+n`
-/

namespace A118417.P4779229939613256287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059673 (n + 1) + (n : ℤ)

end

end A118417.P4779229939613256287

namespace A118417

/-- `A059673(n+1)+n` -/
def P4779229939613256287.Spec : Prop :=
  ∀ n, P4779229939613256287.a n = A118417 n

end A118417

/-! ## A118417.P455479497867102995

`∑[A128135(n+2)]-1`
-/

namespace A118417.P455479497867102995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A118417.P455479497867102995

namespace A118417

/-- `∑[A128135(n+2)]-1` -/
def P455479497867102995.Spec : Prop :=
  ∀ n, P455479497867102995.a n = A118417 n

end A118417

/-! ## A118417.P17884761634148214702

`record[(n+1)*A135530(n)]`
-/

namespace A118417.P17884761634148214702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118417.P17884761634148214702

namespace A118417

/-- `record[(n+1)*A135530(n)]` -/
def P17884761634148214702.Spec : Prop :=
  ∀ n, P17884761634148214702.a n = A118417 n

end A118417

/-! ## A118417.P17969128994529455055

`record[(n+2)*A143095(n)]`
-/

namespace A118417.P17969128994529455055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118417.P17969128994529455055

namespace A118417

/-- `record[(n+2)*A143095(n)]` -/
def P17969128994529455055.Spec : Prop :=
  ∀ n, P17969128994529455055.a n = A118417 n

end A118417

/-! ## A118417.P13234789394084740290

`record[lcm(2-n, A117575(n))]`
-/

namespace A118417.P13234789394084740290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (n : ℤ)) (A117575 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118417.P13234789394084740290

namespace A118417

/-- `record[lcm(2-n, A117575(n))]` -/
def P13234789394084740290.Spec : Prop :=
  ∀ n, (P13234789394084740290.a n : ℤ) = A118417 n

end A118417

/-! ## A118417.P785915234803481758

`A118415(n+1)+2^n`
-/

namespace A118417.P785915234803481758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118415 (n + 1) + (2 ^ n : ℤ)

end

end A118417.P785915234803481758

namespace A118417

/-- `A118415(n+1)+2^n` -/
def P785915234803481758.Spec : Prop :=
  ∀ n, P785915234803481758.a n = A118417 n

end A118417

/-! ## A118417.P9425343903202920503

`A118414(n+1)+Δ[n²]`
-/

namespace A118417.P9425343903202920503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118414 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118417.P9425343903202920503

namespace A118417

/-- `A118414(n+1)+Δ[n²]` -/
def P9425343903202920503.Spec : Prop :=
  ∀ n, P9425343903202920503.a n = A118417 n

end A118417

/-!
# A118421: Number of integer solutions to n = x^2 + (2y)^2 + z(z+1)/2.

The programs for A118421, there is no canonical definition to state claims against.
-/

/-! ## A118421.P16201511715023112884

`A072069(4*n+5)`
-/

namespace A118421.P16201511715023112884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072069 (4 * n + 5)

end

end A118421.P16201511715023112884

/-! ## A118421.P719898955723818924

`A080918(8*n+9)`
-/

namespace A118421.P719898955723818924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (8 * n + 9)

end

end A118421.P719898955723818924

/-! ## A118421.P3123193525684829700

`lcm(2, A080918(A004768(n)))`
-/

namespace A118421.P3123193525684829700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080918 (A004768 n).toNat)

end

end A118421.P3123193525684829700

/-! ## A118421.P16838891186817111351

`A072069(A004766(n+1))%80`
-/

namespace A118421.P16838891186817111351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072069 (A004766 (n + 1)).toNat) 80

end

end A118421.P16838891186817111351

/-! ## A118421.P8858225199066801812

`A080918(A004769(n)-2)%81`
-/

namespace A118421.P8858225199066801812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080918 (A004769 n - 2).toNat) 81

end

end A118421.P8858225199066801812

/-! ## A118421.P15634681514379789310

`A080918(xor(2, A004769(n)))%81`
-/

namespace A118421.P15634681514379789310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080918 (Int.xor 2 (A004769 n)).toNat) 81

end

end A118421.P15634681514379789310

/-! ## A118421.P10770436632082615142

`∑{d}[A080918(A004768(n)), A000010(#)]`
-/

namespace A118421.P10770436632082615142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (A004768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A118421.P10770436632082615142

/-! ## A118421.P14216201317491678178

`or(A000038(n), A080918(A004769(n)-2))`
-/

namespace A118421.P14216201317491678178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A080918 (A004769 n - 2).toNat)

end

end A118421.P14216201317491678178

/-! ## A118421.P11247148759782236453

`A080918(A004768(n))%A000040(n+1)²²`
-/

namespace A118421.P11247148759782236453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080918 (A004768 n).toNat) ((A000040 (n + 1) ^ 2) ^ 2)

end

end A118421.P11247148759782236453

/-!
# A118422: High-water marks of A118421.

The programs for A118422, there is no canonical definition to state claims against.
-/

/-! ## A118422.P10125753369447239247

`record[A072069(2*n+5)]`
-/

namespace A118422.P10125753369447239247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072069 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118422.P10125753369447239247

/-! ## A118422.P5243524954604869443

`record[A072069(n+5)/A072078(n+1)]`
-/

namespace A118422.P5243524954604869443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072069 (n + 5) : ℚ) / (A072078 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118422.P5243524954604869443

/-! ## A118422.P130944253022009424

`record[A072069(n+5)/A072079(n+1)]`
-/

namespace A118422.P130944253022009424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072069 (n + 5) : ℚ) / (A072079 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118422.P130944253022009424

/-! ## A118422.P8375535685423918081

`record[A080918(8*n+9)]`
-/

namespace A118422.P8375535685423918081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (8 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118422.P8375535685423918081

/-! ## A118422.P16032727313854398544

`record[lcm(2, A080918(A004768(n)))]`
-/

namespace A118422.P16032727313854398544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080918 (A004768 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118422.P16032727313854398544

/-!
# A118423: Positions of high-water marks of A118421.

The programs for A118423, there is no canonical definition to state claims against.
-/

/-! ## A118423.P1410709534695312463

`∑[gcd(A070971(3*(n+1)), A071010(n+3))]`
-/

namespace A118423.P1410709534695312463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070971 (3 * (n + 1))) (A071010 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118423.P1410709534695312463

/-!
# A118425: Number of binary sequences of length n containing exactly one subsequence 001.

The programs for A118425, the canonical program `A118425.P11488403813007551376` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118425 has offset 0).

The definition of A118425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118425.P11488403813007551376

`∑[A006478(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118425

/-- `∑[A006478(n)]` -/
def P11488403813007551376.Spec : Prop :=
  ∀ n, P11488403813007551376.a n = A118425 n

theorem P11488403813007551376.correct : P11488403813007551376.Spec := by
  intro n
  simp only [A118425]

end A118425

/-! ## A118425.P13325701390737633391

`∑[∑[A001629(abs(1-n))]]`
-/

namespace A118425.P13325701390737633391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P13325701390737633391

namespace A118425

/-- `∑[∑[A001629(abs(1-n))]]` -/
def P13325701390737633391.Spec : Prop :=
  ∀ n, P13325701390737633391.a n = A118425 n

end A118425

/-! ## A118425.P5112458890167126653

`∑[∑[(n-2)*A000045(n-2)-a(n-2)]]` with `a(0)=0, a(1)=0`
-/

namespace A118425.P5112458890167126653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  ((n : ℤ) - 2) * A000045 (n - 2) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P5112458890167126653

namespace A118425

/-- `∑[∑[(n-2)*A000045(n-2)-a(n-2)]]` -/
def P5112458890167126653.Spec : Prop :=
  ∀ n, P5112458890167126653.a n = A118425 n

end A118425

/-! ## A118425.P18248100161789193661

`A113684(n)-A001891(n)`
-/

namespace A118425.P18248100161789193661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 n - A001891 n

end

end A118425.P18248100161789193661

namespace A118425

/-- `A113684(n)-A001891(n)` -/
def P18248100161789193661.Spec : Prop :=
  ∀ n, P18248100161789193661.a n = A118425 n

end A118425

/-! ## A118425.P10272768364009675823

`∑[A055244(n)-A001595(n)]`
-/

namespace A118425.P10272768364009675823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P10272768364009675823

namespace A118425

/-- `∑[A055244(n)-A001595(n)]` -/
def P10272768364009675823.Spec : Prop :=
  ∀ n, P10272768364009675823.a n = A118425 n

end A118425

/-! ## A118425.P17184952710425948677

`A023610(n)-Δ[A014162(n)]`
-/

namespace A118425.P17184952710425948677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - (f1 (n + 1) - f1 n)

end

end A118425.P17184952710425948677

namespace A118425

/-- `A023610(n)-Δ[A014162(n)]` -/
def P17184952710425948677.Spec : Prop :=
  ∀ n, P17184952710425948677.a n = A118425 n

end A118425

/-! ## A118425.P5929192956760389332

`∑[∑[A001629(n)]-A001629(n)]`
-/

namespace A118425.P5929192956760389332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P5929192956760389332

namespace A118425

/-- `∑[∑[A001629(n)]-A001629(n)]` -/
def P5929192956760389332.Spec : Prop :=
  ∀ n, P5929192956760389332.a n = A118425 n

end A118425

/-! ## A118425.P4415676649691558203

`∑[∑[A010049(n)-A000045(n)]]`
-/

namespace A118425.P4415676649691558203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P4415676649691558203

namespace A118425

/-- `∑[∑[A010049(n)-A000045(n)]]` -/
def P4415676649691558203.Spec : Prop :=
  ∀ n, P4415676649691558203.a n = A118425 n

end A118425

/-! ## A118425.P15198559151068525974

`∑[A055244(n)-∑[A006355(n)]]`
-/

namespace A118425.P15198559151068525974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P15198559151068525974

namespace A118425

/-- `∑[A055244(n)-∑[A006355(n)]]` -/
def P15198559151068525974.Spec : Prop :=
  ∀ n, P15198559151068525974.a n = A118425 n

end A118425

/-! ## A118425.P6401350758309916660

`A023610(n)+∑[1-A020695(n)]`
-/

namespace A118425.P6401350758309916660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P6401350758309916660

namespace A118425

/-- `A023610(n)+∑[1-A020695(n)]` -/
def P6401350758309916660.Spec : Prop :=
  ∀ n, P6401350758309916660.a n = A118425 n

end A118425

/-! ## A118425.P5398737022872971797

`∑[∑[A208354(n)-A000045(n+1)]]`
-/

namespace A118425.P5398737022872971797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n - A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P5398737022872971797

namespace A118425

/-- `∑[∑[A208354(n)-A000045(n+1)]]` -/
def P5398737022872971797.Spec : Prop :=
  ∀ n, P5398737022872971797.a n = A118425 n

end A118425

/-! ## A118425.P13691820206958404792

`∑[A029907(n+1)-∑[A000045(n+1)]]`
-/

namespace A118425.P13691820206958404792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P13691820206958404792

namespace A118425

/-- `∑[A029907(n+1)-∑[A000045(n+1)]]` -/
def P13691820206958404792.Spec : Prop :=
  ∀ n, P13691820206958404792.a n = A118425 n

end A118425

/-! ## A118425.P10433862024675577631

`A002940(n+1)-A113684(n+1)`
-/

namespace A118425.P10433862024675577631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002940 (n + 1) - A113684 (n + 1)

end

end A118425.P10433862024675577631

namespace A118425

/-- `A002940(n+1)-A113684(n+1)` -/
def P10433862024675577631.Spec : Prop :=
  ∀ n, P10433862024675577631.a n = A118425 n

end A118425

/-! ## A118425.P11501881924795695291

`A001629(n+1)+A014286(n+1)-A113684(n+1)`
-/

namespace A118425.P11501881924795695291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (A014286 (n + 1) - A113684 (n + 1))

end

end A118425.P11501881924795695291

namespace A118425

/-- `A001629(n+1)+A014286(n+1)-A113684(n+1)` -/
def P11501881924795695291.Spec : Prop :=
  ∀ n, P11501881924795695291.a n = A118425 n

end A118425

/-! ## A118425.P6377933760833678835

`(∑[A178523(n)]-A178523(n))/2`
-/

namespace A118425.P6377933760833678835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A178523 n : ℤ) : ℚ) / 2

end

end A118425.P6377933760833678835

namespace A118425

/-- `(∑[A178523(n)]-A178523(n))/2` -/
def P6377933760833678835.Spec : Prop :=
  ∀ n, P6377933760833678835.a n = (A118425 n : ℚ)

end A118425

/-!
# A118430: Number of binary sequences of length n containing exactly one subsequence 010.

The programs for A118430, the canonical program `A118430.P1656725586426241276` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118430 has offset 0).

The definition of A118430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118430.P4986665048506815574

`∑[A136444(n)]`
-/

namespace A118430.P4986665048506815574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118430.P4986665048506815574

namespace A118430

/-- `∑[A136444(n)]` -/
def P4986665048506815574.Spec : Prop :=
  ∀ n, P4986665048506815574.a n = A118430 n

end A118430

/-! ## A118430.P8143104711453186810

`A136444(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A118430.P8143104711453186810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A136444 n + a (A023443 n).toNat

end

end A118430.P8143104711453186810

namespace A118430

/-- `A136444(n)+a(A023443(n))` -/
def P8143104711453186810.Spec : Prop :=
  ∀ n, P8143104711453186810.a n = A118430 n

end A118430

/-! ## A118430.P5586366853365571824

`A079662(n+1)-A005314(n+1)`
-/

namespace A118430.P5586366853365571824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079662 (n + 1) - A005314 (n + 1)

end

end A118430.P5586366853365571824

namespace A118430

/-- `A079662(n+1)-A005314(n+1)` -/
def P5586366853365571824.Spec : Prop :=
  ∀ n, P5586366853365571824.a n = A118430 n

end A118430

/-! ## A118430.P16339130113388149074

`A391962(n)-A079662(n+1)`
-/

namespace A118430.P16339130113388149074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391962 n - A079662 (n + 1)

end

end A118430.P16339130113388149074

namespace A118430

/-- `A391962(n)-A079662(n+1)` -/
def P16339130113388149074.Spec : Prop :=
  ∀ n, P16339130113388149074.a n = A118430 n

end A118430

/-! ## A118430.P10398967160278168149

`Δ[A136444(n+2)]-A005314(n+1)`
-/

namespace A118430.P10398967160278168149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005314 (n + 1)

end

end A118430.P10398967160278168149

namespace A118430

/-- `Δ[A136444(n+2)]-A005314(n+1)` -/
def P10398967160278168149.Spec : Prop :=
  ∀ n, P10398967160278168149.a n = A118430 n

end A118430

/-! ## A118430.P11039208058762847525

`Δ[A136444(n+2)-A005251(n+3)]`
-/

namespace A118430.P11039208058762847525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 2) - A005251 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118430.P11039208058762847525

namespace A118430

/-- `Δ[A136444(n+2)-A005251(n+3)]` -/
def P11039208058762847525.Spec : Prop :=
  ∀ n, P11039208058762847525.a n = A118430 n

end A118430

/-! ## A118430.P4824710013032913752

`Δ[A136444(n+2)]-A000931(2*(n+3))`
-/

namespace A118430.P4824710013032913752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000931 (2 * (n + 3))

end

end A118430.P4824710013032913752

namespace A118430

/-- `Δ[A136444(n+2)]-A000931(2*(n+3))` -/
def P4824710013032913752.Spec : Prop :=
  ∀ n, P4824710013032913752.a n = A118430 n

end A118430

/-! ## A118430.P104535588187928765

`(A228577(2*n+1)-A134816(2*(n+1)))/2`
-/

namespace A118430.P104535588187928765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228577 (2 * n + 1) - A134816 (2 * (n + 1)) : ℚ) / 2

end

end A118430.P104535588187928765

namespace A118430

/-- `(A228577(2*n+1)-A134816(2*(n+1)))/2` -/
def P104535588187928765.Spec : Prop :=
  ∀ n, P104535588187928765.a n = (A118430 n : ℚ)

end A118430

/-! ## A118430.P196763569846229063

`A259966(n)-A136444(n+1)-A136444(n+1)`
-/

namespace A118430.P196763569846229063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259966 n - A136444 (n + 1) - A136444 (n + 1)

end

end A118430.P196763569846229063

namespace A118430

/-- `A259966(n)-A136444(n+1)-A136444(n+1)` -/
def P196763569846229063.Spec : Prop :=
  ∀ n, P196763569846229063.a n = A118430 n

end A118430

/-! ## A118430.P1656725586426241276

`n*A134816(2*(n+1))-A228364(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118430

/-- `n*A134816(2*(n+1))-A228364(2*n+1)` -/
def P1656725586426241276.Spec : Prop :=
  ∀ n, P1656725586426241276.a n = A118430 n

theorem P1656725586426241276.correct : P1656725586426241276.Spec := by
  intro n
  simp only [A118430]

end A118430

/-!
# A118431: Numerator of sum of reciprocals of first n 5-simplex numbers A000389.

The programs for A118431, there is no canonical definition to state claims against.
-/

/-! ## A118431.P9425869986165486135

`A000265(A063258(n)*A248137(3*n+1))`
-/

namespace A118431.P9425869986165486135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063258 n * A248137 (3 * n + 1)).toNat

end

end A118431.P9425869986165486135

/-! ## A118431.P3150515627475604971

`A106609(A063258(n)*A174109(n))`
-/

namespace A118431.P3150515627475604971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A063258 n * A174109 n).toNat

end

end A118431.P3150515627475604971

/-!
# A118432: Denominator of sum of reciprocals of first n 5-simplex numbers A000389.

The programs for A118432, there is no canonical definition to state claims against.
-/

/-! ## A118432.P13158984715861597724

`A340512(A234042(n+1))`
-/

namespace A118432.P13158984715861597724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (A234042 (n + 1)).toNat

end

end A118432.P13158984715861597724

/-! ## A118432.P16632877737051143318

`A234042(n+1)*A348001(A180036(n))`
-/

namespace A118432.P16632877737051143318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (n + 1) * A348001 (A180036 n).toNat

end

end A118432.P16632877737051143318

/-!
# A118433: Self-inverse triangle H, read by rows; a nontrivial matrix square-root of identity: H^2 = I, where H(n,k) = C(n,k)*(-1)^(floor((n+1)/2) - floor(k/2) + n - k) for n >= k >= 0.

The programs for A118433, there is no canonical definition to state claims against.
-/

/-! ## A118433.P176904068300865403

`A014451(A003986(n))*A108086(n)`
-/

namespace A118433.P176904068300865403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003986 n).toNat * A108086 n

end

end A118433.P176904068300865403

/-! ## A118433.P8690601906599580663

`A007318(n)*A062157(A130266(n))`
-/

namespace A118433.P8690601906599580663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A062157 (A130266 n).toNat

end

end A118433.P8690601906599580663

/-! ## A118433.P13785508538336430567

`A033999(A059036(n))*A108086(n)`
-/

namespace A118433.P13785508538336430567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A059036 n).toNat * A108086 n

end

end A118433.P13785508538336430567

/-! ## A118433.P8271511226250880003

`A014451(A080099(n))*A117440(n)`
-/

namespace A118433.P8271511226250880003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A080099 n).toNat * A117440 n

end

end A118433.P8271511226250880003

/-! ## A118433.P6954889874394888756

`A033999(A073254(n))*A108086(n)`
-/

namespace A118433.P6954889874394888756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A073254 n).toNat * A108086 n

end

end A118433.P6954889874394888756

/-! ## A118433.P569108615066256498

`A007318(n)*A014451(A332104(n))`
-/

namespace A118433.P569108615066256498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A014451 (A332104 n).toNat

end

end A118433.P569108615066256498

/-! ## A118433.P16125728497680079002

`sqrt(A008459(n))*A062157(A130266(n))`
-/

namespace A118433.P16125728497680079002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A062157 (A130266 n).toNat : ℝ)

end

end A118433.P16125728497680079002

/-! ## A118433.P12777957577619710139

`sqrt(A008459(n))*A014955(A332104(n))`
-/

namespace A118433.P12777957577619710139
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A014955 (A332104 n).toNat : ℝ)

end

end A118433.P12777957577619710139

/-! ## A118433.P10116011144119703698

`A007318(n)*A062157(A049777(n+1))`
-/

namespace A118433.P10116011144119703698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A062157 (A049777 (n + 1)).toNat

end

end A118433.P10116011144119703698

/-! ## A118433.P4761936642546256522

`A007318(char[1]+n)/A062157(A130266(n))`
-/

namespace A118433.P4761936642546256522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / (A062157 (A130266 n).toNat : ℚ)

end

end A118433.P4761936642546256522

/-!
# A118434: Row sums of self-inverse triangle A118433.

The programs for A118434, the canonical program `A118434.P14249828286649860411` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118434 has offset 0).

The definition of A118434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118434.P14249828286649860411

`-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118434

/-- `-4*a(n-4)` -/
def P14249828286649860411.Spec : Prop :=
  ∀ n, P14249828286649860411.a n = A118434 n

theorem P14249828286649860411.correct : P14249828286649860411.Spec := by
  intro n
  simp only [A118434]

end A118434

/-! ## A118434.P17324269324673171670

`a(n-4)-5*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A118434.P17324269324673171670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4] fun n a =>
  a (n - 4) - 5 * a (n - 4)

end

end A118434.P17324269324673171670

namespace A118434

/-- `a(n-4)-5*a(n-4)` -/
def P17324269324673171670.Spec : Prop :=
  ∀ n, P17324269324673171670.a n = A118434 n

theorem P17324269324673171670.correct : P17324269324673171670.Spec := by
  intro n
  simp only [A118434, Nat.add_sub_cancel, A118434.P17324269324673171670.a, A118434.P14249828286649860411.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A118434

/-! ## A118434.P9316327421255922042

`(and(2, n+2)-1)*Δ[A099087(n)]`
-/

namespace A118434.P9316327421255922042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (n + 2) : ℤ) - 1) * (f1 (n + 1) - f1 n)

end

end A118434.P9316327421255922042

namespace A118434

/-- `(and(2, n+2)-1)*Δ[A099087(n)]` -/
def P9316327421255922042.Spec : Prop :=
  ∀ n, P9316327421255922042.a n = A118434 n

end A118434

/-! ## A118434.P6569631385950705302

`A009545(n)+A009116(n)`
-/

namespace A118434.P6569631385950705302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + A009116 n

end

end A118434.P6569631385950705302

namespace A118434

/-- `A009545(n)+A009116(n)` -/
def P6569631385950705302.Spec : Prop :=
  ∀ n, P6569631385950705302.a n = A118434 n

end A118434

/-! ## A118434.P339099907310504172

`A009116(n)-Δ[A146559(n)]`
-/

namespace A118434.P339099907310504172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n - (f1 (n + 1) - f1 n)

end

end A118434.P339099907310504172

namespace A118434

/-- `A009116(n)-Δ[A146559(n)]` -/
def P339099907310504172.Spec : Prop :=
  ∀ n, P339099907310504172.a n = A118434 n

end A118434

/-! ## A118434.P4619840102434478159

`A146559(n+1)*A057077(n)`
-/

namespace A118434.P4619840102434478159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 1) * A057077 n

end

end A118434.P4619840102434478159

namespace A118434

/-- `A146559(n+1)*A057077(n)` -/
def P4619840102434478159.Spec : Prop :=
  ∀ n, P4619840102434478159.a n = A118434 n

end A118434

/-! ## A118434.P2638795860227668721

`A009116(A219977(n+1)+n+1)`
-/

namespace A118434.P2638795860227668721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (A219977 (n + 1) + (n + 1 : ℤ)).toNat

end

end A118434.P2638795860227668721

namespace A118434

/-- `A009116(A219977(n+1)+n+1)` -/
def P2638795860227668721.Spec : Prop :=
  ∀ n, P2638795860227668721.a n = A118434 n

end A118434

/-! ## A118434.P3356218713740708398

`A009116(n+1)*A057077(n+3)`
-/

namespace A118434.P3356218713740708398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 1) * A057077 (n + 3)

end

end A118434.P3356218713740708398

namespace A118434

/-- `A009116(n+1)*A057077(n+3)` -/
def P3356218713740708398.Spec : Prop :=
  ∀ n, P3356218713740708398.a n = A118434 n

end A118434

/-! ## A118434.P11209455369061266762

`A075553(2*n+1)*A146559(n+1)`
-/

namespace A118434.P11209455369061266762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (2 * n + 1) * A146559 (n + 1)

end

end A118434.P11209455369061266762

namespace A118434

/-- `A075553(2*n+1)*A146559(n+1)` -/
def P11209455369061266762.Spec : Prop :=
  ∀ n, P11209455369061266762.a n = A118434 n

end A118434

/-! ## A118434.P1295319479141944091

`2*A099087(A052928(n))-A099087(n)`
-/

namespace A118434.P1295319479141944091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099087 (A052928 n).toNat - A099087 n

end

end A118434.P1295319479141944091

namespace A118434

/-- `2*A099087(A052928(n))-A099087(n)` -/
def P1295319479141944091.Spec : Prop :=
  ∀ n, P1295319479141944091.a n = A118434 n

end A118434

/-! ## A118434.P10994308815154942840

`(A146559(n)-A009545(n))*A057077(n)`
-/

namespace A118434.P10994308815154942840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146559 n - A009545 n) * A057077 n

end

end A118434.P10994308815154942840

namespace A118434

/-- `(A146559(n)-A009545(n))*A057077(n)` -/
def P10994308815154942840.Spec : Prop :=
  ∀ n, P10994308815154942840.a n = A118434 n

end A118434

/-! ## A118434.P2157447434350331395

`A099087(n)-A010673(n)*A146559(n)`
-/

namespace A118434.P2157447434350331395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - A010673 n * A146559 n

end

end A118434.P2157447434350331395

namespace A118434

/-- `A099087(n)-A010673(n)*A146559(n)` -/
def P2157447434350331395.Spec : Prop :=
  ∀ n, P2157447434350331395.a n = A118434 n

end A118434

/-! ## A118434.P8376869361546089569

`A009116(n)+A146559(n)-A146559(n+1)`
-/

namespace A118434.P8376869361546089569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n + (A146559 n - A146559 (n + 1))

end

end A118434.P8376869361546089569

namespace A118434

/-- `A009116(n)+A146559(n)-A146559(n+1)` -/
def P8376869361546089569.Spec : Prop :=
  ∀ n, P8376869361546089569.a n = A118434 n

end A118434

/-! ## A118434.P8655668229399141210

`A099087(n)-A000035(n)*A099087(n+1)`
-/

namespace A118434.P8655668229399141210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - A000035 n * A099087 (n + 1)

end

end A118434.P8655668229399141210

namespace A118434

/-- `A099087(n)-A000035(n)*A099087(n+1)` -/
def P8655668229399141210.Spec : Prop :=
  ∀ n, P8655668229399141210.a n = A118434 n

end A118434

/-! ## A118434.P17755712603448670464

`(A099087(n+1)-A099087(n))*A057077(n)`
-/

namespace A118434.P17755712603448670464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099087 (n + 1) - A099087 n) * A057077 n

end

end A118434.P17755712603448670464

namespace A118434

/-- `(A099087(n+1)-A099087(n))*A057077(n)` -/
def P17755712603448670464.Spec : Prop :=
  ∀ n, P17755712603448670464.a n = A118434 n

end A118434

/-! ## A118434.P13374413857419634951

`(A056594(n)-A056594(n+1))*A146559(n+1)`
-/

namespace A118434.P13374413857419634951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n - A056594 (n + 1)) * A146559 (n + 1)

end

end A118434.P13374413857419634951

namespace A118434

/-- `(A056594(n)-A056594(n+1))*A146559(n+1)` -/
def P13374413857419634951.Spec : Prop :=
  ∀ n, P13374413857419634951.a n = A118434 n

end A118434

/-! ## A118434.P9788016758273586497

`A010673(n+1)*A146559(n)-A146559(n+1)`
-/

namespace A118434.P9788016758273586497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) * A146559 n - A146559 (n + 1)

end

end A118434.P9788016758273586497

namespace A118434

/-- `A010673(n+1)*A146559(n)-A146559(n+1)` -/
def P9788016758273586497.Spec : Prop :=
  ∀ n, P9788016758273586497.a n = A118434 n

end A118434

/-! ## A118434.P3340912803525349173

`A084099(n+1)*A146559(n)-A146559(n+1)`
-/

namespace A118434.P3340912803525349173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (n + 1) * A146559 n - A146559 (n + 1)

end

end A118434.P3340912803525349173

namespace A118434

/-- `A084099(n+1)*A146559(n)-A146559(n+1)` -/
def P3340912803525349173.Spec : Prop :=
  ∀ n, P3340912803525349173.a n = A118434 n

end A118434

/-! ## A118434.P1374650291090339167

`(A099087(n+1)-A009545(n+1))/A057077(n)`
-/

namespace A118434.P1374650291090339167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 (n + 1) - A009545 (n + 1) : ℚ) / (A057077 n : ℚ)

end

end A118434.P1374650291090339167

namespace A118434

/-- `(A099087(n+1)-A009545(n+1))/A057077(n)` -/
def P1374650291090339167.Spec : Prop :=
  ∀ n, P1374650291090339167.a n = (A118434 n : ℚ)

end A118434

/-!
# A118436: Column 0 of triangle A118435.

The programs for A118436, there is no canonical definition to state claims against.
-/

/-! ## A118436.P11470931041363998921

`(-1)^n+1-A118439(n)`
-/

namespace A118436.P11470931041363998921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (1 - A118439 n)

end

end A118436.P11470931041363998921

/-! ## A118436.P15272664823234363716

`A010673(n+1)-A118439(n)`
-/

namespace A118436.P15272664823234363716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) - A118439 n

end

end A118436.P15272664823234363716

/-! ## A118436.P2205342202641492148

`A033999(n)-A118439(n)+1`
-/

namespace A118436.P2205342202641492148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A118439 n + 1

end

end A118436.P2205342202641492148

/-! ## A118436.P12064799393695640072

`2-A010673(n)-A118439(n)`
-/

namespace A118436.P12064799393695640072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010673 n - A118439 n

end

end A118436.P12064799393695640072

/-! ## A118436.P11800653906466357256

`1-A118439(n)+A004442(n)-n`
-/

namespace A118436.P11800653906466357256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A118439 n + (A004442 n - (n : ℤ))

end

end A118436.P11800653906466357256

/-! ## A118436.P4710100812079694719

`xor(1, A033999(n²)-A118439(n))`
-/

namespace A118436.P4710100812079694719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A033999 (n ^ 2) - A118439 n)

end

end A118436.P4710100812079694719

/-!
# A118437: Row sums of triangle A118435.

The programs for A118437, there is no canonical definition to state claims against.
-/

/-! ## A118437.P850334267504329632

`A255047(n)+1-A118440(n)`
-/

namespace A118437.P850334267504329632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + (1 - A118440 n)

end

end A118437.P850334267504329632

/-! ## A118437.P5722355289544319425

`2*A011782(n)-A118440(n)`
-/

namespace A118437.P5722355289544319425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A118440 n

end

end A118437.P5722355289544319425

/-! ## A118437.P11510146502859282244

`lcm(2, A000079(n))-A118440(n)`
-/

namespace A118437.P11510146502859282244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000079 n) : ℤ) - A118440 n

end

end A118437.P11510146502859282244

/-! ## A118437.P10271981606201767913

`A000079(n)-A118440(A028310(n))`
-/

namespace A118437.P10271981606201767913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A118440 (A028310 n).toNat

end

end A118437.P10271981606201767913

/-! ## A118437.P8878720531242856838

`A171449(A028310(n))-A118440(n)`
-/

namespace A118437.P8878720531242856838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 (A028310 n).toNat - A118440 n

end

end A118437.P8878720531242856838

/-! ## A118437.P16823614594775824735

`Δ[A000918(n)]-A118440(A028310(n))`
-/

namespace A118437.P16823614594775824735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118440 (A028310 n).toNat

end

end A118437.P16823614594775824735

/-! ## A118437.P6529386218719958305

`Δ[A062709(n)]-A118440(A028310(n))`
-/

namespace A118437.P6529386218719958305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118440 (A028310 n).toNat

end

end A118437.P6529386218719958305

/-!
# A118438: Triangle T, read by rows, equal to the matrix product T = H*C*H, where H is the self-inverse triangle A118433 and C is Pascal's triangle.

The programs for A118438, there is no canonical definition to state claims against.
-/

/-! ## A118438.P4798451682614087949

`A005843(A119467(n))-A118435(n)`
-/

namespace A118438.P4798451682614087949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A119467 n).toNat - A118435 n

end

end A118438.P4798451682614087949

/-!
# A118439: Column 0 of triangle A118438.

The programs for A118439, there is no canonical definition to state claims against.
-/

/-! ## A118439.P709069680577350944

`and(2, n²-1)-A118436(n)`
-/

namespace A118439.P709069680577350944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n ^ 2 : ℤ) - 1) - A118436 n

end

end A118439.P709069680577350944

/-! ## A118439.P17589656434727879237

`A010673(n+1)-A118436(n)`
-/

namespace A118439.P17589656434727879237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) - A118436 n

end

end A118439.P17589656434727879237

/-! ## A118439.P7012519002990130147

`A033999(n)+1-A118436(n)`
-/

namespace A118439.P7012519002990130147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (1 - A118436 n)

end

end A118439.P7012519002990130147

/-! ## A118439.P18311961199427801163

`2-A010673(n)-A118436(n)`
-/

namespace A118439.P18311961199427801163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010673 n - A118436 n

end

end A118439.P18311961199427801163

/-! ## A118439.P15042135158489642559

`A000122(∑[A008619(n)])-A118436(n)`
-/

namespace A118439.P15042135158489642559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A118436 n

end

end A118439.P15042135158489642559

/-!
# A118440: Row sums of triangle A118438.

The programs for A118440, there is no canonical definition to state claims against.
-/

/-! ## A118440.P2812384180096779519

`A255047(n)+1-A118437(n)`
-/

namespace A118440.P2812384180096779519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + (1 - A118437 n)

end

end A118440.P2812384180096779519

/-! ## A118440.P4010413346865835709

`2*A011782(n)-A118437(n)`
-/

namespace A118440.P4010413346865835709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A118437 n

end

end A118440.P4010413346865835709

/-! ## A118440.P16738995368144559196

`lcm(2, A000079(n))-A118437(n)`
-/

namespace A118440.P16738995368144559196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000079 n) : ℤ) - A118437 n

end

end A118440.P16738995368144559196

/-! ## A118440.P9028709680625833045

`2^n-A118437(A000038(n)+n)`
-/

namespace A118440.P9028709680625833045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A118437 (A000038 n + (n : ℤ)).toNat

end

end A118440.P9028709680625833045

/-! ## A118440.P5144273283799322973

`2^n-A118437(abs(n-A000038(n)))`
-/

namespace A118440.P5144273283799322973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A118437 |(n : ℤ) - A000038 n|.toNat

end

end A118440.P5144273283799322973

/-!
# A118441: Triangle L, read by rows, equal to the matrix log of A118435, with the property that L^2 consists of a single diagonal (two rows down from the main diagonal).

The programs for A118441, there is no canonical definition to state claims against.
-/

/-! ## A118441.P979563250131840463

`A001787(A025581(n))*A118433(n)`
-/

namespace A118441.P979563250131840463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A025581 n).toNat * A118433 n

end

end A118441.P979563250131840463

/-! ## A118441.P14654841234367600262

`A003415(A130321(n))*A118433(n)`
-/

namespace A118441.P14654841234367600262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A130321 n).toNat * A118433 n

end

end A118441.P14654841234367600262

/-! ## A118441.P2828476407975887511

`A097067(A004736(n+1))*A118433(n)`
-/

namespace A118441.P2828476407975887511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A004736 (n + 1)).toNat * A118433 n

end

end A118441.P2828476407975887511

/-!
# A118442: Column 0 of triangle A118441, which is the matrix log of triangle A118435.

The programs for A118442, the canonical program `A118442.P2021376891503570147` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118442 has offset 0).

The definition of A118442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118442.P2021376891503570147

`(-1)^floor(n/2)*n*2^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118442

/-- `(-1)^floor(n/2)*n*2^(n-1)` -/
def P2021376891503570147.Spec : Prop :=
  ∀ n, P2021376891503570147.a n = (A118442 n : ℚ)

end A118442

/-! ## A118442.P9995143761733602438

`A001787(n)/A057077(n)`
-/

namespace A118442.P9995143761733602438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n : ℚ) / (A057077 n : ℚ)

end

end A118442.P9995143761733602438

namespace A118442

/-- `A001787(n)/A057077(n)` -/
def P9995143761733602438.Spec : Prop :=
  ∀ n, P9995143761733602438.a n = (A118442 n : ℚ)

end A118442

/-! ## A118442.P11859930071573265858

`A001787(n)/A087960(n+3)`
-/

namespace A118442.P11859930071573265858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n : ℚ) / (A087960 (n + 3) : ℚ)

end

end A118442.P11859930071573265858

namespace A118442

/-- `A001787(n)/A087960(n+3)` -/
def P11859930071573265858.Spec : Prop :=
  ∀ n, P11859930071573265858.a n = (A118442 n : ℚ)

end A118442

/-! ## A118442.P14720750386183214273

`n*A106664(2*(n+1))/4`
-/

namespace A118442.P14720750386183214273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A106664 (2 * (n + 1)) : ℚ) / 4

end

end A118442.P14720750386183214273

namespace A118442

/-- `n*A106664(2*(n+1))/4` -/
def P14720750386183214273.Spec : Prop :=
  ∀ n, P14720750386183214273.a n = (A118442 n : ℚ)

end A118442

/-!
# A118443: Row sums of triangle A118441, which is the matrix log of triangle A118435.

The programs for A118443, the canonical program `A118443.P2729383799526764967` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118443 has offset 0).

The definition of A118443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118443.P9251039487712045930

`(n+1)*A118444(n)`
-/

namespace A118443.P9251039487712045930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118444 n

end

end A118443.P9251039487712045930

namespace A118443

/-- `(n+1)*A118444(n)` -/
def P9251039487712045930.Spec : Prop :=
  ∀ n, P9251039487712045930.a n = A118443 n

end A118443

/-! ## A118443.P14312269919389274676

`(-1)^∑[n]*Δ[A139011(n)]*(n+1)`
-/

namespace A118443.P14312269919389274676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n) * (n + 1 : ℤ)

end

end A118443.P14312269919389274676

namespace A118443

/-- `(-1)^∑[n]*Δ[A139011(n)]*(n+1)` -/
def P14312269919389274676.Spec : Prop :=
  ∀ n, P14312269919389274676.a n = A118443 n

end A118443

/-! ## A118443.P2729383799526764967

`Δ[A139011(n)]*A087960(n)*(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118443

/-- `Δ[A139011(n)]*A087960(n)*(n+1)` -/
def P2729383799526764967.Spec : Prop :=
  ∀ n, P2729383799526764967.a n = A118443 n

theorem P2729383799526764967.correct : P2729383799526764967.Spec := by
  intro n
  simp only [A118443]

end A118443

/-! ## A118443.P4222340895744241333

`A118444(n)*A208521(A000124(n))`
-/

namespace A118443.P4222340895744241333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118444 n * A208521 (A000124 n).toNat

end

end A118443.P4222340895744241333

namespace A118443

/-- `A118444(n)*A208521(A000124(n))` -/
def P4222340895744241333.Spec : Prop :=
  ∀ n, P4222340895744241333.a n = A118443 n

end A118443

/-! ## A118443.P5449937229506666549

`A118444(n)*A132813(A000096(n))`
-/

namespace A118443.P5449937229506666549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118444 n * A132813 (A000096 n).toNat

end

end A118443.P5449937229506666549

namespace A118443

/-- `A118444(n)*A132813(A000096(n))` -/
def P5449937229506666549.Spec : Prop :=
  ∀ n, P5449937229506666549.a n = A118443 n

end A118443

/-!
# A118444: a(n) = A118443(n)/(n+1), where A118443 is the row sums of triangle A118441.

The programs for A118444, the canonical program `A118444.P13603770497566065766` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118444 has offset 0).

The definition of A118444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118444.P13603770497566065766

`A118443(n)/(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118444

/-- `A118443(n)/(n+1)` -/
def P13603770497566065766.Spec : Prop :=
  ∀ n, P13603770497566065766.a n = (A118444 n : ℚ)

end A118444

/-! ## A118444.P10769787671709103318

`(-1)^∑[n]*Δ[A139011(n)]`
-/

namespace A118444.P10769787671709103318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A118444.P10769787671709103318

namespace A118444

/-- `(-1)^∑[n]*Δ[A139011(n)]` -/
def P10769787671709103318.Spec : Prop :=
  ∀ n, P10769787671709103318.a n = A118444 n

end A118444

/-! ## A118444.P10626407583420558918

`Δ[A139011(n)]*A087960(n)`
-/

namespace A118444.P10626407583420558918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087960 n

end

end A118444.P10626407583420558918

namespace A118444

/-- `Δ[A139011(n)]*A087960(n)` -/
def P10626407583420558918.Spec : Prop :=
  ∀ n, P10626407583420558918.a n = A118444 n

end A118444

/-! ## A118444.P1209742001994145153

`Δ[A139011(n)]*A057077(n+1)`
-/

namespace A118444.P1209742001994145153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057077 (n + 1)

end

end A118444.P1209742001994145153

namespace A118444

/-- `Δ[A139011(n)]*A057077(n+1)` -/
def P1209742001994145153.Spec : Prop :=
  ∀ n, P1209742001994145153.a n = A118444 n

end A118444

/-! ## A118444.P5873548525686040435

`Δ[A139011(n)]*A046980(2*n+1)`
-/

namespace A118444.P5873548525686040435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A046980 (2 * n + 1)

end

end A118444.P5873548525686040435

namespace A118444

/-- `Δ[A139011(n)]*A046980(2*n+1)` -/
def P5873548525686040435.Spec : Prop :=
  ∀ n, P5873548525686040435.a n = A118444 n

end A118444

/-! ## A118444.P14875825013410786432

`A006496(n)+A006495(∑[A010673(n)])`
-/

namespace A118444.P14875825013410786432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n + A006495 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118444.P14875825013410786432

namespace A118444

/-- `A006496(n)+A006495(∑[A010673(n)])` -/
def P14875825013410786432.Spec : Prop :=
  ∀ n, P14875825013410786432.a n = A118444 n

end A118444

/-! ## A118444.P13477660813442560001

`A045873(n)+∑[A006495(A014681(n))]`
-/

namespace A118444.P13477660813442560001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118444.P13477660813442560001

namespace A118444

/-- `A045873(n)+∑[A006495(A014681(n))]` -/
def P13477660813442560001.Spec : Prop :=
  ∀ n, P13477660813442560001.a n = A118444 n

end A118444

/-! ## A118444.P714038791827046415

`Δ[A139011(n)]/A046980(A005408(n))`
-/

namespace A118444.P714038791827046415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A046980 (A005408 n).toNat : ℚ)

end

end A118444.P714038791827046415

namespace A118444

/-- `Δ[A139011(n)]/A046980(A005408(n))` -/
def P714038791827046415.Spec : Prop :=
  ∀ n, P714038791827046415.a n = (A118444 n : ℚ)

end A118444

/-!
# A118445: Number of tree-rooted maps of genus 1 with n edges: rooted maps on the torus with a distinguished spanning tree.

The programs for A118445, there is no canonical definition to state claims against.
-/

/-! ## A118445.P9446617430775832858

`∑[(n+1)²]*A000356(n+1)`
-/

namespace A118445.P9446617430775832858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000356 (n + 1)

end

end A118445.P9446617430775832858

/-! ## A118445.P13914733674675807350

`(A000108(n+2)/2)²*∑[∑[n+1]]`
-/

namespace A118445.P13914733674675807350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000108 (n + 2) : ℚ) / 2) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A118445.P13914733674675807350

/-! ## A118445.P11052006549636594324

`A234040(n+1)*A234040(n)*∑[(n+1)²]`
-/

namespace A118445.P11052006549636594324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234040 (n + 1) * A234040 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118445.P11052006549636594324

/-! ## A118445.P13645407049727669820

`∑[A085373(n)]²/∑[∑[n+1]]`
-/

namespace A118445.P13645407049727669820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085373 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A118445.P13645407049727669820

/-! ## A118445.P6259122502156497755

`A002802(n)²/A000292(n+1)`
-/

namespace A118445.P6259122502156497755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002802 n ^ 2 : ℚ) / (A000292 (n + 1) : ℚ)

end

end A118445.P6259122502156497755

/-!
# A118447: Number of rooted n-edge one-vertex maps on the Klein bottle (dually: one-face maps).

The programs for A118447, the canonical program `A118447.P6254053121219792045` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118447 has offset 2).

The definition of A118447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118447.P17127428630853793949

`A221058(2*(n+2))`
-/

namespace A118447.P17127428630853793949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221058 (2 * (n + 2))

end

end A118447.P17127428630853793949

namespace A118447

/-- `A221058(2*(n+2))` -/
def P17127428630853793949.Spec : Prop :=
  ∀ n, P17127428630853793949.a n = A118447 (n + 2)

end A118447

/-! ## A118447.P6254053121219792045

`(n+2)*A172060(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118447

/-- `(n+2)*A172060(n+1)` -/
def P6254053121219792045.Spec : Prop :=
  ∀ n, P6254053121219792045.a n = A118447 (n + 2)

theorem P6254053121219792045.correct : P6254053121219792045.Spec := by
  intro n
  simp only [A118447, Nat.add_sub_cancel]

end A118447

/-! ## A118447.P7293265441360217952

`record[(n+4)*A194590(n+2)]`
-/

namespace A118447.P7293265441360217952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A194590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118447.P7293265441360217952

namespace A118447

/-- `record[(n+4)*A194590(n+2)]` -/
def P7293265441360217952.Spec : Prop :=
  ∀ n, P7293265441360217952.a n = A118447 (n + 2)

end A118447

/-! ## A118447.P13828373856288312532

`2*(n+2)*A000531(n+1)`
-/

namespace A118447.P13828373856288312532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) * A000531 (n + 1))

end

end A118447.P13828373856288312532

namespace A118447

/-- `2*(n+2)*A000531(n+1)` -/
def P13828373856288312532.Spec : Prop :=
  ∀ n, P13828373856288312532.a n = A118447 (n + 2)

end A118447

/-! ## A118447.P14481410265646293516

`(n+2)*A107373(2*(n+2))`
-/

namespace A118447.P14481410265646293516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A107373 (2 * (n + 2))

end

end A118447.P14481410265646293516

namespace A118447

/-- `(n+2)*A107373(2*(n+2))` -/
def P14481410265646293516.Spec : Prop :=
  ∀ n, P14481410265646293516.a n = A118447 (n + 2)

end A118447

/-! ## A118447.P2088800414065702770

`2*(A029887(n)+A002802(n))`
-/

namespace A118447.P2088800414065702770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029887 n + A002802 n)

end

end A118447.P2088800414065702770

namespace A118447

/-- `2*(A029887(n)+A002802(n))` -/
def P2088800414065702770.Spec : Prop :=
  ∀ n, P2088800414065702770.a n = A118447 (n + 2)

end A118447

/-!
# A118448: Number of rooted n-edge one-vertex maps on a non-orientable genus-3 surface (dually: one-face maps).

The programs for A118448, there is no canonical definition to state claims against.
-/

/-! ## A118448.P5618030140585644888

`A214337(∑[n+1]+1)`
-/

namespace A118448.P5618030140585644888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214337 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118448.P5618030140585644888

/-!
# A118449: Number of rooted n-edge one-vertex maps on a non-orientable genus-4 surface (dually: one-face maps).

The programs for A118449, there is no canonical definition to state claims against.
-/

/-! ## A118449.P516491259968215619

`A214806(∑[n]+1)`
-/

namespace A118449.P516491259968215619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118449.P516491259968215619

/-! ## A118449.P14318954622724089805

`lcm(2, A214806(A000124(n)))`
-/

namespace A118449.P14318954622724089805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A214806 (A000124 n).toNat)

end

end A118449.P14318954622724089805

/-!
# A118450: Number of rooted n-edge one-vertex one-face maps on a non-orientable surface (of genus n).

The programs for A118450, there is no canonical definition to state claims against.
-/

/-! ## A118450.P3948752405526656695

`A267180(∑[n+1])`
-/

namespace A118450.P3948752405526656695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118450.P3948752405526656695

/-! ## A118450.P319814556892173761

`record[A267180(A133825(n))]`
-/

namespace A118450.P319814556892173761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118450.P319814556892173761

/-! ## A118450.P613565103116011940

`record[A055141(n)*A267180(n+1)]`
-/

namespace A118450.P613565103116011940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055141 n * A267180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118450.P613565103116011940

/-! ## A118450.P699458636711235860

`record[A103452(n)*A267180(n+1)]`
-/

namespace A118450.P699458636711235860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A267180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118450.P699458636711235860

/-!
# A118451: Number of rooted n-edge maps on a non-orientable genus-3 surface.

The programs for A118451, there is no canonical definition to state claims against.
-/

/-! ## A118451.P5403895986214335009

`A267180(∑[n+2]+4)`
-/

namespace A118451.P5403895986214335009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A118451.P5403895986214335009

/-! ## A118451.P13891040850338067280

`A267180(A167614(n+1))+A025465(n)`
-/

namespace A118451.P13891040850338067280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (A167614 (n + 1)).toNat + A025465 n

end

end A118451.P13891040850338067280

/-!
# A118454: Algebraic degree of the onset of the logistic map n-bifurcation.

The programs for A118454, there is no canonical definition to state claims against.
-/

/-! ## A118454.P9834426665618378143

`A289997(xor(A276890(n), A323127(n)))`
-/

namespace A118454.P9834426665618378143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289997 (Int.xor (A276890 n) (A323127 (n + 10))).toNat

end

end A118454.P9834426665618378143

/-! ## A118454.P8700206700294976423

`A130211(A319271(n+4)*A321191(n))`
-/

namespace A118454.P8700206700294976423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130211 (A319271 (n + 4) * A321191 n).toNat

end

end A118454.P8700206700294976423

/-! ## A118454.P12602112738694418742

`A257651(A004250(n+1)*A216078(n+1))`
-/

namespace A118454.P12602112738694418742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257651 (A004250 (n + 1) * A216078 (n + 1)).toNat

end

end A118454.P12602112738694418742

/-!
# A118455: a(1)=1, a(n) = Product_{k=2..n} P(k), where P(k) is the largest prime <= k.

The programs for A118455, there is no canonical definition to state claims against.
-/

/-! ## A118455.P13443404838332941833

`∏[A136548(n+2)]`
-/

namespace A118455.P13443404838332941833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P13443404838332941833

/-! ## A118455.P9141647364621609366

`∏[A056813((n+1)²)]`
-/

namespace A118455.P9141647364621609366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P9141647364621609366

/-! ## A118455.P4286974535716671102

`∏[A195183(∑[n+1])]`
-/

namespace A118455.P4286974535716671102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P4286974535716671102

/-! ## A118455.P10113699332370879826

`∏[A006530((n+1)*a(n-1))]` with `a(0)=1`
-/

namespace A118455.P10113699332370879826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A006530 ((n + 1 : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P10113699332370879826

/-! ## A118455.P16467809532716673930

`∏[A006530(lcm(n+1, a(n-1)))]` with `a(0)=1`
-/

namespace A118455.P16467809532716673930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A006530 (Int.lcm (n + 1 : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P16467809532716673930

/-! ## A118455.P13654155028175808366

`∏[A020639(A030664(n+1))]`
-/

namespace A118455.P13654155028175808366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P13654155028175808366

/-! ## A118455.P6394670120150341118

`∏[A006530(A342766(n+1))]`
-/

namespace A118455.P6394670120150341118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A342766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118455.P6394670120150341118

/-! ## A118455.P8020976914808149998

`a(n-1)*A000040(A000720(n+1))` with `a(0)=1`
-/

namespace A118455.P8020976914808149998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 (A000720 (n + 1)).toNat

end

end A118455.P8020976914808149998

/-! ## A118455.P15910142771895335688

`a(n-1)*A006530(Δ[(n+1)*A006530(a(n-1))])` with `a(0)=1`
-/

namespace A118455.P15910142771895335688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * A006530 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A006530 (f1 (n + 1) - f1 n).toNat

end

end A118455.P15910142771895335688

/-!
# A118456: a(n) = Product_{k=1..n} P(k), where P(k) is the smallest prime >= k.

The programs for A118456, there is no canonical definition to state claims against.
-/

/-! ## A118456.P15859502372115056692

`∏[A151800(n)]`
-/

namespace A118456.P15859502372115056692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P15859502372115056692

/-! ## A118456.P17862423741141318746

`∏[Δ[A117842(n)]]`
-/

namespace A118456.P17862423741141318746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P17862423741141318746

/-! ## A118456.P13156687270124241444

`∏[A007918(n+1)]`
-/

namespace A118456.P13156687270124241444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P13156687270124241444

/-! ## A118456.P16149452574021579337

`∏[A013632(n)+n]`
-/

namespace A118456.P16149452574021579337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P16149452574021579337

/-! ## A118456.P11843759623676932073

`∏[A013634(n)-n]`
-/

namespace A118456.P11843759623676932073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P11843759623676932073

/-! ## A118456.P11426185078524872372

`∏[A230775((n+1)²)]`
-/

namespace A118456.P11426185078524872372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P11426185078524872372

/-! ## A118456.P17206722787616309230

`∏[sqrt(A069549(n+1))]`
-/

namespace A118456.P17206722787616309230
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P17206722787616309230

/-! ## A118456.P6820807605989425734

`2*∏[A159477(n+1)]`
-/

namespace A118456.P6820807605989425734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A118456.P6820807605989425734

/-! ## A118456.P6684311928467973920

`∏[A308052(2*(n+1))]`
-/

namespace A118456.P6684311928467973920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P6684311928467973920

/-! ## A118456.P3634841152471267397

`∏[A006530(A053024(n+1))]`
-/

namespace A118456.P3634841152471267397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118456.P3634841152471267397

/-!
# A118457: Table of partitions of n into distinct parts, in Mathematica ordering.

The programs for A118457, there is no canonical definition to state claims against.
-/

/-! ## A118457.P18046773123404685507

`A344092(lcm(n, A177849(n)))`
-/

namespace A118457.P18046773123404685507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344092 (Int.lcm (n : ℤ) (A177849 n))

end

end A118457.P18046773123404685507

/-! ## A118457.P9958096060688757639

`A344092(n)-C(n, A127817(n+1))`
-/

namespace A118457.P9958096060688757639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344092 n - (Nat.choose n (A127817 (n + 1)).toNat : ℤ)

end

end A118457.P9958096060688757639

/-! ## A118457.P15539569347712579111

`A304042((2*(n+1))²)*A344092(n)`
-/

namespace A118457.P15539569347712579111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 ((2 * (n + 1)) ^ 2) * A344092 n

end

end A118457.P15539569347712579111

/-! ## A118457.P3690087274531012177

`A344092(n)+A000007(A293718(n))`
-/

namespace A118457.P3690087274531012177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344092 n + A000007 (A293718 n).toNat

end

end A118457.P3690087274531012177

/-! ## A118457.P8030887477805751384

`lcm(A115636(A000096(n)), A344092(n))`
-/

namespace A118457.P8030887477805751384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115636 (A000096 n).toNat) (A344092 n)

end

end A118457.P8030887477805751384

/-! ## A118457.P12975985238264840453

`and(A057428(A340940(n)), A344092(n))`
-/

namespace A118457.P12975985238264840453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A340940 n).toNat) (A344092 n)

end

end A118457.P12975985238264840453

/-! ## A118457.P14595388620541895083

`A014963(A268396(n+1))*A344092(n)`
-/

namespace A118457.P14595388620541895083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A268396 (n + 1)).toNat * A344092 n

end

end A118457.P14595388620541895083

/-! ## A118457.P10141877818232364750

`A344092(n*A177849(n))`
-/

namespace A118457.P10141877818232364750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344092 ((n : ℤ) * A177849 n).toNat

end

end A118457.P10141877818232364750

/-!
# A118458: Lengths of partitions into distinct parts in Abramowitz and Stegun order.

The programs for A118458, there is no canonical definition to state claims against.
-/

/-! ## A118458.P10995695313779061963

`A000120(A395306(n))`
-/

namespace A118458.P10995695313779061963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A395306 n).toNat

end

end A118458.P10995695313779061963

/-! ## A118458.P9145188706947273570

`A048881(2*A395306(n))`
-/

namespace A118458.P9145188706947273570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A395306 n).toNat

end

end A118458.P9145188706947273570

/-! ## A118458.P10379712679314160993

`A115623(A035399(n+1)-1)`
-/

namespace A118458.P10379712679314160993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A035399 (n + 1) - 1).toNat

end

end A118458.P10379712679314160993

/-! ## A118458.P7746798919807637671

`A238966(A035399(n+1)-1)`
-/

namespace A118458.P7746798919807637671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (A035399 (n + 1) - 1).toNat

end

end A118458.P7746798919807637671

/-! ## A118458.P17934692512462496260

`A115623(eq[A115623(n), A238966(n)])`
-/

namespace A118458.P17934692512462496260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A118458.P17934692512462496260

/-! ## A118458.P8319207524195243575

`A115623(lt[A238966(n), A115623(n)+1])`
-/

namespace A118458.P8319207524195243575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118458.P8319207524195243575

/-! ## A118458.P11540392223188618234

`A115623(lt[A238966(n)-1, A115623(n)])`
-/

namespace A118458.P11540392223188618234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118458.P11540392223188618234

/-! ## A118458.P7100543486466874272

`A238966(A153881(n+2)+A035399(n+1))`
-/

namespace A118458.P7100543486466874272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (A153881 (n + 2) + A035399 (n + 1)).toNat

end

end A118458.P7100543486466874272

/-! ## A118458.P5936585032540440300

`A000120(A333256(n+1))`
-/

namespace A118458.P5936585032540440300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A333256 (n + 1)).toNat

end

end A118458.P5936585032540440300

/-! ## A118458.P17465929427737795807

`A048881(2*A333256(n+1))`
-/

namespace A118458.P17465929427737795807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A333256 (n + 1)).toNat

end

end A118458.P17465929427737795807

/-!
# A118462: Decimal equivalent of binary encoding of partitions into distinct parts.

The programs for A118462, there is no canonical definition to state claims against.
-/

/-! ## A118462.P12676105315847553268

`A333627(A333379(n+1))`
-/

namespace A118462.P12676105315847553268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A333379 (n + 1)).toNat

end

end A118462.P12676105315847553268

/-!
# A118465: a(n) = 8*n^3 + n.

The programs for A118465, the canonical program `A118465.P10404194839924419518` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118465 has offset 0).

The definition of A118465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n^3+n` (program `A118465.P10404194839924419518`, by `A118465.P10404194839924419518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118465.P10404194839924419518

`8*n^3+n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118465

/-- `8*n^3+n` -/
def P10404194839924419518.Spec : Prop :=
  ∀ n, (P10404194839924419518.a n : ℤ) = A118465 n

theorem P10404194839924419518.correct : P10404194839924419518.Spec := by
  intro n
  simp only [A118465]

end A118465

/-! ## A118465.P5438059155711800400

`3*A143166(n)`
-/

namespace A118465.P5438059155711800400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A143166 n

end

end A118465.P5438059155711800400

namespace A118465

/-- `3*A143166(n)` -/
def P5438059155711800400.Spec : Prop :=
  ∀ n, P5438059155711800400.a n = A118465 n

end A118465

/-! ## A118465.P10615140348062500443

`n*A081585(n)`
-/

namespace A118465.P10615140348062500443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081585 n

end

end A118465.P10615140348062500443

namespace A118465

/-- `n*A081585(n)` -/
def P10615140348062500443.Spec : Prop :=
  ∀ n, P10615140348062500443.a n = A118465 n

end A118465

/-! ## A118465.P17732040374921655582

`lcm(n, 8*n²+1)`
-/

namespace A118465.P17732040374921655582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (8 * n ^ 2 + 1)

end

end A118465.P17732040374921655582

namespace A118465

/-- `lcm(n, 8*n²+1)` -/
def P17732040374921655582.Spec : Prop :=
  ∀ n, (P17732040374921655582.a n : ℤ) = A118465 n

end A118465

/-! ## A118465.P10759617873129646867

`n*or(1, 8*n²)`
-/

namespace A118465.P10759617873129646867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (8 * n ^ 2)

end

end A118465.P10759617873129646867

namespace A118465

/-- `n*or(1, 8*n²)` -/
def P10759617873129646867.Spec : Prop :=
  ∀ n, (P10759617873129646867.a n : ℤ) = A118465 n

end A118465

/-! ## A118465.P7824598771429789642

`n*xor(1, 8*n²)`
-/

namespace A118465.P7824598771429789642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (8 * n ^ 2)

end

end A118465.P7824598771429789642

namespace A118465

/-- `n*xor(1, 8*n²)` -/
def P7824598771429789642.Spec : Prop :=
  ∀ n, (P7824598771429789642.a n : ℤ) = A118465 n

end A118465

/-! ## A118465.P18431233873549471195

`Δ[(1-2*n)²*C(n, 2)]`
-/

namespace A118465.P18431233873549471195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118465.P18431233873549471195

namespace A118465

/-- `Δ[(1-2*n)²*C(n, 2)]` -/
def P18431233873549471195.Spec : Prop :=
  ∀ n, P18431233873549471195.a n = A118465 n

end A118465

/-! ## A118465.P10929688195398198778

`Δ[lcm((n-1+n)², C(n, 2))]`
-/

namespace A118465.P10929688195398198778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 1 + (n : ℤ)) ^ 2) (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A118465.P10929688195398198778

namespace A118465

/-- `Δ[lcm((n-1+n)², C(n, 2))]` -/
def P10929688195398198778.Spec : Prop :=
  ∀ n, P10929688195398198778.a n = A118465 n

end A118465

/-! ## A118465.P8868143849473430876

`n*record[lcm(n+2, 2*n)+3]`
-/

namespace A118465.P8868143849473430876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (2 * n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118465.P8868143849473430876

namespace A118465

/-- `n*record[lcm(n+2, 2*n)+3]` -/
def P8868143849473430876.Spec : Prop :=
  ∀ n, (P8868143849473430876.a n : ℤ) = A118465 n

end A118465

/-! ## A118465.P14579408190029523366

`3*(2*C(2*n+1, 3)+n)`
-/

namespace A118465.P14579408190029523366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * Nat.choose (2 * n + 1) 3 + n)

end

end A118465.P14579408190029523366

namespace A118465

/-- `3*(2*C(2*n+1, 3)+n)` -/
def P14579408190029523366.Spec : Prop :=
  ∀ n, (P14579408190029523366.a n : ℤ) = A118465 n

end A118465

/-! ## A118465.P15317999561140313369

`n*(A139098(n)+1)`
-/

namespace A118465.P15317999561140313369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A139098 n + 1)

end

end A118465.P15317999561140313369

namespace A118465

/-- `n*(A139098(n)+1)` -/
def P15317999561140313369.Spec : Prop :=
  ∀ n, P15317999561140313369.a n = A118465 n

end A118465

/-! ## A118465.P6235200758589343370

`n*(A008527(n)-1)`
-/

namespace A118465.P6235200758589343370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008527 n - 1)

end

end A118465.P6235200758589343370

namespace A118465

/-- `n*(A008527(n)-1)` -/
def P6235200758589343370.Spec : Prop :=
  ∀ n, P6235200758589343370.a n = A118465 n

end A118465

/-! ## A118465.P13050150611217153573

`n*(A108100(n)-1)`
-/

namespace A118465.P13050150611217153573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A108100 n - 1)

end

end A118465.P13050150611217153573

namespace A118465

/-- `n*(A108100(n)-1)` -/
def P13050150611217153573.Spec : Prop :=
  ∀ n, P13050150611217153573.a n = A118465 n

end A118465

/-! ## A118465.P16995233377189733171

`3*(A259110(n)+n)`
-/

namespace A118465.P16995233377189733171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A259110 n + (n : ℤ))

end

end A118465.P16995233377189733171

namespace A118465

/-- `3*(A259110(n)+n)` -/
def P16995233377189733171.Spec : Prop :=
  ∀ n, P16995233377189733171.a n = A118465 n

end A118465

/-! ## A118465.P3380298371248709256

`n*A275543(2*n)`
-/

namespace A118465.P3380298371248709256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A275543 (2 * n)

end

end A118465.P3380298371248709256

namespace A118465

/-- `n*A275543(2*n)` -/
def P3380298371248709256.Spec : Prop :=
  ∀ n, P3380298371248709256.a n = A118465 n

end A118465

/-! ## A118465.P12931528008830801297

`n/2*A010006(n)`
-/

namespace A118465.P12931528008830801297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A010006 n : ℚ)

end

end A118465.P12931528008830801297

namespace A118465

/-- `n/2*A010006(n)` -/
def P12931528008830801297.Spec : Prop :=
  ∀ n, P12931528008830801297.a n = (A118465 n : ℚ)

end A118465

/-! ## A118465.P15015144854173550432

`n*(A247541(n)+n²)`
-/

namespace A118465.P15015144854173550432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A247541 n + (n ^ 2 : ℤ))

end

end A118465.P15015144854173550432

namespace A118465

/-- `n*(A247541(n)+n²)` -/
def P15015144854173550432.Spec : Prop :=
  ∀ n, P15015144854173550432.a n = A118465 n

end A118465

/-! ## A118465.P11410238501556693025

`n*(A247792(n)-n²)`
-/

namespace A118465.P11410238501556693025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A247792 n - (n ^ 2 : ℤ))

end

end A118465.P11410238501556693025

namespace A118465

/-- `n*(A247792(n)-n²)` -/
def P11410238501556693025.Spec : Prop :=
  ∀ n, P11410238501556693025.a n = A118465 n

end A118465

/-!
# A118467: Primes p = prime(i) of level (1,3), i.e., such that A118534(i) = prime(i-3).

The programs for A118467, there is no canonical definition to state claims against.
-/

/-! ## A118467.P8310971299763015025

`∩[A074979(n+1), A098031(n+1)]`
-/

namespace A118467.P8310971299763015025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118467.P8310971299763015025

/-! ## A118467.P16599086952103141331

`∩[A093178(A098031(n+1)), A173970(n+4)]`
-/

namespace A118467.P16599086952103141331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A098031 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118467.P16599086952103141331

/-! ## A118467.P2925014985222544847

`A028310(∩[A098031(n+1), A173970(n+1)])`
-/

namespace A118467.P2925014985222544847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A118467.P2925014985222544847

/-! ## A118467.P17670121424839219264

`A028310(∩[A125830(n+1), A098031(n+4)])`
-/

namespace A118467.P17670121424839219264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098031 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A118467.P17670121424839219264

/-! ## A118467.P12401450441509936259

`∩[A074979(n+1), A028310(A125830(n+1))]`
-/

namespace A118467.P12401450441509936259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A125830 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118467.P12401450441509936259

/-!
# A118468: Numbers n for which the sum of the digits plus the sum of the digits of the square, equals the sum of the digits of the cube.

The programs for A118468, there is no canonical definition to state claims against.
-/

/-! ## A118468.P6489383258581821535

`eq[A007953(n)+A004159(n), A004164(n)]`
-/

namespace A118468.P6489383258581821535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118468.P6489383258581821535

/-! ## A118468.P15502643426433599025

`9*eq[1, gcd(A091137(n), A141047(n))]`
-/

namespace A118468.P15502643426433599025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091137 n) (A141047 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118468.P15502643426433599025

/-! ## A118468.P11396202576252773797

`9*lt[A001787(n), A118679(3*(n+1))²]`
-/

namespace A118468.P11396202576252773797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118679 (3 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118468.P11396202576252773797

/-! ## A118468.P541169885244933220

`A008591(lt[A045783(n+1), A271576(n+1)])`
-/

namespace A118468.P541169885244933220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118468.P541169885244933220

/-! ## A118468.P14458199103050732395

`9*comp[10-A005809(n)]`
-/

namespace A118468.P14458199103050732395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A005809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118468.P14458199103050732395

/-!
# A118469: Triangle read by rows: a(n,m) = If(n = 1, then 1, else Prime(n) - 1 + Sum_{k=n..m} (Prime(k + 1) - Prime(k))/2 ).

The programs for A118469, there is no canonical definition to state claims against.
-/

/-! ## A118469.P12946220171765754700

`A219839(A339116(n+2))`
-/

namespace A118469.P12946220171765754700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A339116 (n + 2)).toNat

end

end A118469.P12946220171765754700

/-! ## A118469.P13828156525786747030

`A142150(A204890(n+1))+A000010(A037126(n+1))`
-/

namespace A118469.P13828156525786747030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A204890 (n + 1)).toNat + A000010 (A037126 (n + 1)).toNat

end

end A118469.P13828156525786747030

/-! ## A118469.P1088386745649894443

`A109129(2*A157404(n+1))`
-/

namespace A118469.P1088386745649894443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (2 * A157404 (n + 1)).toNat

end

end A118469.P1088386745649894443

/-! ## A118469.P12420949573029533938

`A134021(A002262(n)*A020712(n))`
-/

namespace A118469.P12420949573029533938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A002262 n * A020712 n).toNat

end

end A118469.P12420949573029533938

/-! ## A118469.P10766711804009789802

`A064099(A000330(n)*A180662(n))`
-/

namespace A118469.P10766711804009789802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A000330 n * A180662 n).toNat

end

end A118469.P10766711804009789802

/-!
# A118471: a(0)=1. a(n) = a(n-1)*(n+1), if n is in the sequence. a(n)= a(n-1) +1, if n is missing from the sequence.

The programs for A118471, there is no canonical definition to state claims against.
-/

/-! ## A118471.P9161612764564069746

`∪[A048859(n+1), A032766(A001725(n+5))]`
-/

namespace A118471.P9161612764564069746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A001725 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118471.P9161612764564069746

/-!
# A118473: Records in A117831.

The programs for A118473, there is no canonical definition to state claims against.
-/

/-! ## A118473.P9435707347700623883

`record[A117831(n+1)]`
-/

namespace A118473.P9435707347700623883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118473.P9435707347700623883

/-! ## A118473.P12987374114537798042

`A117831(A118474(n+1))`
-/

namespace A118473.P12987374114537798042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A118474 (n + 1)).toNat

end

end A118473.P12987374114537798042

/-! ## A118473.P11117133814049674597

`record[A117831(A028310(n))]-A090620(n)`
-/

namespace A118473.P11117133814049674597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090620 n

end

end A118473.P11117133814049674597

/-! ## A118473.P14762489538550604531

`record[A117831(A028310(n))]-A185284(n)`
-/

namespace A118473.P14762489538550604531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185284 n

end

end A118473.P14762489538550604531

/-!
# A118474: Where records occur in A117831.

The programs for A118474, there is no canonical definition to state claims against.
-/

/-! ## A118474.P10062989890275115034

`A214701(lcm(A110266(n+1), A119239(n+1)))`
-/

namespace A118474.P10062989890275115034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (Int.lcm (A110266 (n + 1)) (A119239 (n + 1)))

end

end A118474.P10062989890275115034

/-!
# A118475: Write numbers from n down to 1 in decreasing order, then move the 1 to the front.

The programs for A118475, there is no canonical definition to state claims against.
-/

/-! ## A118475.P12085526015804977154

`record[A104759(n+1)-((9*n-1)*(10^n-1)/9+n)]`
-/

namespace A118475.P12085526015804977154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104759 (n + 1) : ℚ) - (((9 * n : ℤ) - 1 : ℚ) * (((10 ^ n : ℤ) - 1 : ℚ) / 9) + (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118475.P12085526015804977154

/-! ## A118475.P15998114128091344298

`∑[A071153(∑[A068875(n)])]`
-/

namespace A118475.P15998114128091344298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118475.P15998114128091344298

/-! ## A118475.P7076812833105676536

`∑[A081122(A004881(n+1))]`
-/

namespace A118475.P7076812833105676536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081122 (A004881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118475.P7076812833105676536

/-! ## A118475.P12648166332244499588

`∑[A209644(A329562(n)+n)]`
-/

namespace A118475.P12648166332244499588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209644 (A329562 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118475.P12648166332244499588

/-! ## A118475.P14715553803957284579

`∑[A209644(xor(n, A329562(n)))]`
-/

namespace A118475.P14715553803957284579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209644 (Int.xor (n : ℤ) (A329562 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118475.P14715553803957284579

/-!
# A118476: a(0) = 1; a(n) is least k with n prime factors and k > n*a(n-1).

The programs for A118476, there is no canonical definition to state claims against.
-/

/-! ## A118476.P14722813557971410970

`A178772(A049129(n+2))`
-/

namespace A118476.P14722813557971410970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (A049129 (n + 2)).toNat

end

end A118476.P14722813557971410970

/-! ## A118476.P16661176379819284895

`A106493(A125809(n)+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A118476.P16661176379819284895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106493 (A125809 n + 1).toNat + (n : ℤ) * a (n - 1)

end

end A118476.P16661176379819284895

/-!
# A118477: Number of nonassociative rings with <= n elements.

The programs for A118477, there is no canonical definition to state claims against.
-/

/-! ## A118477.P2122275185213040002

`∑[A037292(n+1)]`
-/

namespace A118477.P2122275185213040002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118477.P2122275185213040002

/-! ## A118477.P17861451128029049566

`a(n-1)+char[A002262(n)]*A037292(n+1)` with `a(0)=1`
-/

namespace A118477.P17861451128029049566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A037292 (n + 1)

end

end A118477.P17861451128029049566

/-! ## A118477.P7837321696652076698

`a(n-1)-A037292(n+1)*A107393(A151800(n))` with `a(0)=1`
-/

namespace A118477.P7837321696652076698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A037292 (n + 1) * A107393 (A151800 n).toNat

end

end A118477.P7837321696652076698

/-! ## A118477.P6422650936602384105

`a(n-1)+A037292(n+1)*A160467(A029979(n+1))` with `a(0)=1`
-/

namespace A118477.P6422650936602384105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A037292 (n + 1) * A160467 (A029979 (n + 1)).toNat

end

end A118477.P6422650936602384105

/-!
# A118478: a(n) is the smallest m such that m*(m+1) is divisible by the first n prime numbers.

The programs for A118478, there is no canonical definition to state claims against.
-/

/-! ## A118478.P6945747044148203947

`floor(sqrt(A354411(n+1)))`
-/

namespace A118478.P6945747044148203947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A354411 (n + 1))

end

end A118478.P6945747044148203947

/-! ## A118478.P1058162990150253144

`round(sqrt(A354411(n+1)-A004273(n)))`
-/

namespace A118478.P1058162990150253144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A354411 (n + 1) - A004273 n : ℝ))

end

end A118478.P1058162990150253144

/-! ## A118478.P3395537955336083835

`round(sqrt(A354411(n+1)-A029303(n)))`
-/

namespace A118478.P3395537955336083835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A354411 (n + 1) - A029303 n : ℝ))

end

end A118478.P3395537955336083835

/-! ## A118478.P9211303091061535910

`round(sqrt(A354411(n+1)-A000027(n+1)))`
-/

namespace A118478.P9211303091061535910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A354411 (n + 1) - A000027 (n + 1) : ℝ))

end

end A118478.P9211303091061535910

/-! ## A118478.P1213362548578641585

`A179675(or(A187829(n+1), A222249(n+1)))`
-/

namespace A118478.P1213362548578641585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179675 (Int.lor (A187829 (n + 1)) (A222249 (n + 1))).toNat

end

end A118478.P1213362548578641585

/-!
# A118479: Least n-digit prime which is also a twin prime and Sophie Germain prime.

The programs for A118479, there is no canonical definition to state claims against.
-/

/-! ## A118479.P6693123365801313611

`(A348783(n)+A118580(n))^Δ[A343888(n+1)]`
-/

namespace A118479.P6693123365801313611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343888 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348783 n + A118580 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A118479.P6693123365801313611

/-!
# A118480: (n-th 4k+1 prime minus n-th 4k+3 prime minus two)/4.

The programs for A118480, the canonical program `A118480.P8343590674994203720` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118480 has offset 1).

The definition of A118480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118480.P8343590674994203720

`(A002144(n+1)-A002145(n+1)-2)/4`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118480

/-- `(A002144(n+1)-A002145(n+1)-2)/4` -/
def P8343590674994203720.Spec : Prop :=
  ∀ n, P8343590674994203720.a n = (A118480 (n + 1) : ℚ)

end A118480

/-! ## A118480.P7736224360620681506

`floor(A102261(n+1)/4)`
-/

namespace A118480.P7736224360620681506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102261 (n + 1) : ℚ) / 4⌋

end

end A118480.P7736224360620681506

namespace A118480

/-- `floor(A102261(n+1)/4)` -/
def P7736224360620681506.Spec : Prop :=
  ∀ n, P7736224360620681506.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P9065052716610811339

`A005098(n+1)-A005099(n+1)`
-/

namespace A118480.P9065052716610811339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - A005099 (n + 1)

end

end A118480.P9065052716610811339

namespace A118480

/-- `A005098(n+1)-A005099(n+1)` -/
def P9065052716610811339.Spec : Prop :=
  ∀ n, P9065052716610811339.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P17322078503141141496

`A111215(n+1)-A095278(n+1)`
-/

namespace A118480.P17322078503141141496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - A095278 (n + 1)

end

end A118480.P17322078503141141496

namespace A118480

/-- `A111215(n+1)-A095278(n+1)` -/
def P17322078503141141496.Spec : Prop :=
  ∀ n, P17322078503141141496.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P446409925005734744

`A005098(n+1)-(A095278(n+1)+1)`
-/

namespace A118480.P446409925005734744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - (A095278 (n + 1) + 1)

end

end A118480.P446409925005734744

namespace A118480

/-- `A005098(n+1)-(A095278(n+1)+1)` -/
def P446409925005734744.Spec : Prop :=
  ∀ n, P446409925005734744.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P9682276923749145026

`A111215(n+1)+1-A005099(n+1)`
-/

namespace A118480.P9682276923749145026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + (1 - A005099 (n + 1))

end

end A118480.P9682276923749145026

namespace A118480

/-- `A111215(n+1)+1-A005099(n+1)` -/
def P9682276923749145026.Spec : Prop :=
  ∀ n, P9682276923749145026.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P13979009961516038649

`A005098(n+1)+1-A156287(n+1)`
-/

namespace A118480.P13979009961516038649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + (1 - A156287 (n + 1))

end

end A118480.P13979009961516038649

namespace A118480

/-- `A005098(n+1)+1-A156287(n+1)` -/
def P13979009961516038649.Spec : Prop :=
  ∀ n, P13979009961516038649.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P14561529236680363448

`A111215(n+1)-(A089986(n+1)+1)`
-/

namespace A118480.P14561529236680363448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - (A089986 (n + 1) + 1)

end

end A118480.P14561529236680363448

namespace A118480

/-- `A111215(n+1)-(A089986(n+1)+1)` -/
def P14561529236680363448.Spec : Prop :=
  ∀ n, P14561529236680363448.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P7971867157464760666

`A005098(n+1)-(A089986(n+1)+2)`
-/

namespace A118480.P7971867157464760666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - (A089986 (n + 1) + 2)

end

end A118480.P7971867157464760666

namespace A118480

/-- `A005098(n+1)-(A089986(n+1)+2)` -/
def P7971867157464760666.Spec : Prop :=
  ∀ n, P7971867157464760666.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P2074651661607350517

`A111215(n+1)+2-A156287(n+1)`
-/

namespace A118480.P2074651661607350517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + (2 - A156287 (n + 1))

end

end A118480.P2074651661607350517

namespace A118480

/-- `A111215(n+1)+2-A156287(n+1)` -/
def P2074651661607350517.Spec : Prop :=
  ∀ n, P2074651661607350517.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P10487181703362866302

`2*A005098(n+1)-A022758(n+1)`
-/

namespace A118480.P10487181703362866302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) - A022758 (n + 1)

end

end A118480.P10487181703362866302

namespace A118480

/-- `2*A005098(n+1)-A022758(n+1)` -/
def P10487181703362866302.Spec : Prop :=
  ∀ n, P10487181703362866302.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P2000700506694525915

`A022758(n+1)-2*A005099(n+1)`
-/

namespace A118480.P2000700506694525915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) - 2 * A005099 (n + 1)

end

end A118480.P2000700506694525915

namespace A118480

/-- `A022758(n+1)-2*A005099(n+1)` -/
def P2000700506694525915.Spec : Prop :=
  ∀ n, P2000700506694525915.a n = A118480 (n + 1)

end A118480

/-! ## A118480.P9447644403554179958

`A104636(n+1)-A022758(n+1)`
-/

namespace A118480.P9447644403554179958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 1) - A022758 (n + 1)

end

end A118480.P9447644403554179958

namespace A118480

/-- `A104636(n+1)-A022758(n+1)` -/
def P9447644403554179958.Spec : Prop :=
  ∀ n, P9447644403554179958.a n = A118480 (n + 1)

end A118480

/-!
# A118481: Primes for which the level is equal to 9 in A117563.

The programs for A118481, there is no canonical definition to state claims against.
-/

/-! ## A118481.P14687816468037903107

`A045319(eq[9, A117563(n+1)])`
-/

namespace A118481.P14687816468037903107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118481.P14687816468037903107

/-! ## A118481.P6063731394674932524

`A045344(eq[9, A117563(n+1)])`
-/

namespace A118481.P6063731394674932524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118481.P6063731394674932524

/-! ## A118481.P11159699246141829824

`A065091(eq[9, A117563(n+1)])`
-/

namespace A118481.P11159699246141829824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118481.P11159699246141829824

/-! ## A118481.P13430398083076462888

`A000040(eq[9, A117563(n+1)]+1)`
-/

namespace A118481.P13430398083076462888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A118481.P13430398083076462888

/-! ## A118481.P11449434710552900639

`A008864(eq[9, A117563(n+1)]+1)-1`
-/

namespace A118481.P11449434710552900639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A118481.P11449434710552900639

/-!
# A118482: Partial sums of Chen primes (starting with 1).

The programs for A118482, there is no canonical definition to state claims against.
-/

/-! ## A118482.P9447441798950705808

`A109611(n)+a(n-1)` with `a(0)=1`
-/

namespace A118482.P9447441798950705808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109611 n + a (n - 1)

end

end A118482.P9447441798950705808

/-! ## A118482.P9174589214797373438

`∑[A109611(abs(1-n)+1)]-2`
-/

namespace A118482.P9174589214797373438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A118482.P9174589214797373438

/-! ## A118482.P11572893594226944214

`∑[A109611(n+1)]+1-A109611(n+1)`
-/

namespace A118482.P11572893594226944214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A109611 (n + 1)

end

end A118482.P11572893594226944214

/-! ## A118482.P4981333417514288540

`∑[eq[A281119(n+2)², A074206(n)]]`
-/

namespace A118482.P4981333417514288540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118482.P4981333417514288540

/-! ## A118482.P4852272077623910615

`∑[eq[A292505(n+2)², A074206(n)]]`
-/

namespace A118482.P4852272077623910615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118482.P4852272077623910615

/-! ## A118482.P7282155680661129453

`∑[eq[A107463(n)², A292505(n+2)]]`
-/

namespace A118482.P7282155680661129453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118482.P7282155680661129453

/-! ## A118482.P16329783504811047267

`∑[A109613(A109611(n+1))]-A109611(n+1)`
-/

namespace A118482.P16329783504811047267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A109611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109611 (n + 1)

end

end A118482.P16329783504811047267

/-! ## A118482.P6572110868811965025

`A118775(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A118482.P6572110868811965025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A118775 (n - 1) + a (n - 2)

end

end A118482.P6572110868811965025

/-! ## A118482.P8391782599635042935

`∑[A006530(a(n-1)*A109611(n))]` with `a(0)=1`
-/

namespace A118482.P8391782599635042935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A006530 (f1 (n - 1) * A109611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118482.P8391782599635042935

/-!
# A118483: Partial sums of primes that are not Chen primes (starting with 1).

The programs for A118483, the canonical program `A118483.P12141014104972374228` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118483 has offset 0).

The definition of A118483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118483.P12141014104972374228

`A115606(n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A118483

/-- `A115606(n)+1` -/
def P12141014104972374228.Spec : Prop :=
  ∀ n, P12141014104972374228.a n = A118483 n

theorem P12141014104972374228.correct : P12141014104972374228.Spec := by
  intro n
  simp only [A118483]

end A118483

/-! ## A118483.P15445597398027831274

`A102540(n)+a(n-1)` with `a(0)=1`
-/

namespace A118483.P15445597398027831274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102540 n + a (n - 1)

end

end A118483.P15445597398027831274

namespace A118483

/-- `A102540(n)+a(n-1)` -/
def P15445597398027831274.Spec : Prop :=
  ∀ n, P15445597398027831274.a n = A118483 n

end A118483

/-! ## A118483.P12298705009229070255

`∑[A102540(A028310(n))]-42`
-/

namespace A118483.P12298705009229070255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 42

end

end A118483.P12298705009229070255

namespace A118483

/-- `∑[A102540(A028310(n))]-42` -/
def P12298705009229070255.Spec : Prop :=
  ∀ n, P12298705009229070255.a n = A118483 n

end A118483

/-! ## A118483.P13753033260187902816

`abs(xor(A033999(n), A115606(n)))`
-/

namespace A118483.P13753033260187902816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A115606 n)|

end

end A118483.P13753033260187902816

namespace A118483

/-- `abs(xor(A033999(n), A115606(n)))` -/
def P13753033260187902816.Spec : Prop :=
  ∀ n, P13753033260187902816.a n = A118483 n

end A118483

/-! ## A118483.P7468877395205691743

`A000040(A118499(n))+a(n-1)` with `a(0)=1`
-/

namespace A118483.P7468877395205691743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A118499 n).toNat + a (n - 1)

end

end A118483.P7468877395205691743

namespace A118483

/-- `A000040(A118499(n))+a(n-1)` -/
def P7468877395205691743.Spec : Prop :=
  ∀ n, P7468877395205691743.a n = A118483 n

end A118483

/-!
# A118484: Primes p such that the nearest integer to p * gamma is prime, where gamma is Euler's constant.

The programs for A118484, there is no canonical definition to state claims against.
-/

/-! ## A118484.P1059020194099791734

`p?[∑[A283682(A187772(n+2))]]`
-/

namespace A118484.P1059020194099791734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A187772 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118484.P1059020194099791734

/-!
# A118486: a(n) is the smallest prime occurring in the prime factorization of n! to an odd power.

The programs for A118486, the canonical program `A118486.P5144178606512269279` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118486 has offset 2).

The definition of A118486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118486.P5144178606512269279

`A094290(gcd(A007283(n), A336510(n+2)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A118486

/-- `A094290(gcd(A007283(n), A336510(n+2)))` -/
def P5144178606512269279.Spec : Prop :=
  ∀ n, P5144178606512269279.a n = A118486 (n + 2)

theorem P5144178606512269279.correct : P5144178606512269279.Spec := by
  intro n
  simp only [A118486, Nat.add_sub_cancel]

end A118486

/-! ## A118486.P3413292413740649418

`A020639(gcd(A055204(n+2), A055772(n+6)))`
-/

namespace A118486.P3413292413740649418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A055204 (n + 2)) (A055772 (n + 6)))

end

end A118486.P3413292413740649418

namespace A118486

/-- `A020639(gcd(A055204(n+2), A055772(n+6)))` -/
def P3413292413740649418.Spec : Prop :=
  ∀ n, P3413292413740649418.a n = A118486 (n + 2)

end A118486

/-! ## A118486.P697824786285932750

`A094290(A336510(n+2))`
-/

namespace A118486.P697824786285932750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (A336510 (n + 2)).toNat

end

end A118486.P697824786285932750

namespace A118486

/-- `A094290(A336510(n+2))` -/
def P697824786285932750.Spec : Prop :=
  ∀ n, P697824786285932750.a n = A118486 (n + 2)

end A118486

/-!
# A118487: Least number of squares that add up to Lucas numbers L(n).

The programs for A118487, there is no canonical definition to state claims against.
-/

/-! ## A118487.P4849218117727946523

`A002828(A000032(n))`
-/

namespace A118487.P4849218117727946523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000032 n).toNat

end

end A118487.P4849218117727946523

/-! ## A118487.P10651940586759802029

`A002828(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-2, a(1)=2`
-/

namespace A118487.P10651940586759802029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118487.P10651940586759802029

/-! ## A118487.P5310864767158395116

`A002828(sqrt(A001254(n)))`
-/

namespace A118487.P5310864767158395116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway (Real.sqrt (A001254 n : ℝ))).toNat

end

end A118487.P5310864767158395116

/-! ## A118487.P16750407381601085618

`A002828(Δ[A001610(n)])`
-/

namespace A118487.P16750407381601085618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (f1 (n + 1) - f1 n).toNat

end

end A118487.P16750407381601085618

/-! ## A118487.P17016300391390338707

`A002828(A000211(n)-2)`
-/

namespace A118487.P17016300391390338707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000211 n - 2).toNat

end

end A118487.P17016300391390338707

/-!
# A118488: Squares for which the sum of the digits is a triangular number.

The programs for A118488, the canonical program `A118488.P13866739444762926570` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118488 has offset 1).

The definition of A118488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118488.P13866739444762926570

`eq[1, A059268(A004159(n))]²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A118488

/-- `eq[1, A059268(A004159(n))]²` -/
def P13866739444762926570.Spec : Prop :=
  ∀ n, (P13866739444762926570.a n : ℤ) = A118488 (n + 1)

theorem P13866739444762926570.correct : P13866739444762926570.Spec := by
  intro n
  simp only [A118488, Nat.add_sub_cancel]

end A118488

/-! ## A118488.P10474925184023924450

`record[A000290(n)*A010054(A004159(n))]`
-/

namespace A118488.P10474925184023924450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A010054 (A004159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118488.P10474925184023924450

namespace A118488

/-- `record[A000290(n)*A010054(A004159(n))]` -/
def P10474925184023924450.Spec : Prop :=
  ∀ n, P10474925184023924450.a n = A118488 (n + 1)

end A118488

/-! ## A118488.P4286914296126347495

`eq[1, A059268(A004159(n))]^A074828(2*(n+1))`
-/

namespace A118488.P4286914296126347495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A004159 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A074828 (2 * (n + 1)) : ℤ)

end

end A118488.P4286914296126347495

namespace A118488

/-- `eq[1, A059268(A004159(n))]^A074828(2*(n+1))` -/
def P4286914296126347495.Spec : Prop :=
  ∀ n, P4286914296126347495.a n = (A118488 (n + 1) : ℚ)

end A118488

/-! ## A118488.P6292680185956064609

`eq[1, A266213(∑{digits}[n², #])]²`
-/

namespace A118488.P6292680185956064609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A118488.P6292680185956064609

namespace A118488

/-- `eq[1, A266213(∑{digits}[n², #])]²` -/
def P6292680185956064609.Spec : Prop :=
  ∀ n, (P6292680185956064609.a n : ℤ) = A118488 (n + 1)

end A118488

/-! ## A118488.P13855464627006029979

`eq[A000007(n), A119328(A004159(n))]²`
-/

namespace A118488.P13855464627006029979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A118488.P13855464627006029979

namespace A118488

/-- `eq[A000007(n), A119328(A004159(n))]²` -/
def P13855464627006029979.Spec : Prop :=
  ∀ n, (P13855464627006029979.a n : ℤ) = A118488 (n + 1)

end A118488

/-! ## A118488.P5259800428217486839

`eq[1, A059268(A004159(n))]^(2%A277959(n+1))`
-/

namespace A118488.P5259800428217486839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A004159 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (Int.tmod 2 (A277959 (n + 1)) : ℤ)

end

end A118488.P5259800428217486839

namespace A118488

/-- `eq[1, A059268(A004159(n))]^(2%A277959(n+1))` -/
def P5259800428217486839.Spec : Prop :=
  ∀ n, P5259800428217486839.a n = (A118488 (n + 1) : ℚ)

end A118488

/-!
# A118489: Squares for which the product of the digits is a triangular number.

The programs for A118489, the canonical program `A118489.P12182930602859449192` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118489 has offset 1).

The definition of A118489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118489.P12182930602859449192

`eq[1, A074909(∏{digits}[n², #])]²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118489

/-- `eq[1, A074909(∏{digits}[n², #])]²` -/
def P12182930602859449192.Spec : Prop :=
  ∀ n, (P12182930602859449192.a n : ℤ) = A118489 (n + 1)

theorem P12182930602859449192.correct : P12182930602859449192.Spec := by
  intro n
  simp only [A118489, Nat.add_sub_cancel]

end A118489

/-! ## A118489.P17870874796797051117

`eq[0, A002262(A053667(n))]²`
-/

namespace A118489.P17870874796797051117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A053667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A118489.P17870874796797051117

namespace A118489

/-- `eq[0, A002262(A053667(n))]²` -/
def P17870874796797051117.Spec : Prop :=
  ∀ n, (P17870874796797051117.a n : ℤ) = A118489 (n + 1)

end A118489

/-! ## A118489.P3687785631498796862

`eq[1, A002260(A053667(n)+1)]²`
-/

namespace A118489.P3687785631498796862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A053667 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A118489.P3687785631498796862

namespace A118489

/-- `eq[1, A002260(A053667(n)+1)]²` -/
def P3687785631498796862.Spec : Prop :=
  ∀ n, (P3687785631498796862.a n : ℤ) = A118489 (n + 1)

end A118489

/-! ## A118489.P12977170331149085773

`record[A001489(n)^A035214(A053667(n))]`
-/

namespace A118489.P12977170331149085773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) ^ (A035214 (A053667 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118489.P12977170331149085773

namespace A118489

/-- `record[A001489(n)^A035214(A053667(n))]` -/
def P12977170331149085773.Spec : Prop :=
  ∀ n, P12977170331149085773.a n = (A118489 (n + 1) : ℚ)

end A118489

/-! ## A118489.P3057459403532610060

`record[A000290(n)/A297192(A053667(n))]`
-/

namespace A118489.P3057459403532610060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 n : ℚ) / (A297192 (A053667 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118489.P3057459403532610060

namespace A118489

/-- `record[A000290(n)/A297192(A053667(n))]` -/
def P3057459403532610060.Spec : Prop :=
  ∀ n, P3057459403532610060.a n = (A118489 (n + 1) : ℚ)

end A118489

/-!
# A118490: Squares for which both the sum of the digits and the product of the digits is a triangular number.

The programs for A118490, there is no canonical definition to state claims against.
-/

/-! ## A118490.P7229370993951322982

`∩[A118488(n+1), A118489(n+1)]`
-/

namespace A118490.P7229370993951322982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118490.P7229370993951322982

/-!
# A118491: 

The programs for A118491, there is no canonical definition to state claims against.
-/

/-! ## A118491.P4474445273666552370

`a(n-1)*A109611(n)` with `a(0)=1`
-/

namespace A118491.P4474445273666552370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A109611 n

end

end A118491.P4474445273666552370

/-! ## A118491.P14174117073692343897

`∏[A109611(n+1)]/A109611(n+1)`
-/

namespace A118491.P14174117073692343897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A109611 (n + 1) : ℚ)

end

end A118491.P14174117073692343897

/-!
# A118492: Number of Gaussian primes with floor(abs(p)) = n.

The programs for A118492, there is no canonical definition to state claims against.
-/

/-! ## A118492.P7211652760670224500

`A079261(n+1)+Δ[A228234(n+1)]`
-/

namespace A118492.P7211652760670224500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (n + 1) + (f1 (n + 1) - f1 n)

end

end A118492.P7211652760670224500

/-! ## A118492.P2267173101457958941

`Δ[A228235(n+1)-A079261(n+1)]`
-/

namespace A118492.P2267173101457958941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228235 (n + 1) - A079261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118492.P2267173101457958941

/-! ## A118492.P10159930543190594035

`Δ[A228235(n+1)-A055029((n+1)²)]`
-/

namespace A118492.P10159930543190594035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228235 (n + 1) - A055029 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118492.P10159930543190594035

/-! ## A118492.P12951090018623302548

`Δ[ceil(A228233(n+1)/2)-A079261(n+1)]`
-/

namespace A118492.P12951090018623302548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228233 (n + 1) : ℚ) / 2⌉ - A079261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118492.P12951090018623302548

/-! ## A118492.P7412786646069945002

`A055029(A086955(n))+Δ[A228234(n+1)]`
-/

namespace A118492.P7412786646069945002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A086955 n).toNat + (f1 (n + 1) - f1 n)

end

end A118492.P7412786646069945002

/-! ## A118492.P4472654026280003043

`Δ[A228234(n+1)+A066490(A136548(n+1))]`
-/

namespace A118492.P4472654026280003043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1) + A066490 (A136548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118492.P4472654026280003043

/-! ## A118492.P3080246394200543970

`A077766(n+1)+A079261(n+1)+A000007(n)`
-/

namespace A118492.P3080246394200543970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (n + 1) + (A079261 (n + 1) + A000007 n)

end

end A118492.P3080246394200543970

/-!
# A118494: Palindromic primes that are not Chen primes.

The programs for A118494, there is no canonical definition to state claims against.
-/

/-! ## A118494.P3586221097996055445

`∩[A002113(n+1), A102540(n+1)]`
-/

namespace A118494.P3586221097996055445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P3586221097996055445

/-! ## A118494.P12660707811503772319

`∩[A002385(n+1), A102540(n+1)]`
-/

namespace A118494.P12660707811503772319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P12660707811503772319

/-! ## A118494.P7419357880195130989

`∩[A029950(n+1), A102540(n+1)]`
-/

namespace A118494.P7419357880195130989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P7419357880195130989

/-! ## A118494.P17885844545637898965

`∩[A033620(n+1), A102540(n+1)]`
-/

namespace A118494.P17885844545637898965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P17885844545637898965

/-! ## A118494.P8615950212396072588

`∩[A056525(n+1), A102540(n+1)]`
-/

namespace A118494.P8615950212396072588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P8615950212396072588

/-! ## A118494.P16100361119599722092

`∩[A061917(n+1), A102540(n+1)]`
-/

namespace A118494.P16100361119599722092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P16100361119599722092

/-! ## A118494.P2634451649499458083

`∩[A062687(n+1), A102540(n+1)]`
-/

namespace A118494.P2634451649499458083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P2634451649499458083

/-! ## A118494.P3067999989648071688

`∩[A071251(n+1), A102540(n+1)]`
-/

namespace A118494.P3067999989648071688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P3067999989648071688

/-! ## A118494.P16557460795381341709

`∩[A072299(n+1), A102540(n+1)]`
-/

namespace A118494.P16557460795381341709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P16557460795381341709

/-! ## A118494.P7673425351465580823

`∩[A073328(n+1), A102540(n+1)]`
-/

namespace A118494.P7673425351465580823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118494.P7673425351465580823

/-!
# A118495: Chen primes written backwards.

The programs for A118495, there is no canonical definition to state claims against.
-/

/-! ## A118495.P13110943324023683653

`A004086(Δ[A118482(n)])`
-/

namespace A118495.P13110943324023683653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A118495.P13110943324023683653

/-! ## A118495.P2437289054612175458

`A004086(A109611(n+1))`
-/

namespace A118495.P2437289054612175458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A109611 (n + 1)).toNat

end

end A118495.P2437289054612175458

/-! ## A118495.P10471306099778412451

`A004086(A139690(n+1)-2)`
-/

namespace A118495.P10471306099778412451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A139690 (n + 1) - 2).toNat

end

end A118495.P10471306099778412451

/-! ## A118495.P1177461720205727386

`A071786(A139690(n+1)-2)`
-/

namespace A118495.P1177461720205727386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A139690 (n + 1) - 2).toNat

end

end A118495.P1177461720205727386

/-! ## A118495.P743804306217998584

`A071786(A109611(2*n+1-n))`
-/

namespace A118495.P743804306217998584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A109611 (2 * n + 1 - n)).toNat

end

end A118495.P743804306217998584

/-!
# A118496: Reverse digits of largest Chen primes, append to sequence if result is larger Chen prime then previous one with reverse digits.

The programs for A118496, there is no canonical definition to state claims against.
-/

/-! ## A118496.P9885115716037489645

`∩[A098922(n+1), A118725(n+1)]`
-/

namespace A118496.P9885115716037489645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118496.P9885115716037489645

/-! ## A118496.P2834582484533315227

`∩[A007459(n+1), A098922(n+1)]`
-/

namespace A118496.P2834582484533315227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118496.P2834582484533315227

/-! ## A118496.P819480375377542147

`∩[A034709(n+1), A090933(n+1)]`
-/

namespace A118496.P819480375377542147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118496.P819480375377542147

/-! ## A118496.P9909925349318498177

`∩[A032980(n+1), A098922(n+1)]`
-/

namespace A118496.P9909925349318498177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118496.P9909925349318498177

/-!
# A118497: Primes that are not Chen primes written backwards.

The programs for A118497, there is no canonical definition to state claims against.
-/

/-! ## A118497.P11608465936632698108

`A004086(Δ[A115606(n)])`
-/

namespace A118497.P11608465936632698108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A118497.P11608465936632698108

/-! ## A118497.P506526228857819031

`A004086(A102540(n+1))`
-/

namespace A118497.P506526228857819031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102540 (n + 1)).toNat

end

end A118497.P506526228857819031

/-! ## A118497.P904209135752292202

`A004087(A118499(n+1))`
-/

namespace A118497.P904209135752292202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (A118499 (n + 1)).toNat

end

end A118497.P904209135752292202

/-! ## A118497.P12607673053202048334

`A071786(p?[A102540(n+1)])`
-/

namespace A118497.P12607673053202048334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118497.P12607673053202048334

/-! ## A118497.P16611402748902075962

`A004093(5*A102540(n+1))`
-/

namespace A118497.P16611402748902075962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A102540 (n + 1)).toNat

end

end A118497.P16611402748902075962

/-! ## A118497.P3199504590905096694

`A071786(or(1, A102540(n+1)))`
-/

namespace A118497.P3199504590905096694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (Int.lor 1 (A102540 (n + 1))).toNat

end

end A118497.P3199504590905096694

/-! ## A118497.P8418342016980909887

`A004086(p?[A033942(n+1)-2])`
-/

namespace A118497.P8418342016980909887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118497.P8418342016980909887

/-! ## A118497.P2285063031973992700

`A004086(p?[lt[2, A001222(n+2)]])`
-/

namespace A118497.P2285063031973992700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A118497.P2285063031973992700

/-! ## A118497.P13775820894430428826

`A071786(A102540(2*n+1-n))`
-/

namespace A118497.P13775820894430428826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A102540 (2 * n + 1 - n)).toNat

end

end A118497.P13775820894430428826

/-!
# A118499: Numbers k such that the k-th prime number is not a Chen prime.

The programs for A118499, the canonical program `A118499.P15079059931476377411` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118499 has offset 1).

The definition of A118499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118499.P15079059931476377411

`eq[0, A106667(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118499

/-- `eq[0, A106667(n+1)]+1` -/
def P15079059931476377411.Spec : Prop :=
  ∀ n, (P15079059931476377411.a n : ℤ) = A118499 (n + 1)

theorem P15079059931476377411.correct : P15079059931476377411.Spec := by
  intro n
  simp only [A118499, Nat.add_sub_cancel]

end A118499

/-! ## A118499.P1565390925162135858

`A000720(A102540(n+1))`
-/

namespace A118499.P1565390925162135858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A102540 (n + 1)).toNat

end

end A118499.P1565390925162135858

namespace A118499

/-- `A000720(A102540(n+1))` -/
def P1565390925162135858.Spec : Prop :=
  ∀ n, P1565390925162135858.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P6708089535101022692

`A061395(p?[A102540(n+1)])`
-/

namespace A118499.P6708089535101022692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P6708089535101022692

namespace A118499

/-- `A061395(p?[A102540(n+1)])` -/
def P6708089535101022692.Spec : Prop :=
  ∀ n, P6708089535101022692.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P13417467636239956563

`lt[2, A001222(A028815(n)+1)]`
-/

namespace A118499.P13417467636239956563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028815 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118499.P13417467636239956563

namespace A118499

/-- `lt[2, A001222(A028815(n)+1)]` -/
def P13417467636239956563.Spec : Prop :=
  ∀ n, (P13417467636239956563.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P14403865302100952364

`∑{d}[A102540(n+1), A061395(#)]`
-/

namespace A118499.P14403865302100952364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A118499.P14403865302100952364

namespace A118499

/-- `∑{d}[A102540(n+1), A061395(#)]` -/
def P14403865302100952364.Spec : Prop :=
  ∀ n, P14403865302100952364.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P9261129732227975884

`lt[2, A001222(A008578(n+1)+2)]`
-/

namespace A118499.P9261129732227975884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118499.P9261129732227975884

namespace A118499

/-- `lt[2, A001222(A008578(n+1)+2)]` -/
def P9261129732227975884.Spec : Prop :=
  ∀ n, (P9261129732227975884.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P5382785792053293684

`lt[2, A001222(A175787(n+1)+2)]`
-/

namespace A118499.P5382785792053293684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175787 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118499.P5382785792053293684

namespace A118499

/-- `lt[2, A001222(A175787(n+1)+2)]` -/
def P5382785792053293684.Spec : Prop :=
  ∀ n, (P5382785792053293684.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P8705051102213207878

`lt[2, A001222(A008864(n+1)+1)]+1`
-/

namespace A118499.P8705051102213207878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118499.P8705051102213207878

namespace A118499

/-- `lt[2, A001222(A008864(n+1)+1)]+1` -/
def P8705051102213207878.Spec : Prop :=
  ∀ n, (P8705051102213207878.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P16925397740972044003

`lt[2, A001222(A000040(n+1)+2)]+1`
-/

namespace A118499.P16925397740972044003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118499.P16925397740972044003

namespace A118499

/-- `lt[2, A001222(A000040(n+1)+2)]+1` -/
def P16925397740972044003.Spec : Prop :=
  ∀ n, (P16925397740972044003.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P6322494716277509436

`A061395(2*A102540(n+1))`
-/

namespace A118499.P6322494716277509436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A102540 (n + 1)).toNat

end

end A118499.P6322494716277509436

namespace A118499

/-- `A061395(2*A102540(n+1))` -/
def P6322494716277509436.Spec : Prop :=
  ∀ n, P6322494716277509436.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P1352831111763234545

`lt[2, A001222(p?[A167171(n+1)]+2)]+1`
-/

namespace A118499.P1352831111763234545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118499.P1352831111763234545

namespace A118499

/-- `lt[2, A001222(p?[A167171(n+1)]+2)]+1` -/
def P1352831111763234545.Spec : Prop :=
  ∀ n, (P1352831111763234545.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P12241439529526275340

`A000720(p?[A033942(n+1)-2])`
-/

namespace A118499.P12241439529526275340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P12241439529526275340

namespace A118499

/-- `A000720(p?[A033942(n+1)-2])` -/
def P12241439529526275340.Spec : Prop :=
  ∀ n, P12241439529526275340.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P12409417174542991693

`A061395(p?[A033942(n+1)-2])`
-/

namespace A118499.P12409417174542991693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P12409417174542991693

namespace A118499

/-- `A061395(p?[A033942(n+1)-2])` -/
def P12409417174542991693.Spec : Prop :=
  ∀ n, P12409417174542991693.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P7681950066784524490

`A003963(p?[A102540(n+1)])`
-/

namespace A118499.P7681950066784524490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P7681950066784524490

namespace A118499

/-- `A003963(p?[A102540(n+1)])` -/
def P7681950066784524490.Spec : Prop :=
  ∀ n, P7681950066784524490.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P747845886739979940

`A055396(p?[A102540(n+1)])`
-/

namespace A118499.P747845886739979940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P747845886739979940

namespace A118499

/-- `A055396(p?[A102540(n+1)])` -/
def P747845886739979940.Spec : Prop :=
  ∀ n, P747845886739979940.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P15115542249402276715

`A075167(p?[A102540(n+1)])`
-/

namespace A118499.P15115542249402276715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P15115542249402276715

namespace A118499

/-- `A075167(p?[A102540(n+1)])` -/
def P15115542249402276715.Spec : Prop :=
  ∀ n, P15115542249402276715.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P14889591854886850154

`A055396(or(1, A102540(n+1)))`
-/

namespace A118499.P14889591854886850154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A102540 (n + 1))).toNat

end

end A118499.P14889591854886850154

namespace A118499

/-- `A055396(or(1, A102540(n+1)))` -/
def P14889591854886850154.Spec : Prop :=
  ∀ n, P14889591854886850154.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P2413644295554440782

`A056239(p?[A033942(n+1)-2])`
-/

namespace A118499.P2413644295554440782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118499.P2413644295554440782

namespace A118499

/-- `A056239(p?[A033942(n+1)-2])` -/
def P2413644295554440782.Spec : Prop :=
  ∀ n, P2413644295554440782.a n = A118499 (n + 1)

end A118499

/-! ## A118499.P6264519284095858196

`lt[2, A001222(record[A014963(n+1)]+2)]`
-/

namespace A118499.P6264519284095858196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118499.P6264519284095858196

namespace A118499

/-- `lt[2, A001222(record[A014963(n+1)]+2)]` -/
def P6264519284095858196.Spec : Prop :=
  ∀ n, (P6264519284095858196.a n : ℤ) = A118499 (n + 1)

end A118499

/-! ## A118499.P17728883840117436208

`A055396(2*A102540(n+1)-A102540(n+1))`
-/

namespace A118499.P17728883840117436208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A102540 (n + 1) - A102540 (n + 1)).toNat

end

end A118499.P17728883840117436208

namespace A118499

/-- `A055396(2*A102540(n+1)-A102540(n+1))` -/
def P17728883840117436208.Spec : Prop :=
  ∀ n, P17728883840117436208.a n = A118499 (n + 1)

end A118499

