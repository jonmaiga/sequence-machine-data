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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B008.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A238902: a(n) = |{0 < k <= n: pi(pi(k*n)) is a square}|, where pi(x) denotes the number of primes not exceeding x.

The programs for A238902, there is no canonical definition to state claims against.
-/

/-! ## A238902.P1442173248359987178

`A001221(A205004(n+1)+A026701(n))`
-/

namespace A238902.P1442173248359987178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A205004 (n + 1) + A026701 n).toNat

end

end A238902.P1442173248359987178

/-! ## A238902.P1106833281948801954

`A000120(A347449(3*n+4)%A324694(3*n+4))`
-/

namespace A238902.P1106833281948801954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A347449 (3 * n + 4)) (A324694 (3 * n + 4))).toNat

end

end A238902.P1106833281948801954

/-! ## A238902.P9723523505747608171

`A001221(xor(5, ∑[A210369(n)]))`
-/

namespace A238902.P9723523505747608171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor 5 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A238902.P9723523505747608171

/-! ## A238902.P10328760829473359873

`A001221(∑[or(11, A125588(n))])`
-/

namespace A238902.P10328760829473359873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (A125588 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238902.P10328760829473359873

/-! ## A238902.P3511420000034213020

`A139355(A092434(n+1)+A076739(n))`
-/

namespace A238902.P3511420000034213020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A092434 (n + 1) + A076739 n).toNat

end

end A238902.P3511420000034213020

/-!
# A238906: Number of (n+1) X (1+1) 0..2 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A238906, the canonical program `A238906.P13839090840902551452` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238906 has offset 1).

The definition of A238906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238906.P13839090840902551452

`4*a(n-1)+6*a(n-2)-3*a(n-3)` with `a(0)=3, a(1)=9, a(2)=54`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A238906

/-- `4*a(n-1)+6*a(n-2)-3*a(n-3)` -/
def P13839090840902551452.Spec : Prop :=
  ∀ n, P13839090840902551452.a n = A238906 (n + 1)

theorem P13839090840902551452.correct : P13839090840902551452.Spec := by
  intro n
  simp only [A238906, Nat.add_sub_cancel]

end A238906

/-! ## A238906.P18308848406985741246

`sqrt(A238908(n+1)/6)`
-/

namespace A238906.P18308848406985741246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A238908 (n + 1) : ℚ) / 6 : ℝ)

end

end A238906.P18308848406985741246

namespace A238906

/-- `sqrt(A238908(n+1)/6)` -/
def P18308848406985741246.Spec : Prop :=
  ∀ n, P18308848406985741246.a n = (A238906 (n + 1) : ℝ)

end A238906

/-! ## A238906.P13690797708976526719

`A238912(∑[n]+1)`
-/

namespace A238906.P13690797708976526719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238906.P13690797708976526719

namespace A238906

/-- `A238912(∑[n]+1)` -/
def P13690797708976526719.Spec : Prop :=
  ∀ n, P13690797708976526719.a n = A238906 (n + 1)

end A238906

/-! ## A238906.P3176213805433513531

`record[root(A238912(n+1), A103406(n))]`
-/

namespace A238906.P3176213805433513531
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238912 (n + 1) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238906.P3176213805433513531

namespace A238906

/-- `record[root(A238912(n+1), A103406(n))]` -/
def P3176213805433513531.Spec : Prop :=
  ∀ n, P3176213805433513531.a n = (A238906 (n + 1) : ℝ)

end A238906

/-!
# A238907: Number of (n+1) X (2+1) 0..2 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A238907, there is no canonical definition to state claims against.
-/

/-! ## A238907.P9780622281303193500

`A238912(∑[n+1]+2)`
-/

namespace A238907.P9780622281303193500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238907.P9780622281303193500

/-! ## A238907.P16498677842583186252

`record[A110314(n)*A238912(n+3)]`
-/

namespace A238907.P16498677842583186252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A238912 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238907.P16498677842583186252

/-! ## A238907.P5137165988428871477

`record[root(A238912(n+2), A103406(n))]`
-/

namespace A238907.P5137165988428871477
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238912 (n + 2) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238907.P5137165988428871477

/-! ## A238907.P13022856827950445452

`record[gcd(A238889(n+2), A238912(n+2))]`
-/

namespace A238907.P13022856827950445452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238889 (n + 2)) (A238912 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238907.P13022856827950445452

/-!
# A238908: Number of (n+1) X (3+1) 0..2 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A238908, there is no canonical definition to state claims against.
-/

/-! ## A238908.P18324196857654433743

`6*A238906(n+1)²`
-/

namespace A238908.P18324196857654433743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A238906 (n + 1) ^ 2

end

end A238908.P18324196857654433743

/-! ## A238908.P4754740655730048766

`A238912(∑[n+2]+4)`
-/

namespace A238908.P4754740655730048766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238908.P4754740655730048766

/-! ## A238908.P10623741528844029729

`lcm(3, A238912(A167614(n+1)))`
-/

namespace A238908.P10623741528844029729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A238912 (A167614 (n + 1)).toNat)

end

end A238908.P10623741528844029729

/-! ## A238908.P16338607572219598937

`lcm(2, A238912(A055999(n)+4))`
-/

namespace A238908.P16338607572219598937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238912 (A055999 n + 4).toNat)

end

end A238908.P16338607572219598937

/-!
# A238909: Number of (n+1) X (4+1) 0..2 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A238909, there is no canonical definition to state claims against.
-/

/-! ## A238909.P2746166012013567055

`A238912(A374004(n+1))`
-/

namespace A238909.P2746166012013567055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A374004 (n + 1)).toNat

end

end A238909.P2746166012013567055

/-! ## A238909.P18390195518267665231

`A238912(A141214(n)+7)`
-/

namespace A238909.P18390195518267665231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A141214 n + 7).toNat

end

end A238909.P18390195518267665231

/-! ## A238909.P16321887585294960810

`A238912(A052905(n)+9)`
-/

namespace A238909.P16321887585294960810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A052905 n + 9).toNat

end

end A238909.P16321887585294960810

/-! ## A238909.P12998463465758365061

`A238912(A055999(n)+10)`
-/

namespace A238909.P12998463465758365061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A055999 n + 10).toNat

end

end A238909.P12998463465758365061

/-! ## A238909.P2000951865269070490

`A238912(A167614(n+2)+1)`
-/

namespace A238909.P2000951865269070490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A167614 (n + 2) + 1).toNat

end

end A238909.P2000951865269070490

/-!
# A238910: Number of (n+1)X(5+1) 0..2 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A238910, there is no canonical definition to state claims against.
-/

/-! ## A238910.P1603135800035503847

`A238912(A374005(n+1))`
-/

namespace A238910.P1603135800035503847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A374005 (n + 1)).toNat

end

end A238910.P1603135800035503847

/-! ## A238910.P13504070193580214168

`A238912(A155212(n)+13)`
-/

namespace A238910.P13504070193580214168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A155212 n + 13).toNat

end

end A238910.P13504070193580214168

/-! ## A238910.P10810724585151866300

`A238912(Δ[A264443(n)])`
-/

namespace A238910.P10810724585151866300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (f1 (n + 1) - f1 n).toNat

end

end A238910.P10810724585151866300

/-! ## A238910.P5157234130628787208

`A238912(eq[4, A193592(n)])`
-/

namespace A238910.P5157234130628787208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238910.P5157234130628787208

/-! ## A238910.P1793565082897966855

`A238912(eq[8, A140996(n)])`
-/

namespace A238910.P1793565082897966855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238910.P1793565082897966855

/-!
# A238911: Number of (n+1)X(6+1) 0..2 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A238911, there is no canonical definition to state claims against.
-/

/-! ## A238911.P4681907739582459320

`A238912(A374007(n+1))`
-/

namespace A238911.P4681907739582459320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (A374007 (n + 1)).toNat

end

end A238911.P4681907739582459320

/-! ## A238911.P13072593537794008128

`A238912(eq[5, A193592(n)])`
-/

namespace A238911.P13072593537794008128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238911.P13072593537794008128

/-! ## A238911.P7047316622119067049

`A238912(Δ[A264443(n+1)]-1)`
-/

namespace A238911.P7047316622119067049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (f1 (n + 1) - f1 n - 1).toNat

end

end A238911.P7047316622119067049

/-! ## A238911.P2962386947589085797

`A238912(eq[6, A195079(n+1)])`
-/

namespace A238911.P2962386947589085797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238911.P2962386947589085797

/-!
# A238913: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 2.

The programs for A238913, the canonical program `A238913.P6336402216914630951` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238913 has offset 0).

The definition of A238913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238913.P6336402216914630951

`A000102(n)+A000100(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A238913

/-- `A000102(n)+A000100(n)` -/
def P6336402216914630951.Spec : Prop :=
  ∀ n, P6336402216914630951.a n = A238913 n

theorem P6336402216914630951.correct : P6336402216914630951.Spec := by
  intro n
  simp only [A238913]

end A238913

/-! ## A238913.P12226813951243948961

`A000078(n+3)-A000045(n+1)`
-/

namespace A238913.P12226813951243948961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - A000045 (n + 1)

end

end A238913.P12226813951243948961

namespace A238913

/-- `A000078(n+3)-A000045(n+1)` -/
def P12226813951243948961.Spec : Prop :=
  ∀ n, P12226813951243948961.a n = A238913 n

end A238913

/-! ## A238913.P5490338586084750809

`A274759(3*n+1)-∑[A212804(n)]`
-/

namespace A238913.P5490338586084750809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238913.P5490338586084750809

namespace A238913

/-- `A274759(3*n+1)-∑[A212804(n)]` -/
def P5490338586084750809.Spec : Prop :=
  ∀ n, P5490338586084750809.a n = A238913 n

end A238913

/-! ## A238913.P15913891989794762011

`A274759(3*n+1)-A123231(2*n+1)`
-/

namespace A238913.P15913891989794762011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n + 1) - A123231 (2 * n + 1)

end

end A238913.P15913891989794762011

namespace A238913

/-- `A274759(3*n+1)-A123231(2*n+1)` -/
def P15913891989794762011.Spec : Prop :=
  ∀ n, P15913891989794762011.a n = A238913 n

end A238913

/-! ## A238913.P7736131175267232862

`A048887(∑[n+3])-A000045(n+1)`
-/

namespace A238913.P7736131175267232862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 (n + 1)

end

end A238913.P7736131175267232862

namespace A238913

/-- `A048887(∑[n+3])-A000045(n+1)` -/
def P7736131175267232862.Spec : Prop :=
  ∀ n, P7736131175267232862.a n = A238913 n

end A238913

/-! ## A238913.P2822573270182260133

`(A365293(n)-A005442(n))/A000142(n)`
-/

namespace A238913.P2822573270182260133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365293 n - A005442 n : ℚ) / (A000142 n : ℚ)

end

end A238913.P2822573270182260133

namespace A238913

/-- `(A365293(n)-A005442(n))/A000142(n)` -/
def P2822573270182260133.Spec : Prop :=
  ∀ n, P2822573270182260133.a n = (A238913 n : ℚ)

end A238913

/-!
# A238914: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 3.

The programs for A238914, there is no canonical definition to state claims against.
-/

/-! ## A238914.P8207115280199667576

`A239075(n)-A000078(n+3)`
-/

namespace A238914.P8207115280199667576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239075 n - A000078 (n + 3)

end

end A238914.P8207115280199667576

/-! ## A238914.P1729671488939952999

`A239075(n)-A238888(A027379(n+1))`
-/

namespace A238914.P1729671488939952999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239075 n - A238888 (A027379 (n + 1)).toNat

end

end A238914.P1729671488939952999

/-! ## A238914.P6446087472976529083

`A103128(A104448(n))-comp[n*(n+3)]`
-/

namespace A238914.P6446087472976529083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A104448 n).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A238914.P6446087472976529083

/-! ## A238914.P9914968987100898897

`A337482(n)+A195152(A290994(n))`
-/

namespace A238914.P9914968987100898897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337482 n + A195152 (A290994 n).toNat

end

end A238914.P9914968987100898897

/-!
# A238915: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 4.

The programs for A238915, there is no canonical definition to state claims against.
-/

/-! ## A238915.P5170063272689601649

`A239076(n)-A239075(n)`
-/

namespace A238915.P5170063272689601649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239076 n - A239075 n

end

end A238915.P5170063272689601649

/-! ## A238915.P418956847703510512

`A238888(eq[5, A004736(n+1)])-A239075(n)`
-/

namespace A238915.P418956847703510512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A239075 n

end

end A238915.P418956847703510512

/-! ## A238915.P3432824784180318184

`A239076(A062399(n))%A239075(n)`
-/

namespace A238915.P3432824784180318184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239076 (A062399 n).toNat) (A239075 n)

end

end A238915.P3432824784180318184

/-! ## A238915.P14354598945987466481

`A265370((n+2)*A320644(n+1))`
-/

namespace A238915.P14354598945987466481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 ((n + 2 : ℤ) * A320644 (n + 1)).toNat

end

end A238915.P14354598945987466481

/-! ## A238915.P8151696348048842299

`A065710(A275857(n)%A350725(n))`
-/

namespace A238915.P8151696348048842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (Int.tmod (A275857 n) (A350725 n)).toNat

end

end A238915.P8151696348048842299

/-!
# A238916: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 5.

The programs for A238916, there is no canonical definition to state claims against.
-/

/-! ## A238916.P17743754358255478992

`A239077(n)-A239076(n)`
-/

namespace A238916.P17743754358255478992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239077 n - A239076 n

end

end A238916.P17743754358255478992

/-! ## A238916.P18109219537021883273

`A239077(n)-A238888(eq[5, A004736(n+1)])`
-/

namespace A238916.P18109219537021883273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239077 n - A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238916.P18109219537021883273

/-! ## A238916.P540763270225149791

`A238888(A055998(n+4)-3)-(A239075(n)+A238915(n))`
-/

namespace A238916.P540763270225149791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A055998 (n + 4) - 3).toNat - (A239075 n + A238915 n)

end

end A238916.P540763270225149791

/-! ## A238916.P2493257879708427132

`A004178(A239077(n)%A239076(n))`
-/

namespace A238916.P2493257879708427132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (Int.tmod (A239077 n) (A239076 n)).toNat

end

end A238916.P2493257879708427132

/-! ## A238916.P4741286986308990945

`A239077(A062003(n))%A239076(n)`
-/

namespace A238916.P4741286986308990945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239077 (A062003 n).toNat) (A239076 n)

end

end A238916.P4741286986308990945

/-!
# A238917: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 6.

The programs for A238917, there is no canonical definition to state claims against.
-/

/-! ## A238917.P12718608426945993382

`A239078(n)-A239077(n)`
-/

namespace A238917.P12718608426945993382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239078 n - A239077 n

end

end A238917.P12718608426945993382

/-! ## A238917.P9503920040018932225

`A004178(A239078(n)%A239077(n))`
-/

namespace A238917.P9503920040018932225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (Int.tmod (A239078 n) (A239077 n)).toNat

end

end A238917.P9503920040018932225

/-! ## A238917.P6042004774719012391

`A316400(A214938(n))`
-/

namespace A238917.P6042004774719012391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316400 (A214938 n).toNat

end

end A238917.P6042004774719012391

/-! ## A238917.P5585471428193027514

`A138554(∑[A058834(n)])`
-/

namespace A238917.P5585471428193027514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238917.P5585471428193027514

/-! ## A238917.P6291928302170897122

`A025437(A148511(n+1))`
-/

namespace A238917.P6291928302170897122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A148511 (n + 1)).toNat

end

end A238917.P6291928302170897122

/-!
# A238918: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 7.

The programs for A238918, there is no canonical definition to state claims against.
-/

/-! ## A238918.P15229572065581388161

`A239079(n)-A239078(n)`
-/

namespace A238918.P15229572065581388161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239079 n - A239078 n

end

end A238918.P15229572065581388161

/-! ## A238918.P17903227159223756607

`A004180(A239079(n)%A239078(n))`
-/

namespace A238918.P17903227159223756607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (Int.tmod (A239079 n) (A239078 n)).toNat

end

end A238918.P17903227159223756607

/-! ## A238918.P9174913389990580061

`and(A099268(A335604(n)), A133022(n))`
-/

namespace A238918.P9174913389990580061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099268 (A335604 n).toNat) (A133022 n)

end

end A238918.P9174913389990580061

/-! ## A238918.P9253950652857577491

`A076134(A076144(n+1)^A319401(n))`
-/

namespace A238918.P9253950652857577491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076134 (SequenceMachineLib.roundAway ((A076144 (n + 1) : ℚ) ^ (A319401 n : ℤ))).toNat

end

end A238918.P9253950652857577491

/-! ## A238918.P6690093007069017975

`A076134(A078358(n+1)^A319401(n))`
-/

namespace A238918.P6690093007069017975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076134 (SequenceMachineLib.roundAway ((A078358 (n + 1) : ℚ) ^ (A319401 n : ℤ))).toNat

end

end A238918.P6690093007069017975

/-!
# A238919: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 8.

The programs for A238919, there is no canonical definition to state claims against.
-/

/-! ## A238919.P4962973866320320569

`A239080(n)-A239079(n)`
-/

namespace A238919.P4962973866320320569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239080 n - A239079 n

end

end A238919.P4962973866320320569

/-! ## A238919.P15151258907700147334

`A159966(A239080(n)%A239079(n))`
-/

namespace A238919.P15151258907700147334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (Int.tmod (A239080 n) (A239079 n)).toNat

end

end A238919.P15151258907700147334

/-! ## A238919.P5071366046605429223

`A112802(A049938(n+1)%A282647(3*n+5))`
-/

namespace A238919.P5071366046605429223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (Int.tmod (A049938 (n + 1)) (A282647 (3 * n + 5))).toNat

end

end A238919.P5071366046605429223

/-!
# A238920: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 9.

The programs for A238920, there is no canonical definition to state claims against.
-/

/-! ## A238920.P11111841458334165625

`A239081(n)-A239080(n)`
-/

namespace A238920.P11111841458334165625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239081 n - A239080 n

end

end A238920.P11111841458334165625

/-! ## A238920.P15858285281063780567

`A239081(n)-A238888(A155212(n+5)-1)`
-/

namespace A238920.P15858285281063780567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239081 n - A238888 (A155212 (n + 5) - 1).toNat

end

end A238920.P15858285281063780567

/-! ## A238920.P5866089498284513594

`A004176(A239081(n)%A239080(n))`
-/

namespace A238920.P5866089498284513594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (Int.tmod (A239081 n) (A239080 n)).toNat

end

end A238920.P5866089498284513594

/-!
# A238921: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 10.

The programs for A238921, there is no canonical definition to state claims against.
-/

/-! ## A238921.P4418115826889097085

`A239082(n)-A239081(n)`
-/

namespace A238921.P4418115826889097085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239082 n - A239081 n

end

end A238921.P4418115826889097085

/-!
# A238923: Number of (n+1) X (1+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238923, the canonical program `A238923.P8978643604632959965` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238923 has offset 1).

The definition of A238923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238923.P8978643604632959965

`3*(a(n-1)+a(n-2))` with `a(0)=12, a(1)=36`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A238923

/-- `3*(a(n-1)+a(n-2))` -/
def P8978643604632959965.Spec : Prop :=
  ∀ n, (P8978643604632959965.a n : ℤ) = A238923 (n + 1)

theorem P8978643604632959965.correct : P8978643604632959965.Spec := by
  intro n
  simp only [A238923, Nat.add_sub_cancel]

end A238923

/-! ## A238923.P11204623746778840634

`4*A106435(n+1)`
-/

namespace A238923.P11204623746778840634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A106435 (n + 1)

end

end A238923.P11204623746778840634

namespace A238923

/-- `4*A106435(n+1)` -/
def P11204623746778840634.Spec : Prop :=
  ∀ n, P11204623746778840634.a n = A238923 (n + 1)

end A238923

/-! ## A238923.P3464853176522271709

`12*A030195(n+1)`
-/

namespace A238923.P3464853176522271709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A030195 (n + 1)

end

end A238923.P3464853176522271709

namespace A238923

/-- `12*A030195(n+1)` -/
def P3464853176522271709.Spec : Prop :=
  ∀ n, P3464853176522271709.a n = A238923 (n + 1)

end A238923

/-! ## A238923.P9927741214992791667

`∑[4*Δ[A106435(n)]]`
-/

namespace A238923.P9927741214992791667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238923.P9927741214992791667

namespace A238923

/-- `∑[4*Δ[A106435(n)]]` -/
def P9927741214992791667.Spec : Prop :=
  ∀ n, P9927741214992791667.a n = A238923 (n + 1)

end A238923

/-! ## A238923.P6195221115353728197

`∑[12*Δ[A030195(n)]]`
-/

namespace A238923.P6195221115353728197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238923.P6195221115353728197

namespace A238923

/-- `∑[12*Δ[A030195(n)]]` -/
def P6195221115353728197.Spec : Prop :=
  ∀ n, P6195221115353728197.a n = A238923 (n + 1)

end A238923

/-!
# A238924: Number of (n+1)X(2+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238924, there is no canonical definition to state claims against.
-/

/-! ## A238924.P11485919639392596342

`A238929(∑[n+2])`
-/

namespace A238924.P11485919639392596342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238924.P11485919639392596342

/-! ## A238924.P9043322062751034837

`record[A238929(A198455(n+1))]`
-/

namespace A238924.P9043322062751034837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238924.P9043322062751034837

/-! ## A238924.P4816977832711435633

`record[A238929(Δ[A003453(n+5)])]`
-/

namespace A238924.P4816977832711435633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238924.P4816977832711435633

/-! ## A238924.P1611226259416363478

`record[lcm(A167374(n+1), A238929(n+2))]`
-/

namespace A238924.P1611226259416363478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 (n + 1)) (A238929 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238924.P1611226259416363478

/-! ## A238924.P3682268630897115407

`record[A238929(A198453(n+1))]`
-/

namespace A238924.P3682268630897115407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238924.P3682268630897115407

/-!
# A238925: Number of (n+1) X (3+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238925, there is no canonical definition to state claims against.
-/

/-! ## A238925.P17386746205044512631

`A238929(∑[n+3]+1)`
-/

namespace A238925.P17386746205044512631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238925.P17386746205044512631

/-! ## A238925.P3143954694341809390

`A238929(A034856(n+2))+Δ[A184945(n)]`
-/

namespace A238925.P3143954694341809390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A034856 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A238925.P3143954694341809390

/-! ## A238925.P3860541944861825387

`A238929(A034856(n+2))%A238926(n+1)`
-/

namespace A238925.P3860541944861825387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238929 (A034856 (n + 2)).toNat) (A238926 (n + 1))

end

end A238925.P3860541944861825387

/-! ## A238925.P16577766872835830827

`A238929(A034856(n+2))+A008683(4*A007318(n))`
-/

namespace A238925.P16577766872835830827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A034856 (n + 2)).toNat + A008683 (4 * A007318 n).toNat

end

end A238925.P16577766872835830827

/-!
# A238926: Number of (n+1)X(4+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238926, there is no canonical definition to state claims against.
-/

/-! ## A238926.P4063681913147579737

`A238929(∑[n+4]+3)`
-/

namespace A238926.P4063681913147579737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A238926.P4063681913147579737

/-!
# A238927: Number of (n+1)X(5+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238927, there is no canonical definition to state claims against.
-/

/-! ## A238927.P1775190704419311422

`A238929(eq[3, A152157(n)])`
-/

namespace A238927.P1775190704419311422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238927.P1775190704419311422

/-! ## A238927.P912374571422918637

`A238929(eq[8, A141020(n)])`
-/

namespace A238927.P912374571422918637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238927.P912374571422918637

/-! ## A238927.P9481430203495090256

`A238929(Δ[A023545(n+1)])`
-/

namespace A238927.P9481430203495090256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (f1 (n + 1) - f1 n).toNat

end

end A238927.P9481430203495090256

/-!
# A238930: Number of (1+1)X(n+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238930, there is no canonical definition to state claims against.
-/

/-! ## A238930.P10858144991497585355

`sqrt(A238932(n+1))`
-/

namespace A238930.P10858144991497585355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A238932 (n + 1) : ℝ)

end

end A238930.P10858144991497585355

/-! ## A238930.P7782939164161305633

`A238929(∑[n]+1)`
-/

namespace A238930.P7782939164161305633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238930.P7782939164161305633

/-! ## A238930.P123085962845658654

`lcm(2, A238929(A000124(n)))`
-/

namespace A238930.P123085962845658654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238929 (A000124 n).toNat)

end

end A238930.P123085962845658654

/-! ## A238930.P15253171497859482062

`record[gcd(A004247(n), A238929(n+1))]`
-/

namespace A238930.P15253171497859482062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A238929 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238930.P15253171497859482062

/-! ## A238930.P16589185007904747062

`record[root(A238929(n+1), A008292(n+1))]`
-/

namespace A238930.P16589185007904747062
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238929 (n + 1) : ℝ) ^ (1 / (A008292 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238930.P16589185007904747062

/-!
# A238931: Number of (2+1)X(n+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238931, there is no canonical definition to state claims against.
-/

/-! ## A238931.P4209427642782303554

`A238929(∑[n+1]+2)`
-/

namespace A238931.P4209427642782303554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238931.P4209427642782303554

/-! ## A238931.P5019572816754159089

`record[A238929(A130270(n+1)+2)]`
-/

namespace A238931.P5019572816754159089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238931.P5019572816754159089

/-! ## A238931.P17391879173603466627

`lcm(2, A238929(A252460(2*(n+2))))`
-/

namespace A238931.P17391879173603466627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238929 (A252460 (2 * (n + 2))).toNat)

end

end A238931.P17391879173603466627

/-! ## A238931.P15348601154803015034

`A238929(A252460(2*(n+2)))+A025438(n)`
-/

namespace A238931.P15348601154803015034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A252460 (2 * (n + 2))).toNat + A025438 n

end

end A238931.P15348601154803015034

/-! ## A238931.P12614638541509471874

`A238929(A252460(2*(n+2)))%A238932(n+1)`
-/

namespace A238931.P12614638541509471874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238929 (A252460 (2 * (n + 2))).toNat) (A238932 (n + 1))

end

end A238931.P12614638541509471874

/-!
# A238932: Number of (3+1)X(n+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238932, there is no canonical definition to state claims against.
-/

/-! ## A238932.P270012700821116565

`A238930(n+1)²`
-/

namespace A238932.P270012700821116565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238930 (n + 1) ^ 2

end

end A238932.P270012700821116565

/-! ## A238932.P16739417621875891951

`A238930(n+1)^A001316(A001316(n))`
-/

namespace A238932.P16739417621875891951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238930 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A238932.P16739417621875891951

/-! ## A238932.P17350966880357231767

`A238930(n+1)^A014963(A140513(n))`
-/

namespace A238932.P17350966880357231767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238930 (n + 1) : ℚ) ^ (A014963 (A140513 n).toNat : ℤ)

end

end A238932.P17350966880357231767

/-! ## A238932.P2855238476944715374

`A238930(A000027(n+1))*A238930(n+1)`
-/

namespace A238932.P2855238476944715374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238930 (A000027 (n + 1)).toNat * A238930 (n + 1)

end

end A238932.P2855238476944715374

/-! ## A238932.P10973967152594967205

`A238930(n+1)^A000005(A096246(n+1))`
-/

namespace A238932.P10973967152594967205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238930 (n + 1) : ℚ) ^ (A000005 (A096246 (n + 1)).toNat : ℤ)

end

end A238932.P10973967152594967205

/-! ## A238932.P15705873918900240423

`A238930(n+1)^A275723(A152948(n+11))`
-/

namespace A238932.P15705873918900240423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238930 (n + 1) : ℚ) ^ (A275723 (A152948 (n + 11)).toNat : ℤ)

end

end A238932.P15705873918900240423

/-!
# A238933: Number of (4+1)X(n+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238933, there is no canonical definition to state claims against.
-/

/-! ## A238933.P17351076506465434711

`A238929(A141214(n)+7)`
-/

namespace A238933.P17351076506465434711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A141214 n + 7).toNat

end

end A238933.P17351076506465434711

/-! ## A238933.P587776225429265855

`A238929(A052905(n)+9)`
-/

namespace A238933.P587776225429265855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A052905 n + 9).toNat

end

end A238933.P587776225429265855

/-! ## A238933.P9717478925223185423

`A238929(A055999(n)+10)`
-/

namespace A238933.P9717478925223185423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A055999 n + 10).toNat

end

end A238933.P9717478925223185423

/-! ## A238933.P5625444745733597966

`A238929(A167614(n+2)+1)`
-/

namespace A238933.P5625444745733597966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A167614 (n + 2) + 1).toNat

end

end A238933.P5625444745733597966

/-! ## A238933.P4134988070145216501

`A238929(A000124(n+3)+3)`
-/

namespace A238933.P4134988070145216501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A000124 (n + 3) + 3).toNat

end

end A238933.P4134988070145216501

/-!
# A238934: Number of (5+1)X(n+1) 0..3 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A238934, there is no canonical definition to state claims against.
-/

/-! ## A238934.P17134395383927951065

`A238929(A167499(n+3))`
-/

namespace A238934.P17134395383927951065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (A167499 (n + 3)).toNat

end

end A238934.P17134395383927951065

/-! ## A238934.P3029259488957615216

`A238929(eq[6, A131818(n+1)])`
-/

namespace A238934.P3029259488957615216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238934.P3029259488957615216

/-!
# A238936: Powers of 6 without the digit '0' in their decimal expansion.

The programs for A238936, there is no canonical definition to state claims against.
-/

/-! ## A238936.P17132474943549798000

`6^A030702(n)`
-/

namespace A238936.P17132474943549798000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A030702 (n + 1) : ℤ)

end

end A238936.P17132474943549798000

/-! ## A238936.P2239007004444305199

`6^A305926(n)`
-/

namespace A238936.P2239007004444305199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A305926 n : ℤ)

end

end A238936.P2239007004444305199

/-! ## A238936.P1321905835306351910

`A000400(A030702(n))`
-/

namespace A238936.P1321905835306351910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A030702 (n + 1)).toNat

end

end A238936.P1321905835306351910

/-! ## A238936.P18435376025580296700

`A000400(A305926(n))`
-/

namespace A238936.P18435376025580296700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A305926 n).toNat

end

end A238936.P18435376025580296700

/-! ## A238936.P7320120420586472287

`6^eq[1, A336844(∑[A048673(n+1)])]`
-/

namespace A238936.P7320120420586472287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336844 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238936.P7320120420586472287

/-!
# A238937: Number of squarefree permutations of {1, ..., n} up to symmetry.

The programs for A238937, there is no canonical definition to state claims against.
-/

/-! ## A238937.P6762544040661285255

`A371421(A148059(n))`
-/

namespace A238937.P6762544040661285255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371421 (A148059 n).toNat

end

end A238937.P6762544040661285255

/-! ## A238937.P12751976859988407383

`A289831(A130368(n!))`
-/

namespace A238937.P12751976859988407383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A130368 (Nat.factorial n)).toNat

end

end A238937.P12751976859988407383

/-! ## A238937.P1225626153249170418

`A055086(∑[A024200(n)])`
-/

namespace A238937.P1225626153249170418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238937.P1225626153249170418

/-!
# A238938: Powers of 2 without the digit '0' in their decimal expansion.

The programs for A238938, there is no canonical definition to state claims against.
-/

/-! ## A238938.P1498836989835556019

`2^A007377(n+1)`
-/

namespace A238938.P1498836989835556019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007377 (n + 1) : ℤ)

end

end A238938.P1498836989835556019

/-! ## A238938.P4735047510583668036

`2^A305932(n)`
-/

namespace A238938.P4735047510583668036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305932 n : ℤ)

end

end A238938.P4735047510583668036

/-! ## A238938.P1316869233806443290

`A000079(A305932(n))`
-/

namespace A238938.P1316869233806443290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A305932 n).toNat

end

end A238938.P1316869233806443290

/-! ## A238938.P5600259382648459525

`∩[A003596(n+1), A238985(n+1)]`
-/

namespace A238938.P5600259382648459525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238938.P5600259382648459525

/-! ## A238938.P3000995518750901271

`∩[A025612(n+1), A238985(n+1)]`
-/

namespace A238938.P3000995518750901271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238938.P3000995518750901271

/-!
# A238939: Powers of 3 without the digit '0' in their decimal expansion.

The programs for A238939, there is no canonical definition to state claims against.
-/

/-! ## A238939.P6974711591642794802

`3^A030700(n)`
-/

namespace A238939.P6974711591642794802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A030700 (n + 1) : ℤ)

end

end A238939.P6974711591642794802

/-! ## A238939.P6655960321553329930

`3^A305933(n)`
-/

namespace A238939.P6655960321553329930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A305933 n : ℤ)

end

end A238939.P6655960321553329930

/-! ## A238939.P14814424870286392421

`A000244(A030700(n))`
-/

namespace A238939.P14814424870286392421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A030700 (n + 1)).toNat

end

end A238939.P14814424870286392421

/-! ## A238939.P8811277057747501100

`A000244(A305933(n))`
-/

namespace A238939.P8811277057747501100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A305933 n).toNat

end

end A238939.P8811277057747501100

/-! ## A238939.P15834878177277570342

`A056449(2*A030700(n))`
-/

namespace A238939.P15834878177277570342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (2 * A030700 (n + 1)).toNat

end

end A238939.P15834878177277570342

/-!
# A238940: Powers of 4 without the digit '0' in their decimal expansion.

The programs for A238940, there is no canonical definition to state claims against.
-/

/-! ## A238940.P3167469348322856683

`4^A030701(n)`
-/

namespace A238940.P3167469348322856683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A030701 (n + 1) : ℤ)

end

end A238940.P3167469348322856683

/-! ## A238940.P18265609483482207181

`4^A305924(n)`
-/

namespace A238940.P18265609483482207181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A305924 n : ℤ)

end

end A238940.P18265609483482207181

/-! ## A238940.P16210445950030638567

`record[(-2)^A305932(n)]`
-/

namespace A238940.P16210445950030638567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A305932 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238940.P16210445950030638567

/-! ## A238940.P16120621507233839898

`A000302(A305924(n))`
-/

namespace A238940.P16120621507233839898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A305924 n).toNat

end

end A238940.P16120621507233839898

/-! ## A238940.P12436963123932501807

`A000079(2*A305924(n))`
-/

namespace A238940.P12436963123932501807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A305924 n).toNat

end

end A238940.P12436963123932501807

/-!
# A238941: Triangle T(n,k), read by rows given by (1, 1, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A238941, there is no canonical definition to state claims against.
-/

/-! ## A238941.P15474981443658884906

`A230980(A247427(A132372(n)))`
-/

namespace A238941.P15474981443658884906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A247427 (A132372 n).toNat).toNat

end

end A238941.P15474981443658884906

/-!
# A238942: Number of squarefree permutations of 1,...,n that are fixed under reverse-complement, up to symmetry.

The programs for A238942, there is no canonical definition to state claims against.
-/

/-! ## A238942.P8157258021332833046

`xor(1, A204016(A061130(n)))`
-/

namespace A238942.P8157258021332833046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A204016 (A061130 n).toNat)

end

end A238942.P8157258021332833046

/-! ## A238942.P4292402452944425832

`A233292(A000213(n)+∏[gcd(2, n)]-1)`
-/

namespace A238942.P4292402452944425832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233292 (A000213 n + (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A238942.P4292402452944425832

/-! ## A238942.P4931055375450340743

`A003056(C(A016116(n), A286151(n)))`
-/

namespace A238942.P4931055375450340743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A016116 n).toNat (A286151 n).toNat)

end

end A238942.P4931055375450340743

/-! ## A238942.P865792470726929256

`A003987(C(A016116(n), A286151(n)))`
-/

namespace A238942.P865792470726929256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Nat.choose (A016116 n).toNat (A286151 n).toNat)

end

end A238942.P865792470726929256

/-! ## A238942.P16872272019018119802

`and(A202143(n), A317588(A319646(n)))`
-/

namespace A238942.P16872272019018119802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A202143 n) (A317588 (A319646 n).toNat)

end

end A238942.P16872272019018119802

/-!
# A238943: Triangular array read by rows: t(n,k) = size of the Ferrers matrix of p(n,k).

The programs for A238943, there is no canonical definition to state claims against.
-/

/-! ## A238943.P12007595248695365730

`A263297(A129129(n+1))`
-/

namespace A238943.P12007595248695365730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A129129 (n + 1)).toNat

end

end A238943.P12007595248695365730

/-! ## A238943.P14908395328654225967

`A263297(A333485(n+1))`
-/

namespace A238943.P14908395328654225967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A333485 (n + 1)).toNat

end

end A238943.P14908395328654225967

/-! ## A238943.P16705928780154591466

`A263323(A063008(n+1))`
-/

namespace A238943.P16705928780154591466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A063008 (n + 1)).toNat

end

end A238943.P16705928780154591466

/-! ## A238943.P7005405303959436371

`A087117(A337460(n+1)^A184348(n+1))`
-/

namespace A238943.P7005405303959436371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.roundAway ((A337460 (n + 1) : ℚ) ^ (A184348 (n + 1) : ℤ))).toNat

end

end A238943.P7005405303959436371

/-! ## A238943.P17765014127571967201

`A263323(A227955(n+1))`
-/

namespace A238943.P17765014127571967201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A227955 (n + 1)).toNat

end

end A238943.P17765014127571967201

/-!
# A238944: Number of partitions of n that have odd sized Ferrers matrix.

The programs for A238944, there is no canonical definition to state claims against.
-/

/-! ## A238944.P8471980328283237916

`Δ[A000070(n)]-A238945(n+1)`
-/

namespace A238944.P8471980328283237916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238945 (n + 1)

end

end A238944.P8471980328283237916

/-! ## A238944.P9101053478979806743

`record[A035363(n)]-A238945(n+1)`
-/

namespace A238944.P9101053478979806743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238945 (n + 1)

end

end A238944.P9101053478979806743

/-! ## A238944.P15468910982160489127

`record[A035377(n)]-A238945(n+1)`
-/

namespace A238944.P15468910982160489127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238945 (n + 1)

end

end A238944.P15468910982160489127

/-! ## A238944.P916312646178214137

`record[A035444(n)]-A238945(n+1)`
-/

namespace A238944.P916312646178214137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238945 (n + 1)

end

end A238944.P916312646178214137

/-! ## A238944.P2875307955200339

`A000041(n+1)-A238945(n+1)`
-/

namespace A238944.P2875307955200339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238945 (n + 1)

end

end A238944.P2875307955200339

/-!
# A238945: Number of partitions of n that have even-sized Ferrers matrix.

The programs for A238945, there is no canonical definition to state claims against.
-/

/-! ## A238945.P5357408386456031871

`Δ[A000070(n)]-A238944(n+1)`
-/

namespace A238945.P5357408386456031871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238944 (n + 1)

end

end A238945.P5357408386456031871

/-! ## A238945.P10975939819859541177

`record[A035363(n)]-A238944(n+1)`
-/

namespace A238945.P10975939819859541177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238944 (n + 1)

end

end A238945.P10975939819859541177

/-! ## A238945.P17367587453080086999

`record[A035377(n)]-A238944(n+1)`
-/

namespace A238945.P17367587453080086999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238944 (n + 1)

end

end A238945.P17367587453080086999

/-! ## A238945.P9024637092398219892

`record[A035444(n)]-A238944(n+1)`
-/

namespace A238945.P9024637092398219892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238944 (n + 1)

end

end A238945.P9024637092398219892

/-! ## A238945.P6108848883307596145

`A000041(n+1)-A238944(n+1)`
-/

namespace A238945.P6108848883307596145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238944 (n + 1)

end

end A238945.P6108848883307596145

/-!
# A238946: Maximal level size of arcs in divisor lattice D(n).

The programs for A238946, there is no canonical definition to state claims against.
-/

/-! ## A238946.P5073992390511044483

`∑{p}[n+1, A096825((n+1)/#)]`
-/

namespace A238946.P5073992390511044483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A096825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A238946.P5073992390511044483

/-! ## A238946.P10789994842024489352

`∑{d}[n+1, A010051(#)*A096825((n+1)/#)]`
-/

namespace A238946.P10789994842024489352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A096825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238946.P10789994842024489352

/-! ## A238946.P11466165824228286403

`∑{d}[n+1, A010051(#)*A345926((n+1)/#)]`
-/

namespace A238946.P11466165824228286403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A345926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238946.P11466165824228286403

/-! ## A238946.P14394465676441912780

`or(A136567(A048798(n+1)), A345354(n+1))`
-/

namespace A238946.P14394465676441912780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136567 (A048798 (n + 1)).toNat) (A345354 (n + 1))

end

end A238946.P14394465676441912780

/-! ## A238946.P2900802584062658217

`A373957(n+1)+A373952(∑{p}[n+1, gcd(n, #)])`
-/

namespace A238946.P2900802584062658217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (n + 1) + A373952 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A238946.P2900802584062658217

/-! ## A238946.P10449961371478782000

`A373957(n+1)+A098238(A034444(n+1))`
-/

namespace A238946.P10449961371478782000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (n + 1) + A098238 (A034444 (n + 1)).toNat

end

end A238946.P10449961371478782000

/-! ## A238946.P17999010658793785294

`A374247(n+1)+A262265(A034444(n+1))`
-/

namespace A238946.P17999010658793785294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + A262265 (A034444 (n + 1)).toNat

end

end A238946.P17999010658793785294

/-!
# A238949: Degree of divisor lattice D(n).

The programs for A238949, the canonical program `A238949.P10522096884235985667` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238949 has offset 1).

The definition of A238949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238949.P10522096884235985667

`A001221(n+1)+A056170(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A238949

/-- `A001221(n+1)+A056170(n+1)` -/
def P10522096884235985667.Spec : Prop :=
  ∀ n, P10522096884235985667.a n = A238949 (n + 1)

theorem P10522096884235985667.correct : P10522096884235985667.Spec := by
  intro n
  simp only [A238949, Nat.add_sub_cancel]

end A238949

/-! ## A238949.P6976703196230022055

`∑{e}[n+1, ceil(atan(#))]`
-/

namespace A238949.P6976703196230022055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (Nat.factorization (f1 n) p : ℝ)⌉

end

end A238949.P6976703196230022055

namespace A238949

/-- `∑{e}[n+1, ceil(atan(#))]` -/
def P6976703196230022055.Spec : Prop :=
  ∀ n, P6976703196230022055.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P1311948450268181104

`∑{e}[n+1, gcd(2, #!)]`
-/

namespace A238949.P1311948450268181104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (Nat.factorial (Nat.factorization (f1 n) p))

end

end A238949.P1311948450268181104

namespace A238949

/-- `∑{e}[n+1, gcd(2, #!)]` -/
def P1311948450268181104.Spec : Prop :=
  ∀ n, (P1311948450268181104.a n : ℤ) = A238949 (n + 1)

end A238949

/-! ## A238949.P7842750365796646794

`∑{e}[n+1, ceil(root(#, 4))]`
-/

namespace A238949.P7842750365796646794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A238949.P7842750365796646794

namespace A238949

/-- `∑{e}[n+1, ceil(root(#, 4))]` -/
def P7842750365796646794.Spec : Prop :=
  ∀ n, P7842750365796646794.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P12540911574145690270

`-∑{e}[n+1, or(-2, #!)]`
-/

namespace A238949.P12540911574145690270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), Int.lor (-2) (Nat.factorial (Nat.factorization (f1 n) p) : ℤ))

end

end A238949.P12540911574145690270

namespace A238949

/-- `-∑{e}[n+1, or(-2, #!)]` -/
def P12540911574145690270.Spec : Prop :=
  ∀ n, P12540911574145690270.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P7878249235537511065

`ceil(∑{e}[n+1, #^(ϕ/#)])`
-/

namespace A238949.P7878249235537511065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (Real.goldenRatio / (Nat.factorization (f1 n) p : ℝ))⌉

end

end A238949.P7878249235537511065

namespace A238949

/-- `ceil(∑{e}[n+1, #^(ϕ/#)])` -/
def P7878249235537511065.Spec : Prop :=
  ∀ n, P7878249235537511065.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P306595078449751515

`A001222(∏{p}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #])`
-/

namespace A238949.P306595078449751515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) * (∏ p ∈ Nat.primeFactors (f3 n), p))

end

end A238949.P306595078449751515

namespace A238949

/-- `A001222(∏{p}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #])` -/
def P306595078449751515.Spec : Prop :=
  ∀ n, P306595078449751515.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P15534724764550968450

`A001222(A007948(n+1))`
-/

namespace A238949.P15534724764550968450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007948 (n + 1)).toNat

end

end A238949.P15534724764550968450

namespace A238949

/-- `A001222(A007948(n+1))` -/
def P15534724764550968450.Spec : Prop :=
  ∀ n, P15534724764550968450.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P8793014157056900774

`A003313(A073184(n+1))`
-/

namespace A238949.P8793014157056900774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A073184 (n + 1)).toNat

end

end A238949.P8793014157056900774

namespace A238949

/-- `A003313(A073184(n+1))` -/
def P8793014157056900774.Spec : Prop :=
  ∀ n, P8793014157056900774.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P12894393940806297246

`A106490(A058035(n+1))`
-/

namespace A238949.P12894393940806297246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A058035 (n + 1)).toNat

end

end A238949.P12894393940806297246

namespace A238949

/-- `A106490(A058035(n+1))` -/
def P12894393940806297246.Spec : Prop :=
  ∀ n, P12894393940806297246.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P14544665579138792213

`A001222(abs(A326415(n+1)))`
-/

namespace A238949.P14544665579138792213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A326415 (n + 1)|.toNat

end

end A238949.P14544665579138792213

namespace A238949

/-- `A001222(abs(A326415(n+1)))` -/
def P14544665579138792213.Spec : Prop :=
  ∀ n, P14544665579138792213.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P450680287722508142

`A001222(A097377(n+1)-1)`
-/

namespace A238949.P450680287722508142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097377 (n + 1) - 1).toNat

end

end A238949.P450680287722508142

namespace A238949

/-- `A001222(A097377(n+1)-1)` -/
def P450680287722508142.Spec : Prop :=
  ∀ n, P450680287722508142.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P12351393403090230590

`A110475(n+1)+A057427(n)`
-/

namespace A238949.P12351393403090230590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (n + 1) + A057427 n

end

end A238949.P12351393403090230590

namespace A238949

/-- `A110475(n+1)+A057427(n)` -/
def P12351393403090230590.Spec : Prop :=
  ∀ n, P12351393403090230590.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P3814382859871937207

`A110475(n+1)-A057428(n)`
-/

namespace A238949.P3814382859871937207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (n + 1) - A057428 n

end

end A238949.P3814382859871937207

namespace A238949

/-- `A110475(n+1)-A057428(n)` -/
def P3814382859871937207.Spec : Prop :=
  ∀ n, P3814382859871937207.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P14432546287310004141

`A361205(n+1)+A275812(n+1)`
-/

namespace A238949.P14432546287310004141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361205 (n + 1) + A275812 (n + 1)

end

end A238949.P14432546287310004141

namespace A238949

/-- `A361205(n+1)+A275812(n+1)` -/
def P14432546287310004141.Spec : Prop :=
  ∀ n, P14432546287310004141.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P18384789785634222475

`A350331(n+1)-A079275(n+1)`
-/

namespace A238949.P18384789785634222475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350331 (n + 1) - A079275 (n + 1)

end

end A238949.P18384789785634222475

namespace A238949

/-- `A350331(n+1)-A079275(n+1)` -/
def P18384789785634222475.Spec : Prop :=
  ∀ n, P18384789785634222475.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P6123488767992790147

`A001222((n+1)/A062378(n+1))`
-/

namespace A238949.P6123488767992790147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A238949.P6123488767992790147

namespace A238949

/-- `A001222((n+1)/A062378(n+1))` -/
def P6123488767992790147.Spec : Prop :=
  ∀ n, P6123488767992790147.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P11814546765265362959

`A056169(n+1)+2*A056170(n+1)`
-/

namespace A238949.P11814546765265362959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + 2 * A056170 (n + 1)

end

end A238949.P11814546765265362959

namespace A238949

/-- `A056169(n+1)+2*A056170(n+1)` -/
def P11814546765265362959.Spec : Prop :=
  ∀ n, P11814546765265362959.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P9915320009664378784

`2*A001221(n+1)-A056169(n+1)`
-/

namespace A238949.P9915320009664378784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (n + 1) - A056169 (n + 1)

end

end A238949.P9915320009664378784

namespace A238949

/-- `2*A001221(n+1)-A056169(n+1)` -/
def P9915320009664378784.Spec : Prop :=
  ∀ n, P9915320009664378784.a n = A238949 (n + 1)

end A238949

/-! ## A238949.P238230505422200406

`A001221(A000188(n+1))+A001221(n+1)`
-/

namespace A238949.P238230505422200406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000188 (n + 1)).toNat + A001221 (n + 1)

end

end A238949.P238230505422200406

namespace A238949

/-- `A001221(A000188(n+1))+A001221(n+1)` -/
def P238230505422200406.Spec : Prop :=
  ∀ n, P238230505422200406.a n = A238949 (n + 1)

end A238949

/-!
# A238950: Number of arcs from even to odd level vertices in divisor lattice D(n).

The programs for A238950, the canonical program `A238950.P10491739874639615946` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238950 has offset 1).

The definition of A238950 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238950.P10491739874639615946

`A062799(n+1)-A238951(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A238950

/-- `A062799(n+1)-A238951(n+1)` -/
def P10491739874639615946.Spec : Prop :=
  ∀ n, P10491739874639615946.a n = A238950 (n + 1)

theorem P10491739874639615946.correct : P10491739874639615946.Spec := by
  intro n
  simp only [A238950, Nat.add_sub_cancel]

end A238950

/-! ## A238950.P1623580323189835883

`(A062799(n+1)+A358769(n+1))/2`
-/

namespace A238950.P1623580323189835883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062799 (n + 1) + A358769 (n + 1) : ℚ) / 2

end

end A238950.P1623580323189835883

namespace A238950

/-- `(A062799(n+1)+A358769(n+1))/2` -/
def P1623580323189835883.Spec : Prop :=
  ∀ n, P1623580323189835883.a n = (A238950 (n + 1) : ℚ)

end A238950

/-! ## A238950.P13714106771064192485

`ceil(A062799(n+1)/2)`
-/

namespace A238950.P13714106771064192485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062799 (n + 1) : ℚ) / 2⌉

end

end A238950.P13714106771064192485

namespace A238950

/-- `ceil(A062799(n+1)/2)` -/
def P13714106771064192485.Spec : Prop :=
  ∀ n, P13714106771064192485.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P14949495262162626126

`ceil(∑{d}[n+1, A001221(#)/2])`
-/

namespace A238950.P14949495262162626126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (A001221 d : ℚ) / 2⌉

end

end A238950.P14949495262162626126

namespace A238950

/-- `ceil(∑{d}[n+1, A001221(#)/2])` -/
def P14949495262162626126.Spec : Prop :=
  ∀ n, P14949495262162626126.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P8409051249046608164

`A110654(A062799(n+1))`
-/

namespace A238950.P8409051249046608164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A062799 (n + 1)).toNat

end

end A238950.P8409051249046608164

namespace A238950

/-- `A110654(A062799(n+1))` -/
def P8409051249046608164.Spec : Prop :=
  ∀ n, P8409051249046608164.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P15484715805366778605

`A004526(A062799(n+1)+1)`
-/

namespace A238950.P15484715805366778605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062799 (n + 1) + 1).toNat

end

end A238950.P15484715805366778605

namespace A238950

/-- `A004526(A062799(n+1)+1)` -/
def P15484715805366778605.Spec : Prop :=
  ∀ n, P15484715805366778605.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P16337781595462410545

`A110654(∑{d}[n+1, A001221(#)])`
-/

namespace A238950.P16337781595462410545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ d ∈ Nat.divisors (f1 n), A001221 d).toNat

end

end A238950.P16337781595462410545

namespace A238950

/-- `A110654(∑{d}[n+1, A001221(#)])` -/
def P16337781595462410545.Spec : Prop :=
  ∀ n, P16337781595462410545.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P14527597090451995053

`A358769(n+1)+A238951(n+1)`
-/

namespace A238950.P14527597090451995053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (n + 1) + A238951 (n + 1)

end

end A238950.P14527597090451995053

namespace A238950

/-- `A358769(n+1)+A238951(n+1)` -/
def P14527597090451995053.Spec : Prop :=
  ∀ n, P14527597090451995053.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P795970660114038019

`∑{d}[n+1, A010051(#)*A038548((n+1)/#)]`
-/

namespace A238950.P795970660114038019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A038548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238950.P795970660114038019

namespace A238950

/-- `∑{d}[n+1, A010051(#)*A038548((n+1)/#)]` -/
def P795970660114038019.Spec : Prop :=
  ∀ n, P795970660114038019.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P3851243433851279444

`∑{d}[n+1, A001221(#)*A065043((n+1)/#)]`
-/

namespace A238950.P3851243433851279444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A065043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238950.P3851243433851279444

namespace A238950

/-- `∑{d}[n+1, A001221(#)*A065043((n+1)/#)]` -/
def P3851243433851279444.Spec : Prop :=
  ∀ n, P3851243433851279444.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P10217073383860045648

`∑{d}[n+1, A140773(#)*A143519((n+1)/#)]`
-/

namespace A238950.P10217073383860045648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140773 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238950.P10217073383860045648

namespace A238950

/-- `∑{d}[n+1, A140773(#)*A143519((n+1)/#)]` -/
def P10217073383860045648.Spec : Prop :=
  ∀ n, P10217073383860045648.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P206635276149365387

`∑{d}[n+1, A007875(#)*A358769((n+1)/#)]`
-/

namespace A238950.P206635276149365387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A358769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238950.P206635276149365387

namespace A238950

/-- `∑{d}[n+1, A007875(#)*A358769((n+1)/#)]` -/
def P206635276149365387.Spec : Prop :=
  ∀ n, P206635276149365387.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P6597704291671647717

`∑{d}[n+1, A018892(#)*A392285((n+1)/#)]`
-/

namespace A238950.P6597704291671647717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238950.P6597704291671647717

namespace A238950

/-- `∑{d}[n+1, A018892(#)*A392285((n+1)/#)]` -/
def P6597704291671647717.Spec : Prop :=
  ∀ n, P6597704291671647717.a n = A238950 (n + 1)

end A238950

/-! ## A238950.P516500168218915779

`∑{d}[n+1, A345345(#)*A353629((n+1)/#)]`
-/

namespace A238950.P516500168218915779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345345 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238950.P516500168218915779

namespace A238950

/-- `∑{d}[n+1, A345345(#)*A353629((n+1)/#)]` -/
def P516500168218915779.Spec : Prop :=
  ∀ n, P516500168218915779.a n = A238950 (n + 1)

end A238950

/-!
# A238951: Number of arcs from odd to even level vertices in divisor lattice D(n).

The programs for A238951, the canonical program `A238951.P14408596811991432527` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238951 has offset 1).

The definition of A238951 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238951.P14408596811991432527

`floor(A062799(n+1)/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A238951

/-- `floor(A062799(n+1)/2)` -/
def P14408596811991432527.Spec : Prop :=
  ∀ n, P14408596811991432527.a n = A238951 (n + 1)

theorem P14408596811991432527.correct : P14408596811991432527.Spec := by
  intro n
  simp only [A238951, Nat.add_sub_cancel]

end A238951

/-! ## A238951.P17998314149975043255

`A062799(n+1)-A238950(n+1)`
-/

namespace A238951.P17998314149975043255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1) - A238950 (n + 1)

end

end A238951.P17998314149975043255

namespace A238951

/-- `A062799(n+1)-A238950(n+1)` -/
def P17998314149975043255.Spec : Prop :=
  ∀ n, P17998314149975043255.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P9771991394183129447

`(A062799(n+1)-A358769(n+1))/2`
-/

namespace A238951.P9771991394183129447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062799 (n + 1) - A358769 (n + 1) : ℚ) / 2

end

end A238951.P9771991394183129447

namespace A238951

/-- `(A062799(n+1)-A358769(n+1))/2` -/
def P9771991394183129447.Spec : Prop :=
  ∀ n, P9771991394183129447.a n = (A238951 (n + 1) : ℚ)

end A238951

/-! ## A238951.P7804010081361052394

`floor(∑{d}[n+1, A001221(#)/2])`
-/

namespace A238951.P7804010081361052394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (A001221 d : ℚ) / 2⌋

end

end A238951.P7804010081361052394

namespace A238951

/-- `floor(∑{d}[n+1, A001221(#)/2])` -/
def P7804010081361052394.Spec : Prop :=
  ∀ n, P7804010081361052394.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P3688493198927682185

`A004526(A062799(n+1))`
-/

namespace A238951.P3688493198927682185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062799 (n + 1)).toNat

end

end A238951.P3688493198927682185

namespace A238951

/-- `A004526(A062799(n+1))` -/
def P3688493198927682185.Spec : Prop :=
  ∀ n, P3688493198927682185.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P13171445762962403025

`A004526(∑{d}[n+1, A001221(#)])`
-/

namespace A238951.P13171445762962403025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A001221 d).toNat

end

end A238951.P13171445762962403025

namespace A238951

/-- `A004526(∑{d}[n+1, A001221(#)])` -/
def P13171445762962403025.Spec : Prop :=
  ∀ n, P13171445762962403025.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P15767686148401701811

`A110654(A062799(n+1)+1)-1`
-/

namespace A238951.P15767686148401701811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A062799 (n + 1) + 1).toNat - 1

end

end A238951.P15767686148401701811

namespace A238951

/-- `A110654(A062799(n+1)+1)-1` -/
def P15767686148401701811.Spec : Prop :=
  ∀ n, P15767686148401701811.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P14202231033518636960

`A238950(n+1)-A358769(n+1)`
-/

namespace A238951.P14202231033518636960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (n + 1) - A358769 (n + 1)

end

end A238951.P14202231033518636960

namespace A238951

/-- `A238950(n+1)-A358769(n+1)` -/
def P14202231033518636960.Spec : Prop :=
  ∀ n, P14202231033518636960.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P11357450053916685543

`∑{d}[n+1, A010051(#)*A056924((n+1)/#)]`
-/

namespace A238951.P11357450053916685543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A056924 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238951.P11357450053916685543

namespace A238951

/-- `∑{d}[n+1, A010051(#)*A056924((n+1)/#)]` -/
def P11357450053916685543.Spec : Prop :=
  ∀ n, P11357450053916685543.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P909708599826408478

`∑{d}[n+1, A001221(#)*A066829((n+1)/#)]`
-/

namespace A238951.P909708599826408478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A066829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238951.P909708599826408478

namespace A238951

/-- `∑{d}[n+1, A001221(#)*A066829((n+1)/#)]` -/
def P909708599826408478.Spec : Prop :=
  ∀ n, P909708599826408478.a n = A238951 (n + 1)

end A238951

/-! ## A238951.P5576186860285931763

`A238950(n+1)+A008836(n+1)*A358769(n+1)`
-/

namespace A238951.P5576186860285931763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (n + 1) + A008836 (n + 1) * A358769 (n + 1)

end

end A238951.P5576186860285931763

namespace A238951

/-- `A238950(n+1)+A008836(n+1)*A358769(n+1)` -/
def P5576186860285931763.Spec : Prop :=
  ∀ n, P5576186860285931763.a n = A238951 (n + 1)

end A238951

/-!
# A238952: The size (the number of arcs) in the transitive closure of divisor lattice D(n).

The programs for A238952, the canonical program `A238952.P6937701478012677279` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238952 has offset 1).

The definition of A238952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238952.P6937701478012677279

`A007425(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A238952

/-- `A007425(n+1)-A000005(n+1)` -/
def P6937701478012677279.Spec : Prop :=
  ∀ n, P6937701478012677279.a n = A238952 (n + 1)

theorem P6937701478012677279.correct : P6937701478012677279.Spec := by
  intro n
  simp only [A238952, Nat.add_sub_cancel]

end A238952

/-! ## A238952.P957466145517024382

`∑{d}[n+1, A032741(#)]`
-/

namespace A238952.P957466145517024382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d

end

end A238952.P957466145517024382

namespace A238952

/-- `∑{d}[n+1, A032741(#)]` -/
def P957466145517024382.Spec : Prop :=
  ∀ n, P957466145517024382.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P11389016457169378510

`∑{d}[n+1, A000005(#)-1]`
-/

namespace A238952.P11389016457169378510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000005 d - 1)

end

end A238952.P11389016457169378510

namespace A238952

/-- `∑{d}[n+1, A000005(#)-1]` -/
def P11389016457169378510.Spec : Prop :=
  ∀ n, P11389016457169378510.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P7071546731833209856

`A007425(n+1)-Δ[A006218(n)]`
-/

namespace A238952.P7071546731833209856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238952.P7071546731833209856

namespace A238952

/-- `A007425(n+1)-Δ[A006218(n)]` -/
def P7071546731833209856.Spec : Prop :=
  ∀ n, P7071546731833209856.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P9494091416631286425

`sqrt(A097988(n+1))-A000005(n+1)`
-/

namespace A238952.P9494091416631286425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 1) : ℝ) - (A000005 (n + 1) : ℝ)

end

end A238952.P9494091416631286425

namespace A238952

/-- `sqrt(A097988(n+1))-A000005(n+1)` -/
def P9494091416631286425.Spec : Prop :=
  ∀ n, P9494091416631286425.a n = (A238952 (n + 1) : ℝ)

end A238952

/-! ## A238952.P11912926311747104668

`A007425(n+1)+1-A334954(n+1)`
-/

namespace A238952.P11912926311747104668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) + (1 - A334954 (n + 1))

end

end A238952.P11912926311747104668

namespace A238952

/-- `A007425(n+1)+1-A334954(n+1)` -/
def P11912926311747104668.Spec : Prop :=
  ∀ n, P11912926311747104668.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P5894541245577210822

`∑{d}[n+1, A000005(#)%A000005(n+1)]`
-/

namespace A238952.P5894541245577210822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 d) (A000005 (n + 1))

end

end A238952.P5894541245577210822

namespace A238952

/-- `∑{d}[n+1, A000005(#)%A000005(n+1)]` -/
def P5894541245577210822.Spec : Prop :=
  ∀ n, P5894541245577210822.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P3569907503279374229

`∑{d}[n+1, A008836(#)*A065814((n+1)/#)]`
-/

namespace A238952.P3569907503279374229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A065814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P3569907503279374229

namespace A238952

/-- `∑{d}[n+1, A008836(#)*A065814((n+1)/#)]` -/
def P3569907503279374229.Spec : Prop :=
  ∀ n, P3569907503279374229.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P13241477981051372856

`∑{d}[n+1, A001511(#)*A091954((n+1)/#)]`
-/

namespace A238952.P13241477981051372856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A091954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P13241477981051372856

namespace A238952

/-- `∑{d}[n+1, A001511(#)*A091954((n+1)/#)]` -/
def P13241477981051372856.Spec : Prop :=
  ∀ n, P13241477981051372856.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P13718800934679558509

`∑{d}[n+1, A001065(#)*A130054((n+1)/#)]`
-/

namespace A238952.P13718800934679558509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P13718800934679558509

namespace A238952

/-- `∑{d}[n+1, A001065(#)*A130054((n+1)/#)]` -/
def P13718800934679558509.Spec : Prop :=
  ∀ n, P13718800934679558509.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P5886783622333963635

`∑{d}[n+1, A007425(#)*A157658((n+1)/#)]`
-/

namespace A238952.P5886783622333963635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P5886783622333963635

namespace A238952

/-- `∑{d}[n+1, A007425(#)*A157658((n+1)/#)]` -/
def P5886783622333963635.Spec : Prop :=
  ∀ n, P5886783622333963635.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P9397298866448275505

`∑{d}[n+1, A023900(#)*A211779((n+1)/#)]`
-/

namespace A238952.P9397298866448275505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P9397298866448275505

namespace A238952

/-- `∑{d}[n+1, A023900(#)*A211779((n+1)/#)]` -/
def P9397298866448275505.Spec : Prop :=
  ∀ n, P9397298866448275505.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P1977056477980464355

`∑{d}[n+1, A034444(#)*A293234((n+1)/#)]`
-/

namespace A238952.P1977056477980464355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A293234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P1977056477980464355

namespace A238952

/-- `∑{d}[n+1, A034444(#)*A293234((n+1)/#)]` -/
def P1977056477980464355.Spec : Prop :=
  ∀ n, P1977056477980464355.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P6032616400445170248

`∑{d}[n+1, A046951(#)*A293227((n+1)/#)]`
-/

namespace A238952.P6032616400445170248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A293227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P6032616400445170248

namespace A238952

/-- `∑{d}[n+1, A046951(#)*A293227((n+1)/#)]` -/
def P6032616400445170248.Spec : Prop :=
  ∀ n, P6032616400445170248.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P8350170088396817476

`∑{d}[n+1, A038712(#)*A325937((n+1)/#)]`
-/

namespace A238952.P8350170088396817476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A325937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P8350170088396817476

namespace A238952

/-- `∑{d}[n+1, A038712(#)*A325937((n+1)/#)]` -/
def P8350170088396817476.Spec : Prop :=
  ∀ n, P8350170088396817476.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P10848820102331354656

`∑{d}[n+1, A072078(#)*A320015((n+1)/#)]`
-/

namespace A238952.P10848820102331354656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A320015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P10848820102331354656

namespace A238952

/-- `∑{d}[n+1, A072078(#)*A320015((n+1)/#)]` -/
def P10848820102331354656.Spec : Prop :=
  ∀ n, P10848820102331354656.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P11402644752755063909

`∑{d}[n+1, A048691(#)*A344617((n+1)/#)]`
-/

namespace A238952.P11402644752755063909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P11402644752755063909

namespace A238952

/-- `∑{d}[n+1, A048691(#)*A344617((n+1)/#)]` -/
def P11402644752755063909.Spec : Prop :=
  ∀ n, P11402644752755063909.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P10810936655019018677

`∑{d}[n+1, A129628(#)*A296066((n+1)/#)]`
-/

namespace A238952.P10810936655019018677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238952.P10810936655019018677

namespace A238952

/-- `∑{d}[n+1, A129628(#)*A296066((n+1)/#)]` -/
def P10810936655019018677.Spec : Prop :=
  ∀ n, P10810936655019018677.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P3347827900844935781

`A007425(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A238952.P3347827900844935781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A238952.P3347827900844935781

namespace A238952

/-- `A007425(n+1)+A006218(n)-A006218(n+1)` -/
def P3347827900844935781.Spec : Prop :=
  ∀ n, P3347827900844935781.a n = A238952 (n + 1)

end A238952

/-! ## A238952.P8452924072197930842

`A007429(n+1)-(A069913(n+1)+A000005(n+1))`
-/

namespace A238952.P8452924072197930842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - (A069913 (n + 1) + A000005 (n + 1))

end

end A238952.P8452924072197930842

namespace A238952

/-- `A007429(n+1)-(A069913(n+1)+A000005(n+1))` -/
def P8452924072197930842.Spec : Prop :=
  ∀ n, P8452924072197930842.a n = A238952 (n + 1)

end A238952

/-!
# A238953: The size of divisor lattice D(n) in graded (reflected or not) colexicographic order of exponents.

The programs for A238953, there is no canonical definition to state claims against.
-/

/-! ## A238953.P13578106413728568398

`A062799(A036035(n))`
-/

namespace A238953.P13578106413728568398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A036035 n).toNat

end

end A238953.P13578106413728568398

/-! ## A238953.P17072783319157217010

`A238960(n)+A238959(n)`
-/

namespace A238953.P17072783319157217010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238960 n + A238959 n

end

end A238953.P17072783319157217010

/-! ## A238953.P6139796029775048937

`∑{d}[A036035(n), A001221(#)]`
-/

namespace A238953.P6139796029775048937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A238953.P6139796029775048937

/-! ## A238953.P8955455839369757116

`∑{d}[A059901(n), A001221(#)]`
-/

namespace A238953.P8955455839369757116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A238953.P8955455839369757116

/-! ## A238953.P11769917495601674118

`∑{d}[A181821(A185974(n)), A001221(#)]`
-/

namespace A238953.P11769917495601674118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A238953.P11769917495601674118

/-!
# A238954: Maximal size of an antichain in graded colexicographic order of exponents.

The programs for A238954, there is no canonical definition to state claims against.
-/

/-! ## A238954.P7686045083914209460

`A096825(A036035(n))`
-/

namespace A238954.P7686045083914209460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A036035 n).toNat

end

end A238954.P7686045083914209460

/-! ## A238954.P1430840786941808152

`A096825(A059901(n))`
-/

namespace A238954.P1430840786941808152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A059901 n).toNat

end

end A238954.P1430840786941808152

/-! ## A238954.P10641251232344250303

`A238967(n)%A083640(n+1)`
-/

namespace A238954.P10641251232344250303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238967 n) (A083640 (n + 1))

end

end A238954.P10641251232344250303

/-! ## A238954.P9654297475199018523

`and(A238967(n), A249511(n+1))`
-/

namespace A238954.P9654297475199018523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238967 n) (A249511 (n + 1))

end

end A238954.P9654297475199018523

/-! ## A238954.P6691102624410417944

`A238967(n)+A070140(A101245(3*n+4))`
-/

namespace A238954.P6691102624410417944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238967 n + A070140 (A101245 (3 * n + 4)).toNat

end

end A238954.P6691102624410417944

/-!
# A238955: Maximal level size of arcs in divisor lattice in graded colexicographic order.

The programs for A238955, there is no canonical definition to state claims against.
-/

/-! ## A238955.P14476860184395004421

`A238946(A036035(n))`
-/

namespace A238955.P14476860184395004421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238946 (A036035 n).toNat

end

end A238955.P14476860184395004421

/-! ## A238955.P16673331449446559947

`A238968(n)-A056170(A172339(n))`
-/

namespace A238955.P16673331449446559947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238968 n - A056170 (A172339 n).toNat

end

end A238955.P16673331449446559947

/-! ## A238955.P17087811854638654872

`A238968(n)-A357879(A259515(n+1))`
-/

namespace A238955.P17087811854638654872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238968 n - A357879 (A259515 (n + 1)).toNat

end

end A238955.P17087811854638654872

/-! ## A238955.P7925018791567727608

`A238968(n)%A080532(n)`
-/

namespace A238955.P7925018791567727608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238968 n) (A080532 n)

end

end A238955.P7925018791567727608

/-! ## A238955.P4864197171015454452

`A238968(n)/A204162(A000013(n))`
-/

namespace A238955.P4864197171015454452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238968 n : ℚ) / (A204162 (A000013 n).toNat : ℚ)

end

end A238955.P4864197171015454452

/-!
# A238956: Degree of divisor lattice in graded colexicographic order.

The programs for A238956, there is no canonical definition to state claims against.
-/

/-! ## A238956.P4138516274429631681

`A238949(A036035(n))`
-/

namespace A238956.P4138516274429631681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A036035 n).toNat

end

end A238956.P4138516274429631681

/-! ## A238956.P8069455036511032663

`A087436(A185974(n))+A036043(n)`
-/

namespace A238956.P8069455036511032663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A185974 n).toNat + A036043 n

end

end A238956.P8069455036511032663

/-! ## A238956.P1848927366808631855

`∑{e}[A000265(A185974(2*n-n))*A185974(n), #]`
-/

namespace A238956.P1848927366808631855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A185974 (2 * n - n)).toNat * A185974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238956.P1848927366808631855

/-! ## A238956.P3534465737206457754

`A001222(A200746(A185974(n)))`
-/

namespace A238956.P3534465737206457754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A200746 (A185974 n).toNat).toNat

end

end A238956.P3534465737206457754

/-! ## A238956.P237298983997230270

`A001222(A000265(A185974(n))*A185974(n))`
-/

namespace A238956.P237298983997230270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (A185974 n).toNat * A185974 n).toNat

end

end A238956.P237298983997230270

/-! ## A238956.P17407257719287208252

`A087436(A185974(n))+A001222(A333483(n))`
-/

namespace A238956.P17407257719287208252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A185974 n).toNat + A001222 (A333483 n).toNat

end

end A238956.P17407257719287208252

/-! ## A238956.P4118188308452592221

`∑{e}[A036035(n), A036453(#)]`
-/

namespace A238956.P4118188308452592221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A036453 (Nat.factorization (f1 n).natAbs p)

end

end A238956.P4118188308452592221

/-! ## A238956.P11455864419688335603

`∑{e}[A036035(n), A020639(#!)]`
-/

namespace A238956.P11455864419688335603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorial (Nat.factorization (f1 n).natAbs p))

end

end A238956.P11455864419688335603

/-!
# A238957: The number of nodes at even level in divisor lattice in graded colexicographic order.

The programs for A238957, there is no canonical definition to state claims against.
-/

/-! ## A238957.P16826421580933873832

`A038548(A036035(n))`
-/

namespace A238957.P16826421580933873832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A036035 n).toNat

end

end A238957.P16826421580933873832

/-! ## A238957.P9944619919455055203

`ceil(A074139(n)/2)`
-/

namespace A238957.P9944619919455055203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074139 n : ℚ) / 2⌉

end

end A238957.P9944619919455055203

/-! ## A238957.P1002885252440498118

`A074139(n)-A238958(n)`
-/

namespace A238957.P1002885252440498118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074139 n - A238958 n

end

end A238957.P1002885252440498118

/-! ## A238957.P2315023427112132081

`round(A074139(n)/A036453(n+1))`
-/

namespace A238957.P2315023427112132081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074139 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A238957.P2315023427112132081

/-! ## A238957.P14291989322603833314

`A065033(A074139(n))`
-/

namespace A238957.P14291989322603833314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A074139 n).toNat

end

end A238957.P14291989322603833314

/-! ## A238957.P825535842785388557

`A004526(A074139(n)+1)`
-/

namespace A238957.P825535842785388557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074139 n + 1).toNat

end

end A238957.P825535842785388557

/-! ## A238957.P11803910348777475763

`A123108(A074139(n)+1)`
-/

namespace A238957.P11803910348777475763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A074139 n + 1).toNat

end

end A238957.P11803910348777475763

/-! ## A238957.P3650477105145780745

`A008619(A074139(n)-1)`
-/

namespace A238957.P3650477105145780745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074139 n - 1).toNat

end

end A238957.P3650477105145780745

/-! ## A238957.P10078515956472733617

`A002265(2*(A074139(n)+1))`
-/

namespace A238957.P10078515956472733617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A074139 n + 1)).toNat

end

end A238957.P10078515956472733617

/-! ## A238957.P9600289642408121593

`A002265(A074139(n)+A074139(n)+2)`
-/

namespace A238957.P9600289642408121593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A074139 n + (A074139 n + 2)).toNat

end

end A238957.P9600289642408121593

/-! ## A238957.P6932506565810531690

`A074139(n)-A002265(2*A074139(n))`
-/

namespace A238957.P6932506565810531690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074139 n - A002265 (2 * A074139 n).toNat

end

end A238957.P6932506565810531690

/-!
# A238958: The number of nodes at odd level in divisor lattice in graded colexicographic order.

The programs for A238958, there is no canonical definition to state claims against.
-/

/-! ## A238958.P18150413183443120887

`A056924(A036035(n))`
-/

namespace A238958.P18150413183443120887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A036035 n).toNat

end

end A238958.P18150413183443120887

/-! ## A238958.P7792815691877095526

`floor(A074139(n)/2)`
-/

namespace A238958.P7792815691877095526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074139 n : ℚ) / 2⌋

end

end A238958.P7792815691877095526

/-! ## A238958.P11023195634969032127

`A074139(n)-A238957(n)`
-/

namespace A238958.P11023195634969032127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074139 n - A238957 n

end

end A238958.P11023195634969032127

/-! ## A238958.P17311094493260311937

`round((A074139(n)-1)/A036453(n+1))`
-/

namespace A238958.P17311094493260311937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074139 n - 1 : ℚ) / (A036453 (n + 1) : ℚ))

end

end A238958.P17311094493260311937

/-! ## A238958.P199841845828181782

`A004526(A074139(n))`
-/

namespace A238958.P199841845828181782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074139 n).toNat

end

end A238958.P199841845828181782

/-! ## A238958.P3981118022927481607

`A110654(A074139(n)-1)`
-/

namespace A238958.P3981118022927481607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A074139 n - 1).toNat

end

end A238958.P3981118022927481607

/-! ## A238958.P15674253321779650371

`A065033(A074139(n)+1)-1`
-/

namespace A238958.P15674253321779650371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A074139 n + 1).toNat - 1

end

end A238958.P15674253321779650371

/-! ## A238958.P6762599879696255233

`A008619(A074139(n)+2)-2`
-/

namespace A238958.P6762599879696255233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074139 n + 2).toNat - 2

end

end A238958.P6762599879696255233

/-! ## A238958.P16288113516956298747

`A074139(n)-A008619(A074139(n)-1)`
-/

namespace A238958.P16288113516956298747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074139 n - A008619 (A074139 n - 1).toNat

end

end A238958.P16288113516956298747

/-! ## A238958.P3983076359472075481

`A008683(A001359(n+1))+A008619(A074139(n))`
-/

namespace A238958.P3983076359472075481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + A008619 (A074139 n).toNat

end

end A238958.P3983076359472075481

/-! ## A238958.P4697060457835373668

`A002265(2*A074139(n))`
-/

namespace A238958.P4697060457835373668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A074139 n).toNat

end

end A238958.P4697060457835373668

/-! ## A238958.P15995956089673688810

`A002265(A074139(n)+A074139(n)+1)`
-/

namespace A238958.P15995956089673688810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A074139 n + (A074139 n + 1)).toNat

end

end A238958.P15995956089673688810

/-! ## A238958.P14751464427555500093

`A008615(3*A074139(n))`
-/

namespace A238958.P14751464427555500093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A074139 n).toNat

end

end A238958.P14751464427555500093

/-!
# A238959: The number of arcs from even to odd level vertices in divisor lattice in graded colexicographic order.

The programs for A238959, there is no canonical definition to state claims against.
-/

/-! ## A238959.P9724649240678779446

`A238950(A036035(n))`
-/

namespace A238959.P9724649240678779446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (A036035 n).toNat

end

end A238959.P9724649240678779446

/-! ## A238959.P14232998226558687576

`ceil(A238953(n)/2)`
-/

namespace A238959.P14232998226558687576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238953 n : ℚ) / 2⌉

end

end A238959.P14232998226558687576

/-! ## A238959.P15846035071207105722

`A238953(n)-A238960(n)`
-/

namespace A238959.P15846035071207105722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238953 n - A238960 n

end

end A238959.P15846035071207105722

/-! ## A238959.P7371551735059184637

`A249122(or(1, A238953(n)+1))`
-/

namespace A238959.P7371551735059184637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A238953 n + 1)).toNat

end

end A238959.P7371551735059184637

/-! ## A238959.P14446551860485671856

`A238953(n)-A249122(or(1, A238953(n)))`
-/

namespace A238959.P14446551860485671856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238953 n - A249122 (Int.lor 1 (A238953 n)).toNat

end

end A238959.P14446551860485671856

/-! ## A238959.P10079689702516874830

`A110654(A238953(n))`
-/

namespace A238959.P10079689702516874830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238953 n).toNat

end

end A238959.P10079689702516874830

/-! ## A238959.P4962364265563686567

`A004526(A238953(n)+1)`
-/

namespace A238959.P4962364265563686567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238953 n + 1).toNat

end

end A238959.P4962364265563686567

/-! ## A238959.P6169214101914544330

`A008619(A238953(n)+1)-1`
-/

namespace A238959.P6169214101914544330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238953 n + 1).toNat - 1

end

end A238959.P6169214101914544330

/-! ## A238959.P17823437694718318610

`A213633(or(1, A238953(n)+1))`
-/

namespace A238959.P17823437694718318610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (Int.lor 1 (A238953 n + 1)).toNat

end

end A238959.P17823437694718318610

/-! ## A238959.P11399024535024414985

`A300068(or(1, A238953(n)+1))`
-/

namespace A238959.P11399024535024414985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (Int.lor 1 (A238953 n + 1)).toNat

end

end A238959.P11399024535024414985

/-! ## A238959.P11108928607448050785

`A026741(A238953(n)+and(1, A238953(n)))`
-/

namespace A238959.P11108928607448050785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A238953 n + Int.land 1 (A238953 n)).toNat

end

end A238959.P11108928607448050785

/-! ## A238959.P10764515279765109544

`A238953(n)-A213633(or(1, A238953(n)))`
-/

namespace A238959.P10764515279765109544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238953 n - A213633 (Int.lor 1 (A238953 n)).toNat

end

end A238959.P10764515279765109544

/-! ## A238959.P3467037079179707358

`A238953(n)-A300068(or(1, A238953(n)))`
-/

namespace A238959.P3467037079179707358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238953 n - A300068 (Int.lor 1 (A238953 n)).toNat

end

end A238959.P3467037079179707358

/-!
# A238960: The number of arcs from odd to even level vertices in divisor lattice in graded colexicographic order.

The programs for A238960, there is no canonical definition to state claims against.
-/

/-! ## A238960.P8487236881342470831

`A238951(A036035(n))`
-/

namespace A238960.P8487236881342470831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238951 (A036035 n).toNat

end

end A238960.P8487236881342470831

/-! ## A238960.P2212825631225141273

`floor(A238953(n)/2)`
-/

namespace A238960.P2212825631225141273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238953 n : ℚ) / 2⌋

end

end A238960.P2212825631225141273

/-! ## A238960.P1758332004757954240

`A238953(n)-A238959(n)`
-/

namespace A238960.P1758332004757954240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238953 n - A238959 n

end

end A238960.P1758332004757954240

/-! ## A238960.P12657999497643296892

`ceil((A238953(n)-A057427(n))/2)`
-/

namespace A238960.P12657999497643296892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238953 n - A057427 n : ℚ) / 2⌉

end

end A238960.P12657999497643296892

/-! ## A238960.P9272928922927983981

`and(-2, A238953(n))/(A103517(n)-2*n)`
-/

namespace A238960.P9272928922927983981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A238953 n) : ℚ) / (A103517 n - (2 * n : ℤ) : ℚ)

end

end A238960.P9272928922927983981

/-! ## A238960.P11891966471644313877

`and(-2, A238953(n))/A020639(A001316(n))`
-/

namespace A238960.P11891966471644313877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A238953 n) : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A238960.P11891966471644313877

/-! ## A238960.P4967282961742161415

`and(-2, A238953(n))/A020639(A008458(n))`
-/

namespace A238960.P4967282961742161415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A238953 n) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A238960.P4967282961742161415

/-! ## A238960.P8294245901982172825

`and(-2, A238953(n))/A020639(A020744(n))`
-/

namespace A238960.P8294245901982172825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A238953 n) : ℚ) / (A020639 (A020744 n).toNat : ℚ)

end

end A238960.P8294245901982172825

/-! ## A238960.P13320755523431804658

`and(-2, A238953(n))/A020639(A028594(n))`
-/

namespace A238960.P13320755523431804658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A238953 n) : ℚ) / (A020639 (A028594 n).toNat : ℚ)

end

end A238960.P13320755523431804658

/-! ## A238960.P14440942024937297522

`and(-2, A238953(n))/A020639(A253069(n))`
-/

namespace A238960.P14440942024937297522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A238953 n) : ℚ) / (A020639 (A253069 n).toNat : ℚ)

end

end A238960.P14440942024937297522

/-! ## A238960.P7401069930634016832

`A249122(or(1, A238953(n)))`
-/

namespace A238960.P7401069930634016832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A238953 n)).toNat

end

end A238960.P7401069930634016832

/-! ## A238960.P18419831131360630650

`A004526(A238953(n))`
-/

namespace A238960.P18419831131360630650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238953 n).toNat

end

end A238960.P18419831131360630650

/-! ## A238960.P16249741137871595800

`A213633(or(1, A238953(n)))`
-/

namespace A238960.P16249741137871595800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (Int.lor 1 (A238953 n)).toNat

end

end A238960.P16249741137871595800

/-! ## A238960.P1864382391376065005

`A300068(or(1, A238953(n)))`
-/

namespace A238960.P1864382391376065005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (Int.lor 1 (A238953 n)).toNat

end

end A238960.P1864382391376065005

/-! ## A238960.P6481324825060589427

`A026741(and(-2, A238953(n)))`
-/

namespace A238960.P6481324825060589427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (-2) (A238953 n)).toNat

end

end A238960.P6481324825060589427

/-! ## A238960.P5862159633398252169

`A110654(A238953(n)+1)-1`
-/

namespace A238960.P5862159633398252169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238953 n + 1).toNat - 1

end

end A238960.P5862159633398252169

/-! ## A238960.P9670911824404077016

`A008619(A238953(n)+2)-2`
-/

namespace A238960.P9670911824404077016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238953 n + 2).toNat - 2

end

end A238960.P9670911824404077016

/-! ## A238960.P17278713934831291552

`A008619(xor(1, A238953(n)))-1`
-/

namespace A238960.P17278713934831291552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A238953 n)).toNat - 1

end

end A238960.P17278713934831291552

/-! ## A238960.P12916715164484366661

`A008619(A238953(n-char[1]))-1`
-/

namespace A238960.P12916715164484366661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238953 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat - 1

end

end A238960.P12916715164484366661

/-!
# A238961: The size (the number of arcs) in the transitive closure of divisor lattice in graded colexicographic order.

The programs for A238961, there is no canonical definition to state claims against.
-/

/-! ## A238961.P14863473576064882640

`A238952(A036035(n))`
-/

namespace A238961.P14863473576064882640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A036035 n).toNat

end

end A238961.P14863473576064882640

/-! ## A238961.P7737103803740114357

`A238952(A059901(n))`
-/

namespace A238961.P7737103803740114357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A059901 n).toNat

end

end A238961.P7737103803740114357

/-! ## A238961.P16601941021717717094

`∑{d}[A036035(n), A000005(#)-1]`
-/

namespace A238961.P16601941021717717094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000005 d - 1)

end

end A238961.P16601941021717717094

/-! ## A238961.P3254531062437876590

`∑{d}[A036035(n), A032741(#)]`
-/

namespace A238961.P3254531062437876590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A032741 d

end

end A238961.P3254531062437876590

/-! ## A238961.P3356152511819488626

`∑{d}[A059901(n), A032741(#)]`
-/

namespace A238961.P3356152511819488626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A032741 d

end

end A238961.P3356152511819488626

/-!
# A238962: Number of perfect partitions in graded colexicographic order.

The programs for A238962, there is no canonical definition to state claims against.
-/

/-! ## A238962.P6101915681182351380

`A074206(A036035(n))`
-/

namespace A238962.P6101915681182351380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A036035 n).toNat

end

end A238962.P6101915681182351380

/-! ## A238962.P8640386148661031447

`A074206(A059901(n))`
-/

namespace A238962.P8640386148661031447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A059901 n).toNat

end

end A238962.P8640386148661031447

/-! ## A238962.P4024718014292046177

`A361665(A185974(n))`
-/

namespace A238962.P4024718014292046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361665 (A185974 n).toNat

end

end A238962.P4024718014292046177

/-! ## A238962.P17849180665738446332

`A361665(A334438(n))`
-/

namespace A238962.P17849180665738446332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361665 (A334438 n).toNat

end

end A238962.P17849180665738446332

/-! ## A238962.P10881305953078587322

`A002033(A036035(n)-1)`
-/

namespace A238962.P10881305953078587322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A036035 n - 1).toNat

end

end A238962.P10881305953078587322

/-!
# A238963: Number of divisors of A063008(n,k).

The programs for A238963, there is no canonical definition to state claims against.
-/

/-! ## A238963.P7260894495683829021

`A000005(A063008(n))`
-/

namespace A238963.P7260894495683829021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063008 n).toNat

end

end A238963.P7260894495683829021

/-! ## A238963.P16999427830644838833

`A238971(n)+A238970(n)`
-/

namespace A238963.P16999427830644838833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238971 n + A238970 n

end

end A238963.P16999427830644838833

/-! ## A238963.P4646459229611040374

`A064553(A129129(n))`
-/

namespace A238963.P4646459229611040374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A129129 n).toNat

end

end A238963.P4646459229611040374

/-! ## A238963.P9063372137142930483

`A000267(A238970(n)*A238971(n))`
-/

namespace A238963.P9063372137142930483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A238970 n * A238971 n).toNat

end

end A238963.P9063372137142930483

/-! ## A238963.P13043129841532941346

`∑{d}[A063008(n), A000010(ceil(1/#))]`
-/

namespace A238963.P13043129841532941346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 ⌈1 / (d : ℚ)⌉.toNat

end

end A238963.P13043129841532941346

/-! ## A238963.P2999783468671508564

`∑{d}[A063008(n), A239881(val(#+2, 6))]`
-/

namespace A238963.P2999783468671508564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A239881 (SequenceMachineLib.valuation (d + 2) 6)

end

end A238963.P2999783468671508564

/-!
# A238964: Size of divisor lattice in canonical order.

The programs for A238964, there is no canonical definition to state claims against.
-/

/-! ## A238964.P10229818030086503594

`A062799(A063008(n))`
-/

namespace A238964.P10229818030086503594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A063008 n).toNat

end

end A238964.P10229818030086503594

/-! ## A238964.P1236011965811478374

`A238973(n)+A238972(n)`
-/

namespace A238964.P1236011965811478374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238973 n + A238972 n

end

end A238964.P1236011965811478374

/-! ## A238964.P8335132974208838709

`∑{d}[A063008(n), A001221(#)]`
-/

namespace A238964.P8335132974208838709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A238964.P8335132974208838709

/-! ## A238964.P15687650325682998960

`∑{d}[A057335(A114994(n)), A001221(#)]`
-/

namespace A238964.P15687650325682998960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A114994 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A238964.P15687650325682998960

/-! ## A238964.P14917412196763075135

`∑{d}[A181821(A129129(n)), A001221(#)]`
-/

namespace A238964.P14917412196763075135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A129129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A238964.P14917412196763075135

/-!
# A238966: The number of distinct primes in divisor lattice in canonical order.

The programs for A238966, there is no canonical definition to state claims against.
-/

/-! ## A238966.P8568567541373382150

`A001222(A129129(n))`
-/

namespace A238966.P8568567541373382150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129129 n).toNat

end

end A238966.P8568567541373382150

/-! ## A238966.P364351471162265965

`A001221(A063008(n))`
-/

namespace A238966.P364351471162265965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063008 n).toNat

end

end A238966.P364351471162265965

/-! ## A238966.P8698325181323822191

`val(A062515(n), 2)`
-/

namespace A238966.P8698325181323822191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062515 n).toNat 2

end

end A238966.P8698325181323822191

/-! ## A238966.P3743716584879471710

`A128628(A028310(n))-A000007(n)`
-/

namespace A238966.P3743716584879471710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128628 (A028310 n).toNat - A000007 n

end

end A238966.P3743716584879471710

/-! ## A238966.P10611596033427682293

`A308355(n+1)-1`
-/

namespace A238966.P10611596033427682293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308355 (n + 1) - 1

end

end A238966.P10611596033427682293

/-! ## A238966.P17198656537796343787

`A200748(n)%A308355(n+1)`
-/

namespace A238966.P17198656537796343787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A308355 (n + 1))

end

end A238966.P17198656537796343787

/-! ## A238966.P11683538300660678694

`abs(A308355(n+1)+A134824(2*(n+2)))`
-/

namespace A238966.P11683538300660678694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308355 (n + 1) + A134824 (2 * (n + 2))|

end

end A238966.P11683538300660678694

/-! ## A238966.P17349675882175233213

`val(A001316(A114994(n)), 2)`
-/

namespace A238966.P17349675882175233213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A114994 n).toNat).toNat 2

end

end A238966.P17349675882175233213

/-! ## A238966.P3908531870277783348

`A000120(A114994(n))`
-/

namespace A238966.P3908531870277783348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A114994 n).toNat

end

end A238966.P3908531870277783348

/-! ## A238966.P12900786523016738070

`A000120(eq[0, A124760(n)])`
-/

namespace A238966.P12900786523016738070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238966.P12900786523016738070

/-! ## A238966.P2361950724397514578

`A000120(lt[A124765(n), 2])`
-/

namespace A238966.P2361950724397514578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A238966.P2361950724397514578

/-! ## A238966.P16034334211520527086

`A000120(eq[n, n*A124765(n)])`
-/

namespace A238966.P16034334211520527086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238966.P16034334211520527086

/-! ## A238966.P8296418698023862832

`A000120(eq[A124765(n)², A124765(n)])`
-/

namespace A238966.P8296418698023862832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A238966.P8296418698023862832

/-! ## A238966.P14553472965405358847

`A070198(n)%A308355(n+1)`
-/

namespace A238966.P14553472965405358847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A308355 (n + 1))

end

end A238966.P14553472965405358847

/-! ## A238966.P708444201264857800

`A079782(n+1)%A308355(n+1)`
-/

namespace A238966.P708444201264857800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A308355 (n + 1))

end

end A238966.P708444201264857800

/-! ## A238966.P10761791864713975624

`A083685(n+1)%A308355(n+1)`
-/

namespace A238966.P10761791864713975624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A308355 (n + 1))

end

end A238966.P10761791864713975624

/-! ## A238966.P17647215648445738065

`A121934(n+1)%A308355(n+1)`
-/

namespace A238966.P17647215648445738065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A308355 (n + 1))

end

end A238966.P17647215648445738065

/-! ## A238966.P6792606457035757459

`A030494(n+1)%A308355(n+1)`
-/

namespace A238966.P6792606457035757459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A308355 (n + 1))

end

end A238966.P6792606457035757459

/-! ## A238966.P8396451993952862165

`A072828(n+1)%A308355(n+1)`
-/

namespace A238966.P8396451993952862165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A308355 (n + 1))

end

end A238966.P8396451993952862165

/-! ## A238966.P10635928009194009603

`A198277(n)%A308355(n+1)`
-/

namespace A238966.P10635928009194009603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A308355 (n + 1))

end

end A238966.P10635928009194009603

/-!
# A238967: Maximal size of an antichain in canonical order.

The programs for A238967, there is no canonical definition to state claims against.
-/

/-! ## A238967.P8588610134106587718

`A096825(A063008(n))`
-/

namespace A238967.P8588610134106587718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A063008 n).toNat

end

end A238967.P8588610134106587718

/-! ## A238967.P1973121063244300697

`A096825(A087443(n))`
-/

namespace A238967.P1973121063244300697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A087443 n).toNat

end

end A238967.P1973121063244300697

/-!
# A238968: Maximal level size of arcs in divisor lattice in canonical order.

The programs for A238968, there is no canonical definition to state claims against.
-/

/-! ## A238968.P13142518933320595471

`A238955(n)+A056170(A172339(n))`
-/

namespace A238968.P13142518933320595471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238955 n + A056170 (A172339 n).toNat

end

end A238968.P13142518933320595471

/-!
# A238969: Degree of divisor lattice in divisor lattice in canonical order.

The programs for A238969, there is no canonical definition to state claims against.
-/

/-! ## A238969.P14255898044779061730

`A238949(A063008(n))`
-/

namespace A238969.P14255898044779061730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A063008 n).toNat

end

end A238969.P14255898044779061730

/-! ## A238969.P100232977537874746

`A036042(n)-A107782(A114994(n))`
-/

namespace A238969.P100232977537874746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n - A107782 (A114994 n).toNat

end

end A238969.P100232977537874746

/-! ## A238969.P8160559394558170162

`A001222(A200746(A129129(n)))`
-/

namespace A238969.P8160559394558170162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A200746 (A129129 n).toNat).toNat

end

end A238969.P8160559394558170162

/-! ## A238969.P14063735520265914740

`A001222(A000265(A129129(n))*A129129(n))`
-/

namespace A238969.P14063735520265914740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (A129129 n).toNat * A129129 n).toNat

end

end A238969.P14063735520265914740

/-! ## A238969.P11561839992723744382

`∑{e}[A063008(n), A036452(#)]`
-/

namespace A238969.P11561839992723744382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A036452 (Nat.factorization (f1 n).natAbs p)

end

end A238969.P11561839992723744382

/-! ## A238969.P4181421488977416014

`∑{e}[A063008(n), A036453(#)]`
-/

namespace A238969.P4181421488977416014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A036453 (Nat.factorization (f1 n).natAbs p)

end

end A238969.P4181421488977416014

/-! ## A238969.P7242623680253919075

`∑{e}[A063008(n), A130130(#)]`
-/

namespace A238969.P7242623680253919075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A130130 (Nat.factorization (f1 n).natAbs p)

end

end A238969.P7242623680253919075

/-! ## A238969.P11369124522823541002

`∑{e}[A063008(n), A000005(A008578(#))]`
-/

namespace A238969.P11369124522823541002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A008578 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A238969.P11369124522823541002

/-! ## A238969.P8208774523256646197

`∑{e}[A063008(n), A001221(A100484(#))]`
-/

namespace A238969.P8208774523256646197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (A100484 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A238969.P8208774523256646197

/-! ## A238969.P6489497062142794918

`∑{e}[A063008(n), A238957(A000005(#))]`
-/

namespace A238969.P6489497062142794918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A238957 (A000005 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A238969.P6489497062142794918

/-!
# A238970: The number of nodes at even level in divisor lattice in canonical order.

The programs for A238970, there is no canonical definition to state claims against.
-/

/-! ## A238970.P5637408369295794332

`A038548(A063008(n))`
-/

namespace A238970.P5637408369295794332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A063008 n).toNat

end

end A238970.P5637408369295794332

/-! ## A238970.P2026838488495151427

`ceil(A238963(n)/2)`
-/

namespace A238970.P2026838488495151427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238963 n : ℚ) / 2⌉

end

end A238970.P2026838488495151427

/-! ## A238970.P10146543235163911265

`A238963(n)-A238971(n)`
-/

namespace A238970.P10146543235163911265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238963 n - A238971 n

end

end A238970.P10146543235163911265

/-! ## A238970.P5229632454693498862

`A065033(A238963(n))`
-/

namespace A238970.P5229632454693498862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A238963 n).toNat

end

end A238970.P5229632454693498862

/-! ## A238970.P8465254997132159669

`A004526(A238963(n)+1)`
-/

namespace A238970.P8465254997132159669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238963 n + 1).toNat

end

end A238970.P8465254997132159669

/-! ## A238970.P13693515586219120534

`A123108(A238963(n)+1)`
-/

namespace A238970.P13693515586219120534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A238963 n + 1).toNat

end

end A238970.P13693515586219120534

/-! ## A238970.P7101780605081177130

`A008619(A238963(n)-1)`
-/

namespace A238970.P7101780605081177130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238963 n - 1).toNat

end

end A238970.P7101780605081177130

/-! ## A238970.P184587703138186732

`A004525(A238963(n)+A238963(n)%2)`
-/

namespace A238970.P184587703138186732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A238963 n + Int.tmod (A238963 n) 2).toNat

end

end A238970.P184587703138186732

/-!
# A238971: The number of nodes at odd level in divisor lattice in canonical order.

The programs for A238971, there is no canonical definition to state claims against.
-/

/-! ## A238971.P7159457007485648754

`A056924(A063008(n))`
-/

namespace A238971.P7159457007485648754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A063008 n).toNat

end

end A238971.P7159457007485648754

/-! ## A238971.P2904316121890698704

`floor(A238963(n)/2)`
-/

namespace A238971.P2904316121890698704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238963 n : ℚ) / 2⌋

end

end A238971.P2904316121890698704

/-! ## A238971.P13941989936727610294

`A238963(n)-A238970(n)`
-/

namespace A238971.P13941989936727610294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238963 n - A238970 n

end

end A238971.P13941989936727610294

/-! ## A238971.P17920291217959239398

`A004526(A238963(n))`
-/

namespace A238971.P17920291217959239398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238963 n).toNat

end

end A238971.P17920291217959239398

/-! ## A238971.P1585788733631367841

`A110654(A238963(n)-1)`
-/

namespace A238971.P1585788733631367841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238963 n - 1).toNat

end

end A238971.P1585788733631367841

/-! ## A238971.P1350294448231639404

`A065033(A238963(n)+1)-1`
-/

namespace A238971.P1350294448231639404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A238963 n + 1).toNat - 1

end

end A238971.P1350294448231639404

/-! ## A238971.P10503735304039143340

`A008619(A238963(n)+2)-2`
-/

namespace A238971.P10503735304039143340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238963 n + 2).toNat - 2

end

end A238971.P10503735304039143340

/-! ## A238971.P3079308261536550945

`A238963(n)-A008619(A238963(n)-1)`
-/

namespace A238971.P3079308261536550945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238963 n - A008619 (A238963 n - 1).toNat

end

end A238971.P3079308261536550945

/-! ## A238971.P7180406045412735199

`A008615(3*A238963(n))`
-/

namespace A238971.P7180406045412735199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A238963 n).toNat

end

end A238971.P7180406045412735199

/-!
# A238972: The number of arcs from even to odd level vertices in divisor lattice in canonical order.

The programs for A238972, there is no canonical definition to state claims against.
-/

/-! ## A238972.P2661438045211179247

`A238950(A063008(n))`
-/

namespace A238972.P2661438045211179247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (A063008 n).toNat

end

end A238972.P2661438045211179247

/-! ## A238972.P8972936237483761391

`ceil(A238964(n)/2)`
-/

namespace A238972.P8972936237483761391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238964 n : ℚ) / 2⌉

end

end A238972.P8972936237483761391

/-! ## A238972.P18394693274394157043

`round(A238964(char[1]+n)/2)`
-/

namespace A238972.P18394693274394157043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A238964 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2)

end

end A238972.P18394693274394157043

/-! ## A238972.P18063418434165226180

`A238964(n)-A238973(n)`
-/

namespace A238972.P18063418434165226180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238964 n - A238973 n

end

end A238972.P18063418434165226180

/-! ## A238972.P6113660141725254536

`round(A008683(8*n+4)+A238964(n)/2)`
-/

namespace A238972.P6113660141725254536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (8 * n + 4) : ℚ) + (A238964 n : ℚ) / 2)

end

end A238972.P6113660141725254536

/-! ## A238972.P10488808932574275194

`∑{d}[round(A238964(n)/2), A000010(#)]`
-/

namespace A238972.P10488808932574275194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A238964 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A238972.P10488808932574275194

/-! ## A238972.P4686117005042398923

`A110654(A238964(n))`
-/

namespace A238972.P4686117005042398923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238964 n).toNat

end

end A238972.P4686117005042398923

/-! ## A238972.P12553888093257947848

`A004526(A238964(n)+1)`
-/

namespace A238972.P12553888093257947848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238964 n + 1).toNat

end

end A238972.P12553888093257947848

/-! ## A238972.P7976130719918075706

`A028242(xor(1, A238964(n)))`
-/

namespace A238972.P7976130719918075706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A238964 n)).toNat

end

end A238972.P7976130719918075706

/-! ## A238972.P4793281959263632293

`A004524(or(1, A238964(n)+1))`
-/

namespace A238972.P4793281959263632293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A238964 n + 1)).toNat

end

end A238972.P4793281959263632293

/-! ## A238972.P2655817637086415250

`A002265(2*(A238964(n)+1))`
-/

namespace A238972.P2655817637086415250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A238964 n + 1)).toNat

end

end A238972.P2655817637086415250

/-!
# A238973: The number of arcs from odd to even level vertices in divisor lattice in canonical order.

The programs for A238973, there is no canonical definition to state claims against.
-/

/-! ## A238973.P8516212421714044290

`A238951(A063008(n))`
-/

namespace A238973.P8516212421714044290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238951 (A063008 n).toNat

end

end A238973.P8516212421714044290

/-! ## A238973.P11805457442254135688

`floor(A238964(n)/2)`
-/

namespace A238973.P11805457442254135688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238964 n : ℚ) / 2⌋

end

end A238973.P11805457442254135688

/-! ## A238973.P464113778939383855

`(or(1, A238964(n-char[1]))-1)/2`
-/

namespace A238973.P464113778939383855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A238964 (n - (if ∃ j, f1 j = n then 1 else 0))) - 1 : ℚ) / 2

end

end A238973.P464113778939383855

/-! ## A238973.P7011785521165341941

`A238964(n)-A238972(n)`
-/

namespace A238973.P7011785521165341941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238964 n - A238972 n

end

end A238973.P7011785521165341941

/-! ## A238973.P14446477301336778480

`A004526(A238964(n))`
-/

namespace A238973.P14446477301336778480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238964 n).toNat

end

end A238973.P14446477301336778480

/-! ## A238973.P1734872395111289628

`A140106(A238964(n)+2)`
-/

namespace A238973.P1734872395111289628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A238964 n + 2).toNat

end

end A238973.P1734872395111289628

/-! ## A238973.P3803857033826733574

`A004524(or(1, A238964(n)))`
-/

namespace A238973.P3803857033826733574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A238964 n)).toNat

end

end A238973.P3803857033826733574

/-! ## A238973.P13854550717377973156

`A110654(A238964(n)+1)-1`
-/

namespace A238973.P13854550717377973156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238964 n + 1).toNat - 1

end

end A238973.P13854550717377973156

/-! ## A238973.P8543232701124151932

`A002265(2*A238964(n))`
-/

namespace A238973.P8543232701124151932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A238964 n).toNat

end

end A238973.P8543232701124151932

/-! ## A238973.P5194473098627626406

`A004524(2*A238964(n))/2`
-/

namespace A238973.P5194473098627626406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * A238964 n).toNat : ℚ) / 2

end

end A238973.P5194473098627626406

/-! ## A238973.P11214233854473744260

`A008615(3*A238964(n))`
-/

namespace A238973.P11214233854473744260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A238964 n).toNat

end

end A238973.P11214233854473744260

/-!
# A238974: The size (the number of arcs) in the transitive closure of divisor lattice in canonical order.

The programs for A238974, there is no canonical definition to state claims against.
-/

/-! ## A238974.P7285339360824758581

`A238952(A063008(n))`
-/

namespace A238974.P7285339360824758581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A063008 n).toNat

end

end A238974.P7285339360824758581

/-! ## A238974.P7109843404744716739

`∑{d}[A063008(n), A000005(#)-1]`
-/

namespace A238974.P7109843404744716739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000005 d - 1)

end

end A238974.P7109843404744716739

/-! ## A238974.P6673213599565341713

`A238952(A131822(n+1))`
-/

namespace A238974.P6673213599565341713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A131822 (n + 1)).toNat

end

end A238974.P6673213599565341713

/-! ## A238974.P2099343681662344924

`∑{d}[A063008(n), A032741(#)]`
-/

namespace A238974.P2099343681662344924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A032741 d

end

end A238974.P2099343681662344924

/-! ## A238974.P1709191548750891754

`∑{d}[A131822(n+1), A211261(#)]`
-/

namespace A238974.P1709191548750891754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A211261 d

end

end A238974.P1709191548750891754

/-!
# A238975: Number of perfect partitions in canonical order.

The programs for A238975, there is no canonical definition to state claims against.
-/

/-! ## A238975.P6627356358692855925

`A074206(A063008(n))`
-/

namespace A238975.P6627356358692855925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A063008 n).toNat

end

end A238975.P6627356358692855925

/-! ## A238975.P5781147255888786522

`A361665(A129129(n))`
-/

namespace A238975.P5781147255888786522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361665 (A129129 n).toNat

end

end A238975.P5781147255888786522

/-! ## A238975.P470249634623741012

`A002033(A063008(n)-1)`
-/

namespace A238975.P470249634623741012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A063008 n - 1).toNat

end

end A238975.P470249634623741012

/-! ## A238975.P4592828171767692130

`A074206(A131888(2*n))`
-/

namespace A238975.P4592828171767692130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A131888 (2 * n)).toNat

end

end A238975.P4592828171767692130

/-! ## A238975.P3366534224734107613

`∑{d}[A063008(n), A174725(#)]`
-/

namespace A238975.P3366534224734107613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174725 d

end

end A238975.P3366534224734107613

/-!
# A238976: a(n) = ((3^(n-1) - 1)^2)/4.

The programs for A238976, the canonical program `A238976.P9331913633270408167` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238976 has offset 1).

The definition of A238976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n-1)²/4` (program `A238976.P18432878272221753027`, by `A238976.P18432878272221753027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238976.P9331913633270408167

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=1, a(2)=16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A238976

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P9331913633270408167.Spec : Prop :=
  ∀ n, P9331913633270408167.a n = A238976 (n + 1)

theorem P9331913633270408167.correct : P9331913633270408167.Spec := by
  intro n
  simp only [A238976, Nat.add_sub_cancel]

end A238976

/-! ## A238976.P18432878272221753027

`(3^n-1)²/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238976.P18432878272221753027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) ^ 2 : ℚ) / 4

end

end A238976.P18432878272221753027

namespace A238976

/-- `(3^n-1)²/4` -/
def P18432878272221753027.Spec : Prop :=
  ∀ n, P18432878272221753027.a n = (A238976 (n + 1) : ℚ)

theorem P18432878272221753027.correct : P18432878272221753027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A238976, Nat.add_sub_cancel, A238976.P18432878272221753027.a, A238976.P9331913633270408167.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A238976, Nat.add_sub_cancel, A238976.P18432878272221753027.a, A238976.P9331913633270408167.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A238976

/-! ## A238976.P11551162322329278158

`and(∑[floor(3^(n-1))]², -1)`
-/

namespace A238976.P11551162322329278158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (-1)

end

end A238976.P11551162322329278158

namespace A238976

/-- `and(∑[floor(3^(n-1))]², -1)` -/
def P11551162322329278158.Spec : Prop :=
  ∀ n, P11551162322329278158.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P15555273007098183568

`∑[3*a(n-1)]^2` with `a(0)=0, a(1)=1`
-/

namespace A238976.P15555273007098183568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A238976.P15555273007098183568

namespace A238976

/-- `∑[3*a(n-1)]^2` -/
def P15555273007098183568.Spec : Prop :=
  ∀ n, (P15555273007098183568.a n : ℤ) = A238976 (n + 1)

end A238976

/-! ## A238976.P2095363329019431234

`floor(∑[3*a(n-1)]²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A238976.P2095363329019431234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A238976.P2095363329019431234

namespace A238976

/-- `floor(∑[3*a(n-1)]²)` -/
def P2095363329019431234.Spec : Prop :=
  ∀ n, (P2095363329019431234.a n : ℤ) = A238976 (n + 1)

end A238976

/-! ## A238976.P12759676125358406334

`ceil(∑[3*a(n-1)]²)` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A238976.P12759676125358406334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A238976.P12759676125358406334

namespace A238976

/-- `ceil(∑[3*a(n-1)]²)` -/
def P12759676125358406334.Spec : Prop :=
  ∀ n, (P12759676125358406334.a n : ℤ) = A238976 (n + 1)

end A238976

/-! ## A238976.P17269889363946285407

`round(∑[3*a(n-1)]²)` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A238976.P17269889363946285407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A238976.P17269889363946285407

namespace A238976

/-- `round(∑[3*a(n-1)]²)` -/
def P17269889363946285407.Spec : Prop :=
  ∀ n, (P17269889363946285407.a n : ℤ) = A238976 (n + 1)

end A238976

/-! ## A238976.P4544110827276375809

`or(∑[floor(3^(n-1))]², char[1])`
-/

namespace A238976.P4544110827276375809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238976.P4544110827276375809

namespace A238976

/-- `or(∑[floor(3^(n-1))]², char[1])` -/
def P4544110827276375809.Spec : Prop :=
  ∀ n, P4544110827276375809.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P10608758937759136689

`∑[floor(3^(n-1))]²*ceil(acot(n))`
-/

namespace A238976.P10608758937759136689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A238976.P10608758937759136689

namespace A238976

/-- `∑[floor(3^(n-1))]²*ceil(acot(n))` -/
def P10608758937759136689.Spec : Prop :=
  ∀ n, P10608758937759136689.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P8074921786768201488

`lcm(∑[floor(3^(n-1))]², (-1)^n)`
-/

namespace A238976.P8074921786768201488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ((-1) ^ n)

end

end A238976.P8074921786768201488

namespace A238976

/-- `lcm(∑[floor(3^(n-1))]², (-1)^n)` -/
def P8074921786768201488.Spec : Prop :=
  ∀ n, (P8074921786768201488.a n : ℤ) = A238976 (n + 1)

end A238976

/-! ## A238976.P6412175256304268035

`floor(∑[a(n-1)²/a(n-2)]²)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A238976.P6412175256304268035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A238976.P6412175256304268035

namespace A238976

/-- `floor(∑[a(n-1)²/a(n-2)]²)` -/
def P6412175256304268035.Spec : Prop :=
  ∀ n, P6412175256304268035.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P14844523593771315993

`A003462(n)^2`
-/

namespace A238976.P14844523593771315993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n ^ 2

end

end A238976.P14844523593771315993

namespace A238976

/-- `A003462(n)^2` -/
def P14844523593771315993.Spec : Prop :=
  ∀ n, P14844523593771315993.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P527999915371282358

`record[A255044(n)²]`
-/

namespace A238976.P527999915371282358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255044 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238976.P527999915371282358

namespace A238976

/-- `record[A255044(n)²]` -/
def P527999915371282358.Spec : Prop :=
  ∀ n, P527999915371282358.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P2719787501720912906

`round((A103453(n)/2)²)`
-/

namespace A238976.P2719787501720912906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A103453 n : ℚ) / 2) ^ 2)

end

end A238976.P2719787501720912906

namespace A238976

/-- `round((A103453(n)/2)²)` -/
def P2719787501720912906.Spec : Prop :=
  ∀ n, P2719787501720912906.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P10012888830564078195

`record[A140313(n+1)²]`
-/

namespace A238976.P10012888830564078195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238976.P10012888830564078195

namespace A238976

/-- `record[A140313(n+1)²]` -/
def P10012888830564078195.Spec : Prop :=
  ∀ n, P10012888830564078195.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P14515446498493796458

`record[(1-A048471(n))²]`
-/

namespace A238976.P14515446498493796458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A048471 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238976.P14515446498493796458

namespace A238976

/-- `record[(1-A048471(n))²]` -/
def P14515446498493796458.Spec : Prop :=
  ∀ n, P14515446498493796458.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P954267927911186997

`record[(1-A125170(n))²]`
-/

namespace A238976.P954267927911186997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A125170 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238976.P954267927911186997

namespace A238976

/-- `record[(1-A125170(n))²]` -/
def P954267927911186997.Spec : Prop :=
  ∀ n, P954267927911186997.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P15518640688356486471

`record[(1-A135233(n))²]`
-/

namespace A238976.P15518640688356486471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A135233 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238976.P15518640688356486471

namespace A238976

/-- `record[(1-A135233(n))²]` -/
def P15518640688356486471.Spec : Prop :=
  ∀ n, P15518640688356486471.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P12893813226312842942

`A107767(A004277(n))`
-/

namespace A238976.P12893813226312842942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (A004277 n).toNat

end

end A238976.P12893813226312842942

namespace A238976

/-- `A107767(A004277(n))` -/
def P12893813226312842942.Spec : Prop :=
  ∀ n, P12893813226312842942.a n = A238976 (n + 1)

end A238976

/-! ## A238976.P6911373823314120228

`A107767(A004275(n+1))`
-/

namespace A238976.P6911373823314120228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (A004275 (n + 1)).toNat

end

end A238976.P6911373823314120228

namespace A238976

/-- `A107767(A004275(n+1))` -/
def P6911373823314120228.Spec : Prop :=
  ∀ n, P6911373823314120228.a n = A238976 (n + 1)

end A238976

/-!
# A238977: Number of ballot sequences of length n with exactly 2 fixed points.

The programs for A238977, there is no canonical definition to state claims against.
-/

/-! ## A238977.P8591868561214669190

`A238802(∑[char[1]+n]+1)`
-/

namespace A238977.P8591868561214669190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238977.P8591868561214669190

/-! ## A238977.P3047098011720303045

`A238802(A133263(n))+round(acot(n+10))`
-/

namespace A238977.P3047098011720303045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A133263 n).toNat + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 10 : ℝ))

end

end A238977.P3047098011720303045

/-! ## A238977.P17356605549838356301

`A057427(n)*A238802(A133263(n))`
-/

namespace A238977.P17356605549838356301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A238802 (A133263 n).toNat

end

end A238977.P17356605549838356301

/-! ## A238977.P15990128550394004896

`lcm(A043562(n), A238802(A133263(n)))`
-/

namespace A238977.P15990128550394004896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043562 n) (A238802 (A133263 n).toNat)

end

end A238977.P15990128550394004896

/-! ## A238977.P16993547603107009661

`A157928(n+1)*A238802(A133263(n))`
-/

namespace A238977.P16993547603107009661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) * A238802 (A133263 n).toNat

end

end A238977.P16993547603107009661

/-! ## A238977.P17935582954985338002

`A157928(n)*A238802(A152950(n+1)-1)`
-/

namespace A238977.P17935582954985338002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A238802 (A152950 (n + 1) - 1).toNat

end

end A238977.P17935582954985338002

/-!
# A238978: Number of ballot sequences of length n with exactly 3 fixed points.

The programs for A238978, there is no canonical definition to state claims against.
-/

/-! ## A238978.P6317660659227273632

`A238802(∑[n]+ceil(atan(n))+1)`
-/

namespace A238978.P6317660659227273632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (⌈Real.arctan (n : ℝ)⌉ + 1)).toNat

end

end A238978.P6317660659227273632

/-! ## A238978.P13662482011799177248

`A238802(A152950(n+1)-char[1])`
-/

namespace A238978.P13662482011799177248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A152950 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A238978.P13662482011799177248

/-! ## A238978.P464701559899773475

`A238802(∑[C(n, A000085(n))+n]+1)`
-/

namespace A238978.P464701559899773475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A000085 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238978.P464701559899773475

/-! ## A238978.P7720564231608122703

`A238802(A157928(n)+A133263(n))`
-/

namespace A238978.P7720564231608122703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A157928 n + A133263 n).toNat

end

end A238978.P7720564231608122703

/-! ## A238978.P1047588081126734997

`A238802(A034856(n+1)-A004275(n))`
-/

namespace A238978.P1047588081126734997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A034856 (n + 1) - A004275 n).toNat

end

end A238978.P1047588081126734997

/-! ## A238978.P16395518975261979142

`A157928(n)*A238802(A152950(n+1))`
-/

namespace A238978.P16395518975261979142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A238802 (A152950 (n + 1)).toNat

end

end A238978.P16395518975261979142

/-! ## A238978.P10133975107791297742

`A238802(A152950(n+1))%A001063(n)`
-/

namespace A238978.P10133975107791297742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238802 (A152950 (n + 1)).toNat) (A001063 n)

end

end A238978.P10133975107791297742

/-! ## A238978.P6365253675470457239

`A157928(n)*A238802(∑[A233583(n+1)])`
-/

namespace A238978.P6365253675470457239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A238802 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238978.P6365253675470457239

/-! ## A238978.P13935168569313395180

`A179184(n)*A238802(A145018(n+1)-1)`
-/

namespace A238978.P13935168569313395180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n * A238802 (A145018 (n + 1) - 1).toNat

end

end A238978.P13935168569313395180

/-! ## A238978.P1945817649011648185

`A238802(A152950(n+1)%A032810(n+1))`
-/

namespace A238978.P1945817649011648185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (Int.tmod (A152950 (n + 1)) (A032810 (n + 1))).toNat

end

end A238978.P1945817649011648185

/-!
# A238979: Number of ballot sequences of length n with exactly 4 fixed points.

The programs for A238979, there is no canonical definition to state claims against.
-/

/-! ## A238979.P4826003765480302980

`A238802(A077169(n+1)-1)`
-/

namespace A238979.P4826003765480302980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A077169 (n + 1) - 1).toNat

end

end A238979.P4826003765480302980

/-! ## A238979.P14611585963738597168

`A238802(A145018(n+1))%A006721(n+2)`
-/

namespace A238979.P14611585963738597168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238802 (A145018 (n + 1)).toNat) (A006721 (n + 2))

end

end A238979.P14611585963738597168

/-! ## A238979.P9283329429533675904

`A179184(A008619(n))*A238802(A145018(n+1))`
-/

namespace A238979.P9283329429533675904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A008619 n).toNat * A238802 (A145018 (n + 1)).toNat

end

end A238979.P9283329429533675904

/-! ## A238979.P3604428015226609396

`A179184(A028310(n))*A238802(A145018(n+1))`
-/

namespace A238979.P3604428015226609396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A028310 n).toNat * A238802 (A145018 (n + 1)).toNat

end

end A238979.P3604428015226609396

/-! ## A238979.P14990409093059561122

`A179184(A210062(n))*A238802(A145018(n+1))`
-/

namespace A238979.P14990409093059561122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A210062 n).toNat * A238802 (A145018 (n + 1)).toNat

end

end A238979.P14990409093059561122

/-!
# A238981: Sum of n-th powers of unitary divisors of n (d such that d divides n, gcd(d, n/d) = 1).

The programs for A238981, there is no canonical definition to state claims against.
-/

/-! ## A238981.P8760809662786745200

`A321236(A183091(n+1))`
-/

namespace A238981.P8760809662786745200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321236 (A183091 (n + 1)).toNat

end

end A238981.P8760809662786745200

/-! ## A238981.P5649449921493952745

`record[∑{d}[1-n, #^(n-1)]]-A053120(A285868(n))`
-/

namespace A238981.P5649449921493952745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A053120 (A285868 n).toNat : ℚ)

end

end A238981.P5649449921493952745

/-! ## A238981.P7425002821396235263

`A321236(A320974(A003557(n+1))+n)`
-/

namespace A238981.P7425002821396235263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321236 (A320974 (A003557 (n + 1)).toNat + (n : ℤ)).toNat

end

end A238981.P7425002821396235263

/-!
# A238982: Numbers n dividing the sum of n-th powers of unitary divisors of n.

The programs for A238982, there is no canonical definition to state claims against.
-/

/-! ## A238982.P8607897686533024590

`A003132(A271236(n))+n²`
-/

namespace A238982.P8607897686533024590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A271236 n).toNat + (n ^ 2 : ℤ)

end

end A238982.P8607897686533024590

/-!
# A238984: a(n+1) is the product of the last three digits of the sequence up to a(n), start with a(0)=2.

The programs for A238984, there is no canonical definition to state claims against.
-/

/-! ## A238984.P5801669163592376122

`∏{e}[A000984(Δ[n²]), #+#]`
-/

namespace A238984.P5801669163592376122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + Nat.factorization (f1 n).natAbs p)

end

end A238984.P5801669163592376122

/-!
# A238985: Zeroless 7-smooth numbers.

The programs for A238985, the canonical program `A238985.P10795254232173325653` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238985 has offset 1).

The definition of A238985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238985.P6007658402781120378

`∩[A002473(n+1), A052382(n+1)]`
-/

namespace A238985.P6007658402781120378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238985.P6007658402781120378

namespace A238985

/-- `∩[A002473(n+1), A052382(n+1)]` -/
def P6007658402781120378.Spec : Prop :=
  ∀ n, (P6007658402781120378.a n : ℤ) = A238985 (n + 1)

end A238985

/-! ## A238985.P6908052169474678477

`∩[A052382(n+1), A342950(n+1)]`
-/

namespace A238985.P6908052169474678477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238985.P6908052169474678477

namespace A238985

/-- `∩[A052382(n+1), A342950(n+1)]` -/
def P6908052169474678477.Spec : Prop :=
  ∀ n, (P6908052169474678477.a n : ℤ) = A238985 (n + 1)

end A238985

/-! ## A238985.P2226255609102511446

`record[A004719(A002473(n+1))]`
-/

namespace A238985.P2226255609102511446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238985.P2226255609102511446

namespace A238985

/-- `record[A004719(A002473(n+1))]` -/
def P2226255609102511446.Spec : Prop :=
  ∀ n, P2226255609102511446.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P9764425361405785948

`record[A071785(A004719(n+1))]`
-/

namespace A238985.P9764425361405785948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A004719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238985.P9764425361405785948

namespace A238985

/-- `record[A071785(A004719(n+1))]` -/
def P9764425361405785948.Spec : Prop :=
  ∀ n, P9764425361405785948.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P10809808731527882357

`record[A004719(A342950(n+1))]`
-/

namespace A238985.P10809808731527882357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A342950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238985.P10809808731527882357

namespace A238985

/-- `record[A004719(A342950(n+1))]` -/
def P10809808731527882357.Spec : Prop :=
  ∀ n, P10809808731527882357.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P10795254232173325653

`filter[A052382(n+1), A086299(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A238985

/-- `filter[A052382(n+1), A086299(#)]` -/
def P10795254232173325653.Spec : Prop :=
  ∀ n, P10795254232173325653.a n = A238985 (n + 1)

theorem P10795254232173325653.correct : P10795254232173325653.Spec := by
  intro n
  simp only [A238985, Nat.add_sub_cancel]

end A238985

/-! ## A238985.P6615565564312406410

`filter[A002473(n+1), A168046(#)]`
-/

namespace A238985.P6615565564312406410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A238985.P6615565564312406410

namespace A238985

/-- `filter[A002473(n+1), A168046(#)]` -/
def P6615565564312406410.Spec : Prop :=
  ∀ n, P6615565564312406410.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P3944742449603210392

`filter[A342950(n+1), A168046(#)]`
-/

namespace A238985.P3944742449603210392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A238985.P3944742449603210392

namespace A238985

/-- `filter[A342950(n+1), A168046(#)]` -/
def P3944742449603210392.Spec : Prop :=
  ∀ n, P3944742449603210392.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P9096249155624261894

`record[A004719(sqrt(A352618(n+1)))]`
-/

namespace A238985.P9096249155624261894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238985.P9096249155624261894

namespace A238985

/-- `record[A004719(sqrt(A352618(n+1)))]` -/
def P9096249155624261894.Spec : Prop :=
  ∀ n, P9096249155624261894.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P9730845957845715039

`record[A004719(A085127(n+1)/4)]`
-/

namespace A238985.P9730845957845715039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238985.P9730845957845715039

namespace A238985

/-- `record[A004719(A085127(n+1)/4)]` -/
def P9730845957845715039.Spec : Prop :=
  ∀ n, P9730845957845715039.a n = A238985 (n + 1)

end A238985

/-! ## A238985.P1629813152386670099

`record[A004719(n+1)*A086299(n+1)]`
-/

namespace A238985.P1629813152386670099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1) * A086299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238985.P1629813152386670099

namespace A238985

/-- `record[A004719(n+1)*A086299(n+1)]` -/
def P1629813152386670099.Spec : Prop :=
  ∀ n, P1629813152386670099.a n = A238985 (n + 1)

end A238985

/-!
# A238987: Number of permutations of length n containing exactly 1 occurrence of the pattern 1324.

The programs for A238987, there is no canonical definition to state claims against.
-/

/-! ## A238987.P18425212386438766194

`A008615(A137328(n!))`
-/

namespace A238987.P18425212386438766194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A137328 (Nat.factorial n)).toNat

end

end A238987.P18425212386438766194

/-! ## A238987.P3806901054050103689

`A289437(or(2, ∑[A206950(n)]))`
-/

namespace A238987.P3806901054050103689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A238987.P3806901054050103689

/-! ## A238987.P15960517017886189845

`A110654(A323141(∑[(n+1)/∏{p}[n+1, #]]))`
-/

namespace A238987.P15960517017886189845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A323141 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A238987.P15960517017886189845

/-!
# A238988: Triangle T(n,k), read by rows, given by (1, -1, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A238988, there is no canonical definition to state claims against.
-/

/-! ## A238988.P14143541226785245362

`A058398(n+1)-A124737(A119502(n))`
-/

namespace A238988.P14143541226785245362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1) - A124737 (A119502 n).toNat

end

end A238988.P14143541226785245362

/-! ## A238988.P15024597664827050963

`A003989(A015753(n))-A124737(A119502(n))`
-/

namespace A238988.P15024597664827050963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A015753 n).toNat - A124737 (A119502 n).toNat

end

end A238988.P15024597664827050963

/-! ## A238988.P12223883945189981032

`A000005(A130461(n))-A124737(A119502(n))`
-/

namespace A238988.P12223883945189981032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130461 n).toNat - A124737 (A119502 n).toNat

end

end A238988.P12223883945189981032

/-! ## A238988.P17736708139846411162

`A167194(n+1)-A057117(A225361(n+1))%2`
-/

namespace A238988.P17736708139846411162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167194 (n + 1) - Int.tmod (A057117 (A225361 (n + 1)).toNat) 2

end

end A238988.P17736708139846411162

/-!
# A238989: Numbers that are not odiousfree*evilfree. The complement of A237417.

The programs for A238989, there is no canonical definition to state claims against.
-/

/-! ## A238989.P3739967969763023838

`eq[char[A237417(n+1)], A000007(n)]`
-/

namespace A238989.P3739967969763023838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A238989.P3739967969763023838

/-! ## A238989.P11569687329464474990

`eq[char[A237417(n+1)], A000038(n)]`
-/

namespace A238989.P11569687329464474990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A238989.P11569687329464474990

/-! ## A238989.P4854069501060690716

`eq[1, A057427(n)+char[A237417(n+1)]]`
-/

namespace A238989.P4854069501060690716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238989.P4854069501060690716

/-! ## A238989.P10469891038400075649

`eq[char[A237417(n+1)], A130706(n+1)]`
-/

namespace A238989.P10469891038400075649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A238989.P10469891038400075649

/-!
# A238990: Number of n X n 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A238990, there is no canonical definition to state claims against.
-/

/-! ## A238990.P11270957831456361217

`A238997((n+1)²+n²)`
-/

namespace A238990.P11270957831456361217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 ((n + 1) ^ 2 + n ^ 2)

end

end A238990.P11270957831456361217

/-!
# A238991: Number of n X 2 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the sum of elements above it, modulo 4.

The programs for A238991, there is no canonical definition to state claims against.
-/

/-! ## A238991.P4678396266690440974

`A238997(∑[n+1]+2)`
-/

namespace A238991.P4678396266690440974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238991.P4678396266690440974

/-! ## A238991.P11259996806751846385

`record[root(A238997(n+2), A059268(n))]`
-/

namespace A238991.P11259996806751846385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238997 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238991.P11259996806751846385

/-! ## A238991.P5496740335403478202

`xor(1, A238997(A000096(n+1)))+1`
-/

namespace A238991.P5496740335403478202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A238997 (A000096 (n + 1)).toNat) + 1

end

end A238991.P5496740335403478202

/-!
# A238992: Number of nX3 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the sum of elements above it, modulo 4.

The programs for A238992, there is no canonical definition to state claims against.
-/

/-! ## A238992.P9609509799998350789

`A238997(∑[n+2]+4)`
-/

namespace A238992.P9609509799998350789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238992.P9609509799998350789

/-! ## A238992.P8180557138277185062

`or(1, A238997(A167614(n+1)))`
-/

namespace A238992.P8180557138277185062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238997 (A167614 (n + 1)).toNat)

end

end A238992.P8180557138277185062

/-! ## A238992.P1168139042383404598

`A238997(A167614(n+1))+A000038(n+1)`
-/

namespace A238992.P1168139042383404598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A238992.P1168139042383404598

/-! ## A238992.P3988133516127092217

`A238997(A167614(n+1))%A209824(n+1)`
-/

namespace A238992.P3988133516127092217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238997 (A167614 (n + 1)).toNat) (A209824 (n + 1))

end

end A238992.P3988133516127092217

/-! ## A238992.P5566272819535551845

`lcm(A008836(n+1), A238997(A167614(n+1)))`
-/

namespace A238992.P5566272819535551845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A238997 (A167614 (n + 1)).toNat)

end

end A238992.P5566272819535551845

/-!
# A238993: Number of nX4 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the sum of elements above it, modulo 4.

The programs for A238993, there is no canonical definition to state claims against.
-/

/-! ## A238993.P7402542887591248765

`A238997(∑[n+3]+7)`
-/

namespace A238993.P7402542887591248765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238993.P7402542887591248765

/-!
# A238994: Number of nX5 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the sum of elements above it, modulo 4.

The programs for A238994, there is no canonical definition to state claims against.
-/

/-! ## A238994.P6161900118515317082

`A238997(A374005(n+1))`
-/

namespace A238994.P6161900118515317082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (A374005 (n + 1)).toNat

end

end A238994.P6161900118515317082

/-! ## A238994.P13119519215732434785

`A238997(A167499(n+3))`
-/

namespace A238994.P13119519215732434785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (A167499 (n + 3)).toNat

end

end A238994.P13119519215732434785

/-! ## A238994.P8660017005823586593

`A238997(A155212(n)+13)`
-/

namespace A238994.P8660017005823586593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (A155212 n + 13).toNat

end

end A238994.P8660017005823586593

/-! ## A238994.P10097729005779476038

`A238997(eq[6, A131818(n+1)])`
-/

namespace A238994.P10097729005779476038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238994.P10097729005779476038

/-! ## A238994.P419472458184072553

`A238997(Δ[A264443(n)])`
-/

namespace A238994.P419472458184072553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (f1 (n + 1) - f1 n).toNat

end

end A238994.P419472458184072553

/-!
# A238995: Number of nX6 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the sum of elements above it, modulo 4.

The programs for A238995, there is no canonical definition to state claims against.
-/

/-! ## A238995.P15744490295829405836

`A238997(A374007(n+1))`
-/

namespace A238995.P15744490295829405836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (A374007 (n + 1)).toNat

end

end A238995.P15744490295829405836

/-! ## A238995.P10458236977132097774

`A238997(eq[7, A131818(n+1)])`
-/

namespace A238995.P10458236977132097774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238995.P10458236977132097774

/-! ## A238995.P11068929376505320326

`A238997(eq[3, A219347(n)])`
-/

namespace A238995.P11068929376505320326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238995.P11068929376505320326

/-! ## A238995.P4384471064019131299

`A238997(eq[5, A193592(n)])`
-/

namespace A238995.P4384471064019131299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238995.P4384471064019131299

/-! ## A238995.P1251096257476829679

`A238997(eq[8, A185782(n+1)])`
-/

namespace A238995.P1251096257476829679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238995.P1251096257476829679

/-!
# A238996: Number of nX7 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the sum of elements above it, modulo 4.

The programs for A238996, there is no canonical definition to state claims against.
-/

/-! ## A238996.P2872092466152437219

`A238997(A374008(n+1))`
-/

namespace A238996.P2872092466152437219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (A374008 (n + 1)).toNat

end

end A238996.P2872092466152437219

/-! ## A238996.P16263556833736815718

`A238997(eq[8, A131818(n+1)])`
-/

namespace A238996.P16263556833736815718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238996.P16263556833736815718

/-! ## A238996.P6082087963795015506

`A238997(eq[2, A219347(n)-2])`
-/

namespace A238996.P6082087963795015506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238996.P6082087963795015506

/-!
# A238998: Number of partitions of n that such that no part is a Fibonacci number.

The programs for A238998, there is no canonical definition to state claims against.
-/

/-! ## A238998.P3400606793453965808

`A029348(eq[A029378(n), A029383(n)])`
-/

namespace A238998.P3400606793453965808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A238998.P3400606793453965808

/-! ## A238998.P5916783790916068226

`A029411(record[A109353(n+1)]-A109359(n))`
-/

namespace A238998.P5916783790916068226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A109359 n).toNat

end

end A238998.P5916783790916068226

/-!
# A238999: Number of partitions of n using Fibonacci numbers > 1.

The programs for A238999, there is no canonical definition to state claims against.
-/

/-! ## A238999.P12526751126792454574

`A239000(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A238999.P12526751126792454574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A239000 n + a (n - 2)

end

end A238999.P12526751126792454574

/-! ## A238999.P17451131795164625265

`A000007(n)+Δ[A003107(abs(1-n))]`
-/

namespace A238999.P17451131795164625265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A238999.P17451131795164625265

/-! ## A238999.P18262093225684990139

`Δ[A057427(n)+A003107(abs(1-n))]`
-/

namespace A238999.P18262093225684990139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A003107 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238999.P18262093225684990139

/-! ## A238999.P5732100795237843804

`Δ[A003107(abs(1-n))-A054977(n)]`
-/

namespace A238999.P5732100795237843804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 |1 - (n : ℤ)|.toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238999.P5732100795237843804

/-! ## A238999.P2344516027361938155

`Δ[A003107(n+1)]-A239000(n+2)`
-/

namespace A238999.P2344516027361938155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A239000 (n + 2)

end

end A238999.P2344516027361938155

/-! ## A238999.P18301669074826804143

`Δ[A003107(abs(1-n))%A003099(n)]`
-/

namespace A238999.P18301669074826804143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003107 |1 - (n : ℤ)|.toNat) (A003099 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238999.P18301669074826804143

