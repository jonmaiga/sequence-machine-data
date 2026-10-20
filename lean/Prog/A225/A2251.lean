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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A225101: Numerator of (2^n - 2)/n.

The programs for A225101, the canonical program `A225101.P2374010593562037560` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225101 has offset 1).

The definition of A225101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225101.P2374010593562037560

`A000918(n+1)/A214606(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225101

/-- `A000918(n+1)/A214606(n+1)` -/
def P2374010593562037560.Spec : Prop :=
  ∀ n, P2374010593562037560.a n = (A225101 (n + 1) : ℚ)

end A225101

/-! ## A225101.P1264973408975360539

`A000918(n+1)/gcd(A000918(n+1), A022998(n+1))`
-/

namespace A225101.P1264973408975360539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 1) : ℚ) / (Int.gcd (A000918 (n + 1)) (A022998 (n + 1)) : ℚ)

end

end A225101.P1264973408975360539

namespace A225101

/-- `A000918(n+1)/gcd(A000918(n+1), A022998(n+1))` -/
def P1264973408975360539.Spec : Prop :=
  ∀ n, P1264973408975360539.a n = (A225101 (n + 1) : ℚ)

end A225101

/-! ## A225101.P1271218678521320245

`lcm(n+1, 2*A000225(n))/(n+1)`
-/

namespace A225101.P1271218678521320245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (2 * A000225 n) : ℚ) / (n + 1 : ℚ)

end

end A225101.P1271218678521320245

namespace A225101

/-- `lcm(n+1, 2*A000225(n))/(n+1)` -/
def P1271218678521320245.Spec : Prop :=
  ∀ n, P1271218678521320245.a n = (A225101 (n + 1) : ℚ)

end A225101

/-! ## A225101.P8021671120852189970

`A260006(n)/gcd(∑[n+1], A260006(n))`
-/

namespace A225101.P8021671120852189970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260006 n : ℚ) / (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A260006 n) : ℚ)

end

end A225101.P8021671120852189970

namespace A225101

/-- `A260006(n)/gcd(∑[n+1], A260006(n))` -/
def P8021671120852189970.Spec : Prop :=
  ∀ n, P8021671120852189970.a n = (A225101 (n + 1) : ℚ)

end A225101

/-!
# A225102: Numbers that can be represented as a sum of two distinct nontrivial prime powers (numbers of the form p^k where p is a prime number and k >= 2).

The programs for A225102, there is no canonical definition to state claims against.
-/

/-! ## A225102.P12615123943936592168

`lt[0, A225099(n)]`
-/

namespace A225102.P12615123943936592168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225102.P12615123943936592168

/-! ## A225102.P5112489049093340086

`eq[1, A000010(a(A225099(n)))]` with `a(0)=3`
-/

namespace A225102.P5112489049093340086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A225099 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225102.P5112489049093340086

/-! ## A225102.P14408526098309478308

`eq[1, A000045(a(A225099(n)))]` with `a(0)=3`
-/

namespace A225102.P14408526098309478308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A225099 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225102.P14408526098309478308

/-! ## A225102.P12935791193549274322

`eq[1, A001222(a(A225099(n)))]` with `a(0)=4`
-/

namespace A225102.P12935791193549274322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A225099 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225102.P12935791193549274322

/-! ## A225102.P7571789644977071150

`eq[1, A007318(a(A225099(n)))]` with `a(0)=4`
-/

namespace A225102.P7571789644977071150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A225099 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225102.P7571789644977071150

/-!
# A225105: Odd numbers n such that the largest odd term in Collatz(3x+1) trajectory of n is prime.

The programs for A225105, there is no canonical definition to state claims against.
-/

/-! ## A225105.P12504919037226003295

`eq[1-2*n%2, -gcd(1-(2*(n+1)-∏{e}[n+1, #+1])+(n+1)²-n², A270831(n+1))]`
-/

namespace A225105.P12504919037226003295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (n % 2) : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.gcd (1 - ((2 * (n + 1) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ)) + (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ))) (A270831 (n + 1)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225105.P12504919037226003295

/-! ## A225105.P18080617029820783154

`∑[2*A227481(A168582(n))]+1`
-/

namespace A225105.P18080617029820783154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227481 (A168582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225105.P18080617029820783154

/-! ## A225105.P4694272315765212470

`2*record[A163352(A072438(n+1))]+1`
-/

namespace A225105.P4694272315765212470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A072438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A225105.P4694272315765212470

/-! ## A225105.P15650033497125540635

`lt[A328972(A236757(n+4)), (n-1)^(n%2)]`
-/

namespace A225105.P15650033497125540635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328972 (A236757 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225105.P15650033497125540635

/-! ## A225105.P11425260287587100926

`lt[A001498(n+2), A255852(n)]`
-/

namespace A225105.P11425260287587100926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225105.P11425260287587100926

/-!
# A225106: Prime powers (A025475) that can be represented as a sum of two distinct prime powers.

The programs for A225106, there is no canonical definition to state claims against.
-/

/-! ## A225106.P3182821328614532039

`A331701(∑{d}[n+1, #]+∏{p}[2*(n+1), #]/2)`
-/

namespace A225106.P3182821328614532039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331701 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 2)).toNat

end

end A225106.P3182821328614532039

/-!
# A225107: Number of (4n-3)-digit 4th powers in carryless arithmetic mod 10.

The programs for A225107, the canonical program `A225107.P6337761278597126492` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225107 has offset 1).

The definition of A225107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225107.P6337761278597126492

`12*a(n-1)-20*a(n-2)` with `a(0)=3, a(1)=24`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225107

/-- `12*a(n-1)-20*a(n-2)` -/
def P6337761278597126492.Spec : Prop :=
  ∀ n, P6337761278597126492.a n = A225107 (n + 1)

theorem P6337761278597126492.correct : P6337761278597126492.Spec := by
  intro n
  simp only [A225107, Nat.add_sub_cancel]

end A225107

/-! ## A225107.P9046712708955500439

`ogf((3-12x)/(1-12x+20x^2))`
-/

namespace A225107.P9046712708955500439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -12] [1, -12, 20] n

end

end A225107.P9046712708955500439

namespace A225107

/-- `ogf((3-12x)/(1-12x+20x^2))` -/
def P9046712708955500439.Spec : Prop :=
  ∀ n, P9046712708955500439.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P8928672619930470313

`Δ[2^n*ceil(5^n/4)]`
-/

namespace A225107.P8928672619930470313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌈(5 ^ n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225107.P8928672619930470313

namespace A225107

/-- `Δ[2^n*ceil(5^n/4)]` -/
def P8928672619930470313.Spec : Prop :=
  ∀ n, P8928672619930470313.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P8709746238253864547

`10*a(n-1)-3*2^n` with `a(0)=3`
-/

namespace A225107.P8709746238253864547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  10 * a (n - 1) - (3 * 2 ^ n : ℤ)

end

end A225107.P8709746238253864547

namespace A225107

/-- `10*a(n-1)-3*2^n` -/
def P8709746238253864547.Spec : Prop :=
  ∀ n, P8709746238253864547.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P15485456872656973820

`3*A083234(n)`
-/

namespace A225107.P15485456872656973820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083234 n

end

end A225107.P15485456872656973820

namespace A225107

/-- `3*A083234(n)` -/
def P15485456872656973820.Spec : Prop :=
  ∀ n, P15485456872656973820.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P11743571775387098139

`(A198769(n)+1)*2^n`
-/

namespace A225107.P11743571775387098139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198769 n + 1) * (2 ^ n : ℤ)

end

end A225107.P11743571775387098139

namespace A225107

/-- `(A198769(n)+1)*2^n` -/
def P11743571775387098139.Spec : Prop :=
  ∀ n, P11743571775387098139.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P8679939599555112210

`A337855(n+2)+2*a(n-1)` with `a(0)=3`
-/

namespace A225107.P8679939599555112210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A337855 (n + 2) + 2 * a (n - 1)

end

end A225107.P8679939599555112210

namespace A225107

/-- `A337855(n+2)+2*a(n-1)` -/
def P8679939599555112210.Spec : Prop :=
  ∀ n, P8679939599555112210.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P1123448951991359391

`lcm(11, a(n-1))-A007283(n)-a(n-1)` with `a(0)=3`
-/

namespace A225107.P1123448951991359391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - A007283 n - a (n - 1)

end

end A225107.P1123448951991359391

namespace A225107

/-- `lcm(11, a(n-1))-A007283(n)-a(n-1)` -/
def P1123448951991359391.Spec : Prop :=
  ∀ n, P1123448951991359391.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P6922775975784294204

`Δ[A033484(n)]*A083065(n)`
-/

namespace A225107.P6922775975784294204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A083065 n

end

end A225107.P6922775975784294204

namespace A225107

/-- `Δ[A033484(n)]*A083065(n)` -/
def P6922775975784294204.Spec : Prop :=
  ∀ n, P6922775975784294204.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P9763363919112721267

`Δ[A181565(n)]*A083065(n)`
-/

namespace A225107.P9763363919112721267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A083065 n

end

end A225107.P9763363919112721267

namespace A225107

/-- `Δ[A181565(n)]*A083065(n)` -/
def P9763363919112721267.Spec : Prop :=
  ∀ n, P9763363919112721267.a n = A225107 (n + 1)

end A225107

/-! ## A225107.P535847180087355227

`lcm(Δ[A122803(n)], A083234(n))`
-/

namespace A225107.P535847180087355227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A083234 n)

end

end A225107.P535847180087355227

namespace A225107

/-- `lcm(Δ[A122803(n)], A083234(n))` -/
def P535847180087355227.Spec : Prop :=
  ∀ n, (P535847180087355227.a n : ℤ) = A225107 (n + 1)

end A225107

/-! ## A225107.P4950076400075740474

`(A000079(n+1)+A000079(n))*A083065(n)`
-/

namespace A225107.P4950076400075740474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) + A000079 n) * A083065 n

end

end A225107.P4950076400075740474

namespace A225107

/-- `(A000079(n+1)+A000079(n))*A083065(n)` -/
def P4950076400075740474.Spec : Prop :=
  ∀ n, P4950076400075740474.a n = A225107 (n + 1)

end A225107

/-!
# A225108: Number of pairs (x,y) of elements x of the symmetric group S_{n-1} and y of the symmetric group S_{n} that commute. Here the symmetric group S_{n-m} is to be thought of as the subgroup of the symmetric group S_n which stabilizes n-m+1,n-m+2,...n.

The programs for A225108, there is no canonical definition to state claims against.
-/

/-! ## A225108.P358311095967702707

`A000142(n)*A000070(n)`
-/

namespace A225108.P358311095967702707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000070 n

end

end A225108.P358311095967702707

/-! ## A225108.P9349743977582590774

`n!*∑[A000041(n)]`
-/

namespace A225108.P9349743977582590774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225108.P9349743977582590774

/-! ## A225108.P2171067137213447698

`n!*∑[∑[A002865(n)]]`
-/

namespace A225108.P2171067137213447698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225108.P2171067137213447698

/-! ## A225108.P2337770651010866335

`n!*∑[A000065(n)+1]`
-/

namespace A225108.P2337770651010866335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225108.P2337770651010866335

/-! ## A225108.P16155565669853301495

`n!*∑[A133041(n)-n]`
-/

namespace A225108.P16155565669853301495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225108.P16155565669853301495

/-! ## A225108.P3483608132708806334

`n!*∑[∑[A085811(n+3)]]`
-/

namespace A225108.P3483608132708806334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225108.P3483608132708806334

/-! ## A225108.P17997020963301132432

`A053529(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A225108.P17997020963301132432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053529 n + (n : ℤ) * a (n - 1)

end

end A225108.P17997020963301132432

/-! ## A225108.P8552170664739135858

`A234937(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A225108.P8552170664739135858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A234937 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A225108.P8552170664739135858

/-! ## A225108.P6420821996923217593

`∑[A000041(n)]*A000142(n)`
-/

namespace A225108.P6420821996923217593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A225108.P6420821996923217593

/-!
# A225109: E.g.f. (sin(3x) + cos x) / cos(4x).

The programs for A225109, there is no canonical definition to state claims against.
-/

/-! ## A225109.P11127133431477712636

`A156201(n)/A006873(n)*A156205(n)`
-/

namespace A225109.P11127133431477712636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156201 n : ℚ) / (A006873 n : ℚ) * (A156205 n : ℚ)

end

end A225109.P11127133431477712636

/-!
# A225111: Number of lattice paths without interior points from {n}^n to {0}^n using steps that decrement one component by 1.

The programs for A225111, there is no canonical definition to state claims against.
-/

/-! ## A225111.P5192348608264511670

`A225094(∑[4*n])`
-/

namespace A225111.P5192348608264511670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225111.P5192348608264511670

/-!
# A225114: Number of skew partitions of n whose diagrams have no empty rows and columns.

The programs for A225114, there is no canonical definition to state claims against.
-/

/-! ## A225114.P6995676380667593002

`A060384(A330169(n+2)+3)`
-/

namespace A225114.P6995676380667593002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A330169 (n + 2) + 3).toNat

end

end A225114.P6995676380667593002

/-! ## A225114.P16411925885935473887

`A350348(A351797(n+1))`
-/

namespace A225114.P16411925885935473887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A351797 (n + 1)).toNat

end

end A225114.P16411925885935473887

/-! ## A225114.P15176171720086175110

`A008676(A330169(n+3))`
-/

namespace A225114.P15176171720086175110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A330169 (n + 3)).toNat

end

end A225114.P15176171720086175110

/-!
# A225115: Triangular numbers of the form p^k - 1, where p is a prime number and k >= 2.

The programs for A225115, there is no canonical definition to state claims against.
-/

/-! ## A225115.P5037810362819615877

`A226102(n+2)-1`
-/

namespace A225115.P5037810362819615877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226102 (n + 2) - 1

end

end A225115.P5037810362819615877

/-! ## A225115.P15248076269272461997

`∑[abs(Δ[A226102(n+1)])]`
-/

namespace A225115.P15248076269272461997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225115.P15248076269272461997

/-! ## A225115.P15028084098011165297

`record[Δ[A226102(A004736(n+1))]]`
-/

namespace A225115.P15028084098011165297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226102 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225115.P15028084098011165297

/-! ## A225115.P1695346746959582267

`record[Δ[A226102(A130296(n+1))]]`
-/

namespace A225115.P1695346746959582267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226102 (A130296 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225115.P1695346746959582267

/-! ## A225115.P15772605840291405903

`∑[A000007(n+1)+Δ[A226102(n+1)]]`
-/

namespace A225115.P15772605840291405903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225115.P15772605840291405903

/-!
# A225116: a(n) = 3^n*A_{n, 1/3}(-1) where A_{n, k}(x) are the generalized Eulerian polynomials.

The programs for A225116, there is no canonical definition to state claims against.
-/

/-! ## A225116.P15581395347984753159

`A092440(n)+A155585(n)-1`
-/

namespace A225116.P15581395347984753159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n + (A155585 n - 1)

end

end A225116.P15581395347984753159

/-! ## A225116.P1742098515191968713

`A084623(n+1)*A157805(n)`
-/

namespace A225116.P1742098515191968713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 1) * A157805 n

end

end A225116.P1742098515191968713

/-! ## A225116.P13242373535508137270

`2*A000079(n)²-A119881(n)`
-/

namespace A225116.P13242373535508137270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A119881 n

end

end A225116.P13242373535508137270

/-! ## A225116.P15926924918412613887

`A000079(2*n+1)-A119881(n)`
-/

namespace A225116.P15926924918412613887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A119881 n

end

end A225116.P15926924918412613887

/-! ## A225116.P618391143712265322

`A029744(A016825(n))-A119881(n)`
-/

namespace A225116.P618391143712265322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A016825 n).toNat - A119881 n

end

end A225116.P618391143712265322

/-!
# A225117: Triangle read by rows, coefficients of the generalized Eulerian polynomials A_{n, 3}(x) in descending order.

The programs for A225117, there is no canonical definition to state claims against.
-/

/-! ## A225117.P18282646765274235586

`abs(A154594(n)/A059268(n))`
-/

namespace A225117.P18282646765274235586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A154594 n : ℚ) / (A059268 n : ℚ)|

end

end A225117.P18282646765274235586

/-! ## A225117.P10808946751779988826

`gcd(A000038(n), A154594(n))/A059268(n)`
-/

namespace A225117.P10808946751779988826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A154594 n) : ℚ) / (A059268 n : ℚ)

end

end A225117.P10808946751779988826

/-! ## A225117.P5697193670750110469

`lcm(A154594(n)/A059268(n), A000010(((-1)^n)²))`
-/

namespace A225117.P5697193670750110469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A154594 n : ℚ) / (A059268 n : ℚ))) (A000010 (((-1) ^ n) ^ 2).toNat)

end

end A225117.P5697193670750110469

/-! ## A225117.P12252084124498069002

`sqrt((A154594(n)/A059268(n))^A020639(2*(n+1)²))`
-/

namespace A225117.P12252084124498069002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((A154594 n : ℚ) / (A059268 n : ℚ)) ^ (A020639 (2 * (n + 1) ^ 2) : ℤ) : ℝ)

end

end A225117.P12252084124498069002

/-! ## A225117.P13416900818046468423

`(A154853(n)+A154646(n))/2`
-/

namespace A225117.P13416900818046468423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154853 n + A154646 n : ℚ) / 2

end

end A225117.P13416900818046468423

/-!
# A225118: Triangle read by rows, coefficients of the generalized Eulerian polynomials A_{n, 4}(x) in descending order.

The programs for A225118, there is no canonical definition to state claims against.
-/

/-! ## A225118.P302583069538060833

`A154854(n)+A154647(n)`
-/

namespace A225118.P302583069538060833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154854 n + A154647 n

end

end A225118.P302583069538060833

/-! ## A225118.P9815409246833194137

`A154647(n)-A154854(A061579(n))`
-/

namespace A225118.P9815409246833194137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154647 n - A154854 (A061579 n).toNat

end

end A225118.P9815409246833194137

/-! ## A225118.P3112595115028684969

`A154854(n)+(A176199(n)+A098355(n))/2`
-/

namespace A225118.P3112595115028684969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154854 n : ℚ) + (A176199 n + A098355 n : ℚ) / 2

end

end A225118.P3112595115028684969

/-! ## A225118.P8404772859899501035

`A154854(n)+floor(A174678(n)+A098355(n)/2)`
-/

namespace A225118.P8404772859899501035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154854 n + ⌊(A174678 n : ℚ) + (A098355 n : ℚ) / 2⌋

end

end A225118.P8404772859899501035

/-! ## A225118.P6346640449431864305

`A154854(A057944(n))+A174678(n)+A154854(n)`
-/

namespace A225118.P6346640449431864305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154854 (A057944 n).toNat + (A174678 n + A154854 n)

end

end A225118.P6346640449431864305

/-!
# A225120: Square numbers whose decimal representation can be divided into two or more semiprimes.

The programs for A225120, there is no canonical definition to state claims against.
-/

/-! ## A225120.P10777119290014449368

`eq[2, A217743(A114294(2*n+1))]²`
-/

namespace A225120.P10777119290014449368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (A114294 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A225120.P10777119290014449368

/-! ## A225120.P14254165850144766627

`eq[A195825(2*n+3), A284512(A020902(3*(n+1)))]²`
-/

namespace A225120.P14254165850144766627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (A020902 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A225120.P14254165850144766627

/-!
# A225121: Number of standard Young tableaux with shapes corresponding to partitions into distinct parts with minimal difference 2.

The programs for A225121, there is no canonical definition to state claims against.
-/

/-! ## A225121.P11598393149510274885

`C(n, A056974(n!))`
-/

namespace A225121.P11598393149510274885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A056974 (Nat.factorial n)).toNat

end

end A225121.P11598393149510274885

/-! ## A225121.P14672615670549168624

`C(n, A235127(n!))`
-/

namespace A225121.P14672615670549168624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A235127 (Nat.factorial n)).toNat

end

end A225121.P14672615670549168624

/-! ## A225121.P9428791838894415875

`C(n, A328828(n!))`
-/

namespace A225121.P9428791838894415875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A328828 (Nat.factorial n)).toNat

end

end A225121.P9428791838894415875

/-! ## A225121.P14170951219506699449

`C(n, A366989(3^n))`
-/

namespace A225121.P14170951219506699449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A366989 (3 ^ n)).toNat

end

end A225121.P14170951219506699449

/-! ## A225121.P1189914679456680378

`C(n, A274771(1/∏{d}[n, #]*n!))`
-/

namespace A225121.P1189914679456680378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A274771 (SequenceMachineLib.roundAway (1 / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) * (Nat.factorial n : ℚ))).toNat).toNat

end

end A225121.P1189914679456680378

/-!
# A225123: Denominators of Integral_{x=0..Pi/2} sin(2*n*x)*log(cosec(x)) dx.

The programs for A225123, there is no canonical definition to state claims against.
-/

/-! ## A225123.P10345377392833623320

`A135278(n)*A177863(A003701(n))`
-/

namespace A225123.P10345377392833623320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A177863 (A003701 n).toNat

end

end A225123.P10345377392833623320

/-!
# A225124: a(n) = least number k such that 2^n is highest in Collatz(3x+1) trajectory of k.

The programs for A225124, there is no canonical definition to state claims against.
-/

/-! ## A225124.P7917930539218717144

`A231610(n*floor(n^(1/3))^3)`
-/

namespace A225124.P7917930539218717144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231610 ((n : ℤ) * ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3).toNat

end

end A225124.P7917930539218717144

/-! ## A225124.P2498474849314189958

`A231610(n)^(floor(n^(1/3))^3)²`
-/

namespace A225124.P2498474849314189958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231610 n : ℚ) ^ ((⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3) ^ 2 : ℤ)

end

end A225124.P2498474849314189958

/-! ## A225124.P18160069571255997956

`A231610(n)%A027578(n!)`
-/

namespace A225124.P18160069571255997956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231610 n) (A027578 (Nat.factorial n))

end

end A225124.P18160069571255997956

/-! ## A225124.P13917154705458676468

`A257684(∑{digits}[n, #!])+A231610(n)`
-/

namespace A225124.P13917154705458676468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum + A231610 n

end

end A225124.P13917154705458676468

/-!
# A225126: Central terms of the triangle in A048152.

The programs for A225126, the canonical program `A225126.P2075000236211171073` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225126 has offset 1).

The definition of A225126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225126.P2075000236211171073

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2, a(4)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225126

/-- `2*a(n-2)-a(n-4)` -/
def P2075000236211171073.Spec : Prop :=
  ∀ n, P2075000236211171073.a n = A225126 (n + 1)

theorem P2075000236211171073.correct : P2075000236211171073.Spec := by
  intro n
  simp only [A225126, Nat.add_sub_cancel]

end A225126

/-! ## A225126.P10902842483000446131

`n²%Δ[n²]`
-/

namespace A225126.P10902842483000446131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A225126.P10902842483000446131

namespace A225126

/-- `n²%Δ[n²]` -/
def P10902842483000446131.Spec : Prop :=
  ∀ n, P10902842483000446131.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P18405502689172648799

`abs(-n²%(2*n+1))`
-/

namespace A225126.P18405502689172648799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-(n ^ 2 : ℤ)) (2 * n + 1 : ℤ)|

end

end A225126.P18405502689172648799

namespace A225126

/-- `abs(-n²%(2*n+1))` -/
def P18405502689172648799.Spec : Prop :=
  ∀ n, P18405502689172648799.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P15046287241362971542

`or(1, n)-a(n-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A225126.P15046287241362971542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.lor 1 n : ℤ) - a (n - 1) + (n : ℤ)

end

end A225126.P15046287241362971542

namespace A225126

/-- `or(1, n)-a(n-1)+n` -/
def P15046287241362971542.Spec : Prop :=
  ∀ n, P15046287241362971542.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P11579684543023955925

`-(-(n+1)²%(2*n+1))`
-/

namespace A225126.P11579684543023955925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-((n + 1) ^ 2 : ℤ)) (2 * n + 1 : ℤ)

end

end A225126.P11579684543023955925

namespace A225126

/-- `-(-(n+1)²%(2*n+1))` -/
def P11579684543023955925.Spec : Prop :=
  ∀ n, P11579684543023955925.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P12326126355593316294

`a(n-2)+gcd(3, n%2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A225126.P12326126355593316294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 2) + Nat.gcd 3 (n % 2)

end

end A225126.P12326126355593316294

namespace A225126

/-- `a(n-2)+gcd(3, n%2)` -/
def P12326126355593316294.Spec : Prop :=
  ∀ n, (P12326126355593316294.a n : ℤ) = A225126 (n + 1)

end A225126

/-! ## A225126.P17444258344262371568

`∑[a(gcd(2, n))-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A225126.P17444258344262371568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (Nat.gcd 2 n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225126.P17444258344262371568

namespace A225126

/-- `∑[a(gcd(2, n))-a(n-1)]` -/
def P17444258344262371568.Spec : Prop :=
  ∀ n, P17444258344262371568.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P6258045691710628753

`Δ[floor(lcm(n, n+2)/(n+3))]+n`
-/

namespace A225126.P6258045691710628753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (n + 2) : ℚ) / (n + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A225126.P6258045691710628753

namespace A225126

/-- `Δ[floor(lcm(n, n+2)/(n+3))]+n` -/
def P6258045691710628753.Spec : Prop :=
  ∀ n, P6258045691710628753.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P122819644329984074

`(a(n-1)+n)%(2*n)+1` with `a(0)=0, a(1)=1`
-/

namespace A225126.P122819644329984074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + n) % (2 * n) + 1

end

end A225126.P122819644329984074

namespace A225126

/-- `(a(n-1)+n)%(2*n)+1` -/
def P122819644329984074.Spec : Prop :=
  ∀ n, (P122819644329984074.a n : ℤ) = A225126 (n + 1)

end A225126

/-! ## A225126.P16101500162776659403

`∑[a(n-2)+3]/a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A225126.P16101500162776659403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A225126.P16101500162776659403

namespace A225126

/-- `∑[a(n-2)+3]/a(n-1)` -/
def P16101500162776659403.Spec : Prop :=
  ∀ n, P16101500162776659403.a n = (A225126 (n + 1) : ℚ)

end A225126

/-! ## A225126.P9411182150959400452

`a(n-2)+3^((n+1)%2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A225126.P9411182150959400452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 2) + 3 ^ ((n + 1) % 2)

end

end A225126.P9411182150959400452

namespace A225126

/-- `a(n-2)+3^((n+1)%2)` -/
def P9411182150959400452.Spec : Prop :=
  ∀ n, (P9411182150959400452.a n : ℤ) = A225126 (n + 1)

end A225126

/-! ## A225126.P17834400719725816183

`floor((n+1)*(2-a(n-1)/n))` with `a(0)=0, a(1)=1`
-/

namespace A225126.P17834400719725816183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n + 1 : ℚ) * (2 - (a (n - 1) : ℚ) / (n : ℚ))⌋

end

end A225126.P17834400719725816183

namespace A225126

/-- `floor((n+1)*(2-a(n-1)/n))` -/
def P17834400719725816183.Spec : Prop :=
  ∀ n, P17834400719725816183.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P3498280354358859680

`∑[∑[3-a(n-1)]]/a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A225126.P3498280354358859680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / a (n - 1)

end

end A225126.P3498280354358859680

namespace A225126

/-- `∑[∑[3-a(n-1)]]/a(n-1)` -/
def P3498280354358859680.Spec : Prop :=
  ∀ n, P3498280354358859680.a n = (A225126 (n + 1) : ℚ)

end A225126

/-! ## A225126.P9674412773589991948

`2*n-(n*(n+3))%(2*n+1)`
-/

namespace A225126.P9674412773589991948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n * (n + 3) % (2 * n + 1) : ℕ) : ℤ)

end

end A225126.P9674412773589991948

namespace A225126

/-- `2*n-(n*(n+3))%(2*n+1)` -/
def P9674412773589991948.Spec : Prop :=
  ∀ n, P9674412773589991948.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P8362685084472197790

`∑[4-a(n-1)]+1-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A225126.P8362685084472197790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - a (n - 1))

end

end A225126.P8362685084472197790

namespace A225126

/-- `∑[4-a(n-1)]+1-a(n-1)` -/
def P8362685084472197790.Spec : Prop :=
  ∀ n, P8362685084472197790.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P10937455583350591081

`1-(a(n-1)-∑[4-a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A225126.P10937455583350591081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225126.P10937455583350591081

namespace A225126

/-- `1-(a(n-1)-∑[4-a(n-1)])` -/
def P10937455583350591081.Spec : Prop :=
  ∀ n, P10937455583350591081.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P13797007595061295668

`floor(a(n-2)+n/a(n-1)+1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A225126.P13797007595061295668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / (a (n - 1) : ℚ) + 1)⌋

end

end A225126.P13797007595061295668

namespace A225126

/-- `floor(a(n-2)+n/a(n-1)+1)` -/
def P13797007595061295668.Spec : Prop :=
  ∀ n, P13797007595061295668.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P14760347388224267684

`(2*n+1)%2*(n+1)²%(2*n+1)`
-/

namespace A225126.P14760347388224267684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 2 * ((n + 1) ^ 2 % (2 * n + 1))

end

end A225126.P14760347388224267684

namespace A225126

/-- `(2*n+1)%2*(n+1)²%(2*n+1)` -/
def P14760347388224267684.Spec : Prop :=
  ∀ n, (P14760347388224267684.a n : ℤ) = A225126 (n + 1)

end A225126

/-! ## A225126.P17371654433764611761

`eq[n-1, and(n+1, n-1)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A225126.P17371654433764611761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - a (n - 1)

end

end A225126.P17371654433764611761

namespace A225126

/-- `eq[n-1, and(n+1, n-1)]-a(n-1)` -/
def P17371654433764611761.Spec : Prop :=
  ∀ n, P17371654433764611761.a n = A225126 (n + 1)

end A225126

/-! ## A225126.P4651532773531837470

`n+1-Δ[A319702(n+1)]`
-/

namespace A225126.P4651532773531837470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A225126.P4651532773531837470

namespace A225126

/-- `n+1-Δ[A319702(n+1)]` -/
def P4651532773531837470.Spec : Prop :=
  ∀ n, P4651532773531837470.a n = A225126 (n + 1)

end A225126

/-!
# A225136: Numbers that are concatenations of triprimes.

The programs for A225136, there is no canonical definition to state claims against.
-/

/-! ## A225136.P2163649050634574413

`A017365(A014612(n+1)%A239934(2*(n+1)))`
-/

namespace A225136.P2163649050634574413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (Int.tmod (A014612 (n + 1)) (A239934 (2 * (n + 1)))).toNat

end

end A225136.P2163649050634574413

/-! ## A225136.P14300123087378348675

`A017365(A014612(n+1)+A000038(A153189(n)))`
-/

namespace A225136.P14300123087378348675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A014612 (n + 1) + A000038 (A153189 n).toNat).toNat

end

end A225136.P14300123087378348675

/-! ## A225136.P16226097588391415209

`A017365(A014612(n+1))*A057427(A259753(n+1))`
-/

namespace A225136.P16226097588391415209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A014612 (n + 1)).toNat * A057427 (A259753 (n + 1)).toNat

end

end A225136.P16226097588391415209

/-! ## A225136.P5499494524476431337

`A179527(A225135(n+1))+A017365(A014612(n+1))`
-/

namespace A225136.P5499494524476431337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A225135 (n + 1)).toNat + A017365 (A014612 (n + 1)).toNat

end

end A225136.P5499494524476431337

/-! ## A225136.P13864981530179885407

`A017365(A014612(n+1))%A038009(2*(n+1))`
-/

namespace A225136.P13864981530179885407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017365 (A014612 (n + 1)).toNat) (A038009 (2 * (n + 1)))

end

end A225136.P13864981530179885407

/-!
# A225137: Integer nearest to (4*((S(n))^(n-1))), where S(n) = Sum_{i=0..2} (C(i)*(log(log(A*(B+n^(8/3)))))^(2i)) (see coefficients A, B, C(i) in comments).

The programs for A225137, there is no canonical definition to state claims against.
-/

/-! ## A225137.P15846460966859361265

`A006880(n+1)-A225138(n+1)`
-/

namespace A225137.P15846460966859361265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A225138 (n + 1)

end

end A225137.P15846460966859361265

/-! ## A225137.P12017795279427644530

`∑[A006879(n+1)]-A225138(n+1)`
-/

namespace A225137.P12017795279427644530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A225138 (n + 1)

end

end A225137.P12017795279427644530

/-! ## A225137.P3212050022646835375

`A057754(n+1)-(A225138(n+1)+A057752(n+1))`
-/

namespace A225137.P3212050022646835375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - (A225138 (n + 1) + A057752 (n + 1))

end

end A225137.P3212050022646835375

/-! ## A225137.P10169116494221569718

`A190802(n+1)-(A225138(n+1)+A106313(n+1))`
-/

namespace A225137.P10169116494221569718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) - (A225138 (n + 1) + A106313 (n + 1))

end

end A225137.P10169116494221569718

/-! ## A225137.P9808064907925865024

`A223166(n+1)-(A225138(n+1)+A223167(n+1))`
-/

namespace A225137.P9808064907925865024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) - (A225138 (n + 1) + A223167 (n + 1))

end

end A225137.P9808064907925865024

/-!
# A225138: Difference between pi(10^n) and nearest integer to (4*((S(n))^(n-1))) where pi(10^n) = number of primes <= 10^n (A006880) and S(n) = Sum_{i=0..2} (C(i)*(log(log(A*(B+n^(8/3)))))^(2i)) (A225137).

The programs for A225138, there is no canonical definition to state claims against.
-/

/-! ## A225138.P9245125624333227175

`A006880(n+1)-A225137(n+1)`
-/

namespace A225138.P9245125624333227175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A225137 (n + 1)

end

end A225138.P9245125624333227175

/-! ## A225138.P3298577434409649509

`A057834(n+1)+A057835(n+1)-A225137(n+1)`
-/

namespace A225138.P3298577434409649509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057834 (n + 1) + (A057835 (n + 1) - A225137 (n + 1))

end

end A225138.P3298577434409649509

/-! ## A225138.P16730110630583410770

`A190802(n+1)-(A225137(n+1)+A106313(n+1))`
-/

namespace A225138.P16730110630583410770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) - (A225137 (n + 1) + A106313 (n + 1))

end

end A225138.P16730110630583410770

/-! ## A225138.P2563927566704632291

`A223166(n+1)-(A225137(n+1)+A223167(n+1))`
-/

namespace A225138.P2563927566704632291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) - (A225137 (n + 1) + A223167 (n + 1))

end

end A225138.P2563927566704632291

/-! ## A225138.P5205056522275702661

`A229255(n+1)+A229256(n+1)-A225137(n+1)`
-/

namespace A225138.P5205056522275702661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229255 (n + 1) + (A229256 (n + 1) - A225137 (n + 1))

end

end A225138.P5205056522275702661

/-!
# A225144: a(n) = Sum_{i=n..2*n} i^2*(-1)^i.

The programs for A225144, the canonical program `A225144.P12329883284302592838` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225144 has offset 0).

The definition of A225144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225144.P5248927774984968425

`n*(4*n+(n-1)*(-1)^n+2)/2`
-/

namespace A225144.P5248927774984968425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((4 * n : ℤ) + ((n : ℤ) - 1) * (-1) ^ n + 2) : ℚ) / 2

end

end A225144.P5248927774984968425

namespace A225144

/-- `n*(4*n+(n-1)*(-1)^n+2)/2` -/
def P5248927774984968425.Spec : Prop :=
  ∀ n, P5248927774984968425.a n = (A225144 n : ℚ)

theorem P5248927774984968425.correct : P5248927774984968425.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A225144, Nat.add_sub_cancel, A225144.P5248927774984968425.a, A225144.P12329883284302592838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A225144, Nat.add_sub_cancel, A225144.P5248927774984968425.a, A225144.P12329883284302592838.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A225144

/-! ## A225144.P12329883284302592838

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=18, a(4)=42, a(5)=45`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225144

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P12329883284302592838.Spec : Prop :=
  ∀ n, P12329883284302592838.a n = A225144 n

theorem P12329883284302592838.correct : P12329883284302592838.Spec := by
  intro n
  simp only [A225144]

end A225144

/-! ## A225144.P6929633923393261352

`lcm(n-1, 2*n)+∑[n+2]-2`
-/

namespace A225144.P6929633923393261352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A225144.P6929633923393261352

namespace A225144

/-- `lcm(n-1, 2*n)+∑[n+2]-2` -/
def P6929633923393261352.Spec : Prop :=
  ∀ n, P6929633923393261352.a n = A225144 n

end A225144

/-! ## A225144.P7760431672681111395

`∑[Δ[lcm(n-2+n, n-2)]+n+2]`
-/

namespace A225144.P7760431672681111395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2 + (n : ℤ)) ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225144.P7760431672681111395

namespace A225144

/-- `∑[Δ[lcm(n-2+n, n-2)]+n+2]` -/
def P7760431672681111395.Spec : Prop :=
  ∀ n, P7760431672681111395.a n = A225144 n

end A225144

/-! ## A225144.P6640739759942583354

`∑[n]+A065679(n)+n²`
-/

namespace A225144.P6640739759942583354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A065679 n + (n ^ 2 : ℤ))

end

end A225144.P6640739759942583354

namespace A225144

/-- `∑[n]+A065679(n)+n²` -/
def P6640739759942583354.Spec : Prop :=
  ∀ n, P6640739759942583354.a n = A225144 n

end A225144

/-! ## A225144.P7896417349498263608

`A065679(n)+A005449(n)`
-/

namespace A225144.P7896417349498263608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 n + A005449 n

end

end A225144.P7896417349498263608

namespace A225144

/-- `A065679(n)+A005449(n)` -/
def P7896417349498263608.Spec : Prop :=
  ∀ n, P7896417349498263608.a n = A225144 n

end A225144

/-! ## A225144.P2252948896982571425

`A147875(n)-A065599(n)`
-/

namespace A225144.P2252948896982571425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A065599 n

end

end A225144.P2252948896982571425

namespace A225144

/-- `A147875(n)-A065599(n)` -/
def P2252948896982571425.Spec : Prop :=
  ∀ n, P2252948896982571425.a n = A225144 n

end A225144

/-! ## A225144.P6358405191427374516

`A147875(n)-n*A093178(n)`
-/

namespace A225144.P6358405191427374516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - (n : ℤ) * A093178 n

end

end A225144.P6358405191427374516

namespace A225144

/-- `A147875(n)-n*A093178(n)` -/
def P6358405191427374516.Spec : Prop :=
  ∀ n, P6358405191427374516.a n = A225144 n

end A225144

/-! ## A225144.P2887123913004711750

`∑[n]+A022998(n)*A131055(n+1)`
-/

namespace A225144.P2887123913004711750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A022998 n * A131055 (n + 1)

end

end A225144.P2887123913004711750

namespace A225144

/-- `∑[n]+A022998(n)*A131055(n+1)` -/
def P2887123913004711750.Spec : Prop :=
  ∀ n, P2887123913004711750.a n = A225144 n

end A225144

/-! ## A225144.P4884318206917972109

`A161680(n+1)+2*n*A029578(n+1)`
-/

namespace A225144.P4884318206917972109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + (2 * n : ℤ) * A029578 (n + 1)

end

end A225144.P4884318206917972109

namespace A225144

/-- `A161680(n+1)+2*n*A029578(n+1)` -/
def P4884318206917972109.Spec : Prop :=
  ∀ n, P4884318206917972109.a n = A225144 n

end A225144

/-! ## A225144.P16740308320897380196

`A005449(n)+n^A166333(A166333(n+1))`
-/

namespace A225144.P16740308320897380196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005449 n : ℚ) + (n : ℚ) ^ (A166333 (A166333 (n + 1)).toNat : ℤ)

end

end A225144.P16740308320897380196

namespace A225144

/-- `A005449(n)+n^A166333(A166333(n+1))` -/
def P16740308320897380196.Spec : Prop :=
  ∀ n, P16740308320897380196.a n = (A225144 n : ℚ)

end A225144

/-! ## A225144.P4608751597682238076

`A124093(2*n)+2*n*A029578(n+1)`
-/

namespace A225144.P4608751597682238076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * n) + (2 * n : ℤ) * A029578 (n + 1)

end

end A225144.P4608751597682238076

namespace A225144

/-- `A124093(2*n)+2*n*A029578(n+1)` -/
def P4608751597682238076.Spec : Prop :=
  ∀ n, P4608751597682238076.a n = A225144 n

end A225144

/-!
# A225145: Square array read by downwards antidiagonals: T(n,k) = 1 if k mod (n+1) > 0, T(n,k) = 0 if k mod (n+1) = 0.

The programs for A225145, the canonical program `A225145.P8159227418262710555` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225145 has offset 1).

The definition of A225145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225145.P8159227418262710555

`1-floor(A004736(n+1)/(A002260(n+1)+1))+floor((A004736(n+1)-1)/(A002260(n+1)+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225145

/-- `1-floor(A004736(n+1)/(A002260(n+1)+1))+floor((A004736(n+1)-1)/(A002260(n+1)+1))` -/
def P8159227418262710555.Spec : Prop :=
  ∀ n, P8159227418262710555.a n = A225145 (n + 1)

theorem P8159227418262710555.correct : P8159227418262710555.Spec := by
  intro n
  simp only [A225145, Nat.add_sub_cancel]

end A225145

/-! ## A225145.P16450759474115886356

`floor(atan(A228035(comp[∑[n]])))`
-/

namespace A225145.P16450759474115886356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A228035 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌋

end

end A225145.P16450759474115886356

namespace A225145

/-- `floor(atan(A228035(comp[∑[n]])))` -/
def P16450759474115886356.Spec : Prop :=
  ∀ n, P16450759474115886356.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P1972406557948301000

`1-A077049(comp[∑[n]]+1)`
-/

namespace A225145.P1972406557948301000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A225145.P1972406557948301000

namespace A225145

/-- `1-A077049(comp[∑[n]]+1)` -/
def P1972406557948301000.Spec : Prop :=
  ∀ n, P1972406557948301000.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P18061517073046806264

`A171233(comp[∑[n]]+1)%2`
-/

namespace A225145.P18061517073046806264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)) 2

end

end A225145.P18061517073046806264

namespace A225145

/-- `A171233(comp[∑[n]]+1)%2` -/
def P18061517073046806264.Spec : Prop :=
  ∀ n, P18061517073046806264.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P17648468881525524335

`floor(1/A171233(comp[C(n, 2)]+1))`
-/

namespace A225145.P17648468881525524335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A171233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ)⌋

end

end A225145.P17648468881525524335

namespace A225145

/-- `floor(1/A171233(comp[C(n, 2)]+1))` -/
def P17648468881525524335.Spec : Prop :=
  ∀ n, P17648468881525524335.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P16578936882230487693

`A155029(lt[1, A002262(n)])`
-/

namespace A225145.P16578936882230487693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225145.P16578936882230487693

namespace A225145

/-- `A155029(lt[1, A002262(n)])` -/
def P16578936882230487693.Spec : Prop :=
  ∀ n, P16578936882230487693.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P3925985101309664883

`A155029(eq[0, A145677(n)]+1)`
-/

namespace A225145.P3925985101309664883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225145.P3925985101309664883

namespace A225145

/-- `A155029(eq[0, A145677(n)]+1)` -/
def P3925985101309664883.Spec : Prop :=
  ∀ n, P3925985101309664883.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P8413131147081938069

`A155029(lt[2, A002260(n+1)])`
-/

namespace A225145.P8413131147081938069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225145.P8413131147081938069

namespace A225145

/-- `A155029(lt[2, A002260(n+1)])` -/
def P8413131147081938069.Spec : Prop :=
  ∀ n, P8413131147081938069.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P10108895481244149912

`A155029(lt[2, A263905(n+1)])`
-/

namespace A225145.P10108895481244149912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225145.P10108895481244149912

namespace A225145

/-- `A155029(lt[2, A263905(n+1)])` -/
def P10108895481244149912.Spec : Prop :=
  ∀ n, P10108895481244149912.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P6928095148753034074

`1-A051731(lt[1, A007318(n)]+1)`
-/

namespace A225145.P6928095148753034074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A225145.P6928095148753034074

namespace A225145

/-- `1-A051731(lt[1, A007318(n)]+1)` -/
def P6928095148753034074.Spec : Prop :=
  ∀ n, P6928095148753034074.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P17529395149452331284

`-(-1%A228035(A014132(n+1)))`
-/

namespace A225145.P17529395149452331284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-1) (A228035 (A014132 (n + 1)).toNat)

end

end A225145.P17529395149452331284

namespace A225145

/-- `-(-1%A228035(A014132(n+1)))` -/
def P17529395149452331284.Spec : Prop :=
  ∀ n, P17529395149452331284.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P6404307157789509193

`A008683(6*A171233(comp[∑[n]]+1))`
-/

namespace A225145.P6404307157789509193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * A171233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A225145.P6404307157789509193

namespace A225145

/-- `A008683(6*A171233(comp[∑[n]]+1))` -/
def P6404307157789509193.Spec : Prop :=
  ∀ n, P6404307157789509193.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P9189050872699561820

`A155029(2*A003057(n+2)+n+1)`
-/

namespace A225145.P9189050872699561820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (2 * A003057 (n + 2) + (n : ℤ) + 1).toNat

end

end A225145.P9189050872699561820

namespace A225145

/-- `A155029(2*A003057(n+2)+n+1)` -/
def P9189050872699561820.Spec : Prop :=
  ∀ n, P9189050872699561820.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P8258329986873836860

`1-val(A014410(n+3), A014410(n+2))`
-/

namespace A225145.P8258329986873836860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A014410 (n + 3)).toNat (A014410 (n + 2)).toNat : ℤ)

end

end A225145.P8258329986873836860

namespace A225145

/-- `1-val(A014410(n+3), A014410(n+2))` -/
def P8258329986873836860.Spec : Prop :=
  ∀ n, P8258329986873836860.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P16196710749568816686

`A000005((n+2)*A077049(comp[∑[n]]+1)+9)%2`
-/

namespace A225145.P16196710749568816686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 2 : ℤ) * A077049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 9).toNat) 2

end

end A225145.P16196710749568816686

namespace A225145

/-- `A000005((n+2)*A077049(comp[∑[n]]+1)+9)%2` -/
def P16196710749568816686.Spec : Prop :=
  ∀ n, P16196710749568816686.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P16287096728414522751

`A155029(A080036(∑[A035214(n)]))`
-/

namespace A225145.P16287096728414522751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A225145.P16287096728414522751

namespace A225145

/-- `A155029(A080036(∑[A035214(n)]))` -/
def P16287096728414522751.Spec : Prop :=
  ∀ n, P16287096728414522751.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P613802566886269004

`1-A051731(A080036(A014132(n+1)))`
-/

namespace A225145.P613802566886269004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051731 (A080036 (A014132 (n + 1)).toNat).toNat

end

end A225145.P613802566886269004

namespace A225145

/-- `1-A051731(A080036(A014132(n+1)))` -/
def P613802566886269004.Spec : Prop :=
  ∀ n, P613802566886269004.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P3252890085983872957

`∑{e}[A020639(A228035(A007401(n+1)+1)), #]`
-/

namespace A225145.P3252890085983872957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228035 (A007401 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A225145.P3252890085983872957

namespace A225145

/-- `∑{e}[A020639(A228035(A007401(n+1)+1)), #]` -/
def P3252890085983872957.Spec : Prop :=
  ∀ n, (P3252890085983872957.a n : ℤ) = A225145 (n + 1)

end A225145

/-! ## A225145.P15933775381119229404

`1-A051731(lt[A051731(n+1), A297299(n+1)]+1)`
-/

namespace A225145.P15933775381119229404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051731 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A225145.P15933775381119229404

namespace A225145

/-- `1-A051731(lt[A051731(n+1), A297299(n+1)]+1)` -/
def P15933775381119229404.Spec : Prop :=
  ∀ n, P15933775381119229404.a n = A225145 (n + 1)

end A225145

/-! ## A225145.P12519561464892609410

`A155029(A003057(n+2)+A003057(n+2)+n+1)`
-/

namespace A225145.P12519561464892609410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ)) + 1).toNat

end

end A225145.P12519561464892609410

namespace A225145

/-- `A155029(A003057(n+2)+A003057(n+2)+n+1)` -/
def P12519561464892609410.Spec : Prop :=
  ∀ n, P12519561464892609410.a n = A225145 (n + 1)

end A225145

/-!
# A225147: a(n) = Im((1-I)^(1-n)*A_{n, 3}(I)) where A_{n, k}(x) are the generalized Eulerian polynomials.

The programs for A225147, there is no canonical definition to state claims against.
-/

/-! ## A225147.P9210106515429599334

`-(A000034(n)*A156187(n))`
-/

namespace A225147.P9210106515429599334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000034 n * A156187 n)

end

end A225147.P9210106515429599334

/-! ## A225147.P14872975202074354260

`A156179(A000032(and(1, 1-n)))*A156187(n)`
-/

namespace A225147.P14872975202074354260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156179 (A000032 (Int.land 1 (1 - (n : ℤ))).toNat).toNat * A156187 n

end

end A225147.P14872975202074354260

/-! ## A225147.P301742863233087410

`A082115(4*n)-A000034(n)*A156187(n)`
-/

namespace A225147.P301742863233087410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 (4 * n) - A000034 n * A156187 n

end

end A225147.P301742863233087410

/-! ## A225147.P5362728472586460417

`(∑[n]-A000124(n))*A000034(n)*A156187(n)`
-/

namespace A225147.P5362728472586460417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000124 n) * (A000034 n * A156187 n)

end

end A225147.P5362728472586460417

/-! ## A225147.P15453746360325127001

`A086099(A003817(n))-A000034(n)*A156187(n)`
-/

namespace A225147.P15453746360325127001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A003817 n).toNat - A000034 n * A156187 n

end

end A225147.P15453746360325127001

/-! ## A225147.P15342929360813817203

`A000035(A008458(n+1))-A000034(n)*A156187(n)`
-/

namespace A225147.P15342929360813817203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008458 (n + 1)).toNat - A000034 n * A156187 n

end

end A225147.P15342929360813817203

/-! ## A225147.P15698086400495806024

`A000035(A082075(n+1))-A000034(n)*A156187(n)`
-/

namespace A225147.P15698086400495806024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A082075 (n + 1)).toNat - A000034 n * A156187 n

end

end A225147.P15698086400495806024

/-! ## A225147.P7334098439154116826

`A287470(A000265(n+1))-A000034(n)*A156187(n)`
-/

namespace A225147.P7334098439154116826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 (A000265 (n + 1)).toNat - A000034 n * A156187 n

end

end A225147.P7334098439154116826

/-! ## A225147.P14976884453741536436

`A008612(A014973(2*(n+1)))-A000034(n)*A156187(n)`
-/

namespace A225147.P14976884453741536436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A014973 (2 * (n + 1))).toNat - A000034 n * A156187 n

end

end A225147.P14976884453741536436

/-!
# A225152: Let b(k) be A036378, then a(n) is the number of b(k) terms such that 2^n < b(k) <= 2^(n+1).

The programs for A225152, there is no canonical definition to state claims against.
-/

/-! ## A225152.P17124434168363644269

`(1-char[1])*Δ[comp[3*2^n-2]]`
-/

namespace A225152.P17124434168363644269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A225152.P17124434168363644269

/-! ## A225152.P18027097867673470177

`Δ[comp[3*2^n-2]-round(atan(n)/2)]`
-/

namespace A225152.P18027097867673470177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225152.P18027097867673470177

/-! ## A225152.P13438112583110957789

`A092984(n+5)-char[1]`
-/

namespace A225152.P13438112583110957789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092984 (n + 5) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A225152.P13438112583110957789

/-! ## A225152.P7620074117686855962

`round(ratio[ratio[A180528(n+1)]])`
-/

namespace A225152.P7620074117686855962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180528 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)

end

end A225152.P7620074117686855962

/-! ## A225152.P14941989594728430709

`C(2, C(5, A141554(n+1)))`
-/

namespace A225152.P14941989594728430709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 5 (A141554 (n + 1)).toNat)

end

end A225152.P14941989594728430709

/-!
# A225153: Continued fraction for the positive root of x^x^x^x = 2 (A225134).

The programs for A225153, there is no canonical definition to state claims against.
-/

/-! ## A225153.P12229760436063843029

`A096134(a(n-1)+1)+A033429(n)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=1, a(5)=1`
-/

namespace A225153.P12229760436063843029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 1, 1] fun n a =>
  A096134 (a (n - 1) + 1).toNat + A033429 n

end

end A225153.P12229760436063843029

/-! ## A225153.P14375140437479221218

`A066389(A271689(n)+A002104(n))`
-/

namespace A225153.P14375140437479221218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (A271689 n + A002104 n).toNat

end

end A225153.P14375140437479221218

/-!
# A225154: Floor(Sum_{i=1..n} (Sum_{j=1..i} sqrt(1/j))).

The programs for A225154, the canonical program `A225154.P12816153510448779076` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225154 has offset 1).

The definition of A225154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225154.P12816153510448779076

`floor(∑[∑[sqrt(1/(n+1))]])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225154

/-- `floor(∑[∑[sqrt(1/(n+1))]])` -/
def P12816153510448779076.Spec : Prop :=
  ∀ n, P12816153510448779076.a n = A225154 (n + 1)

theorem P12816153510448779076.correct : P12816153510448779076.Spec := by
  intro n
  simp only [A225154, Nat.add_sub_cancel]

end A225154

/-! ## A225154.P13184376165639239508

`A003056(A038722(∑[A100440(n+1)]))`
-/

namespace A225154.P13184376165639239508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A225154.P13184376165639239508

namespace A225154

/-- `A003056(A038722(∑[A100440(n+1)]))` -/
def P13184376165639239508.Spec : Prop :=
  ∀ n, P13184376165639239508.a n = A225154 (n + 1)

end A225154

/-! ## A225154.P11551650145634846254

`A003056(∑[A100440(n+1)]-A003056(n))`
-/

namespace A225154.P11551650145634846254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j - A003056 n).toNat

end

end A225154.P11551650145634846254

namespace A225154

/-- `A003056(∑[A100440(n+1)]-A003056(n))` -/
def P11551650145634846254.Spec : Prop :=
  ∀ n, P11551650145634846254.a n = A225154 (n + 1)

end A225154

/-! ## A225154.P11159919955518241057

`A000196(∑[A008578(∑[n+2]-1)])`
-/

namespace A225154.P11159919955518241057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225154.P11159919955518241057

namespace A225154

/-- `A000196(∑[A008578(∑[n+2]-1)])` -/
def P11159919955518241057.Spec : Prop :=
  ∀ n, P11159919955518241057.a n = A225154 (n + 1)

end A225154

/-! ## A225154.P4956234200806004997

`A259361(∑[A000040(∑[n+2]-1)])`
-/

namespace A225154.P4956234200806004997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225154.P4956234200806004997

namespace A225154

/-- `A259361(∑[A000040(∑[n+2]-1)])` -/
def P4956234200806004997.Spec : Prop :=
  ∀ n, P4956234200806004997.a n = A225154 (n + 1)

end A225154

/-!
# A225156: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 3/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225156, there is no canonical definition to state claims against.
-/

/-! ## A225156.P14965111679556652953

`ratio[A225163(A028310(n))]`
-/

namespace A225156.P14965111679556652953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225163 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A225156.P14965111679556652953

/-! ## A225156.P336633549395218634

`record[ratio[A225163(A008619(n))]]`
-/

namespace A225156.P336633549395218634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225163 (A008619 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225156.P336633549395218634

/-! ## A225156.P8516635319251900254

`record[ratio[A225163(A008620(n))]]`
-/

namespace A225156.P8516635319251900254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225163 (A008620 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225156.P8516635319251900254

/-! ## A225156.P12017630788396167385

`record[ratio[A225163(A341440(n))]]`
-/

namespace A225156.P12017630788396167385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225163 (A341440 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225156.P12017630788396167385

/-!
# A225157: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 5/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225157, there is no canonical definition to state claims against.
-/

/-! ## A225157.P9943432329081090226

`record[ratio[A225164(A002260(n+1))]]`
-/

namespace A225157.P9943432329081090226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225164 (A002260 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225157.P9943432329081090226

/-!
# A225158: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 6/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225158, there is no canonical definition to state claims against.
-/

/-! ## A225158.P6152580290249469722

`ratio[A225165(A028310(n))]`
-/

namespace A225158.P6152580290249469722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225165 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A225158.P6152580290249469722

/-! ## A225158.P5586888996692026639

`record[ratio[A225165(A002260(n+1))]]`
-/

namespace A225158.P5586888996692026639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225165 (A002260 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225158.P5586888996692026639

/-!
# A225159: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 7/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225159, there is no canonical definition to state claims against.
-/

/-! ## A225159.P7405691647181857092

`ratio[A225166(A028310(n))]`
-/

namespace A225159.P7405691647181857092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225166 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A225159.P7405691647181857092

/-! ## A225159.P17172979165062437185

`record[ratio[A225166(A002260(n+1))]]`
-/

namespace A225159.P17172979165062437185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225166 (A002260 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225159.P17172979165062437185

/-! ## A225159.P1906771913774816833

`A225166(n+1)/A225166(A028310(n))`
-/

namespace A225159.P1906771913774816833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225166 (n + 1) : ℚ) / (A225166 (A028310 n).toNat : ℚ)

end

end A225159.P1906771913774816833

/-!
# A225160: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 8/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225160, there is no canonical definition to state claims against.
-/

/-! ## A225160.P6947829652672546292

`record[ratio[A225167(A002260(n+1))]]`
-/

namespace A225160.P6947829652672546292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225167 (A002260 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225160.P6947829652672546292

/-!
# A225161: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 9/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225161, there is no canonical definition to state claims against.
-/

/-! ## A225161.P33273457746811041

`ratio[A225168(A347623(n))]`
-/

namespace A225161.P33273457746811041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225168 (A347623 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A225161.P33273457746811041

/-! ## A225161.P4034876263400142102

`record[ratio[A225168(A002260(n+1))]]`
-/

namespace A225161.P4034876263400142102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225168 (A002260 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225161.P4034876263400142102

/-! ## A225161.P6843970789729655449

`A225168(n+1)/A225168(round(sqrt(n²+1)))`
-/

namespace A225161.P6843970789729655449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225168 (n + 1) : ℚ) / (A225168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A225161.P6843970789729655449

/-!
# A225162: Denominators of the sequence of fractions f(n) defined recursively by f(1) = 10/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225162, there is no canonical definition to state claims against.
-/

/-! ## A225162.P16778951995277530605

`ratio[A225169(A028310(n))]`
-/

namespace A225162.P16778951995277530605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225169 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A225162.P16778951995277530605

/-! ## A225162.P8830637307148544207

`record[ratio[A225169(A002260(n+1))]]`
-/

namespace A225162.P8830637307148544207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225169 (A002260 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225162.P8830637307148544207

/-! ## A225162.P657824842901916676

`A225169(n+1)/A225169(round(sqrt(n²+1)))`
-/

namespace A225162.P657824842901916676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225169 (n + 1) : ℚ) / (A225169 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A225162.P657824842901916676

/-!
# A225163: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 3/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225163, there is no canonical definition to state claims against.
-/

/-! ## A225163.P2175307280115668331

`a(n-1)*(3^2^(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A225163.P2175307280115668331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((3 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - a (n - 1))

end

end A225163.P2175307280115668331

/-! ## A225163.P10876723958286571931

`∏[A225156(n+1)]`
-/

namespace A225163.P10876723958286571931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225163.P10876723958286571931

/-! ## A225163.P16805246938375186564

`A011764(n)-A225156(n+2)`
-/

namespace A225163.P16805246938375186564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011764 n - A225156 (n + 2)

end

end A225163.P16805246938375186564

/-!
# A225164: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 5/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225164, there is no canonical definition to state claims against.
-/

/-! ## A225164.P11993491056616847986

`∏[A225157(n+1)]`
-/

namespace A225164.P11993491056616847986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225164.P11993491056616847986

/-!
# A225165: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 6/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225165, there is no canonical definition to state claims against.
-/

/-! ## A225165.P5317954868812527849

`∏[A225158(n+1)]`
-/

namespace A225165.P5317954868812527849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225165.P5317954868812527849

/-!
# A225166: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 7/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225166, there is no canonical definition to state claims against.
-/

/-! ## A225166.P10757510683810630911

`∏[A225159(n+1)]`
-/

namespace A225166.P10757510683810630911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225166.P10757510683810630911

/-!
# A225167: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 8/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225167, there is no canonical definition to state claims against.
-/

/-! ## A225167.P6072078606964884849

`∏[A225160(n+1)]`
-/

namespace A225167.P6072078606964884849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225167.P6072078606964884849

/-!
# A225168: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 9/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225168, there is no canonical definition to state claims against.
-/

/-! ## A225168.P4210954115651290701

`(3^2^n-a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A225168.P4210954115651290701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ 2 ^ n : ℤ) - a (n - 1)) * a (n - 1)

end

end A225168.P4210954115651290701

/-! ## A225168.P6222629081899857162

`∏[A225161(n+1)]`
-/

namespace A225168.P6222629081899857162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225168.P6222629081899857162

/-!
# A225169: Denominators of the sequence s(n) of the sum resp. product of fractions f(n) defined recursively by f(1) = 10/1; f(n+1) is chosen so that the sum and the product of the first n terms of the sequence are equal.

The programs for A225169, there is no canonical definition to state claims against.
-/

/-! ## A225169.P5650939688845350053

`∏[A225162(n+1)]`
-/

namespace A225169.P5650939688845350053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225169.P5650939688845350053

/-!
# A225170: Number of non-degenerate fanout-free Boolean functions of n variables having AND rank 1.

The programs for A225170, there is no canonical definition to state claims against.
-/

/-! ## A225170.P5392005102276666827

`2^(n+1)*A000311(n+1)`
-/

namespace A225170.P5392005102276666827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000311 (n + 1)

end

end A225170.P5392005102276666827

/-! ## A225170.P8259582585228840104

`2*A390890(n)`
-/

namespace A225170.P8259582585228840104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390890 n

end

end A225170.P8259582585228840104

/-! ## A225170.P17822459347833083990

`A225171(∑[n]+1)`
-/

namespace A225170.P17822459347833083990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225170.P17822459347833083990

/-! ## A225170.P4737866071266661024

`record[A225171(n+1)]`
-/

namespace A225170.P4737866071266661024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225170.P4737866071266661024

/-! ## A225170.P224173307339385145

`lcm(2, A005172(n+1))`
-/

namespace A225170.P224173307339385145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005172 (n + 1))

end

end A225170.P224173307339385145

/-! ## A225170.P17014309035742702853

`lcm(A005640(n+2)/2, 4/2)`
-/

namespace A225170.P17014309035742702853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A005640 (n + 2) : ℚ) / 2)) (SequenceMachineLib.roundAway ((4 : ℚ) / 2))

end

end A225170.P17014309035742702853

/-! ## A225170.P16509685725938692306

`A005172(n+1)+A000007(n)`
-/

namespace A225170.P16509685725938692306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005172 (n + 1) + A000007 n

end

end A225170.P16509685725938692306

/-! ## A225170.P13161518680311939650

`A005172(n+1)+char[A017068(n)]`
-/

namespace A225170.P13161518680311939650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005172 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225170.P13161518680311939650

/-! ## A225170.P792122363494992255

`A000311(n+1)*A011782(n+2)`
-/

namespace A225170.P792122363494992255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 (n + 1) * A011782 (n + 2)

end

end A225170.P792122363494992255

/-! ## A225170.P13196301146694650934

`A005172(n+1)+A008037(n)%2`
-/

namespace A225170.P13196301146694650934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005172 (n + 1) + Int.tmod (A008037 n) 2

end

end A225170.P13196301146694650934

/-!
# A225171: Triangle read by rows: T(n,k), 1 <= k <= n, is the number of non-degenerate fanout-free Boolean functions of n variables having AND rank k.

The programs for A225171, there is no canonical definition to state claims against.
-/

/-! ## A225171.P4336835787686090906

`∏[char[∑[n]]+1]*A298673(n+1)`
-/

namespace A225171.P4336835787686090906
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A298673 (n + 1)

end

end A225171.P4336835787686090906

/-! ## A225171.P3037800834472177181

`2*A298673(n+1)*A137688(n)`
-/

namespace A225171.P3037800834472177181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298673 (n + 1) * A137688 n

end

end A225171.P3037800834472177181

/-!
# A225172: Largest number which requires n iterations of the unitary totient function (A047994) to reach 1.

The programs for A225172, there is no canonical definition to state claims against.
-/

/-! ## A225172.P5256138225611499797

`A000005(2*n+1)*A003986(A372411(n))`
-/

namespace A225172.P5256138225611499797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A003986 (A372411 n).toNat

end

end A225172.P5256138225611499797

/-! ## A225172.P8051948183885510192

`A316199(A088855(3*n+5))+A059570(n+1)`
-/

namespace A225172.P8051948183885510192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316199 (A088855 (3 * n + 5)).toNat + A059570 (n + 1)

end

end A225172.P8051948183885510192

/-!
# A225174: Square array read by antidiagonals: T(m,n) = greatest common unitary divisor of m and n.

The programs for A225174, there is no canonical definition to state claims against.
-/

/-! ## A225174.P9379109654546978824

`A322482(A057944(n)+A003989(n+1))`
-/

namespace A225174.P9379109654546978824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A057944 n + A003989 (n + 1)).toNat

end

end A225174.P9379109654546978824

/-! ## A225174.P119369469231284270

`A322482(A059895(n+1)+A057944(n))`
-/

namespace A225174.P119369469231284270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A059895 (n + 1) + A057944 n).toNat

end

end A225174.P119369469231284270

/-! ## A225174.P111105665878930203

`A322482(A091255(n+1)+A057944(n))`
-/

namespace A225174.P111105665878930203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A091255 (n + 1) + A057944 n).toNat

end

end A225174.P111105665878930203

/-! ## A225174.P6354044597345188438

`gcd(Δ[A178252(n)], A059895(n+1))`
-/

namespace A225174.P6354044597345188438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A059895 (n + 1))

end

end A225174.P6354044597345188438

/-! ## A225174.P8109397763920104072

`A322482(A322482(n+1)+A057944(n))`
-/

namespace A225174.P8109397763920104072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A322482 (n + 1) + A057944 n).toNat

end

end A225174.P8109397763920104072

/-! ## A225174.P5411168680107166498

`A322482(A322482(n+1)+n-A002262(n))`
-/

namespace A225174.P5411168680107166498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A322482 (n + 1) + ((n : ℤ) - A002262 n)).toNat

end

end A225174.P5411168680107166498

/-! ## A225174.P13364318104728441335

`A322482(A322482(n+1)+n-A002260(n+1)+1)`
-/

namespace A225174.P13364318104728441335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A322482 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A225174.P13364318104728441335

/-! ## A225174.P9132804419831606527

`gcd(A202626(n+1), A287957(n+1))`
-/

namespace A225174.P9132804419831606527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202626 (n + 1)) (A287957 (n + 1))

end

end A225174.P9132804419831606527

/-! ## A225174.P5807348857126204659

`gcd(A001107(A001107(n))², A322482(n+1))`
-/

namespace A225174.P5807348857126204659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001107 (A001107 n).toNat ^ 2) (A322482 (n + 1))

end

end A225174.P5807348857126204659

/-!
# A225177: Numerator of answer to sock-sorting problem with n socks.

The programs for A225177, there is no canonical definition to state claims against.
-/

/-! ## A225177.P16466741135967553933

`A358975(A277403(n+1))+A001542(n)`
-/

namespace A225177.P16466741135967553933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358975 (A277403 (n + 1)).toNat + A001542 n

end

end A225177.P16466741135967553933

/-!
# A225178: The generalized Conway-Guy sequence d_2(n).

The programs for A225178, there is no canonical definition to state claims against.
-/

/-! ## A225178.P2277839018627788779

`A295839(A091156(n))+A151281(n)`
-/

namespace A225178.P2277839018627788779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295839 (A091156 n).toNat + A151281 n

end

end A225178.P2277839018627788779

/-! ## A225178.P11264308290564951245

`A002024(A337058(n))*A329399(n+1)`
-/

namespace A225178.P11264308290564951245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A337058 n).toNat * A329399 (n + 1)

end

end A225178.P11264308290564951245

/-! ## A225178.P9713340742069902615

`A372353(A293211(2*(n+1)))+A151281(n)`
-/

namespace A225178.P9713340742069902615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372353 (A293211 (2 * (n + 1))).toNat + A151281 n

end

end A225178.P9713340742069902615

/-!
# A225179: a(n) = min{2 + c_n + 2(c_1 + c_2 + ... + c_(n-1)) | n = p + q, 1 <= p < q < n, gcd(p, q) = 1, and p/q has continued fraction expansion [0; c_1, c_2, ...., c_n]}.

The programs for A225179, there is no canonical definition to state claims against.
-/

/-! ## A225179.P14380273216921253403

`A085423(A188123(n))`
-/

namespace A225179.P14380273216921253403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A188123 n).toNat

end

end A225179.P14380273216921253403

/-! ## A225179.P8342961106827838623

`A375465(A332410(n+1))`
-/

namespace A225179.P8342961106827838623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375465 (A332410 (n + 1)).toNat

end

end A225179.P8342961106827838623

/-! ## A225179.P4741428799128006972

`A085423(∑[∑[A096076(n)]])`
-/

namespace A225179.P4741428799128006972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225179.P4741428799128006972

/-! ## A225179.P7602315520922281722

`A085423(∑[A308699(n)+1])`
-/

namespace A225179.P7602315520922281722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225179.P7602315520922281722

/-! ## A225179.P16734191006018327341

`A085423(∑[∑[A131452(n)]]+1)`
-/

namespace A225179.P16734191006018327341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A225179.P16734191006018327341

/-!
# A225180: Infinite sequence M defined by the rules M = 1:X, X = 2:zip_2(X,Y), Y = 2:zip_3(M,Y,Y).

The programs for A225180, there is no canonical definition to state claims against.
-/

/-! ## A225180.P15617398053711695617

`A225181(n)+1`
-/

namespace A225180.P15617398053711695617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225181 n + 1

end

end A225180.P15617398053711695617

/-! ## A225180.P11601247058354892189

`2-A000007(n*A225181(n))`
-/

namespace A225180.P11601247058354892189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 ((n : ℤ) * A225181 n).toNat

end

end A225180.P11601247058354892189

/-! ## A225180.P9043719225911100695

`A000034(2*n-A225181(n))`
-/

namespace A225180.P9043719225911100695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((2 * n : ℤ) - A225181 n).toNat

end

end A225180.P9043719225911100695

/-! ## A225180.P15517220368426799189

`gcd(2, A132200(n*A225181(n)))`
-/

namespace A225180.P15517220368426799189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A132200 ((n : ℤ) * A225181 n).toNat)

end

end A225180.P15517220368426799189

/-! ## A225180.P17005123638923537410

`A000034(or(1, n)*A225181(n))`
-/

namespace A225180.P17005123638923537410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((Nat.lor 1 n : ℤ) * A225181 n).toNat

end

end A225180.P17005123638923537410

/-! ## A225180.P3149811344442629248

`A000034(n-(A225181(n)-n))`
-/

namespace A225180.P3149811344442629248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((n : ℤ) - (A225181 n - (n : ℤ))).toNat

end

end A225180.P3149811344442629248

/-! ## A225180.P368034857352366246

`A000005(A225181(n)-or(n, -1))`
-/

namespace A225180.P368034857352366246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A225181 n - Int.lor (n : ℤ) (-1)).toNat

end

end A225180.P368034857352366246

/-! ## A225180.P373162923931405752

`A000041(A225181(n)-or(n, -1))`
-/

namespace A225180.P373162923931405752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A225181 n - Int.lor (n : ℤ) (-1)).toNat

end

end A225180.P373162923931405752

/-! ## A225180.P7657008225975121915

`A000108(A225181(n)-or(n, -1))`
-/

namespace A225180.P7657008225975121915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A225181 n - Int.lor (n : ℤ) (-1)).toNat

end

end A225180.P7657008225975121915

/-! ## A225180.P12916156081691031030

`A006530(A225181(n)-or(n, -1))`
-/

namespace A225180.P12916156081691031030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225181 n - Int.lor (n : ℤ) (-1)).toNat

end

end A225180.P12916156081691031030

/-! ## A225180.P13406292803073670084

`A014963(A225181(n)-or(n, -1))`
-/

namespace A225180.P13406292803073670084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A225181 n - Int.lor (n : ℤ) (-1)).toNat

end

end A225180.P13406292803073670084

/-! ## A225180.P9064142739491482551

`A020639(A225181(n)-or(n, -1))`
-/

namespace A225180.P9064142739491482551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225181 n - Int.lor (n : ℤ) (-1)).toNat

end

end A225180.P9064142739491482551

/-! ## A225180.P1878440352359782192

`A000079(and(1, 2*n-A225181(n)))`
-/

namespace A225180.P1878440352359782192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.land 1 ((2 * n : ℤ) - A225181 n)).toNat

end

end A225180.P1878440352359782192

/-! ## A225180.P12177740807464314043

`A000079(and(1, n-(A225181(n)-n)))`
-/

namespace A225180.P12177740807464314043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.land 1 ((n : ℤ) - (A225181 n - (n : ℤ)))).toNat

end

end A225180.P12177740807464314043

/-! ## A225180.P4530884013277259308

`A007318((A225181(n)-or(n, -1))²)`
-/

namespace A225180.P4530884013277259308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((A225181 n - Int.lor (n : ℤ) (-1)) ^ 2).toNat

end

end A225180.P4530884013277259308

/-! ## A225180.P8371173707461727725

`A000040(A225181(n)-or(n, -1))-1`
-/

namespace A225180.P8371173707461727725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A225181 n - Int.lor (n : ℤ) (-1)).toNat - 1

end

end A225180.P8371173707461727725

/-! ## A225180.P10921701615292239398

`A000010(2*(A225181(n)-or(n, -1)))`
-/

namespace A225180.P10921701615292239398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (A225181 n - Int.lor (n : ℤ) (-1))).toNat

end

end A225180.P10921701615292239398

/-! ## A225180.P13873088366530608798

`A001222(2*(A225181(n)-or(n, -1)))`
-/

namespace A225180.P13873088366530608798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (A225181 n - Int.lor (n : ℤ) (-1))).toNat

end

end A225180.P13873088366530608798

/-! ## A225180.P13811695813883740687

`A007318(2*(A225181(n)-or(n, -1)))`
-/

namespace A225180.P13811695813883740687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * (A225181 n - Int.lor (n : ℤ) (-1))).toNat

end

end A225180.P13811695813883740687

/-!
# A225181: Version of A225180 over the alphabet {0,1}.

The programs for A225181, there is no canonical definition to state claims against.
-/

/-! ## A225181.P11768003952034195574

`log2(A225180(n))`
-/

namespace A225181.P11768003952034195574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A225180 n : ℝ)

end

end A225181.P11768003952034195574

/-! ## A225181.P11505951004158655223

`A225180(2*n)-1`
-/

namespace A225181.P11505951004158655223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225180 (2 * n) - 1

end

end A225181.P11505951004158655223

/-! ## A225181.P12747953641269546586

`3%A225180(3*n)`
-/

namespace A225181.P12747953641269546586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A225180 (3 * n))

end

end A225181.P12747953641269546586

/-! ## A225181.P1671392300594397121

`val(A225180(4*n), 2)`
-/

namespace A225181.P1671392300594397121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A225180 (4 * n)).toNat 2

end

end A225181.P1671392300594397121

/-! ## A225181.P13978613745276433275

`C(A225180(9*n), 2)`
-/

namespace A225181.P13978613745276433275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225180 (9 * n)).toNat 2

end

end A225181.P13978613745276433275

/-! ## A225181.P14361300609147926874

`A001221(or(C(2, n), A225180(n)))`
-/

namespace A225181.P14361300609147926874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (Nat.choose 2 n : ℤ) (A225180 n)).toNat

end

end A225181.P14361300609147926874

/-! ## A225181.P17501404635506456377

`A001222(or(C(2, n), A225180(n)))`
-/

namespace A225181.P17501404635506456377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (Nat.choose 2 n : ℤ) (A225180 n)).toNat

end

end A225181.P17501404635506456377

/-!
# A225182: Sequence defined by a mix-DFAO: Example 8 of Endrullis et al. (2013), written over the alphabet {1,2}.

The programs for A225182, there is no canonical definition to state claims against.
-/

/-! ## A225182.P9299655023302639030

`A225183(n)+1`
-/

namespace A225182.P9299655023302639030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225183 n + 1

end

end A225182.P9299655023302639030

/-! ## A225182.P2847869026465822950

`ceil(cosh(A225183(2*n)))`
-/

namespace A225182.P2847869026465822950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (A225183 (2 * n) : ℝ)⌉

end

end A225182.P2847869026465822950

/-! ## A225182.P14074467742186385210

`(2*A225183(4*n))!`
-/

namespace A225182.P14074467742186385210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * A225183 (4 * n)).toNat

end

end A225182.P14074467742186385210

/-! ## A225182.P12563251342995509114

`round(cosh(A225183(n*(3-gcd(2, n)))))`
-/

namespace A225182.P12563251342995509114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (A225183 ((n : ℤ) * (3 - (Nat.gcd 2 n : ℤ))).toNat : ℝ))

end

end A225182.P12563251342995509114

/-! ## A225182.P9768484937153654873

`round(cosh(A225183(n*a(n-1))))` with `a(0)=1`
-/

namespace A225182.P9768484937153654873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.cosh (A225183 ((n : ℤ) * a (n - 1)).toNat : ℝ))

end

end A225182.P9768484937153654873

/-! ## A225182.P2880719758295275205

`A000122((n*A225183(n))²)`
-/

namespace A225182.P2880719758295275205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (((n : ℤ) * A225183 n) ^ 2).toNat

end

end A225182.P2880719758295275205

/-! ## A225182.P8586652756729453247

`(A225183(n)-A057428(n))!`
-/

namespace A225182.P8586652756729453247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A225183 n - A057428 n).toNat

end

end A225182.P8586652756729453247

/-! ## A225182.P1431164375550304511

`1-A057428(n*A225183(n))`
-/

namespace A225182.P1431164375550304511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 ((n : ℤ) * A225183 n).toNat

end

end A225182.P1431164375550304511

/-! ## A225182.P990930908549063145

`2-A000007(n*A225183(n))`
-/

namespace A225182.P990930908549063145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 ((n : ℤ) * A225183 n).toNat

end

end A225182.P990930908549063145

/-!
# A225183: Sequence defined by a mix-DFAO: Example 8 of Endrullis et al. (2013), written over the alphabet {0,1}.

The programs for A225183, there is no canonical definition to state claims against.
-/

/-! ## A225183.P7922809271822663806

`log2(A225182(gcd(n, ∑[n])))`
-/

namespace A225183.P7922809271822663806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A225182 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) : ℝ)

end

end A225183.P7922809271822663806

/-! ## A225183.P12338716651576482316

`log2(A225182(lcm(8, n)/8))`
-/

namespace A225183.P12338716651576482316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A225182 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat : ℝ)

end

end A225183.P12338716651576482316

/-! ## A225183.P16583044199161104170

`A225182(n/(2-and(1, n)))-1`
-/

namespace A225183.P16583044199161104170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225182 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))).toNat - 1

end

end A225183.P16583044199161104170

/-! ## A225183.P435380631837604222

`A225182(A026741(n))-1`
-/

namespace A225183.P435380631837604222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225182 (A026741 n).toNat - 1

end

end A225183.P435380631837604222

/-! ## A225183.P3160878828780459690

`A225182(A106609(n))-1`
-/

namespace A225183.P3160878828780459690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225182 (A106609 n).toNat - 1

end

end A225183.P3160878828780459690

/-! ## A225183.P11379228791831254443

`A225182(A106617(n))-1`
-/

namespace A225183.P11379228791831254443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225182 (A106617 n).toNat - 1

end

end A225183.P11379228791831254443

/-! ## A225183.P17744533689322536976

`A000040(n+1)%A225182(A026741(n))`
-/

namespace A225183.P17744533689322536976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A225182 (A026741 n).toNat)

end

end A225183.P17744533689322536976

/-! ## A225183.P8466652131630977760

`A000005((n+1)²)%A225182(A026741(n))`
-/

namespace A225183.P8466652131630977760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1) ^ 2)) (A225182 (A026741 n).toNat)

end

end A225183.P8466652131630977760

/-! ## A225183.P17131934033763487368

`A000203((n+2)²)%A225182(A026741(n))`
-/

namespace A225183.P17131934033763487368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 2) ^ 2)) (A225182 (A026741 n).toNat)

end

end A225183.P17131934033763487368

/-! ## A225183.P5323809891259516358

`A014963(2*n+1)%A225182(A026741(n))`
-/

namespace A225183.P5323809891259516358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (2 * n + 1)) (A225182 (A026741 n).toNat)

end

end A225183.P5323809891259516358

/-!
# A225184: Primes p with a primitive root that divides p+1.

The programs for A225184, there is no canonical definition to state claims against.
-/

/-! ## A225184.P16009073204028893150

`A318712(A028310(n))-C(2, C(2, n²))`
-/

namespace A225184.P16009073204028893150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318712 (A028310 n).toNat - (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A225184.P16009073204028893150

/-! ## A225184.P10748172903999536609

`A318712(A028310(n))-A137688(C(2, n+2))`
-/

namespace A225184.P10748172903999536609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318712 (A028310 n).toNat - A137688 (Nat.choose 2 (n + 2))

end

end A225184.P10748172903999536609

/-! ## A225184.P8602787010513418783

`A318712(A028310(n))-A182100(C(2, n+2))`
-/

namespace A225184.P8602787010513418783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318712 (A028310 n).toNat - A182100 (Nat.choose 2 (n + 2))

end

end A225184.P8602787010513418783

/-! ## A225184.P13526035843396387336

`A318712(A028310(n))-A014963(A318712(n+1))`
-/

namespace A225184.P13526035843396387336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318712 (A028310 n).toNat - A014963 (A318712 (n + 1)).toNat

end

end A225184.P13526035843396387336

/-! ## A225184.P3851906814368937410

`A318712(A028310(n))-A034807(n²)`
-/

namespace A225184.P3851906814368937410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318712 (A028310 n).toNat - A034807 (n ^ 2)

end

end A225184.P3851906814368937410

/-!
# A225185: Primes p which do not have a primitive root that divides p+1.

The programs for A225185, there is no canonical definition to state claims against.
-/

/-! ## A225185.P13247055125028721329

`∩[A048976(n+1), A345168(n+1)]`
-/

namespace A225185.P13247055125028721329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225185.P13247055125028721329

/-! ## A225185.P13052551887105615702

`∩[A216838(n+1), A345168(n+1)]`
-/

namespace A225185.P13052551887105615702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225185.P13052551887105615702

/-! ## A225185.P6245735106767469236

`A333242(lt[A333200(n+1), A333201(3*n+1)])`
-/

namespace A225185.P6245735106767469236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333201 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225185.P6245735106767469236

/-!
# A225186: Squares in the Thue-Morse word A001285.

The programs for A225186, there is no canonical definition to state claims against.
-/

/-! ## A225186.P8820679512576530832

`∩[A213972(n+1), A214215(n+1)]`
-/

namespace A225186.P8820679512576530832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225186.P8820679512576530832

/-! ## A225186.P16318811706516286351

`∩[A214215(n+1), A239018(n+1)]`
-/

namespace A225186.P16318811706516286351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225186.P16318811706516286351

/-! ## A225186.P14992941969521673745

`A020338(A225188(n+1))`
-/

namespace A225186.P14992941969521673745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A225188 (n + 1)).toNat

end

end A225186.P14992941969521673745

/-! ## A225186.P7348957418858515978

`A074993(2*A225188(n+1))`
-/

namespace A225186.P7348957418858515978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074993 (2 * A225188 (n + 1)).toNat

end

end A225186.P7348957418858515978

/-!
# A225187: a(n) = gcd_{all Latin squares L of order n} n!*n/A(L), where A(L) is the order of the autotopism group of L.

The programs for A225187, there is no canonical definition to state claims against.
-/

/-! ## A225187.P6889725014332963194

`floor(n/2)!*A008406(∑{d}[n+1, #])`
-/

namespace A225187.P6889725014332963194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A008406 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A225187.P6889725014332963194

/-! ## A225187.P11597386104302619636

`floor(n/2)!*A152845(gcd(n, ∑[n])²)`
-/

namespace A225187.P11597386104302619636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A152845 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A225187.P11597386104302619636

/-! ## A225187.P12544265817415572801

`floor(n/2)!*A208058(∑[char[n²]]²-n)`
-/

namespace A225187.P12544265817415572801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A208058 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A225187.P12544265817415572801

/-! ## A225187.P17406322505328305488

`∏[A123755(n)]/A016116(n)`
-/

namespace A225187.P17406322505328305488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123755 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A016116 n : ℚ)

end

end A225187.P17406322505328305488

/-! ## A225187.P1041869979210997430

`∏[A123755(n)/A040001(n)]`
-/

namespace A225187.P1041869979210997430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123755 n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225187.P1041869979210997430

/-!
# A225188: Words u such that uu is a factor of the Thue-Morse word A001285.

The programs for A225188, there is no canonical definition to state claims against.
-/

/-! ## A225188.P4148826938046508083

`A074290(n+1)+A004151(A376688(n+1))`
-/

namespace A225188.P4148826938046508083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1) + A004151 (A376688 (n + 1)).toNat

end

end A225188.P4148826938046508083

/-! ## A225188.P7967801164372142178

`A028310(A376688(n+1)+A074290(n+1))`
-/

namespace A225188.P7967801164372142178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A376688 (n + 1) + A074290 (n + 1)).toNat

end

end A225188.P7967801164372142178

/-! ## A225188.P7510755377621751432

`A065031(A376688(n+1)+A074290(n+1))`
-/

namespace A225188.P7510755377621751432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A376688 (n + 1) + A074290 (n + 1)).toNat

end

end A225188.P7510755377621751432

/-! ## A225188.P1348897178982264872

`A074290(n+1)+record[A047813(A214215(n+1))]`
-/

namespace A225188.P1348897178982264872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A214215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225188.P1348897178982264872

/-!
# A225189: List of minimal palindromic words over {1,2} that begin with 1, and have lengths 1, 2, 3, ....

The programs for A225189, there is no canonical definition to state claims against.
-/

/-! ## A225189.P2328819106921667515

`A231873(∪[A231847(n+1), A255453(n)])`
-/

namespace A225189.P2328819106921667515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255453 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231873 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A225189.P2328819106921667515

/-! ## A225189.P11742055919554034340

`A231873(∪[A231847(n+1), A277668(n)])`
-/

namespace A225189.P11742055919554034340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277668 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231873 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A225189.P11742055919554034340

/-! ## A225189.P18196196276855965618

`A102659(lt[A156034(n+4), A018007(2*n+1)])`
-/

namespace A225189.P18196196276855965618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156034 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018007 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225189.P18196196276855965618

/-!
# A225190: a(n) = (n+2)^(n+2) mod n^n.

The programs for A225190, there is no canonical definition to state claims against.
-/

/-! ## A225190.P5549251816197411281

`((n+2)^(n+2))%(n^n)`
-/

namespace A225190.P5549251816197411281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (n + 2) % n ^ n

end

end A225190.P5549251816197411281

/-! ## A225190.P4798581698770060386

`abs(A000312(n+2)%-A000312(n))`
-/

namespace A225190.P4798581698770060386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000312 (n + 2)) (-A000312 n)|

end

end A225190.P4798581698770060386

/-! ## A225190.P5313826231914185267

`abs(Δ[A056788(n+1)]%A000312(n))`
-/

namespace A225190.P5313826231914185267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000312 n)|

end

end A225190.P5313826231914185267

/-! ## A225190.P6066553250516869891

`abs(Δ[A114654(n+1)]%A000312(n))`
-/

namespace A225190.P6066553250516869891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000312 n)|

end

end A225190.P6066553250516869891

/-! ## A225190.P5149865999727780564

`abs(Δ[A086797(n+1)]%A000312(n))`
-/

namespace A225190.P5149865999727780564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000312 n)|

end

end A225190.P5149865999727780564

/-!
# A225192: Number of primes p such that p is -1 mod n where p < n-th prime.

The programs for A225192, there is no canonical definition to state claims against.
-/

/-! ## A225192.P8675786996243804661

`A179076(A174498(n+1)+A002033(n))`
-/

namespace A225192.P8675786996243804661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179076 (A174498 (n + 1) + A002033 n).toNat

end

end A225192.P8675786996243804661

/-! ## A225192.P2462571564238159222

`A038548(n+1)-A293163(A252032(n+3))`
-/

namespace A225192.P2462571564238159222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A293163 (A252032 (n + 3)).toNat

end

end A225192.P2462571564238159222

/-! ## A225192.P17334202487849630207

`∑[A005917(A329676(n)+1)]%3`
-/

namespace A225192.P17334202487849630207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (A329676 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A225192.P17334202487849630207

/-! ## A225192.P2686229258159290481

`A287397(xor(A064216(n+1), A066321(3*n)))`
-/

namespace A225192.P2686229258159290481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (Int.xor (A064216 (n + 1)) (A066321 (3 * n))).toNat

end

end A225192.P2686229258159290481

/-! ## A225192.P10212937451283464594

`A124766(A098736(n))-A086747(n)`
-/

namespace A225192.P10212937451283464594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A098736 n).toNat - A086747 n

end

end A225192.P10212937451283464594

/-!
# A225193: Composite numbers such that every non-identity permutation gives a prime.

The programs for A225193, there is no canonical definition to state claims against.
-/

/-! ## A225193.P1771289313037468132

`∩[A068653(n+1), A272022(n+1)]`
-/

namespace A225193.P1771289313037468132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225193.P1771289313037468132

/-! ## A225193.P1340603646336897292

`filter[A272022(n+1), A005171(#)]`
-/

namespace A225193.P1340603646336897292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A225193.P1340603646336897292

/-! ## A225193.P8044011794810438611

`filter[A272022(n+1), A066247(#)]`
-/

namespace A225193.P8044011794810438611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A225193.P8044011794810438611

/-! ## A225193.P13420601816175487992

`filter[A272022(n+1), A174898(#)]`
-/

namespace A225193.P13420601816175487992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A225193.P13420601816175487992

/-!
# A225195: Primes p such that (p+nextprime(p))/2 is a perfect square.

The programs for A225195, there is no canonical definition to state claims against.
-/

/-! ## A225195.P14495537920359820109

`A053001(A075190(n+1))`
-/

namespace A225195.P14495537920359820109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A075190 (n + 1)).toNat

end

end A225195.P14495537920359820109

/-! ## A225195.P7039389526268967579

`A053001(sqrt(A069495(n+1)))`
-/

namespace A225195.P7039389526268967579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (SequenceMachineLib.roundAway (Real.sqrt (A069495 (n + 1) : ℝ))).toNat

end

end A225195.P7039389526268967579

/-! ## A225195.P13957132098808106257

`∩[A113425(n+1), A242380(n+1)]`
-/

namespace A225195.P13957132098808106257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225195.P13957132098808106257

/-! ## A225195.P11930819447281681989

`∩[A242380(n+1), A053001(n+2)]`
-/

namespace A225195.P11930819447281681989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225195.P11930819447281681989

/-! ## A225195.P13026179190079497645

`record[gcd(A056929(n+2), A304874(n+2))]`
-/

namespace A225195.P13026179190079497645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056929 (n + 2)) (A304874 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225195.P13026179190079497645

/-! ## A225195.P9267275566137770997

`A069495(n+1)-A053000(A075190(n+1))`
-/

namespace A225195.P9267275566137770997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069495 (n + 1) - A053000 (A075190 (n + 1)).toNat

end

end A225195.P9267275566137770997

/-! ## A225195.P9745930085735991206

`A069495(n+1)-A053000(sqrt(A069495(n+1)))`
-/

namespace A225195.P9745930085735991206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069495 (n + 1) - A053000 (SequenceMachineLib.roundAway (Real.sqrt (A069495 (n + 1) : ℝ))).toNat

end

end A225195.P9745930085735991206

/-! ## A225195.P16761612044845254512

`A069495(n+1)-A056927(sqrt(A069495(n+1)))`
-/

namespace A225195.P16761612044845254512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069495 (n + 1) - A056927 (SequenceMachineLib.roundAway (Real.sqrt (A069495 (n + 1) : ℝ))).toNat

end

end A225195.P16761612044845254512

/-!
# A225196: Number of 6-line partitions of n (i.e., planar partitions of n with at most 6 lines).

The programs for A225196, there is no canonical definition to state claims against.
-/

/-! ## A225196.P1801122204650587800

`A242641((n+4)²-∑[n+1]+1)`
-/

namespace A225196.P1801122204650587800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A225196.P1801122204650587800

/-! ## A225196.P17869597147691062443

`or(char[1], A242641(A052905(n+3)))`
-/

namespace A225196.P17869597147691062443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A242641 (A052905 (n + 3)).toNat)

end

end A225196.P17869597147691062443

/-! ## A225196.P15754410616920342873

`and(1, n)!*A242641(A134869(n+6)-6)`
-/

namespace A225196.P15754410616920342873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A242641 (A134869 (n + 6) - 6).toNat

end

end A225196.P15754410616920342873

/-! ## A225196.P2095260275925717528

`A242641(A052905(n+3))%A281500(n)`
-/

namespace A225196.P2095260275925717528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A052905 (n + 3)).toNat) (A281500 n)

end

end A225196.P2095260275925717528

/-! ## A225196.P15719954159447241335

`A000041(C(n, n²))*A242641(A052905(n+3))`
-/

namespace A225196.P15719954159447241335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A242641 (A052905 (n + 3)).toNat

end

end A225196.P15719954159447241335

/-! ## A225196.P9599285344891635351

`xor(2*n+1, A005843(n))*A242641(A052905(n+3))`
-/

namespace A225196.P9599285344891635351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n + 1 : ℤ) (A005843 n) * A242641 (A052905 (n + 3)).toNat

end

end A225196.P9599285344891635351

/-! ## A225196.P3678411496582591244

`A010051(A126204(n))*A242641(A052905(n+3))`
-/

namespace A225196.P3678411496582591244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A126204 n).toNat * A242641 (A052905 (n + 3)).toNat

end

end A225196.P3678411496582591244

/-! ## A225196.P5261242590167421825

`A001221(A039787(n+1))*A242641(A134869(n+6)-6)`
-/

namespace A225196.P5261242590167421825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039787 (n + 1)).toNat * A242641 (A134869 (n + 6) - 6).toNat

end

end A225196.P5261242590167421825

/-! ## A225196.P3687453943378437577

`A001221(A209619(n+1))*A242641(A134869(n+6)-6)`
-/

namespace A225196.P3687453943378437577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A209619 (n + 1)).toNat * A242641 (A134869 (n + 6) - 6).toNat

end

end A225196.P3687453943378437577

/-!
# A225197: Number of 7-line partitions of n (i.e., planar partitions of n with at most 7 lines).

The programs for A225197, there is no canonical definition to state claims against.
-/

/-! ## A225197.P6846223012492033299

`A242641(A055999(n+4))`
-/

namespace A225197.P6846223012492033299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A055999 (n + 4)).toNat

end

end A225197.P6846223012492033299

/-! ## A225197.P14012673426271403301

`A242641(A052905(n+4)-1)`
-/

namespace A225197.P14012673426271403301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A052905 (n + 4) - 1).toNat

end

end A225197.P14012673426271403301

/-! ## A225197.P9297489053737282153

`A242641(A027379(n+5)-3)`
-/

namespace A225197.P9297489053737282153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A027379 (n + 5) - 3).toNat

end

end A225197.P9297489053737282153

/-! ## A225197.P2699721825601471611

`A242641(A000124(n+7)-7)`
-/

namespace A225197.P2699721825601471611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A000124 (n + 7) - 7).toNat

end

end A225197.P2699721825601471611

/-! ## A225197.P6714119154435110005

`A242641(A167499(n+4)+A005843(n+1))`
-/

namespace A225197.P6714119154435110005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A167499 (n + 4) + A005843 (n + 1)).toNat

end

end A225197.P6714119154435110005

/-! ## A225197.P5536617378466878625

`A242641(A046691(n+1)+A008574(n+5))`
-/

namespace A225197.P5536617378466878625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A046691 (n + 1) + A008574 (n + 5)).toNat

end

end A225197.P5536617378466878625

/-! ## A225197.P12306136200022268214

`A242641(A167499(n+4)+A004275(n+2))`
-/

namespace A225197.P12306136200022268214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A167499 (n + 4) + A004275 (n + 2)).toNat

end

end A225197.P12306136200022268214

/-! ## A225197.P16597779579566793170

`A242641(A004275(n+5)+A000096(n+4))`
-/

namespace A225197.P16597779579566793170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A004275 (n + 5) + A000096 (n + 4)).toNat

end

end A225197.P16597779579566793170

/-! ## A225197.P10722093711372112481

`A242641(A034856(n+4)+A004273(n+5))`
-/

namespace A225197.P10722093711372112481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A034856 (n + 4) + A004273 (n + 5)).toNat

end

end A225197.P10722093711372112481

/-! ## A225197.P14694707316992194332

`A242641(A002378(n+6)-A167499(n+4))`
-/

namespace A225197.P14694707316992194332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A002378 (n + 6) - A167499 (n + 4)).toNat

end

end A225197.P14694707316992194332

/-!
# A225198: Number of 8-line partitions of n (i.e., planar partitions of n with at most 8 lines).

The programs for A225198, there is no canonical definition to state claims against.
-/

/-! ## A225198.P8812270484422783403

`A242641(A055999(n+5)-1)`
-/

namespace A225198.P8812270484422783403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A055999 (n + 5) - 1).toNat

end

end A225198.P8812270484422783403

/-! ## A225198.P322294693644600099

`A242641(A055998(n+6)-4)`
-/

namespace A225198.P322294693644600099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A055998 (n + 6) - 4).toNat

end

end A225198.P322294693644600099

/-! ## A225198.P9346640033369162710

`A242641(A000096(n+7)-6)`
-/

namespace A225198.P9346640033369162710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A000096 (n + 7) - 6).toNat

end

end A225198.P9346640033369162710

/-! ## A225198.P6035869802453096806

`A242641(A000124(n+8)-8)`
-/

namespace A225198.P6035869802453096806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A000124 (n + 8) - 8).toNat

end

end A225198.P6035869802453096806

/-! ## A225198.P17196875374341965282

`A242641(n+1+A000217(n+7))`
-/

namespace A225198.P17196875374341965282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 ((n + 1 : ℤ) + A000217 (n + 7)).toNat

end

end A225198.P17196875374341965282

/-!
# A225199: Number of 9-line partitions of n (i.e., planar partitions of n with at most 9 lines).

The programs for A225199, there is no canonical definition to state claims against.
-/

/-! ## A225199.P8298495210479529821

`A242641(A155212(n+5))`
-/

namespace A225199.P8298495210479529821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A155212 (n + 5)).toNat

end

end A225199.P8298495210479529821

/-! ## A225199.P6352493018139194766

`A242641(A055999(n+6)-2)`
-/

namespace A225199.P6352493018139194766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A055999 (n + 6) - 2).toNat

end

end A225199.P6352493018139194766

/-! ## A225199.P3793162360605583297

`A242641(A000217(n+9)-8)`
-/

namespace A225199.P3793162360605583297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A000217 (n + 9) - 8).toNat

end

end A225199.P3793162360605583297

/-! ## A225199.P16909776495166556389

`A242641(A000124(n+9)-9)`
-/

namespace A225199.P16909776495166556389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A000124 (n + 9) - 9).toNat

end

end A225199.P16909776495166556389

/-! ## A225199.P14888754645926043218

`A242641(A167499(n+6)+A005843(n+2))`
-/

namespace A225199.P14888754645926043218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A167499 (n + 6) + A005843 (n + 2)).toNat

end

end A225199.P14888754645926043218

/-! ## A225199.P853254162076077548

`A242641(A002378(n+6)-A000096(n+2))`
-/

namespace A225199.P853254162076077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A002378 (n + 6) - A000096 (n + 2)).toNat

end

end A225199.P853254162076077548

/-! ## A225199.P17376989596165913986

`A242641(A167499(n+6)+A004275(n+3))`
-/

namespace A225199.P17376989596165913986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A167499 (n + 6) + A004275 (n + 3)).toNat

end

end A225199.P17376989596165913986

/-! ## A225199.P15525594800840661897

`A242641(A004275(n+6)+A000096(n+6))`
-/

namespace A225199.P15525594800840661897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A004275 (n + 6) + A000096 (n + 6)).toNat

end

end A225199.P15525594800840661897

/-! ## A225199.P13467660120151066791

`A242641(A034856(n+6)+A004273(n+6))`
-/

namespace A225199.P13467660120151066791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A034856 (n + 6) + A004273 (n + 6)).toNat

end

end A225199.P13467660120151066791

