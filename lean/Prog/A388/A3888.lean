import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C050
import Seq.B001.C008
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C004
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C020
import Seq.Opaque.C021
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

/-! ## A388841.P5332349566075152862

`eq[A186447(A211779(n+1)), A356228(n+1)]`
-/

namespace A388841.P5332349566075152862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186447 (A211779 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388841.P5332349566075152862

/-!
# A388842: Numbers k such that the factorial of k has more exponential divisors than the factorial of k+1.

The programs for A388842, there is no canonical definition to state claims against.
-/

/-! ## A388842.P5973164355170837549

`lt[A388840(n+1), A388840(A028310(n))]`
-/

namespace A388842.P5973164355170837549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388840 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388842.P5973164355170837549

/-!
# A388843: Numbers k such that the factorial of k has fewer exponential divisors than the factorial of k+1.

The programs for A388843, there is no canonical definition to state claims against.
-/

/-! ## A388843.P6003179125568153877

`lt[A388840(A028310(n)), A388840(n+1)]`
-/

namespace A388843.P6003179125568153877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388840 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388843.P6003179125568153877

/-! ## A388843.P2027910370473624637

`lt[A359906(A389447(n+1)), A366398(3*n+1)]`
-/

namespace A388843.P2027910370473624637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359906 (A389447 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366398 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388843.P2027910370473624637

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

/-! ## A388847.P2021688333296685385

`round(sqrt(A180414(3*n)/A188069(n+1)))`
-/

namespace A388847.P2021688333296685385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A180414 (3 * n) : ℚ) / (A188069 (n + 1) : ℚ) : ℝ))

end

end A388847.P2021688333296685385

namespace A388847

/-- `round(sqrt(A180414(3*n)/A188069(n+1)))` -/
def P2021688333296685385.Spec : Prop :=
  ∀ n, P2021688333296685385.a n = A388847 n

end A388847

/-!
# A388848: Number of distinct squares (of any orientation) whose vertices are points of the cross of side n.

The programs for A388848, the canonical program `A388848.P17651515736714168523` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388848 has offset 1).

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

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388848

/-- `(6*(n+1)^4-3*(n+1)²+(n+1)%2)/4` -/
def P17651515736714168523.Spec : Prop :=
  ∀ n, P17651515736714168523.a n = (A388848 (n + 1) : ℚ)

end A388848

/-! ## A388848.P8503210826485138700

`A002620(n)+∑[A169711(n+1)]`
-/

namespace A388848.P8503210826485138700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388848.P8503210826485138700

namespace A388848

/-- `A002620(n)+∑[A169711(n+1)]` -/
def P8503210826485138700.Spec : Prop :=
  ∀ n, P8503210826485138700.a n = A388848 (n + 1)

end A388848

/-! ## A388848.P8328213182377017579

`∑[A169711(n+1)+A004526(n)]`
-/

namespace A388848.P8328213182377017579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388848.P8328213182377017579

namespace A388848

/-- `∑[A169711(n+1)+A004526(n)]` -/
def P8328213182377017579.Spec : Prop :=
  ∀ n, P8328213182377017579.a n = A388848 (n + 1)

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

/-!
# A388851: Numbers c such that a! * b! * c! is a perfect square for some 1 <= a < b < c.

The programs for A388851, there is no canonical definition to state claims against.
-/

/-! ## A388851.P5100922606179833957

`record[A389553(Δ[1/4*(n+1)*(2*n-(-1)^n+5)])]`
-/

namespace A388851.P5100922606179833957
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (n + 1 : ℚ) * ((2 * n : ℤ) - (-1) ^ n + 5 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389553 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388851.P5100922606179833957

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

/-! ## A388857.P3072674095692533216

`A005843(A001764(n))-A386496(n)`
-/

namespace A388857.P3072674095692533216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001764 n).toNat - A386496 n

end

end A388857.P3072674095692533216

namespace A388857

/-- `A005843(A001764(n))-A386496(n)` -/
def P3072674095692533216.Spec : Prop :=
  ∀ n, P3072674095692533216.a n = A388857 n

end A388857

/-! ## A388857.P10716503821460893954

`A390171(n)-A245230(A344698(n+1))`
-/

namespace A388857.P10716503821460893954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390171 n - A245230 (A344698 (n + 1)).toNat

end

end A388857.P10716503821460893954

namespace A388857

/-- `A390171(n)-A245230(A344698(n+1))` -/
def P10716503821460893954.Spec : Prop :=
  ∀ n, P10716503821460893954.a n = A388857 n

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

/-! ## A388858.P17424780747760151131

`A390148(A016825(n))%A390190(n)`
-/

namespace A388858.P17424780747760151131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390148 (A016825 n).toNat) (A390190 n)

end

end A388858.P17424780747760151131

/-! ## A388858.P17507406410697213008

`A049347(3*n)*A390148(A016825(n))`
-/

namespace A388858.P17507406410697213008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n) * A390148 (A016825 n).toNat

end

end A388858.P17507406410697213008

/-! ## A388858.P8166659795950608752

`A390148(A016825(n))+C(A119241(n+1), 4)`
-/

namespace A388858.P8166659795950608752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (A119241 (n + 1)).toNat 4 : ℤ)

end

end A388858.P8166659795950608752

/-! ## A388858.P17865355182797869649

`A390148(A016825(n))+C(n+1, A324459(n+1))`
-/

namespace A388858.P17865355182797869649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (n + 1) (A324459 (n + 1)).toNat : ℤ)

end

end A388858.P17865355182797869649

/-! ## A388858.P3981531846008786039

`A390148(A016825(n))+C(n+1, A336176(n+1))`
-/

namespace A388858.P3981531846008786039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (n + 1) (A336176 (n + 1)).toNat : ℤ)

end

end A388858.P3981531846008786039

/-! ## A388858.P18413628001271817134

`A390148(A016825(n))+C(n+1, A336177(n+1))`
-/

namespace A388858.P18413628001271817134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (n + 1) (A336177 (n + 1)).toNat : ℤ)

end

end A388858.P18413628001271817134

/-! ## A388858.P9488289098312761638

`A390148(A016825(n))+C(n+1, A336178(n+1))`
-/

namespace A388858.P9488289098312761638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (n + 1) (A336178 (n + 1)).toNat : ℤ)

end

end A388858.P9488289098312761638

/-! ## A388858.P10014045803483450357

`A390148(A016825(n))+C(n+1, A338390(n+1))`
-/

namespace A388858.P10014045803483450357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (n + 1) (A338390 (n + 1)).toNat : ℤ)

end

end A388858.P10014045803483450357

/-! ## A388858.P1266495646391642531

`A390148(A016825(n))+C(n+1, A336175(n+2))`
-/

namespace A388858.P1266495646391642531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (A016825 n).toNat + (Nat.choose (n + 1) (A336175 (n + 2)).toNat : ℤ)

end

end A388858.P1266495646391642531

/-!
# A388859: a(n) is the smallest number k such that A384204(k) = n.

The programs for A388859, there is no canonical definition to state claims against.
-/

/-! ## A388859.P8920308774260330602

`A124508(Δ[or(1, 10*a(n-1))])` with `a(0)=-2, a(1)=0`
-/

namespace A388859.P8920308774260330602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 0] fun n f1 =>
  Int.lor 1 (10 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124508 (f1 (n + 1) - f1 n).toNat

end

end A388859.P8920308774260330602

/-! ## A388859.P11152504948642008026

`Δ[A165998(A002001(n))]`
-/

namespace A388859.P11152504948642008026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (A002001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A388859.P11152504948642008026

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

/-! ## A388860.P2467326214149071051

`eq[A033264(n), A033264(A007590(n))]`
-/

namespace A388860.P2467326214149071051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A007590 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A388860.P2467326214149071051

