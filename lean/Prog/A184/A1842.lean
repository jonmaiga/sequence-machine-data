import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C013
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A184200: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock containing fewer than two 1s.

The programs for A184200, the canonical program `A184200.P14155495183630604722` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184200 has offset 1).

The definition of A184200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184200.P14155495183630604722

`ogf((35+20x-87x^2-6x^3+16x^4)/(1-5x-4x^2+11x^3+x^4-2x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A184200

/-- `ogf((35+20x-87x^2-6x^3+16x^4)/(1-5x-4x^2+11x^3+x^4-2x^5))` -/
def P14155495183630604722.Spec : Prop :=
  ∀ n, P14155495183630604722.a n = A184200 (n + 1)

theorem P14155495183630604722.correct : P14155495183630604722.Spec := by
  intro n
  simp only [A184200, Nat.add_sub_cancel]

end A184200

/-! ## A184200.P7959298298152042059

`A184207(∑[n+1]+2)`
-/

namespace A184200.P7959298298152042059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184200.P7959298298152042059

namespace A184200

/-- `A184207(∑[n+1]+2)` -/
def P7959298298152042059.Spec : Prop :=
  ∀ n, P7959298298152042059.a n = A184200 (n + 1)

end A184200

/-! ## A184200.P9455888700658053558

`record[root(A184207(n+3), A249057(n))]`
-/

namespace A184200.P9455888700658053558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184207 (n + 3) : ℝ) ^ (1 / (A249057 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184200.P9455888700658053558

namespace A184200

/-- `record[root(A184207(n+3), A249057(n))]` -/
def P9455888700658053558.Spec : Prop :=
  ∀ n, P9455888700658053558.a n = (A184200 (n + 1) : ℝ)

end A184200

/-! ## A184200.P16960615412166621031

`record[root(A184207(n+2), A038738(n+1))]`
-/

namespace A184200.P16960615412166621031
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184207 (n + 2) : ℝ) ^ (1 / (A038738 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184200.P16960615412166621031

namespace A184200

/-- `record[root(A184207(n+2), A038738(n+1))]` -/
def P16960615412166621031.Spec : Prop :=
  ∀ n, P16960615412166621031.a n = (A184200 (n + 1) : ℝ)

end A184200

/-! ## A184200.P16401446891050491835

`record[A184207(Δ[A003453(n+5)])]`
-/

namespace A184200.P16401446891050491835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184200.P16401446891050491835

namespace A184200

/-- `record[A184207(Δ[A003453(n+5)])]` -/
def P16401446891050491835.Spec : Prop :=
  ∀ n, P16401446891050491835.a n = A184200 (n + 1)

end A184200

/-!
# A184201: Number of (n+1)X4 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184201, there is no canonical definition to state claims against.
-/

/-! ## A184201.P13067047102803085064

`A184207(∑[n+2]+4)`
-/

namespace A184201.P13067047102803085064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184201.P13067047102803085064

/-!
# A184202: Number of (n+1)X5 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184202, there is no canonical definition to state claims against.
-/

/-! ## A184202.P12868526197705059837

`A184207(A374004(n+1))`
-/

namespace A184202.P12868526197705059837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374004 (n + 1)).toNat

end

end A184202.P12868526197705059837

/-! ## A184202.P17644139312745454314

`A184207(A141214(n+1))`
-/

namespace A184202.P17644139312745454314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A141214 (n + 1)).toNat

end

end A184202.P17644139312745454314

/-!
# A184203: Number of (n+1) X 6 binary arrays with no 2 X 2 subblock containing fewer than two 1's.

The programs for A184203, there is no canonical definition to state claims against.
-/

/-! ## A184203.P10530696372983511177

`A184207(A374005(n+1))`
-/

namespace A184203.P10530696372983511177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374005 (n + 1)).toNat

end

end A184203.P10530696372983511177

/-!
# A184204: Number of (n+1)X7 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184204, there is no canonical definition to state claims against.
-/

/-! ## A184204.P17020911816319337730

`A184207(A374007(n+1))`
-/

namespace A184204.P17020911816319337730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374007 (n + 1)).toNat

end

end A184204.P17020911816319337730

/-!
# A184205: Number of (n+1) X 8 binary arrays with no 2 X 2 subblock containing fewer than two 1's.

The programs for A184205, there is no canonical definition to state claims against.
-/

/-! ## A184205.P14202787564558825049

`A184207(A374008(n+1))`
-/

namespace A184205.P14202787564558825049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374008 (n + 1)).toNat

end

end A184205.P14202787564558825049

/-!
# A184206: Number of (n+1)X9 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184206, there is no canonical definition to state claims against.
-/

/-! ## A184206.P15394027183649596129

`A184207(A374009(n+1))`
-/

namespace A184206.P15394027183649596129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374009 (n + 1)).toNat

end

end A184206.P15394027183649596129

/-!
# A184207: T(n,k)=Number of (n+1)X(k+1) binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184207, there is no canonical definition to state claims against.
-/

/-! ## A184207.P11032556272916896586

`A218823(lt[1, A112508(n+1)])`
-/

namespace A184207.P11032556272916896586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A184207.P11032556272916896586

/-!
# A184208: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock sum greater than 6.

The programs for A184208, there is no canonical definition to state claims against.
-/

/-! ## A184208.P1274962236071585871

`A184217((n+1)²+n²)`
-/

namespace A184208.P1274962236071585871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 ((n + 1) ^ 2 + n ^ 2)

end

end A184208.P1274962236071585871

/-!
# A184209: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock sum greater than 6.

The programs for A184209, there is no canonical definition to state claims against.
-/

/-! ## A184209.P8593759213556449762

`A184217(∑[n]+1)`
-/

namespace A184209.P8593759213556449762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184209.P8593759213556449762

/-! ## A184209.P9291360611694952047

`record[A010054(n)*A184217(n+1)]`
-/

namespace A184209.P9291360611694952047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P9291360611694952047

/-! ## A184209.P1922237100582257126

`record[root(A184217(n+1), A128227(n))]`
-/

namespace A184209.P1922237100582257126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184217 (n + 1) : ℝ) ^ (1 / (A128227 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P1922237100582257126

/-! ## A184209.P8757592986352825209

`record[root(A184217(n+1), A144464(n))]`
-/

namespace A184209.P8757592986352825209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184217 (n + 1) : ℝ) ^ (1 / (A144464 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P8757592986352825209

/-! ## A184209.P13528662863137282071

`record[A184217(n+1)*A185916(n+1)]`
-/

namespace A184209.P13528662863137282071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (n + 1) * A185916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P13528662863137282071

/-!
# A184210: Number of (n+1)X3 0..3 arrays with every 2X2 subblock sum greater than 6.

The programs for A184210, there is no canonical definition to state claims against.
-/

/-! ## A184210.P15738191992356680330

`A184217(∑[n+1]+2)`
-/

namespace A184210.P15738191992356680330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184210.P15738191992356680330

/-! ## A184210.P10306575550616838867

`record[A010054(n)*A184217(n+2)]`
-/

namespace A184210.P10306575550616838867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184210.P10306575550616838867

/-! ## A184210.P5057706656704919407

`record[A184217(n+2)*A185916(n+1)]`
-/

namespace A184210.P5057706656704919407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (n + 2) * A185916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184210.P5057706656704919407

/-! ## A184210.P10932129254968965884

`record[A184217(Δ[A003453(n+5)])]`
-/

namespace A184210.P10932129254968965884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184210.P10932129254968965884

/-!
# A184211: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock sum greater than 6.

The programs for A184211, there is no canonical definition to state claims against.
-/

/-! ## A184211.P11423153069140681883

`A184217(∑[n+2]+4)`
-/

namespace A184211.P11423153069140681883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184211.P11423153069140681883

/-!
# A184212: Number of (n+1)X5 0..3 arrays with every 2X2 subblock sum greater than 6.

The programs for A184212, there is no canonical definition to state claims against.
-/

/-! ## A184212.P1760401462589659653

`A184217(A141214(n)+7)`
-/

namespace A184212.P1760401462589659653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (A141214 n + 7).toNat

end

end A184212.P1760401462589659653

/-! ## A184212.P4413251972059143516

`A184217(A141214(n+1))`
-/

namespace A184212.P4413251972059143516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (A141214 (n + 1)).toNat

end

end A184212.P4413251972059143516

/-!
# A184218: a(n) = largest k such that A000217(n+1) = A000217(n) + (A000217(n) mod k), or 0 if no such k exists.

The programs for A184218, the canonical program `A184218.P10879986465669603609` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184218 has offset 1).

The definition of A184218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184218.P526376913153365949

`ogf((9x^4-13x^5+5x^6)/(1-3x+3x^2-x^3))`
-/

namespace A184218.P526376913153365949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 9, -13, 5] [1, -3, 3, -1] n

end

end A184218.P526376913153365949

namespace A184218

/-- `ogf((9x^4-13x^5+5x^6)/(1-3x+3x^2-x^3))` -/
def P526376913153365949.Spec : Prop :=
  ∀ n, P526376913153365949.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P10879986465669603609

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=9, a(5)=14, a(6)=20`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A184218

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10879986465669603609.Spec : Prop :=
  ∀ n, P10879986465669603609.a n = A184218 (n + 1)

theorem P10879986465669603609.correct : P10879986465669603609.Spec := by
  intro n
  simp only [A184218, Nat.add_sub_cancel]

end A184218

/-! ## A184218.P2610244233758410473

`a(n-1)+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=9`
-/

namespace A184218.P2610244233758410473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 9] fun n a =>
  a (n - 1) + n

end

end A184218.P2610244233758410473

namespace A184218

/-- `a(n-1)+n` -/
def P2610244233758410473.Spec : Prop :=
  ∀ n, (P2610244233758410473.a n : ℤ) = A184218 (n + 1)

end A184218

/-! ## A184218.P1568530265565106332

`(∑[n]-1)%(∑[C(n, 2)]+1)`
-/

namespace A184218.P1568530265565106332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A184218.P1568530265565106332

namespace A184218

/-- `(∑[n]-1)%(∑[C(n, 2)]+1)` -/
def P1568530265565106332.Spec : Prop :=
  ∀ n, P1568530265565106332.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P7100463685125522032

`∑[∑[n]]%(∑[∑[n]-n]+1)`
-/

namespace A184218.P7100463685125522032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j + 1)

end

end A184218.P7100463685125522032

namespace A184218

/-- `∑[∑[n]]%(∑[∑[n]-n]+1)` -/
def P7100463685125522032.Spec : Prop :=
  ∀ n, P7100463685125522032.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P3867129661006275422

`gcd(C(n+3, 2*n), ∑[n])-1`
-/

namespace A184218.P3867129661006275422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (Nat.choose (n + 3) (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A184218.P3867129661006275422

namespace A184218

/-- `gcd(C(n+3, 2*n), ∑[n])-1` -/
def P3867129661006275422.Spec : Prop :=
  ∀ n, P3867129661006275422.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P1006246714931508950

`∑[n]-∑[n]^floor(4/(n+1))`
-/

namespace A184218.P1006246714931508950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (⌊4 / (n + 1 : ℚ)⌋ : ℤ)

end

end A184218.P1006246714931508950

namespace A184218

/-- `∑[n]-∑[n]^floor(4/(n+1))` -/
def P1006246714931508950.Spec : Prop :=
  ∀ n, P1006246714931508950.a n = (A184218 (n + 1) : ℚ)

end A184218

/-! ## A184218.P15674819056092942932

`(∑[n]-1)*A130543(n)`
-/

namespace A184218.P15674819056092942932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A130543 n

end

end A184218.P15674819056092942932

namespace A184218

/-- `(∑[n]-1)*A130543(n)` -/
def P15674819056092942932.Spec : Prop :=
  ∀ n, P15674819056092942932.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P18254381927997701610

`(C(A101296(n+1), n)-1)*(1-∑[n])`
-/

namespace A184218.P18254381927997701610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (A101296 (n + 1)).toNat n : ℤ) - 1) * (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A184218.P18254381927997701610

namespace A184218

/-- `(C(A101296(n+1), n)-1)*(1-∑[n])` -/
def P18254381927997701610.Spec : Prop :=
  ∀ n, P18254381927997701610.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P17986206533419164822

`A130543(n)*A212342(n)`
-/

namespace A184218.P17986206533419164822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n * A212342 n

end

end A184218.P17986206533419164822

namespace A184218

/-- `A130543(n)*A212342(n)` -/
def P17986206533419164822.Spec : Prop :=
  ∀ n, P17986206533419164822.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P5080157291432306675

`lcm(A184219(n+1), A212342(n))`
-/

namespace A184218.P5080157291432306675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A184219 (n + 1)) (A212342 n)

end

end A184218.P5080157291432306675

namespace A184218

/-- `lcm(A184219(n+1), A212342(n))` -/
def P5080157291432306675.Spec : Prop :=
  ∀ n, (P5080157291432306675.a n : ℤ) = A184218 (n + 1)

end A184218

/-! ## A184218.P16424856390863313087

`(A000217(n)-1)*A057427(A002265(n))`
-/

namespace A184218.P16424856390863313087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - 1) * A057427 (A002265 n).toNat

end

end A184218.P16424856390863313087

namespace A184218

/-- `(A000217(n)-1)*A057427(A002265(n))` -/
def P16424856390863313087.Spec : Prop :=
  ∀ n, P16424856390863313087.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P10479056098838673203

`lcm(A130703(n+1), A201163(n))`
-/

namespace A184218.P10479056098838673203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130703 (n + 1)) (A201163 n)

end

end A184218.P10479056098838673203

namespace A184218

/-- `lcm(A130703(n+1), A201163(n))` -/
def P10479056098838673203.Spec : Prop :=
  ∀ n, (P10479056098838673203.a n : ℤ) = A184218 (n + 1)

end A184218

/-! ## A184218.P16970089119114583239

`A130703(n+1)*A184219(n+1)`
-/

namespace A184218.P16970089119114583239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130703 (n + 1) * A184219 (n + 1)

end

end A184218.P16970089119114583239

namespace A184218

/-- `A130703(n+1)*A184219(n+1)` -/
def P16970089119114583239.Spec : Prop :=
  ∀ n, P16970089119114583239.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P15620410551180248654

`A028253(A212342(n))`
-/

namespace A184218.P15620410551180248654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A212342 n).toNat

end

end A184218.P15620410551180248654

namespace A184218

/-- `A028253(A212342(n))` -/
def P15620410551180248654.Spec : Prop :=
  ∀ n, P15620410551180248654.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P6101769762317680680

`(A000124(n)-2)*A185118(A000124(n))`
-/

namespace A184218.P6101769762317680680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n - 2) * A185118 (A000124 n).toNat

end

end A184218.P6101769762317680680

namespace A184218

/-- `(A000124(n)-2)*A185118(A000124(n))` -/
def P6101769762317680680.Spec : Prop :=
  ∀ n, P6101769762317680680.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P14888331890924113712

`∑{#}[n, #*(1-C(#, #^floor(n/2)))]`
-/

namespace A184218.P14888331890924113712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * (1 - (Nat.choose k (SequenceMachineLib.roundAway ((k : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat : ℤ))

end

end A184218.P14888331890924113712

namespace A184218

/-- `∑{#}[n, #*(1-C(#, #^floor(n/2)))]` -/
def P14888331890924113712.Spec : Prop :=
  ∀ n, P14888331890924113712.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P11305866123407781388

`∑{#}[n, C(#, (2*n)^C(#, #^floor(n/2)))]`
-/

namespace A184218.P11305866123407781388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose k ((2 * n) ^ Nat.choose k (SequenceMachineLib.roundAway ((k : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)

end

end A184218.P11305866123407781388

namespace A184218

/-- `∑{#}[n, C(#, (2*n)^C(#, #^floor(n/2)))]` -/
def P11305866123407781388.Spec : Prop :=
  ∀ n, (P11305866123407781388.a n : ℤ) = A184218 (n + 1)

end A184218

/-!
# A184219: a(n) = A184218(n)/A130703(n) unless A130703(n) = 0 in which case a(n) = 0.

The programs for A184219, there is no canonical definition to state claims against.
-/

/-! ## A184219.P4157279956809240008

`A184218(n+1)%(1-A130703(n+1))`
-/

namespace A184219.P4157279956809240008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184218 (n + 1)) (1 - A130703 (n + 1))

end

end A184219.P4157279956809240008

/-! ## A184219.P13456743640632868330

`A184218(n+1)/A028310(A130703(n+1))`
-/

namespace A184219.P13456743640632868330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184218 (n + 1) : ℚ) / (A028310 (A130703 (n + 1)).toNat : ℚ)

end

end A184219.P13456743640632868330

/-! ## A184219.P18277451891301611366

`(∑[n]-1)*A130543(n)/A028310(A130703(n+1))`
-/

namespace A184219.P18277451891301611366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A130543 n : ℚ) / (A028310 (A130703 (n + 1)).toNat : ℚ)

end

end A184219.P18277451891301611366

/-!
# A184220: a(n) = largest k such that A000290(n+1) = A000290(n) + (A000290(n) mod k), or 0 if no such k exists.

The programs for A184220, the canonical program `A184220.P8376748042134141039` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184220 has offset 1).

The definition of A184220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184220.P8376748042134141039

`(1-and(1, C(3, n)))*(n²-2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A184220

/-- `(1-and(1, C(3, n)))*(n²-2)` -/
def P8376748042134141039.Spec : Prop :=
  ∀ n, P8376748042134141039.a n = A184220 (n + 1)

theorem P8376748042134141039.correct : P8376748042134141039.Spec := by
  intro n
  simp only [A184220, Nat.add_sub_cancel]

end A184220

/-! ## A184220.P13279849181888503361

`(n²-2)%(n^(4%(n+1)))`
-/

namespace A184220.P13279849181888503361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) (n ^ (4 % (n + 1)) : ℤ)

end

end A184220.P13279849181888503361

namespace A184220

/-- `(n²-2)%(n^(4%(n+1)))` -/
def P13279849181888503361.Spec : Prop :=
  ∀ n, P13279849181888503361.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P2386706927272739425

`n-1+a(n-1)+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=14`
-/

namespace A184220.P2386706927272739425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 14] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (n : ℤ))

end

end A184220.P2386706927272739425

namespace A184220

/-- `n-1+a(n-1)+n` -/
def P2386706927272739425.Spec : Prop :=
  ∀ n, P2386706927272739425.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P268737371918613615

`(n²-2)*A130543(n)`
-/

namespace A184220.P268737371918613615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2) * A130543 n

end

end A184220.P268737371918613615

namespace A184220

/-- `(n²-2)*A130543(n)` -/
def P268737371918613615.Spec : Prop :=
  ∀ n, P268737371918613615.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P6977474346205693291

`lcm(2-n², A133150(n+1))`
-/

namespace A184220.P6977474346205693291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (n ^ 2 : ℤ)) (A133150 (n + 1))

end

end A184220.P6977474346205693291

namespace A184220

/-- `lcm(2-n², A133150(n+1))` -/
def P6977474346205693291.Spec : Prop :=
  ∀ n, (P6977474346205693291.a n : ℤ) = A184220 (n + 1)

end A184220

/-! ## A184220.P917561785451993

`A133150(n+1)*A184221(n+1)`
-/

namespace A184220.P917561785451993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133150 (n + 1) * A184221 (n + 1)

end

end A184220.P917561785451993

namespace A184220

/-- `A133150(n+1)*A184221(n+1)` -/
def P917561785451993.Spec : Prop :=
  ∀ n, P917561785451993.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P11808270270993695727

`abs(2-n²)*A057427(A002265(n))`
-/

namespace A184220.P11808270270993695727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n ^ 2 : ℤ)| * A057427 (A002265 n).toNat

end

end A184220.P11808270270993695727

namespace A184220

/-- `abs(2-n²)*A057427(A002265(n))` -/
def P11808270270993695727.Spec : Prop :=
  ∀ n, P11808270270993695727.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P15942148748722837257

`(n²-2)%(A000124(n)-A000330(n))`
-/

namespace A184220.P15942148748722837257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) (A000124 n - A000330 n)

end

end A184220.P15942148748722837257

namespace A184220

/-- `(n²-2)%(A000124(n)-A000330(n))` -/
def P15942148748722837257.Spec : Prop :=
  ∀ n, P15942148748722837257.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P17879004983291790780

`(n²-2)*A165471(A295643(n))`
-/

namespace A184220.P17879004983291790780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2) * A165471 (A295643 n).toNat

end

end A184220.P17879004983291790780

namespace A184220

/-- `(n²-2)*A165471(A295643(n))` -/
def P17879004983291790780.Spec : Prop :=
  ∀ n, P17879004983291790780.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P4656027373961745009

`fp[sqrt(8/(n+1)+n+2)]`
-/

namespace A184220.P4656027373961745009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 / (n + 1 : ℚ) + (n + 2 : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A184220.P4656027373961745009

namespace A184220

/-- `fp[sqrt(8/(n+1)+n+2)]` -/
def P4656027373961745009.Spec : Prop :=
  ∀ n, (P4656027373961745009.a n : ℤ) = A184220 (n + 1)

end A184220

/-! ## A184220.P5934305253284130031

`(n²-2)%A249725(A002061(n))`
-/

namespace A184220.P5934305253284130031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) (A249725 (A002061 n).toNat)

end

end A184220.P5934305253284130031

namespace A184220

/-- `(n²-2)%A249725(A002061(n))` -/
def P5934305253284130031.Spec : Prop :=
  ∀ n, P5934305253284130031.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P4450379084892812965

`A289207((n*A130543(n))²)`
-/

namespace A184220.P4450379084892812965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (((n : ℤ) * A130543 n) ^ 2).toNat

end

end A184220.P4450379084892812965

namespace A184220

/-- `A289207((n*A130543(n))²)` -/
def P4450379084892812965.Spec : Prop :=
  ∀ n, P4450379084892812965.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P2708475142783575819

`A157928(A289207(n))*A289207(n²)`
-/

namespace A184220.P2708475142783575819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A289207 n).toNat * A289207 (n ^ 2)

end

end A184220.P2708475142783575819

namespace A184220

/-- `A157928(A289207(n))*A289207(n²)` -/
def P2708475142783575819.Spec : Prop :=
  ∀ n, P2708475142783575819.a n = A184220 (n + 1)

end A184220

/-!
# A184221: a(n) = A184220(n)/A133150(n) unless A133150(n) = 0 in which case a(n) = 0.

The programs for A184221, there is no canonical definition to state claims against.
-/

/-! ## A184221.P17778284748921383034

`A184220(n+1)%(1-A133150(n+1))`
-/

namespace A184221.P17778284748921383034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184220 (n + 1)) (1 - A133150 (n + 1))

end

end A184221.P17778284748921383034

/-! ## A184221.P16615012143507407643

`A184220(n+1)/A028310(A133150(n+1))`
-/

namespace A184221.P16615012143507407643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184220 (n + 1) : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P16615012143507407643

/-! ## A184221.P8495847705820650838

`(n²-2)*A130543(n)/A028310(A133150(n+1))`
-/

namespace A184221.P8495847705820650838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A130543 n : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P8495847705820650838

/-! ## A184221.P3530621701099636495

`(n²-2)*A165471(A295643(n))/A028310(A133150(n+1))`
-/

namespace A184221.P3530621701099636495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A165471 (A295643 n).toNat : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P3530621701099636495

/-! ## A184221.P13496207953948313161

`(n²-2)%(A000124(n)-A000330(n))/A028310(A133150(n+1))`
-/

namespace A184221.P13496207953948313161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 2) (A000124 n - A000330 n) : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P13496207953948313161

/-! ## A184221.P9905064901621577788

`(n²-2)%A249725(A002061(n))/A028310(A133150(n+1))`
-/

namespace A184221.P9905064901621577788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 2) (A249725 (A002061 n).toNat) : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P9905064901621577788

/-! ## A184221.P17189688251111178961

`(n²-2)*A323022(A110622(n+1))/A028310(A133150(n+1))`
-/

namespace A184221.P17189688251111178961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A323022 (A110622 (n + 1)).toNat : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P17189688251111178961

/-!
# A184222: Half the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184222, there is no canonical definition to state claims against.
-/

/-! ## A184222.P18395838293675643161

`A184231(∑[4*n]+1)`
-/

namespace A184222.P18395838293675643161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184222.P18395838293675643161

/-!
# A184223: Half the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184223, the canonical program `A184223.P12622722372742739083` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184223 has offset 1).

The definition of A184223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184223.P10409614796143427668

`ogf((15+12x-36x^2)/(1-3x-3x^2+6x^3))`
-/

namespace A184223.P10409614796143427668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 12, -36] [1, -3, -3, 6] n

end

end A184223.P10409614796143427668

namespace A184223

/-- `ogf((15+12x-36x^2)/(1-3x-3x^2+6x^3))` -/
def P10409614796143427668.Spec : Prop :=
  ∀ n, P10409614796143427668.a n = A184223 (n + 1)

end A184223

/-! ## A184223.P12622722372742739083

`3*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=15, a(1)=57, a(2)=180`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A184223

/-- `3*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P12622722372742739083.Spec : Prop :=
  ∀ n, P12622722372742739083.a n = A184223 (n + 1)

theorem P12622722372742739083.correct : P12622722372742739083.Spec := by
  intro n
  simp only [A184223, Nat.add_sub_cancel]

end A184223

/-! ## A184223.P7149063899101657267

`A184231(∑[n]+1)`
-/

namespace A184223.P7149063899101657267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184223.P7149063899101657267

namespace A184223

/-- `A184231(∑[n]+1)` -/
def P7149063899101657267.Spec : Prop :=
  ∀ n, P7149063899101657267.a n = A184223 (n + 1)

end A184223

/-! ## A184223.P17616367565252388056

`record[A010054(n)*A184231(n+1)]`
-/

namespace A184223.P17616367565252388056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184223.P17616367565252388056

namespace A184223

/-- `record[A010054(n)*A184231(n+1)]` -/
def P17616367565252388056.Spec : Prop :=
  ∀ n, P17616367565252388056.a n = A184223 (n + 1)

end A184223

/-!
# A184224: Half the number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184224, the canonical program `A184224.P12797654631212748783` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184224 has offset 1).

The definition of A184224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184224.P12797654631212748783

`ogf((57+69x-547x^2+250x^3+324x^4-168x^5)/(1-6x-7x^2+42x^3-17x^4-24x^5+12x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A184224

/-- `ogf((57+69x-547x^2+250x^3+324x^4-168x^5)/(1-6x-7x^2+42x^3-17x^4-24x^5+12x^6))` -/
def P12797654631212748783.Spec : Prop :=
  ∀ n, P12797654631212748783.a n = A184224 (n + 1)

theorem P12797654631212748783.correct : P12797654631212748783.Spec := by
  intro n
  simp only [A184224, Nat.add_sub_cancel]

end A184224

/-! ## A184224.P13782752469273180774

`A184231(∑[n+1]+2)`
-/

namespace A184224.P13782752469273180774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184224.P13782752469273180774

namespace A184224

/-- `A184231(∑[n+1]+2)` -/
def P13782752469273180774.Spec : Prop :=
  ∀ n, P13782752469273180774.a n = A184224 (n + 1)

end A184224

/-! ## A184224.P11664876022594382167

`record[A010054(n)*A184231(n+2)]`
-/

namespace A184224.P11664876022594382167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184224.P11664876022594382167

namespace A184224

/-- `record[A010054(n)*A184231(n+2)]` -/
def P11664876022594382167.Spec : Prop :=
  ∀ n, P11664876022594382167.a n = A184224 (n + 1)

end A184224

/-! ## A184224.P4799138401285317592

`record[root(A184231(n+2), A074909(n))]`
-/

namespace A184224.P4799138401285317592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184231 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184224.P4799138401285317592

namespace A184224

/-- `record[root(A184231(n+2), A074909(n))]` -/
def P4799138401285317592.Spec : Prop :=
  ∀ n, P4799138401285317592.a n = (A184224 (n + 1) : ℝ)

end A184224

/-! ## A184224.P7762555249959557292

`record[gcd(A002262(n), A184231(n+2))]`
-/

namespace A184224.P7762555249959557292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184231 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184224.P7762555249959557292

namespace A184224

/-- `record[gcd(A002262(n), A184231(n+2))]` -/
def P7762555249959557292.Spec : Prop :=
  ∀ n, (P7762555249959557292.a n : ℤ) = A184224 (n + 1)

end A184224

/-!
# A184225: Half the number of (n+1)X4 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184225, there is no canonical definition to state claims against.
-/

/-! ## A184225.P18166400848078586493

`A184231(∑[n+2]+4)`
-/

namespace A184225.P18166400848078586493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184225.P18166400848078586493

/-!
# A184226: Half the number of (n+1)X5 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184226, there is no canonical definition to state claims against.
-/

/-! ## A184226.P11763257313574288249

`A184231(A374004(n+1))`
-/

namespace A184226.P11763257313574288249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374004 (n + 1)).toNat

end

end A184226.P11763257313574288249

/-! ## A184226.P10234056009063235338

`A184231(A141214(n+1))`
-/

namespace A184226.P10234056009063235338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A141214 (n + 1)).toNat

end

end A184226.P10234056009063235338

/-!
# A184227: Half the number of (n+1) X 6 0..3 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184227, there is no canonical definition to state claims against.
-/

/-! ## A184227.P7440701507912072951

`A184231(A374005(n+1))`
-/

namespace A184227.P7440701507912072951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374005 (n + 1)).toNat

end

end A184227.P7440701507912072951

/-! ## A184227.P11333777321581428843

`A184231(∑[n+5]+6)`
-/

namespace A184227.P11333777321581428843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184227.P11333777321581428843

/-!
# A184228: Half the number of (n+1)X7 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184228, there is no canonical definition to state claims against.
-/

/-! ## A184228.P3586138793679225772

`A184231(A374007(n+1))`
-/

namespace A184228.P3586138793679225772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374007 (n + 1)).toNat

end

end A184228.P3586138793679225772

/-!
# A184229: Half the number of (n+1)X8 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184229, there is no canonical definition to state claims against.
-/

/-! ## A184229.P10594725205724600754

`A184231(A374008(n+1))`
-/

namespace A184229.P10594725205724600754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374008 (n + 1)).toNat

end

end A184229.P10594725205724600754

/-!
# A184230: Half the number of (n+1)X9 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184230, there is no canonical definition to state claims against.
-/

/-! ## A184230.P17838756654832748357

`A184231(A374009(n+1))`
-/

namespace A184230.P17838756654832748357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374009 (n + 1)).toNat

end

end A184230.P17838756654832748357

/-!
# A184232: Number of strings of numbers x(i=1..n) in 0..n with sum i^2*x(i)^2 equal to n^4.

The programs for A184232, there is no canonical definition to state claims against.
-/

/-! ## A184232.P1507542557025077818

`A184240(∑[4*n]+1)`
-/

namespace A184232.P1507542557025077818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184232.P1507542557025077818

/-!
# A184233: Number of strings of numbers x(i=1..n) in 0..2 with sum i^2*x(i)^2 equal to n^2*4.

The programs for A184233, there is no canonical definition to state claims against.
-/

/-! ## A184233.P12406843421476867226

`A184240(∑[n+2])`
-/

namespace A184233.P12406843421476867226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184233.P12406843421476867226

/-! ## A184233.P260860009387251121

`A358066(A248876(n))`
-/

namespace A184233.P260860009387251121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358066 (A248876 n).toNat

end

end A184233.P260860009387251121

/-!
# A184234: Number of strings of numbers x(i=1..n) in 0..3 with sum i^2*x(i)^2 equal to n^2*9.

The programs for A184234, there is no canonical definition to state claims against.
-/

/-! ## A184234.P8989273828690681823

`A184240(∑[n+3]+1)`
-/

namespace A184234.P8989273828690681823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184234.P8989273828690681823

/-!
# A184235: Number of strings of numbers x(i=1..n) in 0..4 with sum i^2*x(i)^2 equal to n^2*16.

The programs for A184235, there is no canonical definition to state claims against.
-/

/-! ## A184235.P16171778175432228264

`A184240(∑[n+4]+3)`
-/

namespace A184235.P16171778175432228264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184235.P16171778175432228264

/-!
# A184236: Number of strings of numbers x(i=1..n) in 0..5 with sum i^2*x(i)^2 equal to n^2*25.

The programs for A184236, there is no canonical definition to state claims against.
-/

/-! ## A184236.P3439755170195271312

`A184240(Δ[A264443(n)])`
-/

namespace A184236.P3439755170195271312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (f1 (n + 1) - f1 n).toNat

end

end A184236.P3439755170195271312

/-!
# A184237: Number of strings of numbers x(i=1..n) in 0..6 with sum i^2*x(i)^2 equal to n^2*36.

The programs for A184237, there is no canonical definition to state claims against.
-/

/-! ## A184237.P7760686241229487559

`A184240(A052905(n+3))`
-/

namespace A184237.P7760686241229487559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A052905 (n + 3)).toNat

end

end A184237.P7760686241229487559

/-!
# A184238: Number of strings of numbers x(i=1..n) in 0..7 with sum i^2*x(i)^2 equal to n^2*49.

The programs for A184238, there is no canonical definition to state claims against.
-/

/-! ## A184238.P17317888210403755722

`A184240(eq[4, A219347(n)])`
-/

namespace A184238.P17317888210403755722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184238.P17317888210403755722

/-!
# A184239: Number of strings of numbers x(i=1..n) in 0..8 with sum i^2*x(i)^2 equal to n^2*64.

The programs for A184239, there is no canonical definition to state claims against.
-/

/-! ## A184239.P1377752717505398898

`A184240(2*n+C(n+7, 2)+8)`
-/

namespace A184239.P1377752717505398898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (2 * n + (Nat.choose (n + 7) 2 + 8))

end

end A184239.P1377752717505398898

/-!
# A184241: Number of strings of numbers x(i=1..3) in 0..n with sum i^2*x(i)^2 equal to n^2*9.

The programs for A184241, there is no canonical definition to state claims against.
-/

/-! ## A184241.P7324020943654592492

`A184240(∑[n+2]+4)`
-/

namespace A184241.P7324020943654592492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184241.P7324020943654592492

/-!
# A184242: Number of strings of numbers x(i=1..4) in 0..n with sum i^2*x(i)^2 equal to n^2*16.

The programs for A184242, there is no canonical definition to state claims against.
-/

/-! ## A184242.P16295101724319821634

`A184240(∑[n+3]+7)`
-/

namespace A184242.P16295101724319821634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184242.P16295101724319821634

/-!
# A184243: Number of strings of numbers x(i=1..5) in 0..n with sum i^2*x(i)^2 equal to n^2*25.

The programs for A184243, there is no canonical definition to state claims against.
-/

/-! ## A184243.P2482663440153963987

`A184240(C(n+6, 2)-n)`
-/

namespace A184243.P2482663440153963987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (Nat.choose (n + 6) 2 - n)

end

end A184243.P2482663440153963987

/-!
# A184244: Number of strings of numbers x(i=1..6) in 0..n with sum i^2*x(i)^2 equal to n^2*36.

The programs for A184244, there is no canonical definition to state claims against.
-/

/-! ## A184244.P15128156252451397918

`A184240(∑[n+5]+16)`
-/

namespace A184244.P15128156252451397918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A184244.P15128156252451397918

/-!
# A184245: Number of strings of numbers x(i=1..7) in 0..n with sum i^2*x(i)^2 equal to n^2*49.

The programs for A184245, there is no canonical definition to state claims against.
-/

/-! ## A184245.P12646232450107390936

`A184240(A302537(n)+27)`
-/

namespace A184245.P12646232450107390936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A302537 n + 27).toNat

end

end A184245.P12646232450107390936

/-!
# A184246: Number of strings of numbers x(i=1..8) in 0..n with sum i^2*x(i)^2 equal to n^2*64.

The programs for A184246, there is no canonical definition to state claims against.
-/

/-! ## A184246.P11096210080810125116

`record[A184240(A008795(n)+8)]`
-/

namespace A184246.P11096210080810125116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A008795 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184246.P11096210080810125116

/-! ## A184246.P14012087065441432787

`A184240(A167614(n+6)+5)`
-/

namespace A184246.P14012087065441432787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A167614 (n + 6) + 5).toNat

end

end A184246.P14012087065441432787

/-!
# A184247: Primes, q, such that for three consecutive primes, p, q & r, with p<q<r, (q - p)/(r - q) is an integer.

The programs for A184247, the canonical program `A184247.P6576265363423604161` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184247 has offset 1).

The definition of A184247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184247.P4986820661384171567

`∩[A046869(n+1), A239879(n+1)]`
-/

namespace A184247.P4986820661384171567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184247.P4986820661384171567

namespace A184247

/-- `∩[A046869(n+1), A239879(n+1)]` -/
def P4986820661384171567.Spec : Prop :=
  ∀ n, (P4986820661384171567.a n : ℤ) = A184247 (n + 1)

end A184247

/-! ## A184247.P6576265363423604161

`A000040(eq[1, A272863(1+n)]+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A184247

/-- `A000040(eq[1, A272863(1+n)]+2)` -/
def P6576265363423604161.Spec : Prop :=
  ∀ n, P6576265363423604161.a n = A184247 (n + 1)

theorem P6576265363423604161.correct : P6576265363423604161.Spec := by
  intro n
  simp only [A184247, Nat.add_sub_cancel]

end A184247

/-! ## A184247.P12462300621693898860

`p?[A272863(n+1)+A006093(n+2)]`
-/

namespace A184247.P12462300621693898860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272863 (n + 1) + A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P12462300621693898860

namespace A184247

/-- `p?[A272863(n+1)+A006093(n+2)]` -/
def P12462300621693898860.Spec : Prop :=
  ∀ n, P12462300621693898860.a n = A184247 (n + 1)

end A184247

/-! ## A184247.P2134022973407949724

`p?[A045344(n+1)*A272863(n+1)]`
-/

namespace A184247.P2134022973407949724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P2134022973407949724

namespace A184247

/-- `p?[A045344(n+1)*A272863(n+1)]` -/
def P2134022973407949724.Spec : Prop :=
  ∀ n, P2134022973407949724.a n = A184247 (n + 1)

end A184247

/-! ## A184247.P4918078981453581586

`p?[A065091(n+1)*A272863(n+1)]`
-/

namespace A184247.P4918078981453581586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P4918078981453581586

namespace A184247

/-- `p?[A065091(n+1)*A272863(n+1)]` -/
def P4918078981453581586.Spec : Prop :=
  ∀ n, P4918078981453581586.a n = A184247 (n + 1)

end A184247

/-! ## A184247.P90638041153021981

`p?[A000040(n+2)*A272863(n+1)]`
-/

namespace A184247.P90638041153021981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P90638041153021981

namespace A184247

/-- `p?[A000040(n+2)*A272863(n+1)]` -/
def P90638041153021981.Spec : Prop :=
  ∀ n, P90638041153021981.a n = A184247 (n + 1)

end A184247

/-!
# A184248: Primes, q, such that for three consecutive primes, p, q & r, with p<q<r, (r - q)/(q - p) is an integer.

The programs for A184248, the canonical program `A184248.P3384310769192450285` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184248 has offset 1).

The definition of A184248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184248.P3384310769192450285

`p?[n+1-A166597(n+1)%A166597(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184248

/-- `p?[n+1-A166597(n+1)%A166597(n)]` -/
def P3384310769192450285.Spec : Prop :=
  ∀ n, P3384310769192450285.a n = A184248 (n + 1)

theorem P3384310769192450285.correct : P3384310769192450285.Spec := by
  intro n
  simp only [A184248, Nat.add_sub_cancel]

end A184248

/-! ## A184248.P4917174221449288758

`A000040(eq[1, A274225(n+1)]+2)`
-/

namespace A184248.P4917174221449288758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A184248.P4917174221449288758

namespace A184248

/-- `A000040(eq[1, A274225(n+1)]+2)` -/
def P4917174221449288758.Spec : Prop :=
  ∀ n, P4917174221449288758.a n = A184248 (n + 1)

end A184248

/-! ## A184248.P5181435675253733759

`p?[A065091(n+1)*A274225(n+1)]`
-/

namespace A184248.P5181435675253733759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P5181435675253733759

namespace A184248

/-- `p?[A065091(n+1)*A274225(n+1)]` -/
def P5181435675253733759.Spec : Prop :=
  ∀ n, P5181435675253733759.a n = A184248 (n + 1)

end A184248

/-! ## A184248.P6980395959932549041

`p?[A000040(n+2)*A274225(n+1)]`
-/

namespace A184248.P6980395959932549041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P6980395959932549041

namespace A184248

/-- `p?[A000040(n+2)*A274225(n+1)]` -/
def P6980395959932549041.Spec : Prop :=
  ∀ n, P6980395959932549041.a n = A184248 (n + 1)

end A184248

/-! ## A184248.P2368106415846010584

`∩[A155189(n+1), A239879(n+1)]`
-/

namespace A184248.P2368106415846010584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184248.P2368106415846010584

namespace A184248

/-- `∩[A155189(n+1), A239879(n+1)]` -/
def P2368106415846010584.Spec : Prop :=
  ∀ n, (P2368106415846010584.a n : ℤ) = A184248 (n + 1)

end A184248

/-!
# A184249: Number of strings of numbers x(i=1..n) in 0..n with sum i^3*x(i) equal to n^4.

The programs for A184249, there is no canonical definition to state claims against.
-/

/-! ## A184249.P9612795689856060350

`A184257(∑[4*n]+1)`
-/

namespace A184249.P9612795689856060350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184249.P9612795689856060350

/-!
# A184250: Number of strings of numbers x(i=1..n) in 0..2 with sum i^3*x(i) equal to n^3*2.

The programs for A184250, there is no canonical definition to state claims against.
-/

/-! ## A184250.P4143182815224177005

`A184257(∑[2+n])`
-/

namespace A184250.P4143182815224177005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184250.P4143182815224177005

/-!
# A184251: Number of strings of numbers x(i=1..n) in 0..3 with sum i^3*x(i) equal to n^3*3.

The programs for A184251, there is no canonical definition to state claims against.
-/

/-! ## A184251.P10580705689702231478

`A184257(∑[n+3]+1)`
-/

namespace A184251.P10580705689702231478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184251.P10580705689702231478

/-!
# A184252: Number of strings of numbers x(i=1..n) in 0..4 with sum i^3*x(i) equal to n^3*4.

The programs for A184252, there is no canonical definition to state claims against.
-/

/-! ## A184252.P1054737408566680161

`A184257(∑[n+4]+3)`
-/

namespace A184252.P1054737408566680161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184252.P1054737408566680161

/-!
# A184253: Number of strings of numbers x(i=1..n) in 0..5 with sum i^3*x(i) equal to n^3*5.

The programs for A184253, there is no canonical definition to state claims against.
-/

/-! ## A184253.P17577593076230290477

`A184257(A046691(n+3))`
-/

namespace A184253.P17577593076230290477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A046691 (n + 3)).toNat

end

end A184253.P17577593076230290477

/-! ## A184253.P3952337859907105880

`A121528(A148044(n))`
-/

namespace A184253.P3952337859907105880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121528 (A148044 n).toNat

end

end A184253.P3952337859907105880

/-!
# A184254: Number of strings of numbers x(i=1..n) in 0..6 with sum i^3*x(i) equal to n^3*6.

The programs for A184254, there is no canonical definition to state claims against.
-/

/-! ## A184254.P16530094522984091685

`A184257(A052905(n+3))`
-/

namespace A184254.P16530094522984091685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A052905 (n + 3)).toNat

end

end A184254.P16530094522984091685

/-!
# A184255: Number of strings of numbers x(i=1..n) in 0..7 with sum i^3*x(i) equal to n^3*7.

The programs for A184255, there is no canonical definition to state claims against.
-/

/-! ## A184255.P12414475585132235659

`A184257(Δ[(n+8)²]+∑[n+5])`
-/

namespace A184255.P12414475585132235659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A184255.P12414475585132235659

/-! ## A184255.P11288682199140164801

`A276797(A063520(n+1)+A008485(n))`
-/

namespace A184255.P11288682199140164801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A063520 (n + 1) + A008485 n).toNat

end

end A184255.P11288682199140164801

/-!
# A184256: Number of strings of numbers x(i=1..n) in 0..8 with sum i^3*x(i) equal to n^3*8.

The programs for A184256, there is no canonical definition to state claims against.
-/

/-! ## A184256.P495125583805344444

`A184257(eq[5, A219347(n)])`
-/

namespace A184256.P495125583805344444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184256.P495125583805344444

/-! ## A184256.P6188157934526292238

`record[A184257(A155212(n)+1)]`
-/

namespace A184256.P6188157934526292238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184256.P6188157934526292238

/-! ## A184256.P16206228146278228804

`record[A184257(A056000(n)+3)]`
-/

namespace A184256.P16206228146278228804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A056000 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184256.P16206228146278228804

/-! ## A184256.P5623870241284418120

`record[A184257(A141214(n)+n)]`
-/

namespace A184256.P5623870241284418120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A141214 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184256.P5623870241284418120

/-!
# A184257: T(n,k)=Number of strings of numbers x(i=1..n) in 0..k with sum i^3*x(i) equal to n^3*k.

The programs for A184257, there is no canonical definition to state claims against.
-/

/-! ## A184257.P5997358206923430201

`A167965(A020935(n+2))`
-/

namespace A184257.P5997358206923430201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A020935 (n + 2)).toNat

end

end A184257.P5997358206923430201

/-! ## A184257.P12168492470067935308

`A296133(A210561(n+1)+1)`
-/

namespace A184257.P12168492470067935308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (A210561 (n + 1) + 1).toNat

end

end A184257.P12168492470067935308

/-! ## A184257.P6429361211997194069

`gcd(A117546(A333824(n+1)), A340858(n+5))`
-/

namespace A184257.P6429361211997194069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117546 (A333824 (n + 1)).toNat) (A340858 (n + 5))

end

end A184257.P6429361211997194069

/-!
# A184258: Number of strings of numbers x(i=1..3) in 0..n with sum i^3*x(i) equal to 27*n.

The programs for A184258, there is no canonical definition to state claims against.
-/

/-! ## A184258.P7807741431328961768

`A184257(∑[2+n]+4)`
-/

namespace A184258.P7807741431328961768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184258.P7807741431328961768

/-!
# A184259: Number of strings of numbers x(i=1..4) in 0..n with sum i^3*x(i) equal to 64*n.

The programs for A184259, there is no canonical definition to state claims against.
-/

/-! ## A184259.P18422261282342628884

`A184257(∑[n+3]+7)`
-/

namespace A184259.P18422261282342628884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184259.P18422261282342628884

/-!
# A184260: Number of strings of numbers x(i=1..5) in 0..n with sum i^3*x(i) equal to 125*n.

The programs for A184260, there is no canonical definition to state claims against.
-/

/-! ## A184260.P12793215131544427323

`A184257(A155212(n)+13)`
-/

namespace A184260.P12793215131544427323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A155212 n + 13).toNat

end

end A184260.P12793215131544427323

/-!
# A184261: Number of strings of numbers x(i=1..6) in 0..n with sum i^3*x(i) equal to 216*n.

The programs for A184261, there is no canonical definition to state claims against.
-/

/-! ## A184261.P15937292703507769740

`A184257(∑[n+5]+16)`
-/

namespace A184261.P15937292703507769740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A184261.P15937292703507769740

/-!
# A184262: Number of strings of numbers x(i=1..7) in 0..n with sum i^3*x(i) equal to 343*n.

The programs for A184262, there is no canonical definition to state claims against.
-/

/-! ## A184262.P9431307499576410808

`A184257(A056119(n)+28)`
-/

namespace A184262.P9431307499576410808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A056119 n + 28).toNat

end

end A184262.P9431307499576410808

/-!
# A184263: Number of strings of numbers x(i=1..8) in 0..n with sum i^3*x(i) equal to 512*n.

The programs for A184263, there is no canonical definition to state claims against.
-/

/-! ## A184263.P5586455630237711429

`A184257(A167614(n+6)+5)`
-/

namespace A184263.P5586455630237711429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A167614 (n + 6) + 5).toNat

end

end A184263.P5586455630237711429

/-!
# A184264: Number of distinct n X 2 toroidal binary arrays.

The programs for A184264, there is no canonical definition to state claims against.
-/

/-! ## A184264.P7463427908865605218

`A074763(2*(n+1))+A000031(n+1)`
-/

namespace A184264.P7463427908865605218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074763 (2 * (n + 1)) + A000031 (n + 1)

end

end A184264.P7463427908865605218

/-! ## A184264.P12240625346319925460

`A000031(n+1)+A001868(n+1)-A000031(2*(n+1))`
-/

namespace A184264.P12240625346319925460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + (A001868 (n + 1) - A000031 (2 * (n + 1)))

end

end A184264.P12240625346319925460

/-! ## A184264.P9681340710770138104

`A184271(∑[n+1]+2)`
-/

namespace A184264.P9681340710770138104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184264.P9681340710770138104

/-! ## A184264.P1770789807139574019

`record[A010054(n)*A184271(n+2)]`
-/

namespace A184264.P1770789807139574019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184264.P1770789807139574019

/-! ## A184264.P18074106458625282611

`record[root(A184271(n+2), A059268(n))]`
-/

namespace A184264.P18074106458625282611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184271 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184264.P18074106458625282611

/-!
# A184265: Number of distinct n X 3 toroidal binary arrays.

The programs for A184265, there is no canonical definition to state claims against.
-/

/-! ## A184265.P14598777414487303909

`A184271(∑[n+2]+4)`
-/

namespace A184265.P14598777414487303909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184265.P14598777414487303909

/-!
# A184266: Number of distinct n X 4 toroidal binary arrays.

The programs for A184266, there is no canonical definition to state claims against.
-/

/-! ## A184266.P3700908189616469858

`A184271(A052905(n)+9)`
-/

namespace A184266.P3700908189616469858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A052905 n + 9).toNat

end

end A184266.P3700908189616469858

/-! ## A184266.P3507465048011201575

`A184271(A374004(n+1))`
-/

namespace A184266.P3507465048011201575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374004 (n + 1)).toNat

end

end A184266.P3507465048011201575

/-!
# A184267: Number of distinct n X 5 toroidal binary arrays.

The programs for A184267, there is no canonical definition to state claims against.
-/

/-! ## A184267.P16926241737500351432

`A184271(A167499(n+3))`
-/

namespace A184267.P16926241737500351432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A167499 (n + 3)).toNat

end

end A184267.P16926241737500351432

/-! ## A184267.P3115306353546849825

`A184271(A374005(n+1))`
-/

namespace A184267.P3115306353546849825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374005 (n + 1)).toNat

end

end A184267.P3115306353546849825

/-!
# A184268: Number of distinct n X 6 toroidal binary arrays.

The programs for A184268, there is no canonical definition to state claims against.
-/

/-! ## A184268.P6642457838986828387

`A184271(A056115(n)+21)`
-/

namespace A184268.P6642457838986828387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A056115 n + 21).toNat

end

end A184268.P6642457838986828387

/-! ## A184268.P159359100420192555

`A184271(A374007(n+1))`
-/

namespace A184268.P159359100420192555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374007 (n + 1)).toNat

end

end A184268.P159359100420192555

/-!
# A184269: Number of distinct n X 7 toroidal binary arrays.

The programs for A184269, there is no canonical definition to state claims against.
-/

/-! ## A184269.P7486014099800767781

`A184271(A056119(n)+28)`
-/

namespace A184269.P7486014099800767781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A056119 n + 28).toNat

end

end A184269.P7486014099800767781

/-! ## A184269.P6042542509438160013

`A184271(A374008(n+1))`
-/

namespace A184269.P6042542509438160013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374008 (n + 1)).toNat

end

end A184269.P6042542509438160013

/-!
# A184270: Number of distinct n X 8 toroidal binary arrays.

The programs for A184270, there is no canonical definition to state claims against.
-/

/-! ## A184270.P7235772824469152971

`A184271(eq[13, A066657(n)])`
-/

namespace A184270.P7235772824469152971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184270.P7235772824469152971

/-! ## A184270.P4309939181312034592

`A184271(A374009(n+1))`
-/

namespace A184270.P4309939181312034592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374009 (n + 1)).toNat

end

end A184270.P4309939181312034592

/-!
# A184271: Table read by antidiagonals: T(n,k) = number of distinct n X k toroidal binary arrays (n >= 1, k >= 1).

The programs for A184271, there is no canonical definition to state claims against.
-/

/-! ## A184271.P8709378867142812163

`A368305(n+1)+A089013(A073090(n))`
-/

namespace A184271.P8709378867142812163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368305 (n + 1) + A089013 (A073090 n).toNat

end

end A184271.P8709378867142812163

/-! ## A184271.P14043353084881466362

`A122260(A222188(n+1)%A113412(n))`
-/

namespace A184271.P14043353084881466362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (Int.tmod (A222188 (n + 1)) (A113412 n)).toNat

end

end A184271.P14043353084881466362

/-! ## A184271.P4629558351245997835

`A368305(n+1)+A318950(A001597(n+1))`
-/

namespace A184271.P4629558351245997835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368305 (n + 1) + A318950 (A001597 (n + 1)).toNat

end

end A184271.P4629558351245997835

/-! ## A184271.P9964196077595679751

`A342441(A196696(n+1))+A336005(n+1)`
-/

namespace A184271.P9964196077595679751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (A196696 (n + 1)).toNat + A336005 (n + 1)

end

end A184271.P9964196077595679751

/-!
# A184272: Number of distinct n X n toroidal 0..3 arrays.

The programs for A184272, there is no canonical definition to state claims against.
-/

/-! ## A184272.P893339096353089290

`A184277((n+1)²+n²)`
-/

namespace A184272.P893339096353089290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 ((n + 1) ^ 2 + n ^ 2)

end

end A184272.P893339096353089290

/-! ## A184272.P3384881787910319087

`record[gcd(A114327(n), A184277(n+1))]`
-/

namespace A184272.P3384881787910319087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A184277 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184272.P3384881787910319087

/-!
# A184273: Number of distinct n X 2 toroidal 0..3 arrays.

The programs for A184273, there is no canonical definition to state claims against.
-/

/-! ## A184273.P11327095402930721173

`A001868(n+1)-A343466(2*(n+1))`
-/

namespace A184273.P11327095402930721173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (n + 1) - A343466 (2 * (n + 1))

end

end A184273.P11327095402930721173

/-! ## A184273.P9918626412663107975

`A184277(∑[n+1]+2)`
-/

namespace A184273.P9918626412663107975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184273.P9918626412663107975

/-! ## A184273.P17085905414144099847

`record[A010054(n)*A184277(n+2)]`
-/

namespace A184273.P17085905414144099847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184273.P17085905414144099847

/-! ## A184273.P6935176415812360176

`record[root(A184277(n+2), A328807(n))]`
-/

namespace A184273.P6935176415812360176
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184277 (n + 2) : ℝ) ^ (1 / (A328807 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184273.P6935176415812360176

/-! ## A184273.P6868656903697420037

`record[A184277(A198453(n+1))]`
-/

namespace A184273.P6868656903697420037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184273.P6868656903697420037

/-!
# A184274: Number of distinct n X 3 toroidal 0..3 arrays.

The programs for A184274, there is no canonical definition to state claims against.
-/

/-! ## A184274.P13274523612858352438

`A184277(∑[n+2]+4)`
-/

namespace A184274.P13274523612858352438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184274.P13274523612858352438

/-!
# A184275: Number of distinct n X 4 toroidal 0..3 arrays.

The programs for A184275, there is no canonical definition to state claims against.
-/

/-! ## A184275.P14803841104585983788

`A184277(A141214(n)+7)`
-/

namespace A184275.P14803841104585983788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A141214 n + 7).toNat

end

end A184275.P14803841104585983788

/-!
# A184276: Number of distinct n X 5 toroidal 0..3 arrays.

The programs for A184276, there is no canonical definition to state claims against.
-/

/-! ## A184276.P14924784179962576112

`A184277(Δ[A264443(n)])`
-/

namespace A184276.P14924784179962576112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (f1 (n + 1) - f1 n).toNat

end

end A184276.P14924784179962576112

/-!
# A184278: Number of distinct n X n toroidal 0..2 arrays.

The programs for A184278, there is no canonical definition to state claims against.
-/

/-! ## A184278.P1095034402337572541

`A184284((n+1)²+n²)`
-/

namespace A184278.P1095034402337572541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 ((n + 1) ^ 2 + n ^ 2)

end

end A184278.P1095034402337572541

/-! ## A184278.P16806948089318576923

`record[A003982(n)*A184284(n+1)]`
-/

namespace A184278.P16806948089318576923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184278.P16806948089318576923

/-! ## A184278.P14217891656552841393

`record[gcd(A114327(n), A184284(n+1))]`
-/

namespace A184278.P14217891656552841393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A184284 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184278.P14217891656552841393

/-!
# A184279: Number of distinct n X 2 toroidal 0..2 arrays.

The programs for A184279, there is no canonical definition to state claims against.
-/

/-! ## A184279.P5437502062637858372

`A001867(n+1)-A343465(2*(n+1))`
-/

namespace A184279.P5437502062637858372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (n + 1) - A343465 (2 * (n + 1))

end

end A184279.P5437502062637858372

/-! ## A184279.P12069684824298357066

`A184284(∑[n+1]+2)`
-/

namespace A184279.P12069684824298357066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184279.P12069684824298357066

/-! ## A184279.P16937649754689827196

`record[A010054(n)*A184284(n+2)]`
-/

namespace A184279.P16937649754689827196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184279.P16937649754689827196

/-! ## A184279.P1567962560747328090

`record[root(A184284(n+2), A059268(n))]`
-/

namespace A184279.P1567962560747328090
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184284 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184279.P1567962560747328090

/-! ## A184279.P14891978064137705448

`record[A184284(Δ[A003453(n+5)])]`
-/

namespace A184279.P14891978064137705448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184279.P14891978064137705448

/-!
# A184280: Number of distinct n X 3 toroidal 0..2 arrays.

The programs for A184280, there is no canonical definition to state claims against.
-/

/-! ## A184280.P16883741244212833569

`A184284(∑[n+2]+4)`
-/

namespace A184280.P16883741244212833569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184280.P16883741244212833569

/-!
# A184281: Number of distinct n X 4 toroidal 0..2 arrays.

The programs for A184281, there is no canonical definition to state claims against.
-/

/-! ## A184281.P11766116427812898095

`A184284(A374004(n+1))`
-/

namespace A184281.P11766116427812898095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A374004 (n + 1)).toNat

end

end A184281.P11766116427812898095

/-! ## A184281.P16411457932429244886

`A184284(A141214(n+1))`
-/

namespace A184281.P16411457932429244886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A141214 (n + 1)).toNat

end

end A184281.P16411457932429244886

/-!
# A184282: Number of distinct n X 5 toroidal 0..2 arrays.

The programs for A184282, there is no canonical definition to state claims against.
-/

/-! ## A184282.P7430579118171991448

`A184284(A374005(n+1))`
-/

namespace A184282.P7430579118171991448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A374005 (n + 1)).toNat

end

end A184282.P7430579118171991448

/-!
# A184283: Number of distinct n X 6 toroidal 0..2 arrays.

The programs for A184283, there is no canonical definition to state claims against.
-/

/-! ## A184283.P7911502063686517822

`A184284(A374007(n+1))`
-/

namespace A184283.P7911502063686517822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A374007 (n + 1)).toNat

end

end A184283.P7911502063686517822

/-!
# A184285: Number of distinct n X 2 toroidal 0..4 arrays.

The programs for A184285, there is no canonical definition to state claims against.
-/

/-! ## A184285.P5264560915749182712

`A001869(n+1)-A343467(2*(n+1))`
-/

namespace A184285.P5264560915749182712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 (n + 1) - A343467 (2 * (n + 1))

end

end A184285.P5264560915749182712

/-! ## A184285.P11780015892776939877

`A001869(n+1)+abs(A343467(2*n+2))`
-/

namespace A184285.P11780015892776939877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 (n + 1) + |A343467 (2 * n + 2)|

end

end A184285.P11780015892776939877

/-! ## A184285.P10897081325341438440

`A184288(∑[n+1]+2)`
-/

namespace A184285.P10897081325341438440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184285.P10897081325341438440

/-! ## A184285.P11962045120931772256

`record[A010054(n)*A184288(n+2)]`
-/

namespace A184285.P11962045120931772256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184285.P11962045120931772256

/-! ## A184285.P4314272044478527144

`record[A184288(Δ[A003453(n+5)])]`
-/

namespace A184285.P4314272044478527144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184285.P4314272044478527144

/-!
# A184286: Number of distinct n X 3 toroidal 0..4 arrays.

The programs for A184286, there is no canonical definition to state claims against.
-/

/-! ## A184286.P9507964448987070757

`A184288(∑[n+2]+4)`
-/

namespace A184286.P9507964448987070757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184286.P9507964448987070757

/-! ## A184286.P18191680803685431404

`record[A184288(A008795(n)+3)]`
-/

namespace A184286.P18191680803685431404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184286.P18191680803685431404

/-!
# A184287: Number of distinct n X 4 toroidal 0..4 arrays.

The programs for A184287, there is no canonical definition to state claims against.
-/

/-! ## A184287.P13048144760613709553

`A184288(A141214(n)+7)`
-/

namespace A184287.P13048144760613709553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A141214 n + 7).toNat

end

end A184287.P13048144760613709553

/-! ## A184287.P13661386544643483167

`A184288(A141214(n+1))`
-/

namespace A184287.P13661386544643483167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A141214 (n + 1)).toNat

end

end A184287.P13661386544643483167

/-!
# A184288: Table read by antidiagonals: T(n,k) = number of distinct n X k toroidal 0..4 arrays.

The programs for A184288, there is no canonical definition to state claims against.
-/

/-! ## A184288.P17174779341860870155

`5*A102471(A240347(n+1))`
-/

namespace A184288.P17174779341860870155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A102471 (A240347 (n + 1)).toNat

end

end A184288.P17174779341860870155

/-! ## A184288.P14137865491904806002

`A158284(or(A011940(n), A208796(n+1)))`
-/

namespace A184288.P14137865491904806002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158284 (Int.lor (A011940 n) (A208796 (n + 1))).toNat

end

end A184288.P14137865491904806002

/-!
# A184289: Number of distinct n X 2 toroidal 0..5 arrays.

The programs for A184289, there is no canonical definition to state claims against.
-/

/-! ## A184289.P16577409619373412836

`A184291(∑[n+1]+2)`
-/

namespace A184289.P16577409619373412836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184291 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184289.P16577409619373412836

/-! ## A184289.P8144477265906409677

`record[A010054(n)*A184291(n+2)]`
-/

namespace A184289.P8144477265906409677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184289.P8144477265906409677

/-! ## A184289.P14591103291833313223

`record[root(A184291(n+2), A059268(n))]`
-/

namespace A184289.P14591103291833313223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184291 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184289.P14591103291833313223

/-!
# A184290: Number of distinct n X 3 toroidal 0..5 arrays.

The programs for A184290, there is no canonical definition to state claims against.
-/

/-! ## A184290.P862693099186080985

`A184291(∑[n+2]+4)`
-/

namespace A184290.P862693099186080985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184291 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184290.P862693099186080985

/-!
# A184292: Number of distinct n X 2 toroidal 0..7 arrays.

The programs for A184292, there is no canonical definition to state claims against.
-/

/-! ## A184292.P14908351780777695797

`A184294(∑[n+1]+2)`
-/

namespace A184292.P14908351780777695797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184294 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184292.P14908351780777695797

/-! ## A184292.P17331282217315994780

`record[A010054(n)*A184294(n+2)]`
-/

namespace A184292.P17331282217315994780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184292.P17331282217315994780

/-! ## A184292.P4374410686336716105

`record[root(A184294(n+2), A002260(n+1))]`
-/

namespace A184292.P4374410686336716105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184294 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184292.P4374410686336716105

/-!
# A184293: Number of distinct n X 3 toroidal 0..7 arrays.

The programs for A184293, there is no canonical definition to state claims against.
-/

/-! ## A184293.P10228431292620796246

`A184294(∑[n+2]+4)`
-/

namespace A184293.P10228431292620796246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184294 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184293.P10228431292620796246

/-!
# A184295: Number of strings of numbers x(i=1..n) in 0..n with sum i^3*x(i)^2 equal to n^5.

The programs for A184295, there is no canonical definition to state claims against.
-/

/-! ## A184295.P12857454480282644052

`A184303(∑[4*n]+1)`
-/

namespace A184295.P12857454480282644052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184295.P12857454480282644052

/-!
# A184296: Number of strings of numbers x(i=1..n) in 0..2 with sum i^3*x(i)^2 equal to n^3*4.

The programs for A184296, there is no canonical definition to state claims against.
-/

/-! ## A184296.P3119656889996153246

`A184303(∑[2+n])`
-/

namespace A184296.P3119656889996153246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184296.P3119656889996153246

/-!
# A184297: Number of strings of numbers x(i=1..n) in 0..3 with sum i^3*x(i)^2 equal to n^3*9.

The programs for A184297, there is no canonical definition to state claims against.
-/

/-! ## A184297.P11475824195261362352

`A184303(∑[n+3]+1)`
-/

namespace A184297.P11475824195261362352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184297.P11475824195261362352

/-!
# A184298: Number of strings of numbers x(i=1..n) in 0..4 with sum i^3*x(i)^2 equal to n^3*16.

The programs for A184298, there is no canonical definition to state claims against.
-/

/-! ## A184298.P4331487497546163679

`A184303(∑[4+n]+3)`
-/

namespace A184298.P4331487497546163679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184298.P4331487497546163679

/-!
# A184299: Number of strings of numbers x(i=1..n) in 0..5 with sum i^3*x(i)^2 equal to n^3*25.

The programs for A184299, there is no canonical definition to state claims against.
-/

/-! ## A184299.P16690905283048416093

`A184303(∑[n+5]+6)`
-/

namespace A184299.P16690905283048416093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184299.P16690905283048416093

