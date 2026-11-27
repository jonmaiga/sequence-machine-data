import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C001
import Seq.B006.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A218800: Number of nonnegative integer solutions to x^2 + 2y^2 = (3n)^2.

The programs for A218800, there is no canonical definition to state claims against.
-/

/-! ## A218800.P12094277628028753667

`A216282(A008486(gcd(n, ∑[n]))²)`
-/

namespace A218800.P12094277628028753667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A008486 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2).toNat

end

end A218800.P12094277628028753667

/-! ## A218800.P15996233084250065055

`A216282(A008486(n)²)`
-/

namespace A218800.P15996233084250065055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A008486 n ^ 2).toNat

end

end A218800.P15996233084250065055

/-! ## A218800.P9807877189885676900

`A399266((3*n)²)`
-/

namespace A218800.P9807877189885676900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399266 ((3 * n) ^ 2)

end

end A218800.P9807877189885676900

/-! ## A218800.P5780137320499000566

`A218799(A165351(n))`
-/

namespace A218800.P5780137320499000566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 (A165351 n).toNat

end

end A218800.P5780137320499000566

/-! ## A218800.P15909324706302901079

`A218799(3*n)`
-/

namespace A218800.P15909324706302901079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 (3 * n)

end

end A218800.P15909324706302901079

/-!
# A218801: G.f. A(x) satisfies: 1+x = Sum_{n>=0} n^n*x^n*A(-n*x)^n/n! * exp(-n*x*A(-n*x)).

The programs for A218801, there is no canonical definition to state claims against.
-/

/-! ## A218801.P2472331411490845011

`A072451(∑{#}[C(3*n, n)/(2*n+1), #])`
-/

namespace A218801.P2472331411490845011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (∑ k ∈ Finset.range (SequenceMachineLib.roundAway (f1 n) + 1).toNat, k)

end

end A218801.P2472331411490845011

/-!
# A218803: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 n X n array.

The programs for A218803, there is no canonical definition to state claims against.
-/

/-! ## A218803.P17339349938403896312

`A218810(∑[4*n]+1)`
-/

namespace A218803.P17339349938403896312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218803.P17339349938403896312

/-! ## A218803.P5051922948242869444

`record[gcd(A114327(n), A218810(n+1))]`
-/

namespace A218803.P5051922948242869444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A218810 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218803.P5051922948242869444

/-! ## A218803.P708398156332273602

`record[and(A185917(n+1), A218810(n+1))]`
-/

namespace A218803.P708398156332273602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A218810 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218803.P708398156332273602

/-!
# A218804: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 n X 2 array.

The programs for A218804, the canonical program `A218804.P18198392047548388589` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218804 has offset 1).

The definition of A218804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218804.P18198392047548388589

`ogf((3+6x+3x^2+x^4+2x^5+x^6)/(1-3x-3x^2-3x^3-x^4-x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218804

/-- `ogf((3+6x+3x^2+x^4+2x^5+x^6)/(1-3x-3x^2-3x^3-x^4-x^5-x^6-x^7))` -/
def P18198392047548388589.Spec : Prop :=
  ∀ n, P18198392047548388589.a n = A218804 (n + 1)

theorem P18198392047548388589.correct : P18198392047548388589.Spec := by
  intro n
  simp only [A218804, Nat.add_sub_cancel]

end A218804

/-! ## A218804.P6091143679766398364

`A218189(2*(1+n))`
-/

namespace A218804.P6091143679766398364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218189 (2 * (1 + n))

end

end A218804.P6091143679766398364

namespace A218804

/-- `A218189(2*(1+n))` -/
def P6091143679766398364.Spec : Prop :=
  ∀ n, P6091143679766398364.a n = A218804 (n + 1)

end A218804

/-! ## A218804.P2423827362202427398

`record[A218189(lcm(2, n+1)-n)]`
-/

namespace A218804.P2423827362202427398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218189 (Nat.lcm 2 (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218804.P2423827362202427398

namespace A218804

/-- `record[A218189(lcm(2, n+1)-n)]` -/
def P2423827362202427398.Spec : Prop :=
  ∀ n, P2423827362202427398.a n = A218804 (n + 1)

end A218804

/-! ## A218804.P4044239876323852803

`record[A218189(and(n, n+1)+2)]`
-/

namespace A218804.P4044239876323852803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218189 (Nat.land n (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218804.P4044239876323852803

namespace A218804

/-- `record[A218189(and(n, n+1)+2)]` -/
def P4044239876323852803.Spec : Prop :=
  ∀ n, P4044239876323852803.a n = A218804 (n + 1)

end A218804

/-! ## A218804.P7216658099690681670

`record[A218189(2%A019431(n+1)+n)]`
-/

namespace A218804.P7216658099690681670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218189 (Int.tmod 2 (A019431 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218804.P7216658099690681670

namespace A218804

/-- `record[A218189(2%A019431(n+1)+n)]` -/
def P7216658099690681670.Spec : Prop :=
  ∀ n, P7216658099690681670.a n = A218804 (n + 1)

end A218804

/-!
# A218805: Hilltop maps: number of n X 3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 n X 3 array.

The programs for A218805, the canonical program `A218805.P5236127347389609041` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218805 has offset 1).

The definition of A218805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218805.P5236127347389609041

`ogf((7+12x+5x^2+3x^4+4x^5+x^6)/(1-7x-7x^2-7x^3-3x^4-3x^5-3x^6-3x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218805

/-- `ogf((7+12x+5x^2+3x^4+4x^5+x^6)/(1-7x-7x^2-7x^3-3x^4-3x^5-3x^6-3x^7))` -/
def P5236127347389609041.Spec : Prop :=
  ∀ n, P5236127347389609041.a n = A218805 (n + 1)

theorem P5236127347389609041.correct : P5236127347389609041.Spec := by
  intro n
  simp only [A218805, Nat.add_sub_cancel]

end A218805

/-! ## A218805.P5641135593578141777

`A218810(∑[n+3]+1)`
-/

namespace A218805.P5641135593578141777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218805.P5641135593578141777

namespace A218805

/-- `A218810(∑[n+3]+1)` -/
def P5641135593578141777.Spec : Prop :=
  ∀ n, P5641135593578141777.a n = A218805 (n + 1)

end A218805

/-! ## A218805.P11200177630427584757

`record[A218810(A198464(n+1))]`
-/

namespace A218805.P11200177630427584757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218805.P11200177630427584757

namespace A218805

/-- `record[A218810(A198464(n+1))]` -/
def P11200177630427584757.Spec : Prop :=
  ∀ n, P11200177630427584757.a n = A218805 (n + 1)

end A218805

/-!
# A218806: Hilltop maps: number of n X 4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 n X 4 array.

The programs for A218806, there is no canonical definition to state claims against.
-/

/-! ## A218806.P10377499433521550745

`ogf((15+24x+9x^2+4x^3-3x^4+12x^5+3x^6)/(1-15x-15x^2-15x^3-9x^4-9x^5-9x^6-9x^7))`
-/

namespace A218806.P10377499433521550745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 24, 9, 4, -3, 12, 3] [1, -15, -15, -15, -9, -9, -9, -9] n

end

end A218806.P10377499433521550745

/-! ## A218806.P12641511740117107574

`A218810(A141214(n+1))`
-/

namespace A218806.P12641511740117107574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A141214 (n + 1)).toNat

end

end A218806.P12641511740117107574

/-!
# A218807: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 nX5 array.

The programs for A218807, there is no canonical definition to state claims against.
-/

/-! ## A218807.P1795334661151035395

`A218810(Δ[A264443(n)])`
-/

namespace A218807.P1795334661151035395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (f1 (n + 1) - f1 n).toNat

end

end A218807.P1795334661151035395

/-!
# A218808: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 nX6 array.

The programs for A218808, there is no canonical definition to state claims against.
-/

/-! ## A218808.P15896862738260167764

`A218810(A052905(n+3))`
-/

namespace A218808.P15896862738260167764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A052905 (n + 3)).toNat

end

end A218808.P15896862738260167764

/-!
# A218809: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 nX7 array.

The programs for A218809, there is no canonical definition to state claims against.
-/

/-! ## A218809.P11447821165257287276

`A218810(eq[4, A219347(n)])`
-/

namespace A218809.P11447821165257287276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218809.P11447821165257287276

/-!
# A218811: Hilltop maps: number of 2Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 2Xn array.

The programs for A218811, there is no canonical definition to state claims against.
-/

/-! ## A218811.P2705590822095170742

`A218810(∑[n+1]+2)`
-/

namespace A218811.P2705590822095170742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218811.P2705590822095170742

/-! ## A218811.P16844717577240954778

`record[ratio[A218810(A080036(n))]]`
-/

namespace A218811.P16844717577240954778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218811.P16844717577240954778

/-! ## A218811.P6635582643968487277

`record[A218810(A113782(n+1)+2)]`
-/

namespace A218811.P6635582643968487277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A113782 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218811.P6635582643968487277

/-! ## A218811.P5781378393682350823

`record[gcd(A218810(n+1), A264405(n))]`
-/

namespace A218811.P5781378393682350823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218810 (n + 1)) (A264405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218811.P5781378393682350823

/-! ## A218811.P17187151284272688863

`record[gcd(A218810(n+4), A219034(n))]`
-/

namespace A218811.P17187151284272688863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218810 (n + 4)) (A219034 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218811.P17187151284272688863

/-!
# A218812: Hilltop maps: number of 3Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 3Xn array.

The programs for A218812, there is no canonical definition to state claims against.
-/

/-! ## A218812.P831370502454505147

`A218810(∑[n+2]+4)`
-/

namespace A218812.P831370502454505147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218812.P831370502454505147

/-! ## A218812.P7350212979079026370

`record[gcd(2-A002262(n), A218810(n+1))]`
-/

namespace A218812.P7350212979079026370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002262 n) (A218810 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218812.P7350212979079026370

/-!
# A218813: Hilltop maps: number of 4Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 4Xn array.

The programs for A218813, there is no canonical definition to state claims against.
-/

/-! ## A218813.P2501908561609872385

`A218810(A141214(n)+7)`
-/

namespace A218813.P2501908561609872385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A141214 n + 7).toNat

end

end A218813.P2501908561609872385

/-!
# A218814: Hilltop maps: number of 5Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 5Xn array.

The programs for A218814, there is no canonical definition to state claims against.
-/

/-! ## A218814.P10495142732183366570

`A218810(A167499(n+3))`
-/

namespace A218814.P10495142732183366570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A167499 (n + 3)).toNat

end

end A218814.P10495142732183366570

/-!
# A218815: Hilltop maps: number of 6Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 6Xn array.

The programs for A218815, there is no canonical definition to state claims against.
-/

/-! ## A218815.P3337678329945203256

`A218810(A000124(n+5)+5)`
-/

namespace A218815.P3337678329945203256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A000124 (n + 5) + 5).toNat

end

end A218815.P3337678329945203256

/-!
# A218816: Hilltop maps: number of 7Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or antidiagonal neighbor in a random 0..3 7Xn array.

The programs for A218816, there is no canonical definition to state claims against.
-/

/-! ## A218816.P14944840737945135406

`A218810(A056119(n)+28)`
-/

namespace A218816.P14944840737945135406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (A056119 n + 28).toNat

end

end A218816.P14944840737945135406

/-!
# A218817: Number of rooted factorizations of n-permutations into ordered cycles.

The programs for A218817, there is no canonical definition to state claims against.
-/

/-! ## A218817.P4030750618162411129

`n*A007840(n)`
-/

namespace A218817.P4030750618162411129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007840 n

end

end A218817.P4030750618162411129

/-! ## A218817.P18354167584432919241

`n*A355652(∑[n]+n)`
-/

namespace A218817.P18354167584432919241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A218817.P18354167584432919241

/-! ## A218817.P5603465119482884645

`n*A355665(∑[n]+n)`
-/

namespace A218817.P5603465119482884645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A355665 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A218817.P5603465119482884645

/-! ## A218817.P10217114685315761026

`n*A079640(∑[abs(1-n)])`
-/

namespace A218817.P10217114685315761026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218817.P10217114685315761026

/-! ## A218817.P16290934190122318424

`record[A355652(n+1)*row(n)]`
-/

namespace A218817.P16290934190122318424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (n + 1) * (SequenceMachineLib.triRow n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218817.P16290934190122318424

/-! ## A218817.P4596604386681651825

`n*A357881(∑[n+1]+n)`
-/

namespace A218817.P4596604386681651825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A357881 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A218817.P4596604386681651825

/-! ## A218817.P12119800848937268851

`n*A052860(n+1)/(n+1)`
-/

namespace A218817.P12119800848937268851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A052860 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A218817.P12119800848937268851

/-! ## A218817.P5011400354579281257

`Δ[A007840(n)]-A215916(n)`
-/

namespace A218817.P5011400354579281257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215916 n

end

end A218817.P5011400354579281257

/-! ## A218817.P4009206317179264383

`A007840(n+1)-A052801(n)`
-/

namespace A218817.P4009206317179264383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (n + 1) - A052801 n

end

end A218817.P4009206317179264383

/-! ## A218817.P13451070420442791817

`A052860(n+1)-A007840(n)`
-/

namespace A218817.P13451070420442791817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052860 (n + 1) - A007840 n

end

end A218817.P13451070420442791817

/-!
# A218818: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..2 n X n array.

The programs for A218818, there is no canonical definition to state claims against.
-/

/-! ## A218818.P3608102507520435309

`A218823(∑[4*n]+1)`
-/

namespace A218818.P3608102507520435309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218818.P3608102507520435309

/-!
# A218819: Unmatched value maps: number of nX4 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..2 nX4 array.

The programs for A218819, there is no canonical definition to state claims against.
-/

/-! ## A218819.P113925349864401279

`A218823(∑[n+3]+7)`
-/

namespace A218819.P113925349864401279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218819.P113925349864401279

/-!
# A218820: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..2 nX5 array.

The programs for A218820, there is no canonical definition to state claims against.
-/

/-! ## A218820.P3089260312236664363

`A218823(A374005(n+1))`
-/

namespace A218820.P3089260312236664363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (A374005 (n + 1)).toNat

end

end A218820.P3089260312236664363

/-!
# A218821: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..2 nX6 array.

The programs for A218821, there is no canonical definition to state claims against.
-/

/-! ## A218821.P14361727484543725002

`A218823(A374007(n+1))`
-/

namespace A218821.P14361727484543725002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (A374007 (n + 1)).toNat

end

end A218821.P14361727484543725002

/-!
# A218822: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..2 nX7 array.

The programs for A218822, there is no canonical definition to state claims against.
-/

/-! ## A218822.P8838094097398120316

`A218823(A374008(n+1))`
-/

namespace A218822.P8838094097398120316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (A374008 (n + 1)).toNat

end

end A218822.P8838094097398120316

/-!
# A218823: T(n,k)=Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..2 nXk array.

The programs for A218823, there is no canonical definition to state claims against.
-/

/-! ## A218823.P1272303267689654536

`A334966(A218765(n+1)+1)+A259361(A174673(n))`
-/

namespace A218823.P1272303267689654536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A218765 (n + 1) + 1).toNat + A259361 (A174673 n).toNat

end

end A218823.P1272303267689654536

/-! ## A218823.P17761213358799665044

`or(dr(A010032(n)), A220259(n+1))`
-/

namespace A218823.P17761213358799665044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A010032 n) : ℤ) (A220259 (n + 1))

end

end A218823.P17761213358799665044

/-! ## A218823.P3137544072268058181

`or(dr(A010032(n)), A220323(n+1))`
-/

namespace A218823.P3137544072268058181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A010032 n) : ℤ) (A220323 (n + 1))

end

end A218823.P3137544072268058181

/-! ## A218823.P2693635621551244434

`or(A220996(n+1)%2, A220259(n+1))`
-/

namespace A218823.P2693635621551244434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A220996 (n + 1)) 2) (A220259 (n + 1))

end

end A218823.P2693635621551244434

/-! ## A218823.P18136198719361594032

`or(and(1, A220996(n+1)), A220323(n+1))`
-/

namespace A218823.P18136198719361594032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 1 (A220996 (n + 1))) (A220323 (n + 1))

end

end A218823.P18136198719361594032

/-!
# A218824: O.g.f.: A(x) = Sum_{n>=0} n^n * x^n/n! * P(n*x)^n * exp(-n*x*P(n*x)), where P(x) is the partition function (A000041).

The programs for A218824, there is no canonical definition to state claims against.
-/

/-! ## A218824.P6708832868685261473

`A337516(A329738(n))`
-/

namespace A218824.P6708832868685261473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337516 (A329738 n).toNat

end

end A218824.P6708832868685261473

/-! ## A218824.P10853066263940858324

`A081753(A149814(n)²)`
-/

namespace A218824.P10853066263940858324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A149814 n ^ 2).toNat

end

end A218824.P10853066263940858324

/-!
# A218826: Number of indecomposable (by concatenation) alternating n-anagrams.

The programs for A218826, there is no canonical definition to state claims against.
-/

/-! ## A218826.P15310019624778132918

`A000366(n+2)-∑{#}[n-1, A239894(C(n+1, 2)+#+2)]`
-/

namespace A218826.P15310019624778132918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000366 (n + 2) - ∑ k ∈ Finset.range (f1 n + 1).toNat, A239894 (Nat.choose (n + 1) 2 + (k + 2))

end

end A218826.P15310019624778132918

/-! ## A218826.P16342768995541670626

`A239894(1+∑[n])`
-/

namespace A218826.P16342768995541670626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239894 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218826.P16342768995541670626

/-!
# A218827: Number of indecomposable (by shuffling) alternating n-anagrams.

The programs for A218827, there is no canonical definition to state claims against.
-/

/-! ## A218827.P9885686290494126236

`A239895(∑[n]+1)`
-/

namespace A218827.P9885686290494126236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218827.P9885686290494126236

/-! ## A218827.P7488430681372273516

`A225529(A149028(n))`
-/

namespace A218827.P7488430681372273516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225529 (A149028 n).toNat

end

end A218827.P7488430681372273516

/-!
# A218828: Reluctant sequence of reverse reluctant sequence A004736.

The programs for A218828, the canonical program `A218828.P498474312992821161` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218828 has offset 1).

The definition of A218828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218828.P9307362316425271694

`A004736(col(n)+1)`
-/

namespace A218828.P9307362316425271694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.triCol n + 1)

end

end A218828.P9307362316425271694

namespace A218828

/-- `A004736(col(n)+1)` -/
def P9307362316425271694.Spec : Prop :=
  ∀ n, P9307362316425271694.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P498474312992821161

`A004736(A002260(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218828

/-- `A004736(A002260(n+1))` -/
def P498474312992821161.Spec : Prop :=
  ∀ n, P498474312992821161.a n = A218828 (n + 1)

theorem P498474312992821161.correct : P498474312992821161.Spec := by
  intro n
  simp only [A218828, Nat.add_sub_cancel]

end A218828

/-! ## A218828.P8638123042634158604

`row(col(n))-col(col(n))+1`
-/

namespace A218828.P8638123042634158604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (SequenceMachineLib.triCol n) : ℤ) - (SequenceMachineLib.triCol (SequenceMachineLib.triCol n) : ℤ) + 1

end

end A218828.P8638123042634158604

namespace A218828

/-- `row(col(n))-col(col(n))+1` -/
def P8638123042634158604.Spec : Prop :=
  ∀ n, P8638123042634158604.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P1731786248555544681

`row(col(n))-(col(col(n))-1)`
-/

namespace A218828.P1731786248555544681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (SequenceMachineLib.triCol n) : ℤ) - ((SequenceMachineLib.triCol (SequenceMachineLib.triCol n) : ℤ) - 1)

end

end A218828.P1731786248555544681

namespace A218828

/-- `row(col(n))-(col(col(n))-1)` -/
def P1731786248555544681.Spec : Prop :=
  ∀ n, P1731786248555544681.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P12030861229965085668

`1+A025581(col(n))`
-/

namespace A218828.P12030861229965085668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A025581 (SequenceMachineLib.triCol n)

end

end A218828.P12030861229965085668

namespace A218828

/-- `1+A025581(col(n))` -/
def P12030861229965085668.Spec : Prop :=
  ∀ n, P12030861229965085668.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P3482267931416564016

`A025683(col(n)+1)+1`
-/

namespace A218828.P3482267931416564016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025683 (SequenceMachineLib.triCol n + 1) + 1

end

end A218828.P3482267931416564016

namespace A218828

/-- `A025683(col(n)+1)+1` -/
def P3482267931416564016.Spec : Prop :=
  ∀ n, P3482267931416564016.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P11212886126879678653

`row(1+abs(A122432(col(n))))`
-/

namespace A218828.P11212886126879678653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (1 + |A122432 (SequenceMachineLib.triCol n)|).toNat

end

end A218828.P11212886126879678653

namespace A218828

/-- `row(1+abs(A122432(col(n))))` -/
def P11212886126879678653.Spec : Prop :=
  ∀ n, (P11212886126879678653.a n : ℤ) = A218828 (n + 1)

end A218828

/-! ## A218828.P14949029917420046948

`A025581(A002262(n))+1`
-/

namespace A218828.P14949029917420046948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A002262 n).toNat + 1

end

end A218828.P14949029917420046948

namespace A218828

/-- `A025581(A002262(n))+1` -/
def P14949029917420046948.Spec : Prop :=
  ∀ n, P14949029917420046948.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P10743475592025849845

`A025581(log2(A059268(n)))+1`
-/

namespace A218828.P10743475592025849845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat + 1

end

end A218828.P10743475592025849845

namespace A218828

/-- `A025581(log2(A059268(n)))+1` -/
def P10743475592025849845.Spec : Prop :=
  ∀ n, P10743475592025849845.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P10133038797066659406

`A025676(A002262(n)+1)+1`
-/

namespace A218828.P10133038797066659406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025676 (A002262 n + 1).toNat + 1

end

end A218828.P10133038797066659406

namespace A218828

/-- `A025676(A002262(n)+1)+1` -/
def P10133038797066659406.Spec : Prop :=
  ∀ n, P10133038797066659406.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P13603584706698614219

`A025683(A002262(n)+1)+1`
-/

namespace A218828.P13603584706698614219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025683 (A002262 n + 1).toNat + 1

end

end A218828.P13603584706698614219

namespace A218828

/-- `A025683(A002262(n)+1)+1` -/
def P13603584706698614219.Spec : Prop :=
  ∀ n, P13603584706698614219.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P15597388304518557373

`A057555(A158405(n+1)+1)`
-/

namespace A218828.P15597388304518557373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A158405 (n + 1) + 1).toNat

end

end A218828.P15597388304518557373

namespace A218828

/-- `A057555(A158405(n+1)+1)` -/
def P15597388304518557373.Spec : Prop :=
  ∀ n, P15597388304518557373.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P12245718275968293919

`A220465(A038722(n+1))`
-/

namespace A218828.P12245718275968293919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220465 (A038722 (n + 1)).toNat

end

end A218828.P12245718275968293919

namespace A218828

/-- `A220465(A038722(n+1))` -/
def P12245718275968293919.Spec : Prop :=
  ∀ n, P12245718275968293919.a n = A218828 (n + 1)

end A218828

/-! ## A218828.P6616986613276990943

`A253515(A074294(2*n+1))/2`
-/

namespace A218828.P6616986613276990943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253515 (A074294 (2 * n + 1)).toNat : ℚ) / 2

end

end A218828.P6616986613276990943

namespace A218828

/-- `A253515(A074294(2*n+1))/2` -/
def P6616986613276990943.Spec : Prop :=
  ∀ n, P6616986613276990943.a n = (A218828 (n + 1) : ℚ)

end A218828

/-! ## A218828.P15337850036235920205

`A117136(A158405(n+1))`
-/

namespace A218828.P15337850036235920205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 (A158405 (n + 1)).toNat

end

end A218828.P15337850036235920205

namespace A218828

/-- `A117136(A158405(n+1))` -/
def P15337850036235920205.Spec : Prop :=
  ∀ n, P15337850036235920205.a n = A218828 (n + 1)

end A218828

/-!
# A218829: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that prime(k) + 2 and prime(prime(m)) + 2 are both prime.

The programs for A218829, there is no canonical definition to state claims against.
-/

/-! ## A218829.P10233916986796542606

`val(A067945(A318975(n)), 4)`
-/

namespace A218829.P10233916986796542606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067945 (A318975 n).toNat).toNat 4

end

end A218829.P10233916986796542606

/-! ## A218829.P11311936834964851023

`A237715(n+1)-A101637(A171842(n))`
-/

namespace A218829.P11311936834964851023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237715 (n + 1) - A101637 (A171842 n).toNat

end

end A218829.P11311936834964851023

/-! ## A218829.P2353972886280614711

`A237715(n+1)-A101605(A286203(n))`
-/

namespace A218829.P2353972886280614711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237715 (n + 1) - A101605 (A286203 n).toNat

end

end A218829.P2353972886280614711

/-! ## A218829.P16736149213359521718

`A073855(A320169(n+1)-A320194(n))`
-/

namespace A218829.P16736149213359521718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A320169 (n + 1) - A320194 n).toNat

end

end A218829.P16736149213359521718

/-! ## A218829.P4495130098477012650

`A234200(or(A187829(n+1), A230099(n)))`
-/

namespace A218829.P4495130098477012650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234200 (Int.lor (A187829 (n + 1)) (A230099 n)).toNat

end

end A218829.P4495130098477012650

/-!
# A218831: a(n) is the least r > 1 for which the interval (r*n, r*(n+1)) contains no prime, or a(n)=0 if no such r exists.

The programs for A218831, there is no canonical definition to state claims against.
-/

/-! ## A218831.P11642496179004970044

`A103507(A231915(n+2)+A125070(3*n+2))`
-/

namespace A218831.P11642496179004970044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103507 (A231915 (n + 2) + A125070 (3 * n + 2)).toNat

end

end A218831.P11642496179004970044

/-! ## A218831.P8420992617493630008

`A402245(A375316(n+1))`
-/

namespace A218831.P8420992617493630008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402245 (A375316 (n + 1)).toNat

end

end A218831.P8420992617493630008

/-! ## A218831.P4736056468381593456

`A001842(n²*A260670(n))`
-/

namespace A218831.P4736056468381593456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 ((n ^ 2 : ℤ) * A260670 n).toNat

end

end A218831.P4736056468381593456

/-! ## A218831.P9333706340895906572

`A275962(lcm(A004396(n), A084184(n)))`
-/

namespace A218831.P9333706340895906572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (Int.lcm (A004396 n) (A084184 n))

end

end A218831.P9333706340895906572

/-! ## A218831.P2516912117769414799

`A144494(A196989(n+2)+A087640(n))`
-/

namespace A218831.P2516912117769414799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (A196989 (n + 2) + A087640 n).toNat

end

end A218831.P2516912117769414799

/-!
# A218832: Number of positive integer solutions to the Diophantine equation x + y + 2z = n^2.

The programs for A218832, the canonical program `A218832.P7311377756891444470` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218832 has offset 1).

The definition of A218832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218832.P7311377756891444470

`floor((1-(1+n)²/2)²)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218832

/-- `floor((1-(1+n)²/2)²)` -/
def P7311377756891444470.Spec : Prop :=
  ∀ n, P7311377756891444470.a n = A218832 (n + 1)

theorem P7311377756891444470.correct : P7311377756891444470.Spec := by
  intro n
  simp only [A218832, Nat.add_sub_cancel]

end A218832

/-! ## A218832.P9285185848843076459

`record[floor((((1-n)²-2)/2)²)]`
-/

namespace A218832.P9285185848843076459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - 2 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218832.P9285185848843076459

namespace A218832

/-- `record[floor((((1-n)²-2)/2)²)]` -/
def P9285185848843076459.Spec : Prop :=
  ∀ n, P9285185848843076459.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P10113707674215960468

`round((record[(1-n)²]/2-1)²)`
-/

namespace A218832.P10113707674215960468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2 - 1) ^ 2)

end

end A218832.P10113707674215960468

namespace A218832

/-- `round((record[(1-n)²]/2-1)²)` -/
def P10113707674215960468.Spec : Prop :=
  ∀ n, P10113707674215960468.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P6626251718792777216

`round((∑[floor(atan(n)+n+n)]/2)²)`
-/

namespace A218832.P6626251718792777216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2)

end

end A218832.P6626251718792777216

namespace A218832

/-- `round((∑[floor(atan(n)+n+n)]/2)²)` -/
def P6626251718792777216.Spec : Prop :=
  ∀ n, P6626251718792777216.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P11509149063546103829

`round((C(n+1, 2)+(n-1)/2)²)`
-/

namespace A218832.P11509149063546103829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 1) 2 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2) ^ 2)

end

end A218832.P11509149063546103829

namespace A218832

/-- `round((C(n+1, 2)+(n-1)/2)²)` -/
def P11509149063546103829.Spec : Prop :=
  ∀ n, P11509149063546103829.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P1278989763254333583

`round(cosh(log((n+1)²))²)-(n+1)²`
-/

namespace A218832.P1278989763254333583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n + 1) ^ 2 : ℝ)) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A218832.P1278989763254333583

namespace A218832

/-- `round(cosh(log((n+1)²))²)-(n+1)²` -/
def P1278989763254333583.Spec : Prop :=
  ∀ n, P1278989763254333583.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P9968458408171919654

`ogf((x+8x^2+6x^3-4x^4+x^5)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A218832.P9968458408171919654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8, 6, -4, 1] [1, -4, 5, 0, -5, 4, -1] n

end

end A218832.P9968458408171919654

namespace A218832

/-- `ogf((x+8x^2+6x^3-4x^4+x^5)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P9968458408171919654.Spec : Prop :=
  ∀ n, P9968458408171919654.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P13144164903712142414

`a(n-2)+2*n*(n+1)*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218832.P13144164903712142414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (2 * n : ℤ) * ((n + 1 : ℤ) * ((n : ℤ) - 1))

end

end A218832.P13144164903712142414

namespace A218832

/-- `a(n-2)+2*n*(n+1)*(n-1)` -/
def P13144164903712142414.Spec : Prop :=
  ∀ n, P13144164903712142414.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P15774827155675560839

`∑[2*A212684(n)]-n`
-/

namespace A218832.P15774827155675560839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A218832.P15774827155675560839

namespace A218832

/-- `∑[2*A212684(n)]-n` -/
def P15774827155675560839.Spec : Prop :=
  ∀ n, P15774827155675560839.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P11188656523459035950

`A131479(n+1)-n*(n+2)`
-/

namespace A218832.P11188656523459035950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 (n + 1) - (n * (n + 2) : ℤ)

end

end A218832.P11188656523459035950

namespace A218832

/-- `A131479(n+1)-n*(n+2)` -/
def P11188656523459035950.Spec : Prop :=
  ∀ n, P11188656523459035950.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P4037555073142370860

`A212673(n+1)+1-A212674(n+1)`
-/

namespace A218832.P4037555073142370860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 (n + 1) + (1 - A212674 (n + 1))

end

end A218832.P4037555073142370860

namespace A218832

/-- `A212673(n+1)+1-A212674(n+1)` -/
def P4037555073142370860.Spec : Prop :=
  ∀ n, P4037555073142370860.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P16242788338358082179

`A033638((n+1)²)-(n+1)²`
-/

namespace A218832.P16242788338358082179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A218832.P16242788338358082179

namespace A218832

/-- `A033638((n+1)²)-(n+1)²` -/
def P16242788338358082179.Spec : Prop :=
  ∀ n, P16242788338358082179.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P17731825328548290001

`A002620(A004273(n)+n²)`
-/

namespace A218832.P17731825328548290001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004273 n + (n ^ 2 : ℤ)).toNat

end

end A218832.P17731825328548290001

namespace A218832

/-- `A002620(A004273(n)+n²)` -/
def P17731825328548290001.Spec : Prop :=
  ∀ n, P17731825328548290001.a n = A218832 (n + 1)

end A218832

/-! ## A218832.P14345394959192112077

`A002620((n+1)²)-A005563(n)`
-/

namespace A218832.P14345394959192112077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((n + 1) ^ 2) - A005563 n

end

end A218832.P14345394959192112077

namespace A218832

/-- `A002620((n+1)²)-A005563(n)` -/
def P14345394959192112077.Spec : Prop :=
  ∀ n, P14345394959192112077.a n = A218832 (n + 1)

end A218832

/-!
# A218833: Primes p such that 2*p is greater than the greatest prime factor of p^2 - 1 and p^2 + 1.

The programs for A218833, there is no canonical definition to state claims against.
-/

/-! ## A218833.P16953191453783770150

`p?[A002312(n+1)]`
-/

namespace A218833.P16953191453783770150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218833.P16953191453783770150

/-! ## A218833.P6126752441809000583

`filter[A002312(n+1), A001222(#)]`
-/

namespace A218833.P6126752441809000583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A218833.P6126752441809000583

/-! ## A218833.P8002789423678709545

`filter[A002312(1+n), A010051(#)]`
-/

namespace A218833.P8002789423678709545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A218833.P8002789423678709545

/-! ## A218833.P6325630881085718575

`filter[A002312(n+1), A033676(#)]`
-/

namespace A218833.P6325630881085718575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A033676 (f1 j).toNat = 1) n)

end

end A218833.P6325630881085718575

/-! ## A218833.P4788301270088327657

`filter[A002312(n+1), A080339(#)]`
-/

namespace A218833.P4788301270088327657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A218833.P4788301270088327657

/-! ## A218833.P7993300508337913340

`filter[A002312(n+1), A080545(#)]`
-/

namespace A218833.P7993300508337913340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A218833.P7993300508337913340

/-! ## A218833.P12495150305124096344

`filter[A002312(n+1), A257531(#)]`
-/

namespace A218833.P12495150305124096344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A218833.P12495150305124096344

/-! ## A218833.P12207060223115868617

`filter[A002312(n+1), A302777(#)]`
-/

namespace A218833.P12207060223115868617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A218833.P12207060223115868617

/-! ## A218833.P4368929203431378330

`filter[A002312(n+1), A323152(#)]`
-/

namespace A218833.P4368929203431378330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A218833.P4368929203431378330

/-! ## A218833.P17989269312576544115

`filter[A002312(n+1), A323153(#)]`
-/

namespace A218833.P17989269312576544115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A218833.P17989269312576544115

/-!
# A218835: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 n X n array.

The programs for A218835, there is no canonical definition to state claims against.
-/

/-! ## A218835.P12908541411504963645

`A218842(∑[4*n]+1)`
-/

namespace A218835.P12908541411504963645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218835.P12908541411504963645

/-! ## A218835.P4081232802141105368

`record[A218842(∑[A266981(n)])]`
-/

namespace A218835.P4081232802141105368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218835.P4081232802141105368

/-! ## A218835.P16389213832191579995

`record[A003982(n)*A218842(n+1)]`
-/

namespace A218835.P16389213832191579995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218835.P16389213832191579995

/-! ## A218835.P2032672939581695719

`record[gcd(A112467(n), A218842(n+1))]`
-/

namespace A218835.P2032672939581695719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A218842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218835.P2032672939581695719

/-! ## A218835.P3292558012046416192

`record[and(A185917(n+1), A218842(n+1))]`
-/

namespace A218835.P3292558012046416192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A218842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218835.P3292558012046416192

/-!
# A218836: Unmatched value maps: number of n X 2 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 n X 2 array.

The programs for A218836, the canonical program `A218836.P12532683716476856191` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218836 has offset 0).

The definition of A218836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218836.P16069038369476723538

`ogf(1/(1-2x-3x^2-x^3))`
-/

namespace A218836.P16069038369476723538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -3, -1] n

end

end A218836.P16069038369476723538

namespace A218836

/-- `ogf(1/(1-2x-3x^2-x^3))` -/
def P16069038369476723538.Spec : Prop :=
  ∀ n, P16069038369476723538.a n = A218836 n

end A218836

/-! ## A218836.P12532683716476856191

`2*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218836

/-- `2*a(n-1)+3*a(n-2)+a(n-3)` -/
def P12532683716476856191.Spec : Prop :=
  ∀ n, (P12532683716476856191.a n : ℤ) = A218836 n

theorem P12532683716476856191.correct : P12532683716476856191.Spec := by
  intro n
  simp only [A218836]

end A218836

/-! ## A218836.P15649377862610019673

`∑[A109266(4*n)]`
-/

namespace A218836.P15649377862610019673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109266 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218836.P15649377862610019673

namespace A218836

/-- `∑[A109266(4*n)]` -/
def P15649377862610019673.Spec : Prop :=
  ∀ n, P15649377862610019673.a n = A218836 n

end A218836

/-! ## A218836.P3132771897650087244

`A005251(2*(1+n))`
-/

namespace A218836.P3132771897650087244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * (1 + n))

end

end A218836.P3132771897650087244

namespace A218836

/-- `A005251(2*(1+n))` -/
def P3132771897650087244.Spec : Prop :=
  ∀ n, P3132771897650087244.a n = A218836 n

end A218836

/-! ## A218836.P11754958466539598353

`A134816(1+4*n)`
-/

namespace A218836.P11754958466539598353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (1 + 4 * n)

end

end A218836.P11754958466539598353

namespace A218836

/-- `A134816(1+4*n)` -/
def P11754958466539598353.Spec : Prop :=
  ∀ n, P11754958466539598353.a n = A218836 n

end A218836

/-! ## A218836.P5130989669908503056

`A182097(4*n+2)`
-/

namespace A218836.P5130989669908503056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (4 * n + 2)

end

end A218836.P5130989669908503056

namespace A218836

/-- `A182097(4*n+2)` -/
def P5130989669908503056.Spec : Prop :=
  ∀ n, P5130989669908503056.a n = A218836 n

end A218836

/-! ## A218836.P9980880904725977668

`A000931(4*n+5)`
-/

namespace A218836.P9980880904725977668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n + 5)

end

end A218836.P9980880904725977668

namespace A218836

/-- `A000931(4*n+5)` -/
def P9980880904725977668.Spec : Prop :=
  ∀ n, P9980880904725977668.a n = A218836 n

end A218836

/-! ## A218836.P6225977134873646989

`A114775(8*(n+1))`
-/

namespace A218836.P6225977134873646989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (8 * (n + 1))

end

end A218836.P6225977134873646989

namespace A218836

/-- `A114775(8*(n+1))` -/
def P6225977134873646989.Spec : Prop :=
  ∀ n, P6225977134873646989.a n = A218836 n

end A218836

/-! ## A218836.P9503069403679872007

`A078027(4*n+7)`
-/

namespace A218836.P9503069403679872007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (4 * n + 7)

end

end A218836.P9503069403679872007

namespace A218836

/-- `A078027(4*n+7)` -/
def P9503069403679872007.Spec : Prop :=
  ∀ n, P9503069403679872007.a n = A218836 n

end A218836

/-! ## A218836.P2581989323572029920

`A133034(4*n+9)`
-/

namespace A218836.P2581989323572029920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (4 * n + 9)

end

end A218836.P2581989323572029920

namespace A218836

/-- `A133034(4*n+9)` -/
def P2581989323572029920.Spec : Prop :=
  ∀ n, P2581989323572029920.a n = A218836 n

end A218836

/-! ## A218836.P18116131361368883055

`∑[abs(Δ[A005251(2*n)])]`
-/

namespace A218836.P18116131361368883055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218836.P18116131361368883055

namespace A218836

/-- `∑[abs(Δ[A005251(2*n)])]` -/
def P18116131361368883055.Spec : Prop :=
  ∀ n, P18116131361368883055.a n = A218836 n

end A218836

/-! ## A218836.P4164398724178761228

`record[A005251(abs(2*(1-n)))]`
-/

namespace A218836.P4164398724178761228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218836.P4164398724178761228

namespace A218836

/-- `record[A005251(abs(2*(1-n)))]` -/
def P4164398724178761228.Spec : Prop :=
  ∀ n, P4164398724178761228.a n = A218836 n

end A218836

/-! ## A218836.P17022749481123421842

`A164001(A111284(n+1))`
-/

namespace A218836.P17022749481123421842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A111284 (n + 1)).toNat

end

end A218836.P17022749481123421842

namespace A218836

/-- `A164001(A111284(n+1))` -/
def P17022749481123421842.Spec : Prop :=
  ∀ n, P17022749481123421842.a n = A218836 n

end A218836

/-! ## A218836.P1615194183814337865

`A228361(A019442(n+2))`
-/

namespace A218836.P1615194183814337865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A019442 (n + 2)).toNat

end

end A218836.P1615194183814337865

namespace A218836

/-- `A228361(A019442(n+2))` -/
def P1615194183814337865.Spec : Prop :=
  ∀ n, P1615194183814337865.a n = A218836 n

end A218836

/-! ## A218836.P17963104629515438157

`A023434(2*A004273(n))+1`
-/

namespace A218836.P17963104629515438157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (2 * A004273 n).toNat + 1

end

end A218836.P17963104629515438157

namespace A218836

/-- `A023434(2*A004273(n))+1` -/
def P17963104629515438157.Spec : Prop :=
  ∀ n, P17963104629515438157.a n = A218836 n

end A218836

/-! ## A218836.P3422931366636967123

`A334293(n+1)+A334293(n)`
-/

namespace A218836.P3422931366636967123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334293 (n + 1) + A334293 n

end

end A218836.P3422931366636967123

namespace A218836

/-- `A334293(n+1)+A334293(n)` -/
def P3422931366636967123.Spec : Prop :=
  ∀ n, P3422931366636967123.a n = A218836 n

end A218836

/-! ## A218836.P15632931917013079684

`A127682(2*A004278(2*(n+1)))`
-/

namespace A218836.P15632931917013079684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * A004278 (2 * (n + 1))).toNat

end

end A218836.P15632931917013079684

namespace A218836

/-- `A127682(2*A004278(2*(n+1)))` -/
def P15632931917013079684.Spec : Prop :=
  ∀ n, P15632931917013079684.a n = A218836 n

end A218836

/-! ## A218836.P9382057346395271617

`A347493(2*n)+A347493(2*n+1)`
-/

namespace A218836.P9382057346395271617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (2 * n) + A347493 (2 * n + 1)

end

end A218836.P9382057346395271617

namespace A218836

/-- `A347493(2*n)+A347493(2*n+1)` -/
def P9382057346395271617.Spec : Prop :=
  ∀ n, P9382057346395271617.a n = A218836 n

end A218836

/-! ## A218836.P13284196115960216595

`A376787(2*n)+A376729(2*n+1)`
-/

namespace A218836.P13284196115960216595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376787 (2 * n) + A376729 (2 * n + 1)

end

end A218836.P13284196115960216595

namespace A218836

/-- `A376787(2*n)+A376729(2*n+1)` -/
def P13284196115960216595.Spec : Prop :=
  ∀ n, P13284196115960216595.a n = A218836 n

end A218836

/-! ## A218836.P12513707489597342314

`Δ[A181532(2*n)]`
-/

namespace A218836.P12513707489597342314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218836.P12513707489597342314

namespace A218836

/-- `Δ[A181532(2*n)]` -/
def P12513707489597342314.Spec : Prop :=
  ∀ n, P12513707489597342314.a n = A218836 n

end A218836

/-!
# A218837: Unmatched value maps: number of n X 3 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 n X 3 array.

The programs for A218837, the canonical program `A218837.P10984426823209879046` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218837 has offset 1).

The definition of A218837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218837.P14740960780995280938

`ogf((4+4x+x^2)/(1-4x-3x^2-x^3))`
-/

namespace A218837.P14740960780995280938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 1] [1, -4, -3, -1] n

end

end A218837.P14740960780995280938

namespace A218837

/-- `ogf((4+4x+x^2)/(1-4x-3x^2-x^3))` -/
def P14740960780995280938.Spec : Prop :=
  ∀ n, P14740960780995280938.a n = A218837 (n + 1)

end A218837

/-! ## A218837.P10984426823209879046

`4*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=20, a(2)=93`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218837

/-- `4*a(n-1)+3*a(n-2)+a(n-3)` -/
def P10984426823209879046.Spec : Prop :=
  ∀ n, (P10984426823209879046.a n : ℤ) = A218837 (n + 1)

theorem P10984426823209879046.correct : P10984426823209879046.Spec := by
  intro n
  simp only [A218837, Nat.add_sub_cancel]

end A218837

/-! ## A218837.P6673155608932036276

`A219421(∑[n+3]+1)`
-/

namespace A218837.P6673155608932036276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218837.P6673155608932036276

namespace A218837

/-- `A219421(∑[n+3]+1)` -/
def P6673155608932036276.Spec : Prop :=
  ∀ n, P6673155608932036276.a n = A218837 (n + 1)

end A218837

/-! ## A218837.P10116676060065630005

`record[A219421(A198464(n+1))]`
-/

namespace A218837.P10116676060065630005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218837.P10116676060065630005

namespace A218837

/-- `record[A219421(A198464(n+1))]` -/
def P10116676060065630005.Spec : Prop :=
  ∀ n, P10116676060065630005.a n = A218837 (n + 1)

end A218837

/-! ## A218837.P13456796824744286984

`A218842(∑[n+3]+1)`
-/

namespace A218837.P13456796824744286984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218837.P13456796824744286984

namespace A218837

/-- `A218842(∑[n+3]+1)` -/
def P13456796824744286984.Spec : Prop :=
  ∀ n, P13456796824744286984.a n = A218837 (n + 1)

end A218837

/-!
# A218838: Unmatched value maps: number of n X 4 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 n X 4 array.

The programs for A218838, the canonical program `A218838.P7347067892298459466` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218838 has offset 1).

The definition of A218838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218838.P7347067892298459466

`ogf((7+8x+19x^2-7x^3-x^4+3x^5)/(1-7x-5x^2-24x^3+9x^4-9x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218838

/-- `ogf((7+8x+19x^2-7x^3-x^4+3x^5)/(1-7x-5x^2-24x^3+9x^4-9x^5))` -/
def P7347067892298459466.Spec : Prop :=
  ∀ n, P7347067892298459466.a n = A218838 (n + 1)

theorem P7347067892298459466.correct : P7347067892298459466.Spec := by
  intro n
  simp only [A218838, Nat.add_sub_cancel]

end A218838

/-! ## A218838.P634371841342973979

`A219421(A141214(n+1))`
-/

namespace A218838.P634371841342973979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A141214 (n + 1)).toNat

end

end A218838.P634371841342973979

namespace A218838

/-- `A219421(A141214(n+1))` -/
def P634371841342973979.Spec : Prop :=
  ∀ n, P634371841342973979.a n = A218838 (n + 1)

end A218838

/-! ## A218838.P10340882933718143348

`A218842(A141214(n+1))`
-/

namespace A218838.P10340882933718143348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A141214 (n + 1)).toNat

end

end A218838.P10340882933718143348

namespace A218838

/-- `A218842(A141214(n+1))` -/
def P10340882933718143348.Spec : Prop :=
  ∀ n, P10340882933718143348.a n = A218838 (n + 1)

end A218838

/-!
# A218839: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 nX5 array.

The programs for A218839, there is no canonical definition to state claims against.
-/

/-! ## A218839.P15524068996250225314

`A218842(Δ[A264443(n)])`
-/

namespace A218839.P15524068996250225314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (f1 (n + 1) - f1 n).toNat

end

end A218839.P15524068996250225314

/-!
# A218840: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 nX6 array.

The programs for A218840, there is no canonical definition to state claims against.
-/

/-! ## A218840.P6866042493521491415

`A218842(A056119(n)+16)`
-/

namespace A218840.P6866042493521491415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A056119 n + 16).toNat

end

end A218840.P6866042493521491415

/-!
# A218841: Unmatched value maps: number of n X 7 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 n X 7 array.

The programs for A218841, there is no canonical definition to state claims against.
-/

/-! ## A218841.P8284831446161965913

`A218842(A055999(n+4))`
-/

namespace A218841.P8284831446161965913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A055999 (n + 4)).toNat

end

end A218841.P8284831446161965913

/-!
# A218842: T(n,k)=Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 nXk array.

The programs for A218842, there is no canonical definition to state claims against.
-/

/-! ## A218842.P10098551501419949736

`A219421(n+1)-A184946(∑{d}[n, #%#²])`
-/

namespace A218842.P10098551501419949736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (n + 1) - A184946 (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2)

end

end A218842.P10098551501419949736

/-! ## A218842.P14393312704586586621

`A219421(n+1)-A184946(A039653(n))`
-/

namespace A218842.P14393312704586586621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (n + 1) - A184946 (A039653 n).toNat

end

end A218842.P14393312704586586621

/-! ## A218842.P8807143941683422528

`A219421(n+1)-A200508(A184955(n))`
-/

namespace A218842.P8807143941683422528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (n + 1) - A200508 (A184955 n).toNat

end

end A218842.P8807143941683422528

/-! ## A218842.P6203641306075156431

`A219421(n+1)-A096904(A241108(n+1))`
-/

namespace A218842.P6203641306075156431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (n + 1) - A096904 (A241108 (n + 1)).toNat

end

end A218842.P6203641306075156431

/-!
# A218843: Unmatched value maps: number of 2 X n binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 2 X n array.

The programs for A218843, the canonical program `A218843.P4486144038711897897` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218843 has offset 1).

The definition of A218843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218843.P4486144038711897897

`ogf((1+5x+5x^2+7x^3+x^4+7x^5+x^6-2x^8)/(1-2x-x^2-3x^3-2x^5-2x^6+2x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218843

/-- `ogf((1+5x+5x^2+7x^3+x^4+7x^5+x^6-2x^8)/(1-2x-x^2-3x^3-2x^5-2x^6+2x^7))` -/
def P4486144038711897897.Spec : Prop :=
  ∀ n, P4486144038711897897.a n = A218843 (n + 1)

theorem P4486144038711897897.correct : P4486144038711897897.Spec := by
  intro n
  simp only [A218843, Nat.add_sub_cancel]

end A218843

/-! ## A218843.P14632658449692515172

`A218842(∑[n+1]+2)`
-/

namespace A218843.P14632658449692515172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218843.P14632658449692515172

namespace A218843

/-- `A218842(∑[n+1]+2)` -/
def P14632658449692515172.Spec : Prop :=
  ∀ n, P14632658449692515172.a n = A218843 (n + 1)

end A218843

/-! ## A218843.P10198991387129843751

`record[ratio[A218842(A080036(n))]]`
-/

namespace A218843.P10198991387129843751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218843.P10198991387129843751

namespace A218843

/-- `record[ratio[A218842(A080036(n))]]` -/
def P10198991387129843751.Spec : Prop :=
  ∀ n, P10198991387129843751.a n = (A218843 (n + 1) : ℚ)

end A218843

/-! ## A218843.P18012303319876087547

`record[gcd(A097230(n), A218842(n+1))]`
-/

namespace A218843.P18012303319876087547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A218842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218843.P18012303319876087547

namespace A218843

/-- `record[gcd(A097230(n), A218842(n+1))]` -/
def P18012303319876087547.Spec : Prop :=
  ∀ n, (P18012303319876087547.a n : ℤ) = A218843 (n + 1)

end A218843

/-! ## A218843.P9722462759913177546

`record[gcd(A218842(n+2), A341856(n))]`
-/

namespace A218843.P9722462759913177546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218842 (n + 2)) (A341856 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218843.P9722462759913177546

namespace A218843

/-- `record[gcd(A218842(n+2), A341856(n))]` -/
def P9722462759913177546.Spec : Prop :=
  ∀ n, (P9722462759913177546.a n : ℤ) = A218843 (n + 1)

end A218843

/-!
# A218844: Unmatched value maps: number of 3Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 3Xn array.

The programs for A218844, there is no canonical definition to state claims against.
-/

/-! ## A218844.P18092407258858656654

`A218842(∑[n+2]+4)`
-/

namespace A218844.P18092407258858656654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218844.P18092407258858656654

/-!
# A218845: Unmatched value maps: number of 4Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 4Xn array.

The programs for A218845, there is no canonical definition to state claims against.
-/

/-! ## A218845.P347705885921498033

`A218842(∑[n+3]+7)`
-/

namespace A218845.P347705885921498033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218845.P347705885921498033

/-!
# A218846: Unmatched value maps: number of 5Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 5Xn array.

The programs for A218846, there is no canonical definition to state claims against.
-/

/-! ## A218846.P18094060701955154882

`A218842(A155212(n)+13)`
-/

namespace A218846.P18094060701955154882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A155212 n + 13).toNat

end

end A218846.P18094060701955154882

/-!
# A218847: Unmatched value maps: number of 6Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 6Xn array.

The programs for A218847, there is no canonical definition to state claims against.
-/

/-! ## A218847.P7519329190319126190

`A218842(A056115(n)+21)`
-/

namespace A218847.P7519329190319126190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A056115 n + 21).toNat

end

end A218847.P7519329190319126190

/-!
# A218848: Unmatched value maps: number of 7Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..1 7Xn array.

The programs for A218848, there is no canonical definition to state claims against.
-/

/-! ## A218848.P5571199740520478108

`A218842(A167487(n+5))`
-/

namespace A218848.P5571199740520478108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (A167487 (n + 5)).toNat

end

end A218848.P5571199740520478108

/-!
# A218851: a(n) = 2*floor((n + sin(n)/(2*sin(1/2))) * log(n)) + 1.

The programs for A218851, the canonical program `A218851.P16703552172337455806` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218851 has offset 1).

The definition of A218851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor((n+1+sin(n+1)/(2*sin(1/2)))*log(n+1))+1` (program `A218851.P16703552172337455806`, by `A218851.P16703552172337455806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218851.P16703552172337455806

`2*floor((n+1+sin(n+1)/(2*sin(1/2)))*log(n+1))+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218851

/-- `2*floor((n+1+sin(n+1)/(2*sin(1/2)))*log(n+1))+1` -/
def P16703552172337455806.Spec : Prop :=
  ∀ n, P16703552172337455806.a n = A218851 (n + 1)

theorem P16703552172337455806.correct : P16703552172337455806.Spec := by
  intro n
  simp only [A218851, Nat.add_sub_cancel]

end A218851

/-! ## A218851.P1774179974587150886

`∑[A329504(∑[A246104(n)])]`
-/

namespace A218851.P1774179974587150886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218851.P1774179974587150886

namespace A218851

/-- `∑[A329504(∑[A246104(n)])]` -/
def P1774179974587150886.Spec : Prop :=
  ∀ n, P1774179974587150886.a n = A218851 (n + 1)

end A218851

/-! ## A218851.P4711389702758941026

`record[∑[A080965(A275728(n))]]`
-/

namespace A218851.P4711389702758941026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080965 (A275728 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218851.P4711389702758941026

namespace A218851

/-- `record[∑[A080965(A275728(n))]]` -/
def P4711389702758941026.Spec : Prop :=
  ∀ n, P4711389702758941026.a n = A218851 (n + 1)

end A218851

/-! ## A218851.P11390097908528083717

`∑[A070437(record[A293808(n)])]`
-/

namespace A218851.P11390097908528083717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070437 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218851.P11390097908528083717

namespace A218851

/-- `∑[A070437(record[A293808(n)])]` -/
def P11390097908528083717.Spec : Prop :=
  ∀ n, P11390097908528083717.a n = A218851 (n + 1)

end A218851

/-! ## A218851.P15694373120400463133

`∑[A001227(A004575(n+1)*A094386(n+1))]`
-/

namespace A218851.P15694373120400463133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A004575 (n + 1) * A094386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218851.P15694373120400463133

namespace A218851

/-- `∑[A001227(A004575(n+1)*A094386(n+1))]` -/
def P15694373120400463133.Spec : Prop :=
  ∀ n, P15694373120400463133.a n = A218851 (n + 1)

end A218851

/-!
# A218852: Numbers n for which sigma(n) = sigma(x) + sigma(y) + sigma(z), where n = x + y + z, with x, y, z all positive.

The programs for A218852, there is no canonical definition to state claims against.
-/

/-! ## A218852.P12821164200714701845

`eq[char[A218980(n+1)], A151933(n)]`
-/

namespace A218852.P12821164200714701845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A218852.P12821164200714701845

/-! ## A218852.P13980288992692893773

`eq[char[A218980(n+1)], A151622(n)]`
-/

namespace A218852.P13980288992692893773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A218852.P13980288992692893773

/-!
# A218853: Triangle read by rows, coefficients of the Bernoulli polynomials B_{n}(x) times A144845(n) in increasing powers.

The programs for A218853, there is no canonical definition to state claims against.
-/

/-! ## A218853.P16249788828426221611

`A213615(A061579(n))`
-/

namespace A218853.P16249788828426221611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213615 (A061579 n).toNat

end

end A218853.P16249788828426221611

/-!
# A218858: Number of Gaussian primes at taxicab distance n from the origin.

The programs for A218858, there is no canonical definition to state claims against.
-/

/-! ## A218858.P5024109631829139172

`4*A218859(n)`
-/

namespace A218858.P5024109631829139172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A218859 n

end

end A218858.P5024109631829139172

/-! ## A218858.P3530216193350498197

`A008586(A218859(n))`
-/

namespace A218858.P3530216193350498197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A218859 n).toNat

end

end A218858.P3530216193350498197

/-! ## A218858.P421332783769658105

`A218859(n)/(1/A280560(n))²`
-/

namespace A218858.P421332783769658105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218859 n : ℚ) / (1 / (A280560 n : ℚ)) ^ 2

end

end A218858.P421332783769658105

/-! ## A218858.P3127555196012710636

`A005843(A218859(n)+A218859(n))`
-/

namespace A218858.P3127555196012710636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A218859 n + A218859 n).toNat

end

end A218858.P3127555196012710636

/-!
# A218859: A218858/4.

The programs for A218859, there is no canonical definition to state claims against.
-/

/-! ## A218859.P4378863797150060013

`A218858(n)/4`
-/

namespace A218859.P4378863797150060013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218858 n : ℚ) / 4

end

end A218859.P4378863797150060013

/-! ## A218859.P14767591198822938111

`A002265(A218858(n))`
-/

namespace A218859.P14767591198822938111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A218858 n).toNat

end

end A218859.P14767591198822938111

/-! ## A218859.P11001408348716007384

`A025480(A218858(n)+1)`
-/

namespace A218859.P11001408348716007384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A218858 n + 1).toNat

end

end A218859.P11001408348716007384

/-! ## A218859.P621706014579625717

`A051724(3*A218858(n))`
-/

namespace A218859.P621706014579625717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A218858 n).toNat

end

end A218859.P621706014579625717

/-!
# A218860: Unique integers appearing in A066135, in order of appearance.

The programs for A218860, there is no canonical definition to state claims against.
-/

/-! ## A218860.P5341728785884052991

`A066135(A218861(1+n))`
-/

namespace A218860.P5341728785884052991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A218861 (1 + n)).toNat

end

end A218860.P5341728785884052991

/-! ## A218860.P2050094477299795551

`record[A066135(A054582(n))]`
-/

namespace A218860.P2050094477299795551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A054582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218860.P2050094477299795551

/-! ## A218860.P4139374545979934242

`record[A066135(A275632(n))]`
-/

namespace A218860.P4139374545979934242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A275632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218860.P4139374545979934242

/-! ## A218860.P15515958429133844710

`record[A066135(A325326(n+1))]`
-/

namespace A218860.P15515958429133844710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A325326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218860.P15515958429133844710

/-! ## A218860.P14643959920571868165

`record[A066135(A071574(n+2))]`
-/

namespace A218860.P14643959920571868165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A071574 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218860.P14643959920571868165

/-!
# A218861: First position of A218860(n) in A066135.

The programs for A218861, there is no canonical definition to state claims against.
-/

/-! ## A218861.P16293721771519314584

`∏[A325273(A033844(n))]`
-/

namespace A218861.P16293721771519314584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A033844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218861.P16293721771519314584

/-! ## A218861.P12431155860309415476

`record[A004184(∏[A255350(n)])]`
-/

namespace A218861.P12431155860309415476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218861.P12431155860309415476

/-! ## A218861.P11061166340210414874

`∏[A001221(A180169(n))+1]`
-/

namespace A218861.P11061166340210414874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A180169 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218861.P11061166340210414874

/-! ## A218861.P1635164419484522969

`∏[A332297(A048640(n+1))]`
-/

namespace A218861.P1635164419484522969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332297 (A048640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218861.P1635164419484522969

/-! ## A218861.P8303317864003964358

`∏[A278744(∑[A167546(n+1)])]`
-/

namespace A218861.P8303317864003964358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278744 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218861.P8303317864003964358

/-!
# A218864: Numbers of the form 9*k^2 + 8*k, k an integer.

The programs for A218864, the canonical program `A218864.P11699251690875183733` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218864 has offset 1).

The definition of A218864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218864.P12853093120964680019

`ogf((x+16x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A218864.P12853093120964680019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 16, 1] [1, -1, -2, 2, 1, -1] n

end

end A218864.P12853093120964680019

namespace A218864

/-- `ogf((x+16x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P12853093120964680019.Spec : Prop :=
  ∀ n, P12853093120964680019.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P11699251690875183733

`(18*(n+1)*n-7*(-1)^(n+1)*(2*(n+1)-1)-7)/8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218864

/-- `(18*(n+1)*n-7*(-1)^(n+1)*(2*(n+1)-1)-7)/8` -/
def P11699251690875183733.Spec : Prop :=
  ∀ n, P11699251690875183733.a n = (A218864 (n + 1) : ℚ)

end A218864

/-! ## A218864.P1520935473618519347

`∑[gcd(2, n)^3*n]`
-/

namespace A218864.P1520935473618519347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P1520935473618519347

namespace A218864

/-- `∑[gcd(2, n)^3*n]` -/
def P1520935473618519347.Spec : Prop :=
  ∀ n, (P1520935473618519347.a n : ℤ) = A218864 (n + 1)

end A218864

/-! ## A218864.P5132431828768702982

`∑[gcd(8, n%2)*n]`
-/

namespace A218864.P5132431828768702982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (n % 2) * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P5132431828768702982

namespace A218864

/-- `∑[gcd(8, n%2)*n]` -/
def P5132431828768702982.Spec : Prop :=
  ∀ n, (P5132431828768702982.a n : ℤ) = A218864 (n + 1)

end A218864

/-! ## A218864.P8255814784715763176

`∑[8^((n+1)%2)*n]`
-/

namespace A218864.P8255814784715763176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ ((n + 1) % 2) * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P8255814784715763176

namespace A218864

/-- `∑[8^((n+1)%2)*n]` -/
def P8255814784715763176.Spec : Prop :=
  ∀ n, (P8255814784715763176.a n : ℤ) = A218864 (n + 1)

end A218864

/-! ## A218864.P1264254618862945720

`∑[n*∏[1/a(n-1)]]` with `a(0)=8`
-/

namespace A218864.P1264254618862945720
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f2 =>
  1 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P1264254618862945720

namespace A218864

/-- `∑[n*∏[1/a(n-1)]]` -/
def P1264254618862945720.Spec : Prop :=
  ∀ n, P1264254618862945720.a n = (A218864 (n + 1) : ℚ)

end A218864

/-! ## A218864.P8679474830327661803

`∑[gcd(2*n*(n+2)², n²²)]`
-/

namespace A218864.P8679474830327661803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n * (n + 2) ^ 2) ((n ^ 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P8679474830327661803

namespace A218864

/-- `∑[gcd(2*n*(n+2)², n²²)]` -/
def P8679474830327661803.Spec : Prop :=
  ∀ n, (P8679474830327661803.a n : ℤ) = A218864 (n + 1)

end A218864

/-! ## A218864.P112073820376311947

`∑[n*∑[-a(n-1)]]+∑[n]` with `a(0)=7`
-/

namespace A218864.P112073820376311947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A218864.P112073820376311947

namespace A218864

/-- `∑[n*∑[-a(n-1)]]+∑[n]` -/
def P112073820376311947.Spec : Prop :=
  ∀ n, P112073820376311947.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P6002296711496507342

`∑[A317316(n)]`
-/

namespace A218864.P6002296711496507342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P6002296711496507342

namespace A218864

/-- `∑[A317316(n)]` -/
def P6002296711496507342.Spec : Prop :=
  ∀ n, P6002296711496507342.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P8770910037997126718

`∑[n*A040019(n)]`
-/

namespace A218864.P8770910037997126718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218864.P8770910037997126718

namespace A218864

/-- `∑[n*A040019(n)]` -/
def P8770910037997126718.Spec : Prop :=
  ∀ n, P8770910037997126718.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P3859470447004663756

`A266956(n+1)-1`
-/

namespace A218864.P3859470447004663756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266956 (n + 1) - 1

end

end A218864.P3859470447004663756

namespace A218864

/-- `A266956(n+1)-1` -/
def P3859470447004663756.Spec : Prop :=
  ∀ n, P3859470447004663756.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P4327189966511443956

`2*A195313(n)-∑[n]`
-/

namespace A218864.P4327189966511443956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195313 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A218864.P4327189966511443956

namespace A218864

/-- `2*A195313(n)-∑[n]` -/
def P4327189966511443956.Spec : Prop :=
  ∀ n, P4327189966511443956.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P2515281922639355700

`A195147(n)-a(n-1)` with `a(0)=0`
-/

namespace A218864.P2515281922639355700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195147 n - a (n - 1)

end

end A218864.P2515281922639355700

namespace A218864

/-- `A195147(n)-a(n-1)` -/
def P2515281922639355700.Spec : Prop :=
  ∀ n, P2515281922639355700.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P1610128206922606640

`A303299(n)-A110660(n)`
-/

namespace A218864.P1610128206922606640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303299 n - A110660 n

end

end A218864.P1610128206922606640

namespace A218864

/-- `A303299(n)-A110660(n)` -/
def P1610128206922606640.Spec : Prop :=
  ∀ n, P1610128206922606640.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P10793159943781159842

`A027468(n)-A394829(n)`
-/

namespace A218864.P10793159943781159842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n - A394829 n

end

end A218864.P10793159943781159842

namespace A218864

/-- `A027468(n)-A394829(n)` -/
def P10793159943781159842.Spec : Prop :=
  ∀ n, P10793159943781159842.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P17441541651289176501

`A274979(n+1)+A110660(n)`
-/

namespace A218864.P17441541651289176501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (n + 1) + A110660 n

end

end A218864.P17441541651289176501

namespace A218864

/-- `A274979(n+1)+A110660(n)` -/
def P17441541651289176501.Spec : Prop :=
  ∀ n, P17441541651289176501.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P18348273263112519342

`A266958(n+1)+A157142(n)`
-/

namespace A218864.P18348273263112519342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266958 (n + 1) + A157142 n

end

end A218864.P18348273263112519342

namespace A218864

/-- `A266958(n+1)+A157142(n)` -/
def P18348273263112519342.Spec : Prop :=
  ∀ n, P18348273263112519342.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P1356092476252042888

`A124080(n)-A219257(n+1)`
-/

namespace A218864.P1356092476252042888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - A219257 (n + 1)

end

end A218864.P1356092476252042888

namespace A218864

/-- `A124080(n)-A219257(n+1)` -/
def P1356092476252042888.Spec : Prop :=
  ∀ n, P1356092476252042888.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P4281697903331825438

`2*A277082(n)-A074377(n)`
-/

namespace A218864.P4281697903331825438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A074377 n

end

end A218864.P4281697903331825438

namespace A218864

/-- `2*A277082(n)-A074377(n)` -/
def P4281697903331825438.Spec : Prop :=
  ∀ n, P4281697903331825438.a n = A218864 (n + 1)

end A218864

/-! ## A218864.P13197384883671514334

`2*A074377(n)-A317300(n)`
-/

namespace A218864.P13197384883671514334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074377 n - A317300 n

end

end A218864.P13197384883671514334

namespace A218864

/-- `2*A074377(n)-A317300(n)` -/
def P13197384883671514334.Spec : Prop :=
  ∀ n, P13197384883671514334.a n = A218864 (n + 1)

end A218864

/-!
# A218866: Numbers produced from the numbers 2 and 3, using hyper operators.

The programs for A218866, there is no canonical definition to state claims against.
-/

/-! ## A218866.P11257151219893840969

`∪[A054871(n+1), A067652(n+1)]`
-/

namespace A218866.P11257151219893840969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218866.P11257151219893840969

/-! ## A218866.P2891329216909193464

`∪[A067652(n+1), A054871(A203814(n))]`
-/

namespace A218866.P2891329216909193464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054871 (A203814 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218866.P2891329216909193464

/-! ## A218866.P9841976984536910808

`∪[A067652(n+1), A054871(A275010(n))]`
-/

namespace A218866.P9841976984536910808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054871 (A275010 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A218866.P9841976984536910808

/-!
# A218867: Number of prime pairs {p,q} with p>q and {p-4,q+4} also prime such that p+(1+(n mod 6))q=n if n is not congruent to 4 (mod 6), and p-q=n and q<n/2 if n=4 (mod 6).

The programs for A218867, there is no canonical definition to state claims against.
-/

/-! ## A218867.P17720333266763787369

`A267417(2*A234950(n))`
-/

namespace A218867.P17720333266763787369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (2 * A234950 n).toNat

end

end A218867.P17720333266763787369

/-! ## A218867.P1286942030633039776

`A011744(A024786(n+1)+3)`
-/

namespace A218867.P1286942030633039776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011744 (A024786 (n + 1) + 3).toNat

end

end A218867.P1286942030633039776

/-! ## A218867.P4071426319829337347

`A269518((n+2)*A326636(n))`
-/

namespace A218867.P4071426319829337347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 ((n + 2 : ℤ) * A326636 n).toNat

end

end A218867.P4071426319829337347

/-! ## A218867.P556245422768159001

`and(A011747(n), A123627(A000009(n)))`
-/

namespace A218867.P556245422768159001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011747 n) (A123627 (A000009 n).toNat)

end

end A218867.P556245422768159001

/-! ## A218867.P16383066198303340670

`A005089(or(A029123(n), A301331(n)))`
-/

namespace A218867.P16383066198303340670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (Int.lor (A029123 n) (A301331 n)).toNat

end

end A218867.P16383066198303340670

/-!
# A218869: Triangle read by rows: T(n,k) = number of aperiodic binary sequences of length n with curling number k (1 <= k <= n).

The programs for A218869, there is no canonical definition to state claims against.
-/

/-! ## A218869.P13924711508082072299

`A218876(n+1)+A218875(n+1)`
-/

namespace A218869.P13924711508082072299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (n + 1) + A218875 (n + 1)

end

end A218869.P13924711508082072299

/-! ## A218869.P3011805892713214671

`A218875(n+1)+A002088(n)%A000010(A060438(n+1))`
-/

namespace A218869.P3011805892713214671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218875 (n + 1) + Int.tmod (A002088 n) (A000010 (A060438 (n + 1)).toNat)

end

end A218869.P3011805892713214671

/-! ## A218869.P1533804495929901465

`A218875(n+1)+A004524(A276422(n)%A060438(n+1))`
-/

namespace A218869.P1533804495929901465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218875 (n + 1) + A004524 (Int.tmod (A276422 n) (A060438 (n + 1))).toNat

end

end A218869.P1533804495929901465

/-! ## A218869.P8862767950325067862

`A218875(n+1)+A055999(A090609(n+1))%A090623(n+2)`
-/

namespace A218869.P8862767950325067862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218875 (n + 1) + Int.tmod (A055999 (A090609 (n + 1)).toNat) (A090623 (n + 2))

end

end A218869.P8862767950325067862

/-! ## A218869.P12092524897194929194

`A218875(n+1)+A057393(n)%A193805(n+1)`
-/

namespace A218869.P12092524897194929194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218875 (n + 1) + Int.tmod (A057393 n) (A193805 (n + 1))

end

end A218869.P12092524897194929194

/-!
# A218871: Second column of A218869.

The programs for A218871, there is no canonical definition to state claims against.
-/

/-! ## A218871.P8521239468039070116

`A218869(2+∑[n+1])`
-/

namespace A218871.P8521239468039070116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218871.P8521239468039070116

/-! ## A218871.P7581423824857822523

`record[A218869(gcd(3, n)+n)]`
-/

namespace A218871.P7581423824857822523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (Nat.gcd 3 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218871.P7581423824857822523

/-! ## A218871.P14262562220655501935

`record[A218869(A274430(n+1))]`
-/

namespace A218871.P14262562220655501935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (A274430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218871.P14262562220655501935

/-! ## A218871.P11279679851730615871

`record[A002262(n)*A218869(n+1)]`
-/

namespace A218871.P11279679851730615871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A218869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218871.P11279679851730615871

/-! ## A218871.P7774995344654747485

`record[Δ[A218870(n+1)]]`
-/

namespace A218871.P7774995344654747485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218871.P7774995344654747485

/-!
# A218873: Denominator of Sum_{i = Fibonacci(n-1)+1..Fibonacci(n)} 1/i.

The programs for A218873, there is no canonical definition to state claims against.
-/

/-! ## A218873.P6847616626162884295

`A116417(Δ[A000301(n)])`
-/

namespace A218873.P6847616626162884295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (f1 (n + 1) - f1 n).toNat

end

end A218873.P6847616626162884295

/-! ## A218873.P12587749558032953512

`A271410(Δ[A000301(n)])`
-/

namespace A218873.P12587749558032953512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (f1 (n + 1) - f1 n).toNat

end

end A218873.P12587749558032953512

/-!
# A218874: (A122536(n)-A003000(n))/2.

The programs for A218874, there is no canonical definition to state claims against.
-/

/-! ## A218874.P14830471329118463798

`(A122536(n+1)-A003000(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218874.P14830471329118463798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) - A003000 (n + 1) : ℚ) / 2

end

end A218874.P14830471329118463798

/-! ## A218874.P14542754013182456106

`A122536(n+1)/2-A045690(n+1)`
-/

namespace A218874.P14542754013182456106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) : ℚ) / 2 - (A045690 (n + 1) : ℚ)

end

end A218874.P14542754013182456106

/-! ## A218874.P15112621119028856720

`(A094536(n+1)-A121880(n+1))/2`
-/

namespace A218874.P15112621119028856720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094536 (n + 1) - A121880 (n + 1) : ℚ) / 2

end

end A218874.P15112621119028856720

/-! ## A218874.P5531647427132105344

`A094537(n+1)-(2^n-A122536(n+1)/2)`
-/

namespace A218874.P5531647427132105344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094537 (n + 1) : ℚ) - ((2 ^ n : ℚ) - (A122536 (n + 1) : ℚ) / 2)

end

end A218874.P5531647427132105344

/-! ## A218874.P11036928029940123732

`(2^(n+1)-A121880(n+1))/2-A045690(n+1)`
-/

namespace A218874.P11036928029940123732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A121880 (n + 1) : ℚ) / 2 - (A045690 (n + 1) : ℚ)

end

end A218874.P11036928029940123732

/-!
# A218875: Triangle read by rows: T(n,k) (1 <= k <= n) = number of robust primitive binary sequences of length n and curling number k.

The programs for A218875, there is no canonical definition to state claims against.
-/

/-! ## A218875.P13707847362337883988

`A218869(n+1)-A218876(n+1)`
-/

namespace A218875.P13707847362337883988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (n + 1) - A218876 (n + 1)

end

end A218875.P13707847362337883988

/-! ## A218875.P6247974349744758423

`A218869(n+1)+A218876(n+1)*A260196(n)`
-/

namespace A218875.P6247974349744758423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (n + 1) + A218876 (n + 1) * A260196 n

end

end A218875.P6247974349744758423

/-! ## A218875.P16119515689510264410

`A218869(n+1)-A002088(n)%A000010(A060438(n+1))`
-/

namespace A218875.P16119515689510264410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (n + 1) - Int.tmod (A002088 n) (A000010 (A060438 (n + 1)).toNat)

end

end A218875.P16119515689510264410

/-! ## A218875.P9839309807716181706

`A218869(n+1)-A004524(A276422(n)%A060438(n+1))`
-/

namespace A218875.P9839309807716181706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (n + 1) - A004524 (Int.tmod (A276422 n) (A060438 (n + 1))).toNat

end

end A218875.P9839309807716181706

/-! ## A218875.P13330401797162180491

`A218869(n+1)-A057393(n)%A193805(n+1)`
-/

namespace A218875.P13330401797162180491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (n + 1) - Int.tmod (A057393 n) (A193805 (n + 1))

end

end A218875.P13330401797162180491

/-!
# A218876: Triangle read by rows: T(n,k) (1 <= k <= n) = number of non-robust primitive binary sequences of length n and curling number k.

The programs for A218876, there is no canonical definition to state claims against.
-/

/-! ## A218876.P14486195148069981827

`A218869(1+n)-A218875(n+1)`
-/

namespace A218876.P14486195148069981827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218869 (1 + n) - A218875 (n + 1)

end

end A218876.P14486195148069981827

/-! ## A218876.P9965256011631155786

`A218869(n+1)%A028310(A218875(n+1))`
-/

namespace A218876.P9965256011631155786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218869 (n + 1)) (A028310 (A218875 (n + 1)).toNat)

end

end A218876.P9965256011631155786

/-! ## A218876.P15424477574424388193

`and(A264403(n), A298026(A175840(n)))`
-/

namespace A218876.P15424477574424388193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264403 n) (A298026 (A175840 n).toNat)

end

end A218876.P15424477574424388193

/-! ## A218876.P11714914691874617538

`A002088(n)%A000010(A060438(n+1))`
-/

namespace A218876.P11714914691874617538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002088 n) (A000010 (A060438 (n + 1)).toNat)

end

end A218876.P11714914691874617538

/-! ## A218876.P6324608895766646546

`A004524(A276422(n)%A060438(n+1))`
-/

namespace A218876.P6324608895766646546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.tmod (A276422 n) (A060438 (n + 1))).toNat

end

end A218876.P6324608895766646546

/-!
# A218878: Number of components of the poset Sigma(n) arising from classification of primitive integral triangles with rectangular defect n.

The programs for A218878, there is no canonical definition to state claims against.
-/

/-! ## A218878.P11682278502407862402

`A353376(n+1)+A353374(A163876(n))`
-/

namespace A218878.P11682278502407862402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (n + 1) + A353374 (A163876 n).toNat

end

end A218878.P11682278502407862402

/-! ## A218878.P11996823755941686208

`A285898(A239934(n+1))+A000188(n+1)`
-/

namespace A218878.P11996823755941686208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285898 (A239934 (n + 1)).toNat + A000188 (n + 1)

end

end A218878.P11996823755941686208

/-! ## A218878.P3873038032592390633

`A342007(lcm(A068601(n+2), A178400(n+1)))`
-/

namespace A218878.P3873038032592390633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (Int.lcm (A068601 (n + 2)) (A178400 (n + 1)))

end

end A218878.P3873038032592390633

/-! ## A218878.P12685787481065147900

`A374629(A260665(n+1))`
-/

namespace A218878.P12685787481065147900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (A260665 (n + 1)).toNat

end

end A218878.P12685787481065147900

/-! ## A218878.P13678382570274124885

`A333381(A342844(n+1))`
-/

namespace A218878.P13678382570274124885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A342844 (n + 1)).toNat

end

end A218878.P13678382570274124885

/-!
# A218882: Number of snarks of order 2n with circumference 2n-2.

The programs for A218882, there is no canonical definition to state claims against.
-/

/-! ## A218882.P7361371787075482953

`floor(A305351(n+3)/3)`
-/

namespace A218882.P7361371787075482953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305351 (n + 3) : ℚ) / 3⌋

end

end A218882.P7361371787075482953

/-! ## A218882.P18158520199672777792

`A237050(A375621(n+1))`
-/

namespace A218882.P18158520199672777792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237050 (A375621 (n + 1)).toNat

end

end A218882.P18158520199672777792

/-! ## A218882.P10064662892774043404

`A320797(A308858(n))-1`
-/

namespace A218882.P10064662892774043404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 (A308858 n).toNat - 1

end

end A218882.P10064662892774043404

/-! ## A218882.P3398416193608067545

`A025686(2^A326529(n))`
-/

namespace A218882.P3398416193608067545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326529 n : ℤ))).toNat

end

end A218882.P3398416193608067545

/-!
# A218883: Number of snarks of order 2n with a maximum of 2 odd components in any 2-factor.

The programs for A218883, there is no canonical definition to state claims against.
-/

/-! ## A218883.P429690708838940279

`A130315(n+1)-A218884(A005496(n))`
-/

namespace A218883.P429690708838940279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (n + 1) - A218884 (A005496 n).toNat

end

end A218883.P429690708838940279

/-! ## A218883.P9431676619043487986

`A130315(A032950(n+1))-A218884(n+1)`
-/

namespace A218883.P9431676619043487986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (A032950 (n + 1)).toNat - A218884 (n + 1)

end

end A218883.P9431676619043487986

/-! ## A218883.P134713347726921843

`A130315(A043320(n+1))-A218884(n+1)`
-/

namespace A218883.P134713347726921843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (A043320 (n + 1)).toNat - A218884 (n + 1)

end

end A218883.P134713347726921843

/-! ## A218883.P15197870389893617988

`A130315(n+1)-A218884(A187829(n+1))`
-/

namespace A218883.P15197870389893617988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (n + 1) - A218884 (A187829 (n + 1)).toNat

end

end A218883.P15197870389893617988

/-! ## A218883.P15220929037472438320

`A130315(n+1)-A218884(A309127(n+1))`
-/

namespace A218883.P15220929037472438320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (n + 1) - A218884 (A309127 (n + 1)).toNat

end

end A218883.P15220929037472438320

/-!
# A218884: Number of snarks of order 2n with a maximum of 4 odd components in any 2-factor.

The programs for A218884, there is no canonical definition to state claims against.
-/

/-! ## A218884.P13354140388906424464

`A130315(n+1)-A218883(A005496(n))`
-/

namespace A218884.P13354140388906424464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (n + 1) - A218883 (A005496 n).toNat

end

end A218884.P13354140388906424464

/-! ## A218884.P16952741828215510431

`A130315(A032950(n+1))-A218883(n+1)`
-/

namespace A218884.P16952741828215510431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (A032950 (n + 1)).toNat - A218883 (n + 1)

end

end A218884.P16952741828215510431

/-! ## A218884.P1997819303285901847

`A130315(A043320(n+1))-A218883(n+1)`
-/

namespace A218884.P1997819303285901847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (A043320 (n + 1)).toNat - A218883 (n + 1)

end

end A218884.P1997819303285901847

/-! ## A218884.P1897426822464648006

`A130315(n+1)-A218883(A187829(n+1))`
-/

namespace A218884.P1897426822464648006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (n + 1) - A218883 (A187829 (n + 1)).toNat

end

end A218884.P1897426822464648006

/-! ## A218884.P14371438530819874384

`A130315(n+1)-A218883(A309127(n+1))`
-/

namespace A218884.P14371438530819874384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130315 (n + 1) - A218883 (A309127 (n + 1)).toNat

end

end A218884.P14371438530819874384

/-!
# A218885: Number of snarks of order 2n with a maximum of 3 components in any 2-factor.

The programs for A218885, there is no canonical definition to state claims against.
-/

/-! ## A218885.P6999481078349937992

`A018016(A072222(n))%A147286(n+1)`
-/

namespace A218885.P6999481078349937992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018016 (A072222 n).toNat) (A147286 (n + 1))

end

end A218885.P6999481078349937992

/-!
# A218886: Number of snarks of order 2n with a maximum of 4 components in any 2-factor.

The programs for A218886, there is no canonical definition to state claims against.
-/

/-! ## A218886.P15815080707769362634

`A341450(∏[floor(n^(1/3))!])`
-/

namespace A218886.P15815080707769362634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A218886.P15815080707769362634

/-!
# A218887: Number of snarks of order 2n with a maximum of 5 components in any 2-factor.

The programs for A218887, there is no canonical definition to state claims against.
-/

/-! ## A218887.P13430628943994912232

`A130444(C(n, 12)+1)`
-/

namespace A218887.P13430628943994912232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130444 (Nat.choose n 12 + 1)

end

end A218887.P13430628943994912232

/-! ## A218887.P10742445909342022588

`A063543(A185254(n)+2)`
-/

namespace A218887.P10742445909342022588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063543 (A185254 n + 2).toNat

end

end A218887.P10742445909342022588

/-! ## A218887.P13721775554462633068

`A337680(7^A283001(n))`
-/

namespace A218887.P13721775554462633068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337680 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A283001 n : ℤ))).toNat

end

end A218887.P13721775554462633068

/-! ## A218887.P321014875532144098

`A319720(∑{digits}[n, #]²*A185264(2*n+3))`
-/

namespace A218887.P321014875532144098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) * A185264 (2 * n + 3)).toNat

end

end A218887.P321014875532144098

/-! ## A218887.P2174861148356419816

`A355225(A018252(A355158(A002095(A000607(n+1)))))`
-/

namespace A218887.P2174861148356419816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355225 (A018252 (A355158 (A002095 (A000607 (n + 1)).toNat).toNat).toNat).toNat

end

end A218887.P2174861148356419816

/-!
# A218888: Number of cyclically 4-edge-connected cubic graphs on 2n nodes with total chromatic number 5.

The programs for A218888, there is no canonical definition to state claims against.
-/

/-! ## A218888.P10812454584901038803

`A060511(round(∑[A020084(n)+1]/3))`
-/

namespace A218888.P10812454584901038803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020084 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)).toNat

end

end A218888.P10812454584901038803

/-! ## A218888.P10783083971217633263

`A003754(A000248(n))%A141532(n)`
-/

namespace A218888.P10783083971217633263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003754 (A000248 n).toNat) (A141532 n)

end

end A218888.P10783083971217633263

/-! ## A218888.P1430202677964381258

`A218135(n)%A066657(A084152(n))`
-/

namespace A218888.P1430202677964381258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218135 n) (A066657 (A084152 n).toNat)

end

end A218888.P1430202677964381258

/-! ## A218888.P11969776678033982780

`A054639(A267088(n+1))%A007476(n)`
-/

namespace A218888.P11969776678033982780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054639 (A267088 (n + 1)).toNat) (A007476 n)

end

end A218888.P11969776678033982780

/-! ## A218888.P10043442585302683092

`A323131(A191739(n+2))%A007476(n)`
-/

namespace A218888.P10043442585302683092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323131 (A191739 (n + 2)).toNat) (A007476 n)

end

end A218888.P10043442585302683092

/-!
# A218889: The size of the smallest known n-multimagic square.

The programs for A218889, there is no canonical definition to state claims against.
-/

/-! ## A218889.P12866187968679222574

`record[A181843(n+5)^A281446(n)]`
-/

namespace A218889.P12866187968679222574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181843 (n + 5) : ℚ) ^ (A281446 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218889.P12866187968679222574

/-!
# A218890: T(n,k) = ((n + k - 1)*(n + k - 2) - (-1 + (-1)^floor((n + k)/2))*n + (1 +(-1)^floor((n + k)/2))*k)/2; n , k > 0, read by antidiagonals.

The programs for A218890, the canonical program `A218890.P1523300545513830515` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218890 has offset 1).

The definition of A218890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218890.P1523300545513830515

`A038722(n+1)-A114327(n*A204269(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218890

/-- `A038722(n+1)-A114327(n*A204269(n+1))` -/
def P1523300545513830515.Spec : Prop :=
  ∀ n, P1523300545513830515.a n = A218890 (n + 1)

theorem P1523300545513830515.correct : P1523300545513830515.Spec := by
  intro n
  simp only [A218890, Nat.add_sub_cancel]

end A218890

/-! ## A218890.P6952144183249902830

`A093995(n+1)-n-A114327(n)*A204269(n+1)`
-/

namespace A218890.P6952144183249902830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - (n : ℤ) - A114327 n * A204269 (n + 1)

end

end A218890.P6952144183249902830

namespace A218890

/-- `A093995(n+1)-n-A114327(n)*A204269(n+1)` -/
def P6952144183249902830.Spec : Prop :=
  ∀ n, P6952144183249902830.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P1184132010681324066

`A286098(n)+A099026(n)+1-A114327(n)*A204269(n+1)`
-/

namespace A218890.P1184132010681324066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + A099026 n + 1 - A114327 n * A204269 (n + 1)

end

end A218890.P1184132010681324066

namespace A218890

/-- `A286098(n)+A099026(n)+1-A114327(n)*A204269(n+1)` -/
def P1184132010681324066.Spec : Prop :=
  ∀ n, P1184132010681324066.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P10264067566873626962

`A057028(A176988(n))`
-/

namespace A218890.P10264067566873626962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A176988 n).toNat

end

end A218890.P10264067566873626962

namespace A218890

/-- `A057028(A176988(n))` -/
def P10264067566873626962.Spec : Prop :=
  ∀ n, P10264067566873626962.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P16409816890749108009

`A209278(A176988(n))+A057944(n)`
-/

namespace A218890.P16409816890749108009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A176988 n).toNat + A057944 n

end

end A218890.P16409816890749108009

namespace A218890

/-- `A209278(A176988(n))+A057944(n)` -/
def P16409816890749108009.Spec : Prop :=
  ∀ n, P16409816890749108009.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P12453511490648075763

`A057027(A265129(n+1)-A176988(n))`
-/

namespace A218890.P12453511490648075763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A265129 (n + 1) - A176988 n).toNat

end

end A218890.P12453511490648075763

namespace A218890

/-- `A057027(A265129(n+1)-A176988(n))` -/
def P12453511490648075763.Spec : Prop :=
  ∀ n, P12453511490648075763.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P1162089605564432959

`A209278(A176988(n))+A000217(A003056(n))`
-/

namespace A218890.P1162089605564432959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A176988 n).toNat + A000217 (A003056 n).toNat

end

end A218890.P1162089605564432959

namespace A218890

/-- `A209278(A176988(n))+A000217(A003056(n))` -/
def P1162089605564432959.Spec : Prop :=
  ∀ n, P1162089605564432959.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P1822725332854811130

`A209278(A176988(n))+A083920(A127739(n+1))`
-/

namespace A218890.P1822725332854811130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A176988 n).toNat + A083920 (A127739 (n + 1)).toNat

end

end A218890.P1822725332854811130

namespace A218890

/-- `A209278(A176988(n))+A083920(A127739(n+1))` -/
def P1822725332854811130.Spec : Prop :=
  ∀ n, P1822725332854811130.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P848440330238916838

`A002522(A002024(n+1))-A209293(A176988(n))`
-/

namespace A218890.P848440330238916838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A209293 (A176988 n).toNat

end

end A218890.P848440330238916838

namespace A218890

/-- `A002522(A002024(n+1))-A209293(A176988(n))` -/
def P848440330238916838.Spec : Prop :=
  ∀ n, P848440330238916838.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P9107890700081783393

`A265129(A056023(n+1))-A209293(A176988(n))`
-/

namespace A218890.P9107890700081783393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (A056023 (n + 1)).toNat - A209293 (A176988 n).toNat

end

end A218890.P9107890700081783393

namespace A218890

/-- `A265129(A056023(n+1))-A209293(A176988(n))` -/
def P9107890700081783393.Spec : Prop :=
  ∀ n, P9107890700081783393.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P3637834742980076473

`A265129(A064578(n+1))-A209293(A176988(n))`
-/

namespace A218890.P3637834742980076473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (A064578 (n + 1)).toNat - A209293 (A176988 n).toNat

end

end A218890.P3637834742980076473

namespace A218890

/-- `A265129(A064578(n+1))-A209293(A176988(n))` -/
def P3637834742980076473.Spec : Prop :=
  ∀ n, P3637834742980076473.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P2510518492165399942

`A265129(A188568(n+1))-A209293(A176988(n))`
-/

namespace A218890.P2510518492165399942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (A188568 (n + 1)).toNat - A209293 (A176988 n).toNat

end

end A218890.P2510518492165399942

namespace A218890

/-- `A265129(A188568(n+1))-A209293(A176988(n))` -/
def P2510518492165399942.Spec : Prop :=
  ∀ n, P2510518492165399942.a n = A218890 (n + 1)

end A218890

/-! ## A218890.P4731984091796132

`A209293(A176988(n)+A002024(n+1))-A002024(n+1)`
-/

namespace A218890.P4731984091796132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A176988 n + A002024 (n + 1)).toNat - A002024 (n + 1)

end

end A218890.P4731984091796132

namespace A218890

/-- `A209293(A176988(n)+A002024(n+1))-A002024(n+1)` -/
def P4731984091796132.Spec : Prop :=
  ∀ n, P4731984091796132.a n = A218890 (n + 1)

end A218890

/-!
# A218891: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 n X n array.

The programs for A218891, there is no canonical definition to state claims against.
-/

/-! ## A218891.P10848849010891706134

`A218897(∑[4*n]+1)`
-/

namespace A218891.P10848849010891706134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218891.P10848849010891706134

/-! ## A218891.P14225902598923103902

`record[gcd(A114327(n), A218897(n+1))]`
-/

namespace A218891.P14225902598923103902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A218897 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218891.P14225902598923103902

/-! ## A218891.P3865365891605707894

`record[root(A218897(n+1), A072030(n+1))]`
-/

namespace A218891.P3865365891605707894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218897 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218891.P3865365891605707894

/-!
# A218892: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A218892, the canonical program `A218892.P6234840291115118584` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218892 has offset 1).

The definition of A218892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218892.P6234840291115118584

`ogf((4+2x-8x^2-18x^3-4x^4)/(1-4x-2x^2+5x^3+8x^4+4x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218892

/-- `ogf((4+2x-8x^2-18x^3-4x^4)/(1-4x-2x^2+5x^3+8x^4+4x^5))` -/
def P6234840291115118584.Spec : Prop :=
  ∀ n, P6234840291115118584.a n = A218892 (n + 1)

theorem P6234840291115118584.correct : P6234840291115118584.Spec := by
  intro n
  simp only [A218892, Nat.add_sub_cancel]

end A218892

/-! ## A218892.P596483600081444745

`A218897(∑[n+3]+1)`
-/

namespace A218892.P596483600081444745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218892.P596483600081444745

namespace A218892

/-- `A218897(∑[n+3]+1)` -/
def P596483600081444745.Spec : Prop :=
  ∀ n, P596483600081444745.a n = A218892 (n + 1)

end A218892

/-! ## A218892.P16699976149621973088

`record[A218897(A198464(n+1))]`
-/

namespace A218892.P16699976149621973088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218892.P16699976149621973088

namespace A218892

/-- `record[A218897(A198464(n+1))]` -/
def P16699976149621973088.Spec : Prop :=
  ∀ n, P16699976149621973088.a n = A218892 (n + 1)

end A218892

/-!
# A218893: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 n X 4 array.

The programs for A218893, there is no canonical definition to state claims against.
-/

/-! ## A218893.P16717541421867027956

`A218897(∑[n+4]+3)`
-/

namespace A218893.P16717541421867027956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A218893.P16717541421867027956

/-!
# A218894: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A218894, there is no canonical definition to state claims against.
-/

/-! ## A218894.P9269510812674492028

`A218897(A046691(n+3))`
-/

namespace A218894.P9269510812674492028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A046691 (n + 3)).toNat

end

end A218894.P9269510812674492028

/-!
# A218895: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A218895, there is no canonical definition to state claims against.
-/

/-! ## A218895.P765380625621283297

`A218897(A056119(n)+16)`
-/

namespace A218895.P765380625621283297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A056119 n + 16).toNat

end

end A218895.P765380625621283297

/-!
# A218896: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 nX7 array.

The programs for A218896, there is no canonical definition to state claims against.
-/

/-! ## A218896.P2908474768873563005

`A218897(A055999(n+4))`
-/

namespace A218896.P2908474768873563005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A055999 (n + 4)).toNat

end

end A218896.P2908474768873563005

/-!
# A218897: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 nXk array.

The programs for A218897, there is no canonical definition to state claims against.
-/

/-! ## A218897.P15226297272683020646

`A117924(2*A228754(n+1))`
-/

namespace A218897.P15226297272683020646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (2 * A228754 (n + 1)).toNat

end

end A218897.P15226297272683020646

/-! ## A218897.P4304812507992542018

`A218064(n+1)-A218882(A022166(n))`
-/

namespace A218897.P4304812507992542018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (n + 1) - A218882 (A022166 n).toNat

end

end A218897.P4304812507992542018

/-! ## A218897.P16010410778793373879

`A218064(n+1)-A126756(A126770(n))`
-/

namespace A218897.P16010410778793373879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (n + 1) - A126756 (A126770 n).toNat

end

end A218897.P16010410778793373879

/-! ## A218897.P16422611865150970593

`A218064(n+1)-A218882(A008277(n+1))`
-/

namespace A218897.P16422611865150970593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (n + 1) - A218882 (A008277 (n + 1)).toNat

end

end A218897.P16422611865150970593

/-! ## A218897.P16292177777142308456

`A218064(n+1)-A126756(A197373(n+1))`
-/

namespace A218897.P16292177777142308456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218064 (n + 1) - A126756 (A197373 (n + 1)).toNat

end

end A218897.P16292177777142308456

/-!
# A218898: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 2 X n array.

The programs for A218898, the canonical program `A218898.P15040084427868591323` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218898 has offset 1).

The definition of A218898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218898.P6786398918044479108

`ogf((4+2x-2x^3-2x^4)/(1-x-3x^2+2x^5))`
-/

namespace A218898.P6786398918044479108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 0, -2, -2] [1, -1, -3, 0, 0, 2] n

end

end A218898.P6786398918044479108

namespace A218898

/-- `ogf((4+2x-2x^3-2x^4)/(1-x-3x^2+2x^5))` -/
def P6786398918044479108.Spec : Prop :=
  ∀ n, P6786398918044479108.a n = A218898 (n + 1)

end A218898

/-! ## A218898.P15040084427868591323

`a(n-1)+3*a(n-2)-2*a(n-5)` with `a(0)=4, a(1)=6, a(2)=18, a(3)=34, a(4)=86`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218898

/-- `a(n-1)+3*a(n-2)-2*a(n-5)` -/
def P15040084427868591323.Spec : Prop :=
  ∀ n, P15040084427868591323.a n = A218898 (n + 1)

theorem P15040084427868591323.correct : P15040084427868591323.Spec := by
  intro n
  simp only [A218898, Nat.add_sub_cancel]

end A218898

/-! ## A218898.P1474764740975693034

`A218897(∑[n+1]+2)`
-/

namespace A218898.P1474764740975693034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218898.P1474764740975693034

namespace A218898

/-- `A218897(∑[n+1]+2)` -/
def P1474764740975693034.Spec : Prop :=
  ∀ n, P1474764740975693034.a n = A218898 (n + 1)

end A218898

/-! ## A218898.P3384143763943489873

`record[A218897(A152949(n+1)-n)]`
-/

namespace A218898.P3384143763943489873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A152949 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218898.P3384143763943489873

namespace A218898

/-- `record[A218897(A152949(n+1)-n)]` -/
def P3384143763943489873.Spec : Prop :=
  ∀ n, P3384143763943489873.a n = A218898 (n + 1)

end A218898

/-!
# A218899: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A218899, there is no canonical definition to state claims against.
-/

/-! ## A218899.P4359719173297330127

`A218897(∑[n+2]+4)`
-/

namespace A218899.P4359719173297330127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218899.P4359719173297330127

