import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A289900: Number of maximal matchings in the n-triangular honeycomb rook graph.

The programs for A289900, there is no canonical definition to state claims against.
-/

/-! ## A289900.P9002556584034321450

`∏[∏[C(or(1, n), n)]]`
-/

namespace A289900.P9002556584034321450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289900.P9002556584034321450

/-! ## A289900.P13281560757500599127

`∏[∏[gcd(n+1, n%2)]]`
-/

namespace A289900.P13281560757500599127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289900.P13281560757500599127

/-! ## A289900.P12573312179870076112

`∏[∏[n*char[2*n]+1]]`
-/

namespace A289900.P12573312179870076112
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289900.P12573312179870076112

/-! ## A289900.P5373258763726061789

`a(n-2)*∏[a(n-2)+2]` with `a(0)=1, a(1)=1`
-/

namespace A289900.P5373258763726061789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A289900.P5373258763726061789

/-! ## A289900.P5219779033474780856

`abs(∏[A055634(n+1)])`
-/

namespace A289900.P5219779033474780856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A289900.P5219779033474780856

/-!
# A289901: Number of (undirected) cycles in the n-triangular honeycomb acute knight graph.

The programs for A289901, there is no canonical definition to state claims against.
-/

/-! ## A289901.P14871418077877395065

`A085863(∑[4^n-1])`
-/

namespace A289901.P14871418077877395065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289901.P14871418077877395065

/-! ## A289901.P11301993843133100874

`A162202(∑[ceil(2^(n/2-1))-1]²)`
-/

namespace A289901.P11301993843133100874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) / 2 - 1 : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162202 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A289901.P11301993843133100874

/-! ## A289901.P4437031099097917732

`∑[A351596(A368983(n))]`
-/

namespace A289901.P4437031099097917732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A368983 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289901.P4437031099097917732

/-!
# A289902: Number of dominating sets in the n-triangular honeycomb acute knight graph.

The programs for A289902, there is no canonical definition to state claims against.
-/

/-! ## A289902.P4612361788050921915

`A001597((∏{d}[n+1, #+1]-1)^floor(3*n/5))`
-/

namespace A289902.P4612361788050921915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.roundAway ((((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - 1 : ℚ) ^ (⌊3 * ((n : ℚ) / 5)⌋ : ℤ))).toNat

end

end A289902.P4612361788050921915

/-!
# A289904: Number of edge covers in the n-triangular honeycomb acute knight graph.

The programs for A289904, there is no canonical definition to state claims against.
-/

/-! ## A289904.P10425692250526365796

`(a(n-1)+10^floor((n-1)/9))^(a(and(n, n-1))+3)` with `a(0)=0, a(1)=0`
-/

namespace A289904.P10425692250526365796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 1) + ((10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ) : ℝ)) ^ (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 3)

end

end A289904.P10425692250526365796

/-!
# A289907: Initial primes of 5 consecutive primes with consecutive gaps 8,6,4,2.

The programs for A289907, the canonical program `A289907.P1605400595072439326` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289907 has offset 1).

The definition of A289907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289907.P1605400595072439326

`∩[A054808(n+1), A054809(n+1)-8]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A289907

/-- `∩[A054808(n+1), A054809(n+1)-8]` -/
def P1605400595072439326.Spec : Prop :=
  ∀ n, (P1605400595072439326.a n : ℤ) = A289907 (n + 1)

theorem P1605400595072439326.correct : P1605400595072439326.Spec := by
  intro n
  simp only [A289907, Nat.add_sub_cancel]

end A289907

/-! ## A289907.P8312250171957514885

`p?[A054809(n+1)-8]`
-/

namespace A289907.P8312250171957514885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289907.P8312250171957514885

namespace A289907

/-- `p?[A054809(n+1)-8]` -/
def P8312250171957514885.Spec : Prop :=
  ∀ n, P8312250171957514885.a n = A289907 (n + 1)

end A289907

/-! ## A289907.P6529495650313954537

`∩[A054808(n+1), A385035(n+1)]`
-/

namespace A289907.P6529495650313954537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289907.P6529495650313954537

namespace A289907

/-- `∩[A054808(n+1), A385035(n+1)]` -/
def P6529495650313954537.Spec : Prop :=
  ∀ n, (P6529495650313954537.a n : ℤ) = A289907 (n + 1)

end A289907

/-!
# A289909: Numerator of r(n), where r(n) = 1/r(n-2) + r(n-1); r(1)=r(2)=1/2.

The programs for A289909, there is no canonical definition to state claims against.
-/

/-! ## A289909.P10984870793726878453

`ratio[A289910(n+2)]`
-/

namespace A289909.P10984870793726878453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289910 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A289909.P10984870793726878453

/-! ## A289909.P17277391417146773428

`A246332(A056365(n+1))`
-/

namespace A289909.P17277391417146773428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246332 (A056365 (n + 1)).toNat

end

end A289909.P17277391417146773428

/-!
# A289910: The denominator of r(n), where r(n) = 1/r(n-2) + r(n-1); r(1)=r(2)=1/2.

The programs for A289910, there is no canonical definition to state claims against.
-/

/-! ## A289910.P14947790142055519547

`A264788(A276271(n))`
-/

namespace A289910.P14947790142055519547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (A276271 n).toNat

end

end A289910.P14947790142055519547

/-! ## A289910.P9118200110532374638

`A084385(2*A276271(n))`
-/

namespace A289910.P9118200110532374638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084385 (2 * A276271 n).toNat

end

end A289910.P9118200110532374638

/-! ## A289910.P2695467805567326650

`A289207(lcm(4, A276271(n)))`
-/

namespace A289910.P2695467805567326650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.lcm 4 (A276271 n))

end

end A289910.P2695467805567326650

/-!
# A289911: Prime vampire numbers: semiprimes x*y such that x and y have the same number of digits and the union of the multisets of the digits of x and y is the same as the multiset of digits of x*y.

The programs for A289911, there is no canonical definition to state claims against.
-/

/-! ## A289911.P1356829843488688023

`∩[A014575(n+1), A080718(n+1)]`
-/

namespace A289911.P1356829843488688023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289911.P1356829843488688023

/-! ## A289911.P16958595962917703935

`∩[A014575(n+1), A280928(n+1)]`
-/

namespace A289911.P16958595962917703935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289911.P16958595962917703935

/-! ## A289911.P121957311171447096

`∩[A014575(n+1), A176670(n+1)]`
-/

namespace A289911.P121957311171447096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289911.P121957311171447096

/-! ## A289911.P7892539802305283382

`∩[A048933(n+1)*A048934(n+1), A280928(n+1)]`
-/

namespace A289911.P7892539802305283382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048933 (n + 1) * A048934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289911.P7892539802305283382

/-!
# A289912: Coefficients of 1/(Sum_{k>=0} round((k+1)*r)(-x)^k), where r = sqrt(2).

The programs for A289912, there is no canonical definition to state claims against.
-/

/-! ## A289912.P7340701008402457576

`A289914(n)+A178798(A008346(n))`
-/

namespace A289912.P7340701008402457576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289914 n + A178798 (A008346 n).toNat

end

end A289912.P7340701008402457576

/-! ## A289912.P15593721061911553396

`A289914(n)-A025466(A003724(n))`
-/

namespace A289912.P15593721061911553396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289914 n - A025466 (A003724 n).toNat

end

end A289912.P15593721061911553396

/-! ## A289912.P8434150634220395089

`A289914(n)-A083892(A073371(n))`
-/

namespace A289912.P8434150634220395089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289914 n - A083892 (A073371 n).toNat

end

end A289912.P8434150634220395089

/-! ## A289912.P927268559989325267

`A289914(n)-A083892(A078057(n))`
-/

namespace A289912.P927268559989325267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289914 n - A083892 (A078057 n).toNat

end

end A289912.P927268559989325267

/-! ## A289912.P15246622675463219289

`A289914(n)-A025466(A148509(n))`
-/

namespace A289912.P15246622675463219289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289914 n - A025466 (A148509 n).toNat

end

end A289912.P15246622675463219289

/-!
# A289914: Coefficients of 1/(Sum_{k>=0} round((k+1)*r)(-x)^k), where r = 7/5.

The programs for A289914, the canonical program `A289914.P15408003397445590721` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289914 has offset 0).

The definition of A289914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289914.P13305637863672028358

`ogf((1+x+x^5+x^6)/(1-2x+x^2-2x^3+x^4))`
-/

namespace A289914.P13305637863672028358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 0, 0, 1, 1] [1, -2, 1, -2, 1] n

end

end A289914.P13305637863672028358

namespace A289914

/-- `ogf((1+x+x^5+x^6)/(1-2x+x^2-2x^3+x^4))` -/
def P13305637863672028358.Spec : Prop :=
  ∀ n, P13305637863672028358.a n = A289914 n

end A289914

/-! ## A289914.P15408003397445590721

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9, a(4)=18, a(5)=35, a(6)=66`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289914

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P15408003397445590721.Spec : Prop :=
  ∀ n, P15408003397445590721.a n = A289914 n

theorem P15408003397445590721.correct : P15408003397445590721.Spec := by
  intro n
  simp only [A289914]

end A289914

/-! ## A289914.P10155853458050276914

`A289912(n)+A025466(A003724(n))`
-/

namespace A289914.P10155853458050276914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289912 n + A025466 (A003724 n).toNat

end

end A289914.P10155853458050276914

namespace A289914

/-- `A289912(n)+A025466(A003724(n))` -/
def P10155853458050276914.Spec : Prop :=
  ∀ n, P10155853458050276914.a n = A289914 n

end A289914

/-! ## A289914.P8037943831569575700

`A289912(n)+A083892(A078057(n))`
-/

namespace A289914.P8037943831569575700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289912 n + A083892 (A078057 n).toNat

end

end A289914.P8037943831569575700

namespace A289914

/-- `A289912(n)+A083892(A078057(n))` -/
def P8037943831569575700.Spec : Prop :=
  ∀ n, P8037943831569575700.a n = A289914 n

end A289914

/-! ## A289914.P12556444893844684153

`A289912(n)+A025466(A148509(n))`
-/

namespace A289914.P12556444893844684153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289912 n + A025466 (A148509 n).toNat

end

end A289914.P12556444893844684153

namespace A289914

/-- `A289912(n)+A025466(A148509(n))` -/
def P12556444893844684153.Spec : Prop :=
  ∀ n, P12556444893844684153.a n = A289914 n

end A289914

/-!
# A289916: Coefficients of 1/(Sum_{k>=0} round((k+1)*r)(-x)^k), where r = 9/7.

The programs for A289916, the canonical program `A289916.P17458205840469380144` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289916 has offset 0).

The definition of A289916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289916.P17458205840469380144

`ogf((1+x+x^7+x^8)/(1-2x+x^2-x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289916

/-- `ogf((1+x+x^7+x^8)/(1-2x+x^2-x^3+x^4-2x^5+x^6))` -/
def P17458205840469380144.Spec : Prop :=
  ∀ n, P17458205840469380144.a n = A289916 n

theorem P17458205840469380144.correct : P17458205840469380144.Spec := by
  intro n
  simp only [A289916]

end A289916

/-! ## A289916.P1235433701946890164

`A225687(A060925(n)+2*n)`
-/

namespace A289916.P1235433701946890164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A060925 n + (2 * n : ℤ)).toNat

end

end A289916.P1235433701946890164

namespace A289916

/-- `A225687(A060925(n)+2*n)` -/
def P1235433701946890164.Spec : Prop :=
  ∀ n, P1235433701946890164.a n = A289916 n

end A289916

/-! ## A289916.P6741165229161176558

`A225687(A060925(n)+n+n)`
-/

namespace A289916.P6741165229161176558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A060925 n + (n : ℤ) + (n : ℤ)).toNat

end

end A289916.P6741165229161176558

namespace A289916

/-- `A225687(A060925(n)+n+n)` -/
def P6741165229161176558.Spec : Prop :=
  ∀ n, P6741165229161176558.a n = A289916 n

end A289916

/-! ## A289916.P8674522527491587379

`A067086(A274640(n)+A006138(n))`
-/

namespace A289916.P8674522527491587379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A274640 n + A006138 n).toNat

end

end A289916.P8674522527491587379

namespace A289916

/-- `A067086(A274640(n)+A006138(n))` -/
def P8674522527491587379.Spec : Prop :=
  ∀ n, P8674522527491587379.a n = A289916 n

end A289916

/-!
# A289918: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = (1 - S^2).

The programs for A289918, the canonical program `A289918.P8834041070838653517` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289918 has offset 0).

The definition of A289918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289918.P3185487553437447556

`ogf(x/(1-x^2-2x^3+x^6))`
-/

namespace A289918.P3185487553437447556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 0, -1, -2, 0, 0, 1] n

end

end A289918.P3185487553437447556

namespace A289918

/-- `ogf(x/(1-x^2-2x^3+x^6))` -/
def P3185487553437447556.Spec : Prop :=
  ∀ n, P3185487553437447556.a n = A289918 n

end A289918

/-! ## A289918.P8834041070838653517

`a(n-2)+2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289918

/-- `a(n-2)+2*a(n-3)-a(n-6)` -/
def P8834041070838653517.Spec : Prop :=
  ∀ n, P8834041070838653517.a n = A289918 n

theorem P8834041070838653517.correct : P8834041070838653517.Spec := by
  intro n
  simp only [A289918]

end A289918

/-! ## A289918.P8300704075601181276

`(A000930(n)-A247917(n))/2`
-/

namespace A289918.P8300704075601181276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n - A247917 n : ℚ) / 2

end

end A289918.P8300704075601181276

namespace A289918

/-- `(A000930(n)-A247917(n))/2` -/
def P8300704075601181276.Spec : Prop :=
  ∀ n, P8300704075601181276.a n = (A289918 n : ℚ)

end A289918

/-! ## A289918.P17483524916347378388

`(∑[A078012(n)]-A247917(n))/2`
-/

namespace A289918.P17483524916347378388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A247917 n : ℤ) : ℚ) / 2

end

end A289918.P17483524916347378388

namespace A289918

/-- `(∑[A078012(n)]-A247917(n))/2` -/
def P17483524916347378388.Spec : Prop :=
  ∀ n, P17483524916347378388.a n = (A289918 n : ℚ)

end A289918

/-! ## A289918.P2573310142286327351

`(A104769(n+1)+A000930(n))/2`
-/

namespace A289918.P2573310142286327351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104769 (n + 1) + A000930 n : ℚ) / 2

end

end A289918.P2573310142286327351

namespace A289918

/-- `(A104769(n+1)+A000930(n))/2` -/
def P2573310142286327351.Spec : Prop :=
  ∀ n, P2573310142286327351.a n = (A289918 n : ℚ)

end A289918

/-!
# A289919: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = (1 - S)^2.

The programs for A289919, the canonical program `A289919.P18319942523202243243` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289919 has offset 0).

The definition of A289919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289919.P14407474360041383968

`ogf((2-x-2x^3)/(1-2x+x^2-2x^3+2x^4+x^6))`
-/

namespace A289919.P14407474360041383968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 0, -2] [1, -2, 1, -2, 2, 0, 1] n

end

end A289919.P14407474360041383968

namespace A289919

/-- `ogf((2-x-2x^3)/(1-2x+x^2-2x^3+2x^4+x^6))` -/
def P14407474360041383968.Spec : Prop :=
  ∀ n, P14407474360041383968.a n = A289919 n

end A289919

/-! ## A289919.P18319942523202243243

`2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=12, a(5)=19`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289919

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P18319942523202243243.Spec : Prop :=
  ∀ n, P18319942523202243243.a n = A289919 n

theorem P18319942523202243243.correct : P18319942523202243243.Spec := by
  intro n
  simp only [A289919]

end A289919

/-! ## A289919.P5938205227504588593

`A058278(n)+Δ[A164406(n)]`
-/

namespace A289919.P5938205227504588593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 n + (f1 (n + 1) - f1 n)

end

end A289919.P5938205227504588593

namespace A289919

/-- `A058278(n)+Δ[A164406(n)]` -/
def P5938205227504588593.Spec : Prop :=
  ∀ n, P5938205227504588593.a n = A289919 n

end A289919

/-! ## A289919.P6410515319505256937

`Δ[A291725(n)-A078012(n)]`
-/

namespace A289919.P6410515319505256937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n - A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289919.P6410515319505256937

namespace A289919

/-- `Δ[A291725(n)-A078012(n)]` -/
def P6410515319505256937.Spec : Prop :=
  ∀ n, P6410515319505256937.a n = A289919 n

end A289919

/-! ## A289919.P1147160358486428305

`Δ[A291725(n)]-A135851(n)`
-/

namespace A289919.P1147160358486428305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135851 n

end

end A289919.P1147160358486428305

namespace A289919

/-- `Δ[A291725(n)]-A135851(n)` -/
def P1147160358486428305.Spec : Prop :=
  ∀ n, P1147160358486428305.a n = A289919 n

end A289919

/-! ## A289919.P10998970348807027656

`Δ[A277252(n)+A291725(n)-A306276(n)]`
-/

namespace A289919.P10998970348807027656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 n + (A291725 n - A306276 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289919.P10998970348807027656

namespace A289919

/-- `Δ[A277252(n)+A291725(n)-A306276(n)]` -/
def P10998970348807027656.Spec : Prop :=
  ∀ n, P10998970348807027656.a n = A289919 n

end A289919

/-! ## A289919.P5583850699447122074

`Δ[A291725(n)-(A107458(n+1)+A107458(n))]`
-/

namespace A289919.P5583850699447122074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n - (A107458 (n + 1) + A107458 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289919.P5583850699447122074

namespace A289919

/-- `Δ[A291725(n)-(A107458(n+1)+A107458(n))]` -/
def P5583850699447122074.Spec : Prop :=
  ∀ n, P5583850699447122074.a n = A289919 n

end A289919

/-! ## A289919.P16775305896677360089

`Δ[A291725(n)]-(A058278(n+2)-A000930(n))`
-/

namespace A289919.P16775305896677360089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A058278 (n + 2) - A000930 n)

end

end A289919.P16775305896677360089

namespace A289919

/-- `Δ[A291725(n)]-(A058278(n+2)-A000930(n))` -/
def P16775305896677360089.Spec : Prop :=
  ∀ n, P16775305896677360089.a n = A289919 n

end A289919

/-!
# A289920: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - S - S^2.

The programs for A289920, the canonical program `A289920.P18363017178296946042` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289920 has offset 0).

The definition of A289920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289920.P1065485746257625591

`ogf((1+x-x^3)/(1-x-x^2-2x^3+x^4+x^6))`
-/

namespace A289920.P1065485746257625591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -1, -1, -2, 1, 0, 1] n

end

end A289920.P1065485746257625591

namespace A289920

/-- `ogf((1+x-x^3)/(1-x-x^2-2x^3+x^4+x^6))` -/
def P1065485746257625591.Spec : Prop :=
  ∀ n, P1065485746257625591.a n = A289920 n

end A289920

/-! ## A289920.P18363017178296946042

`a(n-1)+a(n-2)+2*a(n-3)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=12, a(5)=22`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289920

/-- `a(n-1)+a(n-2)+2*a(n-3)-a(n-4)-a(n-6)` -/
def P18363017178296946042.Spec : Prop :=
  ∀ n, P18363017178296946042.a n = A289920 n

theorem P18363017178296946042.correct : P18363017178296946042.Spec := by
  intro n
  simp only [A289920]

end A289920

/-! ## A289920.P4662629613025103139

`A100196(A134184(n+1))`
-/

namespace A289920.P4662629613025103139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A134184 (n + 1)).toNat

end

end A289920.P4662629613025103139

namespace A289920

/-- `A100196(A134184(n+1))` -/
def P4662629613025103139.Spec : Prop :=
  ∀ n, P4662629613025103139.a n = A289920 n

end A289920

/-! ## A289920.P3149865497444483644

`A157271(floor(sqrt(A071745(n+1))))`
-/

namespace A289920.P3149865497444483644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.sqrt (A071745 (n + 1))).toNat

end

end A289920.P3149865497444483644

namespace A289920

/-- `A157271(floor(sqrt(A071745(n+1))))` -/
def P3149865497444483644.Spec : Prop :=
  ∀ n, P3149865497444483644.a n = A289920 n

end A289920

/-! ## A289920.P3349476914939605989

`A001462(A159036(n)+A081172(n))`
-/

namespace A289920.P3349476914939605989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A159036 n + A081172 n).toNat

end

end A289920.P3349476914939605989

namespace A289920

/-- `A001462(A159036(n)+A081172(n))` -/
def P3349476914939605989.Spec : Prop :=
  ∀ n, P3349476914939605989.a n = A289920 n

end A289920

/-!
# A289921: Coefficients of 1/([1+r] - [1+2r]x + [1+3r]x^2 - ...), where [ ] = floor and r = 9/10.

The programs for A289921, the canonical program `A289921.P648278702816704039` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289921 has offset 0).

The definition of A289921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289921.P648278702816704039

`ogf((1+x-x^10-x^11)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7+x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289921

/-- `ogf((1+x-x^10-x^11)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7+x^8-x^9-x^10))` -/
def P648278702816704039.Spec : Prop :=
  ∀ n, P648278702816704039.a n = A289921 n

theorem P648278702816704039.correct : P648278702816704039.Spec := by
  intro n
  simp only [A289921]

end A289921

/-! ## A289921.P10247202286788175137

`A289923(n)+A206499(A103406(n))`
-/

namespace A289921.P10247202286788175137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289923 n + A206499 (A103406 n).toNat

end

end A289921.P10247202286788175137

namespace A289921

/-- `A289923(n)+A206499(A103406(n))` -/
def P10247202286788175137.Spec : Prop :=
  ∀ n, P10247202286788175137.a n = A289921 n

end A289921

/-! ## A289921.P6279764980128070323

`A289923(n)+A206499(A134059(n))`
-/

namespace A289921.P6279764980128070323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289923 n + A206499 (A134059 n).toNat

end

end A289921.P6279764980128070323

namespace A289921

/-- `A289923(n)+A206499(A134059(n))` -/
def P6279764980128070323.Spec : Prop :=
  ∀ n, P6279764980128070323.a n = A289921 n

end A289921

/-! ## A289921.P3959424499064080458

`A289923(n)+A025466(A203542(n+1))`
-/

namespace A289921.P3959424499064080458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289923 n + A025466 (A203542 (n + 1)).toNat

end

end A289921.P3959424499064080458

namespace A289921

/-- `A289923(n)+A025466(A203542(n+1))` -/
def P3959424499064080458.Spec : Prop :=
  ∀ n, P3959424499064080458.a n = A289921 n

end A289921

/-! ## A289921.P16282655588753450564

`A289923(n)%A038011(n)`
-/

namespace A289921.P16282655588753450564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289923 n) (A038011 n)

end

end A289921.P16282655588753450564

namespace A289921

/-- `A289923(n)%A038011(n)` -/
def P16282655588753450564.Spec : Prop :=
  ∀ n, P16282655588753450564.a n = A289921 n

end A289921

/-!
# A289922: Coefficients of 1/([1+r] - [1+2r]x + [1+3r]x^2 - ...), where [ ] = floor and r = 19/21.

The programs for A289922, there is no canonical definition to state claims against.
-/

/-! ## A289922.P13103519887086465644

`C(A160093(A339857(2*n+1)), A010879(n))`
-/

namespace A289922.P13103519887086465644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A160093 (A339857 (2 * n + 1)).toNat).toNat (A010879 n).toNat

end

end A289922.P13103519887086465644

/-! ## A289922.P4585012524761965009

`C(A326702(3*n), A010879(n))`
-/

namespace A289922.P4585012524761965009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326702 (3 * n)).toNat (A010879 n).toNat

end

end A289922.P4585012524761965009

/-! ## A289922.P567234937927278804

`C(A212632(3*(n+1)), A010879(n))`
-/

namespace A289922.P567234937927278804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212632 (3 * (n + 1))).toNat (A010879 n).toNat

end

end A289922.P567234937927278804

/-! ## A289922.P11899000621346139250

`C(A055642(A322388(2*n+1)), A010879(n))`
-/

namespace A289922.P11899000621346139250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055642 (A322388 (2 * n + 1)).toNat).toNat (A010879 n).toNat

end

end A289922.P11899000621346139250

/-!
# A289923: Limiting sequence of coefficients of 1/([1+r] - [1+2r]x + [1+3r]x^2 - ...), where [ ] = floor and r approaches 19/21 from the left.

The programs for A289923, there is no canonical definition to state claims against.
-/

/-! ## A289923.P2644292257511452246

`A345936(3^A289921(n))`
-/

namespace A289923.P2644292257511452246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345936 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A289921 n : ℤ))).toNat

end

end A289923.P2644292257511452246

/-! ## A289923.P5019748488589211613

`A289921(n)-A206499(A103406(n))`
-/

namespace A289923.P5019748488589211613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289921 n - A206499 (A103406 n).toNat

end

end A289923.P5019748488589211613

/-! ## A289923.P5307055908111493777

`A289921(n)-A206499(A134059(n))`
-/

namespace A289923.P5307055908111493777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289921 n - A206499 (A134059 n).toNat

end

end A289923.P5307055908111493777

/-! ## A289923.P15527875420815297845

`A289921(n)-A025466(A203542(n+1))`
-/

namespace A289923.P15527875420815297845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289921 n - A025466 (A203542 (n + 1)).toNat

end

end A289923.P15527875420815297845

/-!
# A289924: p-INVERT of (n!), n >= 1 (A000142, shifted), where p(S) = 1 - S - S^2.

The programs for A289924, there is no canonical definition to state claims against.
-/

/-! ## A289924.P17094551025017945952

`A029916(A008574(n*A238639(n)))`
-/

namespace A289924.P17094551025017945952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (A008574 ((n : ℤ) * A238639 n).toNat).toNat

end

end A289924.P17094551025017945952

/-!
# A289925: p-INVERT of the lower Wythoff sequence (A000201), where p(S) = 1 - S - S^2.

The programs for A289925, there is no canonical definition to state claims against.
-/

/-! ## A289925.P3191860688556456022

`A292648(A077831(n))`
-/

namespace A289925.P3191860688556456022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292648 (A077831 n).toNat

end

end A289925.P3191860688556456022

/-! ## A289925.P14416232639126049304

`A055768(2*A008549(n+1))`
-/

namespace A289925.P14416232639126049304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (2 * A008549 (n + 1)).toNat

end

end A289925.P14416232639126049304

/-!
# A289926: p-INVERT of the upper Wythoff sequence (A001950), where p(S) = 1 - S - S^2.

The programs for A289926, there is no canonical definition to state claims against.
-/

/-! ## A289926.P4482623085787750768

`A064524(A241023(n+1)-1)`
-/

namespace A289926.P4482623085787750768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (A241023 (n + 1) - 1).toNat

end

end A289926.P4482623085787750768

/-!
# A289927: p-INVERT of A014217 (starting at n=1), where p(S) = 1 - S - S^2.

The programs for A289927, the canonical program `A289927.P9384883148998469891` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289927 has offset 0).

The definition of A289927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289927.P9384883148998469891

`ogf((1+x-x^2-x^3+x^4+x^5-x^6)/(1-3x-4x^2+7x^3+5x^4-7x^5-4x^6+3x^7+x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289927

/-- `ogf((1+x-x^2-x^3+x^4+x^5-x^6)/(1-3x-4x^2+7x^3+5x^4-7x^5-4x^6+3x^7+x^8))` -/
def P9384883148998469891.Spec : Prop :=
  ∀ n, P9384883148998469891.a n = A289927 n

theorem P9384883148998469891.correct : P9384883148998469891.Spec := by
  intro n
  simp only [A289927]

end A289927

/-! ## A289927.P7389257837936980691

`A002266(A200665(n+1))`
-/

namespace A289927.P7389257837936980691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A200665 (n + 1)).toNat

end

end A289927.P7389257837936980691

namespace A289927

/-- `A002266(A200665(n+1))` -/
def P7389257837936980691.Spec : Prop :=
  ∀ n, P7389257837936980691.a n = A289927 n

end A289927

/-!
# A289928: p-INVERT of (1,2,3,5,7,11,13,...); i.e., 1 and the primes (A008578), where p(S) = 1 - S - S^2.

The programs for A289928, there is no canonical definition to state claims against.
-/

/-! ## A289928.P13917195853054360152

`∑[A008620(∑[A154638(n)+1])]`
-/

namespace A289928.P13917195853054360152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154638 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289928.P13917195853054360152

/-! ## A289928.P13490908381109741706

`∑[A002264(∑[A154638(n)+1])+1]`
-/

namespace A289928.P13490908381109741706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154638 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289928.P13490908381109741706

/-!
# A289929: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A289929, there is no canonical definition to state claims against.
-/

/-! ## A289929.P329103991833778853

`A288393(n)+A289963(n)-A288642(n)`
-/

namespace A289929.P329103991833778853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288393 n + (A289963 n - A288642 n)

end

end A289929.P329103991833778853

/-! ## A289929.P2018505303548797192

`A288394(n)+A289964(n)-A288642(n)`
-/

namespace A289929.P2018505303548797192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A288642 n)

end

end A289929.P2018505303548797192

/-! ## A289929.P16239274439133943065

`A288643(n)+A289930(n)-A288642(n)`
-/

namespace A289929.P16239274439133943065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288643 n + (A289930 n - A288642 n)

end

end A289929.P16239274439133943065

/-! ## A289929.P5833560369846368346

`A000042(n+1)+A057428(n)*A288642(n)`
-/

namespace A289929.P5833560369846368346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288642 n

end

end A289929.P5833560369846368346

/-! ## A289929.P16974242709260128399

`A000042(n+1)-A288642(n)%A288651(n)`
-/

namespace A289929.P16974242709260128399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288642 n) (A288651 n)

end

end A289929.P16974242709260128399

/-!
# A289930: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A289930, there is no canonical definition to state claims against.
-/

/-! ## A289930.P6855148297433288388

`or(1, A000042(n+1)-A288643(n))`
-/

namespace A289930.P6855148297433288388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A288643 n)

end

end A289930.P6855148297433288388

/-! ## A289930.P11613359658502082917

`A288393(n)+A289963(n)-A288643(n)`
-/

namespace A289930.P11613359658502082917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288393 n + (A289963 n - A288643 n)

end

end A289930.P11613359658502082917

/-! ## A289930.P832589979759974462

`A288394(n)+A289964(n)-A288643(n)`
-/

namespace A289930.P832589979759974462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A288643 n)

end

end A289930.P832589979759974462

/-! ## A289930.P13418432621802970945

`A288642(n)+A289929(n)-A288643(n)`
-/

namespace A289930.P13418432621802970945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288642 n + (A289929 n - A288643 n)

end

end A289930.P13418432621802970945

/-! ## A289930.P10019376511957946277

`A000042(n+1)+A000007(n)-A288643(n)`
-/

namespace A289930.P10019376511957946277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A288643 n)

end

end A289930.P10019376511957946277

/-! ## A289930.P876399866039657845

`A000042(n+1)+A057428(n)*A288643(n)`
-/

namespace A289930.P876399866039657845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288643 n

end

end A289930.P876399866039657845

/-!
# A289931: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A289931, there is no canonical definition to state claims against.
-/

/-! ## A289931.P6802139805837543864

`A288395(n)+A289965(n)-A288644(n)`
-/

namespace A289931.P6802139805837543864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288395 n + (A289965 n - A288644 n)

end

end A289931.P6802139805837543864

/-! ## A289931.P10522131059408761365

`A288645(n)+A289932(n)-A288644(n)`
-/

namespace A289931.P10522131059408761365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288645 n + (A289932 n - A288644 n)

end

end A289931.P10522131059408761365

/-! ## A289931.P15683153289307465769

`A126646(n)-A288644(n)%A126646(n)`
-/

namespace A289931.P15683153289307465769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288644 n) (A126646 n)

end

end A289931.P15683153289307465769

/-! ## A289931.P17272218173509316471

`or(A126646(n)-A288644(n), A288645(n))`
-/

namespace A289931.P17272218173509316471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A288644 n) (A288645 n)

end

end A289931.P17272218173509316471

/-! ## A289931.P1298562000866972778

`xor(A126646(n)%A289929(n), A288644(n))`
-/

namespace A289931.P1298562000866972778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A289929 n)) (A288644 n)

end

end A289931.P1298562000866972778

/-!
# A289932: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A289932, there is no canonical definition to state claims against.
-/

/-! ## A289932.P6076443515388366119

`or(1, A126646(n)-A288645(n))`
-/

namespace A289932.P6076443515388366119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288645 n)

end

end A289932.P6076443515388366119

/-! ## A289932.P16286582372731375037

`A288644(n)+A289931(n)-A288645(n)`
-/

namespace A289932.P16286582372731375037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 n + (A289931 n - A288645 n)

end

end A289932.P16286582372731375037

/-! ## A289932.P14764212363456010789

`char[A351197(n+1)]+A126646(n)-A288645(n)`
-/

namespace A289932.P14764212363456010789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351197 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A126646 n - A288645 n)

end

end A289932.P14764212363456010789

/-! ## A289932.P9601207215335641268

`A126646(A028310(n))-A288645(A028310(n))`
-/

namespace A289932.P9601207215335641268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A028310 n).toNat - A288645 (A028310 n).toNat

end

end A289932.P9601207215335641268

/-! ## A289932.P13447477755383205176

`A126646(n)-A288645(n)%A126646(2*n)`
-/

namespace A289932.P13447477755383205176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288645 n) (A126646 (2 * n))

end

end A289932.P13447477755383205176

/-! ## A289932.P12410529940599338608

`A126646(n)-A288645(n)%A289929(n)`
-/

namespace A289932.P12410529940599338608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288645 n) (A289929 n)

end

end A289932.P12410529940599338608

/-!
# A289933: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A289933, there is no canonical definition to state claims against.
-/

/-! ## A289933.P5609360965206616403

`A007088(A289935(n))`
-/

namespace A289933.P5609360965206616403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289935 n).toNat

end

end A289933.P5609360965206616403

/-! ## A289933.P7996575457217204201

`A185544(2*A289935(n))`
-/

namespace A289933.P7996575457217204201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289935 n).toNat

end

end A289933.P7996575457217204201

/-! ## A289933.P5415577026459062148

`A289967(n*gcd(11, n))`
-/

namespace A289933.P5415577026459062148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289967 (n * Nat.gcd 11 n)

end

end A289933.P5415577026459062148

/-! ## A289933.P558356099450991402

`A289967(A062399(n))`
-/

namespace A289933.P558356099450991402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289967 (A062399 n).toNat

end

end A289933.P558356099450991402

/-! ## A289933.P11396909202302344046

`A289967(A120126(n))`
-/

namespace A289933.P11396909202302344046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289967 (A120126 n).toNat

end

end A289933.P11396909202302344046

/-!
# A289934: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A289934, there is no canonical definition to state claims against.
-/

/-! ## A289934.P2453767157507401996

`A007088(A289936(n))`
-/

namespace A289934.P2453767157507401996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289936 n).toNat

end

end A289934.P2453767157507401996

/-! ## A289934.P2893594553511415116

`A305989(A289935(n))`
-/

namespace A289934.P2893594553511415116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289935 n).toNat

end

end A289934.P2893594553511415116

/-! ## A289934.P12555237129744491956

`A185544(2*A289936(n))`
-/

namespace A289934.P12555237129744491956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289936 n).toNat

end

end A289934.P12555237129744491956

/-! ## A289934.P13379796420120786406

`A185544(lcm(2, A289936(n)))`
-/

namespace A289934.P13379796420120786406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289936 n))

end

end A289934.P13379796420120786406

/-! ## A289934.P7195798742157269595

`A289968(A062399(n))`
-/

namespace A289934.P7195798742157269595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289968 (A062399 n).toNat

end

end A289934.P7195798742157269595

/-!
# A289935: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A289935, there is no canonical definition to state claims against.
-/

/-! ## A289935.P10540925611221258058

`A289969(n^gcd(11, n))`
-/

namespace A289935.P10540925611221258058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289969 (n ^ Nat.gcd 11 n)

end

end A289935.P10540925611221258058

/-! ## A289935.P6622543255932119613

`A289969(A062399(n))`
-/

namespace A289935.P6622543255932119613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289969 (A062399 n).toNat

end

end A289935.P6622543255932119613

/-! ## A289935.P7524236231123486490

`A289969(A120126(n))`
-/

namespace A289935.P7524236231123486490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289969 (A120126 n).toNat

end

end A289935.P7524236231123486490

/-! ## A289935.P13270870899771095703

`A154443(A289969(n))`
-/

namespace A289935.P13270870899771095703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A289969 n).toNat

end

end A289935.P13270870899771095703

/-! ## A289935.P18043980258988732743

`A289969(A351870(n))`
-/

namespace A289935.P18043980258988732743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289969 (A351870 n).toNat

end

end A289935.P18043980258988732743

/-!
# A289936: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A289936, there is no canonical definition to state claims against.
-/

/-! ## A289936.P4237659583373373378

`A325401(A289935(n))`
-/

namespace A289936.P4237659583373373378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289935 n).toNat

end

end A289936.P4237659583373373378

/-! ## A289936.P6256187711648077844

`A030101(A289935(n))`
-/

namespace A289936.P6256187711648077844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289935 n).toNat

end

end A289936.P6256187711648077844

/-! ## A289936.P3374264994957827393

`A281589(2*A289935(n))`
-/

namespace A289936.P3374264994957827393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A289935 n).toNat

end

end A289936.P3374264994957827393

/-! ## A289936.P8189864873500868676

`A289970(A062399(n))`
-/

namespace A289936.P8189864873500868676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289970 (A062399 n).toNat

end

end A289936.P8189864873500868676

/-! ## A289936.P18408107915626126198

`A093783(A289970(n))`
-/

namespace A289936.P18408107915626126198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (A289970 n).toNat

end

end A289936.P18408107915626126198

/-!
# A289937: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A289937, there is no canonical definition to state claims against.
-/

/-! ## A289937.P1062610331071932726

`∑[10^n]+A000007(n)-A288121(n)`
-/

namespace A289937.P1062610331071932726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000007 n - A288121 n)

end

end A289937.P1062610331071932726

/-! ## A289937.P12470280668671742079

`floor(acot(n)-A288121(n))+A105279(n)+1`
-/

namespace A289937.P12470280668671742079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A288121 n : ℝ)⌋ + (A105279 n + 1)

end

end A289937.P12470280668671742079

/-! ## A289937.P5500213491063466492

`A000007(n)-A288121(n)+A105279(n)+1`
-/

namespace A289937.P5500213491063466492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A288121 n + (A105279 n + 1)

end

end A289937.P5500213491063466492

/-! ## A289937.P12113848845696189112

`A000042(n+1)-A288121(n)%A007718(n+1)`
-/

namespace A289937.P12113848845696189112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288121 n) (A007718 (n + 1))

end

end A289937.P12113848845696189112

/-! ## A289937.P5294315429250633776

`A007088(A289939(n))`
-/

namespace A289937.P5294315429250633776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289939 n).toNat

end

end A289937.P5294315429250633776

/-!
# A289938: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A289938, there is no canonical definition to state claims against.
-/

/-! ## A289938.P9031716686135290729

`A007088(A289940(n))`
-/

namespace A289938.P9031716686135290729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289940 n).toNat

end

end A289938.P9031716686135290729

/-! ## A289938.P2821782616692149916

`A007088(A095121(n)+1-A288125(n))`
-/

namespace A289938.P2821782616692149916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288125 n)).toNat

end

end A289938.P2821782616692149916

/-! ## A289938.P17479836969819574912

`A007088(1-(A288125(n)-A095121(n)))`
-/

namespace A289938.P17479836969819574912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288125 n - A095121 n)).toNat

end

end A289938.P17479836969819574912

/-! ## A289938.P11836618821146737466

`A007088(or(1, A126646(n)-A288125(n)))`
-/

namespace A289938.P11836618821146737466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A288125 n)).toNat

end

end A289938.P11836618821146737466

/-! ## A289938.P13552263406644080816

`A007088(A000007(n)+A126646(n)-A288125(n))`
-/

namespace A289938.P13552263406644080816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000007 n + (A126646 n - A288125 n)).toNat

end

end A289938.P13552263406644080816

/-!
# A289939: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A289939, there is no canonical definition to state claims against.
-/

/-! ## A289939.P3191283500310619671

`A095121(n)+1-A288124(n)`
-/

namespace A289939.P3191283500310619671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288124 n)

end

end A289939.P3191283500310619671

/-! ## A289939.P1704887350561073355

`xor(record[A324821(n+1)], A288124(n))`
-/

namespace A289939.P1704887350561073355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288124 n)

end

end A289939.P1704887350561073355

/-! ## A289939.P750484599588037959

`A052955(A004277(n))-A288124(n)`
-/

namespace A289939.P750484599588037959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288124 n

end

end A289939.P750484599588037959

/-! ## A289939.P11886814413107452105

`A075427(A028310(2*n))-A288124(n)`
-/

namespace A289939.P11886814413107452105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (A028310 (2 * n)).toNat - A288124 n

end

end A289939.P11886814413107452105

/-! ## A289939.P7296495573234049992

`xor(A288124(n), A324821(A008578(n+1)))`
-/

namespace A289939.P7296495573234049992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288124 n) (A324821 (A008578 (n + 1)).toNat)

end

end A289939.P7296495573234049992

/-! ## A289939.P14905433404115476396

`A075427(A028310(n)+n)-A288124(n)`
-/

namespace A289939.P14905433404115476396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (A028310 n + (n : ℤ)).toNat - A288124 n

end

end A289939.P14905433404115476396

/-! ## A289939.P4153276661111705778

`A000007(n)+A126646(n)-A288124(n)`
-/

namespace A289939.P4153276661111705778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A288124 n)

end

end A289939.P4153276661111705778

/-! ## A289939.P1065283081476403458

`A288197(n)+A289370(n)-A288124(n)`
-/

namespace A289939.P1065283081476403458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288197 n + (A289370 n - A288124 n)

end

end A289939.P1065283081476403458

/-! ## A289939.P2772749334514084231

`A126646(n)-and(A000225(n), A288124(n))`
-/

namespace A289939.P2772749334514084231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A000225 n) (A288124 n)

end

end A289939.P2772749334514084231

/-! ## A289939.P18332786968262182654

`or(A289370(n)-A288124(n), A286866(n))`
-/

namespace A289939.P18332786968262182654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289370 n - A288124 n) (A286866 n)

end

end A289939.P18332786968262182654

/-! ## A289939.P11107800559862311792

`A075427(A004277(n))-A288124(A028310(n))`
-/

namespace A289939.P11107800559862311792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (A004277 n).toNat - A288124 (A028310 n).toNat

end

end A289939.P11107800559862311792

/-!
# A289940: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A289940, there is no canonical definition to state claims against.
-/

/-! ## A289940.P15692572855819102005

`A095121(n)+1-A288125(n)`
-/

namespace A289940.P15692572855819102005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288125 n)

end

end A289940.P15692572855819102005

/-! ## A289940.P17332959365134821040

`or(1, A126646(n)-A288125(n))`
-/

namespace A289940.P17332959365134821040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288125 n)

end

end A289940.P17332959365134821040

/-! ## A289940.P17587971974545600367

`xor(record[A324821(n+1)], A288125(n))`
-/

namespace A289940.P17587971974545600367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288125 n)

end

end A289940.P17587971974545600367

/-! ## A289940.P9550965637594535919

`A052955(A004277(n))-A288125(n)`
-/

namespace A289940.P9550965637594535919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288125 n

end

end A289940.P9550965637594535919

/-! ## A289940.P15803504141284263561

`xor(A288125(n), A324821(A008578(n+1)))`
-/

namespace A289940.P15803504141284263561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288125 n) (A324821 (A008578 (n + 1)).toNat)

end

end A289940.P15803504141284263561

/-! ## A289940.P322277327517969000

`A000007(n)+A126646(n)-A288125(n)`
-/

namespace A289940.P322277327517969000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A288125 n)

end

end A289940.P322277327517969000

/-! ## A289940.P1907332367332735059

`A288124(n)+A289939(n)-A288125(n)`
-/

namespace A289940.P1907332367332735059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288124 n + (A289939 n - A288125 n)

end

end A289940.P1907332367332735059

/-!
# A289943: Numbers k such that (304*10^k - 43)/9 is prime.

The programs for A289943, there is no canonical definition to state claims against.
-/

/-! ## A289943.P4293518441276319162

`A056239(A054911(n)+A004114(n+2))`
-/

namespace A289943.P4293518441276319162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A054911 n + A004114 (n + 2)).toNat

end

end A289943.P4293518441276319162

/-! ## A289943.P12192754930894991920

`eq[A204177(n+1), A274650(A305281(n+4))]`
-/

namespace A289943.P12192754930894991920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A305281 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289943.P12192754930894991920

/-!
# A289944: Sizes of triangles in the tilings of a convex polygon by n equilateral triangles described in A014529 written as triangle T(n,m), n >= 1, 1 <= m <= n.

The programs for A289944, there is no canonical definition to state claims against.
-/

/-! ## A289944.P8561451286507976314

`A043557(A127568(n))`
-/

namespace A289944.P8561451286507976314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A127568 n).toNat

end

end A289944.P8561451286507976314

/-! ## A289944.P1480629342664744963

`A366902(A130329(n))`
-/

namespace A289944.P1480629342664744963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (A130329 n).toNat

end

end A289944.P1480629342664744963

/-! ## A289944.P6116250212822273070

`A050361(A038474(n+1))`
-/

namespace A289944.P6116250212822273070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A038474 (n + 1)).toNat

end

end A289944.P6116250212822273070

/-! ## A289944.P12831246691512880422

`A097944(A127568(n)+1)`
-/

namespace A289944.P12831246691512880422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A127568 n + 1).toNat

end

end A289944.P12831246691512880422

/-! ## A289944.P10724351688343452982

`A102572(4*A127568(n))`
-/

namespace A289944.P10724351688343452982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (4 * A127568 n).toNat

end

end A289944.P10724351688343452982

/-!
# A289945: a(n) = Sum_{k=1..n} k!^4.

The programs for A289945, there is no canonical definition to state claims against.
-/

/-! ## A289945.P17786120469021374673

`∑[(n+1)!^4]`
-/

namespace A289945.P17786120469021374673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289945.P17786120469021374673

/-! ## A289945.P13935354534776934543

`∑[∏[(n+1)^4]]`
-/

namespace A289945.P13935354534776934543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289945.P13935354534776934543

/-! ## A289945.P17904483560911557656

`or(1, ∑[(n+1)!²²])`
-/

namespace A289945.P17904483560911557656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289945.P17904483560911557656

/-! ## A289945.P8501122282077220696

`Δ[∑[∑[n!^4]]-n]`
-/

namespace A289945.P8501122282077220696
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289945.P8501122282077220696

/-! ## A289945.P16226609750599155573

`and(-3, ∑[(n+1)!²²])`
-/

namespace A289945.P16226609750599155573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A289945.P16226609750599155573

/-!
# A289946: a(n) = Sum_{k=1..n} k!^6.

The programs for A289946, there is no canonical definition to state claims against.
-/

/-! ## A289946.P2013550558453097959

`∑[(n+1)!^6]`
-/

namespace A289946.P2013550558453097959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289946.P2013550558453097959

/-! ## A289946.P10914372888890455260

`∑[∏[(n+1)^6]]`
-/

namespace A289946.P10914372888890455260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289946.P10914372888890455260

/-! ## A289946.P15384018463604559599

`Δ[abs(∑[∑[n!^6]]-n)]`
-/

namespace A289946.P15384018463604559599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289946.P15384018463604559599

/-! ## A289946.P3781899405703094286

`a(n-1)+(n+1)!^6` with `a(0)=1`
-/

namespace A289946.P3781899405703094286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (n + 1) ^ 6

end

end A289946.P3781899405703094286

/-! ## A289946.P17902216088262171233

`∏[(n+1)^6]+a(n-1)` with `a(0)=1`
-/

namespace A289946.P17902216088262171233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A289946.P17902216088262171233

/-!
# A289948: a(n) = Sum_{k=0..n} k!^3.

The programs for A289948, there is no canonical definition to state claims against.
-/

/-! ## A289948.P12684422814015227167

`∑[n!^3]`
-/

namespace A289948.P12684422814015227167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289948.P12684422814015227167

/-! ## A289948.P4781654864456092750

`∑[root(n!, 1/3)]`
-/

namespace A289948.P4781654864456092750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289948.P4781654864456092750

/-! ## A289948.P13930981747850298684

`∑[n!²*n!]`
-/

namespace A289948.P13930981747850298684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289948.P13930981747850298684

/-! ## A289948.P11267969555013645719

`a(n-1)+n!^3` with `a(0)=1`
-/

namespace A289948.P11267969555013645719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial n ^ 3

end

end A289948.P11267969555013645719

/-! ## A289948.P12314590679216514546

`∑[n^3*a(n-1)]` with `a(0)=1`
-/

namespace A289948.P12314590679216514546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289948.P12314590679216514546

/-!
# A289949: a(n) = Sum_{k=0..n} k!^4.

The programs for A289949, there is no canonical definition to state claims against.
-/

/-! ## A289949.P2381851010850804649

`∑[n!^4]`
-/

namespace A289949.P2381851010850804649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289949.P2381851010850804649

/-! ## A289949.P16828590406050344785

`∑[n!²²]`
-/

namespace A289949.P16828590406050344785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289949.P16828590406050344785

/-! ## A289949.P4647370850668387768

`∑[∏[n^ceil(atan(n))²]]`
-/

namespace A289949.P4647370850668387768
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ ^ 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289949.P4647370850668387768

/-! ## A289949.P15342571920616326910

`∑[root(n!, 1-3/4)]`
-/

namespace A289949.P15342571920616326910
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / (1 - (3 : ℚ) / 4 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289949.P15342571920616326910

/-! ## A289949.P8926906731061806488

`a(n-1)+n!^4` with `a(0)=1`
-/

namespace A289949.P8926906731061806488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial n ^ 4

end

end A289949.P8926906731061806488

/-!
# A289950: Number of permutations of [n] having exactly two nontrivial cycles.

The programs for A289950, there is no canonical definition to state claims against.
-/

/-! ## A289950.P16073573984134725166

`A136394(eq[2, A055087(n)])`
-/

namespace A289950.P16073573984134725166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289950.P16073573984134725166

/-! ## A289950.P5411614826804981822

`A136394(A004116(n+2)+5)`
-/

namespace A289950.P5411614826804981822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (A004116 (n + 2) + 5).toNat

end

end A289950.P5411614826804981822

/-! ## A289950.P7686156439783166942

`A136394(A024206(n+4)+3)`
-/

namespace A289950.P7686156439783166942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (A024206 (n + 4) + 3).toNat

end

end A289950.P7686156439783166942

/-!
# A289951: Number of permutations of [n] having exactly three nontrivial cycles.

The programs for A289951, there is no canonical definition to state claims against.
-/

/-! ## A289951.P14436413756515493657

`A136394(eq[3, A055087(n)])`
-/

namespace A289951.P14436413756515493657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289951.P14436413756515493657

/-! ## A289951.P9862976052941313377

`record[A136394(A257020(n+1))]`
-/

namespace A289951.P9862976052941313377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (A257020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289951.P9862976052941313377

/-!
# A289952: Number of permutations of [n] having exactly four nontrivial cycles.

The programs for A289952, there is no canonical definition to state claims against.
-/

/-! ## A289952.P2054955791675028651

`A136394(eq[4, A055087(n)])`
-/

namespace A289952.P2054955791675028651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289952.P2054955791675028651

/-!
# A289953: Number of permutations of [n] having exactly five nontrivial cycles.

The programs for A289953, there is no canonical definition to state claims against.
-/

/-! ## A289953.P8105527202246689403

`A136394(eq[5, A055087(n)])`
-/

namespace A289953.P8105527202246689403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289953.P8105527202246689403

/-!
# A289954: Number of permutations of [n] having exactly six nontrivial cycles.

The programs for A289954, there is no canonical definition to state claims against.
-/

/-! ## A289954.P13949724110816554561

`A136394(eq[6, A055087(n)])`
-/

namespace A289954.P13949724110816554561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289954.P13949724110816554561

/-!
# A289955: Number of permutations of [n] having exactly seven nontrivial cycles.

The programs for A289955, there is no canonical definition to state claims against.
-/

/-! ## A289955.P3424502631125009277

`A136394(eq[7, A055087(n)])`
-/

namespace A289955.P3424502631125009277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289955.P3424502631125009277

/-!
# A289959: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A289959, there is no canonical definition to state claims against.
-/

/-! ## A289959.P11332163486715253920

`A007088(A289961(n))`
-/

namespace A289959.P11332163486715253920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289961 n).toNat

end

end A289959.P11332163486715253920

/-! ## A289959.P7177390264168532287

`A185544(2*A289961(n))`
-/

namespace A289959.P7177390264168532287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289961 n).toNat

end

end A289959.P7177390264168532287

/-! ## A289959.P1751806829898096594

`A185544(A289961(n)+A289961(n))`
-/

namespace A289959.P1751806829898096594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289961 n + A289961 n).toNat

end

end A289959.P1751806829898096594

/-! ## A289959.P15682929650728133693

`A007088(A290068(n)-A293993(n)%A113749(n+1))`
-/

namespace A289959.P15682929650728133693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290068 n - Int.tmod (A293993 n) (A113749 (n + 1))).toNat

end

end A289959.P15682929650728133693

/-!
# A289960: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A289960, there is no canonical definition to state claims against.
-/

/-! ## A289960.P14503487073978875286

`A007088(A289962(n))`
-/

namespace A289960.P14503487073978875286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289962 n).toNat

end

end A289960.P14503487073978875286

/-! ## A289960.P12082186905397446855

`A087712(A289962(n)+1)`
-/

namespace A289960.P12082186905397446855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A289962 n + 1).toNat

end

end A289960.P12082186905397446855

/-! ## A289960.P13916108262496561879

`A256078(A289962(n)+1)`
-/

namespace A289960.P13916108262496561879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A289962 n + 1).toNat

end

end A289960.P13916108262496561879

/-! ## A289960.P14228703658491034524

`A007931(or(1, A289962(n)))`
-/

namespace A289960.P14228703658491034524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.lor 1 (A289962 n)).toNat

end

end A289960.P14228703658491034524

/-! ## A289960.P7885240526815385123

`A038585(or(1, A289962(n)))`
-/

namespace A289960.P7885240526815385123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (Int.lor 1 (A289962 n)).toNat

end

end A289960.P7885240526815385123

/-!
# A289961: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A289961, there is no canonical definition to state claims against.
-/

/-! ## A289961.P14630256514026923439

`A290068(n)-A236109(A023431(n))`
-/

namespace A289961.P14630256514026923439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290068 n - A236109 (A023431 n).toNat

end

end A289961.P14630256514026923439

/-! ## A289961.P9250943898247208934

`A289935(n)-A339895(A075834(n))`
-/

namespace A289961.P9250943898247208934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289935 n - A339895 (A075834 n).toNat

end

end A289961.P9250943898247208934

/-! ## A289961.P18268197458229687586

`A290068(n)-A162641(A339402(n))`
-/

namespace A289961.P18268197458229687586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290068 n - A162641 (A339402 n).toNat

end

end A289961.P18268197458229687586

/-! ## A289961.P11311324819168249747

`and(A290068(n), A316441(A081294(n)))`
-/

namespace A289961.P11311324819168249747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290068 n) (A316441 (A081294 n).toNat)

end

end A289961.P11311324819168249747

/-! ## A289961.P14891328356840249505

`A126646(n)-A326786(A005110(n+1))`
-/

namespace A289961.P14891328356840249505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A326786 (A005110 (n + 1)).toNat

end

end A289961.P14891328356840249505

/-!
# A289962: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A289962, there is no canonical definition to state claims against.
-/

/-! ## A289962.P2693348536614893791

`A000265(A289961(n)/A043562(n))`
-/

namespace A289962.P2693348536614893791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A289961 n : ℚ) / (A043562 n : ℚ))).toNat

end

end A289962.P2693348536614893791

/-! ## A289962.P11263993559213576794

`A000265(A289961(n))`
-/

namespace A289962.P11263993559213576794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A289961 n).toNat

end

end A289962.P11263993559213576794

/-!
# A289963: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A289963, there is no canonical definition to state claims against.
-/

/-! ## A289963.P14111685393224220605

`A288394(n)+A289964(n)-A288393(n)`
-/

namespace A289963.P14111685393224220605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A288393 n)

end

end A289963.P14111685393224220605

/-! ## A289963.P17259278229273349284

`A288642(n)+A289929(n)-A288393(n)`
-/

namespace A289963.P17259278229273349284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288642 n + (A289929 n - A288393 n)

end

end A289963.P17259278229273349284

/-! ## A289963.P14457049753494126356

`A288643(n)+A289930(n)-A288393(n)`
-/

namespace A289963.P14457049753494126356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288643 n + (A289930 n - A288393 n)

end

end A289963.P14457049753494126356

/-! ## A289963.P1529712735389571193

`A000042(n+1)+A057428(n)*A288393(n)`
-/

namespace A289963.P1529712735389571193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288393 n

end

end A289963.P1529712735389571193

/-! ## A289963.P3658420337193551864

`A000042(n+1)-A288393(n)%A001019(n)`
-/

namespace A289963.P3658420337193551864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288393 n) (A001019 n)

end

end A289963.P3658420337193551864

/-!
# A289964: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A289964, there is no canonical definition to state claims against.
-/

/-! ## A289964.P4580337369809546610

`or(1, A000042(n+1)-A288394(n))`
-/

namespace A289964.P4580337369809546610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A288394 n)

end

end A289964.P4580337369809546610

/-! ## A289964.P204254024887986807

`A288642(n)+A289929(n)-A288394(n)`
-/

namespace A289964.P204254024887986807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288642 n + (A289929 n - A288394 n)

end

end A289964.P204254024887986807

/-! ## A289964.P8849750393720465026

`A288643(n)+A289930(n)-A288394(n)`
-/

namespace A289964.P8849750393720465026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288643 n + (A289930 n - A288394 n)

end

end A289964.P8849750393720465026

/-! ## A289964.P3394536106529673668

`A000042(n+1)+A057428(n)*A288394(n)`
-/

namespace A289964.P3394536106529673668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288394 n

end

end A289964.P3394536106529673668

/-! ## A289964.P14579569599902619934

`A019590(n+2)+A000042(n+1)-A288394(n)`
-/

namespace A289964.P14579569599902619934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (A000042 (n + 1) - A288394 n)

end

end A289964.P14579569599902619934

/-! ## A289964.P6809883034934027817

`A000042(n+1)-A001221(A165825(n+1))*A288394(n)`
-/

namespace A289964.P6809883034934027817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A001221 (A165825 (n + 1)).toNat * A288394 n

end

end A289964.P6809883034934027817

/-!
# A289965: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A289965, there is no canonical definition to state claims against.
-/

/-! ## A289965.P9279333260584710721

`A288396(n)+A289966(n)-A288395(n)`
-/

namespace A289965.P9279333260584710721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288396 n + (A289966 n - A288395 n)

end

end A289965.P9279333260584710721

/-! ## A289965.P7506761116817578980

`A288644(n)+A289931(n)-A288395(n)`
-/

namespace A289965.P7506761116817578980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 n + (A289931 n - A288395 n)

end

end A289965.P7506761116817578980

/-! ## A289965.P10613888364149545115

`A288645(n)+A289932(n)-A288395(n)`
-/

namespace A289965.P10613888364149545115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288645 n + (A289932 n - A288395 n)

end

end A289965.P10613888364149545115

/-! ## A289965.P1283542235934442735

`A126646(n)-A288395(n)%A126646(n)`
-/

namespace A289965.P1283542235934442735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288395 n) (A126646 n)

end

end A289965.P1283542235934442735

/-! ## A289965.P15445949382890615769

`xor(A126646(n)%A289929(n), A288395(n))`
-/

namespace A289965.P15445949382890615769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A289929 n)) (A288395 n)

end

end A289965.P15445949382890615769

/-!
# A289966: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A289966, there is no canonical definition to state claims against.
-/

/-! ## A289966.P5568713910690720064

`A288395(n)+A289965(n)-A288396(n)`
-/

namespace A289966.P5568713910690720064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288395 n + (A289965 n - A288396 n)

end

end A289966.P5568713910690720064

/-! ## A289966.P14764467700462097845

`A288644(n)+A289931(n)-A288396(n)`
-/

namespace A289966.P14764467700462097845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 n + (A289931 n - A288396 n)

end

end A289966.P14764467700462097845

/-! ## A289966.P12766674400926537661

`A288645(n)+A289932(n)-A288396(n)`
-/

namespace A289966.P12766674400926537661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288645 n + (A289932 n - A288396 n)

end

end A289966.P12766674400926537661

/-! ## A289966.P7499540898227547688

`A126646(n)-A288396(n)%A126646(n)`
-/

namespace A289966.P7499540898227547688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288396 n) (A126646 n)

end

end A289966.P7499540898227547688

/-! ## A289966.P2037476978758647729

`xor(A126646(n)%A289929(n), A288396(n))`
-/

namespace A289966.P2037476978758647729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A289929 n)) (A288396 n)

end

end A289966.P2037476978758647729

/-!
# A289967: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A289967, there is no canonical definition to state claims against.
-/

/-! ## A289967.P6034770029815497695

`A007088(A289969(n))`
-/

namespace A289967.P6034770029815497695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289969 n).toNat

end

end A289967.P6034770029815497695

/-! ## A289967.P14720625214485732651

`A007088(A340632(∑[2^n-n%2]))`
-/

namespace A289967.P14720625214485732651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A340632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A289967.P14720625214485732651

/-! ## A289967.P7235522690816880332

`A198631(2*(n+2))+A178569(A289969(n))`
-/

namespace A289967.P7235522690816880332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 (2 * (n + 2)) + A178569 (A289969 n).toNat

end

end A289967.P7235522690816880332

/-! ## A289967.P18004056674882097122

`A178569(A286520(2*n+3)*A289969(n))`
-/

namespace A289967.P18004056674882097122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (A286520 (2 * n + 3) * A289969 n).toNat

end

end A289967.P18004056674882097122

/-! ## A289967.P5968105770724945514

`A185544(2*A289969(n))`
-/

namespace A289967.P5968105770724945514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289969 n).toNat

end

end A289967.P5968105770724945514

/-!
# A289968: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A289968, there is no canonical definition to state claims against.
-/

/-! ## A289968.P4369707820198245833

`A007088(A289970(n))`
-/

namespace A289968.P4369707820198245833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289970 n).toNat

end

end A289968.P4369707820198245833

/-! ## A289968.P1181619654804324813

`A305989(A289969(n)/A294775(n))`
-/

namespace A289968.P1181619654804324813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A294775 n : ℚ))).toNat

end

end A289968.P1181619654804324813

/-! ## A289968.P9760337441157307178

`A305989(A289969(n)/A184318(n+1))`
-/

namespace A289968.P9760337441157307178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289968.P9760337441157307178

/-! ## A289968.P13789891015650108736

`A305989(A289969(n)/A289944(n+1))`
-/

namespace A289968.P13789891015650108736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A289944 (n + 1) : ℚ))).toNat

end

end A289968.P13789891015650108736

/-! ## A289968.P189376799824264826

`A305989(A289969(n)/A319907(n+2))`
-/

namespace A289968.P189376799824264826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A319907 (n + 2) : ℚ))).toNat

end

end A289968.P189376799824264826

/-!
# A289969: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A289969, there is no canonical definition to state claims against.
-/

/-! ## A289969.P2366414019860226724

`A340632(∑[2^n-n%2])`
-/

namespace A289969.P2366414019860226724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289969.P2366414019860226724

/-! ## A289969.P17580535379828681770

`A340632(∑[A051049(n)])`
-/

namespace A289969.P17580535379828681770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289969.P17580535379828681770

/-! ## A289969.P16980308662138214921

`A340632(A173009(n+2))`
-/

namespace A289969.P16980308662138214921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340632 (A173009 (n + 2)).toNat

end

end A289969.P16980308662138214921

/-! ## A289969.P4607801490967705345

`A086099(A126646(n)+A080513(n))`
-/

namespace A289969.P4607801490967705345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A126646 n + A080513 n).toNat

end

end A289969.P4607801490967705345

/-! ## A289969.P11534787154034498792

`A086099(A110654(n)+A000079(n+1))`
-/

namespace A289969.P11534787154034498792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A110654 n + A000079 (n + 1)).toNat

end

end A289969.P11534787154034498792

/-!
# A289970: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A289970, there is no canonical definition to state claims against.
-/

/-! ## A289970.P13446693588429471272

`A325401(A289969(n)/A184318(n+1))`
-/

namespace A289970.P13446693588429471272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289970.P13446693588429471272

/-! ## A289970.P2319072295812947097

`A325401(A289969(n)/A289944(n+1))`
-/

namespace A289970.P2319072295812947097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A289944 (n + 1) : ℚ))).toNat

end

end A289970.P2319072295812947097

/-! ## A289970.P16862160729018179859

`A325401(A289969(n)/A319907(n+1))`
-/

namespace A289970.P16862160729018179859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289969 n : ℚ) / (A319907 (n + 1) : ℚ))).toNat

end

end A289970.P16862160729018179859

/-! ## A289970.P9835030776768814959

`A325401(A289969(n))`
-/

namespace A289970.P9835030776768814959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289969 n).toNat

end

end A289970.P9835030776768814959

/-! ## A289970.P14917923469747113820

`A281589(lcm(2, A289969(n)))`
-/

namespace A289970.P14917923469747113820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A289969 n))

end

end A289970.P14917923469747113820

/-!
# A289971: Number of permutations of [n] determined by their antidiagonal sums.

The programs for A289971, there is no canonical definition to state claims against.
-/

/-! ## A289971.P10246117368981954815

`A226190(A292507(n))+A032741(n)`
-/

namespace A289971.P10246117368981954815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A292507 n).toNat + A032741 n

end

end A289971.P10246117368981954815

/-! ## A289971.P11181173196608117467

`A226762(A217896(n+1))+A135661(A121689(n))`
-/

namespace A289971.P11181173196608117467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A217896 (n + 1)).toNat + A135661 (A121689 n).toNat

end

end A289971.P11181173196608117467

/-! ## A289971.P6884006483106900125

`A109826(2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A289971.P6884006483106900125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A109826 (2 * a (n - 2)).toNat

end

end A289971.P6884006483106900125

/-! ## A289971.P7886930312042215161

`A325543(A006706(n))`
-/

namespace A289971.P7886930312042215161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325543 (A006706 n).toNat

end

end A289971.P7886930312042215161

/-!
# A289972: Number of sets S (cubic acute n-set), with cardinality A089676(n) >= 3, of points in {0,1}^n in real n-dimensional Euclidean space such that every angle determined by three distinct points in S is acute.

The programs for A289972, there is no canonical definition to state claims against.
-/

/-! ## A289972.P11785171207876267008

`A056654(n+1)*A360361(A227928(n+1))`
-/

namespace A289972.P11785171207876267008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 1) * A360361 (A227928 (n + 1)).toNat

end

end A289972.P11785171207876267008

/-! ## A289972.P3134759772216213286

`A071126(2*n+1)*A317073(A319271(n+2))`
-/

namespace A289972.P3134759772216213286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071126 (2 * n + 1) * A317073 (A319271 (n + 2)).toNat

end

end A289972.P3134759772216213286

/-!
# A289973: p-INVERT of the lower Wythoff sequence (A000201), where p(S) = 1 - S.

The programs for A289973, there is no canonical definition to state claims against.
-/

/-! ## A289973.P15619727331576552232

`A020915(A077835(n+1)-1)`
-/

namespace A289973.P15619727331576552232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A077835 (n + 1) - 1).toNat

end

end A289973.P15619727331576552232

/-! ## A289973.P10511991682436445682

`Δ[Δ[A004526(A077835(n))]]`
-/

namespace A289973.P10511991682436445682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A077835 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289973.P10511991682436445682

/-! ## A289973.P12054697858453230691

`Δ[Δ[A002264(A181137(n))]]`
-/

namespace A289973.P12054697858453230691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A181137 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289973.P12054697858453230691

/-!
# A289974: p-INVERT of the upper Wythoff sequence (A001950), where p(S) = 1 - S.

The programs for A289974, there is no canonical definition to state claims against.
-/

/-! ## A289974.P3049636869864229715

`A002264(Δ[Δ[A077828(n)]])`
-/

namespace A289974.P3049636869864229715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A289974.P3049636869864229715

/-! ## A289974.P1882033864020805832

`A051274(Δ[Δ[A077828(n)]])`
-/

namespace A289974.P1882033864020805832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (f1 (n + 1) - f1 n).toNat

end

end A289974.P1882033864020805832

/-!
# A289975: p-INVERT of the Fibonacci numbers (A000045, including 0), where p(S) = 1 - S - S^2.

The programs for A289975, the canonical program `A289975.P5075171369289188989` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289975 has offset 0).

The definition of A289975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289975.P552570098634533235

`ogf((x-x^2)/(1-2x-2x^2+3x^3+x^4))`
-/

namespace A289975.P552570098634533235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -2, 3, 1] n

end

end A289975.P552570098634533235

namespace A289975

/-- `ogf((x-x^2)/(1-2x-2x^2+3x^3+x^4))` -/
def P552570098634533235.Spec : Prop :=
  ∀ n, P552570098634533235.a n = A289975 n

end A289975

/-! ## A289975.P5075171369289188989

`2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289975

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` -/
def P5075171369289188989.Spec : Prop :=
  ∀ n, P5075171369289188989.a n = A289975 n

theorem P5075171369289188989.correct : P5075171369289188989.Spec := by
  intro n
  simp only [A289975]

end A289975

/-! ## A289975.P5984338070395463048

`A192922(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A289975.P5984338070395463048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A192922 (n + 1) - a (n - 1)

end

end A289975.P5984338070395463048

namespace A289975

/-- `A192922(n+1)-a(n-1)` -/
def P5984338070395463048.Spec : Prop :=
  ∀ n, P5984338070395463048.a n = A289975 n

end A289975

/-! ## A289975.P9235188868465316044

`A131244(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A289975.P9235188868465316044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A131244 (n - 2) + a (n - 2)

end

end A289975.P9235188868465316044

namespace A289975

/-- `A131244(n-2)+a(n-2)` -/
def P9235188868465316044.Spec : Prop :=
  ∀ n, P9235188868465316044.a n = A289975 n

end A289975

/-! ## A289975.P16218550231216223535

`A192923(n+3)%A192923(n+2)`
-/

namespace A289975.P16218550231216223535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192923 (n + 3)) (A192923 (n + 2))

end

end A289975.P16218550231216223535

namespace A289975

/-- `A192923(n+3)%A192923(n+2)` -/
def P16218550231216223535.Spec : Prop :=
  ∀ n, P16218550231216223535.a n = A289975 n

end A289975

/-! ## A289975.P6746054445112654850

`Δ[Δ[A192923(n+1)]]-A192923(n+1)`
-/

namespace A289975.P6746054445112654850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192923 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192923 (n + 1)

end

end A289975.P6746054445112654850

namespace A289975

/-- `Δ[Δ[A192923(n+1)]]-A192923(n+1)` -/
def P6746054445112654850.Spec : Prop :=
  ∀ n, P6746054445112654850.a n = A289975 n

end A289975

/-!
# A289976: p-INVERT of (0,0,1,2,3,5,8,...), the Fibonacci numbers preceded by two zeros, where p(S) = 1 - S - S^2.

The programs for A289976, the canonical program `A289976.P16193370880655241115` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289976 has offset 0).

The definition of A289976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289976.P16193370880655241115

`ogf((x^2-x^3-x^4+x^5)/(1-2x-x^2+x^3+2x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289976

/-- `ogf((x^2-x^3-x^4+x^5)/(1-2x-x^2+x^3+2x^4+x^5-x^6))` -/
def P16193370880655241115.Spec : Prop :=
  ∀ n, P16193370880655241115.a n = A289976 n

theorem P16193370880655241115.correct : P16193370880655241115.Spec := by
  intro n
  simp only [A289976]

end A289976

/-! ## A289976.P13221544771954575647

`A135661(∑[(4-6/n)*a(n-1)])` with `a(0)=2, a(1)=4`
-/

namespace A289976.P13221544771954575647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289976.P13221544771954575647

namespace A289976

/-- `A135661(∑[(4-6/n)*a(n-1)])` -/
def P13221544771954575647.Spec : Prop :=
  ∀ n, P13221544771954575647.a n = A289976 n

end A289976

/-! ## A289976.P18086394439549938069

`A191291(A014329(n))`
-/

namespace A289976.P18086394439549938069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A014329 n).toNat

end

end A289976.P18086394439549938069

namespace A289976

/-- `A191291(A014329(n))` -/
def P18086394439549938069.Spec : Prop :=
  ∀ n, P18086394439549938069.a n = A289976 n

end A289976

/-! ## A289976.P17062564021807958040

`A135662(A148363(n))`
-/

namespace A289976.P17062564021807958040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A148363 n).toNat

end

end A289976.P17062564021807958040

namespace A289976

/-- `A135662(A148363(n))` -/
def P17062564021807958040.Spec : Prop :=
  ∀ n, P17062564021807958040.a n = A289976 n

end A289976

/-! ## A289976.P4054194910108007634

`A135660(A148770(n))`
-/

namespace A289976.P4054194910108007634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A148770 n).toNat

end

end A289976.P4054194910108007634

namespace A289976

/-- `A135660(A148770(n))` -/
def P4054194910108007634.Spec : Prop :=
  ∀ n, P4054194910108007634.a n = A289976 n

end A289976

/-!
# A289977: p-INVERT of (0,0,0,1,2,3,5,8,...), the Fibonacci numbers preceded by three zeros, where p(S) = 1 - S - S^2.

The programs for A289977, the canonical program `A289977.P7221427987114899370` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289977 has offset 0).

The definition of A289977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289977.P7221427987114899370

`ogf((x^3-x^4-x^5+x^7)/(1-2x-x^2+2x^3+x^5+x^6-x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289977

/-- `ogf((x^3-x^4-x^5+x^7)/(1-2x-x^2+2x^3+x^5+x^6-x^8))` -/
def P7221427987114899370.Spec : Prop :=
  ∀ n, P7221427987114899370.a n = A289977 n

theorem P7221427987114899370.correct : P7221427987114899370.Spec := by
  intro n
  simp only [A289977]

end A289977

/-! ## A289977.P17693771748684744185

`A168201(A158155(n+1))`
-/

namespace A289977.P17693771748684744185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A158155 (n + 1)).toNat

end

end A289977.P17693771748684744185

namespace A289977

/-- `A168201(A158155(n+1))` -/
def P17693771748684744185.Spec : Prop :=
  ∀ n, P17693771748684744185.a n = A289977 n

end A289977

/-! ## A289977.P1535825290357207726

`A168201(A158156(n+1))`
-/

namespace A289977.P1535825290357207726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A158156 (n + 1)).toNat

end

end A289977.P1535825290357207726

namespace A289977

/-- `A168201(A158156(n+1))` -/
def P1535825290357207726.Spec : Prop :=
  ∀ n, P1535825290357207726.a n = A289977 n

end A289977

/-! ## A289977.P11383531024502644912

`A168201(A158157(n+1))`
-/

namespace A289977.P11383531024502644912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A158157 (n + 1)).toNat

end

end A289977.P11383531024502644912

namespace A289977

/-- `A168201(A158157(n+1))` -/
def P11383531024502644912.Spec : Prop :=
  ∀ n, P11383531024502644912.a n = A289977 n

end A289977

/-! ## A289977.P4484087153732525975

`A168201(A158154(n+1)+11)`
-/

namespace A289977.P4484087153732525975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A158154 (n + 1) + 11).toNat

end

end A289977.P4484087153732525975

namespace A289977

/-- `A168201(A158154(n+1)+11)` -/
def P4484087153732525975.Spec : Prop :=
  ∀ n, P4484087153732525975.a n = A289977 n

end A289977

/-!
# A289978: Triangle read by rows: the multiset transform of the balanced binary Lyndon words (A022553).

The programs for A289978, there is no canonical definition to state claims against.
-/

/-! ## A289978.P9084667297786277754

`A000196(A059297(n)^A045847(n))`
-/

namespace A289978.P9084667297786277754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A059297 n : ℚ) ^ (A045847 n : ℤ))).toNat

end

end A289978.P9084667297786277754

/-! ## A289978.P11023758235694339699

`A000196(A059297(n)^A052553(n))`
-/

namespace A289978.P11023758235694339699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A059297 n : ℚ) ^ (A052553 n : ℤ))).toNat

end

end A289978.P11023758235694339699

/-! ## A289978.P1062987351445932236

`A000196(A324429(n)^A091492(n))`
-/

namespace A289978.P1062987351445932236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A324429 n : ℚ) ^ (A091492 n : ℤ))).toNat

end

end A289978.P1062987351445932236

/-! ## A289978.P12883573360673330267

`A090894(lcm(A135302(n), A186020(n)))`
-/

namespace A289978.P12883573360673330267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 (Int.lcm (A135302 n) (A186020 n))

end

end A289978.P12883573360673330267

/-! ## A289978.P13734568392890729581

`A309236(A281446(n))`
-/

namespace A289978.P13734568392890729581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309236 (A281446 n).toNat

end

end A289978.P13734568392890729581

/-!
# A289979: Define two sequences n1(i) and n2(i) by the recurrences n1(i) = n1(i-1) + digsum(n2(i-1)), n2(i) = n2(i-1) + digsum(n1(i-1)), with initial values n1(1) = n and n2(1) = 0. Then a(n) is the smallest m such that n1(i) = n2(i) = m for some i, or -1 if no such m exists.

The programs for A289979, there is no canonical definition to state claims against.
-/

/-! ## A289979.P5309583928169552536

`∑[A079475(Δ[A345405(n+1)])]`
-/

namespace A289979.P5309583928169552536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345405 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079475 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289979.P5309583928169552536

/-! ## A289979.P1846002476309137177

`∑[A033865(Δ[A033865(n)]^4)]`
-/

namespace A289979.P1846002476309137177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 ((f2 (n + 1) - f2 n) ^ 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289979.P1846002476309137177

/-! ## A289979.P16037904924294547316

`∑[A033865(Δ[A033865(n)]²²)]`
-/

namespace A289979.P16037904924294547316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (((f2 (n + 1) - f2 n) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289979.P16037904924294547316

/-! ## A289979.P8848032456584817586

`∑[A162210(round(A006822(n)²/6))]`
-/

namespace A289979.P8848032456584817586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162210 (SequenceMachineLib.roundAway ((A006822 n ^ 2 : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289979.P8848032456584817586

/-! ## A289979.P8858129752249883107

`A120951(A023106(n+1))`
-/

namespace A289979.P8858129752249883107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A023106 (n + 1)).toNat

end

end A289979.P8858129752249883107

/-!
# A289982: Lesser member p of twin primes in A054723 (Prime exponents of composite Mersenne numbers).

The programs for A289982, the canonical program `A289982.P14518482289595983886` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289982 has offset 1).

The definition of A289982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289982.P16068982096857745665

`∩[A054723(n+1)-2, A054723(n+1)]`
-/

namespace A289982.P16068982096857745665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289982.P16068982096857745665

namespace A289982

/-- `∩[A054723(n+1)-2, A054723(n+1)]` -/
def P16068982096857745665.Spec : Prop :=
  ∀ n, (P16068982096857745665.a n : ℤ) = A289982 (n + 1)

end A289982

/-! ## A289982.P14518482289595983886

`A054723(eq[2, A054723(n+2)-A054723(n+1)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289982

/-- `A054723(eq[2, A054723(n+2)-A054723(n+1)]+1)` -/
def P14518482289595983886.Spec : Prop :=
  ∀ n, P14518482289595983886.a n = A289982 (n + 1)

theorem P14518482289595983886.correct : P14518482289595983886.Spec := by
  intro n
  simp only [A289982, Nat.add_sub_cancel]

end A289982

/-! ## A289982.P9156584598767003200

`∩[A054723(n+1), A007431(A054723(n+1))]`
-/

namespace A289982.P9156584598767003200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A054723 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289982.P9156584598767003200

namespace A289982

/-- `∩[A054723(n+1), A007431(A054723(n+1))]` -/
def P9156584598767003200.Spec : Prop :=
  ∀ n, (P9156584598767003200.a n : ℤ) = A289982 (n + 1)

end A289982

/-! ## A289982.P17687076876780673277

`∩[A054723(n+1), A083254(A054723(n+2))]`
-/

namespace A289982.P17687076876780673277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A054723 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289982.P17687076876780673277

namespace A289982

/-- `∩[A054723(n+1), A083254(A054723(n+2))]` -/
def P17687076876780673277.Spec : Prop :=
  ∀ n, (P17687076876780673277.a n : ℤ) = A289982 (n + 1)

end A289982

/-! ## A289982.P16023800460580451250

`A054799(lt[A115174(n+1), A157400(2*(n+1))])`
-/

namespace A289982.P16023800460580451250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157400 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289982.P16023800460580451250

namespace A289982

/-- `A054799(lt[A115174(n+1), A157400(2*(n+1))])` -/
def P16023800460580451250.Spec : Prop :=
  ∀ n, P16023800460580451250.a n = A289982 (n + 1)

end A289982

/-!
# A289984: Primes of the form 3^k - 34.

The programs for A289984, there is no canonical definition to state claims against.
-/

/-! ## A289984.P12591961278003653366

`3^A219051(n+1)-34`
-/

namespace A289984.P12591961278003653366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219051 (n + 1) : ℤ) - 34

end

end A289984.P12591961278003653366

/-!
# A289986: Number of connected 2n-regular loopless multigraphs on 2n unlabeled nodes.

The programs for A289986, there is no canonical definition to state claims against.
-/

/-! ## A289986.P14951533705046186086

`A328682(A033586(n))`
-/

namespace A289986.P14951533705046186086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A033586 n).toNat

end

end A289986.P14951533705046186086

/-!
# A289987: Number of unlabeled connected loopless multigraphs with n nodes of degree less than n.

The programs for A289987, there is no canonical definition to state claims against.
-/

/-! ## A289987.P1906858899505465411

`A334546(2*n²)-floor(acot(n))`
-/

namespace A289987.P1906858899505465411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (2 * n ^ 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A289987.P1906858899505465411

/-! ## A289987.P917841335043127466

`A334546(2*n²)-A023929(n)`
-/

namespace A289987.P917841335043127466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (2 * n ^ 2) - A023929 n

end

end A289987.P917841335043127466

/-! ## A289987.P1787292530244767555

`A334546(A184537(n)/A028310(n))`
-/

namespace A289987.P1787292530244767555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.roundAway ((A184537 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A289987.P1787292530244767555

/-!
# A289988: Number of unlabeled connected loopless multigraphs with n nodes of degree n or less.

The programs for A289988, there is no canonical definition to state claims against.
-/

/-! ## A289988.P14655050159292213096

`A334546(∑[4*n])`
-/

namespace A289988.P14655050159292213096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289988.P14655050159292213096

/-! ## A289988.P5097540340870188943

`A334546(A106232(n+1))+char[15]`
-/

namespace A289988.P5097540340870188943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (A106232 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A289988.P5097540340870188943

/-! ## A289988.P4093997814638843784

`or(A000007(n), A334546(A046092(n)))`
-/

namespace A289988.P4093997814638843784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334546 (A046092 n).toNat)

end

end A289988.P4093997814638843784

/-! ## A289988.P12357374399543517302

`or(A019590(n+1), A334546(A106232(n+1)))`
-/

namespace A289988.P12357374399543517302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A334546 (A106232 (n + 1)).toNat)

end

end A289988.P12357374399543517302

/-! ## A289988.P6992597778436331336

`or(A116857(n+1), A334546(A106232(n+1)))`
-/

namespace A289988.P6992597778436331336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116857 (n + 1)) (A334546 (A106232 (n + 1)).toNat)

end

end A289988.P6992597778436331336

/-!
# A289989: Number of unlabeled connected simple graphs with n nodes of degree 4 or less and degree at least 2.

The programs for A289989, there is no canonical definition to state claims against.
-/

/-! ## A289989.P6598972193504420773

`A289990(round(sqrt(n²+1)))+A006820(n)`
-/

namespace A289989.P6598972193504420773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289990 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A006820 n

end

end A289989.P6598972193504420773

/-! ## A289989.P8050255500695622571

`A289990(A233583(n+1))+A068934(A077169(n))`
-/

namespace A289989.P8050255500695622571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289990 (A233583 (n + 1)).toNat + A068934 (A077169 n).toNat

end

end A289989.P8050255500695622571

/-! ## A289989.P12784725589145988905

`A126205(A326212(n)+n)`
-/

namespace A289989.P12784725589145988905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A326212 n + (n : ℤ)).toNat

end

end A289989.P12784725589145988905

/-! ## A289989.P14986546780925032647

`A065716(A002450(n))+A006820(n)`
-/

namespace A289989.P14986546780925032647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A002450 n).toNat + A006820 n

end

end A289989.P14986546780925032647

/-!
# A289990: Number of unlabeled connected simple graphs with n nodes of degree 4 or less and degree at least 2 which are not 4-regular graphs.

The programs for A289990, there is no canonical definition to state claims against.
-/

/-! ## A289990.P14936198863317901902

`A289989(n+1)-A006820(n+1)`
-/

namespace A289990.P14936198863317901902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289989 (n + 1) - A006820 (n + 1)

end

end A289990.P14936198863317901902

/-! ## A289990.P627367251928316065

`A289159(n+1)-A289991(n+1)`
-/

namespace A289990.P627367251928316065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289159 (n + 1) - A289991 (n + 1)

end

end A289990.P627367251928316065

/-! ## A289990.P3554456065413350750

`A289159(n+1)-A002265(n*A293266(n))`
-/

namespace A289990.P3554456065413350750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289159 (n + 1) - A002265 ((n : ℤ) * A293266 n).toNat

end

end A289990.P3554456065413350750

/-! ## A289990.P12041437173051931946

`A289159(n+1)-A130845(n*A293266(n))`
-/

namespace A289990.P12041437173051931946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289159 (n + 1) - A130845 ((n : ℤ) * A293266 n).toNat

end

end A289990.P12041437173051931946

/-!
# A289991: Number of unlabeled connected simple graphs with n nodes of degree 4 or less and with at least a cyclic structure and a node of degree one.

The programs for A289991, there is no canonical definition to state claims against.
-/

/-! ## A289991.P14031926227566387752

`A289159(n+1)-A289990(n+1)`
-/

namespace A289991.P14031926227566387752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289159 (n + 1) - A289990 (n + 1)

end

end A289991.P14031926227566387752

/-! ## A289991.P3661075530357965101

`A289159(n+1)-(A289989(n+1)-A006820(n+1))`
-/

namespace A289991.P3661075530357965101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289159 (n + 1) - (A289989 (n + 1) - A006820 (n + 1))

end

end A289991.P3661075530357965101

/-! ## A289991.P4577795391975543704

`A002265(n*A293266(n))`
-/

namespace A289991.P4577795391975543704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) * A293266 n).toNat

end

end A289991.P4577795391975543704

/-! ## A289991.P3868616795940414268

`A130845(n*A293266(n))`
-/

namespace A289991.P3868616795940414268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 ((n : ℤ) * A293266 n).toNat

end

end A289991.P3868616795940414268

/-!
# A289992: Number of magic labelings of the prism graph I X C_8 having magic sum n.

The programs for A289992, the canonical program `A289992.P12730023669115640224` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289992 has offset 0).

The definition of A289992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289992.P12730023669115640224

`∑[2*A244880(n)]-A244880(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A289992

/-- `∑[2*A244880(n)]-A244880(n)` -/
def P12730023669115640224.Spec : Prop :=
  ∀ n, P12730023669115640224.a n = A289992 n

theorem P12730023669115640224.correct : P12730023669115640224.Spec := by
  intro n
  simp only [A289992]

end A289992

/-!
# A289995: Numbers n with omega(n) <= 1 such that omega(n+1) = 1 or omega(n+2) = 1.

The programs for A289995, the canonical program `A289995.P2084561058592668144` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289995 has offset 1).

The definition of A289995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289995.P2084561058592668144

`A000961(lt[Δ[A000961(n+1)], 3]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A289995

/-- `A000961(lt[Δ[A000961(n+1)], 3]+1)` -/
def P2084561058592668144.Spec : Prop :=
  ∀ n, P2084561058592668144.a n = A289995 (n + 1)

theorem P2084561058592668144.correct : P2084561058592668144.Spec := by
  intro n
  simp only [A289995, Nat.add_sub_cancel]

end A289995

/-! ## A289995.P2585691701424811386

`record[A000961(n+1)/A000010(A057820(n+1))]`
-/

namespace A289995.P2585691701424811386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A000010 (A057820 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289995.P2585691701424811386

namespace A289995

/-- `record[A000961(n+1)/A000010(A057820(n+1))]` -/
def P2585691701424811386.Spec : Prop :=
  ∀ n, P2585691701424811386.a n = (A289995 (n + 1) : ℚ)

end A289995

/-! ## A289995.P7626500541285487841

`record[A000961(n+1)/A000045(A275120(n+1))]`
-/

namespace A289995.P7626500541285487841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A000045 (A275120 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289995.P7626500541285487841

namespace A289995

/-- `record[A000961(n+1)/A000045(A275120(n+1))]` -/
def P7626500541285487841.Spec : Prop :=
  ∀ n, P7626500541285487841.a n = (A289995 (n + 1) : ℚ)

end A289995

/-! ## A289995.P11125898218865475227

`record[A000961(n+1)/A057820(A057820(n+1)²)]`
-/

namespace A289995.P11125898218865475227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A057820 (A057820 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289995.P11125898218865475227

namespace A289995

/-- `record[A000961(n+1)/A057820(A057820(n+1)²)]` -/
def P11125898218865475227.Spec : Prop :=
  ∀ n, P11125898218865475227.a n = (A289995 (n + 1) : ℚ)

end A289995

/-! ## A289995.P17199993325117884893

`record[A000015(n+1)%A031218(n+3)]`
-/

namespace A289995.P17199993325117884893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000015 (n + 1)) (A031218 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289995.P17199993325117884893

namespace A289995

/-- `record[A000015(n+1)%A031218(n+3)]` -/
def P17199993325117884893.Spec : Prop :=
  ∀ n, P17199993325117884893.a n = A289995 (n + 1)

end A289995

/-! ## A289995.P14262379948424486077

`record[A188666(2*n+1)%A031218(n+3)]`
-/

namespace A289995.P14262379948424486077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188666 (2 * n + 1)) (A031218 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289995.P14262379948424486077

namespace A289995

/-- `record[A188666(2*n+1)%A031218(n+3)]` -/
def P14262379948424486077.Spec : Prop :=
  ∀ n, P14262379948424486077.a n = A289995 (n + 1)

end A289995

/-!
# A289996: Coefficients in asymptotic expansion of sequence A275754.

The programs for A289996, there is no canonical definition to state claims against.
-/

/-! ## A289996.P3464748002442409259

`A238617(2^n)-and(-2, 2^n)`
-/

namespace A289996.P3464748002442409259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (2 ^ n) - Int.land (-2) (2 ^ n : ℤ)

end

end A289996.P3464748002442409259

/-! ## A289996.P17327517915855351133

`A107982(a(xor(1, n-3))+a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A289996.P17327517915855351133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A107982 (a (Int.xor 1 ((n : ℤ) - 3)).toNat + a (n - 1)).toNat

end

end A289996.P17327517915855351133

/-!
# A289997: Numbers n whose trajectory under iteration of the map k -> (sigma(k)+phi(k))/2 never reaches a fraction (that is, either the trajectory reaches a prime, which is a fixed point, or diverges to infinity).

The programs for A289997, there is no canonical definition to state claims against.
-/

/-! ## A289997.P1303867858118492698

`comp[A291791(n+1)-1]+1`
-/

namespace A289997.P1303867858118492698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289997.P1303867858118492698

/-! ## A289997.P14155762806783008300

`lt[or(n, A291914(n+1)), 1]+1`
-/

namespace A289997.P14155762806783008300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A291914 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289997.P14155762806783008300

/-! ## A289997.P1443040019456304089

`lt[A291914(n+1), A000007(n)]+1`
-/

namespace A289997.P1443040019456304089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289997.P1443040019456304089

/-! ## A289997.P8260594022351252948

`lt[A291914(n+1), A000038(n)]+1`
-/

namespace A289997.P8260594022351252948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289997.P8260594022351252948

/-! ## A289997.P2225719940235309109

`lt[n, A020639(A291934(n+1))]+1`
-/

namespace A289997.P2225719940235309109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A291934 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289997.P2225719940235309109

/-! ## A289997.P8073484627447804547

`record[A103517(n)/A000005(A291934(n+1))]`
-/

namespace A289997.P8073484627447804547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A000005 (A291934 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289997.P8073484627447804547

/-! ## A289997.P9502640082983966109

`eq[0, A156776(n+1)]+1`
-/

namespace A289997.P9502640082983966109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289997.P9502640082983966109

/-! ## A289997.P4643256863824331747

`lt[n*A156776(A028310(n)), n]`
-/

namespace A289997.P4643256863824331747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156776 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289997.P4643256863824331747

/-! ## A289997.P16965325775319052854

`eq[A000007(n), A156776(A028310(n))]`
-/

namespace A289997.P16965325775319052854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156776 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289997.P16965325775319052854

/-! ## A289997.P16416289123979209567

`eq[A000038(n), A156776(A028310(n))]`
-/

namespace A289997.P16416289123979209567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156776 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289997.P16416289123979209567

/-!
# A289998: Number of (undirected) Hamiltonian paths in the n-Fibonacci cube graph.

The programs for A289998, there is no canonical definition to state claims against.
-/

/-! ## A289998.P13299817292928704012

`ceil(∏{e}[(2*n)!, n-1+#]/6)`
-/

namespace A289998.P13299817292928704012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - 1 + (Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℚ) / 6⌉

end

end A289998.P13299817292928704012

/-!
# A289999: Sierpinski cuboctahedral numbers: a(n) = 16*4^n - 12*2^n + 9.

The programs for A289999, the canonical program `A289999.P1119549586799168563` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289999 has offset 0).

The definition of A289999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*4^n-12*2^n+9` (program `A289999.P1119549586799168563`, by `A289999.P1119549586799168563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289999.P1741057114314747864

`ogf((13-42x+56x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A289999.P1741057114314747864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -42, 56] [1, -7, 14, -8] n

end

end A289999.P1741057114314747864

namespace A289999

/-- `ogf((13-42x+56x^2)/(1-7x+14x^2-8x^3))` -/
def P1741057114314747864.Spec : Prop :=
  ∀ n, P1741057114314747864.a n = A289999 n

end A289999

/-! ## A289999.P1119549586799168563

`16*4^n-12*2^n+9`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A289999

/-- `16*4^n-12*2^n+9` -/
def P1119549586799168563.Spec : Prop :=
  ∀ n, P1119549586799168563.a n = A289999 n

theorem P1119549586799168563.correct : P1119549586799168563.Spec := by
  intro n
  simp only [A289999]

end A289999

/-! ## A289999.P15471798683993070009

`xor(3, A281699(n))`
-/

namespace A289999.P15471798683993070009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A281699 n)

end

end A289999.P15471798683993070009

namespace A289999

/-- `xor(3, A281699(n))` -/
def P15471798683993070009.Spec : Prop :=
  ∀ n, P15471798683993070009.a n = A289999 n

end A289999

/-! ## A289999.P4492158992071339490

`or(1, 6*A123290(n+2))`
-/

namespace A289999.P4492158992071339490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A123290 (n + 2))

end

end A289999.P4492158992071339490

namespace A289999

/-- `or(1, 6*A123290(n+2))` -/
def P4492158992071339490.Spec : Prop :=
  ∀ n, P4492158992071339490.a n = A289999 n

end A289999

/-! ## A289999.P12221824270210086449

`or(A281699(n)-1, A186741(n))`
-/

namespace A289999.P12221824270210086449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281699 n - 1) (A186741 n)

end

end A289999.P12221824270210086449

namespace A289999

/-- `or(A281699(n)-1, A186741(n))` -/
def P12221824270210086449.Spec : Prop :=
  ∀ n, P12221824270210086449.a n = A289999 n

end A289999

/-! ## A289999.P6117491251505350586

`xor(6*A123290(n+2), A025469(n)!)`
-/

namespace A289999.P6117491251505350586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A123290 (n + 2)) (Nat.factorial (A025469 n).toNat : ℤ)

end

end A289999.P6117491251505350586

namespace A289999

/-- `xor(6*A123290(n+2), A025469(n)!)` -/
def P6117491251505350586.Spec : Prop :=
  ∀ n, P6117491251505350586.a n = A289999 n

end A289999

/-! ## A289999.P917525618005634866

`abs(A309873(A016825(n))+A281699(n))`
-/

namespace A289999.P917525618005634866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A309873 (A016825 n).toNat + A281699 n|

end

end A289999.P917525618005634866

namespace A289999

/-- `abs(A309873(A016825(n))+A281699(n))` -/
def P917525618005634866.Spec : Prop :=
  ∀ n, P917525618005634866.a n = A289999 n

end A289999

