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
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A183900: Number of nondecreasing arrangements of n+3 numbers in 0..5 with each number being the sum mod 6 of three others.

The programs for A183900, there is no canonical definition to state claims against.
-/

/-! ## A183900.P696880337899036907

`A183904(∑[n+5]+6)`
-/

namespace A183900.P696880337899036907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183900.P696880337899036907

/-!
# A183901: Number of nondecreasing arrangements of n+3 numbers in 0..6 with each number being the sum mod 7 of three others.

The programs for A183901, there is no canonical definition to state claims against.
-/

/-! ## A183901.P9759492020815589349

`A183904(∑[a(n-1)+1])` with `a(0)=16, a(1)=7`
-/

namespace A183901.P9759492020815589349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183901.P9759492020815589349

/-! ## A183901.P6511317843878509406

`A183904(A052905(n+3))`
-/

namespace A183901.P6511317843878509406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A052905 (n + 3)).toNat

end

end A183901.P6511317843878509406

/-! ## A183901.P15045719364271274801

`A183904(A056119(n)+16)`
-/

namespace A183901.P15045719364271274801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A056119 n + 16).toNat

end

end A183901.P15045719364271274801

/-! ## A183901.P690258389562720670

`A183904(eq[3, A219347(n)])`
-/

namespace A183901.P690258389562720670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183901.P690258389562720670

/-! ## A183901.P16929413978364338662

`A183904(eq[5, A193592(n)])`
-/

namespace A183901.P16929413978364338662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183901.P16929413978364338662

/-!
# A183902: Number of nondecreasing arrangements of n+3 numbers in 0..7 with each number being the sum mod 8 of three others.

The programs for A183902, there is no canonical definition to state claims against.
-/

/-! ## A183902.P5061175866200704857

`A183904(eq[4, A219347(n)])`
-/

namespace A183902.P5061175866200704857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183902.P5061175866200704857

/-! ## A183902.P12204713949047308894

`A183904(eq[6, A193592(n)])`
-/

namespace A183902.P12204713949047308894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183902.P12204713949047308894

/-! ## A183902.P9453627529652152649

`A183904(Δ[A023551(n+2)])`
-/

namespace A183902.P9453627529652152649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (f1 (n + 1) - f1 n).toNat

end

end A183902.P9453627529652152649

/-! ## A183902.P1527958652955827069

`A183904(A052905(n+4)-1)`
-/

namespace A183902.P1527958652955827069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A052905 (n + 4) - 1).toNat

end

end A183902.P1527958652955827069

/-! ## A183902.P2954183079239283095

`A183904(A183897(n+3)+5)`
-/

namespace A183902.P2954183079239283095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A183897 (n + 3) + 5).toNat

end

end A183902.P2954183079239283095

/-!
# A183903: Number of nondecreasing arrangements of n+3 numbers in 0..8 with each number being the sum mod 9 of three others.

The programs for A183903, there is no canonical definition to state claims against.
-/

/-! ## A183903.P2323453462207105404

`A183904(eq[5, A219347(n)])`
-/

namespace A183903.P2323453462207105404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183903.P2323453462207105404

/-! ## A183903.P11499626561128631001

`A183904(eq[7, A193592(n)])`
-/

namespace A183903.P11499626561128631001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183903.P11499626561128631001

/-! ## A183903.P12801935659183062550

`A183904(Δ[A183906(n+4)])`
-/

namespace A183903.P12801935659183062550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (f1 (n + 1) - f1 n).toNat

end

end A183903.P12801935659183062550

/-! ## A183903.P969146221278020554

`A183904(A183897(n+4)+4)`
-/

namespace A183903.P969146221278020554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A183897 (n + 4) + 4).toNat

end

end A183903.P969146221278020554

/-! ## A183903.P226430721841397986

`A183904(A183905(n+5)+4)`
-/

namespace A183903.P226430721841397986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A183905 (n + 5) + 4).toNat

end

end A183903.P226430721841397986

/-!
# A183905: Number of nondecreasing arrangements of n+2 numbers in 0..2 with each number being the sum mod 3 of two others.

The programs for A183905, the canonical program `A183905.P17298257088074398539` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183905 has offset 1).

The definition of A183905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183905.P17298257088074398539

`abs(5-∑[n+4])`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183905

/-- `abs(5-∑[n+4])` -/
def P17298257088074398539.Spec : Prop :=
  ∀ n, P17298257088074398539.a n = A183905 (n + 1)

theorem P17298257088074398539.correct : P17298257088074398539.Spec := by
  intro n
  simp only [A183905, Nat.add_sub_cancel]

end A183905

/-! ## A183905.P14569107915756246967

`∑[2^ceil(atan(n))+n]`
-/

namespace A183905.P14569107915756246967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P14569107915756246967

namespace A183905

/-- `∑[2^ceil(atan(n))+n]` -/
def P14569107915756246967.Spec : Prop :=
  ∀ n, P14569107915756246967.a n = (A183905 (n + 1) : ℚ)

end A183905

/-! ## A183905.P17516175421775067088

`record[lcm(2, n)+1]+∑[n]`
-/

namespace A183905.P17516175421775067088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183905.P17516175421775067088

namespace A183905

/-- `record[lcm(2, n)+1]+∑[n]` -/
def P17516175421775067088.Spec : Prop :=
  ∀ n, (P17516175421775067088.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P8526467720706900265

`∑[a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A183905.P8526467720706900265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P8526467720706900265

namespace A183905

/-- `∑[a(n-1)+1]` -/
def P8526467720706900265.Spec : Prop :=
  ∀ n, (P8526467720706900265.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P16262656045721214356

`a(n-1)+4+n` with `a(0)=1, a(1)=4`
-/

namespace A183905.P16262656045721214356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 4 + n

end

end A183905.P16262656045721214356

namespace A183905

/-- `a(n-1)+4+n` -/
def P16262656045721214356.Spec : Prop :=
  ∀ n, (P16262656045721214356.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P3078602514597323504

`∑[ogf((1+x+x^2-2x^3)/(1-2x+x^2))]`
-/

namespace A183905.P3078602514597323504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P3078602514597323504

namespace A183905

/-- `∑[ogf((1+x+x^2-2x^3)/(1-2x+x^2))]` -/
def P3078602514597323504.Spec : Prop :=
  ∀ n, P3078602514597323504.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P2642998405545765324

`ogf((1+x+x^2-2x^3)/(1-3x+3x^2-x^3))`
-/

namespace A183905.P2642998405545765324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2] [1, -3, 3, -1] n

end

end A183905.P2642998405545765324

namespace A183905

/-- `ogf((1+x+x^2-2x^3)/(1-3x+3x^2-x^3))` -/
def P2642998405545765324.Spec : Prop :=
  ∀ n, P2642998405545765324.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P1203420323586614666

`∑[gcd(n+3, C(2, n²))]+n`
-/

namespace A183905.P1203420323586614666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (Nat.choose 2 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183905.P1203420323586614666

namespace A183905

/-- `∑[gcd(n+3, C(2, n²))]+n` -/
def P1203420323586614666.Spec : Prop :=
  ∀ n, (P1203420323586614666.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P2185631128998519189

`abs(4-C(n+3, 2))+2*n`
-/

namespace A183905.P2185631128998519189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.choose (n + 3) 2 : ℤ)| + (2 * n : ℤ)

end

end A183905.P2185631128998519189

namespace A183905

/-- `abs(4-C(n+3, 2))+2*n` -/
def P2185631128998519189.Spec : Prop :=
  ∀ n, P2185631128998519189.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P16725865031668079120

`∑[2%(n+1)+n+2]-1`
-/

namespace A183905.P16725865031668079120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 1) + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A183905.P16725865031668079120

namespace A183905

/-- `∑[2%(n+1)+n+2]-1` -/
def P16725865031668079120.Spec : Prop :=
  ∀ n, P16725865031668079120.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P2351760410256197434

`∑[a((n+1)%n)+1+n]` with `a(0)=1`
-/

namespace A183905.P2351760410256197434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n + 1) % n) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P2351760410256197434

namespace A183905

/-- `∑[a((n+1)%n)+1+n]` -/
def P2351760410256197434.Spec : Prop :=
  ∀ n, (P2351760410256197434.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P7576543822318919529

`5-floor(1-a(n-1)-n)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A183905.P7576543822318919529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 - (1 - a (n - 1) - (n : ℤ))

end

end A183905.P7576543822318919529

namespace A183905

/-- `5-floor(1-a(n-1)-n)` -/
def P7576543822318919529.Spec : Prop :=
  ∀ n, P7576543822318919529.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P8947295456320370248

`∑[n+3-C(2, n²)]+n-1`
-/

namespace A183905.P8947295456320370248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.choose 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A183905.P8947295456320370248

namespace A183905

/-- `∑[n+3-C(2, n²)]+n-1` -/
def P8947295456320370248.Spec : Prop :=
  ∀ n, P8947295456320370248.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P10899438710468767603

`n-1-∑[C(2, ∑[n])-(n+3)]`
-/

namespace A183905.P10899438710468767603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P10899438710468767603

namespace A183905

/-- `n-1-∑[C(2, ∑[n])-(n+3)]` -/
def P10899438710468767603.Spec : Prop :=
  ∀ n, P10899438710468767603.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P2032809990637058298

`2*n-(n-4-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A183905.P2032809990637058298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 4 - a (n - 1))

end

end A183905.P2032809990637058298

namespace A183905

/-- `2*n-(n-4-a(n-1))` -/
def P2032809990637058298.Spec : Prop :=
  ∀ n, P2032809990637058298.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P11576049080278114689

`C(n+3, 2)+abs(1-n)+n-3`
-/

namespace A183905.P11576049080278114689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) + (|1 - (n : ℤ)| + ((n : ℤ) - 3))

end

end A183905.P11576049080278114689

namespace A183905

/-- `C(n+3, 2)+abs(1-n)+n-3` -/
def P11576049080278114689.Spec : Prop :=
  ∀ n, P11576049080278114689.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P8248000904456495989

`∑[C(n+2, floor(2*n/(n+2)))]+2*n`
-/

namespace A183905.P8248000904456495989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) ⌊(2 * n : ℚ) / (n + 2 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A183905.P8248000904456495989

namespace A183905

/-- `∑[C(n+2, floor(2*n/(n+2)))]+2*n` -/
def P8248000904456495989.Spec : Prop :=
  ∀ n, (P8248000904456495989.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P5651091331749432915

`∑[A151798(n)+n]`
-/

namespace A183905.P5651091331749432915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P5651091331749432915

namespace A183905

/-- `∑[A151798(n)+n]` -/
def P5651091331749432915.Spec : Prop :=
  ∀ n, P5651091331749432915.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P14308679408034437297

`∑[A107820(n+1)-2]`
-/

namespace A183905.P14308679408034437297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P14308679408034437297

namespace A183905

/-- `∑[A107820(n+1)-2]` -/
def P14308679408034437297.Spec : Prop :=
  ∀ n, P14308679408034437297.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P12466725049704638720

`A131098(n+1)+∑[n]`
-/

namespace A183905.P12466725049704638720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183905.P12466725049704638720

namespace A183905

/-- `A131098(n+1)+∑[n]` -/
def P12466725049704638720.Spec : Prop :=
  ∀ n, P12466725049704638720.a n = A183905 (n + 1)

end A183905

/-!
# A183906: Number of nondecreasing arrangements of n+2 numbers in 0..3 with each number being the sum mod 4 of two others.

The programs for A183906, the canonical program `A183906.P11099707079449525201` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183906 has offset 1).

The definition of A183906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183906.P11099707079449525201

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=17, a(3)=38, a(4)=67, a(5)=105`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183906

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11099707079449525201.Spec : Prop :=
  ∀ n, P11099707079449525201.a n = A183906 (n + 1)

theorem P11099707079449525201.correct : P11099707079449525201.Spec := by
  intro n
  simp only [A183906, Nat.add_sub_cancel]

end A183906

/-! ## A183906.P3438606213605653389

`∑[∑[n+3]-A034387(C(2, n)+1)+n]+1`
-/

namespace A183906.P3438606213605653389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A034387 (Nat.choose 2 n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A183906.P3438606213605653389

namespace A183906

/-- `∑[∑[n+3]-A034387(C(2, n)+1)+n]+1` -/
def P3438606213605653389.Spec : Prop :=
  ∀ n, P3438606213605653389.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P17611460282100204996

`∑[A130773(A267873(n))+∑[n]]`
-/

namespace A183906.P17611460282100204996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A267873 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183906.P17611460282100204996

namespace A183906

/-- `∑[A130773(A267873(n))+∑[n]]` -/
def P17611460282100204996.Spec : Prop :=
  ∀ n, P17611460282100204996.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P8853920210908254575

`A004275(A267874(n))+∑[∑[n]+1]`
-/

namespace A183906.P8853920210908254575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A267874 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183906.P8853920210908254575

namespace A183906

/-- `A004275(A267874(n))+∑[∑[n]+1]` -/
def P8853920210908254575.Spec : Prop :=
  ∀ n, P8853920210908254575.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P16695429029434306799

`A004273(A267874(n))+A003600(n)`
-/

namespace A183906.P16695429029434306799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A267874 n).toNat + A003600 n

end

end A183906.P16695429029434306799

namespace A183906

/-- `A004273(A267874(n))+A003600(n)` -/
def P16695429029434306799.Spec : Prop :=
  ∀ n, P16695429029434306799.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P9710338970074070828

`A004273(∑[A267873(n)])+A003600(n)`
-/

namespace A183906.P9710338970074070828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A003600 n

end

end A183906.P9710338970074070828

namespace A183906

/-- `A004273(∑[A267873(n)])+A003600(n)` -/
def P9710338970074070828.Spec : Prop :=
  ∀ n, P9710338970074070828.a n = A183906 (n + 1)

end A183906

/-!
# A183907: Number of nondecreasing arrangements of n+2 numbers in 0..4 with each number being the sum mod 5 of two others.

The programs for A183907, the canonical program `A183907.P14509073884946094943` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183907 has offset 1).

The definition of A183907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183907.P14509073884946094943

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=20, a(3)=66, a(4)=148, a(5)=275`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183907

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14509073884946094943.Spec : Prop :=
  ∀ n, P14509073884946094943.a n = A183907 (n + 1)

theorem P14509073884946094943.correct : P14509073884946094943.Spec := by
  intro n
  simp only [A183907, Nat.add_sub_cancel]

end A183907

/-! ## A183907.P2795443664342574944

`A183912(∑[a(n-1)+1])` with `a(0)=7, a(1)=5`
-/

namespace A183907.P2795443664342574944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183907.P2795443664342574944

namespace A183907

/-- `A183912(∑[a(n-1)+1])` -/
def P2795443664342574944.Spec : Prop :=
  ∀ n, P2795443664342574944.a n = A183907 (n + 1)

end A183907

/-! ## A183907.P8407952325715889744

`A183912(A141214(n+1))`
-/

namespace A183907.P8407952325715889744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A141214 (n + 1)).toNat

end

end A183907.P8407952325715889744

namespace A183907

/-- `A183912(A141214(n+1))` -/
def P8407952325715889744.Spec : Prop :=
  ∀ n, P8407952325715889744.a n = A183907 (n + 1)

end A183907

/-! ## A183907.P7930850511203061453

`A183912(A027379(n+2))`
-/

namespace A183907.P7930850511203061453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A027379 (n + 2)).toNat

end

end A183907.P7930850511203061453

namespace A183907

/-- `A183912(A027379(n+2))` -/
def P7930850511203061453.Spec : Prop :=
  ∀ n, P7930850511203061453.a n = A183907 (n + 1)

end A183907

/-! ## A183907.P7320741368752710752

`A183912(A155212(n)+5)`
-/

namespace A183907.P7320741368752710752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A155212 n + 5).toNat

end

end A183907.P7320741368752710752

namespace A183907

/-- `A183912(A155212(n)+5)` -/
def P7320741368752710752.Spec : Prop :=
  ∀ n, P7320741368752710752.a n = A183907 (n + 1)

end A183907

/-!
# A183908: Number of nondecreasing arrangements of n+2 numbers in 0..5 with each number being the sum mod 6 of two others.

The programs for A183908, there is no canonical definition to state claims against.
-/

/-! ## A183908.P14049948235504150928

`A183912(∑[a(n-1)+1])` with `a(0)=11, a(1)=6`
-/

namespace A183908.P14049948235504150928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183908.P14049948235504150928

/-! ## A183908.P8926733094575847241

`A183912(Δ[A264443(n)])`
-/

namespace A183908.P8926733094575847241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (f1 (n + 1) - f1 n).toNat

end

end A183908.P8926733094575847241

/-! ## A183908.P10783200187336746149

`A183912(A046691(n+3))`
-/

namespace A183908.P10783200187336746149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A046691 (n + 3)).toNat

end

end A183908.P10783200187336746149

/-! ## A183908.P688348899571836370

`A183912(A056115(n)+11)`
-/

namespace A183908.P688348899571836370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A056115 n + 11).toNat

end

end A183908.P688348899571836370

/-! ## A183908.P7623431649654502282

`A183912(eq[2, A092921(n)])`
-/

namespace A183908.P7623431649654502282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183908.P7623431649654502282

/-!
# A183909: Number of nondecreasing arrangements of n+2 numbers in 0..6 with each number being the sum mod 7 of two others.

The programs for A183909, there is no canonical definition to state claims against.
-/

/-! ## A183909.P1502960499318044936

`A183912(∑[a(n-1)+1])` with `a(0)=16, a(1)=7`
-/

namespace A183909.P1502960499318044936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183909.P1502960499318044936

/-! ## A183909.P113052190756112054

`A183912(A052905(n+3))`
-/

namespace A183909.P113052190756112054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A052905 (n + 3)).toNat

end

end A183909.P113052190756112054

/-! ## A183909.P415921688956409840

`A183912(A056119(n)+16)`
-/

namespace A183909.P415921688956409840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A056119 n + 16).toNat

end

end A183909.P415921688956409840

/-! ## A183909.P3258417940500640341

`A183912(eq[3, A219347(n)])`
-/

namespace A183909.P3258417940500640341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183909.P3258417940500640341

/-! ## A183909.P17803556939999104483

`A183912(eq[5, A193592(n)])`
-/

namespace A183909.P17803556939999104483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183909.P17803556939999104483

/-!
# A183910: Number of nondecreasing arrangements of n+2 numbers in 0..7 with each number being the sum mod 8 of two others.

The programs for A183910, there is no canonical definition to state claims against.
-/

/-! ## A183910.P11251204430855684424

`A183912(A055999(n+4))`
-/

namespace A183910.P11251204430855684424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A055999 (n + 4)).toNat

end

end A183910.P11251204430855684424

/-! ## A183910.P3980895826029023691

`A183912(eq[4, A219347(n)])`
-/

namespace A183910.P3980895826029023691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183910.P3980895826029023691

/-! ## A183910.P13983416879318537306

`A183912(eq[6, A193592(n)])`
-/

namespace A183910.P13983416879318537306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183910.P13983416879318537306

/-! ## A183910.P4652375675976374804

`A183912(A155212(n+3)+2)`
-/

namespace A183910.P4652375675976374804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A155212 (n + 3) + 2).toNat

end

end A183910.P4652375675976374804

/-! ## A183910.P16685426952363136384

`A183912(A052905(n+4)-1)`
-/

namespace A183910.P16685426952363136384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A052905 (n + 4) - 1).toNat

end

end A183910.P16685426952363136384

/-!
# A183911: Number of nondecreasing arrangements of n+2 numbers in 0..8 with each number being the sum mod 9 of two others.

The programs for A183911, there is no canonical definition to state claims against.
-/

/-! ## A183911.P10209598030889403110

`A183912(eq[5, A219347(n)])`
-/

namespace A183911.P10209598030889403110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183911.P10209598030889403110

/-! ## A183911.P12582456194444435151

`A183912(eq[7, A193592(n)])`
-/

namespace A183911.P12582456194444435151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183911.P12582456194444435151

/-! ## A183911.P11171054839984627219

`A183912(A183905(n+5)+4)`
-/

namespace A183911.P11171054839984627219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A183905 (n + 5) + 4).toNat

end

end A183911.P11171054839984627219

/-! ## A183911.P11137088231290096494

`A183912(eq[7, A195664(n)]+1)`
-/

namespace A183911.P11137088231290096494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183911.P11137088231290096494

/-! ## A183911.P16628838276130757946

`A183912(A253145(n+6)+n+1)`
-/

namespace A183911.P16628838276130757946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (A253145 (n + 6) + (n + 1 : ℤ)).toNat

end

end A183911.P16628838276130757946

/-!
# A183913: Number of nondecreasing arrangements of n numbers in -5..5 with sum zero.

The programs for A183913, there is no canonical definition to state claims against.
-/

/-! ## A183913.P1267493858056092745

`A201503(A000217(n+9)+10)`
-/

namespace A183913.P1267493858056092745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 9) + 10).toNat

end

end A183913.P1267493858056092745

/-! ## A183913.P7080274209704197223

`A201503(A167614(n+7)+n+16)`
-/

namespace A183913.P7080274209704197223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 7) + (n + 16 : ℤ)).toNat

end

end A183913.P7080274209704197223

/-! ## A183913.P2234485945319038742

`A201503(A374011(n+1))`
-/

namespace A183913.P2234485945319038742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A374011 (n + 1)).toNat

end

end A183913.P2234485945319038742

/-! ## A183913.P2840920450988901354

`A201503(A000124(n+10)-10)`
-/

namespace A183913.P2840920450988901354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000124 (n + 10) - 10).toNat

end

end A183913.P2840920450988901354

/-! ## A183913.P4251753111155083731

`A201503(A000096(n+8)+n+2)`
-/

namespace A183913.P4251753111155083731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000096 (n + 8) + (n + 2 : ℤ)).toNat

end

end A183913.P4251753111155083731

/-! ## A183913.P2597683281453788614

`A201503(A133263(n+8)+A005843(n+4))`
-/

namespace A183913.P2597683281453788614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A133263 (n + 8) + A005843 (n + 4)).toNat

end

end A183913.P2597683281453788614

/-!
# A183914: Number of nondecreasing arrangements of n numbers in -6..6 with sum zero.

The programs for A183914, there is no canonical definition to state claims against.
-/

/-! ## A183914.P14987832996400698701

`A201503(A000217(n+11)+12)`
-/

namespace A183914.P14987832996400698701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 11) + 12).toNat

end

end A183914.P14987832996400698701

/-! ## A183914.P7610691377248000338

`A201503(A000124(n+12)-12)`
-/

namespace A183914.P7610691377248000338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000124 (n + 12) - 12).toNat

end

end A183914.P7610691377248000338

/-! ## A183914.P6287706716378848545

`A201503(A167614(n+10)+A023444(n))`
-/

namespace A183914.P6287706716378848545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 10) + A023444 n).toNat

end

end A183914.P6287706716378848545

/-! ## A183914.P15372064672877622266

`A201503(A052905(n+4)+A016897(n+8))`
-/

namespace A183914.P15372064672877622266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A052905 (n + 4) + A016897 (n + 8)).toNat

end

end A183914.P15372064672877622266

/-! ## A183914.P755537760076911159

`A201503(A055998(n+8)+A005408(n+7))`
-/

namespace A183914.P755537760076911159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A055998 (n + 8) + A005408 (n + 7)).toNat

end

end A183914.P755537760076911159

/-!
# A183915: Number of nondecreasing arrangements of n numbers in -7..7 with sum zero.

The programs for A183915, there is no canonical definition to state claims against.
-/

/-! ## A183915.P14228496378195069842

`A201503(A000217(n+14)-n)`
-/

namespace A183915.P14228496378195069842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 14) - (n : ℤ)).toNat

end

end A183915.P14228496378195069842

/-! ## A183915.P7165334739840866256

`A201503(A161680(n+15)-n)`
-/

namespace A183915.P7165334739840866256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A161680 (n + 15) - (n : ℤ)).toNat

end

end A183915.P7165334739840866256

/-! ## A183915.P3290582213678700289

`A201503(A167614(n+12)+A023444(n))`
-/

namespace A183915.P3290582213678700289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 12) + A023444 n).toNat

end

end A183915.P3290582213678700289

/-! ## A183915.P15567379662291941620

`A183917(A000124(n+7)-7)`
-/

namespace A183915.P15567379662291941620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000124 (n + 7) - 7).toNat

end

end A183915.P15567379662291941620

/-! ## A183915.P4207816452222145722

`A183917(A000217(n+6)+n+1)`
-/

namespace A183915.P4207816452222145722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A183915.P4207816452222145722

/-!
# A183916: Number of nondecreasing arrangements of n numbers in -8..8 with sum zero.

The programs for A183916, there is no canonical definition to state claims against.
-/

/-! ## A183916.P10352022481739943871

`A201503(A056115(n+11))`
-/

namespace A183916.P10352022481739943871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A056115 (n + 11)).toNat

end

end A183916.P10352022481739943871

/-! ## A183916.P12320339008539360553

`A201503(A167614(n+13)+A005408(n+6))`
-/

namespace A183916.P12320339008539360553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 13) + A005408 (n + 6)).toNat

end

end A183916.P12320339008539360553

/-! ## A183916.P13496973183360950968

`A183917(A000096(n+7)-6)`
-/

namespace A183916.P13496973183360950968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000096 (n + 7) - 6).toNat

end

end A183916.P13496973183360950968

/-! ## A183916.P1936801796057151325

`A183917(A000124(n+8)-8)`
-/

namespace A183916.P1936801796057151325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000124 (n + 8) - 8).toNat

end

end A183916.P1936801796057151325

/-! ## A183916.P2359261142282503868

`A183917(A000217(n+7)+n+1)`
-/

namespace A183916.P2359261142282503868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A183916.P2359261142282503868

/-!
# A183917: T(n,k) = number of nondecreasing arrangements of n numbers in -k..k with sum zero.

The programs for A183917, there is no canonical definition to state claims against.
-/

/-! ## A183917.P7878076712084511552

`A201503(A128116(n+1)+1+n)`
-/

namespace A183917.P7878076712084511552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A128116 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183917.P7878076712084511552

/-! ## A183917.P7048620784276164431

`A180980(A128116(n+1)+1+n)`
-/

namespace A183917.P7048620784276164431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180980 (A128116 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183917.P7048620784276164431

/-! ## A183917.P11202544326109671783

`A260999(2*A274106(n+1))`
-/

namespace A183917.P11202544326109671783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (2 * A274106 (n + 1)).toNat

end

end A183917.P11202544326109671783

/-! ## A183917.P9283497979094552038

`A260999(A055645(A181971(n))²)`
-/

namespace A183917.P9283497979094552038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A055645 (A181971 n).toNat ^ 2).toNat

end

end A183917.P9283497979094552038

/-! ## A183917.P9680934017824035227

`A181971(n)-A055641(A014780(2*(n+1)))`
-/

namespace A183917.P9680934017824035227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n - A055641 (A014780 (2 * (n + 1))).toNat

end

end A183917.P9680934017824035227

/-!
# A183920: Number of nondecreasing arrangements of n numbers in -2..2 with sum zero and sum of squares not greater than n*6/3.

The programs for A183920, the canonical program `A183920.P9589663836147478205` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183920 has offset 1).

The definition of A183920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183920.P9589663836147478205

`A025767(n+1)+A307872(n+1)+A307872(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A183920

/-- `A025767(n+1)+A307872(n+1)+A307872(n+2)` -/
def P9589663836147478205.Spec : Prop :=
  ∀ n, P9589663836147478205.a n = A183920 (n + 1)

theorem P9589663836147478205.correct : P9589663836147478205.Spec := by
  intro n
  simp only [A183920, Nat.add_sub_cancel]

end A183920

/-! ## A183920.P5243642444124058214

`A183928(n+2)+A307872(n+2)-A307872(n+3)`
-/

namespace A183920.P5243642444124058214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183928 (n + 2) + (A307872 (n + 2) - A307872 (n + 3))

end

end A183920.P5243642444124058214

namespace A183920

/-- `A183928(n+2)+A307872(n+2)-A307872(n+3)` -/
def P5243642444124058214.Spec : Prop :=
  ∀ n, P5243642444124058214.a n = A183920 (n + 1)

end A183920

/-! ## A183920.P17394552187132578291

`A082146(Δ[n²])+A025767(n+1)`
-/

namespace A183920.P17394552187132578291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A025767 (n + 1)

end

end A183920.P17394552187132578291

namespace A183920

/-- `A082146(Δ[n²])+A025767(n+1)` -/
def P17394552187132578291.Spec : Prop :=
  ∀ n, P17394552187132578291.a n = A183920 (n + 1)

end A183920

/-! ## A183920.P8178390622813521506

`A082146(2*n+1)+Δ[A008762(n)]`
-/

namespace A183920.P8178390622813521506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A183920.P8178390622813521506

namespace A183920

/-- `A082146(2*n+1)+Δ[A008762(n)]` -/
def P8178390622813521506.Spec : Prop :=
  ∀ n, P8178390622813521506.a n = A183920 (n + 1)

end A183920

/-! ## A183920.P2508224585264222225

`A183927(∑[n+2])`
-/

namespace A183920.P2508224585264222225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183920.P2508224585264222225

namespace A183920

/-- `A183927(∑[n+2])` -/
def P2508224585264222225.Spec : Prop :=
  ∀ n, P2508224585264222225.a n = A183920 (n + 1)

end A183920

/-!
# A183921: Number of nondecreasing arrangements of n numbers in -3..3 with sum zero and sum of squares not greater than n*12/3.

The programs for A183921, there is no canonical definition to state claims against.
-/

/-! ## A183921.P18163743375624871020

`A183927(∑[n+3]+1)`
-/

namespace A183921.P18163743375624871020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183921.P18163743375624871020

/-! ## A183921.P5447005169465739250

`record[A183927(A347633(n+1))]`
-/

namespace A183921.P5447005169465739250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183921.P5447005169465739250

/-! ## A183921.P18233943206116586127

`A183927(Δ[A008778(n)])+char[38]`
-/

namespace A183921.P18233943206116586127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183921.P18233943206116586127

/-! ## A183921.P9027618485023448093

`A183927(Δ[A008778(n)])%A122103(n+1)`
-/

namespace A183921.P9027618485023448093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183927 (f1 (n + 1) - f1 n).toNat) (A122103 (n + 1))

end

end A183921.P9027618485023448093

/-! ## A183921.P408055151332025485

`A014963(12*n+6)*A183927(Δ[A008778(n)])`
-/

namespace A183921.P408055151332025485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A183927 (f1 (n + 1) - f1 n).toNat

end

end A183921.P408055151332025485

/-!
# A183922: Number of nondecreasing arrangements of n numbers in -4..4 with sum zero and sum of squares not greater than n*20/3.

The programs for A183922, there is no canonical definition to state claims against.
-/

/-! ## A183922.P13230440925256843685

`A183927(∑[n+4]+3)`
-/

namespace A183922.P13230440925256843685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183922.P13230440925256843685

/-! ## A183922.P3008517560841148628

`or(char[1], A183927(A055998(n+2)))`
-/

namespace A183922.P3008517560841148628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183927 (A055998 (n + 2)).toNat)

end

end A183922.P3008517560841148628

/-! ## A183922.P10844360740708517173

`A007318(C(2, n))*A183927(A055998(n+2))`
-/

namespace A183922.P10844360740708517173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183927 (A055998 (n + 2)).toNat

end

end A183922.P10844360740708517173

/-! ## A183922.P2147261252219764154

`A183927(A055998(n+2))%A000045(n+12)`
-/

namespace A183922.P2147261252219764154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183927 (A055998 (n + 2)).toNat) (A000045 (n + 12))

end

end A183922.P2147261252219764154

/-! ## A183922.P17890394127667099281

`A007318(and(3, -n))*A183927(A055998(n+2))`
-/

namespace A183922.P17890394127667099281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A183927 (A055998 (n + 2)).toNat

end

end A183922.P17890394127667099281

/-!
# A183923: Number of nondecreasing arrangements of n numbers in -5..5 with sum zero and sum of squares not greater than n*30/3.

The programs for A183923, there is no canonical definition to state claims against.
-/

/-! ## A183923.P3120786813522225907

`A183927(∑[n+5]+6)`
-/

namespace A183923.P3120786813522225907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183923.P3120786813522225907

/-! ## A183923.P9173719264781131677

`A000041(3*n+1)-A029837(A000629(n))`
-/

namespace A183923.P9173719264781131677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 1) - A029837 (A000629 n).toNat

end

end A183923.P9173719264781131677

/-! ## A183923.P17512295623794227734

`A000041(3*n+1)-A056239(A174702(n+1))`
-/

namespace A183923.P17512295623794227734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 1) - A056239 (A174702 (n + 1)).toNat

end

end A183923.P17512295623794227734

/-!
# A183924: Number of nondecreasing arrangements of n numbers in -6..6 with sum zero and sum of squares not greater than n*42/3.

The programs for A183924, there is no canonical definition to state claims against.
-/

/-! ## A183924.P12326377547981053392

`A183927(∑[n+6]+10)`
-/

namespace A183924.P12326377547981053392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A183924.P12326377547981053392

/-! ## A183924.P5707832263685056431

`or(char[2], A183927(A052905(n+3)))`
-/

namespace A183924.P5707832263685056431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183927 (A052905 (n + 3)).toNat)

end

end A183924.P5707832263685056431

/-! ## A183924.P10242017469880392729

`A183927(A052905(n+3))%A334311(n+1)`
-/

namespace A183924.P10242017469880392729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183927 (A052905 (n + 3)).toNat) (A334311 (n + 1))

end

end A183924.P10242017469880392729

/-! ## A183924.P13037901185924542890

`A007318(C(2, n))*A183927(A052905(n+3))`
-/

namespace A183924.P13037901185924542890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183927 (A052905 (n + 3)).toNat

end

end A183924.P13037901185924542890

/-! ## A183924.P5225996581390704955

`A183927(A052905(n+3))+A000007(2*n+3)`
-/

namespace A183924.P5225996581390704955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A052905 (n + 3)).toNat + A000007 (2 * n + 3)

end

end A183924.P5225996581390704955

/-!
# A183925: Number of nondecreasing arrangements of n numbers in -7..7 with sum zero and sum of squares not greater than n*56/3.

The programs for A183925, there is no canonical definition to state claims against.
-/

/-! ## A183925.P13821993484197366128

`A183927(A055999(n+4))`
-/

namespace A183925.P13821993484197366128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A055999 (n + 4)).toNat

end

end A183925.P13821993484197366128

/-! ## A183925.P9164504511433465259

`A183927(eq[4, A219347(n)])`
-/

namespace A183925.P9164504511433465259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183925.P9164504511433465259

/-! ## A183925.P336433533630195865

`A183927(eq[6, A193592(n)])`
-/

namespace A183925.P336433533630195865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183925.P336433533630195865

/-! ## A183925.P17520812015087249856

`A183927(A052905(n+4)-1)`
-/

namespace A183925.P17520812015087249856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A052905 (n + 4) - 1).toNat

end

end A183925.P17520812015087249856

/-! ## A183925.P12598860124003887609

`A183927(A034856(n+6)-4)`
-/

namespace A183925.P12598860124003887609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A034856 (n + 6) - 4).toNat

end

end A183925.P12598860124003887609

/-!
# A183926: Number of nondecreasing arrangements of n numbers in -8..8 with sum zero and sum of squares not greater than n*72/3.

The programs for A183926, there is no canonical definition to state claims against.
-/

/-! ## A183926.P13033770447492347341

`A183927(eq[5, A219347(n)])`
-/

namespace A183926.P13033770447492347341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183926.P13033770447492347341

/-! ## A183926.P6298979853589236716

`A183927(eq[7, A193592(n)])`
-/

namespace A183926.P6298979853589236716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183926.P6298979853589236716

/-! ## A183926.P12035845348400470530

`A183927(Δ[A183906(n+4)])`
-/

namespace A183926.P12035845348400470530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (f1 (n + 1) - f1 n).toNat

end

end A183926.P12035845348400470530

/-! ## A183926.P6380021348448164074

`A183927(A183905(n+5)+4)`
-/

namespace A183926.P6380021348448164074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A183905 (n + 5) + 4).toNat

end

end A183926.P6380021348448164074

/-! ## A183926.P824849893049739104

`A183927(A000096(n+7)-6)`
-/

namespace A183926.P824849893049739104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A000096 (n + 7) - 6).toNat

end

end A183926.P824849893049739104

/-!
# A183927: T(n,k)=Number of nondecreasing arrangements of n numbers in -k..k with sum zero and sum of squares not greater than n*k*(k+1)/3.

The programs for A183927, there is no canonical definition to state claims against.
-/

/-! ## A183927.P7309064564544803429

`A376181(A300003(n+1))`
-/

namespace A183927.P7309064564544803429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A300003 (n + 1)).toNat

end

end A183927.P7309064564544803429

/-! ## A183927.P18080380969899691175

`A043556(A350259(n))`
-/

namespace A183927.P18080380969899691175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A350259 n).toNat

end

end A183927.P18080380969899691175

/-! ## A183927.P3218180795692519190

`A086597(A007635(2*n+1)-A023187(2*(n+1)))`
-/

namespace A183927.P3218180795692519190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A007635 (2 * n + 1) - A023187 (2 * (n + 1))).toNat

end

end A183927.P3218180795692519190

/-!
# A183928: Number of nondecreasing arrangements of n numbers in -2..2 with sum zero and sum of squares less than 2n.

The programs for A183928, the canonical program `A183928.P3163840417968673372` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183928 has offset 1).

The definition of A183928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183928.P3163840417968673372

`A025767(n)+A144677(n)-A001399(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A183928

/-- `A025767(n)+A144677(n)-A001399(n)` -/
def P3163840417968673372.Spec : Prop :=
  ∀ n, P3163840417968673372.a n = A183928 (n + 1)

theorem P3163840417968673372.correct : P3163840417968673372.Spec := by
  intro n
  simp only [A183928, Nat.add_sub_cancel]

end A183928

/-! ## A183928.P9852912222796157085

`A008765(n)+A028289(n)-A213042(n)`
-/

namespace A183928.P9852912222796157085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n + (A028289 n - A213042 n)

end

end A183928.P9852912222796157085

namespace A183928

/-- `A008765(n)+A028289(n)-A213042(n)` -/
def P9852912222796157085.Spec : Prop :=
  ∀ n, P9852912222796157085.a n = A183928 (n + 1)

end A183928

/-! ## A183928.P3873968001721228305

`A029046(2*n+1)+∑[A307018(n)]`
-/

namespace A183928.P3873968001721228305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183928.P3873968001721228305

namespace A183928

/-- `A029046(2*n+1)+∑[A307018(n)]` -/
def P3873968001721228305.Spec : Prop :=
  ∀ n, P3873968001721228305.a n = A183928 (n + 1)

end A183928

/-! ## A183928.P2606887150750300663

`∑[A103221(A055998(n))]-A307872(n+1)`
-/

namespace A183928.P2606887150750300663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307872 (n + 1)

end

end A183928.P2606887150750300663

namespace A183928

/-- `∑[A103221(A055998(n))]-A307872(n+1)` -/
def P2606887150750300663.Spec : Prop :=
  ∀ n, P2606887150750300663.a n = A183928 (n + 1)

end A183928

/-! ## A183928.P13192081743122567716

`A183935(∑[n+2])`
-/

namespace A183928.P13192081743122567716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183928.P13192081743122567716

namespace A183928

/-- `A183935(∑[n+2])` -/
def P13192081743122567716.Spec : Prop :=
  ∀ n, P13192081743122567716.a n = A183928 (n + 1)

end A183928

/-!
# A183929: Number of nondecreasing arrangements of n numbers in -3..3 with sum zero and sum of squares less than n*12/3.

The programs for A183929, there is no canonical definition to state claims against.
-/

/-! ## A183929.P18169236905147265589

`A183935(∑[n+3]+1)`
-/

namespace A183929.P18169236905147265589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183929.P18169236905147265589

/-! ## A183929.P543766053236994499

`record[A183935(A101881(n))]`
-/

namespace A183929.P543766053236994499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183929.P543766053236994499

/-! ## A183929.P3292987279716737192

`A183935(Δ[A008778(n)])+char[43]`
-/

namespace A183929.P3292987279716737192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183929.P3292987279716737192

/-! ## A183929.P2165445002991218837

`A183935(Δ[A008778(n)])%A000041(n+38)`
-/

namespace A183929.P2165445002991218837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183935 (f1 (n + 1) - f1 n).toNat) (A000041 (n + 38))

end

end A183929.P2165445002991218837

/-! ## A183929.P7077427012720427150

`A183935(A101881(2*(n+1)))%A007689(n)`
-/

namespace A183929.P7077427012720427150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183935 (A101881 (2 * (n + 1))).toNat) (A007689 n)

end

end A183929.P7077427012720427150

/-!
# A183930: Number of nondecreasing arrangements of n numbers in -4..4 with sum zero and sum of squares less than n*20/3.

The programs for A183930, there is no canonical definition to state claims against.
-/

/-! ## A183930.P3599865382744300

`A183935(∑[n+4]+3)`
-/

namespace A183930.P3599865382744300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183930.P3599865382744300

/-! ## A183930.P6713191425802626020

`A183935(A056000(n)+7)+char[38]`
-/

namespace A183930.P6713191425802626020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183930.P6713191425802626020

/-! ## A183930.P15119574644724680673

`and(log2(1/2), A183935(A027379(n+2)))`
-/

namespace A183930.P15119574644724680673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A183935 (A027379 (n + 2)).toNat)

end

end A183930.P15119574644724680673

/-! ## A183930.P16641605873111979040

`A007318(C(n, 2))*A183935(A027379(n+2))`
-/

namespace A183930.P16641605873111979040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A183935 (A027379 (n + 2)).toNat

end

end A183930.P16641605873111979040

/-! ## A183930.P15470497718142547888

`A007318(C(2, n))*A183935(A056000(n)+7)`
-/

namespace A183930.P15470497718142547888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183935 (A056000 n + 7).toNat

end

end A183930.P15470497718142547888

/-!
# A183931: Number of nondecreasing arrangements of n numbers in -5..5 with sum zero and sum of squares less than n*30/3.

The programs for A183931, there is no canonical definition to state claims against.
-/

/-! ## A183931.P12132547984162403385

`A183935(∑[n+5]+6)`
-/

namespace A183931.P12132547984162403385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183931.P12132547984162403385

/-! ## A183931.P259992636201930469

`A183935(A005408(n)+A052905(n)+9)%A007689(n+1)`
-/

namespace A183931.P259992636201930469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183935 (A005408 n + (A052905 n + 9)).toNat) (A007689 (n + 1))

end

end A183931.P259992636201930469

/-! ## A183931.P5965996419029930487

`A143823(2*n)-A357634(A000085(n))`
-/

namespace A183931.P5965996419029930487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (2 * n) - A357634 (A000085 n).toNat

end

end A183931.P5965996419029930487

/-!
# A183932: Number of nondecreasing arrangements of n numbers in -6..6 with sum zero and sum of squares less than n*42/3.

The programs for A183932, there is no canonical definition to state claims against.
-/

/-! ## A183932.P14780268280548651186

`A183935(A052905(n+3))`
-/

namespace A183932.P14780268280548651186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A052905 (n + 3)).toNat

end

end A183932.P14780268280548651186

/-! ## A183932.P13341874342707095243

`A183935(A056119(n)+16)`
-/

namespace A183932.P13341874342707095243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A056119 n + 16).toNat

end

end A183932.P13341874342707095243

/-! ## A183932.P3579621779980996062

`A183935(eq[3, A219347(n)])`
-/

namespace A183932.P3579621779980996062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183932.P3579621779980996062

/-! ## A183932.P12381760651490949068

`A183935(eq[5, A193592(n)])`
-/

namespace A183932.P12381760651490949068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183932.P12381760651490949068

/-! ## A183932.P4099494144308909954

`A183935(A055999(n+3)+1)`
-/

namespace A183932.P4099494144308909954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A055999 (n + 3) + 1).toNat

end

end A183932.P4099494144308909954

/-!
# A183933: Number of nondecreasing arrangements of n numbers in -7..7 with sum zero and sum of squares less than n*56/3.

The programs for A183933, there is no canonical definition to state claims against.
-/

/-! ## A183933.P5112340387938559894

`A183935(A055999(n+4))`
-/

namespace A183933.P5112340387938559894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A055999 (n + 4)).toNat

end

end A183933.P5112340387938559894

/-! ## A183933.P2961638682720591384

`A183935(eq[4, A219347(n)])`
-/

namespace A183933.P2961638682720591384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183933.P2961638682720591384

/-! ## A183933.P17909629266143526551

`A183935(eq[6, A193592(n)])`
-/

namespace A183933.P17909629266143526551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183933.P17909629266143526551

/-! ## A183933.P16498136538904886927

`A183935(Δ[A023551(n+2)])`
-/

namespace A183933.P16498136538904886927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (f1 (n + 1) - f1 n).toNat

end

end A183933.P16498136538904886927

/-! ## A183933.P17736480994854633879

`A183935(A155212(n+3)+2)`
-/

namespace A183933.P17736480994854633879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A155212 (n + 3) + 2).toNat

end

end A183933.P17736480994854633879

/-!
# A183934: Number of nondecreasing arrangements of n numbers in -8..8 with sum zero and sum of squares less than n*72/3.

The programs for A183934, there is no canonical definition to state claims against.
-/

/-! ## A183934.P2461381305746833323

`A183935(eq[5, A219347(n)])`
-/

namespace A183934.P2461381305746833323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183934.P2461381305746833323

/-! ## A183934.P3887063493682103080

`A183935(eq[7, A193592(n)])`
-/

namespace A183934.P3887063493682103080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183934.P3887063493682103080

/-! ## A183934.P1935145208571440808

`A183935(A155212(n+4)+1)`
-/

namespace A183934.P1935145208571440808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A155212 (n + 4) + 1).toNat

end

end A183934.P1935145208571440808

/-! ## A183934.P14638373086303636061

`A183935(A000096(n+7)-6)`
-/

namespace A183934.P14638373086303636061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A000096 (n + 7) - 6).toNat

end

end A183934.P14638373086303636061

/-! ## A183934.P11860746963360475536

`A183935(A000217(n+8)-7)`
-/

namespace A183934.P11860746963360475536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A000217 (n + 8) - 7).toNat

end

end A183934.P11860746963360475536

/-!
# A183935: T(n,k)=Number of nondecreasing arrangements of n numbers in -k..k with sum zero and sum of squares less than n*k*(k+1)/3.

The programs for A183935, there is no canonical definition to state claims against.
-/

/-! ## A183935.P9915777734649218318

`A000196(A003004(A144401(n+1)²))`
-/

namespace A183935.P9915777734649218318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003004 (A144401 (n + 1) ^ 2).toNat).toNat

end

end A183935.P9915777734649218318

/-! ## A183935.P1850311000747544591

`A112505(A193590(n))`
-/

namespace A183935.P1850311000747544591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112505 (A193590 n).toNat

end

end A183935.P1850311000747544591

/-! ## A183935.P17282785460320118721

`A110592(A063834(n)%A308704(n+1))`
-/

namespace A183935.P17282785460320118721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (Int.tmod (A063834 n) (A308704 (n + 1))).toNat

end

end A183935.P17282785460320118721

/-!
# A183936: Number of strings of n numbers x(i) in -1..1 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183936, there is no canonical definition to state claims against.
-/

/-! ## A183936.P2413206209698752616

`A183944(∑[n+1])`
-/

namespace A183936.P2413206209698752616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183936.P2413206209698752616

/-! ## A183936.P3375876953508905836

`or(1, A183944(A025747(n)))`
-/

namespace A183936.P3375876953508905836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (A025747 n).toNat)

end

end A183936.P3375876953508905836

/-! ## A183936.P8260600055053227566

`or(1, A183944(Δ[A000292(n)]))`
-/

namespace A183936.P8260600055053227566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (f1 (n + 1) - f1 n).toNat)

end

end A183936.P8260600055053227566

/-! ## A183936.P2204799557807252867

`or(1, A183944(A000217(n+1)))`
-/

namespace A183936.P2204799557807252867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (A000217 (n + 1)).toNat)

end

end A183936.P2204799557807252867

/-! ## A183936.P16092825832095950053

`gcd(A000038(n), A183944(A000217(n+1)))`
-/

namespace A183936.P16092825832095950053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183944 (A000217 (n + 1)).toNat)

end

end A183936.P16092825832095950053

/-!
# A183937: Number of strings of n numbers x(i) in -2..2 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183937, there is no canonical definition to state claims against.
-/

/-! ## A183937.P3028701127064827318

`A183944(∑[n+2])`
-/

namespace A183937.P3028701127064827318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183937.P3028701127064827318

/-! ## A183937.P3944746743077121777

`or(1, A183944(A000096(n+1)))`
-/

namespace A183937.P3944746743077121777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (A000096 (n + 1)).toNat)

end

end A183937.P3944746743077121777

/-! ## A183937.P9560674707826501308

`lcm(A158388(n), A183944(A000096(n+1)))`
-/

namespace A183937.P9560674707826501308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A183944 (A000096 (n + 1)).toNat)

end

end A183937.P9560674707826501308

/-! ## A183937.P9570708121322613643

`A183944(A000096(n+1))%A268314(n+1)`
-/

namespace A183937.P9570708121322613643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183944 (A000096 (n + 1)).toNat) (A268314 (n + 1))

end

end A183937.P9570708121322613643

/-! ## A183937.P8349828151369084487

`A007318(C(2, n))*A183944(A000096(n+1))`
-/

namespace A183937.P8349828151369084487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183944 (A000096 (n + 1)).toNat

end

end A183937.P8349828151369084487

/-!
# A183938: Number of strings of n numbers x(i) in -3..3 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183938, there is no canonical definition to state claims against.
-/

/-! ## A183938.P4272641898081249748

`A183944(∑[n+3]+1)`
-/

namespace A183938.P4272641898081249748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183938.P4272641898081249748

/-! ## A183938.P4323816165684385699

`or(1, A183944(Δ[A008778(n)]))`
-/

namespace A183938.P4323816165684385699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (f1 (n + 1) - f1 n).toNat)

end

end A183938.P4323816165684385699

/-! ## A183938.P13182504793470239579

`or(char[1], A183944(A034856(n+2)))`
-/

namespace A183938.P13182504793470239579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183944 (A034856 (n + 2)).toNat)

end

end A183938.P13182504793470239579

/-! ## A183938.P12736055447165678288

`A183944(Δ[A008778(n)])%A000108(n+7)`
-/

namespace A183938.P12736055447165678288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183944 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 7))

end

end A183938.P12736055447165678288

/-! ## A183938.P17255053764100444553

`A183944(Δ[A008778(n)])+A008683(9*(n+1))`
-/

namespace A183938.P17255053764100444553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (f1 (n + 1) - f1 n).toNat + A008683 (9 * (n + 1))

end

end A183938.P17255053764100444553

/-!
# A183939: Number of strings of n numbers x(i) in -4..4 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183939, there is no canonical definition to state claims against.
-/

/-! ## A183939.P8876047916565449596

`A183944(∑[n+4]+3)`
-/

namespace A183939.P8876047916565449596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183939.P8876047916565449596

/-! ## A183939.P5378688086558952063

`or(1, A183944(A027379(n+2)))`
-/

namespace A183939.P5378688086558952063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (A027379 (n + 2)).toNat)

end

end A183939.P5378688086558952063

/-! ## A183939.P5523930439541930434

`or(1, A183944(A055998(n+2)))`
-/

namespace A183939.P5523930439541930434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183944 (A055998 (n + 2)).toNat)

end

end A183939.P5523930439541930434

/-! ## A183939.P6343218228168970883

`A007318(C(2, n))*A183944(A055998(n+2))`
-/

namespace A183939.P6343218228168970883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183944 (A055998 (n + 2)).toNat

end

end A183939.P6343218228168970883

/-! ## A183939.P4335674344273839930

`A183944(A055998(n+2))%A000032(2*n)²`
-/

namespace A183939.P4335674344273839930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183944 (A055998 (n + 2)).toNat) (A000032 (2 * n) ^ 2)

end

end A183939.P4335674344273839930

/-!
# A183940: Number of strings of n numbers x(i) in -5..5 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183940, there is no canonical definition to state claims against.
-/

/-! ## A183940.P13723616749310119823

`A183944(Δ[A264443(n)])`
-/

namespace A183940.P13723616749310119823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (f1 (n + 1) - f1 n).toNat

end

end A183940.P13723616749310119823

/-! ## A183940.P10813559658009435559

`A183944(A046691(n+3))`
-/

namespace A183940.P10813559658009435559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A046691 (n + 3)).toNat

end

end A183940.P10813559658009435559

/-! ## A183940.P17224929700362473622

`A183944(eq[2, A092921(n)])`
-/

namespace A183940.P17224929700362473622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183940.P17224929700362473622

/-! ## A183940.P16440988646538317726

`A183944(eq[3, A152157(n)])`
-/

namespace A183940.P16440988646538317726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183940.P16440988646538317726

/-! ## A183940.P17297388464347807178

`A183944(eq[4, A054123(n)])`
-/

namespace A183940.P17297388464347807178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183940.P17297388464347807178

/-!
# A183941: Number of strings of n numbers x(i) in -6..6 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183941, there is no canonical definition to state claims against.
-/

/-! ## A183941.P4725258161729246697

`A183944(A302537(n)+15)`
-/

namespace A183941.P4725258161729246697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A302537 n + 15).toNat

end

end A183941.P4725258161729246697

/-! ## A183941.P12203174532809762299

`A183944(A056119(n)+16)`
-/

namespace A183941.P12203174532809762299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A056119 n + 16).toNat

end

end A183941.P12203174532809762299

/-! ## A183941.P2447244506600102485

`A183944(eq[3, A219347(n)])`
-/

namespace A183941.P2447244506600102485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183941.P2447244506600102485

/-! ## A183941.P7635229925706672574

`A183944(eq[5, A152157(n)])`
-/

namespace A183941.P7635229925706672574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183941.P7635229925706672574

/-! ## A183941.P7548235498472975472

`A183944(eq[5, A193592(n)])`
-/

namespace A183941.P7548235498472975472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183941.P7548235498472975472

/-!
# A183942: Number of strings of n numbers x(i) in -7..7 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183942, there is no canonical definition to state claims against.
-/

/-! ## A183942.P8094040002425866386

`A183944(A055999(n+4))`
-/

namespace A183942.P8094040002425866386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A055999 (n + 4)).toNat

end

end A183942.P8094040002425866386

/-! ## A183942.P3364110435316362897

`A183944(eq[4, A219347(n)])`
-/

namespace A183942.P3364110435316362897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183942.P3364110435316362897

/-! ## A183942.P10296334338222417505

`A183944(eq[6, A193592(n)])`
-/

namespace A183942.P10296334338222417505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183942.P10296334338222417505

/-! ## A183942.P11725775557214675786

`A183944(eq[7, A152157(n)])`
-/

namespace A183942.P11725775557214675786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183942.P11725775557214675786

/-! ## A183942.P13079565605388567840

`A183944(Δ[A023551(n+2)])`
-/

namespace A183942.P13079565605388567840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (f1 (n + 1) - f1 n).toNat

end

end A183942.P13079565605388567840

/-!
# A183943: Number of strings of n numbers x(i) in -8..8 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183943, there is no canonical definition to state claims against.
-/

/-! ## A183943.P16763006090254784212

`A183944(eq[5, A219347(n)])`
-/

namespace A183943.P16763006090254784212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183943.P16763006090254784212

/-! ## A183943.P15124729210597276328

`A183944(eq[7, A193592(n)])`
-/

namespace A183943.P15124729210597276328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183943.P15124729210597276328

/-! ## A183943.P12681794166904932028

`A183944(Δ[A183906(n+4)])`
-/

namespace A183943.P12681794166904932028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (f1 (n + 1) - f1 n).toNat

end

end A183943.P12681794166904932028

/-! ## A183943.P1612336519076294663

`A183944(eq[12, A185782(n+1)])`
-/

namespace A183943.P1612336519076294663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183943.P1612336519076294663

/-!
# A183944: T(n,k)=Number of strings of n numbers x(i) in -k..k with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183944, there is no canonical definition to state claims against.
-/

/-! ## A183944.P11998361429409234748

`A031285(A283054(n))-A259344(n+1)`
-/

namespace A183944.P11998361429409234748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A283054 n).toNat - A259344 (n + 1)

end

end A183944.P11998361429409234748

/-! ## A183944.P7646448892229655115

`A338842(or(A015161(n)², A144042(n+1)))`
-/

namespace A183944.P7646448892229655115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338842 (Int.lor (A015161 n ^ 2) (A144042 (n + 1))).toNat

end

end A183944.P7646448892229655115

/-! ## A183944.P12058286241370255968

`A338842(A144042(n+1)^∑[A015161(n)])`
-/

namespace A183944.P12058286241370255968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338842 (SequenceMachineLib.roundAway ((A144042 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A183944.P12058286241370255968

/-! ## A183944.P7587833130960665915

`A306069(A258309(n))%A165780(3*n+2)`
-/

namespace A183944.P7587833130960665915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306069 (A258309 n).toNat) (A165780 (3 * n + 2))

end

end A183944.P7587833130960665915

/-! ## A183944.P3885647333412836579

`A321620(A108558(n))*A338842(A144042(n+1))`
-/

namespace A183944.P3885647333412836579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321620 (A108558 n).toNat * A338842 (A144042 (n + 1)).toNat

end

end A183944.P3885647333412836579

/-!
# A183945: Number of strings of numbers x(i=1..n) in 0..n with sum i^2*x(i) equal to n^3.

The programs for A183945, there is no canonical definition to state claims against.
-/

/-! ## A183945.P17023351922197186512

`A183953((n+1)²+n²)`
-/

namespace A183945.P17023351922197186512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 ((n + 1) ^ 2 + n ^ 2)

end

end A183945.P17023351922197186512

/-! ## A183945.P14424380405002518374

`A183953(A001844(n))+A025439(n)`
-/

namespace A183945.P14424380405002518374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A001844 n).toNat + A025439 n

end

end A183945.P14424380405002518374

/-! ## A183945.P18005730035559576792

`A185255(n)+A183953(A001844(n))`
-/

namespace A183945.P18005730035559576792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A183953 (A001844 n).toNat

end

end A183945.P18005730035559576792

/-! ## A183945.P14491534040476039721

`A183953(A001844(n))^A178334(n)`
-/

namespace A183945.P14491534040476039721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183953 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A183945.P14491534040476039721

/-! ## A183945.P12014927390913012933

`A183953(A001844(n))*A307608(2*(n+2))`
-/

namespace A183945.P12014927390913012933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A001844 n).toNat * A307608 (2 * (n + 2))

end

end A183945.P12014927390913012933

/-!
# A183946: Number of strings of numbers x(i=1..n) in 0..2 with sum i^2*x(i) equal to n^2*2.

The programs for A183946, there is no canonical definition to state claims against.
-/

/-! ## A183946.P10883715464319134996

`A183953(∑[n+2])`
-/

namespace A183946.P10883715464319134996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183946.P10883715464319134996

/-! ## A183946.P1306266995205937894

`or(char[1], A183953(A000096(n+1)))`
-/

namespace A183946.P1306266995205937894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183953 (A000096 (n + 1)).toNat)

end

end A183946.P1306266995205937894

/-! ## A183946.P17188401551084792471

`A183953(A000096(n+1))+A000035(2*n)`
-/

namespace A183946.P17188401551084792471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A183946.P17188401551084792471

/-! ## A183946.P5983903338215626318

`A183953(A000096(n+1))+C(A000038(n), 3)`
-/

namespace A183946.P5983903338215626318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000096 (n + 1)).toNat + (Nat.choose (A000038 n).toNat 3 : ℤ)

end

end A183946.P5983903338215626318

/-! ## A183946.P2664978401077782089

`A183953(A000096(n+1))^log2(A040001(2*n))`
-/

namespace A183946.P2664978401077782089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183953 (A000096 (n + 1)).toNat : ℝ) ^ (Real.logb 2 (A040001 (2 * n) : ℝ))

end

end A183946.P2664978401077782089

/-! ## A183946.P3503566211249136897

`A183953(A000096(n+1))+C(A008683(n+1)², 3)`
-/

namespace A183946.P3503566211249136897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000096 (n + 1)).toNat + (Nat.choose (A008683 (n + 1) ^ 2).toNat 3 : ℤ)

end

end A183946.P3503566211249136897

/-! ## A183946.P3798477257656703621

`A007318(A000096(n))*A183953(A000096(n+1))`
-/

namespace A183946.P3798477257656703621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A183953 (A000096 (n + 1)).toNat

end

end A183946.P3798477257656703621

/-!
# A183947: Number of strings of numbers x(i=1..n) in 0..3 with sum i^2*x(i) equal to n^2*3.

The programs for A183947, there is no canonical definition to state claims against.
-/

/-! ## A183947.P8488139497996013880

`A183953(Δ[A008778(n)])`
-/

namespace A183947.P8488139497996013880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183947.P8488139497996013880

/-! ## A183947.P18330802152639112324

`A183953(A034856(n+2))`
-/

namespace A183947.P18330802152639112324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A034856 (n + 2)).toNat

end

end A183947.P18330802152639112324

/-! ## A183947.P10645940148585565452

`A183953(A027379(n+1)+1)`
-/

namespace A183947.P10645940148585565452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A027379 (n + 1) + 1).toNat

end

end A183947.P10645940148585565452

/-! ## A183947.P1947050400161959839

`A183953(A055998(n+1)+1)`
-/

namespace A183947.P1947050400161959839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055998 (n + 1) + 1).toNat

end

end A183947.P1947050400161959839

/-! ## A183947.P12855864715096145941

`A183953(A046691(n+1)+2)`
-/

namespace A183947.P12855864715096145941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A046691 (n + 1) + 2).toNat

end

end A183947.P12855864715096145941

/-! ## A183947.P14684537468768148960

`A183953(A055999(n+1)-n)`
-/

namespace A183947.P14684537468768148960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 (n + 1) - (n : ℤ)).toNat

end

end A183947.P14684537468768148960

/-!
# A183948: Number of strings of numbers x(i=1..n) in 0..4 with sum i^2*x(i) equal to n^2*4.

The programs for A183948, there is no canonical definition to state claims against.
-/

/-! ## A183948.P14521175382443434230

`A183953(A027379(n+2))`
-/

namespace A183948.P14521175382443434230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A027379 (n + 2)).toNat

end

end A183948.P14521175382443434230

/-! ## A183948.P14879605860053367825

`A183953(A055998(n+2))`
-/

namespace A183948.P14879605860053367825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055998 (n + 2)).toNat

end

end A183948.P14879605860053367825

/-! ## A183948.P3964330342116195357

`A183953(A155212(n)+5)`
-/

namespace A183948.P3964330342116195357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A155212 n + 5).toNat

end

end A183948.P3964330342116195357

/-! ## A183948.P8932026233310945276

`A183953(A056000(n)+7)`
-/

namespace A183948.P8932026233310945276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A056000 n + 7).toNat

end

end A183948.P8932026233310945276

/-! ## A183948.P15578596428539409401

`A183953(Δ[A006416(n+2)])`
-/

namespace A183948.P15578596428539409401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183948.P15578596428539409401

/-! ## A183948.P12797886261812185205

`A183953(A052905(n+1)+2)`
-/

namespace A183948.P12797886261812185205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A052905 (n + 1) + 2).toNat

end

end A183948.P12797886261812185205

/-! ## A183948.P1832993894414405471

`A183953(Δ[A008778(n+1)]-1)`
-/

namespace A183948.P1832993894414405471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n - 1).toNat

end

end A183948.P1832993894414405471

/-!
# A183949: Number of strings of numbers x(i=1..n) in 0..5 with sum i^2*x(i) equal to n^2*5.

The programs for A183949, there is no canonical definition to state claims against.
-/

/-! ## A183949.P5121913624019582665

`A183953(Δ[A264443(n)])`
-/

namespace A183949.P5121913624019582665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183949.P5121913624019582665

/-! ## A183949.P3641600929543667776

`A183953(A046691(n+3))`
-/

namespace A183949.P3641600929543667776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A046691 (n + 3)).toNat

end

end A183949.P3641600929543667776

/-! ## A183949.P3797904113201931567

`A183953(A060577(n+4))`
-/

namespace A183949.P3797904113201931567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A060577 (n + 4)).toNat

end

end A183949.P3797904113201931567

/-! ## A183949.P10007335290154577840

`A183953(Δ[A023545(n+1)])`
-/

namespace A183949.P10007335290154577840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183949.P10007335290154577840

/-! ## A183949.P4528216465617397543

`A183953(Δ[A006416(n+3)]-1)`
-/

namespace A183949.P4528216465617397543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n - 1).toNat

end

end A183949.P4528216465617397543

/-! ## A183949.P16473177066263876448

`A183953(A264443(n+1)-A264443(n))`
-/

namespace A183949.P16473177066263876448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A264443 (n + 1) - A264443 n).toNat

end

end A183949.P16473177066263876448

/-!
# A183950: Number of strings of numbers x(i=1..n) in 0..6 with sum i^2*x(i) equal to n^2*6.

The programs for A183950, there is no canonical definition to state claims against.
-/

/-! ## A183950.P13941391400841602690

`A183953(A052905(n+3))`
-/

namespace A183950.P13941391400841602690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A052905 (n + 3)).toNat

end

end A183950.P13941391400841602690

/-! ## A183950.P11805806022256519186

`A183953(A000124(n+6)-6)`
-/

namespace A183950.P11805806022256519186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 6) - 6).toNat

end

end A183950.P11805806022256519186

/-! ## A183950.P11351868453750185635

`A183953(Δ[A023551(n+1)]+1)`
-/

namespace A183950.P11351868453750185635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n + 1).toNat

end

end A183950.P11351868453750185635

/-! ## A183950.P3406540443160118087

`A183953(Δ[A264443(n+1)]-1)`
-/

namespace A183950.P3406540443160118087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n - 1).toNat

end

end A183950.P3406540443160118087

/-! ## A183950.P1636561531828109233

`A183953(Δ[A023545(n+2)]-1)`
-/

namespace A183950.P1636561531828109233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n - 1).toNat

end

end A183950.P1636561531828109233

/-!
# A183951: Number of strings of numbers x(i=1..n) in 0..7 with sum i^2*x(i) equal to n^2*7.

The programs for A183951, there is no canonical definition to state claims against.
-/

/-! ## A183951.P1512114858185595421

`record[A183953(∑[n+4])]`
-/

namespace A183951.P1512114858185595421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183951.P1512114858185595421

/-! ## A183951.P15892489325564921185

`A183953(A055999(n+4))`
-/

namespace A183951.P15892489325564921185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 (n + 4)).toNat

end

end A183951.P15892489325564921185

/-! ## A183951.P11772549297410149954

`A183953(Δ[A023551(n+2)])`
-/

namespace A183951.P11772549297410149954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183951.P11772549297410149954

/-! ## A183951.P10725369945060572804

`A183953(A052905(n+4)-1)`
-/

namespace A183951.P10725369945060572804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A052905 (n + 4) - 1).toNat

end

end A183951.P10725369945060572804

/-! ## A183951.P15338490099320032733

`A183953(A000124(n+7)-7)`
-/

namespace A183951.P15338490099320032733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 7) - 7).toNat

end

end A183951.P15338490099320032733

/-!
# A183952: Number of strings of numbers x(i=1..n) in 0..8 with sum i^2*x(i) equal to n^2*8.

The programs for A183952, there is no canonical definition to state claims against.
-/

/-! ## A183952.P11288915163951135540

`A183953(A155212(n+4)+1)`
-/

namespace A183952.P11288915163951135540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A155212 (n + 4) + 1).toNat

end

end A183952.P11288915163951135540

/-! ## A183952.P15795631603068408011

`A183953(A055999(n+5)-1)`
-/

namespace A183952.P15795631603068408011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 (n + 5) - 1).toNat

end

end A183952.P15795631603068408011

/-! ## A183952.P9333829168771699389

`A183953(A000217(n+8)-7)`
-/

namespace A183952.P9333829168771699389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 8) - 7).toNat

end

end A183952.P9333829168771699389

/-! ## A183952.P5889306241192834021

`A183953(A000124(n+8)-8)`
-/

namespace A183952.P5889306241192834021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 8) - 8).toNat

end

end A183952.P5889306241192834021

/-! ## A183952.P12114815386989884833

`A183953(A026741(2*n+1)+A000124(n+6)+6)`
-/

namespace A183952.P12114815386989884833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A026741 (2 * n + 1) + (A000124 (n + 6) + 6)).toNat

end

end A183952.P12114815386989884833

/-!
# A183953: T(n,k) is the number of strings of numbers x(i=1..n) in 0..k with sum i^2*x(i) equal to k*n^2.

The programs for A183953, there is no canonical definition to state claims against.
-/

/-! ## A183953.P10597223573594263752

`A182597(A144287(n+1)+2)`
-/

namespace A183953.P10597223573594263752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182597 (A144287 (n + 1) + 2).toNat

end

end A183953.P10597223573594263752

/-! ## A183953.P12971236343923656357

`A212632(A202252(n+1)+A091225(n))`
-/

namespace A183953.P12971236343923656357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A202252 (n + 1) + A091225 n).toNat

end

end A183953.P12971236343923656357

/-! ## A183953.P12297065976066363402

`A117546(A030308(n+4)+A001631(n))`
-/

namespace A183953.P12297065976066363402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 (A030308 (n + 4) + A001631 n).toNat

end

end A183953.P12297065976066363402

/-! ## A183953.P1572920804606391229

`A163994(A089177(3*n)*A287214(n))`
-/

namespace A183953.P1572920804606391229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163994 (A089177 (3 * n) * A287214 n).toNat

end

end A183953.P1572920804606391229

/-! ## A183953.P14625727442616498779

`A055642(A127102(n+3)%A252501(n))`
-/

namespace A183953.P14625727442616498779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A127102 (n + 3)) (A252501 n)).toNat

end

end A183953.P14625727442616498779

/-!
# A183954: Number of strings of numbers x(i=1..3) in 0..n with sum i^2*x(i) equal to n*9.

The programs for A183954, the canonical program `A183954.P12203830716976065382` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183954 has offset 1).

The definition of A183954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183954.P12203830716976065382

`A011862(n)+A008618(10*(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A183954

/-- `A011862(n)+A008618(10*(n+1))` -/
def P12203830716976065382.Spec : Prop :=
  ∀ n, P12203830716976065382.a n = A183954 (n + 1)

theorem P12203830716976065382.correct : P12203830716976065382.Spec := by
  intro n
  simp only [A183954, Nat.add_sub_cancel]

end A183954

/-! ## A183954.P3886278305274304566

`∑[A289133(n+4)]-A289133(2*n)`
-/

namespace A183954.P3886278305274304566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289133 (2 * n)

end

end A183954.P3886278305274304566

namespace A183954

/-- `∑[A289133(n+4)]-A289133(2*n)` -/
def P3886278305274304566.Spec : Prop :=
  ∀ n, P3886278305274304566.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P17531433685526640993

`A036407(n)+A004396(A004396(n+1))`
-/

namespace A183954.P17531433685526640993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 n + A004396 (A004396 (n + 1)).toNat

end

end A183954.P17531433685526640993

namespace A183954

/-- `A036407(n)+A004396(A004396(n+1))` -/
def P17531433685526640993.Spec : Prop :=
  ∀ n, P17531433685526640993.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P16622756152140818226

`A008618(2*(n+1))+A004396(A001840(n))`
-/

namespace A183954.P16622756152140818226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * (n + 1)) + A004396 (A001840 n).toNat

end

end A183954.P16622756152140818226

namespace A183954

/-- `A008618(2*(n+1))+A004396(A001840(n))` -/
def P16622756152140818226.Spec : Prop :=
  ∀ n, P16622756152140818226.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P2548243104981535184

`A002264(A002264(n+10))+A004396(A001840(n))`
-/

namespace A183954.P2548243104981535184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (n + 10)).toNat + A004396 (A001840 n).toNat

end

end A183954.P2548243104981535184

namespace A183954

/-- `A002264(A002264(n+10))+A004396(A001840(n))` -/
def P2548243104981535184.Spec : Prop :=
  ∀ n, P2548243104981535184.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P3887521278185880231

`A008618(A055999(2*n))+A008618(n+1)`
-/

namespace A183954.P3887521278185880231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A055999 (2 * n)).toNat + A008618 (n + 1)

end

end A183954.P3887521278185880231

namespace A183954

/-- `A008618(A055999(2*n))+A008618(n+1)` -/
def P3887521278185880231.Spec : Prop :=
  ∀ n, P3887521278185880231.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P3150315504507047196

`A008618(A034856(2*(n+1)))+A008618(n+1)`
-/

namespace A183954.P3150315504507047196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A034856 (2 * (n + 1))).toNat + A008618 (n + 1)

end

end A183954.P3150315504507047196

namespace A183954

/-- `A008618(A034856(2*(n+1)))+A008618(n+1)` -/
def P3150315504507047196.Spec : Prop :=
  ∀ n, P3150315504507047196.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P14078897490186530039

`A183953(A167614(n+1))`
-/

namespace A183954.P14078897490186530039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167614 (n + 1)).toNat

end

end A183954.P14078897490186530039

namespace A183954

/-- `A183953(A167614(n+1))` -/
def P14078897490186530039.Spec : Prop :=
  ∀ n, P14078897490186530039.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P6972401833197310870

`A183953(A167499(n)+n)`
-/

namespace A183954.P6972401833197310870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167499 n + (n : ℤ)).toNat

end

end A183954.P6972401833197310870

namespace A183954

/-- `A183953(A167499(n)+n)` -/
def P6972401833197310870.Spec : Prop :=
  ∀ n, P6972401833197310870.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P2945309149424831587

`A183953(eq[2, A104763(n+1)]+1)`
-/

namespace A183954.P2945309149424831587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183954.P2945309149424831587

namespace A183954

/-- `A183953(eq[2, A104763(n+1)]+1)` -/
def P2945309149424831587.Spec : Prop :=
  ∀ n, P2945309149424831587.a n = A183954 (n + 1)

end A183954

/-!
# A183955: Number of strings of numbers x(i=1..4) in 0..n with sum i^2*x(i) equal to n*16.

The programs for A183955, there is no canonical definition to state claims against.
-/

/-! ## A183955.P11660223258814885954

`A183953(A055999(n)+10)`
-/

namespace A183955.P11660223258814885954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 n + 10).toNat

end

end A183955.P11660223258814885954

/-! ## A183955.P2196486318837654343

`A183953(Δ[A008778(n)]+6)`
-/

namespace A183955.P2196486318837654343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n + 6).toNat

end

end A183955.P2196486318837654343

/-! ## A183955.P7047309302069671732

`A183953(A167614(n+2)+1)`
-/

namespace A183955.P7047309302069671732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167614 (n + 2) + 1).toNat

end

end A183955.P7047309302069671732

/-! ## A183955.P14354798065297538222

`A183953(A166136(n+2)-2)`
-/

namespace A183955.P14354798065297538222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A166136 (n + 2) - 2).toNat

end

end A183955.P14354798065297538222

/-! ## A183955.P15620380900047475416

`A183953(Δ[A264443(n)-n²])`
-/

namespace A183955.P15620380900047475416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183955.P15620380900047475416

/-! ## A183955.P7863828959856907680

`A183953(A166136(n+1)+1+n)`
-/

namespace A183955.P7863828959856907680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183955.P7863828959856907680

/-! ## A183955.P17012531843157606718

`A183953(Δ[A023545(n+1)-n²])`
-/

namespace A183955.P17012531843157606718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183955.P17012531843157606718

/-!
# A183956: Number of strings of numbers x(i=1..5) in 0..n with sum i^2*x(i) equal to n*25.

The programs for A183956, there is no canonical definition to state claims against.
-/

/-! ## A183956.P4966314716836332717

`A183953(A167499(n+3))`
-/

namespace A183956.P4966314716836332717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167499 (n + 3)).toNat

end

end A183956.P4966314716836332717

/-! ## A183956.P16568179563778308725

`A183953(A238531(n+5)+3)`
-/

namespace A183956.P16568179563778308725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A238531 (n + 5) + 3).toNat

end

end A183956.P16568179563778308725

/-! ## A183956.P10288250739820476836

`A183953(A027379(n+2)+8)`
-/

namespace A183956.P10288250739820476836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A027379 (n + 2) + 8).toNat

end

end A183956.P10288250739820476836

/-! ## A183956.P1056028369737921056

`A183953(A038722(Δ[A264443(n)]))`
-/

namespace A183956.P1056028369737921056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A183956.P1056028369737921056

/-! ## A183956.P13613108596630756542

`record[A183953(A014132(A167499(n)))]`
-/

namespace A183956.P13613108596630756542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A014132 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183956.P13613108596630756542

/-!
# A183957: Number of strings of numbers x(i=1..6) in 0..n with sum i^2*x(i) equal to n*36.

The programs for A183957, there is no canonical definition to state claims against.
-/

/-! ## A183957.P8376665010630757278

`A183953(A166136(n+4))`
-/

namespace A183957.P8376665010630757278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A166136 (n + 4)).toNat

end

end A183957.P8376665010630757278

/-! ## A183957.P4594950114748122416

`A183953(A167499(n+4)+1)`
-/

namespace A183957.P4594950114748122416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167499 (n + 4) + 1).toNat

end

end A183957.P4594950114748122416

/-! ## A183957.P1576871445458933147

`A183953(A000217(n+5)+6)`
-/

namespace A183957.P1576871445458933147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 5) + 6).toNat

end

end A183957.P1576871445458933147

/-! ## A183957.P11136109226832912659

`A183953(Δ[A023545(n+1)]+10)`
-/

namespace A183957.P11136109226832912659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n + 10).toNat

end

end A183957.P11136109226832912659

/-! ## A183957.P5836440152779128020

`A183953(A000124(n+4)+n+10)`
-/

namespace A183957.P5836440152779128020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 4) + (n + 10 : ℤ)).toNat

end

end A183957.P5836440152779128020

/-!
# A183958: Number of strings of numbers x(i=1..7) in 0..n with sum i^2*x(i) equal to n*49.

The programs for A183958, there is no canonical definition to state claims against.
-/

/-! ## A183958.P17049373740570179226

`record[A183953(A055999(n)+13)]`
-/

namespace A183958.P17049373740570179226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183958.P17049373740570179226

/-! ## A183958.P15704704775403763261

`A183953(A000217(n+6)+7)`
-/

namespace A183958.P15704704775403763261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 6) + 7).toNat

end

end A183958.P15704704775403763261

/-! ## A183958.P13396269351346135441

`A183953(A055998(n+4)+10)`
-/

namespace A183958.P13396269351346135441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055998 (n + 4) + 10).toNat

end

end A183958.P13396269351346135441

/-! ## A183958.P15579363557878223145

`A183953(A000124(n+5)+n+12)`
-/

namespace A183958.P15579363557878223145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 5) + (n + 12 : ℤ)).toNat

end

end A183958.P15579363557878223145

/-! ## A183958.P1626564688708715760

`A183953(A014206(n+5)-A055999(n+1))`
-/

namespace A183958.P1626564688708715760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A014206 (n + 5) - A055999 (n + 1)).toNat

end

end A183958.P1626564688708715760

/-!
# A183959: Number of strings of numbers x(i=1..8) in 0..n with sum i^2*x(i) equal to n*64.

The programs for A183959, there is no canonical definition to state claims against.
-/

/-! ## A183959.P14533185967973902835

`A183953(A000217(n+7)+8)`
-/

namespace A183959.P14533185967973902835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 7) + 8).toNat

end

end A183959.P14533185967973902835

/-! ## A183959.P3753213326947033234

`A183953(eq[21, A104763(n+1)]+1)`
-/

namespace A183959.P3753213326947033234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183959.P3753213326947033234

/-! ## A183959.P11735291208349943316

`A183953(A000096(n+7)-(n-1))`
-/

namespace A183959.P11735291208349943316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A183959.P11735291208349943316

/-! ## A183959.P13939580707811502430

`A183953(A000124(n+6)+n+14)`
-/

namespace A183959.P13939580707811502430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 6) + (n + 14 : ℤ)).toNat

end

end A183959.P13939580707811502430

/-! ## A183959.P1303822849678725811

`A183953(A014206(n+7)-A055999(n+4))`
-/

namespace A183959.P1303822849678725811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A014206 (n + 7) - A055999 (n + 4)).toNat

end

end A183959.P1303822849678725811

/-!
# A183960: Number of strings of numbers x(i=1..9) in 0..n with sum i^2*x(i) equal to n*81.

The programs for A183960, there is no canonical definition to state claims against.
-/

/-! ## A183960.P16132818321106522665

`A183953(A000217(n+8)+9)`
-/

namespace A183960.P16132818321106522665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 8) + 9).toNat

end

end A183960.P16132818321106522665

/-! ## A183960.P11117645910107360276

`A183953(A055998(n+6)+12)`
-/

namespace A183960.P11117645910107360276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055998 (n + 6) + 12).toNat

end

end A183960.P11117645910107360276

/-! ## A183960.P14287678077741751875

`A183953(eq[10, A131818(n+1)])`
-/

namespace A183960.P14287678077741751875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183960.P14287678077741751875

/-! ## A183960.P14784567654783770671

`A183953(A056000(n+6)-2*n)`
-/

namespace A183960.P14784567654783770671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A056000 (n + 6) - (2 * n : ℤ)).toNat

end

end A183960.P14784567654783770671

/-! ## A183960.P3283840398197264705

`A183953(A000124(n+7)+n+16)`
-/

namespace A183960.P3283840398197264705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 7) + (n + 16 : ℤ)).toNat

end

end A183960.P3283840398197264705

/-!
# A183961: Number of strings of numbers x(i=1..10) in 0..n with sum i^2*x(i) equal to n*100.

The programs for A183961, there is no canonical definition to state claims against.
-/

/-! ## A183961.P8094962687484006968

`A183953(A167614(n+8)+7)`
-/

namespace A183961.P8094962687484006968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167614 (n + 8) + 7).toNat

end

end A183961.P8094962687484006968

/-! ## A183961.P18235148132329194341

`A183953(A000124(n+9)+9)`
-/

namespace A183961.P18235148132329194341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000124 (n + 9) + 9).toNat

end

end A183961.P18235148132329194341

/-! ## A183961.P1364469028866303011

`A183953(A253145(n+8)+10)`
-/

namespace A183961.P1364469028866303011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A253145 (n + 8) + 10).toNat

end

end A183961.P1364469028866303011

/-! ## A183961.P9556397900832405678

`A183953(A000217(n+9)+10)`
-/

namespace A183961.P9556397900832405678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 9) + 10).toNat

end

end A183961.P9556397900832405678

/-! ## A183961.P5734321857619214802

`A183953(eq[11, A131818(n+1)])`
-/

namespace A183961.P5734321857619214802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183961.P5734321857619214802

/-!
# A183962: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183962, there is no canonical definition to state claims against.
-/

/-! ## A183962.P10992949024934136682

`A183971(∑[4*n]+1)`
-/

namespace A183962.P10992949024934136682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183962.P10992949024934136682

/-!
# A183963: Number of (n+1)X2 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183963, there is no canonical definition to state claims against.
-/

/-! ## A183963.P6303245209507396268

`A183971(∑[n]+1)`
-/

namespace A183963.P6303245209507396268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183963.P6303245209507396268

/-! ## A183963.P10508857332390422511

`lcm(3, A183971(A000124(n)))`
-/

namespace A183963.P10508857332390422511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A183971 (A000124 n).toNat)

end

end A183963.P10508857332390422511

/-! ## A183963.P6017753872580153388

`record[A183971(A246276(n+1))]`
-/

namespace A183963.P6017753872580153388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183963.P6017753872580153388

/-! ## A183963.P5531588498788016616

`record[A183971(A249742(n+1))]`
-/

namespace A183963.P5531588498788016616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183963.P5531588498788016616

/-! ## A183963.P2561084616801839526

`record[A010054(n)*A183971(n+1)]`
-/

namespace A183963.P2561084616801839526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183963.P2561084616801839526

/-!
# A183964: Number of (n+1)X3 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183964, there is no canonical definition to state claims against.
-/

/-! ## A183964.P6962613132954865117

`A183971(∑[n+1]+2)`
-/

namespace A183964.P6962613132954865117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183964.P6962613132954865117

/-! ## A183964.P6487359726760403780

`record[A183971(n+2)/A062190(n)]`
-/

namespace A183964.P6487359726760403780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183971 (n + 2) : ℚ) / (A062190 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183964.P6487359726760403780

/-! ## A183964.P12015228856455414522

`record[gcd(A002262(n), A183971(n+2))]`
-/

namespace A183964.P12015228856455414522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183971 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183964.P12015228856455414522

/-! ## A183964.P9052064136797630939

`record[A183971(abs(A201163(n)))]`
-/

namespace A183964.P9052064136797630939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183964.P9052064136797630939

/-! ## A183964.P14322918228749833378

`or(1, A183971(A000096(n+1)))`
-/

namespace A183964.P14322918228749833378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183971 (A000096 (n + 1)).toNat)

end

end A183964.P14322918228749833378

/-!
# A183965: Number of (n+1) X 4 0..2 arrays with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183965, there is no canonical definition to state claims against.
-/

/-! ## A183965.P8290999592162382463

`A183971(∑[n+2]+4)`
-/

namespace A183965.P8290999592162382463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183965.P8290999592162382463

/-! ## A183965.P8094625976001902033

`or(1, A183971(A167614(n+1)))`
-/

namespace A183965.P8094625976001902033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183971 (A167614 (n + 1)).toNat)

end

end A183965.P8094625976001902033

/-! ## A183965.P4146360370239242212

`record[root(A183971(n+4), A038455(n+1))]`
-/

namespace A183965.P4146360370239242212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183971 (n + 4) : ℝ) ^ (1 / (A038455 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183965.P4146360370239242212

/-! ## A183965.P15367997212503635715

`A183971(A167614(n+1))+A025443(n)`
-/

namespace A183965.P15367997212503635715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A167614 (n + 1)).toNat + A025443 n

end

end A183965.P15367997212503635715

/-! ## A183965.P7810793168108746989

`A183971(A167614(n+1))+A056965(n)`
-/

namespace A183965.P7810793168108746989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A167614 (n + 1)).toNat + A056965 n

end

end A183965.P7810793168108746989

/-!
# A183966: Number of (n+1)X5 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183966, there is no canonical definition to state claims against.
-/

/-! ## A183966.P2035757039406145022

`A183971(∑[n+3]+7)`
-/

namespace A183966.P2035757039406145022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183966.P2035757039406145022

/-! ## A183966.P16660862690087153173

`record[A183971(A112873(n+1)+5)]`
-/

namespace A183966.P16660862690087153173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A112873 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183966.P16660862690087153173

/-!
# A183967: Number of (n+1)X6 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183967, there is no canonical definition to state claims against.
-/

/-! ## A183967.P7221219882330773307

`A183971(A374005(n+1))`
-/

namespace A183967.P7221219882330773307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A374005 (n + 1)).toNat

end

end A183967.P7221219882330773307

/-! ## A183967.P6854945528488404217

`A183971(A167499(n+3))`
-/

namespace A183967.P6854945528488404217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A167499 (n + 3)).toNat

end

end A183967.P6854945528488404217

/-! ## A183967.P7814316747008367506

`A183971(A155212(n)+13)`
-/

namespace A183967.P7814316747008367506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A155212 n + 13).toNat

end

end A183967.P7814316747008367506

/-!
# A183968: Number of (n+1) X 7 0..2 arrays with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183968, there is no canonical definition to state claims against.
-/

/-! ## A183968.P3433242863642022312

`A183971(A374007(n+1))`
-/

namespace A183968.P3433242863642022312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A374007 (n + 1)).toNat

end

end A183968.P3433242863642022312

/-!
# A183970: Number of (n+1)X8 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183970, there is no canonical definition to state claims against.
-/

/-! ## A183970.P17716995042078127201

`A183971(A055999(n+4))`
-/

namespace A183970.P17716995042078127201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A055999 (n + 4)).toNat

end

end A183970.P17716995042078127201

/-!
# A183972: Half the number of (n+1)X2 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183972, there is no canonical definition to state claims against.
-/

/-! ## A183972.P2435960865490216117

`A183976(∑[n]+1)`
-/

namespace A183972.P2435960865490216117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183972.P2435960865490216117

/-! ## A183972.P10655871920339359162

`lcm(2, A183976(A000124(n)))`
-/

namespace A183972.P10655871920339359162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183976 (A000124 n).toNat)

end

end A183972.P10655871920339359162

/-! ## A183972.P7103689303764225103

`record[A010054(n)*A183976(n+1)]`
-/

namespace A183972.P7103689303764225103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183972.P7103689303764225103

/-! ## A183972.P9509241080843668869

`record[A103451(n)*A183976(n+1)]`
-/

namespace A183972.P9509241080843668869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A183976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183972.P9509241080843668869

/-! ## A183972.P10198658487321208471

`record[A183976(n+1)/A154230(n)]`
-/

namespace A183972.P10198658487321208471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183976 (n + 1) : ℚ) / (A154230 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183972.P10198658487321208471

/-!
# A183973: Half the number of (n+1)X3 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183973, there is no canonical definition to state claims against.
-/

/-! ## A183973.P17746528014727168459

`A183976(∑[n+1]+2)`
-/

namespace A183973.P17746528014727168459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183973.P17746528014727168459

/-! ## A183973.P7599002596598350992

`record[A010054(n)*A183976(n+2)]`
-/

namespace A183973.P7599002596598350992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183973.P7599002596598350992

/-! ## A183973.P7664689396036996769

`record[gcd(A053616(n), A183976(n+2))]`
-/

namespace A183973.P7664689396036996769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A183976 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183973.P7664689396036996769

/-! ## A183973.P492414928221986070

`record[root(A183976(n+2), A029637(n+1))]`
-/

namespace A183973.P492414928221986070
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183976 (n + 2) : ℝ) ^ (1 / (A029637 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183973.P492414928221986070

/-!
# A183974: Half the number of (n+1)X4 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183974, there is no canonical definition to state claims against.
-/

/-! ## A183974.P13905305539802316336

`A183976(∑[n+2]+4)`
-/

namespace A183974.P13905305539802316336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183974.P13905305539802316336

/-! ## A183974.P15340865755042316195

`lcm((-1)^n, A183976(A167614(n+1)))`
-/

namespace A183974.P15340865755042316195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A183976 (A167614 (n + 1)).toNat)

end

end A183974.P15340865755042316195

/-! ## A183974.P6755884803321618491

`A183976(A167614(n+1))+A025466(n)`
-/

namespace A183974.P6755884803321618491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (A167614 (n + 1)).toNat + A025466 n

end

end A183974.P6755884803321618491

/-!
# A183975: Half the number of (n+1)X5 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183975, there is no canonical definition to state claims against.
-/

/-! ## A183975.P6702246642436974440

`A183976(∑[n+3]+7)`
-/

namespace A183975.P6702246642436974440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183975.P6702246642436974440

/-! ## A183975.P2901287328983583127

`record[A183976(A184102(2*(n+1)))]`
-/

namespace A183975.P2901287328983583127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (A184102 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183975.P2901287328983583127

/-!
# A183977: 1/4 the number of (n+1) X (n+1) binary arrays with all 2 X 2 subblock sums the same.

The programs for A183977, the canonical program `A183977.P8491069499870203952` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183977 has offset 1).

The definition of A183977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183977.P8491069499870203952

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=4, a(1)=8, a(2)=14, a(3)=26`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183977

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P8491069499870203952.Spec : Prop :=
  ∀ n, P8491069499870203952.a n = A183977 (n + 1)

theorem P8491069499870203952.correct : P8491069499870203952.Spec := by
  intro n
  simp only [A183977, Nat.add_sub_cancel]

end A183977

/-! ## A183977.P6639073376260410381

`∑[2^ceil(n/2)+2^n]+2`
-/

namespace A183977.P6639073376260410381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A183977.P6639073376260410381

namespace A183977

/-- `∑[2^ceil(n/2)+2^n]+2` -/
def P6639073376260410381.Spec : Prop :=
  ∀ n, P6639073376260410381.a n = (A183977 (n + 1) : ℚ)

end A183977

/-! ## A183977.P5656603352553828339

`2*(2^n-∑[2*a(n-2)])` with `a(0)=-1, a(1)=-1, a(2)=-1`
-/

namespace A183977.P5656603352553828339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, -1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183977.P5656603352553828339

namespace A183977

/-- `2*(2^n-∑[2*a(n-2)])` -/
def P5656603352553828339.Spec : Prop :=
  ∀ n, P5656603352553828339.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P18321455905770046983

`2*(A183978(n+1)-2)`
-/

namespace A183977.P18321455905770046983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183978 (n + 1) - 2)

end

end A183977.P18321455905770046983

namespace A183977

/-- `2*(A183978(n+1)-2)` -/
def P18321455905770046983.Spec : Prop :=
  ∀ n, P18321455905770046983.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P6965188109161378572

`2*(A183979(n+1)-4)`
-/

namespace A183977.P6965188109161378572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183979 (n + 1) - 4)

end

end A183977.P6965188109161378572

namespace A183977

/-- `2*(A183979(n+1)-4)` -/
def P6965188109161378572.Spec : Prop :=
  ∀ n, P6965188109161378572.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P4694624639807614853

`2*(A052955(n)+A000079(n))`
-/

namespace A183977.P4694624639807614853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052955 n + A000079 n)

end

end A183977.P4694624639807614853

namespace A183977

/-- `2*(A052955(n)+A000079(n))` -/
def P4694624639807614853.Spec : Prop :=
  ∀ n, P4694624639807614853.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P14245470123320339203

`2*(A052551(n)+A051437(n))`
-/

namespace A183977.P14245470123320339203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052551 n + A051437 n)

end

end A183977.P14245470123320339203

namespace A183977

/-- `2*(A052551(n)+A051437(n))` -/
def P14245470123320339203.Spec : Prop :=
  ∀ n, P14245470123320339203.a n = A183977 (n + 1)

end A183977

/-!
# A183978: 1/4 the number of (n+1) X 2 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183978, the canonical program `A183978.P7408826475777091792` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183978 has offset 1).

The definition of A183978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183978.P7408826475777091792

`(1+2^floor(n/2))*(1+2^ceil(n/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183978

/-- `(1+2^floor(n/2))*(1+2^ceil(n/2))` -/
def P7408826475777091792.Spec : Prop :=
  ∀ n, P7408826475777091792.a n = (A183978 (n + 1) : ℚ)

end A183978

/-! ## A183978.P4793054824098868284

`∑[ogf((1-3x^2)/(1-2x-2x^2+4x^3))]+3`
-/

namespace A183978.P4793054824098868284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -2, -2, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A183978.P4793054824098868284

namespace A183978

/-- `∑[ogf((1-3x^2)/(1-2x-2x^2+4x^3))]+3` -/
def P4793054824098868284.Spec : Prop :=
  ∀ n, P4793054824098868284.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P5759299683952997587

`∑[2*a(n-2)]+2^n` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A183978.P5759299683952997587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A183978.P5759299683952997587

namespace A183978

/-- `∑[2*a(n-2)]+2^n` -/
def P5759299683952997587.Spec : Prop :=
  ∀ n, (P5759299683952997587.a n : ℤ) = A183978 (n + 1)

end A183978

/-! ## A183978.P10149198239603460155

`2*(a(n-2)+2^(n-2))-1` with `a(0)=4, a(1)=6`
-/

namespace A183978.P10149198239603460155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 6] fun n a =>
  2 * (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - 1

end

end A183978.P10149198239603460155

namespace A183978

/-- `2*(a(n-2)+2^(n-2))-1` -/
def P10149198239603460155.Spec : Prop :=
  ∀ n, P10149198239603460155.a n = (A183978 (n + 1) : ℚ)

end A183978

/-! ## A183978.P18430186574189189611

`2*a(n-1)-1-2^floor(n/2)` with `a(0)=4`
-/

namespace A183978.P18430186574189189611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) - 1 - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A183978.P18430186574189189611

namespace A183978

/-- `2*a(n-1)-1-2^floor(n/2)` -/
def P18430186574189189611.Spec : Prop :=
  ∀ n, P18430186574189189611.a n = (A183978 (n + 1) : ℚ)

end A183978

/-! ## A183978.P3889783646405915918

`A183979(n+1)-2`
-/

namespace A183978.P3889783646405915918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) - 2

end

end A183978.P3889783646405915918

namespace A183978

/-- `A183979(n+1)-2` -/
def P3889783646405915918.Spec : Prop :=
  ∀ n, P3889783646405915918.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P17178903316920550273

`A183980(n+1)-5`
-/

namespace A183978.P17178903316920550273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) - 5

end

end A183978.P17178903316920550273

namespace A183978

/-- `A183980(n+1)-5` -/
def P17178903316920550273.Spec : Prop :=
  ∀ n, P17178903316920550273.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P4322657397679267453

`∑[A005418(n+1)]+3`
-/

namespace A183978.P4322657397679267453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A183978.P4322657397679267453

namespace A183978

/-- `∑[A005418(n+1)]+3` -/
def P4322657397679267453.Spec : Prop :=
  ∀ n, P4322657397679267453.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P10013762720899294924

`A209721(n+1)+2^n`
-/

namespace A183978.P10013762720899294924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + (2 ^ n : ℤ)

end

end A183978.P10013762720899294924

namespace A183978

/-- `A209721(n+1)+2^n` -/
def P10013762720899294924.Spec : Prop :=
  ∀ n, P10013762720899294924.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P15139515393340966336

`∑[A056326(n+1)]+2-log2(1/4)+n`
-/

namespace A183978.P15139515393340966336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) + (n : ℝ)

end

end A183978.P15139515393340966336

namespace A183978

/-- `∑[A056326(n+1)]+2-log2(1/4)+n` -/
def P15139515393340966336.Spec : Prop :=
  ∀ n, P15139515393340966336.a n = (A183978 (n + 1) : ℝ)

end A183978

/-! ## A183978.P16032885698809783245

`A027556(n)+A010737(n)`
-/

namespace A183978.P16032885698809783245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n + A010737 n

end

end A183978.P16032885698809783245

namespace A183978

/-- `A027556(n)+A010737(n)` -/
def P16032885698809783245.Spec : Prop :=
  ∀ n, P16032885698809783245.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P13483037552155315280

`A052955(n)+A052548(n)`
-/

namespace A183978.P13483037552155315280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + A052548 n

end

end A183978.P13483037552155315280

namespace A183978

/-- `A052955(n)+A052548(n)` -/
def P13483037552155315280.Spec : Prop :=
  ∀ n, P13483037552155315280.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P5359332693901525738

`A000051(n)+A052955(n)+1`
-/

namespace A183978.P5359332693901525738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A052955 n + 1)

end

end A183978.P5359332693901525738

namespace A183978

/-- `A000051(n)+A052955(n)+1` -/
def P5359332693901525738.Spec : Prop :=
  ∀ n, P5359332693901525738.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P8377712282100867863

`A164090(n+1)+A000051(n)`
-/

namespace A183978.P8377712282100867863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A000051 n

end

end A183978.P8377712282100867863

namespace A183978

/-- `A164090(n+1)+A000051(n)` -/
def P8377712282100867863.Spec : Prop :=
  ∀ n, P8377712282100867863.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P9500391953115937235

`A209722(n+1)+A000225(n)`
-/

namespace A183978.P9500391953115937235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + A000225 n

end

end A183978.P9500391953115937235

namespace A183978

/-- `A209722(n+1)+A000225(n)` -/
def P9500391953115937235.Spec : Prop :=
  ∀ n, P9500391953115937235.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P16073589403698608941

`A209723(n+1)+A036563(n)`
-/

namespace A183978.P16073589403698608941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + A036563 n

end

end A183978.P16073589403698608941

namespace A183978

/-- `A209723(n+1)+A036563(n)` -/
def P16073589403698608941.Spec : Prop :=
  ∀ n, P16073589403698608941.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P16253791383930390032

`A274230(n)+A090989(n+1)`
-/

namespace A183978.P16253791383930390032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A090989 (n + 1)

end

end A183978.P16253791383930390032

namespace A183978

/-- `A274230(n)+A090989(n+1)` -/
def P16253791383930390032.Spec : Prop :=
  ∀ n, P16253791383930390032.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P772386167529050651

`A209724(n+1)+A168616(n)`
-/

namespace A183978.P772386167529050651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + A168616 n

end

end A183978.P772386167529050651

namespace A183978

/-- `A209724(n+1)+A168616(n)` -/
def P772386167529050651.Spec : Prop :=
  ∀ n, P772386167529050651.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P6068482387682939497

`A209725(n+1)+A185346(n)`
-/

namespace A183978.P6068482387682939497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + A185346 n

end

end A183978.P6068482387682939497

namespace A183978

/-- `A209725(n+1)+A185346(n)` -/
def P6068482387682939497.Spec : Prop :=
  ∀ n, P6068482387682939497.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P12293459870796700740

`A029744(n+2)+A000051(n)`
-/

namespace A183978.P12293459870796700740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + A000051 n

end

end A183978.P12293459870796700740

namespace A183978

/-- `A029744(n+2)+A000051(n)` -/
def P12293459870796700740.Spec : Prop :=
  ∀ n, P12293459870796700740.a n = A183978 (n + 1)

end A183978

/-!
# A183979: 1/4 the number of (n+1) X 3 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183979, the canonical program `A183979.P11748391360820795572` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183979 has offset 1).

The definition of A183979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183979.P16531246369059285065

`∑[ogf((1-3x^2)/(1-2x-2x^2+4x^3))]+5`
-/

namespace A183979.P16531246369059285065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -2, -2, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A183979.P16531246369059285065

namespace A183979

/-- `∑[ogf((1-3x^2)/(1-2x-2x^2+4x^3))]+5` -/
def P16531246369059285065.Spec : Prop :=
  ∀ n, P16531246369059285065.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P11748391360820795572

`A183978(n+1)+2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A183979

/-- `A183978(n+1)+2` -/
def P11748391360820795572.Spec : Prop :=
  ∀ n, P11748391360820795572.a n = A183979 (n + 1)

theorem P11748391360820795572.correct : P11748391360820795572.Spec := by
  intro n
  simp only [A183979, Nat.add_sub_cancel]

end A183979

/-! ## A183979.P15646263669843323025

`A183980(n+1)-3`
-/

namespace A183979.P15646263669843323025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) - 3

end

end A183979.P15646263669843323025

namespace A183979

/-- `A183980(n+1)-3` -/
def P15646263669843323025.Spec : Prop :=
  ∀ n, P15646263669843323025.a n = A183979 (n + 1)

theorem P15646263669843323025.correct : P15646263669843323025.Spec := by
  intro n
  simp only [A183979, Nat.add_sub_cancel, A183979.P15646263669843323025.a, A183979.P11748391360820795572.a, A183978, A183978.P7408826475777091792.a, A183980, A183980.P16686492784855732244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A183979

/-! ## A183979.P13559793568152253646

`A183981(n+1)-9`
-/

namespace A183979.P13559793568152253646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) - 9

end

end A183979.P13559793568152253646

namespace A183979

/-- `A183981(n+1)-9` -/
def P13559793568152253646.Spec : Prop :=
  ∀ n, P13559793568152253646.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P12014908583590745422

`A183982(n+1)-19`
-/

namespace A183979.P12014908583590745422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) - 19

end

end A183979.P12014908583590745422

namespace A183979

/-- `A183982(n+1)-19` -/
def P12014908583590745422.Spec : Prop :=
  ∀ n, P12014908583590745422.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P7816868395539875446

`A183983(n+1)-39`
-/

namespace A183979.P7816868395539875446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 1) - 39

end

end A183979.P7816868395539875446

namespace A183979

/-- `A183983(n+1)-39` -/
def P7816868395539875446.Spec : Prop :=
  ∀ n, P7816868395539875446.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P4770724322818432899

`∑[A005418(n+1)]+5`
-/

namespace A183979.P4770724322818432899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A183979.P4770724322818432899

namespace A183979

/-- `∑[A005418(n+1)]+5` -/
def P4770724322818432899.Spec : Prop :=
  ∀ n, P4770724322818432899.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P6276849166209274704

`∑[A056326(n+1)+1]+5`
-/

namespace A183979.P6276849166209274704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A183979.P6276849166209274704

namespace A183979

/-- `∑[A056326(n+1)+1]+5` -/
def P6276849166209274704.Spec : Prop :=
  ∀ n, P6276849166209274704.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P17791254005419891307

`A140504(n)+A052955(n)`
-/

namespace A183979.P17791254005419891307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 n + A052955 n

end

end A183979.P17791254005419891307

namespace A183979

/-- `A140504(n)+A052955(n)` -/
def P17791254005419891307.Spec : Prop :=
  ∀ n, P17791254005419891307.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P3905469376839017289

`A209722(n+1)+A000051(n)`
-/

namespace A183979.P3905469376839017289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + A000051 n

end

end A183979.P3905469376839017289

namespace A183979

/-- `A209722(n+1)+A000051(n)` -/
def P3905469376839017289.Spec : Prop :=
  ∀ n, P3905469376839017289.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P4304188251610557239

`A209723(n+1)+A000225(n)`
-/

namespace A183979.P4304188251610557239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + A000225 n

end

end A183979.P4304188251610557239

namespace A183979

/-- `A209723(n+1)+A000225(n)` -/
def P4304188251610557239.Spec : Prop :=
  ∀ n, P4304188251610557239.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P11028697605819015784

`A164090(n+1)+A062709(n)`
-/

namespace A183979.P11028697605819015784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A062709 n

end

end A183979.P11028697605819015784

namespace A183979

/-- `A164090(n+1)+A062709(n)` -/
def P11028697605819015784.Spec : Prop :=
  ∀ n, P11028697605819015784.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P5413476463972063216

`A209724(n+1)+A036563(n)`
-/

namespace A183979.P5413476463972063216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + A036563 n

end

end A183979.P5413476463972063216

namespace A183979

/-- `A209724(n+1)+A036563(n)` -/
def P5413476463972063216.Spec : Prop :=
  ∀ n, P5413476463972063216.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P10800725017123293999

`A209721(n+1)+A052548(n)`
-/

namespace A183979.P10800725017123293999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + A052548 n

end

end A183979.P10800725017123293999

namespace A183979

/-- `A209721(n+1)+A052548(n)` -/
def P10800725017123293999.Spec : Prop :=
  ∀ n, P10800725017123293999.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P161758566667286512

`A010737(n)+A027556(n)+2`
-/

namespace A183979.P161758566667286512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 n + (A027556 n + 2)

end

end A183979.P161758566667286512

namespace A183979

/-- `A010737(n)+A027556(n)+2` -/
def P161758566667286512.Spec : Prop :=
  ∀ n, P161758566667286512.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P10546731771522237099

`A052548(n)+A052955(n)+2`
-/

namespace A183979.P10546731771522237099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n + (A052955 n + 2)

end

end A183979.P10546731771522237099

namespace A183979

/-- `A052548(n)+A052955(n)+2` -/
def P10546731771522237099.Spec : Prop :=
  ∀ n, P10546731771522237099.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P6149169543475686450

`A274230(n)+A209722(n+3)`
-/

namespace A183979.P6149169543475686450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A209722 (n + 3)

end

end A183979.P6149169543475686450

namespace A183979

/-- `A274230(n)+A209722(n+3)` -/
def P6149169543475686450.Spec : Prop :=
  ∀ n, P6149169543475686450.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P10656412782305823587

`A209723(n+1)+∑[A131577(n)]`
-/

namespace A183979.P10656412782305823587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183979.P10656412782305823587

namespace A183979

/-- `A209723(n+1)+∑[A131577(n)]` -/
def P10656412782305823587.Spec : Prop :=
  ∀ n, P10656412782305823587.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P11204438032396075717

`A209722(n+1)+A000079(n)+1`
-/

namespace A183979.P11204438032396075717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + (A000079 n + 1)

end

end A183979.P11204438032396075717

namespace A183979

/-- `A209722(n+1)+A000079(n)+1` -/
def P11204438032396075717.Spec : Prop :=
  ∀ n, P11204438032396075717.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P17210064633585907688

`A209722(n+1)+A094373(n+1)`
-/

namespace A183979.P17210064633585907688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + A094373 (n + 1)

end

end A183979.P17210064633585907688

namespace A183979

/-- `A209722(n+1)+A094373(n+1)` -/
def P17210064633585907688.Spec : Prop :=
  ∀ n, P17210064633585907688.a n = A183979 (n + 1)

end A183979

/-!
# A183980: 1/4 the number of (n+1) X 4 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183980, the canonical program `A183980.P16686492784855732244` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183980 has offset 1).

The definition of A183980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183980.P646660575609905015

`∑[ogf((1-3x^2)/(1-2x-2x^2+4x^3))]+8`
-/

namespace A183980.P646660575609905015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -2, -2, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A183980.P646660575609905015

namespace A183980

/-- `∑[ogf((1-3x^2)/(1-2x-2x^2+4x^3))]+8` -/
def P646660575609905015.Spec : Prop :=
  ∀ n, P646660575609905015.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P16686492784855732244

`A183979(n+1)+3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A183980

/-- `A183979(n+1)+3` -/
def P16686492784855732244.Spec : Prop :=
  ∀ n, P16686492784855732244.a n = A183980 (n + 1)

theorem P16686492784855732244.correct : P16686492784855732244.Spec := by
  intro n
  simp only [A183980, Nat.add_sub_cancel]

end A183980

/-! ## A183980.P11237727798605561748

`A183978(n+1)+5`
-/

namespace A183980.P11237727798605561748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 1) + 5

end

end A183980.P11237727798605561748

namespace A183980

/-- `A183978(n+1)+5` -/
def P11237727798605561748.Spec : Prop :=
  ∀ n, P11237727798605561748.a n = A183980 (n + 1)

theorem P11237727798605561748.correct : P11237727798605561748.Spec := by
  intro n
  simp only [A183980, Nat.add_sub_cancel, A183980.P11237727798605561748.a, A183980.P16686492784855732244.a, A183978, A183978.P7408826475777091792.a, A183979, A183979.P11748391360820795572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A183980

/-! ## A183980.P14648460623020069810

`A183981(n+1)-6`
-/

namespace A183980.P14648460623020069810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) - 6

end

end A183980.P14648460623020069810

namespace A183980

/-- `A183981(n+1)-6` -/
def P14648460623020069810.Spec : Prop :=
  ∀ n, P14648460623020069810.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P9157544226857535055

`A290075(n+4)+6`
-/

namespace A183980.P9157544226857535055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 4) + 6

end

end A183980.P9157544226857535055

namespace A183980

/-- `A290075(n+4)+6` -/
def P9157544226857535055.Spec : Prop :=
  ∀ n, P9157544226857535055.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P17296551975354889459

`A183982(n+1)-16`
-/

namespace A183980.P17296551975354889459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) - 16

end

end A183980.P17296551975354889459

namespace A183980

/-- `A183982(n+1)-16` -/
def P17296551975354889459.Spec : Prop :=
  ∀ n, P17296551975354889459.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P4632808974894233639

`∑[A005418(n+1)]+8`
-/

namespace A183980.P4632808974894233639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A183980.P4632808974894233639

namespace A183980

/-- `∑[A005418(n+1)]+8` -/
def P4632808974894233639.Spec : Prop :=
  ∀ n, P4632808974894233639.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P10209464370638033448

`A209724(n+1)+2^n`
-/

namespace A183980.P10209464370638033448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + (2 ^ n : ℤ)

end

end A183980.P10209464370638033448

namespace A183980

/-- `A209724(n+1)+2^n` -/
def P10209464370638033448.Spec : Prop :=
  ∀ n, P10209464370638033448.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P7555717027147116649

`∑[A056326(n+1)+1]+8`
-/

namespace A183980.P7555717027147116649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A183980.P7555717027147116649

namespace A183980

/-- `∑[A056326(n+1)+1]+8` -/
def P7555717027147116649.Spec : Prop :=
  ∀ n, P7555717027147116649.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P2774986377729637034

`2^n+A209723(n+1)+2`
-/

namespace A183980.P2774986377729637034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A209723 (n + 1) + 2)

end

end A183980.P2774986377729637034

namespace A183980

/-- `2^n+A209723(n+1)+2` -/
def P2774986377729637034.Spec : Prop :=
  ∀ n, P2774986377729637034.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P13867773048466494900

`A168415(n)+A052955(n)`
-/

namespace A183980.P13867773048466494900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 n + A052955 n

end

end A183980.P13867773048466494900

namespace A183980

/-- `A168415(n)+A052955(n)` -/
def P13867773048466494900.Spec : Prop :=
  ∀ n, P13867773048466494900.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P3524711935695908125

`A209723(n+1)+A052548(n)`
-/

namespace A183980.P3524711935695908125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + A052548 n

end

end A183980.P3524711935695908125

namespace A183980

/-- `A209723(n+1)+A052548(n)` -/
def P3524711935695908125.Spec : Prop :=
  ∀ n, P3524711935695908125.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P8825541108598565388

`A164090(n+1)+A153972(n)`
-/

namespace A183980.P8825541108598565388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A153972 n

end

end A183980.P8825541108598565388

namespace A183980

/-- `A164090(n+1)+A153972(n)` -/
def P8825541108598565388.Spec : Prop :=
  ∀ n, P8825541108598565388.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P9455659052428811989

`A209722(n+1)+A140504(n)`
-/

namespace A183980.P9455659052428811989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + A140504 n

end

end A183980.P9455659052428811989

namespace A183980

/-- `A209722(n+1)+A140504(n)` -/
def P9455659052428811989.Spec : Prop :=
  ∀ n, P9455659052428811989.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P10795463183306501939

`A209721(n+1)+A168614(n)`
-/

namespace A183980.P10795463183306501939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + A168614 n

end

end A183980.P10795463183306501939

namespace A183980

/-- `A209721(n+1)+A168614(n)` -/
def P10795463183306501939.Spec : Prop :=
  ∀ n, P10795463183306501939.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P8191046123530477681

`A153972(n)+A029744(n+2)`
-/

namespace A183980.P8191046123530477681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n + A029744 (n + 2)

end

end A183980.P8191046123530477681

namespace A183980

/-- `A153972(n)+A029744(n+2)` -/
def P8191046123530477681.Spec : Prop :=
  ∀ n, P8191046123530477681.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P8284322144822452205

`A052548(n)+A052955(n)+5`
-/

namespace A183980.P8284322144822452205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n + (A052955 n + 5)

end

end A183980.P8284322144822452205

namespace A183980

/-- `A052548(n)+A052955(n)+5` -/
def P8284322144822452205.Spec : Prop :=
  ∀ n, P8284322144822452205.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P2228354838290938274

`A000079(n)+A052955(n)+7`
-/

namespace A183980.P2228354838290938274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A052955 n + 7)

end

end A183980.P2228354838290938274

namespace A183980

/-- `A000079(n)+A052955(n)+7` -/
def P2228354838290938274.Spec : Prop :=
  ∀ n, P2228354838290938274.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P16983641500791317251

`A209722(n+1)+A062709(n)+1`
-/

namespace A183980.P16983641500791317251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + (A062709 n + 1)

end

end A183980.P16983641500791317251

namespace A183980

/-- `A209722(n+1)+A062709(n)+1` -/
def P16983641500791317251.Spec : Prop :=
  ∀ n, P16983641500791317251.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P14861094722832424145

`A209723(n+1)+A000079(n)+2`
-/

namespace A183980.P14861094722832424145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + (A000079 n + 2)

end

end A183980.P14861094722832424145

namespace A183980

/-- `A209723(n+1)+A000079(n)+2` -/
def P14861094722832424145.Spec : Prop :=
  ∀ n, P14861094722832424145.a n = A183980 (n + 1)

end A183980

/-!
# A183981: 1/4 the number of (n+1) X 5 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183981, the canonical program `A183981.P7191257138972285613` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183981 has offset 1).

The definition of A183981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183981.P7191257138972285613

`∑[2*a(n-2)]+2^n` with `a(0)=14, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183981

/-- `∑[2*a(n-2)]+2^n` -/
def P7191257138972285613.Spec : Prop :=
  ∀ n, (P7191257138972285613.a n : ℤ) = A183981 (n + 1)

theorem P7191257138972285613.correct : P7191257138972285613.Spec := by
  intro n
  simp only [A183981, Nat.add_sub_cancel]

end A183981

/-! ## A183981.P3449412803955311068

`A183980(n+1)+6`
-/

namespace A183981.P3449412803955311068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + 6

end

end A183981.P3449412803955311068

namespace A183981

/-- `A183980(n+1)+6` -/
def P3449412803955311068.Spec : Prop :=
  ∀ n, P3449412803955311068.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P17098877990727485473

`A183979(n+1)+9`
-/

namespace A183981.P17098877990727485473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + 9

end

end A183981.P17098877990727485473

namespace A183981

/-- `A183979(n+1)+9` -/
def P17098877990727485473.Spec : Prop :=
  ∀ n, P17098877990727485473.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P6137898565077018677

`A183982(n+1)-10`
-/

namespace A183981.P6137898565077018677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) - 10

end

end A183981.P6137898565077018677

namespace A183981

/-- `A183982(n+1)-10` -/
def P6137898565077018677.Spec : Prop :=
  ∀ n, P6137898565077018677.a n = A183981 (n + 1)

theorem P6137898565077018677.correct : P6137898565077018677.Spec := by
  intro n
  simp only [A183981, Nat.add_sub_cancel, A183981.P6137898565077018677.a, A183981.P7191257138972285613.f1, A183981.P7191257138972285613.a, A183982, A183982.P8755978245693372615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A183981

/-! ## A183981.P5435014902227159938

`A183983(n+1)-30`
-/

namespace A183981.P5435014902227159938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 1) - 30

end

end A183981.P5435014902227159938

namespace A183981

/-- `A183983(n+1)-30` -/
def P5435014902227159938.Spec : Prop :=
  ∀ n, P5435014902227159938.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P12973783720053850793

`∑[A005418(n+1)]+14`
-/

namespace A183981.P12973783720053850793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 14

end

end A183981.P12973783720053850793

namespace A183981

/-- `∑[A005418(n+1)]+14` -/
def P12973783720053850793.Spec : Prop :=
  ∀ n, P12973783720053850793.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P11963727490456787479

`A209726(n+1)+A000918(n)`
-/

namespace A183981.P11963727490456787479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209726 (n + 1) + A000918 n

end

end A183981.P11963727490456787479

namespace A183981

/-- `A209726(n+1)+A000918(n)` -/
def P11963727490456787479.Spec : Prop :=
  ∀ n, P11963727490456787479.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P11439427431259682888

`A209725(n+1)+A052548(n)`
-/

namespace A183981.P11439427431259682888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + A052548 n

end

end A183981.P11439427431259682888

namespace A183981

/-- `A209725(n+1)+A052548(n)` -/
def P11439427431259682888.Spec : Prop :=
  ∀ n, P11439427431259682888.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P13073428200643106635

`A209724(n+1)+A153972(n)`
-/

namespace A183981.P13073428200643106635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + A153972 n

end

end A183981.P13073428200643106635

namespace A183981

/-- `A209724(n+1)+A153972(n)` -/
def P13073428200643106635.Spec : Prop :=
  ∀ n, P13073428200643106635.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P6291255389538163779

`A242475(n)+A209723(n+1)`
-/

namespace A183981.P6291255389538163779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n + A209723 (n + 1)

end

end A183981.P6291255389538163779

namespace A183981

/-- `A242475(n)+A209723(n+1)` -/
def P6291255389538163779.Spec : Prop :=
  ∀ n, P6291255389538163779.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P17624167855193809649

`A246139(n)+A209722(n+1)`
-/

namespace A183981.P17624167855193809649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246139 n + A209722 (n + 1)

end

end A183981.P17624167855193809649

namespace A183981

/-- `A246139(n)+A209722(n+1)` -/
def P17624167855193809649.Spec : Prop :=
  ∀ n, P17624167855193809649.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P13946114445240596285

`A267615(n)+A209721(n+1)`
-/

namespace A183981.P13946114445240596285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 n + A209721 (n + 1)

end

end A183981.P13946114445240596285

namespace A183981

/-- `A267615(n)+A209721(n+1)` -/
def P13946114445240596285.Spec : Prop :=
  ∀ n, P13946114445240596285.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P1256631874058266371

`A052955(n)+A168415(n)+6`
-/

namespace A183981.P1256631874058266371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + (A168415 n + 6)

end

end A183981.P1256631874058266371

namespace A183981

/-- `A052955(n)+A168415(n)+6` -/
def P1256631874058266371.Spec : Prop :=
  ∀ n, P1256631874058266371.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P15167411504922187563

`A052955(n)+A140504(n)+9`
-/

namespace A183981.P15167411504922187563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + (A140504 n + 9)

end

end A183981.P15167411504922187563

namespace A183981

/-- `A052955(n)+A140504(n)+9` -/
def P15167411504922187563.Spec : Prop :=
  ∀ n, P15167411504922187563.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P16974073415697094461

`A036563(n)+A052955(n)+16`
-/

namespace A183981.P16974073415697094461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n + (A052955 n + 16)

end

end A183981.P16974073415697094461

namespace A183981

/-- `A036563(n)+A052955(n)+16` -/
def P16974073415697094461.Spec : Prop :=
  ∀ n, P16974073415697094461.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P11297004308560556069

`A209724(n+1)+A168415(n)-1`
-/

namespace A183981.P11297004308560556069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + (A168415 n - 1)

end

end A183981.P11297004308560556069

namespace A183981

/-- `A209724(n+1)+A168415(n)-1` -/
def P11297004308560556069.Spec : Prop :=
  ∀ n, P11297004308560556069.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P10429140908194741222

`A209724(n+1)+A242475(n)-2`
-/

namespace A183981.P10429140908194741222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + (A242475 n - 2)

end

end A183981.P10429140908194741222

namespace A183981

/-- `A209724(n+1)+A242475(n)-2` -/
def P10429140908194741222.Spec : Prop :=
  ∀ n, P10429140908194741222.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P5946891356177558222

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=15, a(1)=17, a(2)=20, a(3)=26`
-/

namespace A183981.P5946891356177558222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 17, 20, 26] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183981.P5946891356177558222

namespace A183981

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P5946891356177558222.Spec : Prop :=
  ∀ n, P5946891356177558222.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P16151828889395750185

`A153973(n+1)+A209724(n+1)-A000079(n+1)`
-/

namespace A183981.P16151828889395750185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153973 (n + 1) + (A209724 (n + 1) - A000079 (n + 1))

end

end A183981.P16151828889395750185

namespace A183981

/-- `A153973(n+1)+A209724(n+1)-A000079(n+1)` -/
def P16151828889395750185.Spec : Prop :=
  ∀ n, P16151828889395750185.a n = A183981 (n + 1)

end A183981

/-!
# A183982: 1/4 the number of (n+1) X 6 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183982, the canonical program `A183982.P8755978245693372615` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183982 has offset 1).

The definition of A183982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183982.P8755978245693372615

`A183981(n+1)+10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A183982

/-- `A183981(n+1)+10` -/
def P8755978245693372615.Spec : Prop :=
  ∀ n, P8755978245693372615.a n = A183982 (n + 1)

theorem P8755978245693372615.correct : P8755978245693372615.Spec := by
  intro n
  simp only [A183982, Nat.add_sub_cancel]

end A183982

/-! ## A183982.P1020703307407481784

`∑[A005418(n+1)]+24`
-/

namespace A183982.P1020703307407481784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 24

end

end A183982.P1020703307407481784

namespace A183982

/-- `∑[A005418(n+1)]+24` -/
def P1020703307407481784.Spec : Prop :=
  ∀ n, P1020703307407481784.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P13911226156074930922

`A242475(n)+A209726(n+1)`
-/

namespace A183982.P13911226156074930922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n + A209726 (n + 1)

end

end A183982.P13911226156074930922

namespace A183982

/-- `A242475(n)+A209726(n+1)` -/
def P13911226156074930922.Spec : Prop :=
  ∀ n, P13911226156074930922.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P17115954924854830150

`A209725(n+1)+A267615(n)+1`
-/

namespace A183982.P17115954924854830150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + (A267615 n + 1)

end

end A183982.P17115954924854830150

namespace A183982

/-- `A209725(n+1)+A267615(n)+1` -/
def P17115954924854830150.Spec : Prop :=
  ∀ n, P17115954924854830150.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P17894713063930975696

`A153972(n)+A209724(n+1)+10`
-/

namespace A183982.P17894713063930975696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n + (A209724 (n + 1) + 10)

end

end A183982.P17894713063930975696

namespace A183982

/-- `A153972(n)+A209724(n+1)+10` -/
def P17894713063930975696.Spec : Prop :=
  ∀ n, P17894713063930975696.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P10481329109544692227

`A183983(n+1)+A023462(n)-n`
-/

namespace A183982.P10481329109544692227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 1) + (A023462 n - (n : ℤ))

end

end A183982.P10481329109544692227

namespace A183982

/-- `A183983(n+1)+A023462(n)-n` -/
def P10481329109544692227.Spec : Prop :=
  ∀ n, P10481329109544692227.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P6856982746084922724

`A183980(n+1)+A345508(A345508(n+1))-A345508(n+1)`
-/

namespace A183982.P6856982746084922724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + (A345508 (A345508 (n + 1)).toNat - A345508 (n + 1))

end

end A183982.P6856982746084922724

namespace A183982

/-- `A183980(n+1)+A345508(A345508(n+1))-A345508(n+1)` -/
def P6856982746084922724.Spec : Prop :=
  ∀ n, P6856982746084922724.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P4227692107698705683

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=25, a(1)=27, a(2)=30, a(3)=36`
-/

namespace A183982.P4227692107698705683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 27, 30, 36] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183982.P4227692107698705683

namespace A183982

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P4227692107698705683.Spec : Prop :=
  ∀ n, P4227692107698705683.a n = A183982 (n + 1)

end A183982

/-!
# A183983: 1/4 the number of (n+1) X 7 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183983, the canonical program `A183983.P11542070752437603461` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183983 has offset 1).

The definition of A183983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183983.P10823130068245795718

`A183982(n+1)+20`
-/

namespace A183983.P10823130068245795718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) + 20

end

end A183983.P10823130068245795718

namespace A183983

/-- `A183982(n+1)+20` -/
def P10823130068245795718.Spec : Prop :=
  ∀ n, P10823130068245795718.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P9660007003316948183

`A183981(n+1)+30`
-/

namespace A183983.P9660007003316948183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) + 30

end

end A183983.P9660007003316948183

namespace A183983

/-- `A183981(n+1)+30` -/
def P9660007003316948183.Spec : Prop :=
  ∀ n, P9660007003316948183.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P14346507430415437345

`∑[A005418(n+1)]+44`
-/

namespace A183983.P14346507430415437345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 44

end

end A183983.P14346507430415437345

namespace A183983

/-- `∑[A005418(n+1)]+44` -/
def P14346507430415437345.Spec : Prop :=
  ∀ n, P14346507430415437345.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P13226629330568703786

`A183980(n+1)+(12/2)²`
-/

namespace A183983.P13226629330568703786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183980 (n + 1) : ℚ) + ((12 : ℚ) / 2) ^ 2

end

end A183983.P13226629330568703786

namespace A183983

/-- `A183980(n+1)+(12/2)²` -/
def P13226629330568703786.Spec : Prop :=
  ∀ n, P13226629330568703786.a n = (A183983 (n + 1) : ℚ)

end A183983

/-! ## A183983.P9753683769689378955

`A183984(n+1)+A023478(n)-n`
-/

namespace A183983.P9753683769689378955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183984 (n + 1) + (A023478 n - (n : ℤ))

end

end A183983.P9753683769689378955

namespace A183983

/-- `A183984(n+1)+A023478(n)-n` -/
def P9753683769689378955.Spec : Prop :=
  ∀ n, P9753683769689378955.a n = A183983 (n + 1)

theorem P9753683769689378955.correct : P9753683769689378955.Spec := by
  intro n
  simp only [A183983, Nat.add_sub_cancel, A183983.P9753683769689378955.a, A183983.P11542070752437603461.a, A023478, A023478.P13335276018786921324.a, A183984, A183984.P15355246000211894766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A183983

/-! ## A183983.P11542070752437603461

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=45, a(1)=47, a(2)=50, a(3)=56`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A183983

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P11542070752437603461.Spec : Prop :=
  ∀ n, P11542070752437603461.a n = A183983 (n + 1)

theorem P11542070752437603461.correct : P11542070752437603461.Spec := by
  intro n
  simp only [A183983, Nat.add_sub_cancel]

end A183983

/-!
# A183984: 1/4 the number of (n+1) X 8 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183984, the canonical program `A183984.P15355246000211894766` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183984 has offset 1).

The definition of A183984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183984.P15355246000211894766

`A183983(n+1)+36`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A183984

/-- `A183983(n+1)+36` -/
def P15355246000211894766.Spec : Prop :=
  ∀ n, P15355246000211894766.a n = A183984 (n + 1)

theorem P15355246000211894766.correct : P15355246000211894766.Spec := by
  intro n
  simp only [A183984, Nat.add_sub_cancel]

end A183984

/-! ## A183984.P15097735887303129151

`A183982(n+1)+56`
-/

namespace A183984.P15097735887303129151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) + 56

end

end A183984.P15097735887303129151

namespace A183984

/-- `A183982(n+1)+56` -/
def P15097735887303129151.Spec : Prop :=
  ∀ n, P15097735887303129151.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P12421601078503047480

`A183980(n+1)+72`
-/

namespace A183984.P12421601078503047480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + 72

end

end A183984.P12421601078503047480

namespace A183984

/-- `A183980(n+1)+72` -/
def P12421601078503047480.Spec : Prop :=
  ∀ n, P12421601078503047480.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P841055239683807843

`∑[A005418(n+1)]+80`
-/

namespace A183984.P841055239683807843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 80

end

end A183984.P841055239683807843

namespace A183984

/-- `∑[A005418(n+1)]+80` -/
def P841055239683807843.Spec : Prop :=
  ∀ n, P841055239683807843.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P3453165050877954614

`A000079(n)+A052955(n)+79`
-/

namespace A183984.P3453165050877954614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A052955 n + 79)

end

end A183984.P3453165050877954614

namespace A183984

/-- `A000079(n)+A052955(n)+79` -/
def P3453165050877954614.Spec : Prop :=
  ∀ n, P3453165050877954614.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P7574484711941207213

`A005418(n+2)+A016116(n+1)+78`
-/

namespace A183984.P7574484711941207213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (A016116 (n + 1) + 78)

end

end A183984.P7574484711941207213

namespace A183984

/-- `A005418(n+2)+A016116(n+1)+78` -/
def P7574484711941207213.Spec : Prop :=
  ∀ n, P7574484711941207213.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P730966458798788037

`A005418(n+2)+A011782(A008619(n+1))+78`
-/

namespace A183984.P730966458798788037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (A011782 (A008619 (n + 1)).toNat + 78)

end

end A183984.P730966458798788037

namespace A183984

/-- `A005418(n+2)+A011782(A008619(n+1))+78` -/
def P730966458798788037.Spec : Prop :=
  ∀ n, P730966458798788037.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P15102832999482808967

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=81, a(1)=83, a(2)=86, a(3)=92`
-/

namespace A183984.P15102832999482808967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [81, 83, 86, 92] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183984.P15102832999482808967

namespace A183984

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P15102832999482808967.Spec : Prop :=
  ∀ n, P15102832999482808967.a n = A183984 (n + 1)

end A183984

/-!
# A183985: 1/4 the number of (n+1) X 9 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183985, the canonical program `A183985.P17831467711889554897` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183985 has offset 1).

The definition of A183985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183985.P17831467711889554897

`A183984(n+1)+72`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A183985

/-- `A183984(n+1)+72` -/
def P17831467711889554897.Spec : Prop :=
  ∀ n, P17831467711889554897.a n = A183985 (n + 1)

theorem P17831467711889554897.correct : P17831467711889554897.Spec := by
  intro n
  simp only [A183985, Nat.add_sub_cancel]

end A183985

/-! ## A183985.P16376061726429247613

`A183983(n+1)+6*36/2`
-/

namespace A183985.P16376061726429247613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183983 (n + 1) : ℚ) + 6 * ((36 : ℚ) / 2)

end

end A183985.P16376061726429247613

namespace A183985

/-- `A183983(n+1)+6*36/2` -/
def P16376061726429247613.Spec : Prop :=
  ∀ n, P16376061726429247613.a n = (A183985 (n + 1) : ℚ)

theorem P16376061726429247613.correct : P16376061726429247613.Spec := by
  intro n
  simp only [A183985, Nat.add_sub_cancel, A183985.P16376061726429247613.a, A183985.P17831467711889554897.a, A183983, A183983.P11542070752437603461.a, A183984, A183984.P15355246000211894766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A183985

/-! ## A183985.P5993322470468485061

`A183982(n+1)+A183972(A005408(n)-2*n)`
-/

namespace A183985.P5993322470468485061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) + A183972 (A005408 n - (2 * n : ℤ)).toNat

end

end A183985.P5993322470468485061

namespace A183985

/-- `A183982(n+1)+A183972(A005408(n)-2*n)` -/
def P5993322470468485061.Spec : Prop :=
  ∀ n, P5993322470468485061.a n = A183985 (n + 1)

end A183985

/-! ## A183985.P46710819788184123

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=153, a(1)=155, a(2)=158, a(3)=164`
-/

namespace A183985.P46710819788184123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [153, 155, 158, 164] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183985.P46710819788184123

namespace A183985

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P46710819788184123.Spec : Prop :=
  ∀ n, P46710819788184123.a n = A183985 (n + 1)

end A183985

/-! ## A183985.P6505922397056662680

`A183982(n+1)+A184045(n+1)-A184042(n+1)`
-/

namespace A183985.P6505922397056662680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) + (A184045 (n + 1) - A184042 (n + 1))

end

end A183985.P6505922397056662680

namespace A183985

/-- `A183982(n+1)+A184045(n+1)-A184042(n+1)` -/
def P6505922397056662680.Spec : Prop :=
  ∀ n, P6505922397056662680.a n = A183985 (n + 1)

end A183985

/-! ## A183985.P717549656095015548

`A187206(A007318(A000217(n)))+A183981(n+1)`
-/

namespace A183985.P717549656095015548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187206 (A007318 (A000217 n).toNat).toNat + A183981 (n + 1)

end

end A183985.P717549656095015548

namespace A183985

/-- `A187206(A007318(A000217(n)))+A183981(n+1)` -/
def P717549656095015548.Spec : Prop :=
  ∀ n, P717549656095015548.a n = A183985 (n + 1)

end A183985

/-!
# A183986: T(n,k) = 1/4 the number of (n+1) X (k+1) binary arrays with all 2 X 2 subblock sums the same.

The programs for A183986, the canonical program `A183986.P9474763813998468520` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183986 has offset 1).

The definition of A183986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183986.P9474763813998468520

`A271709(n)+A209727(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A183986

/-- `A271709(n)+A209727(n+1)` -/
def P9474763813998468520.Spec : Prop :=
  ∀ n, P9474763813998468520.a n = A183986 (n + 1)

theorem P9474763813998468520.correct : P9474763813998468520.Spec := by
  intro n
  simp only [A183986, Nat.add_sub_cancel]

end A183986

/-! ## A183986.P5231702812763353880

`A209727(n+1)+A131816(n)+1`
-/

namespace A183986.P5231702812763353880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209727 (n + 1) + (A131816 n + 1)

end

end A183986.P5231702812763353880

namespace A183986

/-- `A209727(n+1)+A131816(n)+1` -/
def P5231702812763353880.Spec : Prop :=
  ∀ n, P5231702812763353880.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P10660197130660527815

`A271709(n)+floor(A209898(n+1)/4)`
-/

namespace A183986.P10660197130660527815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + ⌊(A209898 (n + 1) : ℚ) / 4⌋

end

end A183986.P10660197130660527815

namespace A183986

/-- `A271709(n)+floor(A209898(n+1)/4)` -/
def P10660197130660527815.Spec : Prop :=
  ∀ n, P10660197130660527815.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P5805151117890929883

`A209727(n+1)+A130321(n)+A059268(n)`
-/

namespace A183986.P5805151117890929883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209727 (n + 1) + (A130321 n + A059268 n)

end

end A183986.P5805151117890929883

namespace A183986

/-- `A209727(n+1)+A130321(n)+A059268(n)` -/
def P5805151117890929883.Spec : Prop :=
  ∀ n, P5805151117890929883.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P6816268241392188080

`A271709(n)+A103391(A209898(n+1)-8)`
-/

namespace A183986.P6816268241392188080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A103391 (A209898 (n + 1) - 8).toNat

end

end A183986.P6816268241392188080

namespace A183986

/-- `A271709(n)+A103391(A209898(n+1)-8)` -/
def P6816268241392188080.Spec : Prop :=
  ∀ n, P6816268241392188080.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P4914383392947874313

`A131816(n)+A008621(A209898(n+1))`
-/

namespace A183986.P4914383392947874313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + A008621 (A209898 (n + 1)).toNat

end

end A183986.P4914383392947874313

namespace A183986

/-- `A131816(n)+A008621(A209898(n+1))` -/
def P4914383392947874313.Spec : Prop :=
  ∀ n, P4914383392947874313.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P8418484098721362018

`A271709(n)+A002265(A209898(n+1))`
-/

namespace A183986.P8418484098721362018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A002265 (A209898 (n + 1)).toNat

end

end A183986.P8418484098721362018

namespace A183986

/-- `A271709(n)+A002265(A209898(n+1))` -/
def P8418484098721362018.Spec : Prop :=
  ∀ n, P8418484098721362018.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P11273547900201572243

`A008619(A184048(n+1))-A131816(n)`
-/

namespace A183986.P11273547900201572243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184048 (n + 1)).toNat - A131816 n

end

end A183986.P11273547900201572243

namespace A183986

/-- `A008619(A184048(n+1))-A131816(n)` -/
def P11273547900201572243.Spec : Prop :=
  ∀ n, P11273547900201572243.a n = A183986 (n + 1)

end A183986

/-!
# A183987: Ranks of (odd i)+j*r, when all i+j*r are ranked; r=golden ratio (1+sqrt(5))/2, i>=0, j>=0. Complement of A183988.

The programs for A183987, there is no canonical definition to state claims against.
-/

/-! ## A183987.P10818257887765541416

`eq[0, A084531(n+1)%2]+1`
-/

namespace A183987.P10818257887765541416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P10818257887765541416

/-! ## A183987.P13915888950778752118

`eq[1, A022328(n+1)%2]+1`
-/

namespace A183987.P13915888950778752118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022328 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P13915888950778752118

/-! ## A183987.P12541527748816841457

`lt[1, A107466(n+1)%3]+1`
-/

namespace A183987.P12541527748816841457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107466 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A183987.P12541527748816841457

/-! ## A183987.P3178145244869504028

`eq[1, and(1, A215344(n+1))]+1`
-/

namespace A183987.P3178145244869504028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P3178145244869504028

/-! ## A183987.P8775543380348771049

`record[(n+2)*A022328(n+2)%2]`
-/

namespace A183987.P8775543380348771049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A022328 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183987.P8775543380348771049

/-! ## A183987.P7949018683607685337

`eq[2, A020639(A084531(n+1))]+1`
-/

namespace A183987.P7949018683607685337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084531 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P7949018683607685337

/-! ## A183987.P7055638551233664944

`eq[2, A020639(A158456(n+1))]+1`
-/

namespace A183987.P7055638551233664944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P7055638551233664944

/-! ## A183987.P9437862519967063054

`∪[A183989(n+1), A183990(n+1)]`
-/

namespace A183987.P9437862519967063054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183987.P9437862519967063054

/-! ## A183987.P1206370891832453419

`eq[2, A020639(A022328(n+1)+1)]+1`
-/

namespace A183987.P1206370891832453419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022328 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P1206370891832453419

/-!
# A183988: Ranks of (even i)+j*r, when all i+j*r are ranked, r=golden ratio, i>=0, j>=0.

The programs for A183988, there is no canonical definition to state claims against.
-/

/-! ## A183988.P16496119756176015676

`comp[A183987(n+1)-1]+1`
-/

namespace A183988.P16496119756176015676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183988.P16496119756176015676

/-! ## A183988.P4320627902874019536

`eq[0, A022328(n+1)%2]+1`
-/

namespace A183988.P4320627902874019536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022328 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P4320627902874019536

/-! ## A183988.P4287360639890528892

`eq[1, A084531(n+1)%2]+1`
-/

namespace A183988.P4287360639890528892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P4287360639890528892

/-! ## A183988.P2880489728821731714

`eq[1, A107466(n+1)%3]+1`
-/

namespace A183988.P2880489728821731714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107466 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P2880489728821731714

/-! ## A183988.P14201832925834089755

`comp[(n+2)*A022328(n+2)%2]`
-/

namespace A183988.P14201832925834089755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A022328 (n + 2)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183988.P14201832925834089755

/-! ## A183988.P6032045668809313507

`record[(n+2)^(A084531(n+2)%2)]`
-/

namespace A183988.P6032045668809313507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.tmod (A084531 (n + 2)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183988.P6032045668809313507

/-! ## A183988.P10256964361765954189

`comp[A247714(n)-A059419(n+1)]`
-/

namespace A183988.P10256964361765954189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 n - A059419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183988.P10256964361765954189

/-! ## A183988.P1416356359684211705

`record[(n+1)%A183534(A017341(n))]`
-/

namespace A183988.P1416356359684211705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A183534 (A017341 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183988.P1416356359684211705

/-! ## A183988.P315024694438116098

`∪[A183991(n+1), A183992(n+1)]`
-/

namespace A183988.P315024694438116098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183988.P315024694438116098

/-! ## A183988.P7188584876796879077

`eq[2, A020639(A158456(n+1)+1)]+1`
-/

namespace A183988.P7188584876796879077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158456 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P7188584876796879077

/-!
# A183989: Ranks of (odd i)+(odd j)*r when all i+j*r are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A183989, there is no canonical definition to state claims against.
-/

/-! ## A183989.P16557409017695698077

`∩[A183987(n+1), A184332(n+1)]`
-/

namespace A183989.P16557409017695698077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183989.P16557409017695698077

/-! ## A183989.P515527446673758910

`∩[eq[1, A022328(n+1)%2]+1, A184332(n+1)]`
-/

namespace A183989.P515527446673758910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022328 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A183989.P515527446673758910

/-! ## A183989.P13909913350658530631

`∩[eq[1, A215345(n+1)%2]+1, A183987(n+1)]`
-/

namespace A183989.P13909913350658530631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215345 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A183989.P13909913350658530631

/-! ## A183989.P15649532559998360074

`∩[eq[0, A084531(n+2)%2]+2, A184332(n+1)]`
-/

namespace A183989.P15649532559998360074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 2)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A183989.P15649532559998360074

/-! ## A183989.P4778475656539443676

`∩[comp[A183988(n+1)], A184332(n+1)]`
-/

namespace A183989.P4778475656539443676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A183989.P4778475656539443676

/-!
# A183990: Indices of pairs with (odd i, even j) in list of pairs (i,j) ordered by value of i+j*r, where r=(1+sqrt(5))/2, i>=0, j>=0.

The programs for A183990, there is no canonical definition to state claims against.
-/

/-! ## A183990.P13906275606521591047

`∩[A183987(n+1), A184333(n+1)]`
-/

namespace A183990.P13906275606521591047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183990.P13906275606521591047

/-! ## A183990.P10346839277282828092

`eq[3, A184338(n+1)]+1`
-/

namespace A183990.P10346839277282828092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183990.P10346839277282828092

/-! ## A183990.P833750174437389059

`eq[3, A184338(A028310(n))]`
-/

namespace A183990.P833750174437389059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183990.P833750174437389059

/-! ## A183990.P3266931300243100668

`A020725(eq[3, A184338(n+1)])`
-/

namespace A183990.P3266931300243100668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183990.P3266931300243100668

/-! ## A183990.P9859019955241241003

`eq[3, A184338(A065033(2*n))]`
-/

namespace A183990.P9859019955241241003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183990.P9859019955241241003

/-!
# A183991: Ranks of (even i)+(odd j)*r when all i+j*r are ranked, r=golden ratio, i>=0, j>=0.

The programs for A183991, there is no canonical definition to state claims against.
-/

/-! ## A183991.P7893985745750644468

`A183989(n+1)+A183992(n+1)-(A183990(n+1)+1)`
-/

namespace A183991.P7893985745750644468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183989 (n + 1) + (A183992 (n + 1) - (A183990 (n + 1) + 1))

end

end A183991.P7893985745750644468

/-! ## A183991.P14270333635680379185

`∩[A183988(n+1), A184332(n+1)]`
-/

namespace A183991.P14270333635680379185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183991.P14270333635680379185

/-! ## A183991.P1481219985111137977

`eq[2, A184338(n+1)]+1`
-/

namespace A183991.P1481219985111137977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183991.P1481219985111137977

/-! ## A183991.P15704336564510826412

`eq[2, A184338(A028310(n))]`
-/

namespace A183991.P15704336564510826412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183991.P15704336564510826412

/-! ## A183991.P13303322318418796061

`A020725(eq[2, A184338(n+1)])`
-/

namespace A183991.P13303322318418796061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183991.P13303322318418796061

/-!
# A183992: Ranks of (even i)+(even j)*r when all i+j*r are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A183992, there is no canonical definition to state claims against.
-/

/-! ## A183992.P12866086643594185239

`∩[A183988(n+1), comp[A184332(n+1)]]`
-/

namespace A183992.P12866086643594185239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A183992.P12866086643594185239

/-! ## A183992.P8054684072920324574

`∩[A183988(n+1), A184333(n+1)]`
-/

namespace A183992.P8054684072920324574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183992.P8054684072920324574

/-! ## A183992.P15619629291338497767

`lt[3, A184338(n+1)]+1`
-/

namespace A183992.P15619629291338497767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A183992.P15619629291338497767

/-! ## A183992.P11931330151542580429

`A000027(eq[4, A184338(n+1)]+1)`
-/

namespace A183992.P11931330151542580429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183992.P11931330151542580429

/-! ## A183992.P7261023192812891431

`eq[4, A184338(n+1)]+A007318(∑[n])`
-/

namespace A183992.P7261023192812891431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A007318 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A183992.P7261023192812891431

/-!
# A183993: "Types" (parities of i and j) when all the numbers i+j*r are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A183993, there is no canonical definition to state claims against.
-/

/-! ## A183993.P5951630528724868494

`(A184338(n+1)^3)%5`
-/

namespace A183993.P5951630528724868494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184338 (n + 1) ^ 3) 5

end

end A183993.P5951630528724868494

/-! ## A183993.P7911255096482331925

`A082228(gcd(n, n+1)*A184338(n+1))`
-/

namespace A183993.P7911255096482331925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 ((Nat.gcd n (n + 1) : ℤ) * A184338 (n + 1)).toNat

end

end A183993.P7911255096482331925

/-! ## A183993.P5624917181442791223

`A082228(and(A183010(n), A184338(n+1)))`
-/

namespace A183993.P5624917181442791223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 (Int.land (A183010 n) (A184338 (n + 1))).toNat

end

end A183993.P5624917181442791223

/-! ## A183993.P3134425803337228270

`A096135(and(A183010(n), A184338(n+1)))`
-/

namespace A183993.P3134425803337228270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (Int.land (A183010 n) (A184338 (n + 1))).toNat

end

end A183993.P3134425803337228270

/-! ## A183993.P10902331303185546621

`A099257(and(A183010(n), A184338(n+1)))`
-/

namespace A183993.P10902331303185546621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099257 (Int.land (A183010 n) (A184338 (n + 1))).toNat

end

end A183993.P10902331303185546621

/-! ## A183993.P18196422961637769046

`A279788(xor(A178334(n), A184338(n+1)))`
-/

namespace A183993.P18196422961637769046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279788 (Int.xor (A178334 n) (A184338 (n + 1))).toNat

end

end A183993.P18196422961637769046

/-! ## A183993.P12565619950203979801

`A137824(lcm(A094267(n²), A184338(n+1)))`
-/

namespace A183993.P12565619950203979801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (Int.lcm (A094267 (n ^ 2)) (A184338 (n + 1)))

end

end A183993.P12565619950203979801

/-! ## A183993.P10271544654366942223

`A005206(xor(A178334(n), A184338(n+1)))+1`
-/

namespace A183993.P10271544654366942223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.xor (A178334 n) (A184338 (n + 1))).toNat + 1

end

end A183993.P10271544654366942223

/-! ## A183993.P16385391413643187311

`A129594(A001511(Δ[n²])*A184338(n+1))`
-/

namespace A183993.P16385391413643187311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A184338 (n + 1)).toNat

end

end A183993.P16385391413643187311

/-! ## A183993.P8458707674270877582

`A129594(A184338(n+1)/A001511(Δ[n²]))`
-/

namespace A183993.P8458707674270877582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (SequenceMachineLib.roundAway ((A184338 (n + 1) : ℚ) / (A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ))).toNat

end

end A183993.P8458707674270877582

/-!
# A183994: Number of (n+1)X(n+1) 0..2 arrays with all 2X2 subblock sums the same.

The programs for A183994, there is no canonical definition to state claims against.
-/

/-! ## A183994.P13035894521075208841

`A184003(∑[4*n]+1)`
-/

namespace A183994.P13035894521075208841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183994.P13035894521075208841

/-! ## A183994.P14157776853152011618

`or(1, A184003(A001844(n)))`
-/

namespace A183994.P14157776853152011618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (A001844 n).toNat)

end

end A183994.P14157776853152011618

/-! ## A183994.P11333723988612172227

`or(1, A184003(∑[A008574(n)]))`
-/

namespace A183994.P11333723988612172227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A183994.P11333723988612172227

/-! ## A183994.P10854656313435006831

`record[A003982(n)*A184003(n+1)]`
-/

namespace A183994.P10854656313435006831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183994.P10854656313435006831

/-! ## A183994.P2764531363435442064

`record[gcd(A003987(n), A184003(n+1))]`
-/

namespace A183994.P2764531363435442064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A184003 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183994.P2764531363435442064

/-!
# A183995: Number of (n+1) X 2 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183995, there is no canonical definition to state claims against.
-/

/-! ## A183995.P4638827821026595195

`A184003(∑[n]+1)`
-/

namespace A183995.P4638827821026595195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183995.P4638827821026595195

/-! ## A183995.P7958416177768487883

`record[A184003(n+1)]`
-/

namespace A183995.P7958416177768487883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183995.P7958416177768487883

/-! ## A183995.P9449417960662568300

`or(1, A184003(abs(xor(-1, ∑[n]))))`
-/

namespace A183995.P9449417960662568300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 |Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat)

end

end A183995.P9449417960662568300

/-! ## A183995.P5812723257344789516

`or(1, A184003(-xor(-1, ∑[n])))`
-/

namespace A183995.P5812723257344789516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat)

end

end A183995.P5812723257344789516

/-! ## A183995.P10226506454324033464

`or(1, A184003(∑[round(1/acot(n))]))`
-/

namespace A183995.P10226506454324033464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A183995.P10226506454324033464

/-!
# A183996: Number of (n+1) X 3 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183996, there is no canonical definition to state claims against.
-/

/-! ## A183996.P8848855444144933790

`A184003(∑[n+1]+2)`
-/

namespace A183996.P8848855444144933790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183996.P8848855444144933790

/-! ## A183996.P16697098208756540860

`lcm(3, A184003(A000096(n)+3))`
-/

namespace A183996.P16697098208756540860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184003 (A000096 n + 3).toNat)

end

end A183996.P16697098208756540860

/-! ## A183996.P17622318651812312809

`record[A184003(n+2)/A158405(n+1)]`
-/

namespace A183996.P17622318651812312809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184003 (n + 2) : ℚ) / (A158405 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183996.P17622318651812312809

/-! ## A183996.P3825070460724490403

`A007318(C(2, n))*A184003(A000096(n)+3)`
-/

namespace A183996.P3825070460724490403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184003 (A000096 n + 3).toNat

end

end A183996.P3825070460724490403

/-! ## A183996.P12875198230072034306

`A184003(A000096(n)+3)^A007318(C(n, 2))`
-/

namespace A183996.P12875198230072034306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184003 (A000096 n + 3).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A183996.P12875198230072034306

/-!
# A183997: Number of (n+1) X 4 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183997, there is no canonical definition to state claims against.
-/

/-! ## A183997.P14071541661030706345

`A184003(∑[n+2]+4)`
-/

namespace A183997.P14071541661030706345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183997.P14071541661030706345

/-! ## A183997.P7041171139828736407

`or(1, A184003(A167614(n+1)))`
-/

namespace A183997.P7041171139828736407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (A167614 (n + 1)).toNat)

end

end A183997.P7041171139828736407

/-! ## A183997.P15433090684434477536

`or(1, A184003(A000124(n+2)+2))`
-/

namespace A183997.P15433090684434477536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (A000124 (n + 2) + 2).toNat)

end

end A183997.P15433090684434477536

/-! ## A183997.P17250527897858441364

`record[A184003(n+4)/A064297(n+2)]`
-/

namespace A183997.P17250527897858441364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184003 (n + 4) : ℚ) / (A064297 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183997.P17250527897858441364

/-! ## A183997.P10745770979791434058

`A184003(A167614(n+1))+A000007(n+1)`
-/

namespace A183997.P10745770979791434058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A183997.P10745770979791434058

/-!
# A183998: Number of (n+1) X 5 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183998, there is no canonical definition to state claims against.
-/

/-! ## A183998.P17183341538499203050

`A184003(∑[n+3]+7)`
-/

namespace A183998.P17183341538499203050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183998.P17183341538499203050

/-! ## A183998.P11415565250216111986

`lcm(3, A184003(A055999(n)+10))`
-/

namespace A183998.P11415565250216111986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184003 (A055999 n + 10).toNat)

end

end A183998.P11415565250216111986

/-! ## A183998.P918989569993722770

`or(1, A184003(A167614(n+2)+1))`
-/

namespace A183998.P918989569993722770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184003 (A167614 (n + 2) + 1).toNat)

end

end A183998.P918989569993722770

/-! ## A183998.P3068650830698028068

`A007318(and(2, -n))*A184003(A055999(n)+10)`
-/

namespace A183998.P3068650830698028068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A184003 (A055999 n + 10).toNat

end

end A183998.P3068650830698028068

/-! ## A183998.P5023232942701364848

`A184003(A055999(n)+10)+char[A007318(n)+90]`
-/

namespace A183998.P5023232942701364848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 90

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A055999 n + 10).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A183998.P5023232942701364848

/-!
# A183999: Number of (n+1) X 6 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183999, there is no canonical definition to state claims against.
-/

/-! ## A183999.P16619214753528111059

`A184003(∑[n+4]+11)`
-/

namespace A183999.P16619214753528111059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A183999.P16619214753528111059

/-! ## A183999.P15568690850812490825

`A175782(n)*A184003(A155212(n)+13)`
-/

namespace A183999.P15568690850812490825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 n * A184003 (A155212 n + 13).toNat

end

end A183999.P15568690850812490825

