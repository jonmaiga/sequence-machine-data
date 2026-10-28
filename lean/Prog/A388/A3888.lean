import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C049
import Seq.B001.C014
import Seq.B002.C000
import Seq.B003.C001
import Seq.B012.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024

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

The programs for A388847, the canonical program `A388847.P2305125992169687665` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388847 has offset 0).

The definition of A388847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388847.P2305125992169687665

`∑{#}[floor(n/3), (-1)^#*C(n-2*#, #)*A001764(n-2*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A388847

/-- `∑{#}[floor(n/3), (-1)^#*C(n-2*#, #)*A001764(n-2*#)]` -/
def P2305125992169687665.Spec : Prop :=
  ∀ n, P2305125992169687665.a n = A388847 n

theorem P2305125992169687665.correct : P2305125992169687665.Spec := by
  intro n
  simp only [A388847]

end A388847

/-! ## A388847.P5026640233550728666

`A176744(A148348(n))`
-/

namespace A388847.P5026640233550728666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176744 (A148348 n).toNat

end

end A388847.P5026640233550728666

namespace A388847

/-- `A176744(A148348(n))` -/
def P5026640233550728666.Spec : Prop :=
  ∀ n, P5026640233550728666.a n = A388847 n

end A388847

/-!
# A388848: Number of distinct squares (of any orientation) whose vertices are points of the cross of side n.

The programs for A388848, the canonical program `A388848.P17651515736714168523` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388848 has offset 1).

The definition of A388848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388848.P7915652257350083490

`ogf((1+17x+36x^2+17x^3+x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A388848.P7915652257350083490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17, 36, 17, 1] [1, -4, 5, 0, -5, 4, -1] n

end

end A388848.P7915652257350083490

namespace A388848

/-- `ogf((1+17x+36x^2+17x^3+x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P7915652257350083490.Spec : Prop :=
  ∀ n, P7915652257350083490.a n = A388848 (n + 1)

end A388848

/-! ## A388848.P17651515736714168523

`(6*(n+1)^4-3*(n+1)²+(n+1)%2)/4`

The canonical program, it is in `Seq.B000.C049`.
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

The programs for A388857, the canonical program `A388857.P13766880446048329441` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388857 has offset 0).

The definition of A388857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388857.P13766880446048329441

`∑{#}[floor(n/4), (-1)^#*C(n-3*#, #)*A001764(n-3*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A388857

/-- `∑{#}[floor(n/4), (-1)^#*C(n-3*#, #)*A001764(n-3*#)]` -/
def P13766880446048329441.Spec : Prop :=
  ∀ n, P13766880446048329441.a n = A388857 n

theorem P13766880446048329441.correct : P13766880446048329441.Spec := by
  intro n
  simp only [A388857]

end A388857

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

