import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A057200: Numbers k such that 2^k + 17 is prime.

The programs for A057200, there is no canonical definition to state claims against.
-/

/-! ## A057200.P17623115606698710312

`eq[A082303(A056206(n)), A113679(n)]`
-/

namespace A057200.P17623115606698710312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 (A056206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057200.P17623115606698710312

/-! ## A057200.P3890878048792191332

`eq[A082303(A037035(n)), A266794(n)]`
-/

namespace A057200.P3890878048792191332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 (A037035 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057200.P3890878048792191332

/-!
# A057201: Numbers k such that 2^k + 21 is prime.

The programs for A057201, there is no canonical definition to state claims against.
-/

/-! ## A057201.P4597944395372555020

`log2(A156983(n+1)-21)`
-/

namespace A057201.P4597944395372555020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A156983 (n + 1) - 21 : ℝ)

end

end A057201.P4597944395372555020

/-!
# A057202: Numbers n such that 2^n - 21 is prime.

The programs for A057202, there is no canonical definition to state claims against.
-/

/-! ## A057202.P4400049387760750958

`∪[A096820(n+1), A330929(n+1)]`
-/

namespace A057202.P4400049387760750958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057202.P4400049387760750958

/-! ## A057202.P12440021551305946035

`∪[A096820(n+1), A330930(n+1)]`
-/

namespace A057202.P12440021551305946035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057202.P12440021551305946035

/-! ## A057202.P2818701610748539248

`∪[A096820(n+1), A331561(n+1)]`
-/

namespace A057202.P2818701610748539248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057202.P2818701610748539248

/-! ## A057202.P17349227568008048411

`∪[A096820(n+1), A377273(n+1)]`
-/

namespace A057202.P17349227568008048411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057202.P17349227568008048411

/-!
# A057203: Numbers k such that 2^k + 23 is prime.

The programs for A057203, there is no canonical definition to state claims against.
-/

/-! ## A057203.P16735974843259360508

`A365140(A058681(n)+A000041(n+2))`
-/

namespace A057203.P16735974843259360508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365140 (A058681 n + A000041 (n + 2)).toNat

end

end A057203.P16735974843259360508

/-!
# A057204: Primes congruent to 1 mod 6 generated recursively. Initial prime is 7. The next term is p(n) = Min_{p is prime; p divides 4Q^2+3; p mod 6 = 1}, where Q is the product of previous entries of the sequence.

The programs for A057204, there is no canonical definition to state claims against.
-/

/-! ## A057204.P424123053190190877

`A124988(n+1)%Δ[A057206(2*n+3)]`
-/

namespace A057204.P424123053190190877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057206 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124988 (n + 1)) (f1 (n + 1) - f1 n)

end

end A057204.P424123053190190877

/-! ## A057204.P3064756897791038933

`A124988(n+1)^A007318(A026021(n))`
-/

namespace A057204.P3064756897791038933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124988 (n + 1) : ℚ) ^ (A007318 (A026021 n).toNat : ℤ)

end

end A057204.P3064756897791038933

/-!
# A057205: Primes congruent to 3 modulo 4 generated recursively: a(n) = Min_{p, prime; p mod 4 = 3; p|4Q-1}, where Q is the product of all previous terms in the sequence. The initial term is 3.

The programs for A057205, there is no canonical definition to state claims against.
-/

/-! ## A057205.P14359138564192681613

`A000010(a(n-1))+a(n-1)²` with `a(0)=3`
-/

namespace A057205.P14359138564192681613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000010 (a (n - 1)).toNat + a (n - 1) ^ 2

end

end A057205.P14359138564192681613

/-!
# A057209: n!^n *sum_{k=1 to n}[1/k^k].

The programs for A057209, there is no canonical definition to state claims against.
-/

/-! ## A057209.P3987533459695257063

`A000178(n)*A279017(n+1)`
-/

namespace A057209.P3987533459695257063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A279017 (n + 1)

end

end A057209.P3987533459695257063

/-!
# A057211: Alternating runs of ones and zeros, where the n-th run has length n.

The programs for A057211, the canonical program `A057211.P13662060525465798747` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057211 has offset 1).

The definition of A057211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057211.P17446103450616215704

`1-A057212(n+1)`
-/

namespace A057211.P17446103450616215704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057212 (n + 1)

end

end A057211.P17446103450616215704

namespace A057211

/-- `1-A057212(n+1)` -/
def P17446103450616215704.Spec : Prop :=
  ∀ n, P17446103450616215704.a n = A057211 (n + 1)

theorem P17446103450616215704.correct : P17446103450616215704.Spec := by
  intro n
  simp only [A057211, Nat.add_sub_cancel, A057211.P17446103450616215704.a, A057211.P13662060525465798747.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, A057212, A057212.P15780615681694366480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057211

/-! ## A057211.P11634659028400385867

`(1-(-1)^A002024(n+1))/2`
-/

namespace A057211.P11634659028400385867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1 : ℚ) ^ (A002024 (n + 1) : ℤ)) / 2

end

end A057211.P11634659028400385867

namespace A057211

/-- `(1-(-1)^A002024(n+1))/2` -/
def P11634659028400385867.Spec : Prop :=
  ∀ n, P11634659028400385867.a n = (A057211 (n + 1) : ℚ)

end A057211

/-! ## A057211.P13662060525465798747

`A000035(A002024(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A057211

/-- `A000035(A002024(n+1))` -/
def P13662060525465798747.Spec : Prop :=
  ∀ n, P13662060525465798747.a n = A057211 (n + 1)

theorem P13662060525465798747.correct : P13662060525465798747.Spec := by
  intro n
  simp only [A057211, Nat.add_sub_cancel]

end A057211

/-! ## A057211.P15600801547122408605

`∑[char[∑[n]]]%2`
-/

namespace A057211.P15600801547122408605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A057211.P15600801547122408605

namespace A057211

/-- `∑[char[∑[n]]]%2` -/
def P15600801547122408605.Spec : Prop :=
  ∀ n, (P15600801547122408605.a n : ℤ) = A057211 (n + 1)

end A057211

/-! ## A057211.P5887287438415184788

`and(1, ∑[char[∑[n]]])`
-/

namespace A057211.P5887287438415184788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057211.P5887287438415184788

namespace A057211

/-- `and(1, ∑[char[∑[n]]])` -/
def P5887287438415184788.Spec : Prop :=
  ∀ n, (P5887287438415184788.a n : ℤ) = A057211 (n + 1)

end A057211

/-! ## A057211.P8310503245234265577

`2-gcd(2, ∑[char[∑[n]]])`
-/

namespace A057211.P8310503245234265577
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A057211.P8310503245234265577

namespace A057211

/-- `2-gcd(2, ∑[char[∑[n]]])` -/
def P8310503245234265577.Spec : Prop :=
  ∀ n, P8310503245234265577.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P13825109469262090918

`or(∑[char[∑[n]]], -2)+2`
-/

namespace A057211.P13825109469262090918
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2) + 2

end

end A057211.P13825109469262090918

namespace A057211

/-- `or(∑[char[∑[n]]], -2)+2` -/
def P13825109469262090918.Spec : Prop :=
  ∀ n, P13825109469262090918.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P14694186702872908093

`1-(comp[∑[n]]+n)%2`
-/

namespace A057211.P14694186702872908093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2 : ℕ) : ℤ)

end

end A057211.P14694186702872908093

namespace A057211

/-- `1-(comp[∑[n]]+n)%2` -/
def P14694186702872908093.Spec : Prop :=
  ∀ n, P14694186702872908093.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P5575673601621203536

`1-and(1, comp[∑[n]]+n)`
-/

namespace A057211.P5575673601621203536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ)

end

end A057211.P5575673601621203536

namespace A057211

/-- `1-and(1, comp[∑[n]]+n)` -/
def P5575673601621203536.Spec : Prop :=
  ∀ n, P5575673601621203536.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P14230254113361412174

`xor(a(n-1), char[∑[n]])` with `a(0)=1`
-/

namespace A057211.P14230254113361412174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A057211.P14230254113361412174

namespace A057211

/-- `xor(a(n-1), char[∑[n]])` -/
def P14230254113361412174.Spec : Prop :=
  ∀ n, (P14230254113361412174.a n : ℤ) = A057211 (n + 1)

end A057211

/-! ## A057211.P17844766185098167910

`(round(sqrt(2*n+1))%2)²`
-/

namespace A057211.P17844766185098167910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) 2 ^ 2

end

end A057211.P17844766185098167910

namespace A057211

/-- `(round(sqrt(2*n+1))%2)²` -/
def P17844766185098167910.Spec : Prop :=
  ∀ n, P17844766185098167910.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P8641472158635680695

`and(1, round(sqrt(2*n+1)))²`
-/

namespace A057211.P8641472158635680695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) ^ 2

end

end A057211.P8641472158635680695

namespace A057211

/-- `and(1, round(sqrt(2*n+1)))²` -/
def P8641472158635680695.Spec : Prop :=
  ∀ n, P8641472158635680695.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P16273780930403480077

`sqrt(and(1, round(sqrt(2*n+1))))`
-/

namespace A057211.P16273780930403480077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) : ℝ)

end

end A057211.P16273780930403480077

namespace A057211

/-- `sqrt(and(1, round(sqrt(2*n+1))))` -/
def P16273780930403480077.Spec : Prop :=
  ∀ n, P16273780930403480077.a n = (A057211 (n + 1) : ℝ)

end A057211

/-! ## A057211.P5695733069115503468

`(a(n-1)-char[∑[n]])²` with `a(0)=1`
-/

namespace A057211.P5695733069115503468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A057211.P5695733069115503468

namespace A057211

/-- `(a(n-1)-char[∑[n]])²` -/
def P5695733069115503468.Spec : Prop :=
  ∀ n, P5695733069115503468.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P720426519949530046

`-(round(-sqrt(2*n+1))%2)`
-/

namespace A057211.P720426519949530046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (SequenceMachineLib.roundAway (-Real.sqrt (2 * n + 1 : ℝ))) 2

end

end A057211.P720426519949530046

namespace A057211

/-- `-(round(-sqrt(2*n+1))%2)` -/
def P720426519949530046.Spec : Prop :=
  ∀ n, P720426519949530046.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P51412547148405589

`(char[a(n-1)+n+1]-a(n-1))²` with `a(0)=1`
-/

namespace A057211.P51412547148405589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)) ^ 2

end

end A057211.P51412547148405589

namespace A057211

/-- `(char[a(n-1)+n+1]-a(n-1))²` -/
def P51412547148405589.Spec : Prop :=
  ∀ n, P51412547148405589.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P11782555377357999886

`∑[A197870(n)]`
-/

namespace A057211.P11782555377357999886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057211.P11782555377357999886

namespace A057211

/-- `∑[A197870(n)]` -/
def P11782555377357999886.Spec : Prop :=
  ∀ n, P11782555377357999886.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P17650727352664018967

`char[A161983(n)]`
-/

namespace A057211.P17650727352664018967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A057211.P17650727352664018967

namespace A057211

/-- `char[A161983(n)]` -/
def P17650727352664018967.Spec : Prop :=
  ∀ n, (P17650727352664018967.a n : ℤ) = A057211 (n + 1)

end A057211

/-! ## A057211.P5064312360246712529

`abs(∑[A106459(n)])`
-/

namespace A057211.P5064312360246712529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A057211.P5064312360246712529

namespace A057211

/-- `abs(∑[A106459(n)])` -/
def P5064312360246712529.Spec : Prop :=
  ∀ n, P5064312360246712529.a n = A057211 (n + 1)

end A057211

/-! ## A057211.P2870549084901680946

`abs(∑[A143433(n)])`
-/

namespace A057211.P2870549084901680946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A057211.P2870549084901680946

namespace A057211

/-- `abs(∑[A143433(n)])` -/
def P2870549084901680946.Spec : Prop :=
  ∀ n, P2870549084901680946.a n = A057211 (n + 1)

end A057211

/-!
# A057212: n-th run has length n.

The programs for A057212, the canonical program `A057212.P15780615681694366480` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057212 has offset 1).

The definition of A057212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057212.P15780615681694366480

`1-A057211(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057212

/-- `1-A057211(n+1)` -/
def P15780615681694366480.Spec : Prop :=
  ∀ n, P15780615681694366480.a n = A057212 (n + 1)

theorem P15780615681694366480.correct : P15780615681694366480.Spec := by
  intro n
  simp only [A057212, Nat.add_sub_cancel]

end A057212

/-! ## A057212.P9532009534249688563

`(1+(-1)^A002024(n+1))/2`
-/

namespace A057212.P9532009534249688563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℚ) ^ (A002024 (n + 1) : ℤ)) / 2

end

end A057212.P9532009534249688563

namespace A057212

/-- `(1+(-1)^A002024(n+1))/2` -/
def P9532009534249688563.Spec : Prop :=
  ∀ n, P9532009534249688563.a n = (A057212 (n + 1) : ℚ)

end A057212

/-! ## A057212.P8971473193598018992

`(comp[∑[n]]+n)%2`
-/

namespace A057212.P8971473193598018992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2

end

end A057212.P8971473193598018992

namespace A057212

/-- `(comp[∑[n]]+n)%2` -/
def P8971473193598018992.Spec : Prop :=
  ∀ n, (P8971473193598018992.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P17176989808152318386

`and(1, comp[∑[n]]+n)`
-/

namespace A057212.P17176989808152318386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A057212.P17176989808152318386

namespace A057212

/-- `and(1, comp[∑[n]]+n)` -/
def P17176989808152318386.Spec : Prop :=
  ∀ n, (P17176989808152318386.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P16573078589952383234

`log2(gcd(2, ∑[char[∑[n]]]))`
-/

namespace A057212.P16573078589952383234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A057212.P16573078589952383234

namespace A057212

/-- `log2(gcd(2, ∑[char[∑[n]]]))` -/
def P16573078589952383234.Spec : Prop :=
  ∀ n, P16573078589952383234.a n = (A057212 (n + 1) : ℝ)

end A057212

/-! ## A057212.P8530193471117056130

`1-∑[char[∑[n]]]%2`
-/

namespace A057212.P8530193471117056130
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A057212.P8530193471117056130

namespace A057212

/-- `1-∑[char[∑[n]]]%2` -/
def P8530193471117056130.Spec : Prop :=
  ∀ n, P8530193471117056130.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P16006277917785718652

`1-and(1, ∑[char[∑[n]]])`
-/

namespace A057212.P16006277917785718652
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A057212.P16006277917785718652

namespace A057212

/-- `1-and(1, ∑[char[∑[n]]])` -/
def P16006277917785718652.Spec : Prop :=
  ∀ n, P16006277917785718652.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P648307384651675465

`((n-comp[∑[n]])%2)²`
-/

namespace A057212.P648307384651675465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 2 ^ 2

end

end A057212.P648307384651675465

namespace A057212

/-- `((n-comp[∑[n]])%2)²` -/
def P648307384651675465.Spec : Prop :=
  ∀ n, P648307384651675465.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P3639632446510615491

`and(1, comp[∑[n]]-n)²`
-/

namespace A057212.P3639632446510615491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ^ 2

end

end A057212.P3639632446510615491

namespace A057212

/-- `and(1, comp[∑[n]]-n)²` -/
def P3639632446510615491.Spec : Prop :=
  ∀ n, P3639632446510615491.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P18128126063774505230

`xor(a(n-1), char[∑[n]])` with `a(0)=0`
-/

namespace A057212.P18128126063774505230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A057212.P18128126063774505230

namespace A057212

/-- `xor(a(n-1), char[∑[n]])` -/
def P18128126063774505230.Spec : Prop :=
  ∀ n, (P18128126063774505230.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P3980870850954368818

`char[round(sqrt(n+1))²+n]`
-/

namespace A057212.P3980870850954368818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A057212.P3980870850954368818

namespace A057212

/-- `char[round(sqrt(n+1))²+n]` -/
def P3980870850954368818.Spec : Prop :=
  ∀ n, (P3980870850954368818.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P9191397937008766416

`(∑[char[∑[n+1]]]%2)^3`
-/

namespace A057212.P9191397937008766416
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) ^ 3

end

end A057212.P9191397937008766416

namespace A057212

/-- `(∑[char[∑[n+1]]]%2)^3` -/
def P9191397937008766416.Spec : Prop :=
  ∀ n, (P9191397937008766416.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P11632451283105230488

`and(1, ∑[char[∑[n+1]]])^3`
-/

namespace A057212.P11632451283105230488
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A057212.P11632451283105230488

namespace A057212

/-- `and(1, ∑[char[∑[n+1]]])^3` -/
def P11632451283105230488.Spec : Prop :=
  ∀ n, (P11632451283105230488.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P3984180294238151215

`(a(n-1)-char[∑[n]])²` with `a(0)=0`
-/

namespace A057212.P3984180294238151215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A057212.P3984180294238151215

namespace A057212

/-- `(a(n-1)-char[∑[n]])²` -/
def P3984180294238151215.Spec : Prop :=
  ∀ n, P3984180294238151215.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P13313471222674722053

`and(1, ∑[char[∑[n+1]]])²²`
-/

namespace A057212.P13313471222674722053
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A057212.P13313471222674722053

namespace A057212

/-- `and(1, ∑[char[∑[n+1]]])²²` -/
def P13313471222674722053.Spec : Prop :=
  ∀ n, (P13313471222674722053.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P16219924465873416803

`val(∑[char[∑[n+1]]]²+1, 2)`
-/

namespace A057212.P16219924465873416803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) 2

end

end A057212.P16219924465873416803

namespace A057212

/-- `val(∑[char[∑[n+1]]]²+1, 2)` -/
def P16219924465873416803.Spec : Prop :=
  ∀ n, (P16219924465873416803.a n : ℤ) = A057212 (n + 1)

end A057212

/-! ## A057212.P1026927826545087203

`1-∑[A197870(n)]`
-/

namespace A057212.P1026927826545087203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057212.P1026927826545087203

namespace A057212

/-- `1-∑[A197870(n)]` -/
def P1026927826545087203.Spec : Prop :=
  ∀ n, P1026927826545087203.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P397801925083633828

`1-char[A161983(n)]`
-/

namespace A057212.P397801925083633828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A057212.P397801925083633828

namespace A057212

/-- `1-char[A161983(n)]` -/
def P397801925083633828.Spec : Prop :=
  ∀ n, P397801925083633828.a n = A057212 (n + 1)

end A057212

/-! ## A057212.P18128311801696358988

`A201208(n+1)-1`
-/

namespace A057212.P18128311801696358988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1) - 1

end

end A057212.P18128311801696358988

namespace A057212

/-- `A201208(n+1)-1` -/
def P18128311801696358988.Spec : Prop :=
  ∀ n, P18128311801696358988.a n = A057212 (n + 1)

theorem P18128311801696358988.correct : P18128311801696358988.Spec := by
  intro n
  simp only [A057212, Nat.add_sub_cancel, A057212.P18128311801696358988.a, A057212.P15780615681694366480.a, A057211, A057211.P13662060525465798747.a, A201208, A201208.P11775252334027749297.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057212

/-! ## A057212.P11684935945130346096

`gcd(2, A127948(n))-1`
-/

namespace A057212.P11684935945130346096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A127948 n) : ℤ) - 1

end

end A057212.P11684935945130346096

namespace A057212

/-- `gcd(2, A127948(n))-1` -/
def P11684935945130346096.Spec : Prop :=
  ∀ n, P11684935945130346096.a n = A057212 (n + 1)

end A057212

/-!
# A057215: [1->01, 2->10, 3->01]-transform of 3-symbol Thue-Morse A026600.

The programs for A057215, the canonical program `A057215.P5065651634132639339` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057215 has offset 0).

The definition of A057215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057215.P6827991012374197707

`log2(A026605(n+1))`
-/

namespace A057215.P6827991012374197707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A026605 (n + 1) : ℝ)

end

end A057215.P6827991012374197707

namespace A057215

/-- `log2(A026605(n+1))` -/
def P6827991012374197707.Spec : Prop :=
  ∀ n, P6827991012374197707.a n = (A057215 n : ℝ)

end A057215

/-! ## A057215.P5065651634132639339

`A026605(A000027(n+1))-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057215

/-- `A026605(A000027(n+1))-1` -/
def P5065651634132639339.Spec : Prop :=
  ∀ n, P5065651634132639339.a n = A057215 n

theorem P5065651634132639339.correct : P5065651634132639339.Spec := by
  intro n
  simp only [A057215]

end A057215

/-! ## A057215.P7146668543786761182

`A000328(n)%A026605(n+1)`
-/

namespace A057215.P7146668543786761182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A026605 (n + 1))

end

end A057215.P7146668543786761182

namespace A057215

/-- `A000328(n)%A026605(n+1)` -/
def P7146668543786761182.Spec : Prop :=
  ∀ n, P7146668543786761182.a n = A057215 n

end A057215

/-! ## A057215.P10060671671006193739

`A000466(n)%A026605(n+1)`
-/

namespace A057215.P10060671671006193739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A026605 (n + 1))

end

end A057215.P10060671671006193739

namespace A057215

/-- `A000466(n)%A026605(n+1)` -/
def P10060671671006193739.Spec : Prop :=
  ∀ n, P10060671671006193739.a n = A057215 n

end A057215

/-! ## A057215.P5098977376600062950

`A000605(n)%A026605(n+1)`
-/

namespace A057215.P5098977376600062950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A026605 (n + 1))

end

end A057215.P5098977376600062950

namespace A057215

/-- `A000605(n)%A026605(n+1)` -/
def P5098977376600062950.Spec : Prop :=
  ∀ n, P5098977376600062950.a n = A057215 n

end A057215

/-! ## A057215.P17663456121268833596

`A001148(n)%A026605(n+1)`
-/

namespace A057215.P17663456121268833596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A026605 (n + 1))

end

end A057215.P17663456121268833596

namespace A057215

/-- `A001148(n)%A026605(n+1)` -/
def P17663456121268833596.Spec : Prop :=
  ∀ n, P17663456121268833596.a n = A057215 n

end A057215

/-! ## A057215.P1541254105886761043

`A001218(n)%A026605(n+1)`
-/

namespace A057215.P1541254105886761043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A026605 (n + 1))

end

end A057215.P1541254105886761043

namespace A057215

/-- `A001218(n)%A026605(n+1)` -/
def P1541254105886761043.Spec : Prop :=
  ∀ n, P1541254105886761043.a n = A057215 n

end A057215

/-! ## A057215.P3045622289155866394

`A001513(n)%A026605(n+1)`
-/

namespace A057215.P3045622289155866394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A026605 (n + 1))

end

end A057215.P3045622289155866394

namespace A057215

/-- `A001513(n)%A026605(n+1)` -/
def P3045622289155866394.Spec : Prop :=
  ∀ n, P3045622289155866394.a n = A057215 n

end A057215

/-! ## A057215.P7835758365424510458

`A001520(n)%A026605(n+1)`
-/

namespace A057215.P7835758365424510458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A026605 (n + 1))

end

end A057215.P7835758365424510458

namespace A057215

/-- `A001520(n)%A026605(n+1)` -/
def P7835758365424510458.Spec : Prop :=
  ∀ n, P7835758365424510458.a n = A057215 n

end A057215

/-! ## A057215.P16260806674458302524

`A001533(n)%A026605(n+1)`
-/

namespace A057215.P16260806674458302524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A026605 (n + 1))

end

end A057215.P16260806674458302524

namespace A057215

/-- `A001533(n)%A026605(n+1)` -/
def P16260806674458302524.Spec : Prop :=
  ∀ n, P16260806674458302524.a n = A057215 n

end A057215

/-! ## A057215.P11528896033958833136

`A001535(n)%A026605(n+1)`
-/

namespace A057215.P11528896033958833136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A026605 (n + 1))

end

end A057215.P11528896033958833136

namespace A057215

/-- `A001535(n)%A026605(n+1)` -/
def P11528896033958833136.Spec : Prop :=
  ∀ n, P11528896033958833136.a n = A057215 n

end A057215

/-! ## A057215.P17761956549039244266

`A001538(n)%A026605(n+1)`
-/

namespace A057215.P17761956549039244266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A026605 (n + 1))

end

end A057215.P17761956549039244266

namespace A057215

/-- `A001538(n)%A026605(n+1)` -/
def P17761956549039244266.Spec : Prop :=
  ∀ n, P17761956549039244266.a n = A057215 n

end A057215

/-! ## A057215.P5642549828879609841

`A008379(n)%A026605(n+1)`
-/

namespace A057215.P5642549828879609841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A026605 (n + 1))

end

end A057215.P5642549828879609841

namespace A057215

/-- `A008379(n)%A026605(n+1)` -/
def P5642549828879609841.Spec : Prop :=
  ∀ n, P5642549828879609841.a n = A057215 n

end A057215

/-! ## A057215.P14344065275808987649

`A016760(n)%A026605(n+1)`
-/

namespace A057215.P14344065275808987649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A026605 (n + 1))

end

end A057215.P14344065275808987649

namespace A057215

/-- `A016760(n)%A026605(n+1)` -/
def P14344065275808987649.Spec : Prop :=
  ∀ n, P14344065275808987649.a n = A057215 n

end A057215

/-! ## A057215.P11338802020967509153

`A016761(n)%A026605(n+1)`
-/

namespace A057215.P11338802020967509153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A026605 (n + 1))

end

end A057215.P11338802020967509153

namespace A057215

/-- `A016761(n)%A026605(n+1)` -/
def P11338802020967509153.Spec : Prop :=
  ∀ n, P11338802020967509153.a n = A057215 n

end A057215

/-! ## A057215.P4263281072818923368

`A016819(n)%A026605(n+1)`
-/

namespace A057215.P4263281072818923368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A026605 (n + 1))

end

end A057215.P4263281072818923368

namespace A057215

/-- `A016819(n)%A026605(n+1)` -/
def P4263281072818923368.Spec : Prop :=
  ∀ n, P4263281072818923368.a n = A057215 n

end A057215

/-! ## A057215.P13985431061337898973

`A016820(n)%A026605(n+1)`
-/

namespace A057215.P13985431061337898973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016820 n) (A026605 (n + 1))

end

end A057215.P13985431061337898973

namespace A057215

/-- `A016820(n)%A026605(n+1)` -/
def P13985431061337898973.Spec : Prop :=
  ∀ n, P13985431061337898973.a n = A057215 n

end A057215

/-! ## A057215.P13430984808254787494

`A016843(n)%A026605(n+1)`
-/

namespace A057215.P13430984808254787494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A026605 (n + 1))

end

end A057215.P13430984808254787494

namespace A057215

/-- `A016843(n)%A026605(n+1)` -/
def P13430984808254787494.Spec : Prop :=
  ∀ n, P13430984808254787494.a n = A057215 n

end A057215

/-! ## A057215.P6026216724732204172

`A016927(n)%A026605(n+1)`
-/

namespace A057215.P6026216724732204172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016927 n) (A026605 (n + 1))

end

end A057215.P6026216724732204172

namespace A057215

/-- `A016927(n)%A026605(n+1)` -/
def P6026216724732204172.Spec : Prop :=
  ∀ n, P6026216724732204172.a n = A057215 n

end A057215

/-! ## A057215.P17905427429983789639

`A016951(n)%A026605(n+1)`
-/

namespace A057215.P17905427429983789639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016951 n) (A026605 (n + 1))

end

end A057215.P17905427429983789639

namespace A057215

/-- `A016951(n)%A026605(n+1)` -/
def P17905427429983789639.Spec : Prop :=
  ∀ n, P17905427429983789639.a n = A057215 n

end A057215

/-!
# A057216: To get next term, multiply by 17, add 1 and discard any prime factors < 17.

The programs for A057216, there is no canonical definition to state claims against.
-/

/-! ## A057216.P11495907640771344870

`A057534(A038198(n+1)%A007245(n))`
-/

namespace A057216.P11495907640771344870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057534 (Int.tmod (A038198 (n + 1)) (A007245 n)).toNat

end

end A057216.P11495907640771344870

/-!
# A057217: a(n) = smallest positive integer k such that 1 + n*k! is a prime.

The programs for A057217, there is no canonical definition to state claims against.
-/

/-! ## A057217.P10445760615164359057

`A073127(gcd(A034693(n+1), A091861(n+1)))`
-/

namespace A057217.P10445760615164359057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073127 (Int.gcd (A034693 (n + 1)) (A091861 (n + 1)))

end

end A057217.P10445760615164359057

/-! ## A057217.P13681175112262544178

`A073127(A034693(n+1))+A045698(A289711(n))`
-/

namespace A057217.P13681175112262544178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073127 (A034693 (n + 1)).toNat + A045698 (A289711 n).toNat

end

end A057217.P13681175112262544178

/-! ## A057217.P6284442087835494107

`A318928(A034693(n+1)^A196929(n+1))`
-/

namespace A057217.P6284442087835494107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (SequenceMachineLib.roundAway ((A034693 (n + 1) : ℚ) ^ (A196929 (n + 1) : ℤ))).toNat

end

end A057217.P6284442087835494107

/-! ## A057217.P4542691127112647929

`A322744(A034693(n+1)%A162893(n+1))`
-/

namespace A057217.P4542691127112647929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (Int.tmod (A034693 (n + 1)) (A162893 (n + 1))).toNat

end

end A057217.P4542691127112647929

/-! ## A057217.P6707137878780800060

`A002024(A034693(n+1))%A324943(n+2)`
-/

namespace A057217.P6707137878780800060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A034693 (n + 1)).toNat) (A324943 (n + 2))

end

end A057217.P6707137878780800060

/-!
# A057218: a(n) = least prime of the form n*k! + 1.

The programs for A057218, there is no canonical definition to state claims against.
-/

/-! ## A057218.P3127916249444261094

`(n+1)*A057217(n+1)!+1`
-/

namespace A057218.P3127916249444261094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (A057217 (n + 1)).toNat + 1

end

end A057218.P3127916249444261094

/-! ## A057218.P9276260665600914964

`A151800((n+1)*A057217(n+1)!)`
-/

namespace A057218.P9276260665600914964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1) * Nat.factorial (A057217 (n + 1)).toNat)

end

end A057218.P9276260665600914964

/-! ## A057218.P909026422150463983

`A050921((n+1)*A256106(n))`
-/

namespace A057218.P909026422150463983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 ((n + 1 : ℤ) * A256106 n).toNat

end

end A057218.P909026422150463983

/-! ## A057218.P2409676886152135126

`A050921(lcm(n+1, A256106(n)))`
-/

namespace A057218.P2409676886152135126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (Int.lcm (n + 1 : ℤ) (A256106 n))

end

end A057218.P2409676886152135126

/-! ## A057218.P4710818691834121914

`A050921((n+1)*A057217(n+1))`
-/

namespace A057218.P4710818691834121914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 ((n + 1 : ℤ) * A057217 (n + 1)).toNat

end

end A057218.P4710818691834121914

/-!
# A057219: {e^n}-th prime, where {e^n} is closest integer to e^n, A000227.

The programs for A057219, there is no canonical definition to state claims against.
-/

/-! ## A057219.P4200525510059577094

`A000040(round(exp(n)))`
-/

namespace A057219.P4200525510059577094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A057219.P4200525510059577094

/-! ## A057219.P11628284729933639331

`A006093(round(exp(n)))+1`
-/

namespace A057219.P11628284729933639331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat + 1

end

end A057219.P11628284729933639331

/-! ## A057219.P8963975156710383432

`p?[A000040(A000227(n))]`
-/

namespace A057219.P8963975156710383432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000227 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057219.P8963975156710383432

/-! ## A057219.P4216195054928027224

`A008578(A000227(n)+1)`
-/

namespace A057219.P4216195054928027224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000227 n + 1).toNat

end

end A057219.P4216195054928027224

/-! ## A057219.P3851117672381318989

`A008578(A055876(n+2))`
-/

namespace A057219.P3851117672381318989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055876 (n + 2)).toNat

end

end A057219.P3851117672381318989

/-!
# A057220: Numbers k such that 2^k - 23 is prime.

The programs for A057220, there is no canonical definition to state claims against.
-/

/-! ## A057220.P3137724028511207057

`2*eq[A102426(n), A160941(n+1)]`
-/

namespace A057220.P3137724028511207057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057220.P3137724028511207057

/-! ## A057220.P2192170825331328721

`A005843(eq[A102426(n), A160941(n+1)])`
-/

namespace A057220.P2192170825331328721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A057220.P2192170825331328721

/-! ## A057220.P7383066075758454924

`A318871(n+1)+A288003(A095938(n+1))`
-/

namespace A057220.P7383066075758454924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (n + 1) + A288003 (A095938 (n + 1)).toNat

end

end A057220.P7383066075758454924

/-!
# A057221: Numbers k such that 2^k + 19 is prime.

The programs for A057221, there is no canonical definition to state claims against.
-/

/-! ## A057221.P7896345390670984315

`2*A253774(n+1)`
-/

namespace A057221.P7896345390670984315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253774 (n + 1)

end

end A057221.P7896345390670984315

/-! ## A057221.P11063115137183619999

`lcm(2, A253774(A005496(n)))`
-/

namespace A057221.P11063115137183619999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253774 (A005496 n).toNat)

end

end A057221.P11063115137183619999

/-! ## A057221.P8437932864435031196

`lcm(dr(A001504(n)), A253774(n+1))`
-/

namespace A057221.P8437932864435031196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A001504 n) : ℤ) (A253774 (n + 1))

end

end A057221.P8437932864435031196

/-! ## A057221.P1740184281671282814

`A253774(n+1)+A253774(A005496(n))`
-/

namespace A057221.P1740184281671282814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253774 (n + 1) + A253774 (A005496 n).toNat

end

end A057221.P1740184281671282814

/-! ## A057221.P5625028798868857416

`A253774(n+1)+A253774(A005555(n))`
-/

namespace A057221.P5625028798868857416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253774 (n + 1) + A253774 (A005555 n).toNat

end

end A057221.P5625028798868857416

/-!
# A057222: Number of 4 X n binary matrices with 1 unit column up to row and column permutations.

The programs for A057222, there is no canonical definition to state claims against.
-/

/-! ## A057222.P17279318724694367021

`∑[A057967(∑[n]+n+2)]`
-/

namespace A057222.P17279318724694367021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057967 (∑ j ∈ Finset.range (n + 1), f2 j + n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057222.P17279318724694367021

/-!
# A057223: Number of 4 X n binary matrices without unit columns up to row and column permutations.

The programs for A057223, there is no canonical definition to state claims against.
-/

/-! ## A057223.P15932412621688215544

`∑[∑[A050532(n)]]`
-/

namespace A057223.P15932412621688215544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057223.P15932412621688215544

/-! ## A057223.P2090105113703065901

`∑[∑[A290428(∑[n+5]+5)]]`
-/

namespace A057223.P2090105113703065901
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (∑ j ∈ Finset.range (n + 1), f3 j + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057223.P2090105113703065901

/-! ## A057223.P2479814985037026945

`∑[A057967(∑[n])]`
-/

namespace A057223.P2479814985037026945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057967 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057223.P2479814985037026945

/-!
# A057226: Number of different symbols needed to express n as a Roman numeral.

The programs for A057226, there is no canonical definition to state claims against.
-/

/-! ## A057226.P11643295508335044345

`∑{digits}[A093783(n+1), A108037(#)]`
-/

namespace A057226.P11643295508335044345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A108037 x).sum

end

end A057226.P11643295508335044345

/-!
# A057227: Smallest member of smallest set S(n) of positive integers containing n which satisfies "k is in S, iff 2k-1 is in S, iff 4k is in S".

The programs for A057227, there is no canonical definition to state claims against.
-/

/-! ## A057227.P8614893272294128373

`A346010(A346010(n+1)+2^n-1)`
-/

namespace A057227.P8614893272294128373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (A346010 (n + 1) + ((2 ^ n : ℤ) - 1)).toNat

end

end A057227.P8614893272294128373

/-! ## A057227.P1527245840519434348

`A007913(gcd(n, A091732(2^(n+2)))+1)`
-/

namespace A057227.P1527245840519434348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.gcd (n : ℤ) (A091732 (2 ^ (n + 2))) + 1)

end

end A057227.P1527245840519434348

/-! ## A057227.P13666604181910351993

`A177863(A050412(n²+3))`
-/

namespace A057227.P13666604181910351993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177863 (A050412 (n ^ 2 + 3)).toNat

end

end A057227.P13666604181910351993

/-! ## A057227.P2767412074777966848

`A000123(and(A002487(n), A275252(3*n+5)))`
-/

namespace A057227.P2767412074777966848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (Int.land (A002487 n) (A275252 (3 * n + 5))).toNat

end

end A057227.P2767412074777966848

/-! ## A057227.P9775488996812723653

`gcd(A081607(2*n+1), A319747(A099886(n+1)))`
-/

namespace A057227.P9775488996812723653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081607 (2 * n + 1)) (A319747 (A099886 (n + 1)).toNat)

end

end A057227.P9775488996812723653

/-!
# A057229: a(n) = a*b = x*y with (a-b) = (x+y) = A020882(n) (a>b, a>0, b>0, x>0, y>0), gcd(a, b) = gcd(x, y) = 1.

The programs for A057229, there is no canonical definition to state claims against.
-/

/-! ## A057229.P10317296580988626517

`(A132981(Δ[n²])+A119322(n+1))*A119322(n+1)`
-/

namespace A057229.P10317296580988626517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A119322 (n + 1)) * A119322 (n + 1)

end

end A057229.P10317296580988626517

/-! ## A057229.P4675198680563626309

`A020886(n+1)*A119322(A187829(n+1))`
-/

namespace A057229.P4675198680563626309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1) * A119322 (A187829 (n + 1)).toNat

end

end A057229.P4675198680563626309

/-! ## A057229.P5485509307920396105

`lcm(A020886(A187829(n+1)), A119322(n+1))`
-/

namespace A057229.P5485509307920396105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020886 (A187829 (n + 1)).toNat) (A119322 (n + 1))

end

end A057229.P5485509307920396105

/-! ## A057229.P5747679636481107738

`A081859(n+1)/2*A081872(A187829(n+1))`
-/

namespace A057229.P5747679636481107738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081859 (n + 1) : ℚ) / 2 * (A081872 (A187829 (n + 1)).toNat : ℚ)

end

end A057229.P5747679636481107738

/-! ## A057229.P9779041375120830609

`(A020886(n+1)-A118759(A081804(n+1)))*A020886(n+1)`
-/

namespace A057229.P9779041375120830609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020886 (n + 1) - A118759 (A081804 (n + 1)).toNat) * A020886 (n + 1)

end

end A057229.P9779041375120830609

/-!
# A057232: Numbers k such that k | 10^k + 9^k + 8^k.

The programs for A057232, there is no canonical definition to state claims against.
-/

/-! ## A057232.P10377959834975645181

`eq[A006287(n), A297943(A117358(n+1))]`
-/

namespace A057232.P10377959834975645181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A117358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057232.P10377959834975645181

/-! ## A057232.P12662413082962195559

`eq[A038586(n), A255291(A216601(n+1))]`
-/

namespace A057232.P12662413082962195559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255291 (A216601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057232.P12662413082962195559

/-! ## A057232.P5125246181909805498

`A280963(A152604(n+1))`
-/

namespace A057232.P5125246181909805498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280963 (A152604 (n + 1)).toNat

end

end A057232.P5125246181909805498

/-!
# A057233: Numbers k such that k | 8^k + 7^k + 6^k.

The programs for A057233, there is no canonical definition to state claims against.
-/

/-! ## A057233.P9090639103583963414

`record[gcd(A074577(n), A233583(n+1))]`
-/

namespace A057233.P9090639103583963414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074577 n) (A233583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057233.P9090639103583963414

/-! ## A057233.P17663839396607454596

`eq[A131720(n), A347917(n)]`
-/

namespace A057233.P17663839396607454596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057233.P17663839396607454596

/-! ## A057233.P7707398498709565812

`eq[A131734(n), A347917(n)]`
-/

namespace A057233.P7707398498709565812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057233.P7707398498709565812

/-! ## A057233.P1320061696863341543

`eq[A347917(n)², A129308(n+1)]`
-/

namespace A057233.P1320061696863341543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347917 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057233.P1320061696863341543

/-! ## A057233.P7241563241922922426

`eq[A168570(n+1)², A347917(n)]`
-/

namespace A057233.P7241563241922922426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057233.P7241563241922922426

/-!
# A057234: Numbers n such that n | 7^n + 6^n + 5^n.

The programs for A057234, there is no canonical definition to state claims against.
-/

/-! ## A057234.P15747522529778429080

`eq[A341410(n+1), A341413(n+1)]+1`
-/

namespace A057234.P15747522529778429080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057234.P15747522529778429080

/-! ## A057234.P8602693372958941079

`record[gcd(A028310(n), A074571(n))]`
-/

namespace A057234.P8602693372958941079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A074571 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057234.P8602693372958941079

/-!
# A057235: Numbers n such that n | 6^n + 5^n + 4^n.

The programs for A057235, there is no canonical definition to state claims against.
-/

/-! ## A057235.P2290592720384107895

`A184955(A043320(n+1))+A056741(n+1)`
-/

namespace A057235.P2290592720384107895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A043320 (n + 1)).toNat + A056741 (n + 1)

end

end A057235.P2290592720384107895

/-! ## A057235.P6571492987994841382

`A184955(A181820(n+1))+A056741(n+1)`
-/

namespace A057235.P6571492987994841382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A181820 (n + 1)).toNat + A056741 (n + 1)

end

end A057235.P6571492987994841382

/-!
# A057236: Numbers n such that n | 5^n + 4^n + 3^n.

The programs for A057236, there is no canonical definition to state claims against.
-/

/-! ## A057236.P8887910390592061953

`eq[A096196(n+1), A341411(n+1)]+1`
-/

namespace A057236.P8887910390592061953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057236.P8887910390592061953

/-!
# A057237: Maximum k <= n such that 1, 2, ..., k are all relatively prime to n.

The programs for A057237, there is no canonical definition to state claims against.
-/

/-! ## A057237.P15696957841130648253

`A159475(n+1)%(n+2)`
-/

namespace A057237.P15696957841130648253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159475 (n + 1)) (n + 2 : ℤ)

end

end A057237.P15696957841130648253

/-! ## A057237.P13126970084266496007

`∏{p}[A020639(n+1), #-1]`
-/

namespace A057237.P13126970084266496007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A057237.P13126970084266496007

/-! ## A057237.P15244522948597989521

`∏{p}[A028233(n+1), #-1]`
-/

namespace A057237.P15244522948597989521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A057237.P15244522948597989521

/-! ## A057237.P2394502586319893238

`∏{p}[A068794(n+1), #-1]`
-/

namespace A057237.P2394502586319893238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A057237.P2394502586319893238

/-! ## A057237.P3372810660003157853

`∏{p}[A074828(n+1), #-1]`
-/

namespace A057237.P3372810660003157853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A057237.P3372810660003157853

/-! ## A057237.P7793519383567357645

`∏{p}[A304181(n+1), #-1]`
-/

namespace A057237.P7793519383567357645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A057237.P7793519383567357645

/-! ## A057237.P10888440961271727145

`∏{p}[A323130(n+1), #-1]`
-/

namespace A057237.P10888440961271727145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A057237.P10888440961271727145

/-! ## A057237.P17078853720822565605

`A071182(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A057237.P17078853720822565605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071182 n + a (n - 1)

end

end A057237.P17078853720822565605

/-! ## A057237.P9914654937440417467

`A000010(A020639(n+1))`
-/

namespace A057237.P9914654937440417467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020639 (n + 1)).toNat

end

end A057237.P9914654937440417467

/-! ## A057237.P12670584588046322846

`A049559(A028233(n+1))`
-/

namespace A057237.P12670584588046322846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A028233 (n + 1)).toNat

end

end A057237.P12670584588046322846

/-! ## A057237.P3811956748548901546

`A003958(A074828(n+1))`
-/

namespace A057237.P3811956748548901546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A074828 (n + 1)).toNat

end

end A057237.P3811956748548901546

/-! ## A057237.P5479556610497366520

`A049559(A068794(n+1))`
-/

namespace A057237.P5479556610497366520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A068794 (n + 1)).toNat

end

end A057237.P5479556610497366520

/-! ## A057237.P929030338149595296

`A003972(A117365(n+1))`
-/

namespace A057237.P929030338149595296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A117365 (n + 1)).toNat

end

end A057237.P929030338149595296

/-! ## A057237.P13294379695512442509

`A049559(A304181(n+1))`
-/

namespace A057237.P13294379695512442509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A304181 (n + 1)).toNat

end

end A057237.P13294379695512442509

/-! ## A057237.P6449039094654454602

`A049559(A323130(n+1))`
-/

namespace A057237.P6449039094654454602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A323130 (n + 1)).toNat

end

end A057237.P6449039094654454602

/-! ## A057237.P7898831820344026384

`A000010(A374196(n+1))`
-/

namespace A057237.P7898831820344026384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A374196 (n + 1)).toNat

end

end A057237.P7898831820344026384

/-! ## A057237.P2962491920659397438

`A349128(A117367(n+1))`
-/

namespace A057237.P2962491920659397438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349128 (A117367 (n + 1)).toNat

end

end A057237.P2962491920659397438

/-! ## A057237.P13664247624211759235

`A028310(A020639(n+1)-1)`
-/

namespace A057237.P13664247624211759235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020639 (n + 1) - 1).toNat

end

end A057237.P13664247624211759235

/-! ## A057237.P3935815164874814228

`A020639(A205006(n+1))-1`
-/

namespace A057237.P3935815164874814228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A205006 (n + 1)).toNat - 1

end

end A057237.P3935815164874814228

/-!
# A057238: Numbers k such that k | 4^k + 3^k + 2^k.

The programs for A057238, there is no canonical definition to state claims against.
-/

/-! ## A057238.P17337531169747053567

`record[gcd(1-A341410(n+1), n+1)]`
-/

namespace A057238.P17337531169747053567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A341410 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057238.P17337531169747053567

/-! ## A057238.P16113969998729388937

`record[gcd(n, 5^n+1-3^n)]`
-/

namespace A057238.P16113969998729388937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((5 ^ n : ℤ) + (1 - (3 ^ n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057238.P16113969998729388937

/-! ## A057238.P4455144360953074401

`∪[A018436(2*(n+1)), A018450(A018406(n+1))]`
-/

namespace A057238.P4455144360953074401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018436 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018450 (A018406 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057238.P4455144360953074401

/-!
# A057239: Numbers n such that n | 12^n + 11^n + 10^n + 9^n.

The programs for A057239, there is no canonical definition to state claims against.
-/

/-! ## A057239.P3614415078838469628

`A033676(A008578(n+1)*A014945(n+1))`
-/

namespace A057239.P3614415078838469628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A008578 (n + 1) * A014945 (n + 1)).toNat

end

end A057239.P3614415078838469628

/-! ## A057239.P13147338987473683686

`A033676(A014945(n+1)*A032006(n))`
-/

namespace A057239.P13147338987473683686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A014945 (n + 1) * A032006 n).toNat

end

end A057239.P13147338987473683686

/-! ## A057239.P3249283530165846740

`A033676(A014945(n+1)*A074964(n+1))`
-/

namespace A057239.P3249283530165846740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A014945 (n + 1) * A074964 (n + 1)).toNat

end

end A057239.P3249283530165846740

/-!
# A057240: Numbers k such that k | 11^k + 10^k + 9^k + 8^k.

The programs for A057240, there is no canonical definition to state claims against.
-/

/-! ## A057240.P16381599296354764360

`record[gcd(A238616(n+1), A312466(n))]`
-/

namespace A057240.P16381599296354764360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238616 (n + 1)) (A312466 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057240.P16381599296354764360

/-! ## A057240.P12948522938619051732

`record[A079564(n+1)%A079579(2*(n+2))]`
-/

namespace A057240.P12948522938619051732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079564 (n + 1)) (A079579 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057240.P12948522938619051732

/-!
# A057242: Numbers n such that n | 9^n + 8^n + 7^n + 6^n.

The programs for A057242, there is no canonical definition to state claims against.
-/

/-! ## A057242.P9095410476735132456

`record[A331309(record[A243353(n)])]`
-/

namespace A057242.P9095410476735132456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057242.P9095410476735132456

/-! ## A057242.P17122542703506352156

`∩[A035064(n+1), A057254(n+1)]`
-/

namespace A057242.P17122542703506352156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057242.P17122542703506352156

/-! ## A057242.P14266198019254504921

`record[A005940(n+1)/A118433(A102627(n+1))]`
-/

namespace A057242.P14266198019254504921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A118433 (A102627 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057242.P14266198019254504921

/-! ## A057242.P4700378256293214200

`A324106(lt[A005836(n+3), A059894(3*(n+1))])`
-/

namespace A057242.P4700378256293214200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057242.P4700378256293214200

/-!
# A057243: Numbers k that divide 8^k + 7^k + 6^k + 5^k.

The programs for A057243, there is no canonical definition to state claims against.
-/

/-! ## A057243.P14845262351980114892

`∑[A347273(C(A179016(n), n))]`
-/

namespace A057243.P14845262351980114892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347273 (Nat.choose (A179016 n).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057243.P14845262351980114892

/-! ## A057243.P2401617645566781928

`A084057(n)+A010751(A091870(n))`
-/

namespace A057243.P2401617645566781928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + A010751 (A091870 n).toNat

end

end A057243.P2401617645566781928

/-!
# A057244: Numbers n such that n | 7^n + 6^n + 5^n + 4^n.

The programs for A057244, there is no canonical definition to state claims against.
-/

/-! ## A057244.P16814320967427966390

`eq[A341409(n+1), A341413(n+1)]+1`
-/

namespace A057244.P16814320967427966390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057244.P16814320967427966390

/-!
# A057247: a(n) is the smallest prime of the form 1 + prime(n)*2^m, with m > 0.

The programs for A057247, there is no canonical definition to state claims against.
-/

/-! ## A057247.P7068596220767308165

`A078683(p?[comp[n²]])`
-/

namespace A057247.P7068596220767308165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057247.P7068596220767308165

/-! ## A057247.P5282472930334545031

`p?[A078683(n+1)+∏{p}[n+1, C(#%n, #)]]`
-/

namespace A057247.P5282472930334545031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (n + 1) + ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057247.P5282472930334545031

/-! ## A057247.P5792025937060872713

`A078683(A390240(n))`
-/

namespace A057247.P5792025937060872713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (A390240 n).toNat

end

end A057247.P5792025937060872713

/-! ## A057247.P9437554639423230491

`A078683(Δ[A007504(n)])`
-/

namespace A057247.P9437554639423230491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (f1 (n + 1) - f1 n).toNat

end

end A057247.P9437554639423230491

/-! ## A057247.P2222948172151583048

`A078683(record[A327667(n)])`
-/

namespace A057247.P2222948172151583048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057247.P2222948172151583048

/-!
# A057248: Numbers n such that n | 6^n + 5^n + 4^n + 3^n.

The programs for A057248, there is no canonical definition to state claims against.
-/

/-! ## A057248.P16272578416750198967

`eq[A096196(n+1), A341412(n+1)]+1`
-/

namespace A057248.P16272578416750198967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057248.P16272578416750198967

/-! ## A057248.P17511439488092103404

`eq[A365718(A152884(n+4)), A365718(n)]`
-/

namespace A057248.P17511439488092103404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365718 (A152884 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057248.P17511439488092103404

/-!
# A057255: Numbers k such that k | 7^k + 6^k + 5^k + 4^k + 3^k.

The programs for A057255, there is no canonical definition to state claims against.
-/

/-! ## A057255.P9256127186406517114

`eq[A096196(n+1), A341413(n+1)]+1`
-/

namespace A057255.P9256127186406517114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057255.P9256127186406517114

/-! ## A057255.P5798208620316034898

`∩[A029772(n+1), A215804(n+1)]`
-/

namespace A057255.P5798208620316034898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057255.P5798208620316034898

/-!
# A057256: Numbers k such that k | 6^k + 5^k + 4^k + 3^k + 2^k.

The programs for A057256, there is no canonical definition to state claims against.
-/

/-! ## A057256.P7135418380418368045

`eq[1, A341412(n+1)^log(n+1)]+1`
-/

namespace A057256.P7135418380418368045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A341412 (n + 1) : ℝ) ^ (Real.log (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A057256.P7135418380418368045

/-! ## A057256.P1865127240835847279

`eq[A057427(n), A341412(n+1)]+1`
-/

namespace A057256.P1865127240835847279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057256.P1865127240835847279

/-! ## A057256.P3568465611192865762

`eq[A060576(n), A341412(A028310(n))]`
-/

namespace A057256.P3568465611192865762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057256.P3568465611192865762

/-! ## A057256.P13346574237700419242

`eq[A057427(n), A341412(A233583(n+1))]`
-/

namespace A057256.P13346574237700419242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341412 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057256.P13346574237700419242

/-! ## A057256.P16883002975272534103

`A057250(∑[A106566(n)!])`
-/

namespace A057256.P16883002975272534103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A106566 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057256.P16883002975272534103

/-!
# A057258: Numbers n such that n | 11^n + 10^n + 9^n + 8^n + 7^n + 6^n.

The programs for A057258, there is no canonical definition to state claims against.
-/

/-! ## A057258.P1399874047731692993

`A064988(A177805(n+1))%A179127(A064988(n+1))`
-/

namespace A057258.P1399874047731692993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (A177805 (n + 1)).toNat) (A179127 (A064988 (n + 1)).toNat)

end

end A057258.P1399874047731692993

/-! ## A057258.P8665268638802834966

`∩[A143512(n+1), A253278(n+1)]`
-/

namespace A057258.P8665268638802834966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057258.P8665268638802834966

/-!
# A057259: Numbers n such that n | 10^n + 9^n + 8^n + 7^n + 6^n + 5^n.

The programs for A057259, there is no canonical definition to state claims against.
-/

/-! ## A057259.P1334501102166812189

`∩[A014957(n+1), A338190(n+1)]`
-/

namespace A057259.P1334501102166812189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057259.P1334501102166812189

/-! ## A057259.P12482970166719742066

`record[gcd(A004396(n), A223480(n+1))]`
-/

namespace A057259.P12482970166719742066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004396 n) (A223480 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057259.P12482970166719742066

/-! ## A057259.P6045507384451445062

`∩[A014957(n+1), A113619(n+1)]`
-/

namespace A057259.P6045507384451445062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057259.P6045507384451445062

/-! ## A057259.P4912189011259845262

`∩[A010422(n+1), A014957(n+1)]`
-/

namespace A057259.P4912189011259845262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057259.P4912189011259845262

/-! ## A057259.P7408767080764480899

`∩[A014957(n+1), A346125(n+1)]`
-/

namespace A057259.P7408767080764480899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057259.P7408767080764480899

/-!
# A057261: Numbers k such that k | 8^k + 7^k + 6^k + 5^k + 4^k + 3^k.

The programs for A057261, there is no canonical definition to state claims against.
-/

/-! ## A057261.P3095321617210743286

`∩[A014873(n+1), A325129(n+1)]`
-/

namespace A057261.P3095321617210743286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057261.P3095321617210743286

/-! ## A057261.P6125980843023870743

`∩[A014873(n+1), A368603(n+1)]`
-/

namespace A057261.P6125980843023870743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057261.P6125980843023870743

/-!
# A057262: Numbers n such that n | 7^n + 6^n + 5^n + 4^n + 3^n + 2^n.

The programs for A057262, there is no canonical definition to state claims against.
-/

/-! ## A057262.P2428686602718917324

`record[gcd(1-A341413(n+1), n+1)]`
-/

namespace A057262.P2428686602718917324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A341413 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057262.P2428686602718917324

/-! ## A057262.P6548224715387453983

`eq[A057427(n), A341413(n+1)]+1`
-/

namespace A057262.P6548224715387453983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057262.P6548224715387453983

/-! ## A057262.P4519521051617886897

`record[or(A152714(n), A332016(n))]`
-/

namespace A057262.P4519521051617886897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152714 n) (A332016 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057262.P4519521051617886897

/-! ## A057262.P10205300473632120685

`∩[A057251(n+1), A324699(n+1)]`
-/

namespace A057262.P10205300473632120685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057262.P10205300473632120685

/-!
# A057263: Numbers n such that n | 12^n + 11^n + 10^n + 9^n + 8^n + 7^n + 6^n.

The programs for A057263, there is no canonical definition to state claims against.
-/

/-! ## A057263.P4283899127317898989

`record[A057493(n+1)%A080533(n)]`
-/

namespace A057263.P4283899127317898989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057493 (n + 1)) (A080533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057263.P4283899127317898989

/-! ## A057263.P1256045002457941304

`A331428(A056745(n+1))+A057286(n+1)`
-/

namespace A057263.P1256045002457941304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (A056745 (n + 1)).toNat + A057286 (n + 1)

end

end A057263.P1256045002457941304

/-! ## A057263.P2913858823146894775

`∪[A014949(n+1), A014962(n+1)]%A014946(3*n+2)`
-/

namespace A057263.P2913858823146894775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A014946 (3 * n + 2))

end

end A057263.P2913858823146894775

/-!
# A057264: Numbers n such that n | 11^n + 10^n + 9^n + 8^n + 7^n + 6^n + 5^n.

The programs for A057264, there is no canonical definition to state claims against.
-/

/-! ## A057264.P16344079363243996823

`A290453(A000110(n))+A243811(n+1)`
-/

namespace A057264.P16344079363243996823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 (A000110 n).toNat + A243811 (n + 1)

end

end A057264.P16344079363243996823

/-! ## A057264.P8857625504382631404

`A040040(n+1)-A055874(A004117(n))`
-/

namespace A057264.P8857625504382631404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) - A055874 (A004117 n).toNat

end

end A057264.P8857625504382631404

/-! ## A057264.P12006129623030003359

`A122921((A147562(n)+A001912(n+1))²)`
-/

namespace A057264.P12006129623030003359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 ((A147562 n + A001912 (n + 1)) ^ 2).toNat

end

end A057264.P12006129623030003359

/-! ## A057264.P7812142550694650206

`A243811(n+1)+A010059(A243793(n+1))`
-/

namespace A057264.P7812142550694650206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1) + A010059 (A243793 (n + 1)).toNat

end

end A057264.P7812142550694650206

/-! ## A057264.P5554438313908893032

`A303709(A303713(n+1))+A243811(n+1)`
-/

namespace A057264.P5554438313908893032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A303713 (n + 1)).toNat + A243811 (n + 1)

end

end A057264.P5554438313908893032

/-!
# A057265: Even refactorable numbers (i.e., the number of divisors is itself a divisor and it is also even).

The programs for A057265, the canonical program `A057265.P17036607551991928888` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057265 has offset 1).

The definition of A057265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057265.P17036607551991928888

`filter[A033950(n+1), A049240(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057265

/-- `filter[A033950(n+1), A049240(#)]` -/
def P17036607551991928888.Spec : Prop :=
  ∀ n, P17036607551991928888.a n = A057265 (n + 1)

theorem P17036607551991928888.correct : P17036607551991928888.Spec := by
  intro n
  simp only [A057265, Nat.add_sub_cancel]

end A057265

/-! ## A057265.P13210653974923294118

`filter[A157502(n+1), A336040(#)]`
-/

namespace A057265.P13210653974923294118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A057265.P13210653974923294118

namespace A057265

/-- `filter[A157502(n+1), A336040(#)]` -/
def P13210653974923294118.Spec : Prop :=
  ∀ n, P13210653974923294118.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P237261216202271620

`∩[A033950(n+1), A157502(n+1)]`
-/

namespace A057265.P237261216202271620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057265.P237261216202271620

namespace A057265

/-- `∩[A033950(n+1), A157502(n+1)]` -/
def P237261216202271620.Spec : Prop :=
  ∀ n, (P237261216202271620.a n : ℤ) = A057265 (n + 1)

end A057265

/-! ## A057265.P17081167509719112680

`record[A122377(A181794(n+1)/2)]`
-/

namespace A057265.P17081167509719112680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (SequenceMachineLib.roundAway ((A181794 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057265.P17081167509719112680

namespace A057265

/-- `record[A122377(A181794(n+1)/2)]` -/
def P17081167509719112680.Spec : Prop :=
  ∀ n, P17081167509719112680.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P11428202028294132929

`record[A122377(A347438(n+1)+n+1)]`
-/

namespace A057265.P11428202028294132929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A347438 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057265.P11428202028294132929

namespace A057265

/-- `record[A122377(A347438(n+1)+n+1)]` -/
def P11428202028294132929.Spec : Prop :=
  ∀ n, P11428202028294132929.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P12384171560343313475

`record[A122377(A000037(n+1))]`
-/

namespace A057265.P12384171560343313475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A000037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057265.P12384171560343313475

namespace A057265

/-- `record[A122377(A000037(n+1))]` -/
def P12384171560343313475.Spec : Prop :=
  ∀ n, P12384171560343313475.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P2404964292398186477

`∩[A000037(n+1), A033950(n+1)]`
-/

namespace A057265.P2404964292398186477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057265.P2404964292398186477

namespace A057265

/-- `∩[A000037(n+1), A033950(n+1)]` -/
def P2404964292398186477.Spec : Prop :=
  ∀ n, (P2404964292398186477.a n : ℤ) = A057265 (n + 1)

end A057265

/-! ## A057265.P533360640779331897

`filter[A033950(n+1), A263804(#)]`
-/

namespace A057265.P533360640779331897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263804 (f1 j).toNat = 1) n)

end

end A057265.P533360640779331897

namespace A057265

/-- `filter[A033950(n+1), A263804(#)]` -/
def P533360640779331897.Spec : Prop :=
  ∀ n, P533360640779331897.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P16053172156690081004

`filter[A033950(n+1), A267525(#)]`
-/

namespace A057265.P16053172156690081004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267525 (f1 j).toNat = 1) n)

end

end A057265.P16053172156690081004

namespace A057265

/-- `filter[A033950(n+1), A267525(#)]` -/
def P16053172156690081004.Spec : Prop :=
  ∀ n, P16053172156690081004.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P2631923195886702710

`filter[A033950(n+1), A267594(#)]`
-/

namespace A057265.P2631923195886702710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A057265.P2631923195886702710

namespace A057265

/-- `filter[A033950(n+1), A267594(#)]` -/
def P2631923195886702710.Spec : Prop :=
  ∀ n, P2631923195886702710.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P8910370577006736185

`filter[A033950(n+1), A267635(#)]`
-/

namespace A057265.P8910370577006736185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A057265.P8910370577006736185

namespace A057265

/-- `filter[A033950(n+1), A267635(#)]` -/
def P8910370577006736185.Spec : Prop :=
  ∀ n, P8910370577006736185.a n = A057265 (n + 1)

end A057265

/-! ## A057265.P9844780672786817520

`eq[A000122(n), A054008(A000038(n)+n)]`
-/

namespace A057265.P9844780672786817520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057265.P9844780672786817520

namespace A057265

/-- `eq[A000122(n), A054008(A000038(n)+n)]` -/
def P9844780672786817520.Spec : Prop :=
  ∀ n, (P9844780672786817520.a n : ℤ) = A057265 (n + 1)

end A057265

/-! ## A057265.P9597176273723976630

`record[A122377(A004526(A078633(n+1)))]`
-/

namespace A057265.P9597176273723976630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A004526 (A078633 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057265.P9597176273723976630

namespace A057265

/-- `record[A122377(A004526(A078633(n+1)))]` -/
def P9597176273723976630.Spec : Prop :=
  ∀ n, P9597176273723976630.a n = A057265 (n + 1)

end A057265

/-!
# A057266: Numbers n such that n | 10^n + 9^n + 8^n + 7^n + 6^n + 5^n + 4^n.

The programs for A057266, there is no canonical definition to state claims against.
-/

/-! ## A057266.P13333131192308684839

`∏{e}[∏[(2*n+1)²], #+5]`
-/

namespace A057266.P13333131192308684839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 5)

end

end A057266.P13333131192308684839

/-!
# A057268: a(n-1)+k=a(n) => a(n)*k=a(n+1).

The programs for A057268, the canonical program `A057268.P1248878622689273667` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057268 has offset 0).

The definition of A057268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057268.P1248878622689273667

`a(n-1)*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057268

/-- `a(n-1)*(a(n-1)-a(n-2))` -/
def P1248878622689273667.Spec : Prop :=
  ∀ n, P1248878622689273667.a n = A057268 n

theorem P1248878622689273667.correct : P1248878622689273667.Spec := by
  intro n
  simp only [A057268]

end A057268

/-! ## A057268.P4804711253246948141

`a(n-1)/(a(n-1)-a(n-2))^(-1)` with `a(0)=1, a(1)=3`
-/

namespace A057268.P4804711253246948141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / (a (n - 1) - a (n - 2)) ^ (-1 : ℤ)

end

end A057268.P4804711253246948141

namespace A057268

/-- `a(n-1)/(a(n-1)-a(n-2))^(-1)` -/
def P4804711253246948141.Spec : Prop :=
  ∀ n, P4804711253246948141.a n = (A057268 n : ℚ)

end A057268

/-! ## A057268.P13420935565906341950

`(a(A023443(n))-a(n-2))*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A057268.P13420935565906341950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (A023443 n).toNat - a (n - 2)) * a (n - 1)

end

end A057268.P13420935565906341950

namespace A057268

/-- `(a(A023443(n))-a(n-2))*a(n-1)` -/
def P13420935565906341950.Spec : Prop :=
  ∀ n, P13420935565906341950.a n = A057268 n

end A057268

/-!
# A057270: Triangle T(n,k) of number of unilaterally connected digraphs on n unlabeled nodes with k arcs, k=0..n*(n-1).

The programs for A057270, there is no canonical definition to state claims against.
-/

/-! ## A057270.P2895962821683729705

`A057278(n+1)-A102683(A001497(n))`
-/

namespace A057270.P2895962821683729705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057278 (n + 1) - A102683 (A001497 n).toNat

end

end A057270.P2895962821683729705

/-! ## A057270.P17979792375844190986

`A057278(n+1)-A284878(A260378(n+1))`
-/

namespace A057270.P17979792375844190986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057278 (n + 1) - A284878 (A260378 (n + 1)).toNat

end

end A057270.P17979792375844190986

/-! ## A057270.P11900449134360830781

`and(A057278(n+1), A328213(A204685(n+1)))`
-/

namespace A057270.P11900449134360830781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057278 (n + 1)) (A328213 (A204685 (n + 1)).toNat)

end

end A057270.P11900449134360830781

/-!
# A057271: Triangle T(n,k) of number of digraphs with a source and a sink on n labeled nodes and k arcs, k=0,1,..,n*(n-1).

The programs for A057271, there is no canonical definition to state claims against.
-/

/-! ## A057271.P11543858718041645478

`ceil(log(cosh(A057275(n+1))))`
-/

namespace A057271.P11543858718041645478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.cosh (A057275 (n + 1) : ℝ))⌉

end

end A057271.P11543858718041645478

/-! ## A057271.P4456591316063236939

`A089854(A057275(n+1))`
-/

namespace A057271.P4456591316063236939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A057275 (n + 1)).toNat

end

end A057271.P4456591316063236939

/-! ## A057271.P15815828502333191865

`A057275(A187829(n+1))`
-/

namespace A057271.P15815828502333191865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057275 (A187829 (n + 1)).toNat

end

end A057271.P15815828502333191865

/-! ## A057271.P1252713204152627279

`A057275(A093653(2^n))`
-/

namespace A057271.P1252713204152627279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057275 (A093653 (2 ^ n)).toNat

end

end A057271.P1252713204152627279

/-! ## A057271.P7340140877909607546

`A057275(∑[∑[A106433(n)]])`
-/

namespace A057271.P7340140877909607546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057271.P7340140877909607546

/-!
# A057274: Triangle T(n,k) of the number of digraphs with a source on n labeled nodes with k arcs, k=0..n*(n-1).

The programs for A057274, there is no canonical definition to state claims against.
-/

/-! ## A057274.P1067525876155693292

`A171181(A057272(n+1)-A057271(n+1))+A057271(n+1)`
-/

namespace A057274.P1067525876155693292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A057272 (n + 1) - A057271 (n + 1)).toNat + A057271 (n + 1)

end

end A057274.P1067525876155693292

/-! ## A057274.P10958536276392014067

`A171181(A057272(n+1)+A057271(n+1))`
-/

namespace A057274.P10958536276392014067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A057272 (n + 1) + A057271 (n + 1)).toNat

end

end A057274.P10958536276392014067

/-! ## A057274.P17530599209762990232

`A057271(n+1)+A055641(A062838(n+1))`
-/

namespace A057274.P17530599209762990232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057271 (n + 1) + A055641 (A062838 (n + 1)).toNat

end

end A057274.P17530599209762990232

/-! ## A057274.P6900087852521430564

`A057275(n+1)+A055641(A062838(n+1))`
-/

namespace A057274.P6900087852521430564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057275 (n + 1) + A055641 (A062838 (n + 1)).toNat

end

end A057274.P6900087852521430564

/-! ## A057274.P6327850774859142147

`A062735(n+1)-A373954(A028982(n+4))`
-/

namespace A057274.P6327850774859142147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062735 (n + 1) - A373954 (A028982 (n + 4)).toNat

end

end A057274.P6327850774859142147

/-!
# A057276: Triangle T(n,k) of number of strongly connected digraphs on n unlabeled nodes and with k arcs, k=0..n*(n-1).

The programs for A057276, there is no canonical definition to state claims against.
-/

/-! ## A057276.P6168493465028189422

`A124765(A057273(n+1)²)`
-/

namespace A057276.P6168493465028189422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A057273 (n + 1) ^ 2).toNat

end

end A057276.P6168493465028189422

/-! ## A057276.P3687458520946108932

`A355737(A057273(n+1)+1)`
-/

namespace A057276.P3687458520946108932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355737 (A057273 (n + 1) + 1).toNat

end

end A057276.P3687458520946108932

/-! ## A057276.P10731909791946170691

`and(A007318(n), A057856(n+11))`
-/

namespace A057276.P10731909791946170691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A057856 (n + 11))

end

end A057276.P10731909791946170691

/-! ## A057276.P11556577194991113033

`A333805((A057273(n+1)+1)²)`
-/

namespace A057276.P11556577194991113033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 ((A057273 (n + 1) + 1) ^ 2).toNat

end

end A057276.P11556577194991113033

/-! ## A057276.P12714343373427302439

`and(record[A257491(n+1)], A193592(n))`
-/

namespace A057276.P12714343373427302439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A193592 n)

end

end A057276.P12714343373427302439

/-!
# A057277: Triangle T(n,k) of number of digraphs with a source on n unlabeled nodes with k arcs, k=0..n*(n-1).

The programs for A057277, there is no canonical definition to state claims against.
-/

/-! ## A057277.P776277338156419680

`and(A057279(n+1), A331081(A000055(n)))`
-/

namespace A057277.P776277338156419680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057279 (n + 1)) (A331081 (A000055 n).toNat)

end

end A057277.P776277338156419680

/-!
# A057278: Triangle T(n,k) of number of digraphs with a source and a sink on n unlabeled nodes and k arcs, k=0..n*(n-1).

The programs for A057278, there is no canonical definition to state claims against.
-/

/-! ## A057278.P4337310059388759313

`or(A057270(n+1), A102683(A057271(n+3)))`
-/

namespace A057278.P4337310059388759313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057270 (n + 1)) (A102683 (A057271 (n + 3)).toNat)

end

end A057278.P4337310059388759313

/-! ## A057278.P13638560462609837321

`or(A057270(n+1), A102683(A057275(n+3)))`
-/

namespace A057278.P13638560462609837321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057270 (n + 1)) (A102683 (A057275 (n + 3)).toNat)

end

end A057278.P13638560462609837321

/-! ## A057278.P3841591131126504391

`or(A057270(n+1), A102683(A047887(n+4)))`
-/

namespace A057278.P3841591131126504391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057270 (n + 1)) (A102683 (A047887 (n + 4)).toNat)

end

end A057278.P3841591131126504391

/-! ## A057278.P1128092906798381995

`or(A008683(A057250(2*(n+2))), A057270(n+1))`
-/

namespace A057278.P1128092906798381995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A057250 (2 * (n + 2))).toNat) (A057270 (n + 1))

end

end A057278.P1128092906798381995

/-! ## A057278.P14519206714500345091

`or(A057270(n+1), A324731(A329758(n+1)))`
-/

namespace A057278.P14519206714500345091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057270 (n + 1)) (A324731 (A329758 (n + 1)).toNat)

end

end A057278.P14519206714500345091

/-!
# A057280: Coefficient triangle of polynomials (rising powers) related to Fibonacci convolutions. Companion triangle to A057995.

The programs for A057280, there is no canonical definition to state claims against.
-/

/-! ## A057280.P7350468911628332190

`A057282(∑[char[∑[n]]]²-n)`
-/

namespace A057280.P7350468911628332190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057282 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A057280.P7350468911628332190

/-! ## A057280.P7471290606595733097

`or(char[1], A057282(A038722(n+1)))`
-/

namespace A057280.P7471290606595733097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A057282 (A038722 (n + 1)).toNat)

end

end A057280.P7471290606595733097

/-! ## A057280.P16110602573081131725

`A057282(A038722(n+1))%A061182(n)`
-/

namespace A057280.P16110602573081131725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057282 (A038722 (n + 1)).toNat) (A061182 n)

end

end A057280.P16110602573081131725

/-! ## A057280.P9782397900967962683

`A007318(∑[n])*A057282(A038722(n+1))`
-/

namespace A057280.P9782397900967962683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A057282 (A038722 (n + 1)).toNat

end

end A057280.P9782397900967962683

/-!
# A057281: Coefficient triangle of polynomials (falling powers) related to Fibonacci convolutions. Companion triangle to A057282.

The programs for A057281, there is no canonical definition to state claims against.
-/

/-! ## A057281.P2495404426952536627

`A057995(∑[2*n]%comp[∑[n]])`
-/

namespace A057281.P2495404426952536627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057995 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A057281.P2495404426952536627

/-! ## A057281.P16799564316708484803

`A057995(∑[char[∑[n]]]²-(n+1))`
-/

namespace A057281.P16799564316708484803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057995 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A057281.P16799564316708484803

/-! ## A057281.P10615351406053021850

`A057995(A061579(n))%A016948(n)`
-/

namespace A057281.P10615351406053021850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057995 (A061579 n).toNat) (A016948 n)

end

end A057281.P10615351406053021850

/-! ## A057281.P10749203181888267043

`A057995(A061579(n))*A319101(n+1)`
-/

namespace A057281.P10749203181888267043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057995 (A061579 n).toNat * A319101 (n + 1)

end

end A057281.P10749203181888267043

/-! ## A057281.P8184652882116590216

`A057995(A061579(n))/A323022(n+2)`
-/

namespace A057281.P8184652882116590216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057995 (A061579 n).toNat : ℚ) / (A323022 (n + 2) : ℚ)

end

end A057281.P8184652882116590216

/-!
# A057282: Coefficient triangle of polynomials (falling powers) related to Fibonacci convolutions. Companion triangle to A057281.

The programs for A057282, there is no canonical definition to state claims against.
-/

/-! ## A057282.P11117536288382141811

`A057280(∑[2*n]%comp[∑[n]])`
-/

namespace A057282.P11117536288382141811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057280 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A057282.P11117536288382141811

/-! ## A057282.P13848840321707830311

`A057280(∑[char[∑[n]]]²-(n+1))`
-/

namespace A057282.P13848840321707830311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057280 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A057282.P13848840321707830311

/-! ## A057282.P11483113019237650517

`A057280(A061579(n))%A016948(n)`
-/

namespace A057282.P11483113019237650517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057280 (A061579 n).toNat) (A016948 n)

end

end A057282.P11483113019237650517

/-! ## A057282.P5564208897825030427

`gcd(A000038(n), A057280(A061579(n)))`
-/

namespace A057282.P5564208897825030427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A057280 (A061579 n).toNat)

end

end A057282.P5564208897825030427

/-! ## A057282.P15349870367084974134

`A007318(∑[n])*A057280(A061579(n))`
-/

namespace A057282.P15349870367084974134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A057280 (A061579 n).toNat

end

end A057282.P15349870367084974134

/-!
# A057284: Numbers n such that n | 9^n + 8^n + 7^n + 6^n + 5^n + 4^n + 3^n + 2^n.

The programs for A057284, there is no canonical definition to state claims against.
-/

/-! ## A057284.P2781570512183100623

`∪[11^n, A018373(A187909(n+1))]`
-/

namespace A057284.P2781570512183100623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018373 (A187909 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057284.P2781570512183100623

/-! ## A057284.P776863790403015590

`∑[A234026(A003239(∑{d}[n, #%#²]))]`
-/

namespace A057284.P776863790403015590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A003239 (∑ d ∈ Nat.divisors (f2 n), d % d ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057284.P776863790403015590

/-!
# A057285: Numbers n such that n | 12^n + 11^n + 10^n + 9^n + 8^n + 7^n + 6^n + 5^n + 4^n.

The programs for A057285, there is no canonical definition to state claims against.
-/

/-! ## A057285.P11406247764036446258

`A057287(A043316(n+1))`
-/

namespace A057285.P11406247764036446258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057287 (A043316 (n + 1)).toNat

end

end A057285.P11406247764036446258

/-! ## A057285.P8472405216904646775

`A057287(A044913(n+1))`
-/

namespace A057285.P8472405216904646775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057287 (A044913 (n + 1)).toNat

end

end A057285.P8472405216904646775

/-! ## A057285.P17971409485784239455

`A057287(A049872(n+1))`
-/

namespace A057285.P17971409485784239455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057287 (A049872 (n + 1)).toNat

end

end A057285.P17971409485784239455

/-! ## A057285.P9461773285891072139

`A057287(A061147(n+1))`
-/

namespace A057285.P9461773285891072139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057287 (A061147 (n + 1)).toNat

end

end A057285.P9461773285891072139

/-! ## A057285.P2598967687504571597

`A057287(A061497(n+1))`
-/

namespace A057285.P2598967687504571597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057287 (A061497 (n + 1)).toNat

end

end A057285.P2598967687504571597

/-!
# A057286: Numbers k such that k | 11^k + 10^k + 9^k + 8^k + 7^k + 6^k + 5^k + 4^k + 3^k.

The programs for A057286, there is no canonical definition to state claims against.
-/

/-! ## A057286.P6759206025228752999

`record[gcd(A057287(n+1), A109613(n))]`
-/

namespace A057286.P6759206025228752999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057287 (n + 1)) (A109613 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057286.P6759206025228752999

/-! ## A057286.P551514824480342782

`∩[A124391(n+1), A320634(n+1)]`
-/

namespace A057286.P551514824480342782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057286.P551514824480342782

/-! ## A057286.P7527108770310018972

`∩[A124391(n+1), A330107(n+1)]`
-/

namespace A057286.P7527108770310018972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057286.P7527108770310018972

/-! ## A057286.P11819801058359649655

`A056745(n+1)-A056674(A056725(n+1))`
-/

namespace A057286.P11819801058359649655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056745 (n + 1) - A056674 (A056725 (n + 1)).toNat

end

end A057286.P11819801058359649655

/-! ## A057286.P2974791400041719879

`A057263(n+1)-A331428(A056745(n+1))`
-/

namespace A057286.P2974791400041719879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057263 (n + 1) - A331428 (A056745 (n + 1)).toNat

end

end A057286.P2974791400041719879

/-!
# A057287: Numbers n such that n | 10^n + 9^n + 8^n + 7^n + 6^n + 5^n + 4^n + 3^n + 2^n.

The programs for A057287, there is no canonical definition to state claims against.
-/

/-! ## A057287.P3415168294968413315

`A057285(lt[A057264(n+4), A057229(n)])`
-/

namespace A057287.P3415168294968413315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057264 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057285 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057287.P3415168294968413315

/-! ## A057287.P13083695459557781882

`∩[A057285(n+1), A355596(n+1)]`
-/

namespace A057287.P13083695459557781882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057287.P13083695459557781882

/-! ## A057287.P16842755868143204769

`∩[A057285(n+1), A364433(n+1)]`
-/

namespace A057287.P16842755868143204769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057287.P16842755868143204769

/-! ## A057287.P11997975387659657928

`∩[A057285(n+1), A111228(n)]`
-/

namespace A057287.P11997975387659657928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111228 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057287.P11997975387659657928

/-! ## A057287.P18364083261820658059

`∩[A057285(n+1), A366187(n+1)]`
-/

namespace A057287.P18364083261820658059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057287.P18364083261820658059

/-!
# A057294: Numbers n such that n | 11^n + 10^n + 1.

The programs for A057294, there is no canonical definition to state claims against.
-/

/-! ## A057294.P17016020731744382858

`A177872(A362051(n+1))`
-/

namespace A057294.P17016020731744382858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177872 (A362051 (n + 1)).toNat

end

end A057294.P17016020731744382858

/-! ## A057294.P11588383946242528396

`A045917(xor(2, A037099(n)))`
-/

namespace A057294.P11588383946242528396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (Int.xor 2 (A037099 n)).toNat

end

end A057294.P11588383946242528396

/-!
# A057297: Numbers n such that n | 8^n + 7^n + 1.

The programs for A057297, there is no canonical definition to state claims against.
-/

/-! ## A057297.P16270802689183840239

`19*A018290(a(n-2))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A057297.P16270802689183840239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  19 * A018290 (a (n - 2)).toNat

end

end A057297.P16270802689183840239

