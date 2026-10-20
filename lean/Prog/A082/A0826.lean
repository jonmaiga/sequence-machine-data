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
import Seq.B000.C039
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
import Seq.B008.C000
import Seq.B009.C000
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
# A082601: Tribonacci array: to get the next row, right-adjust the previous 3 rows and add them, then append a final 0.

The programs for A082601, there is no canonical definition to state claims against.
-/

/-! ## A082601.P9863772295187700783

`A071675(A061579(n))`
-/

namespace A082601.P9863772295187700783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A061579 n).toNat

end

end A082601.P9863772295187700783

/-! ## A082601.P7956808564243724156

`A071675(A114327(n)+n)`
-/

namespace A082601.P7956808564243724156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A114327 n + (n : ℤ)).toNat

end

end A082601.P7956808564243724156

/-! ## A082601.P5165261501451722234

`A071675(A038722(n+1)-1)`
-/

namespace A082601.P5165261501451722234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A038722 (n + 1) - 1).toNat

end

end A082601.P5165261501451722234

/-! ## A082601.P5939666023944711316

`A071675(A057944(n)+A025581(n))`
-/

namespace A082601.P5939666023944711316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A057944 n + A025581 n).toNat

end

end A082601.P5939666023944711316

/-! ## A082601.P18088095877974503430

`A071675(A260196(n)+A038722(n+1))`
-/

namespace A082601.P18088095877974503430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A260196 n + A038722 (n + 1)).toNat

end

end A082601.P18088095877974503430

/-!
# A082602: Number of primes between successive Fibonacci numbers (including possibly the Fibonacci numbers themselves).

The programs for A082602, there is no canonical definition to state claims against.
-/

/-! ## A082602.P13200385738628048071

`A076777(n+1)+A000007(A079677(n+1))`
-/

namespace A082602.P13200385738628048071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 (n + 1) + A000007 (A079677 (n + 1)).toNat

end

end A082602.P13200385738628048071

/-! ## A082602.P15943297590375414201

`A054782(n+2)-A182564(n+1)`
-/

namespace A082602.P15943297590375414201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (n + 2) - A182564 (n + 1)

end

end A082602.P15943297590375414201

/-! ## A082602.P1119244199266612643

`∑[A076777(n+1)]-A182564(n+1)`
-/

namespace A082602.P1119244199266612643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182564 (n + 1)

end

end A082602.P1119244199266612643

/-! ## A082602.P11982013593958236739

`A054782(n+2)-A230980(A000071(n+1))`
-/

namespace A082602.P11982013593958236739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (n + 2) - A230980 (A000071 (n + 1)).toNat

end

end A082602.P11982013593958236739

/-!
# A082603: a(n) is the first prime greater than a(n-1) such that a(n)*a(n-1)+2 is a prime, with a(1)=3.

The programs for A082603, there is no canonical definition to state claims against.
-/

/-! ## A082603.P9989275979944365664

`A056813(2*A137480(n))`
-/

namespace A082603.P9989275979944365664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (2 * A137480 n).toNat

end

end A082603.P9989275979944365664

/-! ## A082603.P1817827238284861860

`A056813(18*A097163(n))`
-/

namespace A082603.P1817827238284861860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (18 * A097163 n).toNat

end

end A082603.P1817827238284861860

/-! ## A082603.P14719110252188950031

`p?[∑[A061395(A103297(n))]]`
-/

namespace A082603.P14719110252188950031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A103297 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082603.P14719110252188950031

/-! ## A082603.P2165936212259472696

`record[A297709(∑[A117488(n+1)])]`
-/

namespace A082603.P2165936212259472696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297709 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082603.P2165936212259472696

/-! ## A082603.P2114483266382680565

`p?[A259361(∑[A124855(n+2)])]`
-/

namespace A082603.P2114483266382680565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082603.P2114483266382680565

/-!
# A082604: a(n) is the total number of positive integral solutions (x,y), order being taken into account, to the equation 1/x + 1/y + 1/z = 1/n.

The programs for A082604, there is no canonical definition to state claims against.
-/

/-! ## A082604.P16449189695376207124

`A292581(∏{e}[Δ[11^n], #+1])`
-/

namespace A082604.P16449189695376207124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A082604.P16449189695376207124

/-!
# A082605: Using Euler's 6-term sequence A014556, we define the partial recurrence relation a(0)=2, a(1)=3, a(2)=5; a(k) = 2*a(k-1) - 1 - (-2)^(k-2), 3 <= k <= 5.

The programs for A082605, the canonical program `A082605.P2238669134636772053` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082605 has offset 0).

The definition of A082605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082605.P2238669134636772053

`∑[4*a(n-2)]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=6, a(4)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082605

/-- `∑[4*a(n-2)]` -/
def P2238669134636772053.Spec : Prop :=
  ∀ n, (P2238669134636772053.a n : ℤ) = A082605 n

theorem P2238669134636772053.correct : P2238669134636772053.Spec := by
  intro n
  simp only [A082605]

end A082605

/-! ## A082605.P425464279165627745

`4*a(n-2)-(a(n-2)%3+1)` with `a(0)=2, a(1)=3`
-/

namespace A082605.P425464279165627745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * a (n - 2) - (Int.tmod (a (n - 2)) 3 + 1)

end

end A082605.P425464279165627745

namespace A082605

/-- `4*a(n-2)-(a(n-2)%3+1)` -/
def P425464279165627745.Spec : Prop :=
  ∀ n, P425464279165627745.a n = A082605 n

end A082605

/-! ## A082605.P472279738313454465

`gcd(3, a(n-2))+4*(a(n-2)-1)` with `a(0)=2, a(1)=3`
-/

namespace A082605.P472279738313454465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (Int.gcd 3 (a (n - 2)) : ℤ) + 4 * (a (n - 2) - 1)

end

end A082605.P472279738313454465

namespace A082605

/-- `gcd(3, a(n-2))+4*(a(n-2)-1)` -/
def P472279738313454465.Spec : Prop :=
  ∀ n, P472279738313454465.a n = A082605 n

end A082605

/-! ## A082605.P2595178813945410926

`or(A000079(n), A154383(n))+1`
-/

namespace A082605.P2595178813945410926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A154383 n) + 1

end

end A082605.P2595178813945410926

namespace A082605

/-- `or(A000079(n), A154383(n))+1` -/
def P2595178813945410926.Spec : Prop :=
  ∀ n, P2595178813945410926.a n = A082605 n

end A082605

/-! ## A082605.P14440117308002960123

`ceil((A056486(n+1)+1)/4)`
-/

namespace A082605.P14440117308002960123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056486 (n + 1) + 1 : ℚ) / 4⌉

end

end A082605.P14440117308002960123

namespace A082605

/-- `ceil((A056486(n+1)+1)/4)` -/
def P14440117308002960123.Spec : Prop :=
  ∀ n, P14440117308002960123.a n = A082605 n

end A082605

/-!
# A082607: a(0)=1; for n > 0, a(n) = least k not included earlier such that k*a(n-1) - 1 is a square.

The programs for A082607, there is no canonical definition to state claims against.
-/

/-! ## A082607.P14600376418456850626

`(n²+1)%A167202(n+1)`
-/

namespace A082607.P14600376418456850626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + 1 : ℤ) (A167202 (n + 1))

end

end A082607.P14600376418456850626

/-! ## A082607.P5707066536291255584

`A002522(n)%-A167202(n+1)`
-/

namespace A082607.P5707066536291255584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 n) (-A167202 (n + 1))

end

end A082607.P5707066536291255584

/-! ## A082607.P3282443900883392145

`A000290(n)%A167202(n+1)+1`
-/

namespace A082607.P3282443900883392145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A167202 (n + 1)) + 1

end

end A082607.P3282443900883392145

/-! ## A082607.P12656815699284454180

`A002522(n)%A010964(A092392(n))`
-/

namespace A082607.P12656815699284454180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 n) (A010964 (A092392 n).toNat)

end

end A082607.P12656815699284454180

/-! ## A082607.P13181716263693450444

`A002522(A319724(n))%A384010(3*n+2)`
-/

namespace A082607.P13181716263693450444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (A319724 n).toNat) (A384010 (3 * n + 2))

end

end A082607.P13181716263693450444

/-!
# A082608: Squares pertaining to A082607. a(n) = A082607(n)*A082607(n+1)- 1.

The programs for A082608, there is no canonical definition to state claims against.
-/

/-! ## A082608.P4924954488381926821

`A082607(n)*A082607(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082608.P4924954488381926821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082607 n * A082607 (n + 1) - 1

end

end A082608.P4924954488381926821

/-! ## A082608.P8164729081954640718

`A260196(n+2)+A082607(n+1)*A082607(n)`
-/

namespace A082608.P8164729081954640718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A082607 (n + 1) * A082607 n

end

end A082608.P8164729081954640718

/-! ## A082608.P17716028958741117025

`A008683(A007918(n))+A082607(n+1)*A082607(n)`
-/

namespace A082608.P17716028958741117025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + A082607 (n + 1) * A082607 n

end

end A082608.P17716028958741117025

/-! ## A082608.P1095532162117660665

`A008683(A061067(n))+A082607(n+1)*A082607(n)`
-/

namespace A082608.P1095532162117660665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A061067 n).toNat + A082607 (n + 1) * A082607 n

end

end A082608.P1095532162117660665

/-! ## A082608.P9106990970375745832

`A008683(A002146(n))+A082607(n+1)*A082607(n)`
-/

namespace A082608.P9106990970375745832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat + A082607 (n + 1) * A082607 n

end

end A082608.P9106990970375745832

/-!
# A082610: Cubes pertaining to A082609. a(n) = A082609(n)*A082609(n+1)- 1.

The programs for A082610, there is no canonical definition to state claims against.
-/

/-! ## A082610.P5031496555748899718

`A082609(n)*A082609(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082610.P5031496555748899718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082609 n * A082609 (n + 1) - 1

end

end A082610.P5031496555748899718

/-!
# A082611: a(n) = Sum_{k=1..n} T(n,k) / (k * (n-k+1)) where T is given in A080046.

The programs for A082611, there is no canonical definition to state claims against.
-/

/-! ## A082611.P7041923816475896640

`A197680(A005118(n)+n)`
-/

namespace A082611.P7041923816475896640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (A005118 n + (n : ℤ)).toNat

end

end A082611.P7041923816475896640

/-! ## A082611.P18401841110917551965

`∑[A051627(∏[A112505(9*n+1)])]`
-/

namespace A082611.P18401841110917551965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112505 (9 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051627 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082611.P18401841110917551965

/-!
# A082613: Smallest palindrome divisible by an n-th power.

The programs for A082613, there is no canonical definition to state claims against.
-/

/-! ## A082613.P2573697750528320455

`2^n*A082614(n)`
-/

namespace A082613.P2573697750528320455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A082614 n

end

end A082613.P2573697750528320455

/-! ## A082613.P12196251661955266030

`A082614(n)*A130321(∑[n])`
-/

namespace A082613.P12196251661955266030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082614 n * A130321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082613.P12196251661955266030

/-! ## A082613.P16736137256148327182

`A082614(n)*A131577(n+1)`
-/

namespace A082613.P16736137256148327182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082614 n * A131577 (n + 1)

end

end A082613.P16736137256148327182

/-! ## A082613.P8556857029267249669

`A082614(n)*A163866(A000124(n))`
-/

namespace A082613.P8556857029267249669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082614 n * A163866 (A000124 n).toNat

end

end A082613.P8556857029267249669

/-! ## A082613.P4638983438444425764

`A082614(n)*A155038(A167614(n+2))`
-/

namespace A082613.P4638983438444425764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082614 n * A155038 (A167614 (n + 2)).toNat

end

end A082613.P4638983438444425764

/-! ## A082613.P18376566371680976304

`A082614(n)*A155038(A052905(n)+8)`
-/

namespace A082613.P18376566371680976304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082614 n * A155038 (A052905 n + 8).toNat

end

end A082613.P18376566371680976304

/-!
# A082614: a(n) = A082613(n) divided by the n-th power that divides it.

The programs for A082614, there is no canonical definition to state claims against.
-/

/-! ## A082614.P1483171853702794212

`A082613(n)/2^n`
-/

namespace A082614.P1483171853702794212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082613 n : ℚ) / (2 ^ n : ℚ)

end

end A082614.P1483171853702794212

/-! ## A082614.P13636958568391121679

`floor(A082613(n)/A000079(n))`
-/

namespace A082614.P13636958568391121679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082613 n : ℚ) / (A000079 n : ℚ)⌋

end

end A082614.P13636958568391121679

/-! ## A082614.P4857748217353621886

`ceil(A082613(n)/A000079(A028310(n)))`
-/

namespace A082614.P4857748217353621886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082613 n : ℚ) / (A000079 (A028310 n).toNat : ℚ)⌉

end

end A082614.P4857748217353621886

/-! ## A082614.P12029513944670665001

`ceil(A082613(n)/A000079(A233583(n+1)))`
-/

namespace A082614.P12029513944670665001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082613 n : ℚ) / (A000079 (A233583 (n + 1)).toNat : ℚ)⌉

end

end A082614.P12029513944670665001

/-! ## A082614.P15879941005974643434

`A082613(n)/A000079(n)*A007318(∑[n])`
-/

namespace A082614.P15879941005974643434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082613 n : ℚ) / (A000079 n : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A082614.P15879941005974643434

/-!
# A082615: Palindromes such that the GCD of any pair of successive terms is a palindromic prime.

The programs for A082615, there is no canonical definition to state claims against.
-/

/-! ## A082615.P9928655702652113028

`A081939(n+1)+A025439(A171882(n))`
-/

namespace A082615.P9928655702652113028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081939 (n + 1) + A025439 (A171882 n).toNat

end

end A082615.P9928655702652113028

/-!
# A082616: Palindromes such that the least common multiple of any pair of successive terms is a palindrome.

The programs for A082616, there is no canonical definition to state claims against.
-/

/-! ## A082616.P5683901601373681421

`A265557(A035522(n))`
-/

namespace A082616.P5683901601373681421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 (A035522 n).toNat

end

end A082616.P5683901601373681421

/-! ## A082616.P1569098199432977341

`A265557(A038754(n))`
-/

namespace A082616.P1569098199432977341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 (A038754 n).toNat

end

end A082616.P1569098199432977341

/-! ## A082616.P8256000820609091271

`A265557(A081741(n+1))`
-/

namespace A082616.P8256000820609091271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 (A081741 (n + 1)).toNat

end

end A082616.P8256000820609091271

/-! ## A082616.P10094605594743457660

`A265557(A182522(n+1))`
-/

namespace A082616.P10094605594743457660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 (A182522 (n + 1)).toNat

end

end A082616.P10094605594743457660

/-! ## A082616.P14171921358290981604

`A265553(A245479(n+1))`
-/

namespace A082616.P14171921358290981604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (A245479 (n + 1)).toNat

end

end A082616.P14171921358290981604

/-!
# A082617: a(1) = 1, then squarefree palindromes such that a(n+1) = p*a(n) where p is a prime not dividing any previous term.

The programs for A082617, there is no canonical definition to state claims against.
-/

/-! ## A082617.P3251687178530398184

`∏[A082618(A028310(n))]/2`
-/

namespace A082617.P3251687178530398184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082618 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A082617.P3251687178530398184

/-! ## A082617.P7504875634854786761

`∏[A082618(n+1)]/A082618(n+1)`
-/

namespace A082617.P7504875634854786761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082618 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A082618 (n + 1) : ℚ)

end

end A082617.P7504875634854786761

/-!
# A082618: Primes pertaining to A082617. a(n) = A082617(n+1)/A082617(n).

The programs for A082618, there is no canonical definition to state claims against.
-/

/-! ## A082618.P17782880457731768170

`A082617(n+2)/A082617(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082618.P17782880457731768170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082617 (n + 2) : ℚ) / (A082617 (n + 1) : ℚ)

end

end A082618.P17782880457731768170

/-! ## A082618.P14534902413634211131

`ratio[A082617(n+1)]`
-/

namespace A082618.P14534902413634211131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082617 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A082618.P14534902413634211131

/-!
# A082620: a(1) = 1, then the smallest palindromic prime obtained by inserting digits anywhere in a(n-1).

The programs for A082620, there is no canonical definition to state claims against.
-/

/-! ## A082620.P14439951436143967039

`record[A056732(n+1)^A123895(n)]`
-/

namespace A082620.P14439951436143967039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056732 (n + 1) : ℚ) ^ (A123895 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082620.P14439951436143967039

/-! ## A082620.P4674332862134852298

`record[gcd(A025883(n), A056732(n+1))]`
-/

namespace A082620.P4674332862134852298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025883 n) (A056732 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082620.P4674332862134852298

/-!
# A082622: a(1) = 3, a(n) = smallest palindromic prime obtained by inserting two paired digits anywhere in a(n-1).

The programs for A082622, there is no canonical definition to state claims against.
-/

/-! ## A082622.P10491596686984969581

`A081346(10^n)+10^n`
-/

namespace A082622.P10491596686984969581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 (10 ^ n) + (10 ^ n : ℤ)

end

end A082622.P10491596686984969581

/-!
# A082625: Smallest palindromic prime that ends (on the least significant side) in prime(n).

The programs for A082625, there is no canonical definition to state claims against.
-/

/-! ## A082625.P7138308473581575971

`p?[record[A084317(A192137(n+1))]]`
-/

namespace A082625.P7138308473581575971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A192137 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082625.P7138308473581575971

/-!
# A082626: Smallest palindromic prime that ends (the least significant side) in (2n-1) the n-th odd number, or 0 if no such number exists, e.g., for 2n-1 = 10k + 5, k>0.

The programs for A082626, there is no canonical definition to state claims against.
-/

/-! ## A082626.P4983007684788065965

`p?[A109864(A004086(Δ[n²]))]`
-/

namespace A082626.P4983007684788065965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A004086 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082626.P4983007684788065965

/-!
# A082630: Limit of the sequence obtained from S(0) = (1,1) and, for n > 0, S(n) = I(S(n-1)), where I consists of inserting, for i = 1, 2, 3..., the term a(i) + a(i+1) between any two terms for which 7*a(i+1) <= 11*a(i).

The programs for A082630, the canonical program `A082630.P364994285593440055` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082630 has offset 1).

The definition of A082630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082630.P1073113076510239560

`ogf((1+2x+x^2)/(1-4x^2+x^4))`
-/

namespace A082630.P1073113076510239560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 0, -4, 0, 1] n

end

end A082630.P1073113076510239560

namespace A082630

/-- `ogf((1+2x+x^2)/(1-4x^2+x^4))` -/
def P1073113076510239560.Spec : Prop :=
  ∀ n, P1073113076510239560.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P17898805074996043789

`∑[floor((sqrt(3)+2)*a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A082630.P17898805074996043789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082630.P17898805074996043789

namespace A082630

/-- `∑[floor((sqrt(3)+2)*a(n-2))]` -/
def P17898805074996043789.Spec : Prop :=
  ∀ n, P17898805074996043789.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P364994285593440055

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082630

/-- `4*a(n-2)-a(n-4)` -/
def P364994285593440055.Spec : Prop :=
  ∀ n, P364994285593440055.a n = A082630 (n + 1)

theorem P364994285593440055.correct : P364994285593440055.Spec := by
  intro n
  simp only [A082630, Nat.add_sub_cancel]

end A082630

/-! ## A082630.P9412826664634764452

`lcm(a(n-1)+lcm(2, a(n-1))/2, a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A082630.P9412826664634764452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (Int.lcm 2 (a (n - 1)) : ℚ) / 2)) (a (n - 1)) : ℤ) - a (n - 2)

end

end A082630.P9412826664634764452

namespace A082630

/-- `lcm(a(n-1)+lcm(2, a(n-1))/2, a(n-1))-a(n-2)` -/
def P9412826664634764452.Spec : Prop :=
  ∀ n, P9412826664634764452.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P5341579716120197583

`a(n-1)+a(n-1)+a(n-2)-(a(n-2)+a(n-2))%a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A082630.P5341579716120197583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - Int.tmod (a (n - 2) + a (n - 2)) (a (n - 1))))

end

end A082630.P5341579716120197583

namespace A082630

/-- `a(n-1)+a(n-1)+a(n-2)-(a(n-2)+a(n-2))%a(n-1)` -/
def P5341579716120197583.Spec : Prop :=
  ∀ n, P5341579716120197583.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P3758517595386191834

`∑[A122573(n+3)]`
-/

namespace A082630.P3758517595386191834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082630.P3758517595386191834

namespace A082630

/-- `∑[A122573(n+3)]` -/
def P3758517595386191834.Spec : Prop :=
  ∀ n, P3758517595386191834.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P12187088914547839435

`A254308(A114119(n))`
-/

namespace A082630.P12187088914547839435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A114119 n).toNat

end

end A082630.P12187088914547839435

namespace A082630

/-- `A254308(A114119(n))` -/
def P12187088914547839435.Spec : Prop :=
  ∀ n, P12187088914547839435.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P17796441321318555302

`A254308(A007494(n+1))`
-/

namespace A082630.P17796441321318555302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A007494 (n + 1)).toNat

end

end A082630.P17796441321318555302

namespace A082630

/-- `A254308(A007494(n+1))` -/
def P17796441321318555302.Spec : Prop :=
  ∀ n, P17796441321318555302.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P5096363608675555149

`A254308(A294732(n+3))`
-/

namespace A082630.P5096363608675555149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A294732 (n + 3)).toNat

end

end A082630.P5096363608675555149

namespace A082630

/-- `A254308(A294732(n+3))` -/
def P5096363608675555149.Spec : Prop :=
  ∀ n, P5096363608675555149.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P15947431747791564147

`A000034(n)*A108412(n)`
-/

namespace A082630.P15947431747791564147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A108412 n

end

end A082630.P15947431747791564147

namespace A082630

/-- `A000034(n)*A108412(n)` -/
def P15947431747791564147.Spec : Prop :=
  ∀ n, P15947431747791564147.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P18370074169244740468

`A048788(n+1)+A108412(n)-A002530(n+1)`
-/

namespace A082630.P18370074169244740468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (n + 1) + (A108412 n - A002530 (n + 1))

end

end A082630.P18370074169244740468

namespace A082630

/-- `A048788(n+1)+A108412(n)-A002530(n+1)` -/
def P18370074169244740468.Spec : Prop :=
  ∀ n, P18370074169244740468.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P16461047817747370610

`Δ[A237250(n+1)]`
-/

namespace A082630.P16461047817747370610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082630.P16461047817747370610

namespace A082630

/-- `Δ[A237250(n+1)]` -/
def P16461047817747370610.Spec : Prop :=
  ∀ n, P16461047817747370610.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P16974619684735119208

`A237250(n+2)-A237250(n+1)`
-/

namespace A082630.P16974619684735119208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 2) - A237250 (n + 1)

end

end A082630.P16974619684735119208

namespace A082630

/-- `A237250(n+2)-A237250(n+1)` -/
def P16974619684735119208.Spec : Prop :=
  ∀ n, P16974619684735119208.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P14530067717637208283

`A272073(n+3)/3`
-/

namespace A082630.P14530067717637208283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272073 (n + 3) : ℚ) / 3

end

end A082630.P14530067717637208283

namespace A082630

/-- `A272073(n+3)/3` -/
def P14530067717637208283.Spec : Prop :=
  ∀ n, P14530067717637208283.a n = (A082630 (n + 1) : ℚ)

end A082630

/-! ## A082630.P7588597136525493702

`A005246(n+1)+A272073(n+3)-A143643(n+2)`
-/

namespace A082630.P7588597136525493702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1) + (A272073 (n + 3) - A143643 (n + 2))

end

end A082630.P7588597136525493702

namespace A082630

/-- `A005246(n+1)+A272073(n+3)-A143643(n+2)` -/
def P7588597136525493702.Spec : Prop :=
  ∀ n, P7588597136525493702.a n = A082630 (n + 1)

end A082630

/-! ## A082630.P6778550329881726642

`A072110(n)/A005246(n)`
-/

namespace A082630.P6778550329881726642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072110 n : ℚ) / (A005246 n : ℚ)

end

end A082630.P6778550329881726642

namespace A082630

/-- `A072110(n)/A005246(n)` -/
def P6778550329881726642.Spec : Prop :=
  ∀ n, P6778550329881726642.a n = (A082630 (n + 1) : ℚ)

end A082630

/-! ## A082630.P6394221640781711706

`gcd(A072110(n), A125905(n))`
-/

namespace A082630.P6394221640781711706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072110 n) (A125905 n)

end

end A082630.P6394221640781711706

namespace A082630

/-- `gcd(A072110(n), A125905(n))` -/
def P6394221640781711706.Spec : Prop :=
  ∀ n, (P6394221640781711706.a n : ℤ) = A082630 (n + 1)

end A082630

/-! ## A082630.P854173754272154656

`A001353(n+1)/A005246(n+2)`
-/

namespace A082630.P854173754272154656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 1) : ℚ) / (A005246 (n + 2) : ℚ)

end

end A082630.P854173754272154656

namespace A082630

/-- `A001353(n+1)/A005246(n+2)` -/
def P854173754272154656.Spec : Prop :=
  ∀ n, P854173754272154656.a n = (A082630 (n + 1) : ℚ)

end A082630

/-!
# A082631: Enumeration of fractal 321 avoiders.

The programs for A082631, there is no canonical definition to state claims against.
-/

/-! ## A082631.P6250068145570507108

`A132270(A155212(n)+A018901(n))`
-/

namespace A082631.P6250068145570507108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A155212 n + A018901 n).toNat

end

end A082631.P6250068145570507108

/-! ## A082631.P8662581471293691598

`A334273(n+1)+A132270(A018901(n))`
-/

namespace A082631.P8662581471293691598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1) + A132270 (A018901 n).toNat

end

end A082631.P8662581471293691598

/-!
# A082633: Decimal expansion of the 1st Stieltjes constant gamma_1 (negated).

The programs for A082633, there is no canonical definition to state claims against.
-/

/-! ## A082633.P9001440758467668406

`9-A252898(n)`
-/

namespace A082633.P9001440758467668406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A252898 n

end

end A082633.P9001440758467668406

/-!
# A082637: a(n) = smallest number which can be expressed as sum of d consecutive positive integers in exactly n ways (where d>0 is a divisor of the number).

The programs for A082637, there is no canonical definition to state claims against.
-/

/-! ## A082637.P1466344861404903577

`A342594(A339916(n))`
-/

namespace A082637.P1466344861404903577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342594 (A339916 n).toNat

end

end A082637.P1466344861404903577

/-! ## A082637.P14572119885027527015

`A007425(∏[dr(A022073(n))])`
-/

namespace A082637.P14572119885027527015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A022073 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A082637.P14572119885027527015

/-!
# A082638: A077388 sorted and duplicates removed.

The programs for A082638, there is no canonical definition to state claims against.
-/

/-! ## A082638.P9750005167037950288

`A077388(A374633(n+2)%A120820(n+4))`
-/

namespace A082638.P9750005167037950288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077388 (Int.tmod (A374633 (n + 2)) (A120820 (n + 4))).toNat

end

end A082638.P9750005167037950288

/-!
# A082639: Numbers k such that 2*k*(k+2) is a square.

The programs for A082639, the canonical program `A082639.P935877402528510727` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082639 has offset 1).

The definition of A082639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082639.P935877402528510727

`6*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082639

/-- `6*a(n-1)-a(n-2)+4` -/
def P935877402528510727.Spec : Prop :=
  ∀ n, P935877402528510727.a n = A082639 (n + 1)

theorem P935877402528510727.correct : P935877402528510727.Spec := by
  intro n
  simp only [A082639, Nat.add_sub_cancel]

end A082639

/-! ## A082639.P5485096890712954015

`A001541(n)-1`
-/

namespace A082639.P5485096890712954015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n - 1

end

end A082639.P5485096890712954015

namespace A082639

/-- `A001541(n)-1` -/
def P5485096890712954015.Spec : Prop :=
  ∀ n, P5485096890712954015.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P9591020856530429287

`∑[ogf((2x+2x^2)/(1-6x+x^2))]`
-/

namespace A082639.P9591020856530429287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082639.P9591020856530429287

namespace A082639

/-- `∑[ogf((2x+2x^2)/(1-6x+x^2))]` -/
def P9591020856530429287.Spec : Prop :=
  ∀ n, P9591020856530429287.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P10011580493147620263

`ogf((2x+2x^2)/(1-7x+7x^2-x^3))`
-/

namespace A082639.P10011580493147620263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -7, 7, -1] n

end

end A082639.P10011580493147620263

namespace A082639

/-- `ogf((2x+2x^2)/(1-7x+7x^2-x^3))` -/
def P10011580493147620263.Spec : Prop :=
  ∀ n, P10011580493147620263.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P4695225282060095207

`floor(a(n-1)/(3-sqrt(8)))+5` with `a(0)=0, a(1)=2`
-/

namespace A082639.P4695225282060095207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 5

end

end A082639.P4695225282060095207

namespace A082639

/-- `floor(a(n-1)/(3-sqrt(8)))+5` -/
def P4695225282060095207.Spec : Prop :=
  ∀ n, P4695225282060095207.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P11071850643735961323

`4-(a(n-2)-6*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A082639.P11071850643735961323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - (a (n - 2) - 6 * a (n - 1))

end

end A082639.P11071850643735961323

namespace A082639

/-- `4-(a(n-2)-6*a(n-1))` -/
def P11071850643735961323.Spec : Prop :=
  ∀ n, P11071850643735961323.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P6100666114962599837

`record[a(n-2)-a(n-1)-a(n-1)]-1` with `a(0)=1, a(1)=1`
-/

namespace A082639.P6100666114962599837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A082639.P6100666114962599837

namespace A082639

/-- `record[a(n-2)-a(n-1)-a(n-1)]-1` -/
def P6100666114962599837.Spec : Prop :=
  ∀ n, P6100666114962599837.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P13355265558970376749

`2*A001108(n)`
-/

namespace A082639.P13355265558970376749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001108 n

end

end A082639.P13355265558970376749

namespace A082639

/-- `2*A001108(n)` -/
def P13355265558970376749.Spec : Prop :=
  ∀ n, P13355265558970376749.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P9475922219713509622

`A265278(2*n)`
-/

namespace A082639.P9475922219713509622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (2 * n)

end

end A082639.P9475922219713509622

namespace A082639

/-- `A265278(2*n)` -/
def P9475922219713509622.Spec : Prop :=
  ∀ n, P9475922219713509622.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P8129883924047949295

`A293004(2*n)`
-/

namespace A082639.P8129883924047949295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (2 * n)

end

end A082639.P8129883924047949295

namespace A082639

/-- `A293004(2*n)` -/
def P8129883924047949295.Spec : Prop :=
  ∀ n, P8129883924047949295.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P9123608203315737967

`lcm(2, A143608(n)²)`
-/

namespace A082639.P9123608203315737967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A143608 n ^ 2)

end

end A082639.P9123608203315737967

namespace A082639

/-- `lcm(2, A143608(n)²)` -/
def P9123608203315737967.Spec : Prop :=
  ∀ n, (P9123608203315737967.a n : ℤ) = A082639 (n + 1)

end A082639

/-! ## A082639.P13155732647568378934

`record[A123335(n)-1]`
-/

namespace A082639.P13155732647568378934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082639.P13155732647568378934

namespace A082639

/-- `record[A123335(n)-1]` -/
def P13155732647568378934.Spec : Prop :=
  ∀ n, P13155732647568378934.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P8213213297968764698

`A099938(n+1)-2`
-/

namespace A082639.P8213213297968764698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099938 (n + 1) - 2

end

end A082639.P8213213297968764698

namespace A082639

/-- `A099938(n+1)-2` -/
def P8213213297968764698.Spec : Prop :=
  ∀ n, P8213213297968764698.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P6925018513761086586

`A001333(2*n)-1`
-/

namespace A082639.P6925018513761086586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n) - 1

end

end A082639.P6925018513761086586

namespace A082639

/-- `A001333(2*n)-1` -/
def P6925018513761086586.Spec : Prop :=
  ∀ n, P6925018513761086586.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P1088243968022494352

`A079496(2*n)-1`
-/

namespace A082639.P1088243968022494352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (2 * n) - 1

end

end A082639.P1088243968022494352

namespace A082639

/-- `A079496(2*n)-1` -/
def P1088243968022494352.Spec : Prop :=
  ∀ n, P1088243968022494352.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P8056895930593856599

`A123335(2*n)-1`
-/

namespace A082639.P8056895930593856599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (2 * n) - 1

end

end A082639.P8056895930593856599

namespace A082639

/-- `A123335(2*n)-1` -/
def P8056895930593856599.Spec : Prop :=
  ∀ n, P8056895930593856599.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P3629072902363305121

`2*A097076(2*n)`
-/

namespace A082639.P3629072902363305121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097076 (2 * n)

end

end A082639.P3629072902363305121

namespace A082639

/-- `2*A097076(2*n)` -/
def P3629072902363305121.Spec : Prop :=
  ∀ n, P3629072902363305121.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P645044411258904145

`A126354(Δ[n²])-1`
-/

namespace A082639.P645044411258904145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A082639.P645044411258904145

namespace A082639

/-- `A126354(Δ[n²])-1` -/
def P645044411258904145.Spec : Prop :=
  ∀ n, P645044411258904145.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P15716166258676846131

`record[A126354(n+1)-1]`
-/

namespace A082639.P15716166258676846131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082639.P15716166258676846131

namespace A082639

/-- `record[A126354(n+1)-1]` -/
def P15716166258676846131.Spec : Prop :=
  ∀ n, P15716166258676846131.a n = A082639 (n + 1)

end A082639

/-! ## A082639.P1397248150954795991

`2*(A055997(n+1)-1)`
-/

namespace A082639.P1397248150954795991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055997 (n + 1) - 1)

end

end A082639.P1397248150954795991

namespace A082639

/-- `2*(A055997(n+1)-1)` -/
def P1397248150954795991.Spec : Prop :=
  ∀ n, P1397248150954795991.a n = A082639 (n + 1)

end A082639

/-!
# A082640: Triangle T(m,n) read by rows: unimodular triangulations of the grid P(m,n), m,n > 0, n <= m.

The programs for A082640, there is no canonical definition to state claims against.
-/

/-! ## A082640.P13669890020848547260

`and(A307089(3*n+2), A307130(A307127(n)))`
-/

namespace A082640.P13669890020848547260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A307089 (3 * n + 2)) (A307130 (A307127 n).toNat)

end

end A082640.P13669890020848547260

/-!
# A082641: Triangle T(n,k) (n >= 1, 1 <= k <= n) read by rows, where T(n,k) = number of basic invariants of degree k for the cyclic group of order and degree n.

The programs for A082641, there is no canonical definition to state claims against.
-/

/-! ## A082641.P1455653624406127548

`gcd(A001177(A013617(n)), A001300(n))`
-/

namespace A082641.P1455653624406127548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001177 (A013617 n).toNat) (A001300 n)

end

end A082641.P1455653624406127548

/-! ## A082641.P8925501475095346349

`A000120(A191384(n)*A294950(n))`
-/

namespace A082641.P8925501475095346349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A191384 n * A294950 n).toNat

end

end A082641.P8925501475095346349

/-! ## A082641.P3528138132632562209

`A047675(or(A091008(n+1), A343097(n)))`
-/

namespace A082641.P3528138132632562209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047675 (Int.lor (A091008 (n + 1)) (A343097 n)).toNat

end

end A082641.P3528138132632562209

/-! ## A082641.P11155655895432498886

`A002487(A249027(n+1))*A008284(n+1)`
-/

namespace A082641.P11155655895432498886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A249027 (n + 1)).toNat * A008284 (n + 1)

end

end A082641.P11155655895432498886

/-!
# A082642: Expansion of Molien series for 5-dimensional representation of dihedral group of order 10.

The programs for A082642, the canonical program `A082642.P18123530873982170389` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082642 has offset 0).

The definition of A082642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082642.P18123530873982170389

`ceil(xor(1, ∑[or(1, n)]-1)/5)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082642

/-- `ceil(xor(1, ∑[or(1, n)]-1)/5)` -/
def P18123530873982170389.Spec : Prop :=
  ∀ n, P18123530873982170389.a n = A082642 n

theorem P18123530873982170389.correct : P18123530873982170389.Spec := by
  intro n
  simp only [A082642]

end A082642

/-! ## A082642.P17042609955575939347

`round(∑[2*n-a(n-1)]/5)` with `a(0)=3`
-/

namespace A082642.P17042609955575939347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5)

end

end A082642.P17042609955575939347

namespace A082642

/-- `round(∑[2*n-a(n-1)]/5)` -/
def P17042609955575939347.Spec : Prop :=
  ∀ n, P17042609955575939347.a n = A082642 n

end A082642

/-! ## A082642.P139260363034910191

`ceil(A326657(n)/5)`
-/

namespace A082642.P139260363034910191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326657 n : ℚ) / 5⌉

end

end A082642.P139260363034910191

namespace A082642

/-- `ceil(A326657(n)/5)` -/
def P139260363034910191.Spec : Prop :=
  ∀ n, P139260363034910191.a n = A082642 n

end A082642

/-! ## A082642.P4189250182176973688

`2*A000115(n+2)-(n+3)`
-/

namespace A082642.P4189250182176973688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000115 (n + 2) - (n + 3 : ℤ)

end

end A082642.P4189250182176973688

namespace A082642

/-- `2*A000115(n+2)-(n+3)` -/
def P4189250182176973688.Spec : Prop :=
  ∀ n, P4189250182176973688.a n = A082642 n

end A082642

/-! ## A082642.P3834904749330876247

`∑[n+1-(A286717(n+1)+a(n-1))]` with `a(0)=1`
-/

namespace A082642.P3834904749330876247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) - (A286717 (n + 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082642.P3834904749330876247

namespace A082642

/-- `∑[n+1-(A286717(n+1)+a(n-1))]` -/
def P3834904749330876247.Spec : Prop :=
  ∀ n, P3834904749330876247.a n = A082642 n

end A082642

/-! ## A082642.P13897264586924672477

`A005843(Δ[A001304(n+1)]-1)-(n+1)`
-/

namespace A082642.P13897264586924672477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n - 1).toNat - (n + 1 : ℤ)

end

end A082642.P13897264586924672477

namespace A082642

/-- `A005843(Δ[A001304(n+1)]-1)-(n+1)` -/
def P13897264586924672477.Spec : Prop :=
  ∀ n, P13897264586924672477.a n = A082642 n

end A082642

/-! ## A082642.P3702678265642577973

`A004524(or(2, A008812(n)))`
-/

namespace A082642.P3702678265642577973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 2 (A008812 n)).toNat

end

end A082642.P3702678265642577973

namespace A082642

/-- `A004524(or(2, A008812(n)))` -/
def P3702678265642577973.Spec : Prop :=
  ∀ n, P3702678265642577973.a n = A082642 n

end A082642

/-! ## A082642.P11993541109506320440

`A083219(∑[A130497(n)]+2)-2`
-/

namespace A082642.P11993541109506320440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 2

end

end A082642.P11993541109506320440

namespace A082642

/-- `A083219(∑[A130497(n)]+2)-2` -/
def P11993541109506320440.Spec : Prop :=
  ∀ n, P11993541109506320440.a n = A082642 n

end A082642

/-! ## A082642.P17279195904034822096

`A194509(A000982(n+1))`
-/

namespace A082642.P17279195904034822096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A000982 (n + 1)).toNat

end

end A082642.P17279195904034822096

namespace A082642

/-- `A194509(A000982(n+1))` -/
def P17279195904034822096.Spec : Prop :=
  ∀ n, P17279195904034822096.a n = A082642 n

end A082642

/-! ## A082642.P12270782051290179632

`A194509(A030978(n+1))`
-/

namespace A082642.P12270782051290179632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A030978 (n + 1)).toNat

end

end A082642.P12270782051290179632

namespace A082642

/-- `A194509(A030978(n+1))` -/
def P12270782051290179632.Spec : Prop :=
  ∀ n, P12270782051290179632.a n = A082642 n

end A082642

/-! ## A082642.P4626348407986355835

`A194509(A105343(n+1))`
-/

namespace A082642.P4626348407986355835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A105343 (n + 1)).toNat

end

end A082642.P4626348407986355835

namespace A082642

/-- `A194509(A105343(n+1))` -/
def P4626348407986355835.Spec : Prop :=
  ∀ n, P4626348407986355835.a n = A082642 n

end A082642

/-! ## A082642.P13563894445657509069

`A194509(A236283(n+1))`
-/

namespace A082642.P13563894445657509069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A236283 (n + 1)).toNat

end

end A082642.P13563894445657509069

namespace A082642

/-- `A194509(A236283(n+1))` -/
def P13563894445657509069.Spec : Prop :=
  ∀ n, P13563894445657509069.a n = A082642 n

end A082642

/-! ## A082642.P15069948880641639235

`A194509(A245581(n+1))`
-/

namespace A082642.P15069948880641639235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A245581 (n + 1)).toNat

end

end A082642.P15069948880641639235

namespace A082642

/-- `A194509(A245581(n+1))` -/
def P15069948880641639235.Spec : Prop :=
  ∀ n, P15069948880641639235.a n = A082642 n

end A082642

/-! ## A082642.P3286090281376699337

`A194509(A330357(n+1))`
-/

namespace A082642.P3286090281376699337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A330357 (n + 1)).toNat

end

end A082642.P3286090281376699337

namespace A082642

/-- `A194509(A330357(n+1))` -/
def P3286090281376699337.Spec : Prop :=
  ∀ n, P3286090281376699337.a n = A082642 n

end A082642

/-! ## A082642.P11548398583740431611

`A194509(A348484(n+1))`
-/

namespace A082642.P11548398583740431611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A348484 (n + 1)).toNat

end

end A082642.P11548398583740431611

namespace A082642

/-- `A194509(A348484(n+1))` -/
def P11548398583740431611.Spec : Prop :=
  ∀ n, P11548398583740431611.a n = A082642 n

end A082642

/-! ## A082642.P3125246482485652474

`A008616(n*(n+2))`
-/

namespace A082642.P3125246482485652474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (n * (n + 2))

end

end A082642.P3125246482485652474

namespace A082642

/-- `A008616(n*(n+2))` -/
def P3125246482485652474.Spec : Prop :=
  ∀ n, P3125246482485652474.a n = A082642 n

end A082642

/-! ## A082642.P10525145394522690342

`A286717(A008611(A285869(n*(n+2))))`
-/

namespace A082642.P10525145394522690342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 (A008611 (A285869 (n * (n + 2))).toNat).toNat

end

end A082642.P10525145394522690342

namespace A082642

/-- `A286717(A008611(A285869(n*(n+2))))` -/
def P10525145394522690342.Spec : Prop :=
  ∀ n, P10525145394522690342.a n = A082642 n

end A082642

/-! ## A082642.P15862821495574294426

`A008611(A008619((n+1)²)-A058207((n+1)²))`
-/

namespace A082642.P15862821495574294426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008619 ((n + 1) ^ 2) - A058207 ((n + 1) ^ 2)).toNat

end

end A082642.P15862821495574294426

namespace A082642

/-- `A008611(A008619((n+1)²)-A058207((n+1)²))` -/
def P15862821495574294426.Spec : Prop :=
  ∀ n, P15862821495574294426.a n = A082642 n

end A082642

/-!
# A082643: a(n) = ceiling(n*(n+1/2)/2).

The programs for A082643, the canonical program `A082643.P6144076900692633061` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082643 has offset 0).

The definition of A082643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(n+1/2)/2)` (program `A082643.P6144076900692633061`, by `A082643.P6144076900692633061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082643.P6144076900692633061

`ceil(n*(n+1/2)/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082643

/-- `ceil(n*(n+1/2)/2)` -/
def P6144076900692633061.Spec : Prop :=
  ∀ n, P6144076900692633061.a n = A082643 n

theorem P6144076900692633061.correct : P6144076900692633061.Spec := by
  intro n
  simp only [A082643]

end A082643

/-! ## A082643.P12214561678188853278

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=9, a(5)=14`
-/

namespace A082643.P12214561678188853278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 9, 14] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A082643.P12214561678188853278

namespace A082643

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P12214561678188853278.Spec : Prop :=
  ∀ n, P12214561678188853278.a n = A082643 n

end A082643

/-! ## A082643.P12664922740193738593

`round(n/sin(4/(2*n+1)))`
-/

namespace A082643.P12664922740193738593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sin (4 / (2 * n + 1 : ℚ) : ℝ))

end

end A082643.P12664922740193738593

namespace A082643

/-- `round(n/sin(4/(2*n+1)))` -/
def P12664922740193738593.Spec : Prop :=
  ∀ n, P12664922740193738593.a n = A082643 n

end A082643

/-! ## A082643.P13983885698157665168

`∑[a(n-4)+4]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A082643.P13983885698157665168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 3] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082643.P13983885698157665168

namespace A082643

/-- `∑[a(n-4)+4]` -/
def P13983885698157665168.Spec : Prop :=
  ∀ n, (P13983885698157665168.a n : ℤ) = A082643 n

end A082643

/-! ## A082643.P2961183766683277786

`round((C(2*n+1, 2)+1)/4)`
-/

namespace A082643.P2961183766683277786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 + 1 : ℚ) / 4)

end

end A082643.P2961183766683277786

namespace A082643

/-- `round((C(2*n+1, 2)+1)/4)` -/
def P2961183766683277786.Spec : Prop :=
  ∀ n, P2961183766683277786.a n = A082643 n

end A082643

/-! ## A082643.P6828244307163178154

`floor((C(2*n+1, 2)+3)/4)`
-/

namespace A082643.P6828244307163178154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) 2 + 3 : ℚ) / 4⌋

end

end A082643.P6828244307163178154

namespace A082643

/-- `floor((C(2*n+1, 2)+3)/4)` -/
def P6828244307163178154.Spec : Prop :=
  ∀ n, P6828244307163178154.a n = A082643 n

end A082643

/-! ## A082643.P8872753862131105890

`round(C(n+1, 2)-(n-1)/4)`
-/

namespace A082643.P8872753862131105890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 2 : ℚ) - ((n : ℤ) - 1 : ℚ) / 4)

end

end A082643.P8872753862131105890

namespace A082643

/-- `round(C(n+1, 2)-(n-1)/4)` -/
def P8872753862131105890.Spec : Prop :=
  ∀ n, P8872753862131105890.a n = A082643 n

end A082643

/-! ## A082643.P8519858404578690549

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A082643.P8519858404578690549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 0, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082643.P8519858404578690549

namespace A082643

/-- `∑[∑[floor(a(n-4))]]` -/
def P8519858404578690549.Spec : Prop :=
  ∀ n, (P8519858404578690549.a n : ℤ) = A082643 n

end A082643

/-! ## A082643.P2614730942611579543

`floor((lcm(n+1, n²)+2*n)/(2*n+1))`
-/

namespace A082643.P2614730942611579543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n ^ 2) + 2 * n : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A082643.P2614730942611579543

namespace A082643

/-- `floor((lcm(n+1, n²)+2*n)/(2*n+1))` -/
def P2614730942611579543.Spec : Prop :=
  ∀ n, P2614730942611579543.a n = A082643 n

end A082643

/-! ## A082643.P5934246988954062451

`n²-A082644(n)`
-/

namespace A082643.P5934246988954062451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A082644 n

end

end A082643.P5934246988954062451

namespace A082643

/-- `n²-A082644(n)` -/
def P5934246988954062451.Spec : Prop :=
  ∀ n, P5934246988954062451.a n = A082643 n

end A082643

/-! ## A082643.P15003499806321768139

`∑[n]-A002265(n)`
-/

namespace A082643.P15003499806321768139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002265 n

end

end A082643.P15003499806321768139

namespace A082643

/-- `∑[n]-A002265(n)` -/
def P15003499806321768139.Spec : Prop :=
  ∀ n, P15003499806321768139.a n = A082643 n

end A082643

/-! ## A082643.P3644981668740710908

`A038707(n+1)-n`
-/

namespace A082643.P3644981668740710908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 (n + 1) - (n : ℤ)

end

end A082643.P3644981668740710908

namespace A082643

/-- `A038707(n+1)-n` -/
def P3644981668740710908.Spec : Prop :=
  ∀ n, P3644981668740710908.a n = A082643 n

end A082643

/-! ## A082643.P3836862880166027130

`floor(∑[A053438(n)/2])`
-/

namespace A082643.P3836862880166027130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053438 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A082643.P3836862880166027130

namespace A082643

/-- `floor(∑[A053438(n)/2])` -/
def P3836862880166027130.Spec : Prop :=
  ∀ n, P3836862880166027130.a n = A082643 n

end A082643

/-! ## A082643.P16517695282757621406

`∑[n+1]-A047201(n+1)`
-/

namespace A082643.P16517695282757621406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A047201 (n + 1)

end

end A082643.P16517695282757621406

namespace A082643

/-- `∑[n+1]-A047201(n+1)` -/
def P16517695282757621406.Spec : Prop :=
  ∀ n, P16517695282757621406.a n = A082643 n

end A082643

/-! ## A082643.P13423605656355755203

`A166486(n)+A038707(n)`
-/

namespace A082643.P13423605656355755203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A038707 n

end

end A082643.P13423605656355755203

namespace A082643

/-- `A166486(n)+A038707(n)` -/
def P13423605656355755203.Spec : Prop :=
  ∀ n, P13423605656355755203.a n = A082643 n

end A082643

/-! ## A082643.P5815492800533697214

`A000096(n)-A001068(n)`
-/

namespace A082643.P5815492800533697214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A001068 n

end

end A082643.P5815492800533697214

namespace A082643

/-- `A000096(n)-A001068(n)` -/
def P5815492800533697214.Spec : Prop :=
  ∀ n, P5815492800533697214.a n = A082643 n

end A082643

/-! ## A082643.P13404379525401829976

`A000124(n)-A008621(n)`
-/

namespace A082643.P13404379525401829976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A008621 n

end

end A082643.P13404379525401829976

namespace A082643

/-- `A000124(n)-A008621(n)` -/
def P13404379525401829976.Spec : Prop :=
  ∀ n, P13404379525401829976.a n = A082643 n

end A082643

/-! ## A082643.P13392903787652967330

`A077043(n)-A011848(n)`
-/

namespace A082643.P13392903787652967330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n - A011848 n

end

end A082643.P13392903787652967330

namespace A082643

/-- `A077043(n)-A011848(n)` -/
def P13392903787652967330.Spec : Prop :=
  ∀ n, P13392903787652967330.a n = A082643 n

end A082643

/-! ## A082643.P10144857586916060830

`A005449(n)-A173562(n)`
-/

namespace A082643.P10144857586916060830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A173562 n

end

end A082643.P10144857586916060830

namespace A082643

/-- `A005449(n)-A173562(n)` -/
def P10144857586916060830.Spec : Prop :=
  ∀ n, P10144857586916060830.a n = A082643 n

end A082643

/-!
# A082644: a(n) = floor(n*(n-1/2)/2).

The programs for A082644, the canonical program `A082644.P3516748515867807006` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082644 has offset 0).

The definition of A082644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1/2)/2)` (program `A082644.P3516748515867807006`, by `A082644.P3516748515867807006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082644.P3516748515867807006

`floor(n*(n-1/2)/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082644

/-- `floor(n*(n-1/2)/2)` -/
def P3516748515867807006.Spec : Prop :=
  ∀ n, P3516748515867807006.a n = A082644 n

theorem P3516748515867807006.correct : P3516748515867807006.Spec := by
  intro n
  simp only [A082644]

end A082644

/-! ## A082644.P13919603327796781545

`∑[n-floor(sqrt(n%4))]`
-/

namespace A082644.P13919603327796781545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt (n % 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P13919603327796781545

namespace A082644

/-- `∑[n-floor(sqrt(n%4))]` -/
def P13919603327796781545.Spec : Prop :=
  ∀ n, P13919603327796781545.a n = A082644 n

end A082644

/-! ## A082644.P16708134860458632824

`∑[n-floor(sqrt(and(3, n)))]`
-/

namespace A082644.P16708134860458632824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt (Nat.land 3 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P16708134860458632824

namespace A082644

/-- `∑[n-floor(sqrt(and(3, n)))]` -/
def P16708134860458632824.Spec : Prop :=
  ∀ n, P16708134860458632824.a n = A082644 n

end A082644

/-! ## A082644.P11783649431210549266

`and(-4, C(2*n, 2))/4`
-/

namespace A082644.P11783649431210549266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) (Nat.choose (2 * n) 2 : ℤ) : ℚ) / 4

end

end A082644.P11783649431210549266

namespace A082644

/-- `and(-4, C(2*n, 2))/4` -/
def P11783649431210549266.Spec : Prop :=
  ∀ n, P11783649431210549266.a n = (A082644 n : ℚ)

end A082644

/-! ## A082644.P2208245451472333133

`ceil((n-3)/4)+C(n, 2)`
-/

namespace A082644.P2208245451472333133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℚ) / 4⌉ + (Nat.choose n 2 : ℤ)

end

end A082644.P2208245451472333133

namespace A082644

/-- `ceil((n-3)/4)+C(n, 2)` -/
def P2208245451472333133.Spec : Prop :=
  ∀ n, P2208245451472333133.a n = A082644 n

end A082644

/-! ## A082644.P15808429188996236711

`round((C(2*n, 2)-ϕ)/4)`
-/

namespace A082644.P15808429188996236711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (2 * n) 2 : ℝ) - Real.goldenRatio) / 4)

end

end A082644.P15808429188996236711

namespace A082644

/-- `round((C(2*n, 2)-ϕ)/4)` -/
def P15808429188996236711.Spec : Prop :=
  ∀ n, P15808429188996236711.a n = A082644 n

end A082644

/-! ## A082644.P14021442988147734555

`∑[a(n-4)+4]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A082644.P14021442988147734555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P14021442988147734555

namespace A082644

/-- `∑[a(n-4)+4]` -/
def P14021442988147734555.Spec : Prop :=
  ∀ n, (P14021442988147734555.a n : ℤ) = A082644 n

end A082644

/-! ## A082644.P562028956786137089

`∑[gcd(n+2, ∑[n])-2+n]`
-/

namespace A082644.P562028956786137089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P562028956786137089

namespace A082644

/-- `∑[gcd(n+2, ∑[n])-2+n]` -/
def P562028956786137089.Spec : Prop :=
  ∀ n, P562028956786137089.a n = A082644 n

end A082644

/-! ## A082644.P4436869297833411839

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A082644.P4436869297833411839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P4436869297833411839

namespace A082644

/-- `∑[∑[floor(a(n-4))]]` -/
def P4436869297833411839.Spec : Prop :=
  ∀ n, (P4436869297833411839.a n : ℤ) = A082644 n

end A082644

/-! ## A082644.P11956515699144818338

`∑[and(1, C(n+3, 3))+n-1]`
-/

namespace A082644.P11956515699144818338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (Nat.choose (n + 3) 3) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P11956515699144818338

namespace A082644

/-- `∑[and(1, C(n+3, 3))+n-1]` -/
def P11956515699144818338.Spec : Prop :=
  ∀ n, P11956515699144818338.a n = A082644 n

end A082644

/-! ## A082644.P4702094056686444633

`∑[∑[∑[n+1]]%2+n-1]`
-/

namespace A082644.P4702094056686444633
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P4702094056686444633

namespace A082644

/-- `∑[∑[∑[n+1]]%2+n-1]` -/
def P4702094056686444633.Spec : Prop :=
  ∀ n, P4702094056686444633.a n = A082644 n

end A082644

/-! ## A082644.P8710901908050911927

`∑[and(1, ∑[∑[n+1]])+n-1]`
-/

namespace A082644.P8710901908050911927
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P8710901908050911927

namespace A082644

/-- `∑[and(1, ∑[∑[n+1]])+n-1]` -/
def P8710901908050911927.Spec : Prop :=
  ∀ n, P8710901908050911927.a n = A082644 n

end A082644

/-! ## A082644.P9909425406079430674

`∑[n]-∑[a(n-4)²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A082644.P9909425406079430674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f2 =>
  f2 (n - 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A082644.P9909425406079430674

namespace A082644

/-- `∑[n]-∑[a(n-4)²]` -/
def P9909425406079430674.Spec : Prop :=
  ∀ n, P9909425406079430674.a n = A082644 n

end A082644

/-! ## A082644.P6229456010252653489

`a(n-1)-(n/gcd(2, n))%2+n` with `a(0)=0`
-/

namespace A082644.P6229456010252653489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))) 2 + (n : ℤ)

end

end A082644.P6229456010252653489

namespace A082644

/-- `a(n-1)-(n/gcd(2, n))%2+n` -/
def P6229456010252653489.Spec : Prop :=
  ∀ n, P6229456010252653489.a n = A082644 n

end A082644

/-! ## A082644.P766166474228455142

`∑[∑[a(n-4)^a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A082644.P766166474228455142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2] fun n f2 =>
  f2 (n - 4) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P766166474228455142

namespace A082644

/-- `∑[∑[a(n-4)^a(n-1)]]` -/
def P766166474228455142.Spec : Prop :=
  ∀ n, (P766166474228455142.a n : ℤ) = A082644 n

end A082644

/-! ## A082644.P79583073256504015

`n²-A082643(n)`
-/

namespace A082644.P79583073256504015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A082643 n

end

end A082644.P79583073256504015

namespace A082644

/-- `n²-A082643(n)` -/
def P79583073256504015.Spec : Prop :=
  ∀ n, P79583073256504015.a n = A082644 n

end A082644

/-! ## A082644.P15553470466249352359

`∑[n-A166486(n)]`
-/

namespace A082644.P15553470466249352359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A166486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P15553470466249352359

namespace A082644

/-- `∑[n-A166486(n)]` -/
def P15553470466249352359.Spec : Prop :=
  ∀ n, P15553470466249352359.a n = A082644 n

end A082644

/-! ## A082644.P8976240445530127664

`A173562(n)-∑[n]`
-/

namespace A082644.P8976240445530127664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A082644.P8976240445530127664

namespace A082644

/-- `A173562(n)-∑[n]` -/
def P8976240445530127664.Spec : Prop :=
  ∀ n, P8976240445530127664.a n = A082644 n

end A082644

/-! ## A082644.P1769853751745041073

`∑[n-A046978(n)²]`
-/

namespace A082644.P1769853751745041073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A046978 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082644.P1769853751745041073

namespace A082644

/-- `∑[n-A046978(n)²]` -/
def P1769853751745041073.Spec : Prop :=
  ∀ n, P1769853751745041073.a n = A082644 n

end A082644

/-!
# A082645: a(n) = floor((2*n^2 + n - 4)/4).

The programs for A082645, the canonical program `A082645.P17061328105596836684` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082645 has offset 0).

The definition of A082645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*n²+n-4)/4)` (program `A082645.P17061328105596836684`, by `A082645.P17061328105596836684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082645.P17061328105596836684

`floor((2*n²+n-4)/4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082645

/-- `floor((2*n²+n-4)/4)` -/
def P17061328105596836684.Spec : Prop :=
  ∀ n, P17061328105596836684.a n = A082645 n

theorem P17061328105596836684.correct : P17061328105596836684.Spec := by
  intro n
  simp only [A082645]

end A082645

/-! ## A082645.P3404916881655146775

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=-1, a(1)=-1, a(2)=1, a(3)=4, a(4)=8, a(5)=12`
-/

namespace A082645.P3404916881655146775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 1, 4, 8, 12] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A082645.P3404916881655146775

namespace A082645

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P3404916881655146775.Spec : Prop :=
  ∀ n, P3404916881655146775.a n = A082645 n

end A082645

/-! ## A082645.P2233675706976054978

`floor(C(2*n+1, 2)/4)-1`
-/

namespace A082645.P2233675706976054978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) 2 : ℚ) / 4⌋ - 1

end

end A082645.P2233675706976054978

namespace A082645

/-- `floor(C(2*n+1, 2)/4)-1` -/
def P2233675706976054978.Spec : Prop :=
  ∀ n, P2233675706976054978.a n = A082645 n

end A082645

/-! ## A082645.P8202412506436231519

`floor(lcm(n, 2*n+1)/4)-1`
-/

namespace A082645.P8202412506436231519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (2 * n + 1) : ℚ) / 4⌋ - 1

end

end A082645.P8202412506436231519

namespace A082645

/-- `floor(lcm(n, 2*n+1)/4)-1` -/
def P8202412506436231519.Spec : Prop :=
  ∀ n, P8202412506436231519.a n = A082645 n

end A082645

/-! ## A082645.P2653134585212317447

`∑[a(n-4)+4]` with `a(0)=-1, a(1)=0, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A082645.P2653134585212317447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082645.P2653134585212317447

namespace A082645

/-- `∑[a(n-4)+4]` -/
def P2653134585212317447.Spec : Prop :=
  ∀ n, P2653134585212317447.a n = A082645 n

end A082645

/-! ## A082645.P3756637323424056275

`∑[∑[floor(a(n-4))]]` with `a(0)=-1, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A082645.P3756637323424056275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 2, 1, 1, 0] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082645.P3756637323424056275

namespace A082645

/-- `∑[∑[floor(a(n-4))]]` -/
def P3756637323424056275.Spec : Prop :=
  ∀ n, P3756637323424056275.a n = A082645 n

end A082645

/-! ## A082645.P11244378455637663313

`A038707(n)-1`
-/

namespace A082645.P11244378455637663313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n - 1

end

end A082645.P11244378455637663313

namespace A082645

/-- `A038707(n)-1` -/
def P11244378455637663313.Spec : Prop :=
  ∀ n, P11244378455637663313.a n = A082645 n

end A082645

/-! ## A082645.P2301947557456016307

`∑[n-char[A266222(n)]]`
-/

namespace A082645.P2301947557456016307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082645.P2301947557456016307

namespace A082645

/-- `∑[n-char[A266222(n)]]` -/
def P2301947557456016307.Spec : Prop :=
  ∀ n, P2301947557456016307.a n = A082645 n

end A082645

/-! ## A082645.P789474659206794548

`round(A317186(n)/2)-2`
-/

namespace A082645.P789474659206794548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317186 n : ℚ) / 2) - 2

end

end A082645.P789474659206794548

namespace A082645

/-- `round(A317186(n)/2)-2` -/
def P789474659206794548.Spec : Prop :=
  ∀ n, P789474659206794548.a n = A082645 n

end A082645

/-! ## A082645.P374594397870685742

`A057353(n)+∑[n-1]`
-/

namespace A082645.P374594397870685742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082645.P374594397870685742

namespace A082645

/-- `A057353(n)+∑[n-1]` -/
def P374594397870685742.Spec : Prop :=
  ∀ n, P374594397870685742.a n = A082645 n

end A082645

/-! ## A082645.P3208275705456102931

`∑[n]-(A110655(n)+1)`
-/

namespace A082645.P3208275705456102931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A110655 n + 1)

end

end A082645.P3208275705456102931

namespace A082645

/-- `∑[n]-(A110655(n)+1)` -/
def P3208275705456102931.Spec : Prop :=
  ∀ n, P3208275705456102931.a n = A082645 n

end A082645

/-! ## A082645.P3692301850084263165

`∑[n-char[A006257(2*n)]]`
-/

namespace A082645.P3692301850084263165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082645.P3692301850084263165

namespace A082645

/-- `∑[n-char[A006257(2*n)]]` -/
def P3692301850084263165.Spec : Prop :=
  ∀ n, P3692301850084263165.a n = A082645 n

end A082645

/-! ## A082645.P7874533806756441462

`A047294(n+1)+∑[n-2]`
-/

namespace A082645.P7874533806756441462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047294 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082645.P7874533806756441462

namespace A082645

/-- `A047294(n+1)+∑[n-2]` -/
def P7874533806756441462.Spec : Prop :=
  ∀ n, P7874533806756441462.a n = A082645 n

end A082645

/-! ## A082645.P7218596318032625030

`∑[A047409(n+1)-n]-1`
-/

namespace A082645.P7218596318032625030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047409 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A082645.P7218596318032625030

namespace A082645

/-- `∑[A047409(n+1)-n]-1` -/
def P7218596318032625030.Spec : Prop :=
  ∀ n, P7218596318032625030.a n = A082645 n

end A082645

/-! ## A082645.P7230161370414818877

`∑[n-A138191(n+1)]+n`
-/

namespace A082645.P7230161370414818877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A138191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A082645.P7230161370414818877

namespace A082645

/-- `∑[n-A138191(n+1)]+n` -/
def P7230161370414818877.Spec : Prop :=
  ∀ n, P7230161370414818877.a n = A082645 n

end A082645

/-! ## A082645.P2652431004144478365

`∑[n+1]-2-A047203(n+1)`
-/

namespace A082645.P2652431004144478365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 - A047203 (n + 1)

end

end A082645.P2652431004144478365

namespace A082645

/-- `∑[n+1]-2-A047203(n+1)` -/
def P2652431004144478365.Spec : Prop :=
  ∀ n, P2652431004144478365.a n = A082645 n

end A082645

/-! ## A082645.P7327527464039792784

`A397986(n)-A014591(n)`
-/

namespace A082645.P7327527464039792784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397986 n - A014591 n

end

end A082645.P7327527464039792784

namespace A082645

/-- `A397986(n)-A014591(n)` -/
def P7327527464039792784.Spec : Prop :=
  ∀ n, P7327527464039792784.a n = A082645 n

end A082645

/-! ## A082645.P6121241275527217070

`A397978(n)-A084684(n)`
-/

namespace A082645.P6121241275527217070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n - A084684 n

end

end A082645.P6121241275527217070

namespace A082645

/-- `A397978(n)-A084684(n)` -/
def P6121241275527217070.Spec : Prop :=
  ∀ n, P6121241275527217070.a n = A082645 n

end A082645

/-! ## A082645.P6295973240770005837

`A332495(n)-A263807(n)`
-/

namespace A082645.P6295973240770005837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 n - A263807 n

end

end A082645.P6295973240770005837

namespace A082645

/-- `A332495(n)-A263807(n)` -/
def P6295973240770005837.Spec : Prop :=
  ∀ n, P6295973240770005837.a n = A082645 n

end A082645

/-!
# A082646: Primes whose decimal expansions contain equal numbers of each of their digits.

The programs for A082646, there is no canonical definition to state claims against.
-/

/-! ## A082646.P4027463649779170242

`p?[A266279(n+1)]`
-/

namespace A082646.P4027463649779170242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082646.P4027463649779170242

/-! ## A082646.P17368511642619158896

`record[A006530(A266279(n+3))]`
-/

namespace A082646.P17368511642619158896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A266279 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082646.P17368511642619158896

/-! ## A082646.P15984140029376145101

`∩[A000040(n+1), A266279(n+1)]`
-/

namespace A082646.P15984140029376145101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082646.P15984140029376145101

/-! ## A082646.P7923268301118256846

`∩[A052085(n+1), A266279(n+1)]`
-/

namespace A082646.P7923268301118256846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082646.P7923268301118256846

/-! ## A082646.P5593281151346116253

`A000040(lt[A093576(n+1), A226529(n+1)])`
-/

namespace A082646.P5593281151346116253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082646.P5593281151346116253

/-!
# A082647: Number of ways n can be expressed as the sum of d consecutive positive integers where d>0 is a divisor of n.

The programs for A082647, there is no canonical definition to state claims against.
-/

/-! ## A082647.P13311085143680390723

`A333805(2*(n+1))`
-/

namespace A082647.P13311085143680390723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (2 * (n + 1))

end

end A082647.P13311085143680390723

/-! ## A082647.P12237515863418697219

`A346447(A333805(n+2+n))`
-/

namespace A082647.P12237515863418697219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (A333805 (n + 2 + n)).toNat

end

end A082647.P12237515863418697219

/-! ## A082647.P12095708862477699851

`A067742(n+1)+A131576(n+1)`
-/

namespace A082647.P12095708862477699851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1) + A131576 (n + 1)

end

end A082647.P12095708862477699851

/-! ## A082647.P11157248745778149770

`A001227(n+1)-A131576(n+1)`
-/

namespace A082647.P11157248745778149770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A131576 (n + 1)

end

end A082647.P11157248745778149770

/-! ## A082647.P1022261602285160737

`(A067742(n+1)+A001227(n+1))/2`
-/

namespace A082647.P1022261602285160737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067742 (n + 1) + A001227 (n + 1) : ℚ) / 2

end

end A082647.P1022261602285160737

/-! ## A082647.P10120159326920224418

`A001227(n+1)-A341594(2*(n+1))`
-/

namespace A082647.P10120159326920224418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A341594 (2 * (n + 1))

end

end A082647.P10120159326920224418

/-! ## A082647.P7342198849622136203

`A001227(n+1)-A341675(2*(n+1))`
-/

namespace A082647.P7342198849622136203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A341675 (2 * (n + 1))

end

end A082647.P7342198849622136203

/-! ## A082647.P719172088961418422

`A001227(n+1)-A281009(n+1)/2`
-/

namespace A082647.P719172088961418422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) - (A281009 (n + 1) : ℚ) / 2

end

end A082647.P719172088961418422

/-! ## A082647.P8576432529461776886

`A000005(A064989(n+1))-A341594(2*(n+1))`
-/

namespace A082647.P8576432529461776886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064989 (n + 1)).toNat - A341594 (2 * (n + 1))

end

end A082647.P8576432529461776886

/-! ## A082647.P13539436710229681133

`A000005(A332819(n+1))-A341594(2*(n+1))`
-/

namespace A082647.P13539436710229681133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A332819 (n + 1)).toNat - A341594 (2 * (n + 1))

end

end A082647.P13539436710229681133

/-! ## A082647.P11141553300109239871

`A000005(A336158(n+1))-A341594(2*(n+1))`
-/

namespace A082647.P11141553300109239871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A341594 (2 * (n + 1))

end

end A082647.P11141553300109239871

/-! ## A082647.P14111602416315426382

`A349913(n+1)-(A327276(n+1)+A131576(n+1))`
-/

namespace A082647.P14111602416315426382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349913 (n + 1) - (A327276 (n + 1) + A131576 (n + 1))

end

end A082647.P14111602416315426382

/-! ## A082647.P12570694567469549236

`Δ[A060831(n)]-A341594(2*(n+1))`
-/

namespace A082647.P12570694567469549236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341594 (2 * (n + 1))

end

end A082647.P12570694567469549236

/-! ## A082647.P8462269435832114153

`Δ[A060831(n)]-A281009(n+1)/2`
-/

namespace A082647.P8462269435832114153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A281009 (n + 1) : ℚ) / 2

end

end A082647.P8462269435832114153

/-! ## A082647.P7042380301101283377

`A060831(n+1)-(A131576(n+1)+A060831(n))`
-/

namespace A082647.P7042380301101283377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - (A131576 (n + 1) + A060831 n)

end

end A082647.P7042380301101283377

/-! ## A082647.P7571674006443550704

`A320107(2*(n+1))-A131576(n+1)`
-/

namespace A082647.P7571674006443550704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (2 * (n + 1)) - A131576 (n + 1)

end

end A082647.P7571674006443550704

/-! ## A082647.P2911581535727340508

`∑{digits}[A303818(2*(n+1)), A025435(A303818(#))]`
-/

namespace A082647.P2911581535727340508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025435 (A303818 x).toNat).sum

end

end A082647.P2911581535727340508

/-! ## A082647.P17879671327269170571

`A069288(2*(n+1))`
-/

namespace A082647.P17879671327269170571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (2 * (n + 1))

end

end A082647.P17879671327269170571

/-! ## A082647.P5913046213677742262

`A000027(A069288(n+2+n))`
-/

namespace A082647.P5913046213677742262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069288 (n + 2 + n)).toNat

end

end A082647.P5913046213677742262

/-! ## A082647.P14704238933788562572

`A364387(2*(n+1))+A364358(2*(n+1))`
-/

namespace A082647.P14704238933788562572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (2 * (n + 1)) + A364358 (2 * (n + 1))

end

end A082647.P14704238933788562572

/-!
# A082648: Consider f(m) = Sum_{k=1..m} k! (A007489) when m is very large; a(n) = n-th digit from end.

The programs for A082648, there is no canonical definition to state claims against.
-/

/-! ## A082648.P10544921378313365987

`9-A065356(n)`
-/

namespace A082648.P10544921378313365987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A065356 n

end

end A082648.P10544921378313365987

/-! ## A082648.P3684868258640469986

`A025016(n)-floor(acot(n))`
-/

namespace A082648.P3684868258640469986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A082648.P3684868258640469986

/-! ## A082648.P1573372199938298892

`A025016(abs(1-n)+1)`
-/

namespace A082648.P1573372199938298892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 (|1 - (n : ℤ)| + 1).toNat

end

end A082648.P1573372199938298892

/-! ## A082648.P5192211020511591248

`A025016(n)-A000007(n)`
-/

namespace A082648.P5192211020511591248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A000007 n

end

end A082648.P5192211020511591248

/-! ## A082648.P9206887679529078009

`A073097(2*n)+A025016(n)`
-/

namespace A082648.P9206887679529078009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (2 * n) + A025016 n

end

end A082648.P9206887679529078009

/-! ## A082648.P16734563408136804934

`A025016(n)-A099894(2*n)`
-/

namespace A082648.P16734563408136804934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A099894 (2 * n)

end

end A082648.P16734563408136804934

/-! ## A082648.P5559315534145526586

`A025016(n)-A010051(2*(n+1))`
-/

namespace A082648.P5559315534145526586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A010051 (2 * (n + 1))

end

end A082648.P5559315534145526586

/-! ## A082648.P636019082673257048

`A025016(n)-A154269(2*n+1)`
-/

namespace A082648.P636019082673257048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A154269 (2 * n + 1)

end

end A082648.P636019082673257048

/-! ## A082648.P16828219949707337761

`A025016(n)-val(A000040(n+1), 2)`
-/

namespace A082648.P16828219949707337761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A082648.P16828219949707337761

/-! ## A082648.P1965976077335681914

`ceil(A025016(n)-1/A000005(n+1))`
-/

namespace A082648.P1965976077335681914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025016 n : ℚ) - 1 / (A000005 (n + 1) : ℚ)⌉

end

end A082648.P1965976077335681914

/-! ## A082648.P17643541307118108388

`A025016(n)-A000035(A001316(n))`
-/

namespace A082648.P17643541307118108388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A000035 (A001316 n).toNat

end

end A082648.P17643541307118108388

/-! ## A082648.P5574606700021258285

`A025016(n)-A000035(A004016(n))`
-/

namespace A082648.P5574606700021258285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A000035 (A004016 n).toNat

end

end A082648.P5574606700021258285

/-! ## A082648.P5383494428081789384

`A025016(n)-A000035(A005875(n))`
-/

namespace A082648.P5383494428081789384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A000035 (A005875 n).toNat

end

end A082648.P5383494428081789384

/-! ## A082648.P1332879429950763816

`A025016(n)-A008683(A008574(n))`
-/

namespace A082648.P1332879429950763816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A008683 (A008574 n).toNat

end

end A082648.P1332879429950763816

/-! ## A082648.P3991735191265660167

`A025016(n)-A000035(A000010(n+2))`
-/

namespace A082648.P3991735191265660167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A000035 (A000010 (n + 2)).toNat

end

end A082648.P3991735191265660167

/-! ## A082648.P4396436479241531779

`A025016(n)+A008683(2*A008574(n))`
-/

namespace A082648.P4396436479241531779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n + A008683 (2 * A008574 n).toNat

end

end A082648.P4396436479241531779

/-! ## A082648.P11872991216989933383

`A025016(n)-A010052(A130824(n))`
-/

namespace A082648.P11872991216989933383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A010052 (A130824 n).toNat

end

end A082648.P11872991216989933383

/-! ## A082648.P15390995285802474498

`A025016(n)-A000035(A008458(n))`
-/

namespace A082648.P15390995285802474498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n - A000035 (A008458 n).toNat

end

end A082648.P15390995285802474498

/-!
# A082649: Triangle of coefficients in expansion of sinh^2(n*x) in powers of sinh(x).

The programs for A082649, the canonical program `A082649.P333713981762825280` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082649 has offset 1).

The definition of A082649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8814 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082649.P333713981762825280

`A156308(A038722(n+1))*A262616(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A082649

/-- `A156308(A038722(n+1))*A262616(n)` -/
def P333713981762825280.Spec : Prop :=
  ∀ n, P333713981762825280.a n = A082649 (n + 1)

theorem P333713981762825280.correct : P333713981762825280.Spec := by
  intro n
  simp only [A082649, Nat.add_sub_cancel]

end A082649

/-! ## A082649.P10682230304311185840

`A130321(n)²*A156308(A038722(n+1))`
-/

namespace A082649.P10682230304311185840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A156308 (A038722 (n + 1)).toNat

end

end A082649.P10682230304311185840

namespace A082649

/-- `A130321(n)²*A156308(A038722(n+1))` -/
def P10682230304311185840.Spec : Prop :=
  ∀ n, P10682230304311185840.a n = A082649 (n + 1)

end A082649

/-! ## A082649.P2439050956494981450

`A334009(A038722(n+1))`
-/

namespace A082649.P2439050956494981450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334009 (A038722 (n + 1)).toNat

end

end A082649.P2439050956494981450

namespace A082649

/-- `A334009(A038722(n+1))` -/
def P2439050956494981450.Spec : Prop :=
  ∀ n, P2439050956494981450.a n = A082649 (n + 1)

end A082649

/-! ## A082649.P16376648610507113890

`abs(A123588(A114327(n)+A014132(n+1)))`
-/

namespace A082649.P16376648610507113890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123588 (A114327 n + A014132 (n + 1)).toNat|

end

end A082649.P16376648610507113890

namespace A082649

/-- `abs(A123588(A114327(n)+A014132(n+1)))` -/
def P16376648610507113890.Spec : Prop :=
  ∀ n, P16376648610507113890.a n = A082649 (n + 1)

end A082649

/-! ## A082649.P6330910016170539552

`abs(A123588(A061579(n)+A003057(n+2)))`
-/

namespace A082649.P6330910016170539552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123588 (A061579 n + A003057 (n + 2)).toNat|

end

end A082649.P6330910016170539552

namespace A082649

/-- `abs(A123588(A061579(n)+A003057(n+2)))` -/
def P6330910016170539552.Spec : Prop :=
  ∀ n, P6330910016170539552.a n = A082649 (n + 1)

end A082649

/-! ## A082649.P8249336432661870779

`abs(A123588(A061579(n)+A002024(n+1)+1))`
-/

namespace A082649.P8249336432661870779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123588 (A061579 n + A002024 (n + 1) + 1).toNat|

end

end A082649.P8249336432661870779

namespace A082649

/-- `abs(A123588(A061579(n)+A002024(n+1)+1))` -/
def P8249336432661870779.Spec : Prop :=
  ∀ n, P8249336432661870779.a n = A082649 (n + 1)

end A082649

/-!
# A082650: Number of primes < n of form 1+k*spf(n), where spf(n) is the smallest prime factor of n (A020639).

The programs for A082650, there is no canonical definition to state claims against.
-/

/-! ## A082650.P1089289531177210081

`A341273(A016116(n))+A033270(A348717(n+1))`
-/

namespace A082650.P1089289531177210081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341273 (A016116 n).toNat + A033270 (A348717 (n + 1)).toNat

end

end A082650.P1089289531177210081

/-! ## A082650.P15169136659694993381

`A033270(A348717(n+1))%A043689(A063007(n))`
-/

namespace A082650.P15169136659694993381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033270 (A348717 (n + 1)).toNat) (A043689 (A063007 n).toNat)

end

end A082650.P15169136659694993381

/-! ## A082650.P12310683342709111562

`A033270(A348717(n+1))+A000038(A050036(n+1))`
-/

namespace A082650.P12310683342709111562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A348717 (n + 1)).toNat + A000038 (A050036 (n + 1)).toNat

end

end A082650.P12310683342709111562

/-! ## A082650.P7653818612965185162

`A033270(A348717(n+1)%A057468(n+1))`
-/

namespace A082650.P7653818612965185162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.tmod (A348717 (n + 1)) (A057468 (n + 1))).toNat

end

end A082650.P7653818612965185162

/-! ## A082650.P8689290981497619434

`A001222(A005517(n+1))%A260739(n+1)`
-/

namespace A082650.P8689290981497619434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A005517 (n + 1)).toNat) (A260739 (n + 1))

end

end A082650.P8689290981497619434

/-!
# A082651: Positive integer values of n such that 5n^2+11 is a square.

The programs for A082651, the canonical program `A082651.P16882479976358102235` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082651 has offset 1).

The definition of A082651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082651.P16882479976358102235

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=25, a(3)=127`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082651

/-- `18*a(n-2)-a(n-4)` -/
def P16882479976358102235.Spec : Prop :=
  ∀ n, P16882479976358102235.a n = A082651 (n + 1)

theorem P16882479976358102235.correct : P16882479976358102235.Spec := by
  intro n
  simp only [A082651, Nat.add_sub_cancel]

end A082651

/-! ## A082651.P17588295041419923170

`A254627(n+1)+A077262(n)`
-/

namespace A082651.P17588295041419923170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254627 (n + 1) + A077262 n

end

end A082651.P17588295041419923170

namespace A082651

/-- `A254627(n+1)+A077262(n)` -/
def P17588295041419923170.Spec : Prop :=
  ∀ n, P17588295041419923170.a n = A082651 (n + 1)

end A082651

/-! ## A082651.P4336973112061447559

`A020695(3*n)-A005247(3*n)/2`
-/

namespace A082651.P4336973112061447559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020695 (3 * n) : ℚ) - (A005247 (3 * n) : ℚ) / 2

end

end A082651.P4336973112061447559

namespace A082651

/-- `A020695(3*n)-A005247(3*n)/2` -/
def P4336973112061447559.Spec : Prop :=
  ∀ n, P4336973112061447559.a n = (A082651 (n + 1) : ℚ)

end A082651

/-! ## A082651.P6468942777651578204

`A133586(3*n+1)+A000045(3*n)/2`
-/

namespace A082651.P6468942777651578204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133586 (3 * n + 1) : ℚ) + (A000045 (3 * n) : ℚ) / 2

end

end A082651.P6468942777651578204

namespace A082651

/-- `A133586(3*n+1)+A000045(3*n)/2` -/
def P6468942777651578204.Spec : Prop :=
  ∀ n, P6468942777651578204.a n = (A082651 (n + 1) : ℚ)

end A082651

/-! ## A082651.P1278214421993291310

`A109794(A016777(n))-A001076(n)`
-/

namespace A082651.P1278214421993291310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (A016777 n).toNat - A001076 n

end

end A082651.P1278214421993291310

namespace A082651

/-- `A109794(A016777(n))-A001076(n)` -/
def P1278214421993291310.Spec : Prop :=
  ∀ n, P1278214421993291310.a n = A082651 (n + 1)

end A082651

/-! ## A082651.P7942566327275849785

`A293014(∑[4/A000034(n)])+A077262(n)`
-/

namespace A082651.P7942566327275849785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A077262 n

end

end A082651.P7942566327275849785

namespace A082651

/-- `A293014(∑[4/A000034(n)])+A077262(n)` -/
def P7942566327275849785.Spec : Prop :=
  ∀ n, P7942566327275849785.a n = A082651 (n + 1)

end A082651

/-! ## A082651.P13402816851818614934

`A254627(n+1)+A100886(A047233(n+1))`
-/

namespace A082651.P13402816851818614934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254627 (n + 1) + A100886 (A047233 (n + 1)).toNat

end

end A082651.P13402816851818614934

namespace A082651

/-- `A254627(n+1)+A100886(A047233(n+1))` -/
def P13402816851818614934.Spec : Prop :=
  ∀ n, P13402816851818614934.a n = A082651 (n + 1)

end A082651

/-! ## A082651.P6931260473169048927

`A254627(n+1)+A245968(A007310(n+1))`
-/

namespace A082651.P6931260473169048927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254627 (n + 1) + A245968 (A007310 (n + 1)).toNat

end

end A082651.P6931260473169048927

namespace A082651

/-- `A254627(n+1)+A245968(A007310(n+1))` -/
def P6931260473169048927.Spec : Prop :=
  ∀ n, P6931260473169048927.a n = A082651 (n + 1)

end A082651

/-! ## A082651.P17100715143941452093

`A228208(3*n+2)/2`
-/

namespace A082651.P17100715143941452093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228208 (3 * n + 2) : ℚ) / 2

end

end A082651.P17100715143941452093

namespace A082651

/-- `A228208(3*n+2)/2` -/
def P17100715143941452093.Spec : Prop :=
  ∀ n, P17100715143941452093.a n = (A082651 (n + 1) : ℚ)

end A082651

/-! ## A082651.P3997635313488511

`(A140833(3*n)+A020695(3*n))/2`
-/

namespace A082651.P3997635313488511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140833 (3 * n) + A020695 (3 * n) : ℚ) / 2

end

end A082651.P3997635313488511

namespace A082651

/-- `(A140833(3*n)+A020695(3*n))/2` -/
def P3997635313488511.Spec : Prop :=
  ∀ n, P3997635313488511.a n = (A082651 (n + 1) : ℚ)

end A082651

/-! ## A082651.P7569910748171533923

`Δ[record[A167808(2*n+1)-A167808(2*n)]]`
-/

namespace A082651.P7569910748171533923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (2 * n + 1) - A167808 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082651.P7569910748171533923

namespace A082651

/-- `Δ[record[A167808(2*n+1)-A167808(2*n)]]` -/
def P7569910748171533923.Spec : Prop :=
  ∀ n, P7569910748171533923.a n = A082651 (n + 1)

end A082651

/-!
# A082652: Triangle read by rows: T(n,k) is the number of squares that can be found in a k X n rectangular grid of little squares, for 1 <= k <= n.

The programs for A082652, the canonical program `A082652.P13720706004020418959` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082652 has offset 1).

The definition of A082652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082652.P12025950943009404192

`A193975(n)-A000217(A002260(n+1))`
-/

namespace A082652.P12025950943009404192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193975 n - A000217 (A002260 (n + 1)).toNat

end

end A082652.P12025950943009404192

namespace A082652

/-- `A193975(n)-A000217(A002260(n+1))` -/
def P12025950943009404192.Spec : Prop :=
  ∀ n, P12025950943009404192.a n = A082652 (n + 1)

end A082652

/-! ## A082652.P13720706004020418959

`A104634(A038722(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082652

/-- `A104634(A038722(n+1))` -/
def P13720706004020418959.Spec : Prop :=
  ∀ n, P13720706004020418959.a n = A082652 (n + 1)

theorem P13720706004020418959.correct : P13720706004020418959.Spec := by
  intro n
  simp only [A082652, Nat.add_sub_cancel]

end A082652

/-! ## A082652.P12992357464282583284

`A104634(A061579(n)+1)`
-/

namespace A082652.P12992357464282583284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A061579 n + 1).toNat

end

end A082652.P12992357464282583284

namespace A082652

/-- `A104634(A061579(n)+1)` -/
def P12992357464282583284.Spec : Prop :=
  ∀ n, P12992357464282583284.a n = A082652 (n + 1)

end A082652

/-! ## A082652.P3373358378392379911

`A104634(A093995(n+1)-n)`
-/

namespace A082652.P3373358378392379911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A082652.P3373358378392379911

namespace A082652

/-- `A104634(A093995(n+1)-n)` -/
def P3373358378392379911.Spec : Prop :=
  ∀ n, P3373358378392379911.a n = A082652 (n + 1)

end A082652

/-! ## A082652.P1519829989224455764

`A104634(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A082652.P1519829989224455764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A082652.P1519829989224455764

namespace A082652

/-- `A104634(A004736(n+1)+n+1-A002260(n+1))` -/
def P1519829989224455764.Spec : Prop :=
  ∀ n, P1519829989224455764.a n = A082652 (n + 1)

end A082652

/-! ## A082652.P11418476548157768322

`A193891(comp[∑[n-1]])`
-/

namespace A082652.P11418476548157768322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082652.P11418476548157768322

namespace A082652

/-- `A193891(comp[∑[n-1]])` -/
def P11418476548157768322.Spec : Prop :=
  ∀ n, P11418476548157768322.a n = A082652 (n + 1)

end A082652

/-! ## A082652.P15549481483056879521

`A115262(A245300(n))`
-/

namespace A082652.P15549481483056879521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 (A245300 n).toNat

end

end A082652.P15549481483056879521

namespace A082652

/-- `A115262(A245300(n))` -/
def P15549481483056879521.Spec : Prop :=
  ∀ n, P15549481483056879521.a n = A082652 (n + 1)

end A082652

/-! ## A082652.P301702026354065812

`A140765(n)+A000292(A002260(n+1))`
-/

namespace A082652.P301702026354065812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + A000292 (A002260 (n + 1)).toNat

end

end A082652.P301702026354065812

namespace A082652

/-- `A140765(n)+A000292(A002260(n+1))` -/
def P301702026354065812.Spec : Prop :=
  ∀ n, P301702026354065812.a n = A082652 (n + 1)

end A082652

/-!
# A082654: Order of 4 mod n-th prime: least k such that prime(n) divides 4^k-1, n >= 2.

The programs for A082654, there is no canonical definition to state claims against.
-/

/-! ## A082654.P11593258169206690653

`A053447(A102781(n+1))-A000007(n)`
-/

namespace A082654.P11593258169206690653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A102781 (n + 1)).toNat - A000007 n

end

end A082654.P11593258169206690653

/-! ## A082654.P10029189022042554438

`A003558(A102781(n+1))%A002522(n)`
-/

namespace A082654.P10029189022042554438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003558 (A102781 (n + 1)).toNat) (A002522 n)

end

end A082654.P10029189022042554438

/-! ## A082654.P4898204283407839264

`A053447(A102781(n+1))%A000124(n)`
-/

namespace A082654.P4898204283407839264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053447 (A102781 (n + 1)).toNat) (A000124 n)

end

end A082654.P4898204283407839264

/-! ## A082654.P15380938129762562851

`A003558(A130290(n+1))%∑[A002033(n)]`
-/

namespace A082654.P15380938129762562851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003558 (A130290 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082654.P15380938129762562851

/-! ## A082654.P16393800483587597211

`A216829(A111333(n+1))%A006093(n+1)`
-/

namespace A082654.P16393800483587597211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216829 (A111333 (n + 1)).toNat) (A006093 (n + 1))

end

end A082654.P16393800483587597211

/-! ## A082654.P6416172657480812581

`A102781(n+1)+A003558(A102781(n+1))-A130290(n+1)`
-/

namespace A082654.P6416172657480812581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + (A003558 (A102781 (n + 1)).toNat - A130290 (n + 1))

end

end A082654.P6416172657480812581

/-! ## A082654.P12807676626040023455

`A007735(p?[xor(1, n)])%(n+1)²`
-/

namespace A082654.P12807676626040023455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) ((n + 1) ^ 2 : ℤ)

end

end A082654.P12807676626040023455

/-! ## A082654.P8313836159759778050

`A007735(p?[A324050(n+1)])%∑[n+1]`
-/

namespace A082654.P8313836159759778050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A082654.P8313836159759778050

/-! ## A082654.P13249147172985984979

`A007735(A000040(n+1))%A002624(n)`
-/

namespace A082654.P13249147172985984979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (A000040 (n + 1)).toNat) (A002624 n)

end

end A082654.P13249147172985984979

/-! ## A082654.P9871423641229254398

`A054705(A000040(n+1))%A016754(n)`
-/

namespace A082654.P9871423641229254398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054705 (A000040 (n + 1)).toNat) (A016754 n)

end

end A082654.P9871423641229254398

/-! ## A082654.P3982917776171497670

`A026741(A323376(∑[n+1]))`
-/

namespace A082654.P3982917776171497670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A323376 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A082654.P3982917776171497670

/-!
# A082657: Integers expressible as the sum of a square and a triangular number in just one way.

The programs for A082657, the canonical program `A082657.P13976561059953945829` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082657 has offset 1).

The definition of A082657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082657.P5162715052869222465

`eq[1, A082660(n+1)]+1`
-/

namespace A082657.P5162715052869222465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082657.P5162715052869222465

namespace A082657

/-- `eq[1, A082660(n+1)]+1` -/
def P5162715052869222465.Spec : Prop :=
  ∀ n, (P5162715052869222465.a n : ℤ) = A082657 (n + 1)

end A082657

/-! ## A082657.P13976561059953945829

`eq[A010052(n)+1, A101428(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A082657

/-- `eq[A010052(n)+1, A101428(n)]` -/
def P13976561059953945829.Spec : Prop :=
  ∀ n, (P13976561059953945829.a n : ℤ) = A082657 (n + 1)

theorem P13976561059953945829.correct : P13976561059953945829.Spec := by
  intro n
  simp only [A082657, Nat.add_sub_cancel]

end A082657

/-! ## A082657.P3897231461225217905

`eq[gcd(2, A032741(n)), A101428(n)]`
-/

namespace A082657.P3897231461225217905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A032741 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082657.P3897231461225217905

namespace A082657

/-- `eq[gcd(2, A032741(n)), A101428(n)]` -/
def P3897231461225217905.Spec : Prop :=
  ∀ n, (P3897231461225217905.a n : ℤ) = A082657 (n + 1)

end A082657

/-! ## A082657.P5593300478866116134

`record[(n+1)/A120731(A082660(n+1)²)]`
-/

namespace A082657.P5593300478866116134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A120731 ((A082660 (n + 1) ^ 2).toNat + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082657.P5593300478866116134

namespace A082657

/-- `record[(n+1)/A120731(A082660(n+1)²)]` -/
def P5593300478866116134.Spec : Prop :=
  ∀ n, P5593300478866116134.a n = (A082657 (n + 1) : ℚ)

end A082657

/-! ## A082657.P17438755312144901307

`eq[n, A028310(n)*A082660(A028310(n))]`
-/

namespace A082657.P17438755312144901307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A082660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082657.P17438755312144901307

namespace A082657

/-- `eq[n, A028310(n)*A082660(A028310(n))]` -/
def P17438755312144901307.Spec : Prop :=
  ∀ n, (P17438755312144901307.a n : ℤ) = A082657 (n + 1)

end A082657

/-! ## A082657.P7568887107213156633

`eq[1, A101428(n)-A010052(n)]%A027688(n)`
-/

namespace A082657.P7568887107213156633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n - A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A027688 n)

end

end A082657.P7568887107213156633

namespace A082657

/-- `eq[1, A101428(n)-A010052(n)]%A027688(n)` -/
def P7568887107213156633.Spec : Prop :=
  ∀ n, P7568887107213156633.a n = A082657 (n + 1)

end A082657

/-! ## A082657.P13585361148482867477

`eq[A101428(n)-A010052(n), A003215(n)%2]`
-/

namespace A082657.P13585361148482867477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n - A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082657.P13585361148482867477

namespace A082657

/-- `eq[A101428(n)-A010052(n), A003215(n)%2]` -/
def P13585361148482867477.Spec : Prop :=
  ∀ n, (P13585361148482867477.a n : ℤ) = A082657 (n + 1)

end A082657

/-!
# A082658: Integers expressible as the sum of a square and a triangular number in exactly two distinct ways.

The programs for A082658, the canonical program `A082658.P12531290815627786350` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082658 has offset 1).

The definition of A082658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082658.P7667459741254603636

`eq[2, A082660(n+1)]+1`
-/

namespace A082658.P7667459741254603636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082658.P7667459741254603636

namespace A082658

/-- `eq[2, A082660(n+1)]+1` -/
def P7667459741254603636.Spec : Prop :=
  ∀ n, (P7667459741254603636.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P15839159175314724398

`eq[2, A082660(A028310(n))]`
-/

namespace A082658.P15839159175314724398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082658.P15839159175314724398

namespace A082658

/-- `eq[2, A082660(A028310(n))]` -/
def P15839159175314724398.Spec : Prop :=
  ∀ n, (P15839159175314724398.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P17230833462350942361

`A020725(eq[2, A082660(n+1)])`
-/

namespace A082658.P17230833462350942361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082658.P17230833462350942361

namespace A082658

/-- `A020725(eq[2, A082660(n+1)])` -/
def P17230833462350942361.Spec : Prop :=
  ∀ n, P17230833462350942361.a n = A082658 (n + 1)

end A082658

/-! ## A082658.P13133809828406273309

`eq[2, A082660(A000038(n)+n)]`
-/

namespace A082658.P13133809828406273309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082658.P13133809828406273309

namespace A082658

/-- `eq[2, A082660(A000038(n)+n)]` -/
def P13133809828406273309.Spec : Prop :=
  ∀ n, (P13133809828406273309.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P12531290815627786350

`eq[A010052(n)+2, A101428(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A082658

/-- `eq[A010052(n)+2, A101428(n)]` -/
def P12531290815627786350.Spec : Prop :=
  ∀ n, (P12531290815627786350.a n : ℤ) = A082658 (n + 1)

theorem P12531290815627786350.correct : P12531290815627786350.Spec := by
  intro n
  simp only [A082658, Nat.add_sub_cancel]

end A082658

/-! ## A082658.P13612226429405054901

`A000027(eq[2, A101428(n)-A010052(n)])`
-/

namespace A082658.P13612226429405054901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n - A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082658.P13612226429405054901

namespace A082658

/-- `A000027(eq[2, A101428(n)-A010052(n)])` -/
def P13612226429405054901.Spec : Prop :=
  ∀ n, P13612226429405054901.a n = A082658 (n + 1)

end A082658

/-! ## A082658.P12261408917476674192

`eq[A101428(n)-A010052(n), 2%A027688(n)]`
-/

namespace A082658.P12261408917476674192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n - A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A027688 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082658.P12261408917476674192

namespace A082658

/-- `eq[A101428(n)-A010052(n), 2%A027688(n)]` -/
def P12261408917476674192.Spec : Prop :=
  ∀ n, (P12261408917476674192.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P5684603097598678895

`eq[A101428(n)-A010052(n), A005901(n)%5]`
-/

namespace A082658.P5684603097598678895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n - A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005901 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082658.P5684603097598678895

namespace A082658

/-- `eq[A101428(n)-A010052(n), A005901(n)%5]` -/
def P5684603097598678895.Spec : Prop :=
  ∀ n, (P5684603097598678895.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P2547288532097786203

`eq[2, A082660(A065033(2*n))]`
-/

namespace A082658.P2547288532097786203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082658.P2547288532097786203

namespace A082658

/-- `eq[2, A082660(A065033(2*n))]` -/
def P2547288532097786203.Spec : Prop :=
  ∀ n, (P2547288532097786203.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P10914801158446112020

`eq[2, A082660(A123108(2*n))]`
-/

namespace A082658.P10914801158446112020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082658.P10914801158446112020

namespace A082658

/-- `eq[2, A082660(A123108(2*n))]` -/
def P10914801158446112020.Spec : Prop :=
  ∀ n, (P10914801158446112020.a n : ℤ) = A082658 (n + 1)

end A082658

/-! ## A082658.P13270806092443345043

`eq[2, A082660(A233583(n+1))]`
-/

namespace A082658.P13270806092443345043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082658.P13270806092443345043

namespace A082658

/-- `eq[2, A082660(A233583(n+1))]` -/
def P13270806092443345043.Spec : Prop :=
  ∀ n, (P13270806092443345043.a n : ℤ) = A082658 (n + 1)

end A082658

/-!
# A082659: Integers expressible as the sum of a square and a triangular number in exactly three distinct ways.

The programs for A082659, the canonical program `A082659.P17645007144944071936` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082659 has offset 1).

The definition of A082659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082659.P17645007144944071936

`eq[3, A082660(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A082659

/-- `eq[3, A082660(n+1)]+1` -/
def P17645007144944071936.Spec : Prop :=
  ∀ n, (P17645007144944071936.a n : ℤ) = A082659 (n + 1)

theorem P17645007144944071936.correct : P17645007144944071936.Spec := by
  intro n
  simp only [A082659, Nat.add_sub_cancel]

end A082659

/-! ## A082659.P17861400283184445228

`eq[3, A082660(A028310(n))]`
-/

namespace A082659.P17861400283184445228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082659.P17861400283184445228

namespace A082659

/-- `eq[3, A082660(A028310(n))]` -/
def P17861400283184445228.Spec : Prop :=
  ∀ n, (P17861400283184445228.a n : ℤ) = A082659 (n + 1)

end A082659

/-! ## A082659.P17256231224386852294

`A020725(eq[3, A082660(n+1)])`
-/

namespace A082659.P17256231224386852294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082659.P17256231224386852294

namespace A082659

/-- `A020725(eq[3, A082660(n+1)])` -/
def P17256231224386852294.Spec : Prop :=
  ∀ n, P17256231224386852294.a n = A082659 (n + 1)

end A082659

/-! ## A082659.P4106192093642986180

`eq[3, A082660(A065033(2*n))]`
-/

namespace A082659.P4106192093642986180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082659.P4106192093642986180

namespace A082659

/-- `eq[3, A082660(A065033(2*n))]` -/
def P4106192093642986180.Spec : Prop :=
  ∀ n, (P4106192093642986180.a n : ℤ) = A082659 (n + 1)

end A082659

/-! ## A082659.P9158364868131448122

`eq[3, A082660(A233583(n+1))]`
-/

namespace A082659.P9158364868131448122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082659.P9158364868131448122

namespace A082659

/-- `eq[3, A082660(A233583(n+1))]` -/
def P9158364868131448122.Spec : Prop :=
  ∀ n, (P9158364868131448122.a n : ℤ) = A082659 (n + 1)

end A082659

/-!
# A082660: Number of ways n can be expressed as the sum of a square and a triangular number.

The programs for A082660, the canonical program `A082660.P14426502588101245552` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082660 has offset 1).

The definition of A082660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082660.P14426502588101245552

`Δ[∑[A101428(n)]-A000196(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A082660

/-- `Δ[∑[A101428(n)]-A000196(n)]` -/
def P14426502588101245552.Spec : Prop :=
  ∀ n, P14426502588101245552.a n = A082660 (n + 1)

theorem P14426502588101245552.correct : P14426502588101245552.Spec := by
  intro n
  simp only [A082660, Nat.add_sub_cancel]

end A082660

/-! ## A082660.P8483965174500371230

`A101428(n+1)-Δ[A000196(n)]`
-/

namespace A082660.P8483965174500371230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082660.P8483965174500371230

namespace A082660

/-- `A101428(n+1)-Δ[A000196(n)]` -/
def P8483965174500371230.Spec : Prop :=
  ∀ n, P8483965174500371230.a n = A082660 (n + 1)

end A082660

/-! ## A082660.P3696196212435596107

`A101428(n+1)-char[A005563(n)]`
-/

namespace A082660.P3696196212435596107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A082660.P3696196212435596107

namespace A082660

/-- `A101428(n+1)-char[A005563(n)]` -/
def P3696196212435596107.Spec : Prop :=
  ∀ n, P3696196212435596107.a n = A082660 (n + 1)

end A082660

/-! ## A082660.P444542849408350460

`A101428(n+1)-A010052(n+1)`
-/

namespace A082660.P444542849408350460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 (n + 1) - A010052 (n + 1)

end

end A082660.P444542849408350460

namespace A082660

/-- `A101428(n+1)-A010052(n+1)` -/
def P444542849408350460.Spec : Prop :=
  ∀ n, P444542849408350460.a n = A082660 (n + 1)

end A082660

/-! ## A082660.P5594453042903889032

`A101428(n+1)-A000035(A032741(n+1)+1)`
-/

namespace A082660.P5594453042903889032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 (n + 1) - A000035 (A032741 (n + 1) + 1).toNat

end

end A082660.P5594453042903889032

namespace A082660

/-- `A101428(n+1)-A000035(A032741(n+1)+1)` -/
def P5594453042903889032.Spec : Prop :=
  ∀ n, P5594453042903889032.a n = A082660 (n + 1)

end A082660

/-! ## A082660.P13402749787013620681

`A101428(n+1)+A000196(n)-A000196(n+1)`
-/

namespace A082660.P13402749787013620681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 (n + 1) + (A000196 n - A000196 (n + 1))

end

end A082660.P13402749787013620681

namespace A082660

/-- `A101428(n+1)+A000196(n)-A000196(n+1)` -/
def P13402749787013620681.Spec : Prop :=
  ∀ n, P13402749787013620681.a n = A082660 (n + 1)

end A082660

/-!
# A082662: Numbers k such that the odd part of k is less than sqrt(2k).

The programs for A082662, the canonical program `A082662.P8548728967217920194` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082662 has offset 1).

The definition of A082662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082662.P2992202176602703926

`∑[round((n+1)/a(n-1))*a(n-1)]/2` with `a(0)=2`
-/

namespace A082662.P2992202176602703926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (f1 (n - 1) : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A082662.P2992202176602703926

namespace A082662

/-- `∑[round((n+1)/a(n-1))*a(n-1)]/2` -/
def P2992202176602703926.Spec : Prop :=
  ∀ n, P2992202176602703926.a n = (A082662 (n + 1) : ℚ)

end A082662

/-! ## A082662.P9199279922222378310

`floor(A080075(n+1)/2)`
-/

namespace A082662.P9199279922222378310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080075 (n + 1) : ℚ) / 2⌋

end

end A082662.P9199279922222378310

namespace A082662

/-- `floor(A080075(n+1)/2)` -/
def P9199279922222378310.Spec : Prop :=
  ∀ n, P9199279922222378310.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P18225971150989958661

`ceil(A112714(n+1)/2)`
-/

namespace A082662.P18225971150989958661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112714 (n + 1) : ℚ) / 2⌉

end

end A082662.P18225971150989958661

namespace A082662

/-- `ceil(A112714(n+1)/2)` -/
def P18225971150989958661.Spec : Prop :=
  ∀ n, P18225971150989958661.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P2139267699841420900

`∑[2^A099396(n+1)]`
-/

namespace A082662.P2139267699841420900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A099396 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P2139267699841420900

namespace A082662

/-- `∑[2^A099396(n+1)]` -/
def P2139267699841420900.Spec : Prop :=
  ∀ n, P2139267699841420900.a n = (A082662 (n + 1) : ℚ)

end A082662

/-! ## A082662.P7412657716525476540

`∑[A000079(ceil(log2((n+2)/3)))]`
-/

namespace A082662.P7412657716525476540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈Real.logb 2 ((n + 2 : ℚ) / 3 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P7412657716525476540

namespace A082662

/-- `∑[A000079(ceil(log2((n+2)/3)))]` -/
def P7412657716525476540.Spec : Prop :=
  ∀ n, P7412657716525476540.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P10183412960580483817

`∑[a(n-1)*A000010(floor((n+1)/a(n-1)))]` with `a(0)=1`
-/

namespace A082662.P10183412960580483817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A000010 ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P10183412960580483817

namespace A082662

/-- `∑[a(n-1)*A000010(floor((n+1)/a(n-1)))]` -/
def P10183412960580483817.Spec : Prop :=
  ∀ n, P10183412960580483817.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P8548728967217920194

`∑[a(n-1)*A000045(floor((n+1)/a(n-1)))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082662

/-- `∑[a(n-1)*A000045(floor((n+1)/a(n-1)))]` -/
def P8548728967217920194.Spec : Prop :=
  ∀ n, P8548728967217920194.a n = A082662 (n + 1)

theorem P8548728967217920194.correct : P8548728967217920194.Spec := by
  intro n
  simp only [A082662, Nat.add_sub_cancel]

end A082662

/-! ## A082662.P15824210099163028285

`∑[A053644(A004396(n+1))]`
-/

namespace A082662.P15824210099163028285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P15824210099163028285

namespace A082662

/-- `∑[A053644(A004396(n+1))]` -/
def P15824210099163028285.Spec : Prop :=
  ∀ n, P15824210099163028285.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P9737180749178689712

`∑[A053644(A006165(n+1))]`
-/

namespace A082662.P9737180749178689712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P9737180749178689712

namespace A082662

/-- `∑[A053644(A006165(n+1))]` -/
def P9737180749178689712.Spec : Prop :=
  ∀ n, P9737180749178689712.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P7917185121285122969

`∑[∏[A089026(A003958(n+1))]]`
-/

namespace A082662.P7917185121285122969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A003958 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P7917185121285122969

namespace A082662

/-- `∑[∏[A089026(A003958(n+1))]]` -/
def P7917185121285122969.Spec : Prop :=
  ∀ n, P7917185121285122969.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P6029525496964586308

`(A277267(n+1)+1)*A078881(n+1)`
-/

namespace A082662.P6029525496964586308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277267 (n + 1) + 1) * A078881 (n + 1)

end

end A082662.P6029525496964586308

namespace A082662

/-- `(A277267(n+1)+1)*A078881(n+1)` -/
def P6029525496964586308.Spec : Prop :=
  ∀ n, P6029525496964586308.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P7826448304548939565

`A060973(n+2)*A078881(n+1)`
-/

namespace A082662.P7826448304548939565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (n + 2) * A078881 (n + 1)

end

end A082662.P7826448304548939565

namespace A082662

/-- `A060973(n+2)*A078881(n+1)` -/
def P7826448304548939565.Spec : Prop :=
  ∀ n, P7826448304548939565.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P17979545268710830625

`A006165(n+2)*A060973(n+2)`
-/

namespace A082662.P17979545268710830625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) * A060973 (n + 2)

end

end A082662.P17979545268710830625

namespace A082662

/-- `A006165(n+2)*A060973(n+2)` -/
def P17979545268710830625.Spec : Prop :=
  ∀ n, P17979545268710830625.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P6666488919222193686

`(A078881(n+1)-A053646(n+2))*A078881(n+1)`
-/

namespace A082662.P6666488919222193686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078881 (n + 1) - A053646 (n + 2)) * A078881 (n + 1)

end

end A082662.P6666488919222193686

namespace A082662

/-- `(A078881(n+1)-A053646(n+2))*A078881(n+1)` -/
def P6666488919222193686.Spec : Prop :=
  ∀ n, P6666488919222193686.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P14516609838244344254

`A006165(n+2)+A006165(n+2)*A277267(n+1)`
-/

namespace A082662.P14516609838244344254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) + A006165 (n + 2) * A277267 (n + 1)

end

end A082662.P14516609838244344254

namespace A082662

/-- `A006165(n+2)+A006165(n+2)*A277267(n+1)` -/
def P14516609838244344254.Spec : Prop :=
  ∀ n, P14516609838244344254.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P2301358279711146444

`(A060973(n+2)+A053646(n+2))*A060973(n+2)`
-/

namespace A082662.P2301358279711146444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060973 (n + 2) + A053646 (n + 2)) * A060973 (n + 2)

end

end A082662.P2301358279711146444

namespace A082662

/-- `(A060973(n+2)+A053646(n+2))*A060973(n+2)` -/
def P2301358279711146444.Spec : Prop :=
  ∀ n, P2301358279711146444.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P10281961078035667776

`(A006165(n+2)-A053646(n+2))*A006165(n+2)`
-/

namespace A082662.P10281961078035667776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006165 (n + 2) - A053646 (n + 2)) * A006165 (n + 2)

end

end A082662.P10281961078035667776

namespace A082662

/-- `(A006165(n+2)-A053646(n+2))*A006165(n+2)` -/
def P10281961078035667776.Spec : Prop :=
  ∀ n, P10281961078035667776.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P14628717272615874397

`∑[A004762(n+3)-(n+1)]`
-/

namespace A082662.P14628717272615874397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 3) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P14628717272615874397

namespace A082662

/-- `∑[A004762(n+3)-(n+1)]` -/
def P14628717272615874397.Spec : Prop :=
  ∀ n, P14628717272615874397.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P11998611429131824555

`A078881(n+1)*A352228(n+3)`
-/

namespace A082662.P11998611429131824555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) * A352228 (n + 3)

end

end A082662.P11998611429131824555

namespace A082662

/-- `A078881(n+1)*A352228(n+3)` -/
def P11998611429131824555.Spec : Prop :=
  ∀ n, P11998611429131824555.a n = A082662 (n + 1)

end A082662

/-! ## A082662.P9739281056215586198

`A006165(n+2)*A352228(n+3)`
-/

namespace A082662.P9739281056215586198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) * A352228 (n + 3)

end

end A082662.P9739281056215586198

namespace A082662

/-- `A006165(n+2)*A352228(n+3)` -/
def P9739281056215586198.Spec : Prop :=
  ∀ n, P9739281056215586198.a n = A082662 (n + 1)

end A082662

/-!
# A082663: Odd semiprimes p*q with p < q < 2*p.

The programs for A082663, there is no canonical definition to state claims against.
-/

/-! ## A082663.P2535034525985700128

`A082683(n+1)*A082684(n+1)`
-/

namespace A082663.P2535034525985700128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082683 (n + 1) * A082684 (n + 1)

end

end A082663.P2535034525985700128

/-! ## A082663.P3560233779190512592

`A186777(n+4)`
-/

namespace A082663.P3560233779190512592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186777 (n + 4)

end

end A082663.P3560233779190512592

/-! ## A082663.P13125995829312042602

`∩[A087718(n+1), A128907(n+1)]`
-/

namespace A082663.P13125995829312042602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P13125995829312042602

/-! ## A082663.P5283873920977264402

`∩[A089341(n+1), A128907(n+1)]`
-/

namespace A082663.P5283873920977264402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P5283873920977264402

/-! ## A082663.P7688427096390998764

`∩[A087718(n+1), A346641(n+1)]`
-/

namespace A082663.P7688427096390998764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P7688427096390998764

/-! ## A082663.P261588931706885254

`∩[A089341(n+1), A346641(n+1)]`
-/

namespace A082663.P261588931706885254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P261588931706885254

/-! ## A082663.P8833903770663759635

`∩[A128907(n+1), A346641(n+1)]`
-/

namespace A082663.P8833903770663759635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P8833903770663759635

/-! ## A082663.P6313723302690925417

`∩[A128907(n+1), A302022(n+1)]`
-/

namespace A082663.P6313723302690925417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P6313723302690925417

/-! ## A082663.P16157548068739858038

`∩[A138109(n+1), A346641(n+1)]`
-/

namespace A082663.P16157548068739858038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P16157548068739858038

/-! ## A082663.P8575547916884942371

`∩[A251728(n+1), A346641(n+1)]`
-/

namespace A082663.P8575547916884942371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P8575547916884942371

/-! ## A082663.P1020751345699243497

`∩[A346641(n+1), A377713(n+1)]`
-/

namespace A082663.P1020751345699243497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P1020751345699243497

/-! ## A082663.P2582844338628877866

`∩[A128907(n+1), A319529(n+1)]`
-/

namespace A082663.P2582844338628877866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P2582844338628877866

/-! ## A082663.P15894609098096864507

`∩[A138109(n+1), A319529(n+1)]`
-/

namespace A082663.P15894609098096864507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082663.P15894609098096864507

/-! ## A082663.P10055716189256422395

`filter[A087718(n+1), A359465(#)]`
-/

namespace A082663.P10055716189256422395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A082663.P10055716189256422395

/-! ## A082663.P8071250751037654691

`filter[A087718(n+1), A374474(#)]`
-/

namespace A082663.P8071250751037654691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A082663.P8071250751037654691

/-! ## A082663.P7334406115367986162

`filter[A087718(n+1), A380469(#)]`
-/

namespace A082663.P7334406115367986162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A082663.P7334406115367986162

/-! ## A082663.P17998494332605490999

`filter[A302022(n+1), A359465(#)]`
-/

namespace A082663.P17998494332605490999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A082663.P17998494332605490999

/-! ## A082663.P1781533522130438560

`filter[A319529(n+1), A374128(#)]`
-/

namespace A082663.P1781533522130438560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A082663.P1781533522130438560

/-! ## A082663.P8326189760318620148

`filter[A346641(n+1), A354927(#)]`
-/

namespace A082663.P8326189760318620148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A082663.P8326189760318620148

/-! ## A082663.P3535567090867337740

`filter[A346641(n+1), A359156(#)]`
-/

namespace A082663.P3535567090867337740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A082663.P3535567090867337740

/-!
# A082664: Numbers k such that A082647(k) = A000005(k) - 1.

The programs for A082664, there is no canonical definition to state claims against.
-/

/-! ## A082664.P11299646790814998322

`eq[A040001(n), A067743(n+1)]+1`
-/

namespace A082664.P11299646790814998322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082664.P11299646790814998322

/-! ## A082664.P3137764765713475064

`eq[A057979(n), A131576(n+1)]+1`
-/

namespace A082664.P3137764765713475064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082664.P3137764765713475064

/-! ## A082664.P3408964949565099071

`eq[A124625(n), A131576(n+1)]+1`
-/

namespace A082664.P3408964949565099071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082664.P3408964949565099071

/-! ## A082664.P751241679608279188

`eq[A131576(n+1), A265722(n)]+1`
-/

namespace A082664.P751241679608279188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082664.P751241679608279188

/-! ## A082664.P16598555669830296811

`record[(4*n+2)/A000041(A281009(2*n+1))]`
-/

namespace A082664.P16598555669830296811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (A000041 (A281009 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082664.P16598555669830296811

/-! ## A082664.P7430674219312540776

`eq[A032741(n), A082647(A093178(n))]`
-/

namespace A082664.P7430674219312540776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082664.P7430674219312540776

/-! ## A082664.P16874124549725825046

`A141310(eq[A040001(n), A067743(n+1)])`
-/

namespace A082664.P16874124549725825046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082664.P16874124549725825046

/-! ## A082664.P4984369585795391747

`A141310(eq[A057979(n), A131576(n+1)])`
-/

namespace A082664.P4984369585795391747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082664.P4984369585795391747

/-! ## A082664.P2502743100372320349

`A141310(eq[A124625(n), A131576(n+1)])`
-/

namespace A082664.P2502743100372320349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082664.P2502743100372320349

/-! ## A082664.P1236974578085132896

`record[(A213222(n+3)-1)/A059366(A067743(n+1))]`
-/

namespace A082664.P1236974578085132896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213222 (n + 3) - 1 : ℚ) / (A059366 (A067743 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082664.P1236974578085132896

/-! ## A082664.P2674227028082470577

`eq[2, A067743(A257088(n))]`
-/

namespace A082664.P2674227028082470577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082664.P2674227028082470577

/-! ## A082664.P12353262752370757887

`eq[A032741(n+1), A069288(2*(n+1))]+1`
-/

namespace A082664.P12353262752370757887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082664.P12353262752370757887

/-! ## A082664.P9825822107124084403

`eq[A032741(n), A069288(A266303(n))]`
-/

namespace A082664.P9825822107124084403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082664.P9825822107124084403

/-! ## A082664.P12386156003570360145

`eq[A032741(n), A082647(A257088(n))]`
-/

namespace A082664.P12386156003570360145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082664.P12386156003570360145

/-!
# A082666: a(1) = 0, for n > 1 if n = prime(k), then a(n) = k, otherwise a(n) = Sum_{d|n, d

The programs for A082666, there is no canonical definition to state claims against.
-/

/-! ## A082666.P4766147597605237026

`∑{d}[n+1, A049084(#)*A074206((n+1)/#)]`
-/

namespace A082666.P4766147597605237026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049084 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A082666.P4766147597605237026

/-! ## A082666.P6887118823292767773

`∑{d}[n+1, A066328(#)*A174725((n+1)/#)]`
-/

namespace A082666.P6887118823292767773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066328 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A082666.P6887118823292767773

/-! ## A082666.P6668944571945868843

`∑{d}[n+1, A002033(#-1)*A049084((n+1)/#)]`
-/

namespace A082666.P6668944571945868843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A049084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A082666.P6668944571945868843

/-! ## A082666.P8668601246459258485

`A325135(A319352(n+1))+A061395(n+1)`
-/

namespace A082666.P8668601246459258485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A319352 (n + 1)).toNat + A061395 (n + 1)

end

end A082666.P8668601246459258485

/-! ## A082666.P3242353545193442154

`A066328(A081123(A317937(n+1))+n)`
-/

namespace A082666.P3242353545193442154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A081123 (A317937 (n + 1)).toNat + (n : ℤ)).toNat

end

end A082666.P3242353545193442154

/-!
# A082667: a(n) = floor(2n/3) * ceiling(2n/3) / 2.

The programs for A082667, the canonical program `A082667.P16521257388027320684` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082667 has offset 1).

The definition of A082667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082667.P3343795607096184879

`floor((n+2)/3)*(n+1-floor((n+2)/3))`
-/

namespace A082667.P3343795607096184879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 3⌋ * ((n + 1 : ℤ) - ⌊(n + 2 : ℚ) / 3⌋)

end

end A082667.P3343795607096184879

namespace A082667

/-- `floor((n+2)/3)*(n+1-floor((n+2)/3))` -/
def P3343795607096184879.Spec : Prop :=
  ∀ n, P3343795607096184879.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P9098221959138096598

`floor(2*(n+1)/3)*ceil(2*(n+1)/3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082667.P9098221959138096598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(2 * (n + 1) : ℚ) / 3⌋ * ⌈(2 * (n + 1) : ℚ) / 3⌉ : ℚ) / 2

end

end A082667.P9098221959138096598

namespace A082667

/-- `floor(2*(n+1)/3)*ceil(2*(n+1)/3)/2` -/
def P9098221959138096598.Spec : Prop :=
  ∀ n, P9098221959138096598.a n = (A082667 (n + 1) : ℚ)

end A082667

/-! ## A082667.P16521257388027320684

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=8, a(6)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082667

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P16521257388027320684.Spec : Prop :=
  ∀ n, P16521257388027320684.a n = A082667 (n + 1)

theorem P16521257388027320684.correct : P16521257388027320684.Spec := by
  intro n
  simp only [A082667, Nat.add_sub_cancel]

end A082667

/-! ## A082667.P17590393017497343695

`∪[2*n², ∑[n]]`
-/

namespace A082667.P17590393017497343695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A082667.P17590393017497343695

namespace A082667

/-- `∪[2*n², ∑[n]]` -/
def P17590393017497343695.Spec : Prop :=
  ∀ n, (P17590393017497343695.a n : ℤ) = A082667 (n + 1)

end A082667

/-! ## A082667.P14420906364186004485

`∑[lcm(2, ceil(2*n/3))/2]`
-/

namespace A082667.P14420906364186004485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌈2 * ((n : ℚ) / 3)⌉ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P14420906364186004485

namespace A082667

/-- `∑[lcm(2, ceil(2*n/3))/2]` -/
def P14420906364186004485.Spec : Prop :=
  ∀ n, P14420906364186004485.a n = (A082667 (n + 1) : ℚ)

end A082667

/-! ## A082667.P11456420804611676871

`∑[abs(∑[n*(1-(n+1)%3)])]`
-/

namespace A082667.P11456420804611676871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (((n + 1) % 3 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P11456420804611676871

namespace A082667

/-- `∑[abs(∑[n*(1-(n+1)%3)])]` -/
def P11456420804611676871.Spec : Prop :=
  ∀ n, P11456420804611676871.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P18331078045118735219

`record[gcd(floor((n/2)²), round(n²/8))]`
-/

namespace A082667.P18331078045118735219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊((n : ℚ) / 2) ^ 2⌋ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082667.P18331078045118735219

namespace A082667

/-- `record[gcd(floor((n/2)²), round(n²/8))]` -/
def P18331078045118735219.Spec : Prop :=
  ∀ n, (P18331078045118735219.a n : ℤ) = A082667 (n + 1)

end A082667

/-! ## A082667.P17469653817442175317

`a(n-2)+n-∑[∑[n]]%n` with `a(0)=0, a(1)=1`
-/

namespace A082667.P17469653817442175317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % n : ℕ) : ℤ))

end

end A082667.P17469653817442175317

namespace A082667

/-- `a(n-2)+n-∑[∑[n]]%n` -/
def P17469653817442175317.Spec : Prop :=
  ∀ n, P17469653817442175317.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P4633459039794383288

`a(n-1)+(a(n-1)+2*a(n-2))%n` with `a(0)=0, a(1)=1`
-/

namespace A082667.P4633459039794383288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + 2 * a (n - 2)) % n

end

end A082667.P4633459039794383288

namespace A082667

/-- `a(n-1)+(a(n-1)+2*a(n-2))%n` -/
def P4633459039794383288.Spec : Prop :=
  ∀ n, (P4633459039794383288.a n : ℤ) = A082667 (n + 1)

end A082667

/-! ## A082667.P17009898225024020469

`a(n-1)+(a(n-2)+a(n-1)+a(n-2))%n` with `a(0)=0, a(1)=1`
-/

namespace A082667.P17009898225024020469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2))) % n

end

end A082667.P17009898225024020469

namespace A082667

/-- `a(n-1)+(a(n-2)+a(n-1)+a(n-2))%n` -/
def P17009898225024020469.Spec : Prop :=
  ∀ n, (P17009898225024020469.a n : ℤ) = A082667 (n + 1)

end A082667

/-! ## A082667.P9714835275831034438

`∑[A151842(n)]`
-/

namespace A082667.P9714835275831034438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P9714835275831034438

namespace A082667

/-- `∑[A151842(n)]` -/
def P9714835275831034438.Spec : Prop :=
  ∀ n, P9714835275831034438.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P17495139795426039690

`∑[abs(A076118(n))]`
-/

namespace A082667.P17495139795426039690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076118 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P17495139795426039690

namespace A082667

/-- `∑[abs(A076118(n))]` -/
def P17495139795426039690.Spec : Prop :=
  ∀ n, P17495139795426039690.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P8689647409141868829

`∑[∑[A131358(n)]]`
-/

namespace A082667.P8689647409141868829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P8689647409141868829

namespace A082667

/-- `∑[∑[A131358(n)]]` -/
def P8689647409141868829.Spec : Prop :=
  ∀ n, P8689647409141868829.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P15935972515740413077

`ceil(A226023(n)/2)`
-/

namespace A082667.P15935972515740413077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A226023 n : ℚ) / 2⌉

end

end A082667.P15935972515740413077

namespace A082667

/-- `ceil(A226023(n)/2)` -/
def P15935972515740413077.Spec : Prop :=
  ∀ n, P15935972515740413077.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P4580194372877909612

`∑[n-A009947(n)]`
-/

namespace A082667.P4580194372877909612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A009947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P4580194372877909612

namespace A082667

/-- `∑[n-A009947(n)]` -/
def P4580194372877909612.Spec : Prop :=
  ∀ n, P4580194372877909612.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P14468648705727071814

`∑[abs(∑[A255368(n)])]`
-/

namespace A082667.P14468648705727071814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255368 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P14468648705727071814

namespace A082667

/-- `∑[abs(∑[A255368(n)])]` -/
def P14468648705727071814.Spec : Prop :=
  ∀ n, P14468648705727071814.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P14455977563869289528

`∑[abs(∑[n*A102283(n)])]`
-/

namespace A082667.P14455977563869289528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P14455977563869289528

namespace A082667

/-- `∑[abs(∑[n*A102283(n)])]` -/
def P14455977563869289528.Spec : Prop :=
  ∀ n, P14455977563869289528.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P14194565917297959295

`A186101(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A082667.P14194565917297959295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A186101 n + a (n - 2)

end

end A082667.P14194565917297959295

namespace A082667

/-- `A186101(n)+a(n-2)` -/
def P14194565917297959295.Spec : Prop :=
  ∀ n, P14194565917297959295.a n = A082667 (n + 1)

end A082667

/-! ## A082667.P13516250595726747527

`∑[round(n*(char[A016777(n)]+1)/3)]`
-/

namespace A082667.P13516250595726747527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) : ℕ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082667.P13516250595726747527

namespace A082667

/-- `∑[round(n*(char[A016777(n)]+1)/3)]` -/
def P13516250595726747527.Spec : Prop :=
  ∀ n, P13516250595726747527.a n = A082667 (n + 1)

end A082667

/-!
# A082668: (10^n)-th zero of the Riemann zeta function rounded to the nearest integer.

The programs for A082668, there is no canonical definition to state claims against.
-/

/-! ## A082668.P11692656537130553285

`A002410(10^n)`
-/

namespace A082668.P11692656537130553285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (10 ^ n)

end

end A082668.P11692656537130553285

/-!
# A082669: a(n) = p(n)*(p(n)-1)/2 where p(n) = upper member of n-th pair of twin primes.

The programs for A082669, the canonical program `A082669.P14570956005503308455` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082669 has offset 1).

The definition of A082669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082669.P14570956005503308455

`A006512(n+1)*(A006512(n+1)-1)/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A082669

/-- `A006512(n+1)*(A006512(n+1)-1)/2` -/
def P14570956005503308455.Spec : Prop :=
  ∀ n, P14570956005503308455.a n = (A082669 (n + 1) : ℚ)

end A082669

/-! ## A082669.P13921968271645589349

`A126251(n+1)/2`
-/

namespace A082669.P13921968271645589349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126251 (n + 1) : ℚ) / 2

end

end A082669.P13921968271645589349

namespace A082669

/-- `A126251(n+1)/2` -/
def P13921968271645589349.Spec : Prop :=
  ∀ n, P13921968271645589349.a n = (A082669 (n + 1) : ℚ)

end A082669

/-! ## A082669.P14100596315134080147

`C(A006512(n+1), 2)`
-/

namespace A082669.P14100596315134080147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006512 (n + 1)).toNat 2

end

end A082669.P14100596315134080147

namespace A082669

/-- `C(A006512(n+1), 2)` -/
def P14100596315134080147.Spec : Prop :=
  ∀ n, (P14100596315134080147.a n : ℤ) = A082669 (n + 1)

end A082669

/-! ## A082669.P13778727177143910271

`(A328493(n+1)+1)/2`
-/

namespace A082669.P13778727177143910271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328493 (n + 1) + 1 : ℚ) / 2

end

end A082669.P13778727177143910271

namespace A082669

/-- `(A328493(n+1)+1)/2` -/
def P13778727177143910271.Spec : Prop :=
  ∀ n, P13778727177143910271.a n = (A082669 (n + 1) : ℚ)

end A082669

/-! ## A082669.P5855338635275088287

`A006512(n+1)*A040040(n+1)`
-/

namespace A082669.P5855338635275088287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A040040 (n + 1)

end

end A082669.P5855338635275088287

namespace A082669

/-- `A006512(n+1)*A040040(n+1)` -/
def P5855338635275088287.Spec : Prop :=
  ∀ n, P5855338635275088287.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P7892768150614789050

`A126248(n+1)/A108605(n+1)`
-/

namespace A082669.P7892768150614789050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) / (A108605 (n + 1) : ℚ)

end

end A082669.P7892768150614789050

namespace A082669

/-- `A126248(n+1)/A108605(n+1)` -/
def P7892768150614789050.Spec : Prop :=
  ∀ n, P7892768150614789050.a n = (A082669 (n + 1) : ℚ)

end A082669

/-! ## A082669.P16445161633904475813

`A006512(n+1)+A120876(n+1)-A040040(n+1)`
-/

namespace A082669.P16445161633904475813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (A120876 (n + 1) - A040040 (n + 1))

end

end A082669.P16445161633904475813

namespace A082669

/-- `A006512(n+1)+A120876(n+1)-A040040(n+1)` -/
def P16445161633904475813.Spec : Prop :=
  ∀ n, P16445161633904475813.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P401663620151237249

`A037074(n+1)+A040040(n+1)-A120876(n+1)`
-/

namespace A082669.P401663620151237249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A040040 (n + 1) - A120876 (n + 1))

end

end A082669.P401663620151237249

namespace A082669

/-- `A037074(n+1)+A040040(n+1)-A120876(n+1)` -/
def P401663620151237249.Spec : Prop :=
  ∀ n, P401663620151237249.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P14689902329228094142

`A014574(n+1)+A001359(n+1)*A040040(n+1)`
-/

namespace A082669.P14689902329228094142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + A001359 (n + 1) * A040040 (n + 1)

end

end A082669.P14689902329228094142

namespace A082669

/-- `A014574(n+1)+A001359(n+1)*A040040(n+1)` -/
def P14689902329228094142.Spec : Prop :=
  ∀ n, P14689902329228094142.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P8818289937314046790

`A037074(n+1)/A001359(n+1)*A040040(n+1)`
-/

namespace A082669.P8818289937314046790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ) * (A040040 (n + 1) : ℚ)

end

end A082669.P8818289937314046790

namespace A082669

/-- `A037074(n+1)/A001359(n+1)*A040040(n+1)` -/
def P8818289937314046790.Spec : Prop :=
  ∀ n, P8818289937314046790.a n = (A082669 (n + 1) : ℚ)

end A082669

/-! ## A082669.P2206573241817003563

`C(A067829(n+2), 2)`
-/

namespace A082669.P2206573241817003563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067829 (n + 2)).toNat 2

end

end A082669.P2206573241817003563

namespace A082669

/-- `C(A067829(n+2), 2)` -/
def P2206573241817003563.Spec : Prop :=
  ∀ n, (P2206573241817003563.a n : ℤ) = A082669 (n + 1)

end A082669

/-! ## A082669.P1065916578548474668

`A040040(n+1)+A014574(n+1)*A168497(n+2)`
-/

namespace A082669.P1065916578548474668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + A014574 (n + 1) * A168497 (n + 2)

end

end A082669.P1065916578548474668

namespace A082669

/-- `A040040(n+1)+A014574(n+1)*A168497(n+2)` -/
def P1065916578548474668.Spec : Prop :=
  ∀ n, P1065916578548474668.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P14896657381796771209

`A073604(A029707(n+1))`
-/

namespace A082669.P14896657381796771209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073604 (A029707 (n + 1)).toNat

end

end A082669.P14896657381796771209

namespace A082669

/-- `A073604(A029707(n+1))` -/
def P14896657381796771209.Spec : Prop :=
  ∀ n, P14896657381796771209.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P3496871183889421205

`A008837(A107770(n+1))`
-/

namespace A082669.P3496871183889421205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (A107770 (n + 1)).toNat

end

end A082669.P3496871183889421205

namespace A082669

/-- `A008837(A107770(n+1))` -/
def P3496871183889421205.Spec : Prop :=
  ∀ n, P3496871183889421205.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P2527133434158587251

`∩[A008837(n+1), A271511(n+1)]`
-/

namespace A082669.P2527133434158587251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082669.P2527133434158587251

namespace A082669

/-- `∩[A008837(n+1), A271511(n+1)]` -/
def P2527133434158587251.Spec : Prop :=
  ∀ n, (P2527133434158587251.a n : ℤ) = A082669 (n + 1)

end A082669

/-! ## A082669.P16729809193574847698

`∩[A271511(n+1), A379956(n+1)]`
-/

namespace A082669.P16729809193574847698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082669.P16729809193574847698

namespace A082669

/-- `∩[A271511(n+1), A379956(n+1)]` -/
def P16729809193574847698.Spec : Prop :=
  ∀ n, (P16729809193574847698.a n : ℤ) = A082669 (n + 1)

end A082669

/-! ## A082669.P4719574206077632616

`C(A094743(n+2), 2)`
-/

namespace A082669.P4719574206077632616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094743 (n + 2)).toNat 2

end

end A082669.P4719574206077632616

namespace A082669

/-- `C(A094743(n+2), 2)` -/
def P4719574206077632616.Spec : Prop :=
  ∀ n, (P4719574206077632616.a n : ℤ) = A082669 (n + 1)

end A082669

/-! ## A082669.P18208201006146231265

`A000217(A014574(n+1))`
-/

namespace A082669.P18208201006146231265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014574 (n + 1)).toNat

end

end A082669.P18208201006146231265

namespace A082669

/-- `A000217(A014574(n+1))` -/
def P18208201006146231265.Spec : Prop :=
  ∀ n, P18208201006146231265.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P5321872634481205402

`A000217(A001359(n+1)+1)`
-/

namespace A082669.P5321872634481205402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001359 (n + 1) + 1).toNat

end

end A082669.P5321872634481205402

namespace A082669

/-- `A000217(A001359(n+1)+1)` -/
def P5321872634481205402.Spec : Prop :=
  ∀ n, P5321872634481205402.a n = A082669 (n + 1)

end A082669

/-! ## A082669.P4539578046344436645

`A000217(A006512(n+1)-1)`
-/

namespace A082669.P4539578046344436645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A006512 (n + 1) - 1).toNat

end

end A082669.P4539578046344436645

namespace A082669

/-- `A000217(A006512(n+1)-1)` -/
def P4539578046344436645.Spec : Prop :=
  ∀ n, P4539578046344436645.a n = A082669 (n + 1)

end A082669

/-!
# A082670: 

The programs for A082670, there is no canonical definition to state claims against.
-/

/-! ## A082670.P11838338610591979906

`p?[A000040(n+1)+2]!/2`
-/

namespace A082670.P11838338610591979906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A082670.P11838338610591979906

/-!
# A082672: Numbers k such that (k! + 2)/2 is a prime.

The programs for A082672, there is no canonical definition to state claims against.
-/

/-! ## A082672.P1573093412299963739

`eq[log2(A212281(n)), A266678(n)]`
-/

namespace A082672.P1573093412299963739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A212281 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A082672.P1573093412299963739

/-! ## A082672.P11422895496680028229

`eq[A014675(A184389(2*n+5)), A212281(n)]`
-/

namespace A082672.P11422895496680028229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A184389 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082672.P11422895496680028229

/-! ## A082672.P4672145763494907740

`eq[log2(A093621(n)), A266678(n)]`
-/

namespace A082672.P4672145763494907740
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A093621 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A082672.P4672145763494907740

/-!
# A082674: Constant term when a polynomial of degree n is fitted to the lower members of the first n+1 twin prime pairs.

The programs for A082674, there is no canonical definition to state claims against.
-/

/-! ## A082674.P13250091737069132365

`A082675(n+1)-2`
-/

namespace A082674.P13250091737069132365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082675 (n + 1) - 2

end

end A082674.P13250091737069132365

/-! ## A082674.P13312962882775782835

`A280560(2*n+1)+A082675(n+1)`
-/

namespace A082674.P13312962882775782835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + A082675 (n + 1)

end

end A082674.P13312962882775782835

/-! ## A082674.P14495340677516018744

`A157987(A020639(3*(n+2)))+A082675(n+1)`
-/

namespace A082674.P14495340677516018744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157987 (A020639 (3 * (n + 2))).toNat + A082675 (n + 1)

end

end A082674.P14495340677516018744

/-! ## A082674.P753030848701055642

`A008683(A023216(n+1))+xor(1, A082675(n+1))`
-/

namespace A082674.P753030848701055642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023216 (n + 1)).toNat + Int.xor 1 (A082675 (n + 1))

end

end A082674.P753030848701055642

/-! ## A082674.P14424376366968109485

`A023444(A082675(n+1))`
-/

namespace A082674.P14424376366968109485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082675 (n + 1)).toNat

end

end A082674.P14424376366968109485

/-!
# A082675: Constant term when a polynomial of degree <= n is fitted to the first n+1 upper members of the twin prime pairs.

The programs for A082675, there is no canonical definition to state claims against.
-/

/-! ## A082675.P7987752900709438048

`A082674(n+1)+2`
-/

namespace A082675.P7987752900709438048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082674 (n + 1) + 2

end

end A082675.P7987752900709438048

/-! ## A082675.P16621299409067143887

`A009056(A082674(n+1))`
-/

namespace A082675.P16621299409067143887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A082674 (n + 1)).toNat

end

end A082675.P16621299409067143887

/-! ## A082675.P17839407573339748867

`or(∑[2^n]+2, A140297(ceil(2^(n-1))))`
-/

namespace A082675.P17839407573339748867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) (A140297 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A082675.P17839407573339748867

/-!
# A082676: Constant term of polynomial of degree n passing through the first n+1 consecutive prime-indexed primes.

The programs for A082676, there is no canonical definition to state claims against.
-/

/-! ## A082676.P16024162266345514516

`A336366(∑[2^n-n])`
-/

namespace A082676.P16024162266345514516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082676.P16024162266345514516

/-! ## A082676.P17235390412071474561

`or(1, A026819(A091936(Δ[n²])))`
-/

namespace A082676.P17235390412071474561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026819 (A091936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A082676.P17235390412071474561

/-!
# A082678: Arises from a social choice theory problem. Sequence is a transformation of the number of non-transitive non-quasitransitive acyclic distinct profiles with 3 alternatives and strict individual preferences.

The programs for A082678, there is no canonical definition to state claims against.
-/

/-! ## A082678.P3613558942813295303

`A043096(A081201(n)+1)`
-/

namespace A082678.P3613558942813295303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A081201 n + 1).toNat

end

end A082678.P3613558942813295303

/-!
# A082679: Number of LEGO towers, one piece per floor, where every floor is perpendicular to the one below it (so we have a kind of 3-dimensional zigzag pattern).

The programs for A082679, the canonical program `A082679.P7603607965199582567` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082679 has offset 0).

The definition of A082679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082679.P7603607965199582567

`A221678(A028310(n))+n%2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082679

/-- `A221678(A028310(n))+n%2` -/
def P7603607965199582567.Spec : Prop :=
  ∀ n, P7603607965199582567.a n = A082679 n

theorem P7603607965199582567.correct : P7603607965199582567.Spec := by
  intro n
  simp only [A082679]

end A082679

/-! ## A082679.P10385551924574287447

`A221678(A028310(n))+A000035(n)`
-/

namespace A082679.P10385551924574287447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + A000035 n

end

end A082679.P10385551924574287447

namespace A082679

/-- `A221678(A028310(n))+A000035(n)` -/
def P10385551924574287447.Spec : Prop :=
  ∀ n, P10385551924574287447.a n = A082679 n

end A082679

/-! ## A082679.P9676955919266172583

`A221678(A028310(n))+∑[A062157(n)]`
-/

namespace A082679.P9676955919266172583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082679.P9676955919266172583

namespace A082679

/-- `A221678(A028310(n))+∑[A062157(n)]` -/
def P9676955919266172583.Spec : Prop :=
  ∀ n, P9676955919266172583.a n = A082679 n

end A082679

/-! ## A082679.P6767905654742677186

`A221678(A028310(n))+Δ[A004526(n)]`
-/

namespace A082679.P6767905654742677186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A082679.P6767905654742677186

namespace A082679

/-- `A221678(A028310(n))+Δ[A004526(n)]` -/
def P6767905654742677186.Spec : Prop :=
  ∀ n, P6767905654742677186.a n = A082679 n

end A082679

/-! ## A082679.P9212842610434322943

`A221678(A028310(n))+Δ[A008619(n)]`
-/

namespace A082679.P9212842610434322943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A082679.P9212842610434322943

namespace A082679

/-- `A221678(A028310(n))+Δ[A008619(n)]` -/
def P9212842610434322943.Spec : Prop :=
  ∀ n, P9212842610434322943.a n = A082679 n

end A082679

/-! ## A082679.P16360328004597735998

`A221678(A028310(n))+char[A005408(n)]`
-/

namespace A082679.P16360328004597735998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A082679.P16360328004597735998

namespace A082679

/-- `A221678(A028310(n))+char[A005408(n)]` -/
def P16360328004597735998.Spec : Prop :=
  ∀ n, P16360328004597735998.a n = A082679 n

end A082679

/-!
# A082680: Triangle read by rows: T(n,k) is the number of 2-stack sortable n-permutations with k runs.

The programs for A082680, there is no canonical definition to state claims against.
-/

/-! ## A082680.P7313126500404694822

`A278881(A007401(n+1))/A002260(n+1)`
-/

namespace A082680.P7313126500404694822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278881 (A007401 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A082680.P7313126500404694822

/-! ## A082680.P14870397006419744972

`A278881(A007401(n+1))/(A002262(n)+1)`
-/

namespace A082680.P14870397006419744972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278881 (A007401 (n + 1)).toNat : ℚ) / (A002262 n + 1 : ℚ)

end

end A082680.P14870397006419744972

/-! ## A082680.P16648650675030133136

`A278882(A014132(n+1))/A004736(n+1)`
-/

namespace A082680.P16648650675030133136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278882 (A014132 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A082680.P16648650675030133136

/-! ## A082680.P3541259458384884048

`A278882(A003056(n)+2+n)/A004736(n+1)`
-/

namespace A082680.P3541259458384884048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278882 (A003056 n + 2 + (n : ℤ)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A082680.P3541259458384884048

/-! ## A082680.P16145066397555968522

`A278881(A007401(n+1))/∑[2-A130296(n+1)]`
-/

namespace A082680.P16145066397555968522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278881 (A007401 (n + 1)).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A082680.P16145066397555968522

/-! ## A082680.P8891873559301475473

`A278881(A007401(n+1))/A057555(A005408(n))`
-/

namespace A082680.P8891873559301475473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278881 (A007401 (n + 1)).toNat : ℚ) / (A057555 (A005408 n).toNat : ℚ)

end

end A082680.P8891873559301475473

/-! ## A082680.P6064624589783140298

`A278881(A007401(n+1))/A000005(A059268(n))`
-/

namespace A082680.P6064624589783140298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278881 (A007401 (n + 1)).toNat : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A082680.P6064624589783140298

/-! ## A082680.P14786845420288280493

`A278882(A014132(n+1))/A135529(A130321(n))`
-/

namespace A082680.P14786845420288280493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278882 (A014132 (n + 1)).toNat : ℚ) / (A135529 (A130321 n).toNat : ℚ)

end

end A082680.P14786845420288280493

/-!
# A082681: Denominator of Sum_{i=n(n-1)/2+1..n(n+1)/2} 1/i.

The programs for A082681, there is no canonical definition to state claims against.
-/

/-! ## A082681.P4070608253333941163

`A062080(n+1)/A071773(A234681(n+1))`
-/

namespace A082681.P4070608253333941163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062080 (n + 1) : ℚ) / (A071773 (A234681 (n + 1)).toNat : ℚ)

end

end A082681.P4070608253333941163

/-! ## A082681.P14249531580021456714

`A061431(n+1)/A099545(A252148(n+1))`
-/

namespace A082681.P14249531580021456714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061431 (n + 1) : ℚ) / (A099545 (A252148 (n + 1)).toNat : ℚ)

end

end A082681.P14249531580021456714

/-! ## A082681.P9464087814890071603

`(A091794(n)-(∑[n]+1))/A099545(A252148(n+1))`
-/

namespace A082681.P9464087814890071603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091794 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) : ℚ) / (A099545 (A252148 (n + 1)).toNat : ℚ)

end

end A082681.P9464087814890071603

/-! ## A082681.P3960145321968981525

`(A091795(n)-∑[n+1])/A099545(A252148(n+1))`
-/

namespace A082681.P3960145321968981525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091795 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (A099545 (A252148 (n + 1)).toNat : ℚ)

end

end A082681.P3960145321968981525

/-! ## A082681.P3380246135264714714

`(A091796(n+1)+∑[n+1])/A099545(A252148(n+1))`
-/

namespace A082681.P3380246135264714714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091796 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (A099545 (A252148 (n + 1)).toNat : ℚ)

end

end A082681.P3380246135264714714

/-!
# A082682: Algebraic degree of R(e^(-n * Pi)), where R(q) is the Rogers-Ramanujan continued fraction.

The programs for A082682, there is no canonical definition to state claims against.
-/

/-! ## A082682.P9699284687207560415

`gcd(2, n)*A204617(5*(n+1))`
-/

namespace A082682.P9699284687207560415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A204617 (5 * (n + 1))

end

end A082682.P9699284687207560415

/-! ## A082682.P6999071695737502965

`A000034(n+1)*A204617(5*(n+1))`
-/

namespace A082682.P6999071695737502965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A204617 (5 * (n + 1))

end

end A082682.P6999071695737502965

/-! ## A082682.P16195892155923212581

`A040001(n+2)*A204617(5*(n+1))`
-/

namespace A082682.P16195892155923212581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A204617 (5 * (n + 1))

end

end A082682.P16195892155923212581

/-! ## A082682.P18206177672047729265

`A340346(n²+10)*A204617(5*(n+1))`
-/

namespace A082682.P18206177672047729265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n ^ 2 + 10) * A204617 (5 * (n + 1))

end

end A082682.P18206177672047729265

/-! ## A082682.P5227247750432087227

`A000032(Δ[A004526(n)])*A204617(5*(n+1))`
-/

namespace A082682.P5227247750432087227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A204617 (5 * (n + 1))

end

end A082682.P5227247750432087227

/-!
# A082683: Smaller of the two prime numbers whose product is A082663(n).

The programs for A082683, there is no canonical definition to state claims against.
-/

/-! ## A082683.P12491437370682624386

`A082663(n+1)/A082684(n+1)`
-/

namespace A082683.P12491437370682624386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082663 (n + 1) : ℚ) / (A082684 (n + 1) : ℚ)

end

end A082683.P12491437370682624386

/-! ## A082683.P5969298563879406576

`A020639(A082663(n+1))`
-/

namespace A082683.P5969298563879406576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082663 (n + 1)).toNat

end

end A082683.P5969298563879406576

/-! ## A082683.P598846092800431410

`A020639(A186777(n+4))`
-/

namespace A082683.P598846092800431410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A186777 (n + 4)).toNat

end

end A082683.P598846092800431410

/-! ## A082683.P16975973682511217343

`A076820(A082663(n+1)%A076808(n))`
-/

namespace A082683.P16975973682511217343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (Int.tmod (A082663 (n + 1)) (A076808 n)).toNat

end

end A082683.P16975973682511217343

/-! ## A082683.P8461348955912434566

`A076820(A082663(n+1))%A076809(n)`
-/

namespace A082683.P8461348955912434566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076820 (A082663 (n + 1)).toNat) (A076809 n)

end

end A082683.P8461348955912434566

/-! ## A082683.P5368949792459591869

`p?[A051119(A082664(n+1))]`
-/

namespace A082683.P5368949792459591869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A082664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082683.P5368949792459591869

/-! ## A082683.P4391624866940232448

`p?[A052126(A090196(n+1))]`
-/

namespace A082683.P4391624866940232448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A090196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082683.P4391624866940232448

/-! ## A082683.P676204452851548219

`p?[A051119(A346641(n+1))]`
-/

namespace A082683.P676204452851548219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A346641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082683.P676204452851548219

/-! ## A082683.P8898722144006507217

`p?[A052126(A020886(n+2))]`
-/

namespace A082683.P8898722144006507217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A020886 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082683.P8898722144006507217

/-! ## A082683.P5122555365101823908

`A033676(or(1, A082663(n+1)))`
-/

namespace A082683.P5122555365101823908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.lor 1 (A082663 (n + 1))).toNat

end

end A082683.P5122555365101823908

/-! ## A082683.P14599164202276872842

`A052126(or(1, A082663(n+1)))`
-/

namespace A082683.P14599164202276872842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.lor 1 (A082663 (n + 1))).toNat

end

end A082683.P14599164202276872842

/-! ## A082683.P6192587417649666012

`A336650(2*A082663(n+1))`
-/

namespace A082683.P6192587417649666012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (2 * A082663 (n + 1)).toNat

end

end A082683.P6192587417649666012

/-!
# A082684: Larger of the two prime numbers whose product is A082663(n).

The programs for A082684, there is no canonical definition to state claims against.
-/

/-! ## A082684.P14235081440050763846

`A082663(n+1)/A082683(n+1)`
-/

namespace A082684.P14235081440050763846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082663 (n + 1) : ℚ) / (A082683 (n + 1) : ℚ)

end

end A082684.P14235081440050763846

/-! ## A082684.P6839922826419343799

`A006530(A082663(n+1))`
-/

namespace A082684.P6839922826419343799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082663 (n + 1)).toNat

end

end A082684.P6839922826419343799

/-! ## A082684.P6820914538064691342

`A354933(A000034(2*n)*A082663(n+1))`
-/

namespace A082684.P6820914538064691342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (A000034 (2 * n) * A082663 (n + 1)).toNat

end

end A082684.P6820914538064691342

/-! ## A082684.P12849828957008919604

`A354933(A082663(n+1))%A334974(n+1)`
-/

namespace A082684.P12849828957008919604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354933 (A082663 (n + 1)).toNat) (A334974 (n + 1))

end

end A082684.P12849828957008919604

/-! ## A082684.P17627545980162265048

`A354933(A082663(n+1)%A082663(n+2))`
-/

namespace A082684.P17627545980162265048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (Int.tmod (A082663 (n + 1)) (A082663 (n + 2))).toNat

end

end A082684.P17627545980162265048

/-! ## A082684.P943593477836032826

`p?[A060654(A060700(n+1))]`
-/

namespace A082684.P943593477836032826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060654 (A060700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082684.P943593477836032826

/-! ## A082684.P13129436498125406056

`A002034(A186777(n+4))`
-/

namespace A082684.P13129436498125406056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A186777 (n + 4)).toNat

end

end A082684.P13129436498125406056

/-! ## A082684.P13210396436249565169

`p?[A032742(A090196(n+1))]`
-/

namespace A082684.P13210396436249565169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A090196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082684.P13210396436249565169

/-! ## A082684.P12650270958700353809

`p?[A109814(A046388(n+1))]`
-/

namespace A082684.P12650270958700353809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A046388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082684.P12650270958700353809

/-! ## A082684.P12329664955783959074

`p?[A032742(A020886(n+2))]`
-/

namespace A082684.P12329664955783959074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A020886 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082684.P12329664955783959074

/-! ## A082684.P4696487634560006752

`p?[A032742(A089341(n+2))]`
-/

namespace A082684.P4696487634560006752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A089341 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082684.P4696487634560006752

/-!
# A082685: a(n) = (2*5^n + 2^n)/3.

The programs for A082685, the canonical program `A082685.P1023335104167777288` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082685 has offset 0).

The definition of A082685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*5^n+2^n)/3` (program `A082685.P11040960208792253654`, by `A082685.P11040960208792253654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082685.P1023335104167777288

`7*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082685

/-- `7*a(n-1)-10*a(n-2)` -/
def P1023335104167777288.Spec : Prop :=
  ∀ n, P1023335104167777288.a n = A082685 n

theorem P1023335104167777288.correct : P1023335104167777288.Spec := by
  intro n
  simp only [A082685]

end A082685

/-! ## A082685.P11040960208792253654

`(2*5^n+2^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082685.P11040960208792253654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n + 2 ^ n : ℚ) / 3

end

end A082685.P11040960208792253654

namespace A082685

/-- `(2*5^n+2^n)/3` -/
def P11040960208792253654.Spec : Prop :=
  ∀ n, P11040960208792253654.a n = (A082685 n : ℚ)

theorem P11040960208792253654.correct : P11040960208792253654.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A082685, Nat.add_sub_cancel, A082685.P11040960208792253654.a, A082685.P1023335104167777288.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A082685, Nat.add_sub_cancel, A082685.P11040960208792253654.a, A082685.P1023335104167777288.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A082685

/-! ## A082685.P14247610151765540943

`ogf((1-3x)/(1-7x+10x^2))`
-/

namespace A082685.P14247610151765540943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -7, 10] n

end

end A082685.P14247610151765540943

namespace A082685

/-- `ogf((1-3x)/(1-7x+10x^2))` -/
def P14247610151765540943.Spec : Prop :=
  ∀ n, P14247610151765540943.a n = A082685 n

end A082685

/-! ## A082685.P2637870178187653442

`2*(a(n-1)+5^(n-1))` with `a(0)=1`
-/

namespace A082685.P2637870178187653442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A082685.P2637870178187653442

namespace A082685

/-- `2*(a(n-1)+5^(n-1))` -/
def P2637870178187653442.Spec : Prop :=
  ∀ n, P2637870178187653442.a n = (A082685 n : ℚ)

end A082685

/-! ## A082685.P4127919756134053278

`5*a(n-1)-2^(n-1)` with `a(0)=1`
-/

namespace A082685.P4127919756134053278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A082685.P4127919756134053278

namespace A082685

/-- `5*a(n-1)-2^(n-1)` -/
def P4127919756134053278.Spec : Prop :=
  ∀ n, P4127919756134053278.a n = (A082685 n : ℚ)

end A082685

/-! ## A082685.P14408743776417396678

`lcm(5, a(n-1))-2^(n-1)` with `a(0)=1`
-/

namespace A082685.P14408743776417396678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 5 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A082685.P14408743776417396678

namespace A082685

/-- `lcm(5, a(n-1))-2^(n-1)` -/
def P14408743776417396678.Spec : Prop :=
  ∀ n, P14408743776417396678.a n = (A082685 n : ℚ)

end A082685

/-! ## A082685.P15395805584225039956

`Δ[5^(n-1)]+2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A082685.P15395805584225039956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A082685.P15395805584225039956

namespace A082685

/-- `Δ[5^(n-1)]+2^(n-1)-a(n-1)` -/
def P15395805584225039956.Spec : Prop :=
  ∀ n, P15395805584225039956.a n = (A082685 n : ℚ)

end A082685

/-! ## A082685.P8752410526465259790

`5^(n-1)-ceil(-a(n-1))+5^(n-1)-round(-a(n-1))` with `a(0)=1`

`ceil` and `round` are left out, they are the identity on integers.
-/

namespace A082685.P8752410526465259790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ))

end

end A082685.P8752410526465259790

namespace A082685

/-- `5^(n-1)-ceil(-a(n-1))+5^(n-1)-round(-a(n-1))` -/
def P8752410526465259790.Spec : Prop :=
  ∀ n, P8752410526465259790.a n = (A082685 n : ℚ)

end A082685

/-! ## A082685.P15999272755709438962

`A020699(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A082685.P15999272755709438962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020699 n + 2 * a (n - 1)

end

end A082685.P15999272755709438962

namespace A082685

/-- `A020699(n)+2*a(n-1)` -/
def P15999272755709438962.Spec : Prop :=
  ∀ n, P15999272755709438962.a n = A082685 n

end A082685

/-! ## A082685.P17470175751016947772

`A081675(n)+(2^n+4^n)/2`
-/

namespace A082685.P17470175751016947772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081675 n : ℚ) + (2 ^ n + 4 ^ n : ℚ) / 2

end

end A082685.P17470175751016947772

namespace A082685

/-- `A081675(n)+(2^n+4^n)/2` -/
def P17470175751016947772.Spec : Prop :=
  ∀ n, P17470175751016947772.a n = (A082685 n : ℚ)

end A082685

/-! ## A082685.P1665479318270612016

`A083217(n)+A001045(n)`
-/

namespace A082685.P1665479318270612016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083217 n + A001045 n

end

end A082685.P1665479318270612016

namespace A082685

/-- `A083217(n)+A001045(n)` -/
def P1665479318270612016.Spec : Prop :=
  ∀ n, P1665479318270612016.a n = A082685 n

end A082685

/-! ## A082685.P15843895867992998796

`A074600(n)-A247313(n)`
-/

namespace A082685.P15843895867992998796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 n - A247313 n

end

end A082685.P15843895867992998796

namespace A082685

/-- `A074600(n)-A247313(n)` -/
def P15843895867992998796.Spec : Prop :=
  ∀ n, P15843895867992998796.a n = A082685 n

end A082685

/-! ## A082685.P3004400526193225978

`A001045(n)+Δ[A015531(n)]`
-/

namespace A082685.P3004400526193225978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (f1 (n + 1) - f1 n)

end

end A082685.P3004400526193225978

namespace A082685

/-- `A001045(n)+Δ[A015531(n)]` -/
def P3004400526193225978.Spec : Prop :=
  ∀ n, P3004400526193225978.a n = A082685 n

end A082685

/-! ## A082685.P12975070915506444945

`Δ[A015531(n)+A005578(n)]`
-/

namespace A082685.P12975070915506444945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082685.P12975070915506444945

namespace A082685

/-- `Δ[A015531(n)+A005578(n)]` -/
def P12975070915506444945.Spec : Prop :=
  ∀ n, P12975070915506444945.a n = A082685 n

end A082685

/-! ## A082685.P5158204582208025693

`2*A247313(n)-A000079(n)`
-/

namespace A082685.P5158204582208025693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247313 n - A000079 n

end

end A082685.P5158204582208025693

namespace A082685

/-- `2*A247313(n)-A000079(n)` -/
def P5158204582208025693.Spec : Prop :=
  ∀ n, P5158204582208025693.a n = A082685 n

end A082685

/-! ## A082685.P14304149997415473830

`A305751(2*(n+1))-A305751(2*n+1)`
-/

namespace A082685.P14304149997415473830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 (2 * (n + 1)) - A305751 (2 * n + 1)

end

end A082685.P14304149997415473830

namespace A082685

/-- `A305751(2*(n+1))-A305751(2*n+1)` -/
def P14304149997415473830.Spec : Prop :=
  ∀ n, P14304149997415473830.a n = A082685 n

end A082685

/-! ## A082685.P9645039764984347535

`A001045(n)+A083425(n)-A015531(n)`
-/

namespace A082685.P9645039764984347535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A083425 n - A015531 n)

end

end A082685.P9645039764984347535

namespace A082685

/-- `A001045(n)+A083425(n)-A015531(n)` -/
def P9645039764984347535.Spec : Prop :=
  ∀ n, P9645039764984347535.a n = A082685 n

end A082685

/-! ## A082685.P10308373652595925173

`A000079(n)+A000351(n)-A247313(n)`
-/

namespace A082685.P10308373652595925173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000351 n - A247313 n)

end

end A082685.P10308373652595925173

namespace A082685

/-- `A000079(n)+A000351(n)-A247313(n)` -/
def P10308373652595925173.Spec : Prop :=
  ∀ n, P10308373652595925173.a n = A082685 n

end A082685

/-! ## A082685.P15178827314039061932

`A015531(n+1)+A001045(n)-A015531(n)`
-/

namespace A082685.P15178827314039061932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) + (A001045 n - A015531 n)

end

end A082685.P15178827314039061932

namespace A082685

/-- `A015531(n+1)+A001045(n)-A015531(n)` -/
def P15178827314039061932.Spec : Prop :=
  ∀ n, P15178827314039061932.a n = A082685 n

end A082685

/-! ## A082685.P1705779503534825224

`A015531(n+1)+A078008(n)-A109500(n)`
-/

namespace A082685.P1705779503534825224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) + (A078008 n - A109500 n)

end

end A082685.P1705779503534825224

namespace A082685

/-- `A015531(n+1)+A078008(n)-A109500(n)` -/
def P1705779503534825224.Spec : Prop :=
  ∀ n, P1705779503534825224.a n = A082685 n

end A082685

/-!
# A082686: Odd nonprime integers n which have an odd number of proper divisors.

The programs for A082686, the canonical program `A082686.P7085759963606305548` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082686 has offset 1).

The definition of A082686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082686.P7085759963606305548

`2*A226567(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082686

/-- `2*A226567(n+1)+1` -/
def P7085759963606305548.Spec : Prop :=
  ∀ n, P7085759963606305548.a n = A082686 (n + 1)

theorem P7085759963606305548.correct : P7085759963606305548.Spec := by
  intro n
  simp only [A082686, Nat.add_sub_cancel]

end A082686

/-! ## A082686.P2266533897206355564

`eq[A098108(n), A370482(n)]`
-/

namespace A082686.P2266533897206355564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082686.P2266533897206355564

namespace A082686

/-- `eq[A098108(n), A370482(n)]` -/
def P2266533897206355564.Spec : Prop :=
  ∀ n, (P2266533897206355564.a n : ℤ) = A082686 (n + 1)

end A082686

/-! ## A082686.P4936705386119731655

`eq[A339579(n+1), A354034(n)]`
-/

namespace A082686.P4936705386119731655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082686.P4936705386119731655

namespace A082686

/-- `eq[A339579(n+1), A354034(n)]` -/
def P4936705386119731655.Spec : Prop :=
  ∀ n, (P4936705386119731655.a n : ℤ) = A082686 (n + 1)

end A082686

/-! ## A082686.P4953699879449812842

`filter[A226025(n+1), A049240(#)]`
-/

namespace A082686.P4953699879449812842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A082686.P4953699879449812842

namespace A082686

/-- `filter[A226025(n+1), A049240(#)]` -/
def P4953699879449812842.Spec : Prop :=
  ∀ n, P4953699879449812842.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P4677597933242369169

`filter[A226025(n+1), A323158(#)]`
-/

namespace A082686.P4677597933242369169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A082686.P4677597933242369169

namespace A082686

/-- `filter[A226025(n+1), A323158(#)]` -/
def P4677597933242369169.Spec : Prop :=
  ∀ n, P4677597933242369169.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P17359775942008383145

`filter[A226025(n+1), A324903(#)]`
-/

namespace A082686.P17359775942008383145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A082686.P17359775942008383145

namespace A082686

/-- `filter[A226025(n+1), A324903(#)]` -/
def P17359775942008383145.Spec : Prop :=
  ∀ n, P17359775942008383145.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P18410816329252784033

`filter[A226025(n+1), A324908(#)]`
-/

namespace A082686.P18410816329252784033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A082686.P18410816329252784033

namespace A082686

/-- `filter[A226025(n+1), A324908(#)]` -/
def P18410816329252784033.Spec : Prop :=
  ∀ n, P18410816329252784033.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P6407325790414002463

`filter[A226025(n+1), A374474(#)]`
-/

namespace A082686.P6407325790414002463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A082686.P6407325790414002463

namespace A082686

/-- `filter[A226025(n+1), A374474(#)]` -/
def P6407325790414002463.Spec : Prop :=
  ∀ n, P6407325790414002463.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P14355015625399193935

`A071904(comp[A037040(n)])`
-/

namespace A082686.P14355015625399193935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037040 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082686.P14355015625399193935

namespace A082686

/-- `A071904(comp[A037040(n)])` -/
def P14355015625399193935.Spec : Prop :=
  ∀ n, P14355015625399193935.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P9200208344277399994

`filter[A071904(n+1), A049240(#)]`
-/

namespace A082686.P9200208344277399994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A082686.P9200208344277399994

namespace A082686

/-- `filter[A071904(n+1), A049240(#)]` -/
def P9200208344277399994.Spec : Prop :=
  ∀ n, P9200208344277399994.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P4471386077327585548

`filter[A071904(n+1), A323158(#)]`
-/

namespace A082686.P4471386077327585548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A082686.P4471386077327585548

namespace A082686

/-- `filter[A071904(n+1), A323158(#)]` -/
def P4471386077327585548.Spec : Prop :=
  ∀ n, P4471386077327585548.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P889300654213599059

`filter[A071904(n+1), A324903(#)]`
-/

namespace A082686.P889300654213599059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A082686.P889300654213599059

namespace A082686

/-- `filter[A071904(n+1), A324903(#)]` -/
def P889300654213599059.Spec : Prop :=
  ∀ n, P889300654213599059.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P4335649232285149561

`filter[A071904(n+1), A324908(#)]`
-/

namespace A082686.P4335649232285149561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A082686.P4335649232285149561

namespace A082686

/-- `filter[A071904(n+1), A324908(#)]` -/
def P4335649232285149561.Spec : Prop :=
  ∀ n, P4335649232285149561.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P14462117101053275804

`filter[A071904(n+1), A374474(#)]`
-/

namespace A082686.P14462117101053275804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A082686.P14462117101053275804

namespace A082686

/-- `filter[A071904(n+1), A374474(#)]` -/
def P14462117101053275804.Spec : Prop :=
  ∀ n, P14462117101053275804.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P7042067952764822118

`filter[A014076(n+1), A049240(#)]`
-/

namespace A082686.P7042067952764822118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A082686.P7042067952764822118

namespace A082686

/-- `filter[A014076(n+1), A049240(#)]` -/
def P7042067952764822118.Spec : Prop :=
  ∀ n, P7042067952764822118.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P5313415519599299709

`filter[A014076(n+1), A323158(#)]`
-/

namespace A082686.P5313415519599299709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A082686.P5313415519599299709

namespace A082686

/-- `filter[A014076(n+1), A323158(#)]` -/
def P5313415519599299709.Spec : Prop :=
  ∀ n, P5313415519599299709.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P15838430431601630165

`filter[A014076(n+1), A324903(#)]`
-/

namespace A082686.P15838430431601630165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A082686.P15838430431601630165

namespace A082686

/-- `filter[A014076(n+1), A324903(#)]` -/
def P15838430431601630165.Spec : Prop :=
  ∀ n, P15838430431601630165.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P17516378073852339882

`filter[A014076(n+1), A324908(#)]`
-/

namespace A082686.P17516378073852339882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A082686.P17516378073852339882

namespace A082686

/-- `filter[A014076(n+1), A324908(#)]` -/
def P17516378073852339882.Spec : Prop :=
  ∀ n, P17516378073852339882.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P11881238392533012895

`filter[A014076(n+1), A374474(#)]`
-/

namespace A082686.P11881238392533012895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A082686.P11881238392533012895

namespace A082686

/-- `filter[A014076(n+1), A374474(#)]` -/
def P11881238392533012895.Spec : Prop :=
  ∀ n, P11881238392533012895.a n = A082686 (n + 1)

end A082686

/-! ## A082686.P12443267725486264633

`filter[A374476(n+1), A324903(#)]`
-/

namespace A082686.P12443267725486264633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A082686.P12443267725486264633

namespace A082686

/-- `filter[A374476(n+1), A324903(#)]` -/
def P12443267725486264633.Spec : Prop :=
  ∀ n, P12443267725486264633.a n = A082686 (n + 1)

end A082686

/-!
# A082687: Numerator of Sum_{k=1..n} 1/(n+k).

The programs for A082687, there is no canonical definition to state claims against.
-/

/-! ## A082687.P4834174353894268603

`A058313(2*(n+1))`
-/

namespace A082687.P4834174353894268603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * (n + 1))

end

end A082687.P4834174353894268603

/-! ## A082687.P17906881348749216411

`A075830(2*n+3)`
-/

namespace A082687.P17906881348749216411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (2 * n + 3)

end

end A082687.P17906881348749216411

/-! ## A082687.P3158629176330025677

`or(1, A058313(n+2+n))`
-/

namespace A082687.P3158629176330025677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A058313 (n + 2 + n))

end

end A082687.P3158629176330025677

/-! ## A082687.P11560181184965007679

`abs(A058313(Δ[n²]+1)-1)+1`
-/

namespace A082687.P11560181184965007679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058313 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1| + 1

end

end A082687.P11560181184965007679

/-! ## A082687.P14684779953948554063

`lcm(2, A058313(A103517(n)))/2`
-/

namespace A082687.P14684779953948554063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A058313 (A103517 n).toNat) : ℚ) / 2

end

end A082687.P14684779953948554063

/-! ## A082687.P12509858451859385788

`A058313(n+2+n)+A000038(n+1)`
-/

namespace A082687.P12509858451859385788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 2 + n) + A000038 (n + 1)

end

end A082687.P12509858451859385788

/-! ## A082687.P6068347579735635037

`A058312(2*(n+1))-A119248(2*(n+1))`
-/

namespace A082687.P6068347579735635037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (2 * (n + 1)) - A119248 (2 * (n + 1))

end

end A082687.P6068347579735635037

/-! ## A082687.P8985996911886686275

`A173756(2*(n+1))-A173756(2*n+1)`
-/

namespace A082687.P8985996911886686275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173756 (2 * (n + 1)) - A173756 (2 * n + 1)

end

end A082687.P8985996911886686275

/-! ## A082687.P12452807474116172602

`A058313(n+2+n)+A000079(n)-2^n`
-/

namespace A082687.P12452807474116172602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 2 + n) + (A000079 n - (2 ^ n : ℤ))

end

end A082687.P12452807474116172602

/-! ## A082687.P16875295446207164108

`char[A004447(n)]*A058313(A103517(n))`
-/

namespace A082687.P16875295446207164108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A058313 (A103517 n).toNat

end

end A082687.P16875295446207164108

/-! ## A082687.P5018278317352532058

`A058313(A103517(n))-A000035(2*n)`
-/

namespace A082687.P5018278317352532058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (A103517 n).toNat - A000035 (2 * n)

end

end A082687.P5018278317352532058

/-! ## A082687.P15470131690326932120

`A007318(A000217(n))*A058313(A103517(n))`
-/

namespace A082687.P15470131690326932120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A058313 (A103517 n).toNat

end

end A082687.P15470131690326932120

/-! ## A082687.P5084274779692694460

`A025530(2*(n+1))/gcd(A003418(n+1), A025530(2*(n+1)))`
-/

namespace A082687.P5084274779692694460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (2 * (n + 1)) : ℚ) / (Int.gcd (A003418 (n + 1)) (A025530 (2 * (n + 1))) : ℚ)

end

end A082687.P5084274779692694460

/-!
# A082688: Denominator of Sum_{k=1..n} 1/(n+k).

The programs for A082688, there is no canonical definition to state claims against.
-/

/-! ## A082688.P17102848483613310274

`2*A111876(n)`
-/

namespace A082688.P17102848483613310274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111876 n

end

end A082688.P17102848483613310274

/-! ## A082688.P4454210639285306145

`A058312(2*(n+1))`
-/

namespace A082688.P4454210639285306145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (2 * (n + 1))

end

end A082688.P4454210639285306145

/-! ## A082688.P10461636100213071878

`lcm(2, A058312(n+2+n))`
-/

namespace A082688.P10461636100213071878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A058312 (n + 2 + n))

end

end A082688.P10461636100213071878

/-! ## A082688.P9518279664587260918

`or(A000038(n), A058312(n+2+n))`
-/

namespace A082688.P9518279664587260918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A058312 (n + 2 + n))

end

end A082688.P9518279664587260918

/-! ## A082688.P18326723068310940793

`A058312(n+2+n)+A000007(n+1)`
-/

namespace A082688.P18326723068310940793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 2 + n) + A000007 (n + 1)

end

end A082688.P18326723068310940793

/-! ## A082688.P2856067470573736715

`A119248(2*(n+1))+A058313(2*(n+1))`
-/

namespace A082688.P2856067470573736715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (2 * (n + 1)) + A058313 (2 * (n + 1))

end

end A082688.P2856067470573736715

/-! ## A082688.P13481055604964358609

`A058312(n+2+n)/A018252(gcd(n, n+1))`
-/

namespace A082688.P13481055604964358609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 2 + n) : ℚ) / (A018252 (Nat.gcd n (n + 1)) : ℚ)

end

end A082688.P13481055604964358609

/-! ## A082688.P17985197328290610950

`A058312(n+2+n)%A232729(n+1)`
-/

namespace A082688.P17985197328290610950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058312 (n + 2 + n)) (A232729 (n + 1))

end

end A082688.P17985197328290610950

/-!
# A082689: Numerator of n*sum(k=1,(-1)^(k+1)/(n+k)).

The programs for A082689, there is no canonical definition to state claims against.
-/

/-! ## A082689.P12064864280798077438

`A339113(∑[A345969(n)])`
-/

namespace A082689.P12064864280798077438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082689.P12064864280798077438

/-!
# A082690: Denominator of n*sum(k=1,(-1)^(k+1)/(n+k)).

The programs for A082690, there is no canonical definition to state claims against.
-/

/-! ## A082690.P16793949286007930647

`lcm(A025535(n), A353835(A109022(2*(n+2))))`
-/

namespace A082690.P16793949286007930647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025535 n) (A353835 (A109022 (2 * (n + 2))).toNat)

end

end A082690.P16793949286007930647

/-! ## A082690.P17201933815399980856

`2*A091342(n+1)`
-/

namespace A082690.P17201933815399980856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091342 (n + 1)

end

end A082690.P17201933815399980856

/-! ## A082690.P16747844167415196418

`A091342(A000027(n+1))+A091342(n+1)`
-/

namespace A082690.P16747844167415196418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091342 (A000027 (n + 1)).toNat + A091342 (n + 1)

end

end A082690.P16747844167415196418

/-! ## A082690.P1279969793244973691

`A091342(n+1)+A091342(A246098(n+1))`
-/

namespace A082690.P1279969793244973691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091342 (n + 1) + A091342 (A246098 (n + 1)).toNat

end

end A082690.P1279969793244973691

/-! ## A082690.P11249937702487182809

`A003418(2*n+2)/A000005(A000079(n))`
-/

namespace A082690.P11249937702487182809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n + 2) : ℚ) / (A000005 (A000079 n).toNat : ℚ)

end

end A082690.P11249937702487182809

/-!
# A082691: a(1)=1, a(2)=2, then if the first 3*2^k-1 terms are a(1), a(2), ..., a(3*2^k - 1), the first 3*2^(k+1)-1 terms are a(1), a(2), ..., a(3*2^k - 1), a(1), a(2), ..., a(3*2^k - 1), a(3*2^k-1) + 1.

The programs for A082691, the canonical program `A082691.P16939966969154618591` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082691 has offset 1).

The definition of A082691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082691.P7998492790935856903

`a(n-1)*A308185(n+1)+1` with `a(0)=1`
-/

namespace A082691.P7998492790935856903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A308185 (n + 1) + 1

end

end A082691.P7998492790935856903

namespace A082691

/-- `a(n-1)*A308185(n+1)+1` -/
def P7998492790935856903.Spec : Prop :=
  ∀ n, P7998492790935856903.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P536743193694730902

`A082850(∑[2-A288932(n+1)])`
-/

namespace A082691.P536743193694730902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A288932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082691.P536743193694730902

namespace A082691

/-- `A082850(∑[2-A288932(n+1)])` -/
def P536743193694730902.Spec : Prop :=
  ∀ n, P536743193694730902.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P16592931004485867086

`A082850(∑[2-A308185(n+1)])`
-/

namespace A082691.P16592931004485867086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A308185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082691.P16592931004485867086

namespace A082691

/-- `A082850(∑[2-A308185(n+1)])` -/
def P16592931004485867086.Spec : Prop :=
  ∀ n, P16592931004485867086.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P16939966969154618591

`1-A004134(∑[char[A004134(n+1)]])+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082691

/-- `1-A004134(∑[char[A004134(n+1)]])+n` -/
def P16939966969154618591.Spec : Prop :=
  ∀ n, P16939966969154618591.a n = A082691 (n + 1)

theorem P16939966969154618591.correct : P16939966969154618591.Spec := by
  intro n
  simp only [A082691, Nat.add_sub_cancel]

end A082691

/-! ## A082691.P7581088392532367570

`A308185(n+1)+A082850(∑[A288932(n+1)])`
-/

namespace A082691.P7581088392532367570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308185 (n + 1) + A082850 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082691.P7581088392532367570

namespace A082691

/-- `A308185(n+1)+A082850(∑[A288932(n+1)])` -/
def P7581088392532367570.Spec : Prop :=
  ∀ n, P7581088392532367570.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P12576903887616056286

`a(n-1)*A288932(n+2)+1` with `a(0)=1`
-/

namespace A082691.P12576903887616056286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A288932 (n + 2) + 1

end

end A082691.P12576903887616056286

namespace A082691

/-- `a(n-1)*A288932(n+2)+1` -/
def P12576903887616056286.Spec : Prop :=
  ∀ n, P12576903887616056286.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P7422849957766838510

`A082850(lt[2-A082850(n+1), A090740(n+1)]+1)`
-/

namespace A082691.P7422849957766838510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A082850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A082691.P7422849957766838510

namespace A082691

/-- `A082850(lt[2-A082850(n+1), A090740(n+1)]+1)` -/
def P7422849957766838510.Spec : Prop :=
  ∀ n, P7422849957766838510.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P1807260097240884650

`A082850(lt[A040001(n), A082850(n+1)])`
-/

namespace A082691.P1807260097240884650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082691.P1807260097240884650

namespace A082691

/-- `A082850(lt[A040001(n), A082850(n+1)])` -/
def P1807260097240884650.Spec : Prop :=
  ∀ n, P1807260097240884650.a n = A082691 (n + 1)

end A082691

/-! ## A082691.P18033957187652320852

`A082850(lt[A000034(n), A082850(n+1)])`
-/

namespace A082691.P18033957187652320852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082691.P18033957187652320852

namespace A082691

/-- `A082850(lt[A000034(n), A082850(n+1)])` -/
def P18033957187652320852.Spec : Prop :=
  ∀ n, P18033957187652320852.a n = A082691 (n + 1)

end A082691

/-!
# A082692: Partial sums of A082691.

The programs for A082692, the canonical program `A082692.P14972470211568262006` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082692 has offset 1).

The definition of A082692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082692.P14972470211568262006

`∑[A082691(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082692

/-- `∑[A082691(n+1)]` -/
def P14972470211568262006.Spec : Prop :=
  ∀ n, P14972470211568262006.a n = A082692 (n + 1)

theorem P14972470211568262006.correct : P14972470211568262006.Spec := by
  intro n
  simp only [A082692, Nat.add_sub_cancel]

end A082692

/-! ## A082692.P2489187860495372859

`∑[a(n-1)*A308185(n+1)+1]` with `a(0)=1`
-/

namespace A082692.P2489187860495372859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A308185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082692.P2489187860495372859

namespace A082692

/-- `∑[a(n-1)*A308185(n+1)+1]` -/
def P2489187860495372859.Spec : Prop :=
  ∀ n, P2489187860495372859.a n = A082692 (n + 1)

end A082692

/-! ## A082692.P10446323083379248027

`A082691(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A082692.P10446323083379248027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082691 (n + 1) + a (A023443 n).toNat

end

end A082692.P10446323083379248027

namespace A082692

/-- `A082691(n+1)+a(A023443(n))` -/
def P10446323083379248027.Spec : Prop :=
  ∀ n, P10446323083379248027.a n = A082692 (n + 1)

end A082692

/-! ## A082692.P15988228815421691639

`∑[A082850(∑[2-A288932(n+1)])]`
-/

namespace A082692.P15988228815421691639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A288932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082692.P15988228815421691639

namespace A082692

/-- `∑[A082850(∑[2-A288932(n+1)])]` -/
def P15988228815421691639.Spec : Prop :=
  ∀ n, P15988228815421691639.a n = A082692 (n + 1)

end A082692

/-! ## A082692.P10937382274409307421

`∑[A082850(∑[2-A308185(n+1)])]`
-/

namespace A082692.P10937382274409307421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A308185 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082692.P10937382274409307421

namespace A082692

/-- `∑[A082850(∑[2-A308185(n+1)])]` -/
def P10937382274409307421.Spec : Prop :=
  ∀ n, P10937382274409307421.a n = A082692 (n + 1)

end A082692

/-! ## A082692.P4088449403599571063

`a(n-1)+A082691(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A082692.P4088449403599571063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A082691 (n + 1) + A000007 n)

end

end A082692.P4088449403599571063

namespace A082692

/-- `a(n-1)+A082691(n+1)+A000007(n)` -/
def P4088449403599571063.Spec : Prop :=
  ∀ n, P4088449403599571063.a n = A082692 (n + 1)

end A082692

/-! ## A082692.P10364441794362815742

`∑[a(n-1)*A288932(n+2)+1]` with `a(0)=1`
-/

namespace A082692.P10364441794362815742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A288932 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082692.P10364441794362815742

namespace A082692

/-- `∑[a(n-1)*A288932(n+2)+1]` -/
def P10364441794362815742.Spec : Prop :=
  ∀ n, P10364441794362815742.a n = A082692 (n + 1)

end A082692

/-! ## A082692.P214759969684487772

`A338478(A338478(a(n-1)))+A082691(n+1)` with `a(0)=1`
-/

namespace A082692.P214759969684487772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A082691 (n + 1)

end

end A082692.P214759969684487772

namespace A082692

/-- `A338478(A338478(a(n-1)))+A082691(n+1)` -/
def P214759969684487772.Spec : Prop :=
  ∀ n, P214759969684487772.a n = A082692 (n + 1)

end A082692

/-!
# A082693: Pyramidal sequence built with powers of 2.

The programs for A082693, the canonical program `A082693.P2141410081354610043` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082693 has offset 0).

The definition of A082693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082693.P18142139135716137639

`∏[1/a(n-floor(sqrt(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A082693.P18142139135716137639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 / f1 (n - Nat.sqrt n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082693.P18142139135716137639

namespace A082693

/-- `∏[1/a(n-floor(sqrt(n)))]` -/
def P18142139135716137639.Spec : Prop :=
  ∀ n, P18142139135716137639.a n = (A082693 n : ℚ)

end A082693

/-! ## A082693.P9518437364368178360

`2^(∑[(-1)^ceil(2*sqrt(n))]-1)`
-/

namespace A082693.P9518437364368178360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℚ) : ℝ)

end

end A082693.P9518437364368178360

namespace A082693

/-- `2^(∑[(-1)^ceil(2*sqrt(n))]-1)` -/
def P9518437364368178360.Spec : Prop :=
  ∀ n, P9518437364368178360.a n = (A082693 n : ℝ)

end A082693

/-! ## A082693.P5269897728629709781

`root(4^A053615(n), 2)`
-/

namespace A082693.P5269897728629709781
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A053615 n : ℤ) : ℝ) ^ (1 / (2 : ℝ))

end

end A082693.P5269897728629709781

namespace A082693

/-- `root(4^A053615(n), 2)` -/
def P5269897728629709781.Spec : Prop :=
  ∀ n, P5269897728629709781.a n = (A082693 n : ℝ)

end A082693

/-! ## A082693.P5804970279878163845

`2^A004738(n+1)/2`
-/

namespace A082693.P5804970279878163845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004738 (n + 1) : ℤ) / 2

end

end A082693.P5804970279878163845

namespace A082693

/-- `2^A004738(n+1)/2` -/
def P5804970279878163845.Spec : Prop :=
  ∀ n, P5804970279878163845.a n = (A082693 n : ℚ)

end A082693

/-! ## A082693.P2141410081354610043

`A000079(A053615(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082693

/-- `A000079(A053615(n))` -/
def P2141410081354610043.Spec : Prop :=
  ∀ n, P2141410081354610043.a n = A082693 n

theorem P2141410081354610043.correct : P2141410081354610043.Spec := by
  intro n
  simp only [A082693]

end A082693

/-! ## A082693.P4929693743521468662

`A060546(A253580(n))`
-/

namespace A082693.P4929693743521468662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A253580 n).toNat

end

end A082693.P4929693743521468662

namespace A082693

/-- `A060546(A253580(n))` -/
def P4929693743521468662.Spec : Prop :=
  ∀ n, P4929693743521468662.a n = A082693 n

end A082693

/-! ## A082693.P8671236697425842146

`A336996(A196199(n)²)`
-/

namespace A082693.P8671236697425842146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (A196199 n ^ 2).toNat

end

end A082693.P8671236697425842146

namespace A082693

/-- `A336996(A196199(n)²)` -/
def P8671236697425842146.Spec : Prop :=
  ∀ n, P8671236697425842146.a n = A082693 n

end A082693

/-! ## A082693.P8112782806076520551

`A011782(A004738(n+1))`
-/

namespace A082693.P8112782806076520551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004738 (n + 1)).toNat

end

end A082693.P8112782806076520551

namespace A082693

/-- `A011782(A004738(n+1))` -/
def P8112782806076520551.Spec : Prop :=
  ∀ n, P8112782806076520551.a n = A082693 n

end A082693

/-! ## A082693.P11837805420394331295

`A016116(A004741(n+1))`
-/

namespace A082693.P11837805420394331295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004741 (n + 1)).toNat

end

end A082693.P11837805420394331295

namespace A082693

/-- `A016116(A004741(n+1))` -/
def P11837805420394331295.Spec : Prop :=
  ∀ n, P11837805420394331295.a n = A082693 n

end A082693

/-! ## A082693.P3491053120339479801

`A000079(A004738(n+1)-1)`
-/

namespace A082693.P3491053120339479801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004738 (n + 1) - 1).toNat

end

end A082693.P3491053120339479801

namespace A082693

/-- `A000079(A004738(n+1)-1)` -/
def P3491053120339479801.Spec : Prop :=
  ∀ n, P3491053120339479801.a n = A082693 n

end A082693

/-! ## A082693.P268728948962455129

`A128099(A004738(n+1)²-1)`
-/

namespace A082693.P268728948962455129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128099 (A004738 (n + 1) ^ 2 - 1).toNat

end

end A082693.P268728948962455129

namespace A082693

/-- `A128099(A004738(n+1)²-1)` -/
def P268728948962455129.Spec : Prop :=
  ∀ n, P268728948962455129.a n = A082693 n

end A082693

/-! ## A082693.P16236470060064524638

`2^A004737(comp[n²])/2`
-/

namespace A082693.P16236470060064524638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) / 2

end

end A082693.P16236470060064524638

namespace A082693

/-- `2^A004737(comp[n²])/2` -/
def P16236470060064524638.Spec : Prop :=
  ∀ n, P16236470060064524638.a n = (A082693 n : ℚ)

end A082693

/-! ## A082693.P5841532592018201155

`A004175(A380763(n))`
-/

namespace A082693.P5841532592018201155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A380763 n).toNat

end

end A082693.P5841532592018201155

namespace A082693

/-- `A004175(A380763(n))` -/
def P5841532592018201155.Spec : Prop :=
  ∀ n, P5841532592018201155.a n = A082693 n

end A082693

/-! ## A082693.P11829493703622135003

`A000010(2^∑[(-1)^ceil(2*sqrt(n))])`
-/

namespace A082693.P11829493703622135003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))).toNat

end

end A082693.P11829493703622135003

namespace A082693

/-- `A000010(2^∑[(-1)^ceil(2*sqrt(n))])` -/
def P11829493703622135003.Spec : Prop :=
  ∀ n, P11829493703622135003.a n = A082693 n

end A082693

/-!
# A082694: Partial sums of A082693.

The programs for A082694, the canonical program `A082694.P15112384326944568904` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082694 has offset 0).

The definition of A082694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082694.P432806819523689499

`∑[2^(∑[(-1)^ceil(2*sqrt(n))]-1)]`
-/

namespace A082694.P432806819523689499
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f2 j - 1 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082694.P432806819523689499

namespace A082694

/-- `∑[2^(∑[(-1)^ceil(2*sqrt(n))]-1)]` -/
def P432806819523689499.Spec : Prop :=
  ∀ n, P432806819523689499.a n = (A082694 n : ℝ)

end A082694

/-! ## A082694.P15112384326944568904

`A082693(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082694

/-- `A082693(n)+a(n-1)` -/
def P15112384326944568904.Spec : Prop :=
  ∀ n, P15112384326944568904.a n = A082694 n

theorem P15112384326944568904.correct : P15112384326944568904.Spec := by
  intro n
  simp only [A082694]

end A082694

/-! ## A082694.P18367144756878724498

`∑[2^A004738(n+1)]/2`
-/

namespace A082694.P18367144756878724498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004738 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A082694.P18367144756878724498

namespace A082694

/-- `∑[2^A004738(n+1)]/2` -/
def P18367144756878724498.Spec : Prop :=
  ∀ n, P18367144756878724498.a n = (A082694 n : ℚ)

end A082694

/-! ## A082694.P10453295353314077086

`4*∑[2^(abs(A196199(n))-2)]`
-/

namespace A082694.P10453295353314077086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|A196199 n| - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082694.P10453295353314077086

namespace A082694

/-- `4*∑[2^(abs(A196199(n))-2)]` -/
def P10453295353314077086.Spec : Prop :=
  ∀ n, P10453295353314077086.a n = (A082694 n : ℚ)

end A082694

/-! ## A082694.P11939870115703658446

`floor(∑[2^A004737(comp[n²])/2])`
-/

namespace A082694.P11939870115703658446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004737 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℤ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A082694.P11939870115703658446

namespace A082694

/-- `floor(∑[2^A004737(comp[n²])/2])` -/
def P11939870115703658446.Spec : Prop :=
  ∀ n, P11939870115703658446.a n = A082694 n

end A082694

/-!
# A082696: Continued fraction expansion of Product_{p prime} (1+1/(p*(p-1))).

The programs for A082696, there is no canonical definition to state claims against.
-/

/-! ## A082696.P16882234593498599130

`gcd(A041887(A119348(3*n+1)), A108327(n+1))`
-/

namespace A082696.P16882234593498599130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041887 (A119348 (3 * n + 1)).toNat) (A108327 (n + 1))

end

end A082696.P16882234593498599130

/-!
# A082697: Numbers k such that (4*10^(k-1) - 7)/3 is a plateau prime.

The programs for A082697, there is no canonical definition to state claims against.
-/

/-! ## A082697.P7598921017650876428

`A056244(n+2)+2`
-/

namespace A082697.P7598921017650876428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056244 (n + 2) + 2

end

end A082697.P7598921017650876428

/-! ## A082697.P14223711832650453164

`A259050(n+2)+1`
-/

namespace A082697.P14223711832650453164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259050 (n + 2) + 1

end

end A082697.P14223711832650453164

/-! ## A082697.P6493593962638093803

`or(1, A259050(comp[A064108(n)]))`
-/

namespace A082697.P6493593962638093803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064108 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259050 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A082697.P6493593962638093803

/-! ## A082697.P2194843562266008051

`A004442(A259050(n+2))`
-/

namespace A082697.P2194843562266008051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A259050 (n + 2)).toNat

end

end A082697.P2194843562266008051

/-!
# A082698: Numbers k such that (13*10^(k-1) - 31)/9 is a plateau prime.

The programs for A082698, there is no canonical definition to state claims against.
-/

/-! ## A082698.P13292286639271309600

`A056245(n+2)+2`
-/

namespace A082698.P13292286639271309600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056245 (n + 2) + 2

end

end A082698.P13292286639271309600

/-!
# A082699: Numbers k such that (14*10^(k-1) - 41)/9 is a plateau prime.

The programs for A082699, there is no canonical definition to state claims against.
-/

/-! ## A082699.P11784758108552388654

`A056246(n+2)+2`
-/

namespace A082699.P11784758108552388654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056246 (n + 2) + 2

end

end A082699.P11784758108552388654

/-! ## A082699.P15901076189574522431

`A259122(n+2)+1`
-/

namespace A082699.P15901076189574522431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259122 (n + 2) + 1

end

end A082699.P15901076189574522431

