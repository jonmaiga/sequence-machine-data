import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C039
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A252001: Lexicographically earliest permutation of the positive integers, such that a carry occurs when adjacent terms are added in decimal representation.

The programs for A252001, there is no canonical definition to state claims against.
-/

/-! ## A252001.P6270121915395688732

`A262703(n)+a(n-1)` with `a(0)=1`
-/

namespace A252001.P6270121915395688732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262703 n + a (n - 1)

end

end A252001.P6270121915395688732

/-! ## A252001.P14583481874635983890

`∑[A262703(A028310(n))]-7`
-/

namespace A252001.P14583481874635983890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262703 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A252001.P14583481874635983890

/-! ## A252001.P2494244671496089324

`floor(A262703(n)+a(A023443(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A252001.P2494244671496089324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262703 n + a (A023443 n).toNat

end

end A252001.P2494244671496089324

/-! ## A252001.P6324872868456002618

`∑[A262703(n+1)]+1-A262703(n+1)`
-/

namespace A252001.P6324872868456002618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262703 (n + 1))

end

end A252001.P6324872868456002618

/-! ## A252001.P15205324621501389765

`∑[A262703(A028310(n))%A004771(n)]`
-/

namespace A252001.P15205324621501389765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262703 (A028310 n).toNat) (A004771 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252001.P15205324621501389765

/-! ## A252001.P9166354753951454152

`fo[A252002(n+1)-1]+1`
-/

namespace A252001.P9166354753951454152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252002 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A252001.P9166354753951454152

/-! ## A252001.P15400941577944828803

`∑[A262703(A065033(2*n))]-7`
-/

namespace A252001.P15400941577944828803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262703 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A252001.P15400941577944828803

/-!
# A252002: Inverse permutation to A252001.

The programs for A252002, there is no canonical definition to state claims against.
-/

/-! ## A252002.P8631811332156776424

`fo[A252001(n+1)-1]+1`
-/

namespace A252002.P8631811332156776424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252001 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A252002.P8631811332156776424

/-!
# A252003: Numbers n such that the sum of the octagonal numbers N(n) and N(n+1) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

The programs for A252003, there is no canonical definition to state claims against.
-/

/-! ## A252003.P11640959042267882714

`A001652(4*(n+1))/3`
-/

namespace A252003.P11640959042267882714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 (4 * (n + 1)) : ℚ) / 3

end

end A252003.P11640959042267882714

/-! ## A252003.P11842028563043522270

`A048739(A004771(n))/3`
-/

namespace A252003.P11842028563043522270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048739 (A004771 n).toNat : ℚ) / 3

end

end A252003.P11842028563043522270

/-! ## A252003.P1145981236958529775

`A002315(2*n+1)*A077420(n+1)+1`
-/

namespace A252003.P1145981236958529775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (2 * n + 1) * A077420 (n + 1) + 1

end

end A252003.P1145981236958529775

/-!
# A252004: Numbers n such that the sum of the pentagonal numbers P(n) and P(n+1) is equal to the sum of the octagonal numbers N(m) and N(m+1) for some m.

The programs for A252004, there is no canonical definition to state claims against.
-/

/-! ## A252004.P2731218893263271584

`A111954(A004768(n))/3`
-/

namespace A252004.P2731218893263271584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111954 (A004768 n).toNat : ℚ) / 3

end

end A252004.P2731218893263271584

/-! ## A252004.P1776642824861452926

`∑[8*A002315(A016825(n))]`
-/

namespace A252004.P1776642824861452926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002315 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252004.P1776642824861452926

/-!
# A252005: a(1)=2; for n>1, a(n) is the least prime > a(n-1) such that sum of digits of a(n-1) and a(n) is prime.

The programs for A252005, there is no canonical definition to state claims against.
-/

/-! ## A252005.P13940317227817207235

`p?[A288740(n+1)-A324683(n)]`
-/

namespace A252005.P13940317227817207235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288740 (n + 1) - A324683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252005.P13940317227817207235

/-! ## A252005.P88701549623256204

`∩[A093510(n+1), A178317(n+1)]`
-/

namespace A252005.P88701549623256204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252005.P88701549623256204

/-! ## A252005.P13143895464546792479

`∩[A172409(n+1), A178317(n+1)]`
-/

namespace A252005.P13143895464546792479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252005.P13143895464546792479

/-!
# A252006: a(n) = sum of digits of A252005(n) and A252005(n+1).

The programs for A252006, there is no canonical definition to state claims against.
-/

/-! ## A252006.P17994038983367326803

`A007953(A252005(n+2))+A007953(A252005(n+1))`
-/

namespace A252006.P17994038983367326803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A252005 (n + 2)).toNat + A007953 (A252005 (n + 1)).toNat

end

end A252006.P17994038983367326803

/-!
# A252007: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252007, there is no canonical definition to state claims against.
-/

/-! ## A252007.P16258411180546944117

`A252015(∑[4*n]+1)`
-/

namespace A252007.P16258411180546944117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252007.P16258411180546944117

/-!
# A252008: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252008, there is no canonical definition to state claims against.
-/

/-! ## A252008.P3908131846443295155

`A252015(∑[n]+1)`
-/

namespace A252008.P3908131846443295155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252008.P3908131846443295155

/-!
# A252009: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252009, there is no canonical definition to state claims against.
-/

/-! ## A252009.P16536091290646304483

`A252015(∑[n+1]+2)`
-/

namespace A252009.P16536091290646304483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252009.P16536091290646304483

/-!
# A252010: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252010, there is no canonical definition to state claims against.
-/

/-! ## A252010.P862655204242784723

`A252015(∑[n+2]+4)`
-/

namespace A252010.P862655204242784723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252010.P862655204242784723

/-!
# A252011: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252011, there is no canonical definition to state claims against.
-/

/-! ## A252011.P14405792074255649622

`A252015(∑[n+3]+7)`
-/

namespace A252011.P14405792074255649622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252011.P14405792074255649622

/-!
# A252012: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252012, there is no canonical definition to state claims against.
-/

/-! ## A252012.P17440357190164798837

`A252015(A374005(n+1))`
-/

namespace A252012.P17440357190164798837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A374005 (n + 1)).toNat

end

end A252012.P17440357190164798837

/-!
# A252013: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252013, there is no canonical definition to state claims against.
-/

/-! ## A252013.P9748519950557011088

`A252015(A374007(n+1))`
-/

namespace A252013.P9748519950557011088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A374007 (n + 1)).toNat

end

end A252013.P9748519950557011088

/-!
# A252014: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252014, there is no canonical definition to state claims against.
-/

/-! ## A252014.P1963911574299863512

`A252015(A374008(n+1))`
-/

namespace A252014.P1963911574299863512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A374008 (n + 1)).toNat

end

end A252014.P1963911574299863512

/-!
# A252020: Odd perfect powers n not congruent to 1 mod 6 such that n*4^k - 1 has a covering set.

The programs for A252020, there is no canonical definition to state claims against.
-/

/-! ## A252020.P15492732632623795668

`A237592(n+1)²`
-/

namespace A252020.P15492732632623795668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (n + 1) ^ 2

end

end A252020.P15492732632623795668

/-! ## A252020.P11830004113259598471

`A237592(n-log2(1/2))^2`
-/

namespace A252020.P11830004113259598471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A252020.P11830004113259598471

/-! ## A252020.P1502022769366503493

`record[A237592(A020986(n))²]`
-/

namespace A252020.P1502022769366503493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252020.P1502022769366503493

/-! ## A252020.P4733106147698686443

`record[A237592(A020986(n))]*A237592(n+1)`
-/

namespace A252020.P4733106147698686443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A237592 (n + 1)

end

end A252020.P4733106147698686443

/-!
# A252021: Primes p such that (p - 1)/tau(p - 1) is also prime.

The programs for A252021, the canonical program `A252021.P7800136030572691619` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252021 has offset 1).

The definition of A252021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252021.P7800136030572691619

`p?[A063080(n+1)+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A252021

/-- `p?[A063080(n+1)+1]` -/
def P7800136030572691619.Spec : Prop :=
  ∀ n, P7800136030572691619.a n = A252021 (n + 1)

theorem P7800136030572691619.correct : P7800136030572691619.Spec := by
  intro n
  simp only [A252021, Nat.add_sub_cancel]

end A252021

/-! ## A252021.P6598550072893979543

`record[A006530(A063080(3+n)+1)]`
-/

namespace A252021.P6598550072893979543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063080 (3 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252021.P6598550072893979543

namespace A252021

/-- `record[A006530(A063080(3+n)+1)]` -/
def P6598550072893979543.Spec : Prop :=
  ∀ n, P6598550072893979543.a n = A252021 (n + 1)

end A252021

/-! ## A252021.P10169047170263350682

`record[A020639(A063080(3+n)+1)]`
-/

namespace A252021.P10169047170263350682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063080 (3 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252021.P10169047170263350682

namespace A252021

/-- `record[A020639(A063080(3+n)+1)]` -/
def P10169047170263350682.Spec : Prop :=
  ∀ n, P10169047170263350682.a n = A252021 (n + 1)

end A252021

/-! ## A252021.P15539790881259634115

`p?[A004442(A063080(n+1))]`
-/

namespace A252021.P15539790881259634115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A063080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252021.P15539790881259634115

namespace A252021

/-- `p?[A004442(A063080(n+1))]` -/
def P15539790881259634115.Spec : Prop :=
  ∀ n, P15539790881259634115.a n = A252021 (n + 1)

end A252021

/-! ## A252021.P10103726968534753306

`p?[A020725(A063080(n+2))]`
-/

namespace A252021.P10103726968534753306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063080 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252021.P10103726968534753306

namespace A252021

/-- `p?[A020725(A063080(n+2))]` -/
def P10103726968534753306.Spec : Prop :=
  ∀ n, P10103726968534753306.a n = A252021 (n + 1)

end A252021

/-!
# A252022: Lexicographically earliest permutation of the positive integers, such that no carry occurs when adjacent terms are added in decimal representation.

The programs for A252022, there is no canonical definition to state claims against.
-/

/-! ## A252022.P5054927589582063821

`A262604(n)+a(n-1)` with `a(0)=1`
-/

namespace A252022.P5054927589582063821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262604 n + a (n - 1)

end

end A252022.P5054927589582063821

/-! ## A252022.P5412003404645395692

`∑[A262604(abs(1-n)+1)]`
-/

namespace A252022.P5412003404645395692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P5412003404645395692

/-! ## A252022.P7535140803275789496

`∑[a(A122840(n+1))*A262604(n)]` with `a(0)=1`
-/

namespace A252022.P7535140803275789496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A122840 (n + 1)).toNat * A262604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P7535140803275789496

/-! ## A252022.P16531104146417637929

`∑[A262604(n+1)]+1-A262604(n+1)`
-/

namespace A252022.P16531104146417637929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262604 (n + 1))

end

end A252022.P16531104146417637929

/-! ## A252022.P8716049250351911180

`fo[A252023(n+1)-1]+1`
-/

namespace A252022.P8716049250351911180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252023 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A252022.P8716049250351911180

/-!
# A252023: Inverse permutation to A252022.

The programs for A252023, there is no canonical definition to state claims against.
-/

/-! ## A252023.P11193524534785823982

`fo[A252022(n+1)-1]+1`
-/

namespace A252023.P11193524534785823982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A252023.P11193524534785823982

/-!
# A252024: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252024, there is no canonical definition to state claims against.
-/

/-! ## A252024.P15911349418646109916

`A252032(∑[4*n]+1)`
-/

namespace A252024.P15911349418646109916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252024.P15911349418646109916

/-! ## A252024.P7788862404855035171

`record[gcd(A165507(n+1), A252032(n+1))]`
-/

namespace A252024.P7788862404855035171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165507 (n + 1)) (A252032 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252024.P7788862404855035171

/-!
# A252025: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252025, there is no canonical definition to state claims against.
-/

/-! ## A252025.P17288853222370696821

`A252032(∑[n]+1)`
-/

namespace A252025.P17288853222370696821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252025.P17288853222370696821

/-! ## A252025.P4618497664738429780

`record[A252032(n+1)/A008955(n)]`
-/

namespace A252025.P4618497664738429780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252032 (n + 1) : ℚ) / (A008955 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252025.P4618497664738429780

/-!
# A252026: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252026, there is no canonical definition to state claims against.
-/

/-! ## A252026.P854442523377059625

`A252032(∑[n+1]+2)`
-/

namespace A252026.P854442523377059625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252026.P854442523377059625

/-!
# A252027: Number of (n+2) X (3+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252027, there is no canonical definition to state claims against.
-/

/-! ## A252027.P17415162560357662895

`A252032(∑[n+2]+4)`
-/

namespace A252027.P17415162560357662895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252027.P17415162560357662895

/-!
# A252028: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252028, there is no canonical definition to state claims against.
-/

/-! ## A252028.P14982501054578473013

`A252032(A374004(n+1))`
-/

namespace A252028.P14982501054578473013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374004 (n + 1)).toNat

end

end A252028.P14982501054578473013

/-! ## A252028.P6885436173516532460

`A252032(A141214(n+1))`
-/

namespace A252028.P6885436173516532460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A141214 (n + 1)).toNat

end

end A252028.P6885436173516532460

/-!
# A252029: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252029, there is no canonical definition to state claims against.
-/

/-! ## A252029.P12441403384798472384

`A252032(A374005(n+1))`
-/

namespace A252029.P12441403384798472384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374005 (n + 1)).toNat

end

end A252029.P12441403384798472384

/-!
# A252030: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252030, there is no canonical definition to state claims against.
-/

/-! ## A252030.P5662347014126354648

`A252032(A374007(n+1))`
-/

namespace A252030.P5662347014126354648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374007 (n + 1)).toNat

end

end A252030.P5662347014126354648

/-!
# A252031: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252031, there is no canonical definition to state claims against.
-/

/-! ## A252031.P9026131667156880038

`A252032(A374008(n+1))`
-/

namespace A252031.P9026131667156880038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374008 (n + 1)).toNat

end

end A252031.P9026131667156880038

/-!
# A252033: Number of (n+2)X(1+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252033, there is no canonical definition to state claims against.
-/

/-! ## A252033.P14289567790461768126

`A252039(∑[n]+1)`
-/

namespace A252033.P14289567790461768126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252033.P14289567790461768126

/-! ## A252033.P15938119155662408690

`record[A252039(A276954(n+1))]`
-/

namespace A252033.P15938119155662408690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252033.P15938119155662408690

/-! ## A252033.P10908090004246821672

`record[A252039(A286234(n+1))]`
-/

namespace A252033.P10908090004246821672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252033.P10908090004246821672

/-! ## A252033.P14208977819063640253

`record[A252039(n+1)/A007318(n)]`
-/

namespace A252033.P14208977819063640253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252039 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252033.P14208977819063640253

/-!
# A252034: Number of (n+2)X(2+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252034, there is no canonical definition to state claims against.
-/

/-! ## A252034.P13672898339762407656

`A252039(∑[n+1]+2)`
-/

namespace A252034.P13672898339762407656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252034.P13672898339762407656

/-! ## A252034.P18056882927277369781

`record[A033806(n)*A252039(n+2)]`
-/

namespace A252034.P18056882927277369781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A252039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P18056882927277369781

/-! ## A252034.P7395882429355276658

`record[A252039(n+2)/A396583(n)]`
-/

namespace A252034.P7395882429355276658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252039 (n + 2) : ℚ) / (A396583 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P7395882429355276658

/-! ## A252034.P7797936149159273969

`record[A154990(n+1)*A252039(n+3)]`
-/

namespace A252034.P7797936149159273969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A252039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P7797936149159273969

/-! ## A252034.P6887721363105690332

`record[A252039(n+2)/A213224(n+1)]`
-/

namespace A252034.P6887721363105690332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252039 (n + 2) : ℚ) / (A213224 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P6887721363105690332

/-!
# A252035: Number of (n+2)X(3+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252035, there is no canonical definition to state claims against.
-/

/-! ## A252035.P9491447887706383637

`A252039(∑[n+2]+4)`
-/

namespace A252035.P9491447887706383637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252035.P9491447887706383637

/-!
# A252036: Number of (n+2)X(4+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252036, there is no canonical definition to state claims against.
-/

/-! ## A252036.P5132661582361542185

`A252039(A374004(n+1))`
-/

namespace A252036.P5132661582361542185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A374004 (n + 1)).toNat

end

end A252036.P5132661582361542185

/-! ## A252036.P14037027314839120423

`A252039(A141214(n+1))`
-/

namespace A252036.P14037027314839120423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A141214 (n + 1)).toNat

end

end A252036.P14037027314839120423

/-!
# A252037: Number of (n+2)X(5+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252037, there is no canonical definition to state claims against.
-/

/-! ## A252037.P17002500762964546361

`A252039(A374005(1+n))`
-/

namespace A252037.P17002500762964546361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A374005 (1 + n)).toNat

end

end A252037.P17002500762964546361

/-!
# A252038: Number of (n+2)X(6+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252038, there is no canonical definition to state claims against.
-/

/-! ## A252038.P10602421755573945504

`A252039(A374007(n+1))`
-/

namespace A252038.P10602421755573945504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A374007 (n + 1)).toNat

end

end A252038.P10602421755573945504

/-!
# A252042: Primes p such that 2*p^3 + 1 and 2*p^3 + 3 are also primes.

The programs for A252042, there is no canonical definition to state claims against.
-/

/-! ## A252042.P15978984496266037306

`∩[A153507(n+1), A309857(n+1)]`
-/

namespace A252042.P15978984496266037306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252042.P15978984496266037306

/-!
# A252043: a(n) is the concatenation of first n terms of A033307.

The programs for A252043, there is no canonical definition to state claims against.
-/

/-! ## A252043.P15138575076242161802

`A224841(∑[1+n])`
-/

namespace A252043.P15138575076242161802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252043.P15138575076242161802

/-! ## A252043.P11756038216216854609

`A033307(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A252043.P11756038216216854609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033307 n + 10 * a (n - 1)

end

end A252043.P11756038216216854609

/-! ## A252043.P5296877683011745699

`A007376(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A252043.P5296877683011745699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007376 (n + 1) + 10 * a (n - 1)

end

end A252043.P5296877683011745699

/-! ## A252043.P17818947629927982566

`record[A224841(A038722(1+n))]`
-/

namespace A252043.P17818947629927982566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A038722 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P17818947629927982566

/-! ## A252043.P10432931858508609881

`record[A224841(A093995(1+n)-n)]`
-/

namespace A252043.P10432931858508609881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A093995 (1 + n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P10432931858508609881

/-! ## A252043.P6538377829055362642

`record[A224841(A057944(A011773(n+1)))]`
-/

namespace A252043.P6538377829055362642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A057944 (A011773 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P6538377829055362642

/-! ## A252043.P2354314823209701113

`record[A224841(A057944(A064989(n+1)))]`
-/

namespace A252043.P2354314823209701113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A057944 (A064989 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P2354314823209701113

/-!
# A252044: Numbers n such that s + 1/p = 0, where {d(i), i=1..q} are the q distinct prime divisors of n, s = Sum_{i=1..q} (-1)^(i+1)*i/d(i) and p = Product_{i=1..q} d(i).

The programs for A252044, there is no canonical definition to state claims against.
-/

/-! ## A252044.P4773997094467463798

`∩[A089341(n+1), A360799(n)]`
-/

namespace A252044.P4773997094467463798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P4773997094467463798

/-! ## A252044.P8699874560247837737

`∩[A089341(n+1), A291442(n+1)]`
-/

namespace A252044.P8699874560247837737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P8699874560247837737

/-! ## A252044.P8794300760704487166

`∩[A089341(n+1), A190899(n+1)]`
-/

namespace A252044.P8794300760704487166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P8794300760704487166

/-! ## A252044.P4065524011120433550

`∩[A089341(n+1), A298534(n+1)]`
-/

namespace A252044.P4065524011120433550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P4065524011120433550

/-! ## A252044.P10825198005436093203

`∩[A089341(n+1), A308040(n+1)]`
-/

namespace A252044.P10825198005436093203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P10825198005436093203

/-!
# A252045: Number of (n+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252045, there is no canonical definition to state claims against.
-/

/-! ## A252045.P9555902322604906443

`A252053(∑[4*n]+1)`
-/

namespace A252045.P9555902322604906443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252045.P9555902322604906443

/-! ## A252045.P13408344380459608858

`record[gcd(A114327(n), A252053(n+1))]`
-/

namespace A252045.P13408344380459608858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252045.P13408344380459608858

/-!
# A252046: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252046, there is no canonical definition to state claims against.
-/

/-! ## A252046.P2601371279085533538

`A252053(∑[n]+1)`
-/

namespace A252046.P2601371279085533538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252046.P2601371279085533538

/-! ## A252046.P18045734370144136916

`record[A252053(n+1)/A008459(n)]`
-/

namespace A252046.P18045734370144136916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252053 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252046.P18045734370144136916

/-! ## A252046.P7685345603866499337

`record[gcd(A002262(n), A252053(n+1))]`
-/

namespace A252046.P7685345603866499337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252046.P7685345603866499337

/-! ## A252046.P17172482605141284223

`record[root(A252053(n+1), A003983(n+1))]`
-/

namespace A252046.P17172482605141284223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252053 (n + 1) : ℝ) ^ (1 / (A003983 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252046.P17172482605141284223

/-!
# A252047: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252047, there is no canonical definition to state claims against.
-/

/-! ## A252047.P3818930640271951258

`A252053(∑[n+1]+2)`
-/

namespace A252047.P3818930640271951258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252047.P3818930640271951258

/-! ## A252047.P11294749427372173300

`record[gcd(A002262(n), A252053(n+2))]`
-/

namespace A252047.P11294749427372173300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252053 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252047.P11294749427372173300

/-!
# A252048: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252048, there is no canonical definition to state claims against.
-/

/-! ## A252048.P2395404612776234040

`A252053(∑[n+2]+4)`
-/

namespace A252048.P2395404612776234040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252048.P2395404612776234040

/-!
# A252049: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252049, there is no canonical definition to state claims against.
-/

/-! ## A252049.P15671256786932177593

`A252053(A141214(n)+7)`
-/

namespace A252049.P15671256786932177593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A141214 n + 7).toNat

end

end A252049.P15671256786932177593

/-! ## A252049.P9963970976014138928

`A252053(A141214(n+1))`
-/

namespace A252049.P9963970976014138928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A141214 (n + 1)).toNat

end

end A252049.P9963970976014138928

/-!
# A252050: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252050, there is no canonical definition to state claims against.
-/

/-! ## A252050.P17826758759893081173

`A252053(A167499(n+3))`
-/

namespace A252050.P17826758759893081173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167499 (n + 3)).toNat

end

end A252050.P17826758759893081173

/-! ## A252050.P15006453528018349185

`A252053(∑[n+5]+6)`
-/

namespace A252050.P15006453528018349185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252050.P15006453528018349185

/-!
# A252051: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252051, there is no canonical definition to state claims against.
-/

/-! ## A252051.P17396373585448674024

`A252053(A166136(n+4))`
-/

namespace A252051.P17396373585448674024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A166136 (n + 4)).toNat

end

end A252051.P17396373585448674024

/-! ## A252051.P3666212251883962946

`A252053(A374007(n+1))`
-/

namespace A252051.P3666212251883962946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A374007 (n + 1)).toNat

end

end A252051.P3666212251883962946

/-!
# A252052: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252052, there is no canonical definition to state claims against.
-/

/-! ## A252052.P16190471309157776116

`A252053(A166136(n+5)+1)`
-/

namespace A252052.P16190471309157776116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A166136 (n + 5) + 1).toNat

end

end A252052.P16190471309157776116

/-! ## A252052.P8364161997324496902

`A252053(A374008(n+1))`
-/

namespace A252052.P8364161997324496902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A374008 (n + 1)).toNat

end

end A252052.P8364161997324496902

/-!
# A252055: Number of products A000201(i)*A001950(j) = n.

The programs for A252055, the canonical program `A252055.P14347574890606999635` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252055 has offset 1).

The definition of A252055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252055.P14347574890606999635

`∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A252055

/-- `∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]` -/
def P14347574890606999635.Spec : Prop :=
  ∀ n, P14347574890606999635.a n = A252055 (n + 1)

theorem P14347574890606999635.correct : P14347574890606999635.Spec := by
  intro n
  simp only [A252055, Nat.add_sub_cancel]

end A252055

/-! ## A252055.P12781413170700720377

`C(A003842(n), A003842(A349741(n+1)))`
-/

namespace A252055.P12781413170700720377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003842 n).toNat (A003842 (A349741 (n + 1)).toNat).toNat

end

end A252055.P12781413170700720377

namespace A252055

/-- `C(A003842(n), A003842(A349741(n+1)))` -/
def P12781413170700720377.Spec : Prop :=
  ∀ n, (P12781413170700720377.a n : ℤ) = A252055 (n + 1)

end A252055

/-! ## A252055.P4976097927960289008

`A267463(A318612(3*n+2))+A003849(n)`
-/

namespace A252055.P4976097927960289008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A318612 (3 * n + 2)).toNat + A003849 n

end

end A252055.P4976097927960289008

namespace A252055

/-- `A267463(A318612(3*n+2))+A003849(n)` -/
def P4976097927960289008.Spec : Prop :=
  ∀ n, P4976097927960289008.a n = A252055 (n + 1)

end A252055

/-! ## A252055.P6881040365194763030

`A250068(n+1)-A000035(A006504(n+1))`
-/

namespace A252055.P6881040365194763030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1) - A000035 (A006504 (n + 1)).toNat

end

end A252055.P6881040365194763030

namespace A252055

/-- `A250068(n+1)-A000035(A006504(n+1))` -/
def P6881040365194763030.Spec : Prop :=
  ∀ n, P6881040365194763030.a n = A252055 (n + 1)

end A252055

/-! ## A252055.P6211404104449628482

`A338486(3*n+2)%A240542(A286001(n+1))`
-/

namespace A252055.P6211404104449628482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338486 (3 * n + 2)) (A240542 (A286001 (n + 1)).toNat)

end

end A252055.P6211404104449628482

namespace A252055

/-- `A338486(3*n+2)%A240542(A286001(n+1))` -/
def P6211404104449628482.Spec : Prop :=
  ∀ n, P6211404104449628482.a n = A252055 (n + 1)

end A252055

/-!
# A252057: Number of (n+2) X (n+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252057, there is no canonical definition to state claims against.
-/

/-! ## A252057.P17706047987423551042

`A252065(∑[4*n]+1)`
-/

namespace A252057.P17706047987423551042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252057.P17706047987423551042

/-! ## A252057.P11879258506985268252

`record[gcd(A252065(n+1), A296339(n))]`
-/

namespace A252057.P11879258506985268252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252065 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252057.P11879258506985268252

/-!
# A252058: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252058, there is no canonical definition to state claims against.
-/

/-! ## A252058.P17905611390688069056

`A252065(∑[n]+1)`
-/

namespace A252058.P17905611390688069056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252058.P17905611390688069056

/-! ## A252058.P3100339796184422870

`record[A010054(n)*A252065(n+1)]`
-/

namespace A252058.P3100339796184422870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P3100339796184422870

/-! ## A252058.P17846023907082267724

`record[A252065(n+1)/A008459(n)]`
-/

namespace A252058.P17846023907082267724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252065 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P17846023907082267724

/-! ## A252058.P15371827225268721602

`record[A252065(n+1)/A008518(n)]`
-/

namespace A252058.P15371827225268721602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252065 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P15371827225268721602

/-! ## A252058.P1364947004294546156

`record[gcd(A002262(n), A252065(n+1))]`
-/

namespace A252058.P1364947004294546156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P1364947004294546156

/-!
# A252059: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252059, there is no canonical definition to state claims against.
-/

/-! ## A252059.P13199266741200314917

`A252065(∑[n+1]+2)`
-/

namespace A252059.P13199266741200314917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252059.P13199266741200314917

/-! ## A252059.P17526300254152393188

`record[A010054(n)*A252065(n+2)]`
-/

namespace A252059.P17526300254152393188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252059.P17526300254152393188

/-! ## A252059.P7099045293393981345

`record[gcd(A002262(n), A252065(n+2))]`
-/

namespace A252059.P7099045293393981345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252065 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252059.P7099045293393981345

/-!
# A252060: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252060, there is no canonical definition to state claims against.
-/

/-! ## A252060.P7265178137360454686

`A252065(∑[n+2]+4)`
-/

namespace A252060.P7265178137360454686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252060.P7265178137360454686

/-!
# A252061: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252061, there is no canonical definition to state claims against.
-/

/-! ## A252061.P5922792705793921937

`A252065(A374004(n+1))`
-/

namespace A252061.P5922792705793921937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374004 (n + 1)).toNat

end

end A252061.P5922792705793921937

/-! ## A252061.P10996202970398488270

`A252065(A141214(n+1))`
-/

namespace A252061.P10996202970398488270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A141214 (n + 1)).toNat

end

end A252061.P10996202970398488270

/-!
# A252062: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252062, there is no canonical definition to state claims against.
-/

/-! ## A252062.P12791376656354948617

`A252065(A374005(n+1))`
-/

namespace A252062.P12791376656354948617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374005 (n + 1)).toNat

end

end A252062.P12791376656354948617

/-!
# A252063: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252063, there is no canonical definition to state claims against.
-/

/-! ## A252063.P10277396359937582044

`A252065(A374007(n+1))`
-/

namespace A252063.P10277396359937582044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374007 (n + 1)).toNat

end

end A252063.P10277396359937582044

/-!
# A252064: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252064, there is no canonical definition to state claims against.
-/

/-! ## A252064.P335665510820351637

`A252065(A374008(n+1))`
-/

namespace A252064.P335665510820351637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374008 (n + 1)).toNat

end

end A252064.P335665510820351637

/-!
# A252066: Numbers n such that n^2 is a sum of 2 and also of 4 consecutive primes.

The programs for A252066, there is no canonical definition to state claims against.
-/

/-! ## A252066.P18335888694565895127

`∩[A051395(n+1), A074924(n+1)]`
-/

namespace A252066.P18335888694565895127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P18335888694565895127

/-! ## A252066.P13048012949983727872

`∩[2*A139013(n+1), A051395(n+1)]`
-/

namespace A252066.P13048012949983727872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P13048012949983727872

/-! ## A252066.P15387955389283521149

`∩[2*A226152(n+1), A074924(n+1)]`
-/

namespace A252066.P15387955389283521149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P15387955389283521149

/-! ## A252066.P16468420389677772409

`2*∩[A139013(n+1), A226152(n+1)]`
-/

namespace A252066.P16468420389677772409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P16468420389677772409

/-! ## A252066.P7606374832468730618

`∩[A051395(n+1), A005843(A139013(n+1))]`
-/

namespace A252066.P7606374832468730618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A139013 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P7606374832468730618

/-!
# A252067: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252067, there is no canonical definition to state claims against.
-/

/-! ## A252067.P18292471514223105165

`A252075(∑[4*n]+1)`
-/

namespace A252067.P18292471514223105165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252067.P18292471514223105165

/-! ## A252067.P225580385471563859

`record[A252075(A152271(n²))]`
-/

namespace A252067.P225580385471563859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252067.P225580385471563859

/-! ## A252067.P14259588324147980178

`record[gcd(A008482(n), A252075(n+1))]`
-/

namespace A252067.P14259588324147980178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A252075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252067.P14259588324147980178

/-!
# A252068: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252068, there is no canonical definition to state claims against.
-/

/-! ## A252068.P11060634506457134374

`A252075(∑[n]+1)`
-/

namespace A252068.P11060634506457134374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252068.P11060634506457134374

/-! ## A252068.P442687508875263603

`record[root(A252075(n+1), A013609(n))]`
-/

namespace A252068.P442687508875263603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252075 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P442687508875263603

/-! ## A252068.P10033895532117620260

`record[root(A252075(n+1), A302997(n))]`
-/

namespace A252068.P10033895532117620260
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252075 (n + 1) : ℝ) ^ (1 / (A302997 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P10033895532117620260

/-! ## A252068.P12714677461261195024

`record[gcd(A014473(n), A252075(n+1))]`
-/

namespace A252068.P12714677461261195024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A252075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P12714677461261195024

/-! ## A252068.P16363073904125013437

`record[A252075(A000217(A152271(n)))]`
-/

namespace A252068.P16363073904125013437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A000217 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P16363073904125013437

/-!
# A252069: Number of (n+2) X (2+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252069, the canonical program `A252069.P13814823281686794883` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252069 has offset 1).

The definition of A252069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252069.P13814823281686794883

`ogf((105-58x+10x^2-275x^3-163x^4+55x^5+160x^6+77x^7+6x^8-39x^9-4x^10)/(1-2x-x^2-4x^3+x^4+4x^5+3x^6-x^8-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252069

/-- `ogf((105-58x+10x^2-275x^3-163x^4+55x^5+160x^6+77x^7+6x^8-39x^9-4x^10)/(1-2x-x^2-4x^3+x^4+4x^5+3x^6-x^8-x^9))` -/
def P13814823281686794883.Spec : Prop :=
  ∀ n, P13814823281686794883.a n = A252069 (n + 1)

theorem P13814823281686794883.correct : P13814823281686794883.Spec := by
  intro n
  simp only [A252069, Nat.add_sub_cancel]

end A252069

/-! ## A252069.P54047253720552596

`A252075(∑[n+1]+2)`
-/

namespace A252069.P54047253720552596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252069.P54047253720552596

namespace A252069

/-- `A252075(∑[n+1]+2)` -/
def P54047253720552596.Spec : Prop :=
  ∀ n, P54047253720552596.a n = A252069 (n + 1)

end A252069

/-! ## A252069.P7768103663093673632

`record[root(A252075(n+2), A013609(n))]`
-/

namespace A252069.P7768103663093673632
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252075 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252069.P7768103663093673632

namespace A252069

/-- `record[root(A252075(n+2), A013609(n))]` -/
def P7768103663093673632.Spec : Prop :=
  ∀ n, P7768103663093673632.a n = (A252069 (n + 1) : ℝ)

end A252069

/-! ## A252069.P9910132840007689650

`record[A252075(A133263(A008611(n)))]`
-/

namespace A252069.P9910132840007689650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252069.P9910132840007689650

namespace A252069

/-- `record[A252075(A133263(A008611(n)))]` -/
def P9910132840007689650.Spec : Prop :=
  ∀ n, P9910132840007689650.a n = A252069 (n + 1)

end A252069

/-!
# A252070: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252070, there is no canonical definition to state claims against.
-/

/-! ## A252070.P4782417476322892193

`A252075(∑[n+2]+4)`
-/

namespace A252070.P4782417476322892193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252070.P4782417476322892193

/-!
# A252071: Number of (n+2) X (4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252071, there is no canonical definition to state claims against.
-/

/-! ## A252071.P6840383314982467324

`A252075(A141214(n)+7)`
-/

namespace A252071.P6840383314982467324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A141214 n + 7).toNat

end

end A252071.P6840383314982467324

/-! ## A252071.P1141493655667042539

`A252075(A141214(n+1))`
-/

namespace A252071.P1141493655667042539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A141214 (n + 1)).toNat

end

end A252071.P1141493655667042539

/-!
# A252072: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252072, there is no canonical definition to state claims against.
-/

/-! ## A252072.P2525355804564619955

`A252075(A167499(n+3))`
-/

namespace A252072.P2525355804564619955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A167499 (n + 3)).toNat

end

end A252072.P2525355804564619955

/-! ## A252072.P3231392180462491717

`A252075(A374005(n+1))`
-/

namespace A252072.P3231392180462491717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A374005 (n + 1)).toNat

end

end A252072.P3231392180462491717

/-!
# A252073: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252073, there is no canonical definition to state claims against.
-/

/-! ## A252073.P14350833633015551889

`A252075(A166136(n+4))`
-/

namespace A252073.P14350833633015551889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A166136 (n + 4)).toNat

end

end A252073.P14350833633015551889

/-! ## A252073.P9711075167847357581

`A252075(A374007(n+1))`
-/

namespace A252073.P9711075167847357581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A374007 (n + 1)).toNat

end

end A252073.P9711075167847357581

/-!
# A252074: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252074, there is no canonical definition to state claims against.
-/

/-! ## A252074.P8068884553592507655

`A252075(eq[8, A131818(n+1)])`
-/

namespace A252074.P8068884553592507655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252074.P8068884553592507655

/-! ## A252074.P11192260449204619493

`A252075(A374008(n+1))`
-/

namespace A252074.P11192260449204619493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A374008 (n + 1)).toNat

end

end A252074.P11192260449204619493

/-!
# A252079: Fixed points of permutations A252022 and A252023.

The programs for A252079, there is no canonical definition to state claims against.
-/

/-! ## A252079.P10284338612036605365

`eq[n, A252022(round(sqrt(n²+1)))]`
-/

namespace A252079.P10284338612036605365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252079.P10284338612036605365

/-! ## A252079.P10106003979930672767

`eq[n+1, A252022(n+1)]+1`
-/

namespace A252079.P10106003979930672767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252079.P10106003979930672767

/-! ## A252079.P14295704056643482734

`eq[n+1, A252023(n+1)]+1`
-/

namespace A252079.P14295704056643482734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252079.P14295704056643482734

/-! ## A252079.P11533487394851635197

`eq[n+1, A262604(n)+a(n-1)]+1` with `a(0)=1`
-/

namespace A252079.P11533487394851635197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A262604 n + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252079.P11533487394851635197

/-! ## A252079.P2714832350516779669

`eq[n, A252023(A028310(n))]`
-/

namespace A252079.P2714832350516779669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252023 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252079.P2714832350516779669

/-!
# A252080: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252080, there is no canonical definition to state claims against.
-/

/-! ## A252080.P13206459399290146373

`A252088(∑[4*n]+1)`
-/

namespace A252080.P13206459399290146373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252080.P13206459399290146373

/-! ## A252080.P15239761741375831900

`record[A003982(n)*A252088(n+1)]`
-/

namespace A252080.P15239761741375831900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252080.P15239761741375831900

/-! ## A252080.P18055513925025114520

`record[gcd(A049581(n), A252088(n+1))]`
-/

namespace A252080.P18055513925025114520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252080.P18055513925025114520

/-!
# A252081: Number of (n+2) X (1+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252081, there is no canonical definition to state claims against.
-/

/-! ## A252081.P16192603713224264363

`A252088(∑[n]+1)`
-/

namespace A252081.P16192603713224264363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252081.P16192603713224264363

/-! ## A252081.P13661774204015716013

`record[A010054(n)*A252088(n+1)]`
-/

namespace A252081.P13661774204015716013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P13661774204015716013

/-! ## A252081.P3910507896564417454

`record[A252088(n+1)/A154334(n)]`
-/

namespace A252081.P3910507896564417454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252088 (n + 1) : ℚ) / (A154334 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P3910507896564417454

/-! ## A252081.P3316496077573781542

`record[root(A252088(n+1), A008279(n))]`
-/

namespace A252081.P3316496077573781542
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252088 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P3316496077573781542

/-! ## A252081.P13477777727423791149

`record[root(A252088(n+1), A002260(n+1))]`
-/

namespace A252081.P13477777727423791149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252088 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P13477777727423791149

/-!
# A252082: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252082, there is no canonical definition to state claims against.
-/

/-! ## A252082.P5425424157915210520

`A252088(∑[n+1]+2)`
-/

namespace A252082.P5425424157915210520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252082.P5425424157915210520

/-! ## A252082.P11691458986037478580

`record[A010054(n)*A252088(n+2)]`
-/

namespace A252082.P11691458986037478580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252082.P11691458986037478580

/-! ## A252082.P15079917587863709331

`record[A252088(A133263(A008612(n)))]`
-/

namespace A252082.P15079917587863709331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252082.P15079917587863709331

/-!
# A252083: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252083, there is no canonical definition to state claims against.
-/

/-! ## A252083.P9871403871479918650

`A252088(∑[n+2]+4)`
-/

namespace A252083.P9871403871479918650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252083.P9871403871479918650

/-!
# A252084: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252084, there is no canonical definition to state claims against.
-/

/-! ## A252084.P10637002083045308735

`A252088(A141214(n)+7)`
-/

namespace A252084.P10637002083045308735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A141214 n + 7).toNat

end

end A252084.P10637002083045308735

/-! ## A252084.P3700445310844710686

`A252088(A141214(n+1))`
-/

namespace A252084.P3700445310844710686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A141214 (n + 1)).toNat

end

end A252084.P3700445310844710686

/-!
# A252085: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252085, there is no canonical definition to state claims against.
-/

/-! ## A252085.P8370374096684024175

`A252088(A167499(n+3))`
-/

namespace A252085.P8370374096684024175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A167499 (n + 3)).toNat

end

end A252085.P8370374096684024175

/-! ## A252085.P15487857144973528802

`A252088(C(n+5, 2)+n+1)`
-/

namespace A252085.P15487857144973528802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (Nat.choose (n + 5) 2 + (n + 1))

end

end A252085.P15487857144973528802

/-!
# A252086: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252086, there is no canonical definition to state claims against.
-/

/-! ## A252086.P6903317983715011587

`A252088(A166136(n+4))`
-/

namespace A252086.P6903317983715011587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A166136 (n + 4)).toNat

end

end A252086.P6903317983715011587

/-! ## A252086.P162586106509265638

`A252088(A374007(n+1))`
-/

namespace A252086.P162586106509265638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A374007 (n + 1)).toNat

end

end A252086.P162586106509265638

/-!
# A252087: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252087, there is no canonical definition to state claims against.
-/

/-! ## A252087.P5938962513103037831

`A252088(A000217(n+6)+7)`
-/

namespace A252087.P5938962513103037831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A000217 (n + 6) + 7).toNat

end

end A252087.P5938962513103037831

/-! ## A252087.P2272152431891270123

`A252088(A374008(n+1))`
-/

namespace A252087.P2272152431891270123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A374008 (n + 1)).toNat

end

end A252087.P2272152431891270123

/-!
# A252089: Primes p such that p + 26 is prime.

The programs for A252089, the canonical program `A252089.P2043731028031642140` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252089 has offset 1).

The definition of A252089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252089.P2043731028031642140

`p?[p?[2*n+1]-26]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252089

/-- `p?[p?[2*n+1]-26]` -/
def P2043731028031642140.Spec : Prop :=
  ∀ n, P2043731028031642140.a n = A252089 (n + 1)

theorem P2043731028031642140.correct : P2043731028031642140.Spec := by
  intro n
  simp only [A252089, Nat.add_sub_cancel]

end A252089

/-! ## A252089.P11717962664050691532

`p?[A086303(n+1)-11]`
-/

namespace A252089.P11717962664050691532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P11717962664050691532

namespace A252089

/-- `p?[A086303(n+1)-11]` -/
def P11717962664050691532.Spec : Prop :=
  ∀ n, P11717962664050691532.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P8151319331801339456

`p?[A028815(n)-27]`
-/

namespace A252089.P8151319331801339456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P8151319331801339456

namespace A252089

/-- `p?[A028815(n)-27]` -/
def P8151319331801339456.Spec : Prop :=
  ∀ n, P8151319331801339456.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P2460369600135752198

`p?[A000040(n+1)-26]`
-/

namespace A252089.P2460369600135752198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P2460369600135752198

namespace A252089

/-- `p?[A000040(n+1)-26]` -/
def P2460369600135752198.Spec : Prop :=
  ∀ n, P2460369600135752198.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P4465419013631562948

`p?[or(1, A000040(2-(n-2*n)))-26]`
-/

namespace A252089.P4465419013631562948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P4465419013631562948

namespace A252089

/-- `p?[or(1, A000040(2-(n-2*n)))-26]` -/
def P4465419013631562948.Spec : Prop :=
  ∀ n, P4465419013631562948.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P12661161216795243410

`p?[A128059(n)-26]`
-/

namespace A252089.P12661161216795243410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P12661161216795243410

namespace A252089

/-- `p?[A128059(n)-26]` -/
def P12661161216795243410.Spec : Prop :=
  ∀ n, P12661161216795243410.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P17653980992003135342

`p?[A055672(n)-27]`
-/

namespace A252089.P17653980992003135342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P17653980992003135342

namespace A252089

/-- `p?[A055672(n)-27]` -/
def P17653980992003135342.Spec : Prop :=
  ∀ n, P17653980992003135342.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P13323494657721264448

`p?[A023468(p?[2*n+1])]`
-/

namespace A252089.P13323494657721264448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P13323494657721264448

namespace A252089

/-- `p?[A023468(p?[2*n+1])]` -/
def P13323494657721264448.Spec : Prop :=
  ∀ n, P13323494657721264448.a n = A252089 (n + 1)

theorem P13323494657721264448.correct : P13323494657721264448.Spec := by
  intro n
  simp only [A252089, Nat.add_sub_cancel, A252089.P13323494657721264448.f2, A252089.P13323494657721264448.f1, A252089.P13323494657721264448.a, A252089.P2043731028031642140.f2, A252089.P2043731028031642140.f1, A252089.P2043731028031642140.a, A023468, A023468.P6083773450565060551.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252089

/-! ## A252089.P7371809993338971963

`p?[A023468(A000040(n+1))]`
-/

namespace A252089.P7371809993338971963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P7371809993338971963

namespace A252089

/-- `p?[A023468(A000040(n+1))]` -/
def P7371809993338971963.Spec : Prop :=
  ∀ n, P7371809993338971963.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P2370979589542392403

`p?[A023470(A000040(n+1)+2)]`
-/

namespace A252089.P2370979589542392403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P2370979589542392403

namespace A252089

/-- `p?[A023470(A000040(n+1)+2)]` -/
def P2370979589542392403.Spec : Prop :=
  ∀ n, P2370979589542392403.a n = A252089 (n + 1)

end A252089

/-!
# A252090: Primes p such that p + 28 is also prime.

The programs for A252090, the canonical program `A252090.P3190800062160782735` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252090 has offset 1).

The definition of A252090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252090.P3190800062160782735

`p?[p?[2*n+1]-28]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252090

/-- `p?[p?[2*n+1]-28]` -/
def P3190800062160782735.Spec : Prop :=
  ∀ n, P3190800062160782735.a n = A252090 (n + 1)

theorem P3190800062160782735.correct : P3190800062160782735.Spec := by
  intro n
  simp only [A252090, Nat.add_sub_cancel]

end A252090

/-! ## A252090.P10080729260010954326

`p?[A028815(n)-29]`
-/

namespace A252090.P10080729260010954326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P10080729260010954326

namespace A252090

/-- `p?[A028815(n)-29]` -/
def P10080729260010954326.Spec : Prop :=
  ∀ n, P10080729260010954326.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P5003553613772761060

`p?[A040976(n+1)-26]`
-/

namespace A252090.P5003553613772761060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P5003553613772761060

namespace A252090

/-- `p?[A040976(n+1)-26]` -/
def P5003553613772761060.Spec : Prop :=
  ∀ n, P5003553613772761060.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P12029593301986940423

`p?[A006093(n+1)-27]`
-/

namespace A252090.P12029593301986940423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P12029593301986940423

namespace A252090

/-- `p?[A006093(n+1)-27]` -/
def P12029593301986940423.Spec : Prop :=
  ∀ n, P12029593301986940423.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P8594847869944004663

`p?[A000040(n+1)-28]`
-/

namespace A252090.P8594847869944004663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P8594847869944004663

namespace A252090

/-- `p?[A000040(n+1)-28]` -/
def P8594847869944004663.Spec : Prop :=
  ∀ n, P8594847869944004663.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P841699795841066736

`p?[A004139(n+1)-28]`
-/

namespace A252090.P841699795841066736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P841699795841066736

namespace A252090

/-- `p?[A004139(n+1)-28]` -/
def P841699795841066736.Spec : Prop :=
  ∀ n, P841699795841066736.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P7395264461748580054

`p?[A008864(n+1)-29]`
-/

namespace A252090.P7395264461748580054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P7395264461748580054

namespace A252090

/-- `p?[A008864(n+1)-29]` -/
def P7395264461748580054.Spec : Prop :=
  ∀ n, P7395264461748580054.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P7913180053720264809

`p?[A175216(n+1)-29]`
-/

namespace A252090.P7913180053720264809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P7913180053720264809

namespace A252090

/-- `p?[A175216(n+1)-29]` -/
def P7913180053720264809.Spec : Prop :=
  ∀ n, P7913180053720264809.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P14520816299404031573

`p?[A008578(n+1)-28]`
-/

namespace A252090.P14520816299404031573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P14520816299404031573

namespace A252090

/-- `p?[A008578(n+1)-28]` -/
def P14520816299404031573.Spec : Prop :=
  ∀ n, P14520816299404031573.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P6473361575982263493

`p?[record[A006530(n+2)]-28]`
-/

namespace A252090.P6473361575982263493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P6473361575982263493

namespace A252090

/-- `p?[record[A006530(n+2)]-28]` -/
def P6473361575982263493.Spec : Prop :=
  ∀ n, P6473361575982263493.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P16209039628670276851

`p?[record[A020639(n+2)]-28]`
-/

namespace A252090.P16209039628670276851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P16209039628670276851

namespace A252090

/-- `p?[record[A020639(n+2)]-28]` -/
def P16209039628670276851.Spec : Prop :=
  ∀ n, P16209039628670276851.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P7193376961817785043

`p?[A023470(p?[2*n+1])]`
-/

namespace A252090.P7193376961817785043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P7193376961817785043

namespace A252090

/-- `p?[A023470(p?[2*n+1])]` -/
def P7193376961817785043.Spec : Prop :=
  ∀ n, P7193376961817785043.a n = A252090 (n + 1)

theorem P7193376961817785043.correct : P7193376961817785043.Spec := by
  intro n
  simp only [A252090, Nat.add_sub_cancel, A252090.P7193376961817785043.f2, A252090.P7193376961817785043.f1, A252090.P7193376961817785043.a, A252090.P3190800062160782735.f2, A252090.P3190800062160782735.f1, A252090.P3190800062160782735.a, A023470, A023470.P6056020075891729902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252090

/-! ## A252090.P8176626902655979778

`p?[record[A014963(n+2)]-28]`
-/

namespace A252090.P8176626902655979778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P8176626902655979778

namespace A252090

/-- `p?[record[A014963(n+2)]-28]` -/
def P8176626902655979778.Spec : Prop :=
  ∀ n, P8176626902655979778.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P6964271282317538970

`p?[A023470(A000040(n+1))]`
-/

namespace A252090.P6964271282317538970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P6964271282317538970

namespace A252090

/-- `p?[A023470(A000040(n+1))]` -/
def P6964271282317538970.Spec : Prop :=
  ∀ n, P6964271282317538970.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P6169626310158927179

`p?[A023472(A000040(n+1)+2)]`
-/

namespace A252090.P6169626310158927179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P6169626310158927179

namespace A252090

/-- `p?[A023472(A000040(n+1)+2)]` -/
def P6169626310158927179.Spec : Prop :=
  ∀ n, P6169626310158927179.a n = A252090 (n + 1)

end A252090

/-!
# A252091: Primes p such that p + 34 is prime.

The programs for A252091, the canonical program `A252091.P17698577421013009874` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252091 has offset 1).

The definition of A252091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252091.P7075252391930094104

`p?[A138644(n+1)-34]`
-/

namespace A252091.P7075252391930094104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138644 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7075252391930094104

namespace A252091

/-- `p?[A138644(n+1)-34]` -/
def P7075252391930094104.Spec : Prop :=
  ∀ n, P7075252391930094104.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P17698577421013009874

`p?[p?[2*n+1]-34]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252091

/-- `p?[p?[2*n+1]-34]` -/
def P17698577421013009874.Spec : Prop :=
  ∀ n, P17698577421013009874.a n = A252091 (n + 1)

theorem P17698577421013009874.correct : P17698577421013009874.Spec := by
  intro n
  simp only [A252091, Nat.add_sub_cancel]

end A252091

/-! ## A252091.P4457244875328413335

`p?[A086801(n+1)-31]`
-/

namespace A252091.P4457244875328413335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P4457244875328413335

namespace A252091

/-- `p?[A086801(n+1)-31]` -/
def P4457244875328413335.Spec : Prop :=
  ∀ n, P4457244875328413335.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P6155746559770536375

`p?[A154115(n+1)-31]`
-/

namespace A252091.P6155746559770536375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P6155746559770536375

namespace A252091

/-- `p?[A154115(n+1)-31]` -/
def P6155746559770536375.Spec : Prop :=
  ∀ n, P6155746559770536375.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P10048753365824137682

`p?[A040976(n+1)-32]`
-/

namespace A252091.P10048753365824137682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P10048753365824137682

namespace A252091

/-- `p?[A040976(n+1)-32]` -/
def P10048753365824137682.Spec : Prop :=
  ∀ n, P10048753365824137682.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P7900375430324737559

`p?[A000040(n+1)-34]`
-/

namespace A252091.P7900375430324737559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7900375430324737559

namespace A252091

/-- `p?[A000040(n+1)-34]` -/
def P7900375430324737559.Spec : Prop :=
  ∀ n, P7900375430324737559.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P7205164502286002245

`p?[A008578(n+1)-34]`
-/

namespace A252091.P7205164502286002245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7205164502286002245

namespace A252091

/-- `p?[A008578(n+1)-34]` -/
def P7205164502286002245.Spec : Prop :=
  ∀ n, P7205164502286002245.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P12225960060281237690

`p?[A093515(n+1)-34]`
-/

namespace A252091.P12225960060281237690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P12225960060281237690

namespace A252091

/-- `p?[A093515(n+1)-34]` -/
def P12225960060281237690.Spec : Prop :=
  ∀ n, P12225960060281237690.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P1364299502012462535

`p?[A008864(n+1)-35]`
-/

namespace A252091.P1364299502012462535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P1364299502012462535

namespace A252091

/-- `p?[A008864(n+1)-35]` -/
def P1364299502012462535.Spec : Prop :=
  ∀ n, P1364299502012462535.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P14335895212087339391

`p?[A000430(n+1)-34]`
-/

namespace A252091.P14335895212087339391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P14335895212087339391

namespace A252091

/-- `p?[A000430(n+1)-34]` -/
def P14335895212087339391.Spec : Prop :=
  ∀ n, P14335895212087339391.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P8236163805479880945

`record[p?[and(n, A006530(n+1))-33]]`
-/

namespace A252091.P8236163805479880945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A006530 (n + 1)) - 33

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252091.P8236163805479880945

namespace A252091

/-- `record[p?[and(n, A006530(n+1))-33]]` -/
def P8236163805479880945.Spec : Prop :=
  ∀ n, P8236163805479880945.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P7828869941816426932

`p?[A085118(n+1)-34]`
-/

namespace A252091.P7828869941816426932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7828869941816426932

namespace A252091

/-- `p?[A085118(n+1)-34]` -/
def P7828869941816426932.Spec : Prop :=
  ∀ n, P7828869941816426932.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P6737396911306569370

`record[p?[A014963(n+1)+34]-34]`
-/

namespace A252091.P6737396911306569370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) + 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252091.P6737396911306569370

namespace A252091

/-- `record[p?[A014963(n+1)+34]-34]` -/
def P6737396911306569370.Spec : Prop :=
  ∀ n, P6737396911306569370.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P3191238334222366457

`p?[A023476(p?[2*n+1])]`
-/

namespace A252091.P3191238334222366457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P3191238334222366457

namespace A252091

/-- `p?[A023476(p?[2*n+1])]` -/
def P3191238334222366457.Spec : Prop :=
  ∀ n, P3191238334222366457.a n = A252091 (n + 1)

theorem P3191238334222366457.correct : P3191238334222366457.Spec := by
  intro n
  simp only [A252091, Nat.add_sub_cancel, A252091.P3191238334222366457.f2, A252091.P3191238334222366457.f1, A252091.P3191238334222366457.a, A252091.P17698577421013009874.f2, A252091.P17698577421013009874.f1, A252091.P17698577421013009874.a, A023476, A023476.P1868753708794674298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252091

/-! ## A252091.P10470300245360061930

`p?[A023476(A000040(n+1))]`
-/

namespace A252091.P10470300245360061930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P10470300245360061930

namespace A252091

/-- `p?[A023476(A000040(n+1))]` -/
def P10470300245360061930.Spec : Prop :=
  ∀ n, P10470300245360061930.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P9450807130536897361

`p?[A023478(A000040(n+1)+2)]`
-/

namespace A252091.P9450807130536897361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P9450807130536897361

namespace A252091

/-- `p?[A023478(A000040(n+1)+2)]` -/
def P9450807130536897361.Spec : Prop :=
  ∀ n, P9450807130536897361.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P89701559991200618

`p?[A023478(A006005(n+1)+2)]`
-/

namespace A252091.P89701559991200618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A006005 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P89701559991200618

namespace A252091

/-- `p?[A023478(A006005(n+1)+2)]` -/
def P89701559991200618.Spec : Prop :=
  ∀ n, P89701559991200618.a n = A252091 (n + 1)

end A252091

/-!
# A252094: First member of a pair (A,B) to define the n-th Zeisel number, cf. A051015.

The programs for A252094, there is no canonical definition to state claims against.
-/

/-! ## A252094.P3679319092021437033

`A020639(A051015(n+1))-A252095(n+1)`
-/

namespace A252094.P3679319092021437033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051015 (n + 1)).toNat - A252095 (n + 1)

end

end A252094.P3679319092021437033

/-!
# A252095: Second member of a pair (A,B) to define the n-th Zeisel number, cf. A051015.

The programs for A252095, there is no canonical definition to state claims against.
-/

/-! ## A252095.P12868695551167008051

`A020639(A051015(n+1))-A252094(n+1)`
-/

namespace A252095.P12868695551167008051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051015 (n + 1)).toNat - A252094 (n + 1)

end

end A252095.P12868695551167008051

/-!
# A252096: Largest prime divisor of n^2+1 - smallest prime divisor of n^2+1.

The programs for A252096, there is no canonical definition to state claims against.
-/

/-! ## A252096.P8198981350374101646

`A014442(n+1)-A089120(n+1)`
-/

namespace A252096.P8198981350374101646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A089120 (n + 1)

end

end A252096.P8198981350374101646

/-! ## A252096.P4283982728539417367

`A014442(n+1)-A014442(A247339(n+1))`
-/

namespace A252096.P4283982728539417367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A014442 (A247339 (n + 1)).toNat

end

end A252096.P4283982728539417367

/-! ## A252096.P17644469243164854310

`A250069(n+1)-A250069(A247339(n+1))`
-/

namespace A252096.P17644469243164854310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1) - A250069 (A247339 (n + 1)).toNat

end

end A252096.P17644469243164854310

/-! ## A252096.P10777767549817501723

`A002522(n+1)/A248516(n+1)-A089120(n+1)`
-/

namespace A252096.P10777767549817501723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A248516 (n + 1) : ℚ) - (A089120 (n + 1) : ℚ)

end

end A252096.P10777767549817501723

/-! ## A252096.P74252962315552405

`A006530((n+1)²+1)-A089120(n+1)`
-/

namespace A252096.P74252962315552405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1) - A089120 (n + 1)

end

end A252096.P74252962315552405

/-! ## A252096.P348416980123167863

`A006530(1+(n+1)²)-A020639(1+(1+n)²)`
-/

namespace A252096.P348416980123167863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + (n + 1) ^ 2) - A020639 (1 + (1 + n) ^ 2)

end

end A252096.P348416980123167863

/-! ## A252096.P15267428322600120457

`A014442(n+1)-A020639(A014442(n+1)*A248516(n+1))`
-/

namespace A252096.P15267428322600120457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A020639 (A014442 (n + 1) * A248516 (n + 1)).toNat

end

end A252096.P15267428322600120457

/-! ## A252096.P2027015147542161587

`A100574(∏{p}[1+(n+1)², #])`
-/

namespace A252096.P2027015147542161587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A252096.P2027015147542161587

/-! ## A252096.P11884923112010085467

`A046665((n+1)²+1)`
-/

namespace A252096.P11884923112010085467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 ((n + 1) ^ 2 + 1)

end

end A252096.P11884923112010085467

/-! ## A252096.P6236762668355067742

`A085393((n+2)²+n²)`
-/

namespace A252096.P6236762668355067742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 ((n + 2) ^ 2 + n ^ 2)

end

end A252096.P6236762668355067742

/-!
# A252097: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252097, there is no canonical definition to state claims against.
-/

/-! ## A252097.P14661009049059373326

`A252105((n+1)²+n²)`
-/

namespace A252097.P14661009049059373326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 ((n + 1) ^ 2 + n ^ 2)

end

end A252097.P14661009049059373326

/-! ## A252097.P12884150105056622309

`record[A003982(n)*A252105(n+1)]`
-/

namespace A252097.P12884150105056622309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252097.P12884150105056622309

/-! ## A252097.P15312776071709169850

`record[gcd(A049581(n), A252105(n+1))]`
-/

namespace A252097.P15312776071709169850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252105 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252097.P15312776071709169850

/-! ## A252097.P4328285740567052349

`record[A010052(2*n+1)*A252105(n+1)]`
-/

namespace A252097.P4328285740567052349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A252105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252097.P4328285740567052349

/-!
# A252098: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252098, there is no canonical definition to state claims against.
-/

/-! ## A252098.P12384452920280570109

`A252105(∑[n]+1)`
-/

namespace A252098.P12384452920280570109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252098.P12384452920280570109

/-! ## A252098.P18128194030969728766

`record[A010054(n)*A252105(n+1)]`
-/

namespace A252098.P18128194030969728766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P18128194030969728766

/-! ## A252098.P7078298945911320096

`record[root(A252105(n+1), A008288(n))]`
-/

namespace A252098.P7078298945911320096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252105 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P7078298945911320096

/-! ## A252098.P9441247695777526503

`record[gcd(A004197(n), A252105(n+1))]`
-/

namespace A252098.P9441247695777526503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A252105 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P9441247695777526503

/-! ## A252098.P17122677047394700835

`record[A252105(n+1)/A008292(n+1)]`
-/

namespace A252098.P17122677047394700835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252105 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P17122677047394700835

/-!
# A252099: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252099, there is no canonical definition to state claims against.
-/

/-! ## A252099.P7511056638116399963

`A252105(∑[n+1]+2)`
-/

namespace A252099.P7511056638116399963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252099.P7511056638116399963

/-! ## A252099.P11820017158399297344

`record[A252105(A133263(abs(1-n)))]`
-/

namespace A252099.P11820017158399297344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252099.P11820017158399297344

/-! ## A252099.P12530412457567041145

`record[A010054(n)*A252105(n+2)]`
-/

namespace A252099.P12530412457567041145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252099.P12530412457567041145

