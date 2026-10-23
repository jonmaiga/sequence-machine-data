import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C024
import Seq.B000.C039
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C020
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A388841: Positive numbers k such that the factorials of k and k+1 have an equal number of exponential divisors.

The programs for A388841, there is no canonical definition to state claims against.
-/

/-! ## A388841.P11101222627805531421

`eq[A388840(n+1), A388840(n+2)]+1`
-/

namespace A388841.P11101222627805531421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388841.P11101222627805531421

/-! ## A388841.P3759977701949724971

`eq[A226174(n+1), A334091(n+1)]`
-/

namespace A388841.P3759977701949724971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388841.P3759977701949724971

/-! ## A388841.P2909988181665181321

`lt[A045991(A324190(n+1)), A039663(n)]`
-/

namespace A388841.P2909988181665181321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A324190 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039663 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388841.P2909988181665181321

/-! ## A388841.P16372533762589544648

`eq[A001222(n+1), A035188(A083773(n+1))]`
-/

namespace A388841.P16372533762589544648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035188 (A083773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388841.P16372533762589544648

/-! ## A388841.P6024651547503903821

`eq[A039930(n+1), A063065(n)]`
-/

namespace A388841.P6024651547503903821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063065 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388841.P6024651547503903821

/-!
# A388846: The smallest start of a run of exactly n consecutive positive integers for which the number of exponential divisors of their factorials is strictly decreasing.

The programs for A388846, there is no canonical definition to state claims against.
-/

/-! ## A388846.P17874331047315853149

`A114147(A042423(n))`
-/

namespace A388846.P17874331047315853149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114147 (A042423 n).toNat

end

end A388846.P17874331047315853149

/-!
# A388847: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)*A(x)^3.

The programs for A388847, there is no canonical definition to state claims against.
-/

/-! ## A388847.P5026640233550728666

`A176744(A148348(n))`
-/

namespace A388847.P5026640233550728666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176744 (A148348 n).toNat

end

end A388847.P5026640233550728666

/-! ## A388847.P3420707217263562956

`A173022(A199877(n)-(-1)^∑{e}[n+1, #])`
-/

namespace A388847.P3420707217263562956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 (A199877 n - (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A388847.P3420707217263562956

/-!
# A388848: Number of distinct squares (of any orientation) whose vertices are points of the cross of side n.

The programs for A388848, the canonical program `A388848.P17651515736714168523` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388848 has offset 1).

The definition of A388848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388848.P17651515736714168523

`(6*(n+1)^4-3*(n+1)²+(n+1)%2)/4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A388848

/-- `(6*(n+1)^4-3*(n+1)²+(n+1)%2)/4` -/
def P17651515736714168523.Spec : Prop :=
  ∀ n, P17651515736714168523.a n = (A388848 (n + 1) : ℚ)

end A388848

/-! ## A388848.P8289502684100874017

`A389320(2*(n+1)²)`
-/

namespace A388848.P8289502684100874017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389320 (2 * (n + 1) ^ 2)

end

end A388848.P8289502684100874017

namespace A388848

/-- `A389320(2*(n+1)²)` -/
def P8289502684100874017.Spec : Prop :=
  ∀ n, P8289502684100874017.a n = A388848 (n + 1)

end A388848

/-! ## A388848.P5325070220573313633

`∑[∑[A057544(A077221(3*n))]]`
-/

namespace A388848.P5325070220573313633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A077221 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388848.P5325070220573313633

namespace A388848

/-- `∑[∑[A057544(A077221(3*n))]]` -/
def P5325070220573313633.Spec : Prop :=
  ∀ n, P5325070220573313633.a n = A388848 (n + 1)

end A388848

/-! ## A388848.P8055928460190131350

`∑[A001651(A050492(n+1))]`
-/

namespace A388848.P8055928460190131350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A050492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388848.P8055928460190131350

namespace A388848

/-- `∑[A001651(A050492(n+1))]` -/
def P8055928460190131350.Spec : Prop :=
  ∀ n, P8055928460190131350.a n = A388848 (n + 1)

end A388848

/-!
# A388857: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)*A(x)^3.

The programs for A388857, there is no canonical definition to state claims against.
-/

/-! ## A388857.P13477531433910889920

`filter[A390171(n), A023960(#)]`
-/

namespace A388857.P13477531433910889920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023960 (f1 j).toNat = 1) n)

end

end A388857.P13477531433910889920

/-! ## A388857.P5481278860238061958

`filter[A390171(n), A068431(#)]`
-/

namespace A388857.P5481278860238061958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068431 (f1 j).toNat = 1) n)

end

end A388857.P5481278860238061958

/-! ## A388857.P4885726596869794884

`filter[A390171(n), A071025(#)]`
-/

namespace A388857.P4885726596869794884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071025 (f1 j).toNat = 1) n)

end

end A388857.P4885726596869794884

/-!
# A388858: Column 2 of table A390148.

The programs for A388858, there is no canonical definition to state claims against.
-/

/-! ## A388858.P10392709465400074193

`A390148(4*n+2)`
-/

namespace A388858.P10392709465400074193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (4 * n + 2)

end

end A388858.P10392709465400074193

/-!
# A388859: a(n) is the smallest number k such that A384204(k) = n.

The programs for A388859, there is no canonical definition to state claims against.
-/

/-! ## A388859.P13010100344046223796

`A363320(A007010(n+2))`
-/

namespace A388859.P13010100344046223796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363320 (A007010 (n + 2)).toNat

end

end A388859.P13010100344046223796

/-!
# A388860: Numbers k such that the number of runs of 1's in k is the same as the number of runs on 1's in k^2.

The programs for A388860, there is no canonical definition to state claims against.
-/

/-! ## A388860.P12737503936757855319

`eq[A088748(ceil(n²/2)), A088748(n)]`
-/

namespace A388860.P12737503936757855319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388860.P12737503936757855319

/-! ## A388860.P10605784111411866785

`eq[A069010(A000982(n)), A069010(n)]`
-/

namespace A388860.P10605784111411866785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A000982 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388860.P10605784111411866785

/-! ## A388860.P13981737132169824302

`eq[A069010(n²), A069010(n)]`
-/

namespace A388860.P13981737132169824302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388860.P13981737132169824302

/-! ## A388860.P17928472572511716189

`eq[A005811(A000982(n)), A005811(n)]`
-/

namespace A388860.P17928472572511716189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A000982 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388860.P17928472572511716189

/-! ## A388860.P13542040977745623511

`eq[A005811(n²), A005811(n)]`
-/

namespace A388860.P13542040977745623511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388860.P13542040977745623511

