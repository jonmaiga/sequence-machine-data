import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A385400: a(n) is the number of free polyominoids that have faces aligned to precisely 3 planes.

The programs for A385400, there is no canonical definition to state claims against.
-/

/-! ## A385400.P5114702318513675739

`A075679(n+1)-A385399(n+1)-A000105(n+1)`
-/

namespace A385400.P5114702318513675739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075679 (n + 1) - A385399 (n + 1) - A000105 (n + 1)

end

end A385400.P5114702318513675739

/-!
# A385402: Numbers m >= 1 such that Sum_{k = 1..m} gcd(m, floor(m / k)) = Sum_{k = 1..m} gcd(m, ceiling(m / k)).

The programs for A385402, there is no canonical definition to state claims against.
-/

/-! ## A385402.P7639359381632824329

`∪[A000040(n+1), A385858(n+1)]`
-/

namespace A385402.P7639359381632824329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P7639359381632824329

/-! ## A385402.P18069651040098391234

`∪[A008578(n+1), A385858(n+1)]`
-/

namespace A385402.P18069651040098391234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P18069651040098391234

/-! ## A385402.P783980359233989363

`comp[A300737(n+1)]+1`
-/

namespace A385402.P783980359233989363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385402.P783980359233989363

/-! ## A385402.P5062740177539152878

`filter[A091010(n+1), A192280(#)]`
-/

namespace A385402.P5062740177539152878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A385402.P5062740177539152878

/-! ## A385402.P10571076445910005709

`filter[A091010(n+1), A389449(#)]`
-/

namespace A385402.P10571076445910005709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A385402.P10571076445910005709

/-!
# A385406: Triangle read by rows: T(n, k) = n*(n+1)/2 - floor((n-1)/2) - (-1)^k * floor(k/2).

The programs for A385406, the canonical program `A385406.P6181901928708286412` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385406 has offset 1).

The definition of A385406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385406.P6181901928708286412

`A056023(A057028(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A385406

/-- `A056023(A057028(n+1))` -/
def P6181901928708286412.Spec : Prop :=
  ∀ n, P6181901928708286412.a n = A385406 (n + 1)

theorem P6181901928708286412.correct : P6181901928708286412.Spec := by
  intro n
  simp only [A385406, Nat.add_sub_cancel]

end A385406

/-! ## A385406.P14379426808134413990

`A056023(A056023(n+1)+A092543(n+1)-A209279(n+1))`
-/

namespace A385406.P14379426808134413990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A056023 (n + 1) + (A092543 (n + 1) - A209279 (n + 1))).toNat

end

end A385406.P14379426808134413990

namespace A385406

/-- `A056023(A056023(n+1)+A092543(n+1)-A209279(n+1))` -/
def P14379426808134413990.Spec : Prop :=
  ∀ n, P14379426808134413990.a n = A385406 (n + 1)

end A385406

/-! ## A385406.P3493759744414359580

`A056011(A209293(n+1))`
-/

namespace A385406.P3493759744414359580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A209293 (n + 1)).toNat

end

end A385406.P3493759744414359580

namespace A385406

/-- `A056011(A209293(n+1))` -/
def P3493759744414359580.Spec : Prop :=
  ∀ n, P3493759744414359580.a n = A385406 (n + 1)

end A385406

/-! ## A385406.P5742175470560999849

`A059399(A378762(n+1))`
-/

namespace A385406.P5742175470560999849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A378762 (n + 1)).toNat

end

end A385406.P5742175470560999849

namespace A385406

/-- `A059399(A378762(n+1))` -/
def P5742175470560999849.Spec : Prop :=
  ∀ n, P5742175470560999849.a n = A385406 (n + 1)

end A385406

/-!
# A385407: Number of strings of length n defined on {0, 1, 2, 3} that contain one or no 1's, two or no 2's, three or no 3's and any number of 0's.

The programs for A385407, the canonical program `A385407.P7004031065679688765` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385407 has offset 0).

The definition of A385407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385407.P978217143014816909

`ogf((1-5x+11x^2-10x^3+3x^4+9x^5+51x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A385407.P978217143014816909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 11, -10, 3, 9, 51] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A385407.P978217143014816909

namespace A385407

/-- `ogf((1-5x+11x^2-10x^3+3x^4+9x^5+51x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P978217143014816909.Spec : Prop :=
  ∀ n, P978217143014816909.a n = A385407 n

end A385407

/-! ## A385407.P7004031065679688765

`60*C(n, 6)+10*C(n, 5)+4*C(n, 4)+4*C(n, 3)+C(n, 2)+n+1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385407

/-- `60*C(n, 6)+10*C(n, 5)+4*C(n, 4)+4*C(n, 3)+C(n, 2)+n+1` -/
def P7004031065679688765.Spec : Prop :=
  ∀ n, (P7004031065679688765.a n : ℤ) = A385407 n

theorem P7004031065679688765.correct : P7004031065679688765.Spec := by
  intro n
  simp only [A385407]

end A385407

/-!
# A385410: Multiples k of b that are not perfect powers and whose trailing digits form a power of b, where 1 < b < k.

The programs for A385410, there is no canonical definition to state claims against.
-/

/-! ## A385410.P8256045656665336018

`A327476(record[∑[A321765(n+3)]+3])`
-/

namespace A385410.P8256045656665336018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A385410.P8256045656665336018

/-! ## A385410.P624395311825975150

`A024619(A326180(2*n+1)+A127072(n+2))`
-/

namespace A385410.P624395311825975150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (A326180 (2 * n + 1) + A127072 (n + 2)).toNat

end

end A385410.P624395311825975150

/-!
# A385412: Numbers k that are not perfect powers and whose trailing digits form a power of b, where 1 < b < k.

The programs for A385412, the canonical program `A385412.P1663864152010749443` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385412 has offset 1).

The definition of A385412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385412.P3407000185164925536

`∪[A385410(n+1), A385411(n+1)]`
-/

namespace A385412.P3407000185164925536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385412.P3407000185164925536

namespace A385412

/-- `∪[A385410(n+1), A385411(n+1)]` -/
def P3407000185164925536.Spec : Prop :=
  ∀ n, (P3407000185164925536.a n : ℤ) = A385412 (n + 1)

end A385412

/-! ## A385412.P1663864152010749443

`∩[A007916(n+1), A038687(n+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385412

/-- `∩[A007916(n+1), A038687(n+1)]` -/
def P1663864152010749443.Spec : Prop :=
  ∀ n, (P1663864152010749443.a n : ℤ) = A385412 (n + 1)

theorem P1663864152010749443.correct : P1663864152010749443.Spec := by
  intro n
  simp only [A385412, Nat.add_sub_cancel]

end A385412

/-! ## A385412.P11425231612031380053

`∩[A038687(n+1), A175082(n+1)]`
-/

namespace A385412.P11425231612031380053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385412.P11425231612031380053

namespace A385412

/-- `∩[A038687(n+1), A175082(n+1)]` -/
def P11425231612031380053.Spec : Prop :=
  ∀ n, (P11425231612031380053.a n : ℤ) = A385412 (n + 1)

end A385412

/-! ## A385412.P15644296982824566389

`filter[A038687(n+1), A132350(#)]`
-/

namespace A385412.P15644296982824566389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A385412.P15644296982824566389

namespace A385412

/-- `filter[A038687(n+1), A132350(#)]` -/
def P15644296982824566389.Spec : Prop :=
  ∀ n, P15644296982824566389.a n = A385412 (n + 1)

end A385412

/-!
# A385413: Number of solid standard Young tableaux of 2n cells and height >= n.

The programs for A385413, there is no canonical definition to state claims against.
-/

/-! ## A385413.P5370467058234737879

`A215120(C(2*n+1, 2)+n)`
-/

namespace A385413.P5370467058234737879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215120 (Nat.choose (2 * n + 1) 2 + n)

end

end A385413.P5370467058234737879

/-! ## A385413.P3605272073017930839

`A215120(∑[4*n])`
-/

namespace A385413.P3605272073017930839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385413.P3605272073017930839

/-!
# A385415: Products of three consecutive integers whose prime divisors are consecutive primes starting at 2.

The programs for A385415, there is no canonical definition to state claims against.
-/

/-! ## A385415.P13649795909715976122

`A007531(A398139(n+1)+2)`
-/

namespace A385415.P13649795909715976122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A398139 (n + 1) + 2).toNat

end

end A385415.P13649795909715976122

/-! ## A385415.P15049601110305403877

`A245092(A386951(n+1))`
-/

namespace A385415.P15049601110305403877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A386951 (n + 1)).toNat

end

end A385415.P15049601110305403877

/-! ## A385415.P9019499913745039464

`A386951(∑[A287641(n)²])`
-/

namespace A385415.P9019499913745039464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385415.P9019499913745039464

/-! ## A385415.P1122451097130645670

`A386951(∑[A121314(n)!])`
-/

namespace A385415.P1122451097130645670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A121314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385415.P1122451097130645670

/-!
# A385416: The number of unordered factorizations of n into exponentially odd numbers (A268335).

The programs for A385416, there is no canonical definition to state claims against.
-/

/-! ## A385416.P17621076527267334422

`A001055(((n+1)/∏{p}[n+1, #^val(n+1, #²)])%A107772(2*(n+2)))`
-/

namespace A385416.P17621076527267334422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))) (A107772 (2 * (n + 2)))).toNat

end

end A385416.P17621076527267334422

/-! ## A385416.P15716969211587697078

`A001055(A019554(n+1)%A206767(2*n+3))`
-/

namespace A385416.P15716969211587697078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.tmod (A019554 (n + 1)) (A206767 (2 * n + 3))).toNat

end

end A385416.P15716969211587697078

/-! ## A385416.P14736741383421259615

`A034836(((n+1)/∏{p}[n+1, #^val(n+1, #²)])%A322679(n+4))`
-/

namespace A385416.P14736741383421259615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))) (A322679 (n + 4))).toNat

end

end A385416.P14736741383421259615

/-! ## A385416.P7529308671388534483

`A001055(A019554(n+1)%A189760(n+4))`
-/

namespace A385416.P7529308671388534483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.tmod (A019554 (n + 1)) (A189760 (n + 4))).toNat

end

end A385416.P7529308671388534483

/-! ## A385416.P7789046979137972147

`A001055(A019554(n+1))%A377178(2*(n+2))`
-/

namespace A385416.P7789046979137972147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A019554 (n + 1)).toNat) (A377178 (2 * (n + 2)))

end

end A385416.P7789046979137972147

/-!
# A385417: Numbers with a record number of unordered factorizations into exponentially odd numbers (A268335).

The programs for A385417, there is no canonical definition to state claims against.
-/

/-! ## A385417.P17462642664809504208

`A384010(A003814(n+1)-A179455(n))`
-/

namespace A385417.P17462642664809504208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A003814 (n + 1) - A179455 n).toNat

end

end A385417.P17462642664809504208

/-!
# A385418: The number of unordered factorizations of n into powers of primes of the form p^(2^k-1) where p is prime and k >= 0.

The programs for A385418, there is no canonical definition to state claims against.
-/

/-! ## A385418.P12597171378019322028

`∏{e}[n+1, A000929(#)]`
-/

namespace A385418.P12597171378019322028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000929 (Nat.factorization (f1 n) p)

end

end A385418.P12597171378019322028

/-! ## A385418.P3453372601904835909

`A000929(A051903(n+1)%A322002(2*n+3))`
-/

namespace A385418.P3453372601904835909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000929 (Int.tmod (A051903 (n + 1)) (A322002 (2 * n + 3))).toNat

end

end A385418.P3453372601904835909

/-! ## A385418.P7349108532526933251

`A317533(A050361(n+1)%A146295(n+2))`
-/

namespace A385418.P7349108532526933251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317533 (Int.tmod (A050361 (n + 1)) (A146295 (n + 2))).toNat

end

end A385418.P7349108532526933251

/-! ## A385418.P12323558449116812547

`A087436(A000040(n+2)*A188581(n+1))`
-/

namespace A385418.P12323558449116812547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A000040 (n + 2) * A188581 (n + 1)).toNat

end

end A385418.P12323558449116812547

/-! ## A385418.P10211487298797698979

`∏{e}[31*(n+1)², A248891(#)]`
-/

namespace A385418.P10211487298797698979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A248891 (Nat.factorization (f1 n) p)

end

end A385418.P10211487298797698979

/-!
# A385419: Expansion of e.g.f. 1/(1 - arcsinh(2*x))^(1/2).

The programs for A385419, there is no canonical definition to state claims against.
-/

/-! ## A385419.P6107339481468713333

`or(1, A127757(∑[A006117(n)]))`
-/

namespace A385419.P6107339481468713333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A385419.P6107339481468713333

/-! ## A385419.P876907429691296150

`or(A001586(n), A240314(A001006(n)))`
-/

namespace A385419.P876907429691296150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001586 n) (A240314 (A001006 n).toNat)

end

end A385419.P876907429691296150

/-!
# A385421: Expansion of e.g.f. 1/(1 - arcsin(2*x))^(1/2).

The programs for A385421, there is no canonical definition to state claims against.
-/

/-! ## A385421.P14737253629462349187

`∑{#}[n, A001147(#)*2^(n-#)*A385343(C(n+1, 2)+#)]`
-/

namespace A385421.P14737253629462349187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A001147 k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A385343 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385421.P14737253629462349187

/-! ## A385421.P14723721495306062054

`A385807(A385846(n))+A235134(n)`
-/

namespace A385421.P14723721495306062054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385807 (A385846 n).toNat + A235134 n

end

end A385421.P14723721495306062054

/-!
# A385422: Expansion of e.g.f. 1/(1 - arcsin(3*x))^(1/3).

The programs for A385422, there is no canonical definition to state claims against.
-/

/-! ## A385422.P3497885820920821892

`∑{#}[n, A007559(#)*3^(n-#)*A385343(C(n+1, 2)+#)]`
-/

namespace A385422.P3497885820920821892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A007559 k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A385343 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385422.P3497885820920821892

/-!
# A385424: Expansion of e.g.f. exp( -LambertW(-arcsin(x)) ).

The programs for A385424, there is no canonical definition to state claims against.
-/

/-! ## A385424.P8870136498390267936

`∑{#}[n, (#+1)^(#-1)*A385343(C(n+1, 2)+#)]`
-/

namespace A385424.P8870136498390267936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A385343 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385424.P8870136498390267936

/-! ## A385424.P10118177991598954592

`A057627(A124564(n))+A000108(n)`
-/

namespace A385424.P10118177991598954592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A124564 n).toNat + A000108 n

end

end A385424.P10118177991598954592

/-!
# A385425: Expansion of e.g.f. exp( -LambertW(-arcsinh(x)) ).

The programs for A385425, there is no canonical definition to state claims against.
-/

/-! ## A385425.P10493096870410456948

`A060384(A126115(n)+1)`
-/

namespace A385425.P10493096870410456948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A126115 n + 1).toNat

end

end A385425.P10493096870410456948

/-! ## A385425.P3690486532256878186

`A230476(A145350(n)+n!/floor(n/2)!²)`
-/

namespace A385425.P3690486532256878186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230476 (SequenceMachineLib.roundAway ((A145350 n : ℚ) + (Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ))).toNat

end

end A385425.P3690486532256878186

/-!
# A385426: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-arcsin(x)) ).

The programs for A385426, there is no canonical definition to state claims against.
-/

/-! ## A385426.P15647060252872421259

`∑{#}[n, (n+1)^(#-1)*A385343(C(n+1, 2)+#)]`
-/

namespace A385426.P15647060252872421259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A385343 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385426.P15647060252872421259

/-! ## A385426.P11163907012144205198

`or(1, A376686(A138013(n)))`
-/

namespace A385426.P11163907012144205198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A376686 (A138013 n).toNat)

end

end A385426.P11163907012144205198

/-!
# A385427: E.g.f. A(x) satisfies A(x) = exp( arcsin(x * A(x)) / A(x) ).

The programs for A385427, there is no canonical definition to state claims against.
-/

/-! ## A385427.P3846146935992436387

`∑{#}[n, (n-#+1)^(#-1)*A385343(C(n+1, 2)+#)]`
-/

namespace A385427.P3846146935992436387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ) + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A385343 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385427.P3846146935992436387

/-!
# A385429: Number of triples (di, dj, dk) of divisors of 2*n such that di+dj = dk.

The programs for A385429, there is no canonical definition to state claims against.
-/

/-! ## A385429.P2726435915052666816

`A400871(2^(n+1))`
-/

namespace A385429.P2726435915052666816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400871 (2 ^ (n + 1))

end

end A385429.P2726435915052666816

/-!
# A385431: Leading digit of the decimal expansion of the prime zeta function at n.

The programs for A385431, there is no canonical definition to state claims against.
-/

/-! ## A385431.P10182110887725421691

`A097326(A289574(n+1))`
-/

namespace A385431.P10182110887725421691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (A289574 (n + 1)).toNat

end

end A385431.P10182110887725421691

/-! ## A385431.P9800681163898570227

`A097326(A289579(n+1))`
-/

namespace A385431.P9800681163898570227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (A289579 (n + 1)).toNat

end

end A385431.P9800681163898570227

/-! ## A385431.P11456637777819939487

`A097326(A289774(n+1))`
-/

namespace A385431.P11456637777819939487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (A289774 (n + 1)).toNat

end

end A385431.P11456637777819939487

/-!
# A385432: Triangle read by rows: T(n,k) is the number of proper vertex colorings of the n-complete tripartite graph using exactly k interchangeable colors, 3 <= k <= 3*n.

The programs for A385432, there is no canonical definition to state claims against.
-/

/-! ## A385432.P1556711934253912546

`gcd(A063947(A080385(n+1)), A220666(n))`
-/

namespace A385432.P1556711934253912546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063947 (A080385 (n + 1)).toNat) (A220666 n)

end

end A385432.P1556711934253912546

/-!
# A385433: a(n) is the 2-adic valuation of A027856(n).

The programs for A385433, there is no canonical definition to state claims against.
-/

/-! ## A385433.P15273093891539075537

`A386731(n+1)-A386730(n+1)`
-/

namespace A385433.P15273093891539075537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386731 (n + 1) - A386730 (n + 1)

end

end A385433.P15273093891539075537

/-! ## A385433.P3813184953920380677

`val(A027856(n+1), 2)`
-/

namespace A385433.P3813184953920380677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027856 (n + 1)).toNat 2

end

end A385433.P3813184953920380677

/-! ## A385433.P4699529371989281453

`val(A078883(n+1)+1, 2)`
-/

namespace A385433.P4699529371989281453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078883 (n + 1) + 1).toNat 2

end

end A385433.P4699529371989281453

/-! ## A385433.P9921897813779720404

`A000523(gcd(A027856(n+1), A097679(n+1)))`
-/

namespace A385433.P9921897813779720404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.gcd (A027856 (n + 1)) (A097679 (n + 1)))

end

end A385433.P9921897813779720404

/-!
# A385434: Triangle of Gaussian binomial coefficients (or q-binomial coefficients) [n,k] for q = 2, reduced mod 3.

The programs for A385434, the canonical program `A385434.P13029139020623038212` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385434 has offset 0).

The definition of A385434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385434.P13029139020623038212

`A022166(n)%3`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A385434

/-- `A022166(n)%3` -/
def P13029139020623038212.Spec : Prop :=
  ∀ n, P13029139020623038212.a n = A385434 n

theorem P13029139020623038212.correct : P13029139020623038212.Spec := by
  intro n
  simp only [A385434]

end A385434

/-! ## A385434.P15703751948892362534

`(T(n-1,k-1)+(-1)^col(n)*T(n-1,k))%3` with `a(0)=1`
-/

namespace A385434.P15703751948892362534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (SequenceMachineLib.triUpLeft a n + (-1) ^ SequenceMachineLib.triCol n * SequenceMachineLib.triUp a n) 3

end

end A385434.P15703751948892362534

namespace A385434

/-- `(T(n-1,k-1)+(-1)^col(n)*T(n-1,k))%3` -/
def P15703751948892362534.Spec : Prop :=
  ∀ n, P15703751948892362534.a n = A385434 n

end A385434

/-! ## A385434.P11560039087196740520

`A026374(n)%3`
-/

namespace A385434.P11560039087196740520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026374 n) 3

end

end A385434.P11560039087196740520

namespace A385434

/-- `A026374(n)%3` -/
def P11560039087196740520.Spec : Prop :=
  ∀ n, P11560039087196740520.a n = A385434 n

end A385434

/-! ## A385434.P12615426485299971603

`A051159(n)%3`
-/

namespace A385434.P12615426485299971603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051159 n) 3

end

end A385434.P12615426485299971603

namespace A385434

/-- `A051159(n)%3` -/
def P12615426485299971603.Spec : Prop :=
  ∀ n, P12615426485299971603.a n = A385434 n

end A385434

/-! ## A385434.P11947474023710543282

`A136482(n)%3`
-/

namespace A385434.P11947474023710543282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136482 n) 3

end

end A385434.P11947474023710543282

namespace A385434

/-- `A136482(n)%3` -/
def P11947474023710543282.Spec : Prop :=
  ∀ n, P11947474023710543282.a n = A385434 n

end A385434

/-! ## A385434.P15966447706591549898

`A026648(n+1)%3`
-/

namespace A385434.P15966447706591549898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026648 (n + 1)) 3

end

end A385434.P15966447706591549898

namespace A385434

/-- `A026648(n+1)%3` -/
def P15966447706591549898.Spec : Prop :=
  ∀ n, P15966447706591549898.a n = A385434 n

end A385434

/-! ## A385434.P14063447454748252376

`A140068(n+1)%3`
-/

namespace A385434.P14063447454748252376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140068 (n + 1)) 3

end

end A385434.P14063447454748252376

namespace A385434

/-- `A140068(n+1)%3` -/
def P14063447454748252376.Spec : Prop :=
  ∀ n, P14063447454748252376.a n = A385434 n

end A385434

/-! ## A385434.P11589088067295155943

`A209172(n+1)%3`
-/

namespace A385434.P11589088067295155943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209172 (n + 1)) 3

end

end A385434.P11589088067295155943

namespace A385434

/-- `A209172(n+1)%3` -/
def P11589088067295155943.Spec : Prop :=
  ∀ n, P11589088067295155943.a n = A385434 n

end A385434

/-! ## A385434.P5592130743606499561

`A359985(n)%3`
-/

namespace A385434.P5592130743606499561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359985 n) 3

end

end A385434.P5592130743606499561

namespace A385434

/-- `A359985(n)%3` -/
def P5592130743606499561.Spec : Prop :=
  ∀ n, P5592130743606499561.a n = A385434 n

end A385434

/-! ## A385434.P6128724293046434882

`A140945(n+1)%3`
-/

namespace A385434.P6128724293046434882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140945 (n + 1)) 3

end

end A385434.P6128724293046434882

namespace A385434

/-- `A140945(n+1)%3` -/
def P6128724293046434882.Spec : Prop :=
  ∀ n, P6128724293046434882.a n = A385434 n

end A385434

/-! ## A385434.P1255661906555405465

`A010872(A051159(n))`
-/

namespace A385434.P1255661906555405465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A051159 n).toNat

end

end A385434.P1255661906555405465

namespace A385434

/-- `A010872(A051159(n))` -/
def P1255661906555405465.Spec : Prop :=
  ∀ n, P1255661906555405465.a n = A385434 n

end A385434

/-! ## A385434.P14302344167349059761

`A015112(n)%3`
-/

namespace A385434.P14302344167349059761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015112 n) 3

end

end A385434.P14302344167349059761

namespace A385434

/-- `A015112(n)%3` -/
def P14302344167349059761.Spec : Prop :=
  ∀ n, P14302344167349059761.a n = A385434 n

end A385434

/-! ## A385434.P8128156346326186074

`A296548(n)%3`
-/

namespace A385434.P8128156346326186074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296548 n) 3

end

end A385434.P8128156346326186074

namespace A385434

/-- `A296548(n)%3` -/
def P8128156346326186074.Spec : Prop :=
  ∀ n, P8128156346326186074.a n = A385434 n

end A385434

/-! ## A385434.P6228754737150535338

`A022169(n)%3`
-/

namespace A385434.P6228754737150535338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022169 n) 3

end

end A385434.P6228754737150535338

namespace A385434

/-- `A022169(n)%3` -/
def P6228754737150535338.Spec : Prop :=
  ∀ n, P6228754737150535338.a n = A385434 n

end A385434

/-! ## A385434.P10133822296691281462

`A015117(n)%3`
-/

namespace A385434.P10133822296691281462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015117 n) 3

end

end A385434.P10133822296691281462

namespace A385434

/-- `A015117(n)%3` -/
def P10133822296691281462.Spec : Prop :=
  ∀ n, P10133822296691281462.a n = A385434 n

end A385434

/-! ## A385434.P2273505556308800029

`A022172(n)%3`
-/

namespace A385434.P2273505556308800029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022172 n) 3

end

end A385434.P2273505556308800029

namespace A385434

/-- `A022172(n)%3` -/
def P2273505556308800029.Spec : Prop :=
  ∀ n, P2273505556308800029.a n = A385434 n

end A385434

/-! ## A385434.P3294232829584815033

`A015123(n)%3`
-/

namespace A385434.P3294232829584815033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015123 n) 3

end

end A385434.P3294232829584815033

namespace A385434

/-- `A015123(n)%3` -/
def P3294232829584815033.Spec : Prop :=
  ∀ n, P3294232829584815033.a n = A385434 n

end A385434

/-! ## A385434.P2468852803310430849

`A022175(n)%3`
-/

namespace A385434.P2468852803310430849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022175 n) 3

end

end A385434.P2468852803310430849

namespace A385434

/-- `A022175(n)%3` -/
def P2468852803310430849.Spec : Prop :=
  ∀ n, P2468852803310430849.a n = A385434 n

end A385434

/-! ## A385434.P2148294859411986093

`A015129(n)%3`
-/

namespace A385434.P2148294859411986093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015129 n) 3

end

end A385434.P2148294859411986093

namespace A385434

/-- `A015129(n)%3` -/
def P2148294859411986093.Spec : Prop :=
  ∀ n, P2148294859411986093.a n = A385434 n

end A385434

/-! ## A385434.P9416047249843151984

`A022178(n)%3`
-/

namespace A385434.P9416047249843151984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022178 n) 3

end

end A385434.P9416047249843151984

namespace A385434

/-- `A022178(n)%3` -/
def P9416047249843151984.Spec : Prop :=
  ∀ n, P9416047249843151984.a n = A385434 n

end A385434

/-!
# A385435: Row sums of A385434.

The programs for A385435, the canonical program `A385435.P6568648028109772917` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385435 has offset 0).

The definition of A385435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385435.P8145443105495693425

`A051638(comp[3*n-1])`
-/

namespace A385435.P8145443105495693425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A385435.P8145443105495693425

namespace A385435

/-- `A051638(comp[3*n-1])` -/
def P8145443105495693425.Spec : Prop :=
  ∀ n, P8145443105495693425.a n = A385435 n

end A385435

/-! ## A385435.P6568648028109772917

`A227428(A063289(n+3))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385435

/-- `A227428(A063289(n+3))` -/
def P6568648028109772917.Spec : Prop :=
  ∀ n, P6568648028109772917.a n = A385435 n

theorem P6568648028109772917.correct : P6568648028109772917.Spec := by
  intro n
  simp only [A385435]

end A385435

/-! ## A385435.P4142887645920411157

`A227428(A001651(3*n+2))`
-/

namespace A385435.P4142887645920411157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A001651 (3 * n + 2)).toNat

end

end A385435.P4142887645920411157

namespace A385435

/-- `A227428(A001651(3*n+2))` -/
def P4142887645920411157.Spec : Prop :=
  ∀ n, P4142887645920411157.a n = A385435 n

end A385435

/-! ## A385435.P7398211000464422710

`∏{e}[A245481(n+1)², #]`
-/

namespace A385435.P7398211000464422710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A385435.P7398211000464422710

namespace A385435

/-- `∏{e}[A245481(n+1)², #]` -/
def P7398211000464422710.Spec : Prop :=
  ∀ n, (P7398211000464422710.a n : ℤ) = A385435 n

end A385435

/-! ## A385435.P17844599011275819752

`A000079(A034968(n)%A102506(2*(n+1)))`
-/

namespace A385435.P17844599011275819752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A034968 n) (A102506 (2 * (n + 1)))).toNat

end

end A385435.P17844599011275819752

namespace A385435

/-- `A000079(A034968(n)%A102506(2*(n+1)))` -/
def P17844599011275819752.Spec : Prop :=
  ∀ n, P17844599011275819752.a n = A385435 n

end A385435

/-!
# A385436: Tribonacci array of the second kind, read by upward antidiagonals.

The programs for A385436, there is no canonical definition to state claims against.
-/

/-! ## A385436.P9245260321581281746

`A046660(2^A182801(n+1))`
-/

namespace A385436.P9245260321581281746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A182801 (n + 1) : ℤ))).toNat

end

end A385436.P9245260321581281746

/-! ## A385436.P18406448176387643239

`(A182801(n+1)-1)%A304204(n+1)`
-/

namespace A385436.P18406448176387643239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182801 (n + 1) - 1) (A304204 (n + 1))

end

end A385436.P18406448176387643239

/-! ## A385436.P6999824155865202787

`A182801(n+1)%A399997(n+3)-1`
-/

namespace A385436.P6999824155865202787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182801 (n + 1)) (A399997 (n + 3)) - 1

end

end A385436.P6999824155865202787

/-! ## A385436.P4185554405535888468

`A182801(n+1)-A225630(n*(n+1)/2)`
-/

namespace A385436.P4185554405535888468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (n + 1) - A225630 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A385436.P4185554405535888468

/-! ## A385436.P13763298801501795516

`A182801(n+1)+A033999(A281008(n))`
-/

namespace A385436.P13763298801501795516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (n + 1) + A033999 (A281008 n).toNat

end

end A385436.P13763298801501795516

/-!
# A385438: a(n) = Sum_{k=0..n} 3^k * binomial(3*n+k-1,k).

The programs for A385438, the canonical program `A385438.P5046149330298440733` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385438 has offset 0).

The definition of A385438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385438.P5046149330298440733

`∑{#}[n, 3^#*(-2)^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385438

/-- `∑{#}[n, 3^#*(-2)^(n-#)*C(4*n, #)]` -/
def P5046149330298440733.Spec : Prop :=
  ∀ n, P5046149330298440733.a n = (A385438 n : ℚ)

end A385438

/-! ## A385438.P4308258982696500866

`A119673(A139276(n))`
-/

namespace A385438.P4308258982696500866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A139276 n).toNat

end

end A385438.P4308258982696500866

namespace A385438

/-- `A119673(A139276(n))` -/
def P4308258982696500866.Spec : Prop :=
  ∀ n, P4308258982696500866.a n = A385438 n

end A385438

/-! ## A385438.P11960224438809243586

`A193842(A139274(n))`
-/

namespace A385438.P11960224438809243586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A139274 n).toNat

end

end A385438.P11960224438809243586

namespace A385438

/-- `A193842(A139274(n))` -/
def P11960224438809243586.Spec : Prop :=
  ∀ n, P11960224438809243586.a n = A385438 n

end A385438

/-! ## A385438.P13938075488692564403

`A119673(A033585(n)+n)`
-/

namespace A385438.P13938075488692564403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A033585 n + (n : ℤ)).toNat

end

end A385438.P13938075488692564403

namespace A385438

/-- `A119673(A033585(n)+n)` -/
def P13938075488692564403.Spec : Prop :=
  ∀ n, P13938075488692564403.a n = A385438 n

end A385438

/-! ## A385438.P6558205787488611269

`A193842(n*(A019442(2*n+1)+3))`
-/

namespace A385438.P6558205787488611269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 ((n : ℤ) * (A019442 (2 * n + 1) + 3)).toNat

end

end A385438.P6558205787488611269

namespace A385438

/-- `A193842(n*(A019442(2*n+1)+3))` -/
def P6558205787488611269.Spec : Prop :=
  ∀ n, P6558205787488611269.a n = A385438 n

end A385438

/-!
# A385440: E.g.f. A(x) satisfies A(x) = exp( arcsinh(x * A(x)^2) ).

The programs for A385440, there is no canonical definition to state claims against.
-/

/-! ## A385440.P12575259633590358850

`A002156(5*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A385440.P12575259633590358850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A002156 (5 * (a (n - 1) - a (n - 2))).toNat

end

end A385440.P12575259633590358850

/-!
# A385441: E.g.f. A(x) satisfies A(x) = exp( arcsinh(x * A(x)^3) ).

The programs for A385441, there is no canonical definition to state claims against.
-/

/-! ## A385441.P17026901590976874208

`A161738(2*n+1)/(2*n+1)`
-/

namespace A385441.P17026901590976874208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161738 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A385441.P17026901590976874208

/-! ## A385441.P5315786580732616083

`A035319(n)/A001147(n)`
-/

namespace A385441.P5315786580732616083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035319 n : ℚ) / (A001147 n : ℚ)

end

end A385441.P5315786580732616083

/-! ## A385441.P4561910970138510028

`A101485(n)/A001147(n+1)`
-/

namespace A385441.P4561910970138510028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101485 n : ℚ) / (A001147 (n + 1) : ℚ)

end

end A385441.P4561910970138510028

/-! ## A385441.P12984549196411444254

`A001147(2*n)/A001147(n+1)`
-/

namespace A385441.P12984549196411444254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (2 * n) : ℚ) / (A001147 (n + 1) : ℚ)

end

end A385441.P12984549196411444254

/-! ## A385441.P6233626471491744086

`A097801(2*n)/A097801(n+1)`
-/

namespace A385441.P6233626471491744086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097801 (2 * n) : ℚ) / (A097801 (n + 1) : ℚ)

end

end A385441.P6233626471491744086

/-!
# A385442: E.g.f. A(x) satisfies A(x) = exp( arcsinh(x * A(x)^4) ).

The programs for A385442, there is no canonical definition to state claims against.
-/

/-! ## A385442.P4807191123006877210

`A001333(n)*A008619(A236956(n))`
-/

namespace A385442.P4807191123006877210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A008619 (A236956 n).toNat

end

end A385442.P4807191123006877210

/-!
# A385444: Expansion of e.g.f. (1/x) * Series_Reversion( x/(4*x + sqrt(16*x^2+1))^(1/4) ).

The programs for A385444, there is no canonical definition to state claims against.
-/

/-! ## A385444.P15152694498078991081

`2-A060184(A364748(n))`
-/

namespace A385444.P15152694498078991081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A060184 (A364748 n).toNat

end

end A385444.P15152694498078991081

/-!
# A385446: Decimal expansion of -7 + 10*phi, with the golden section phi = A001622.

The programs for A385446, there is no canonical definition to state claims against.
-/

/-! ## A385446.P6620901828339570746

`A001622(n+1)+A075874(n+1)-A007514(n+1)`
-/

namespace A385446.P6620901828339570746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1) + (A075874 (n + 1) - A007514 (n + 1))

end

end A385446.P6620901828339570746

/-! ## A385446.P5293934391969294620

`A152624(2*n)+A001622(n+1)`
-/

namespace A385446.P5293934391969294620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152624 (2 * n + 1) + A001622 (n + 1 + 1)

end

end A385446.P5293934391969294620

/-! ## A385446.P14193922054640595058

`A001622(n+1)+A240530(n)-A146534(n)`
-/

namespace A385446.P14193922054640595058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1) + (A240530 n - A146534 n)

end

end A385446.P14193922054640595058

/-! ## A385446.P12093944751721253933

`A001622(n+1)+A081069(n)-A286810(n)`
-/

namespace A385446.P12093944751721253933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1) + (A081069 n - A286810 n)

end

end A385446.P12093944751721253933

/-! ## A385446.P14546438284058511372

`A297109(A001157(2*(n+1)))+A094214(n)`
-/

namespace A385446.P14546438284058511372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A001157 (2 * (n + 1))).toNat + A094214 n

end

end A385446.P14546438284058511372

/-!
# A385454: Difference of the largest and smallest semiperimeters of an integral rectangle with area n.

The programs for A385454, there is no canonical definition to state claims against.
-/

/-! ## A385454.P10687795122036034954

`1+n+1-A063655(n+1)`
-/

namespace A385454.P10687795122036034954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - A063655 (n + 1)

end

end A385454.P10687795122036034954

/-! ## A385454.P13971852870629333656

`A220114(n+1)+1`
-/

namespace A385454.P13971852870629333656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220114 (n + 1) + 1

end

end A385454.P13971852870629333656

/-! ## A385454.P8003667893260623397

`n-A387830(n+1)`
-/

namespace A385454.P8003667893260623397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A387830 (n + 1)

end

end A385454.P8003667893260623397

/-! ## A385454.P14880620161896360998

`2-A063655(n+1)+n`
-/

namespace A385454.P14880620161896360998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063655 (n + 1) + (n : ℤ)

end

end A385454.P14880620161896360998

/-! ## A385454.P205148645045492964

`n+2-A262767(n+1)/2`
-/

namespace A385454.P205148645045492964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (A262767 (n + 1) : ℚ) / 2

end

end A385454.P205148645045492964

/-! ## A385454.P3764012759590911569

`n-A289207(A063655(n+1))`
-/

namespace A385454.P3764012759590911569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A289207 (A063655 (n + 1)).toNat

end

end A385454.P3764012759590911569

/-! ## A385454.P17846459106661902994

`A163520(n+1)-A262767(n+1)`
-/

namespace A385454.P17846459106661902994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163520 (n + 1) - A262767 (n + 1)

end

end A385454.P17846459106661902994

/-! ## A385454.P3494662673578327249

`n-(A092510(n+1)+Δ[A025281(n)]-2)`
-/

namespace A385454.P3494662673578327249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A092510 (n + 1) + (f1 (n + 1) - f1 n) - 2)

end

end A385454.P3494662673578327249

/-! ## A385454.P15825658605196860428

`A398341(n+1)-A398341(n+1)/A033677(n+1)`
-/

namespace A385454.P15825658605196860428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398341 (n + 1) : ℚ) - (A398341 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

end

end A385454.P15825658605196860428

/-! ## A385454.P12456601780568091363

`A025581(A161680(n+3)+A063655(n+1))`
-/

namespace A385454.P12456601780568091363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A161680 (n + 3) + A063655 (n + 1)).toNat

end

end A385454.P12456601780568091363

/-!
# A385455: First prepended column of the tribonacci array of the second kind, A385436.

The programs for A385455, the canonical program `A385455.P15157834972960311605` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385455 has offset 1).

The definition of A385455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385455.P15948897347937058949

`comp[A003146(n+1)]-1`
-/

namespace A385455.P15948897347937058949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A385455.P15948897347937058949

namespace A385455

/-- `comp[A003146(n+1)]-1` -/
def P15948897347937058949.Spec : Prop :=
  ∀ n, P15948897347937058949.a n = A385455 (n + 1)

end A385455

/-! ## A385455.P15157834972960311605

`A351631(1+n)-(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A385455

/-- `A351631(1+n)-(n+1)` -/
def P15157834972960311605.Spec : Prop :=
  ∀ n, P15157834972960311605.a n = A385455 (n + 1)

theorem P15157834972960311605.correct : P15157834972960311605.Spec := by
  intro n
  simp only [A385455, Nat.add_sub_cancel]

end A385455

/-! ## A385455.P11546288277507808860

`comp[A278039(n)+1]-(n+1)`
-/

namespace A385455.P11546288277507808860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A385455.P11546288277507808860

namespace A385455

/-- `comp[A278039(n)+1]-(n+1)` -/
def P11546288277507808860.Spec : Prop :=
  ∀ n, P11546288277507808860.a n = A385455 (n + 1)

end A385455

/-! ## A385455.P8113854337237356581

`lt[A275925(n+1), 6]-(n+1)`
-/

namespace A385455.P8113854337237356581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A385455.P8113854337237356581

namespace A385455

/-- `lt[A275925(n+1), 6]-(n+1)` -/
def P8113854337237356581.Spec : Prop :=
  ∀ n, P8113854337237356581.a n = A385455 (n + 1)

end A385455

/-! ## A385455.P12943651698557688811

`A385532(A288463(n+1))`
-/

namespace A385455.P12943651698557688811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385532 (A288463 (n + 1)).toNat

end

end A385455.P12943651698557688811

namespace A385455

/-- `A385532(A288463(n+1))` -/
def P12943651698557688811.Spec : Prop :=
  ∀ n, P12943651698557688811.a n = A385455 (n + 1)

end A385455

/-! ## A385455.P13538009166268709030

`comp[n-(A023443(n)-A278041(n))]-1`
-/

namespace A385455.P13538009166268709030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A278041 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A385455.P13538009166268709030

namespace A385455

/-- `comp[n-(A023443(n)-A278041(n))]-1` -/
def P13538009166268709030.Spec : Prop :=
  ∀ n, P13538009166268709030.a n = A385455 (n + 1)

end A385455

/-! ## A385455.P3259967757776116350

`comp[A003144(n+1)]-(n+1)`
-/

namespace A385455.P3259967757776116350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A385455.P3259967757776116350

namespace A385455

/-- `comp[A003144(n+1)]-(n+1)` -/
def P3259967757776116350.Spec : Prop :=
  ∀ n, P3259967757776116350.a n = A385455 (n + 1)

end A385455

/-! ## A385455.P3344584387850949455

`A385533(A353084(n+1)+A351631(n+1))`
-/

namespace A385455.P3344584387850949455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (A353084 (n + 1) + A351631 (n + 1)).toNat

end

end A385455.P3344584387850949455

namespace A385455

/-- `A385533(A353084(n+1)+A351631(n+1))` -/
def P3344584387850949455.Spec : Prop :=
  ∀ n, P3344584387850949455.a n = A385455 (n + 1)

end A385455

/-!
# A385456: Triangle read by rows, formed by reading Fibonomial coefficients (A010048) mod 2.

The programs for A385456, the canonical program `A385456.P11794434953037764526` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385456 has offset 0).

The definition of A385456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385456.P5622297636871872297

`A010048(n)%2`
-/

namespace A385456.P5622297636871872297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010048 n) 2

end

end A385456.P5622297636871872297

namespace A385456

/-- `A010048(n)%2` -/
def P5622297636871872297.Spec : Prop :=
  ∀ n, P5622297636871872297.a n = A385456 n

end A385456

/-! ## A385456.P11794434953037764526

`1-T((row(n)*T(n-1,k)-2)*T(n-1,k-1), T(n-1,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385456

/-- `1-T((row(n)*T(n-1,k)-2)*T(n-1,k-1), T(n-1,k))` -/
def P11794434953037764526.Spec : Prop :=
  ∀ n, P11794434953037764526.a n = A385456 n

theorem P11794434953037764526.correct : P11794434953037764526.Spec := by
  intro n
  simp only [A385456]

end A385456

/-! ## A385456.P1864707654299510456

`and(1, A055870(n))`
-/

namespace A385456.P1864707654299510456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055870 n)

end

end A385456.P1864707654299510456

namespace A385456

/-- `and(1, A055870(n))` -/
def P1864707654299510456.Spec : Prop :=
  ∀ n, P1864707654299510456.a n = A385456 n

end A385456

/-! ## A385456.P15548438379323150754

`and(A010048(n), A131843(n))`
-/

namespace A385456.P15548438379323150754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A131843 n)

end

end A385456.P15548438379323150754

namespace A385456

/-- `and(A010048(n), A131843(n))` -/
def P15548438379323150754.Spec : Prop :=
  ∀ n, P15548438379323150754.a n = A385456 n

end A385456

/-! ## A385456.P9541251335368287612

`and(A010048(n), A158388(n))`
-/

namespace A385456.P9541251335368287612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A158388 n)

end

end A385456.P9541251335368287612

namespace A385456

/-- `and(A010048(n), A158388(n))` -/
def P9541251335368287612.Spec : Prop :=
  ∀ n, P9541251335368287612.a n = A385456 n

end A385456

/-! ## A385456.P15573718962198273897

`and(A010048(n), A077860(n))`
-/

namespace A385456.P15573718962198273897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077860 n)

end

end A385456.P15573718962198273897

namespace A385456

/-- `and(A010048(n), A077860(n))` -/
def P15573718962198273897.Spec : Prop :=
  ∀ n, P15573718962198273897.a n = A385456 n

end A385456

/-! ## A385456.P15982077989821123101

`and(A010048(n), A077924(n))`
-/

namespace A385456.P15982077989821123101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077924 n)

end

end A385456.P15982077989821123101

namespace A385456

/-- `and(A010048(n), A077924(n))` -/
def P15982077989821123101.Spec : Prop :=
  ∀ n, P15982077989821123101.a n = A385456 n

end A385456

/-! ## A385456.P14782434972348099941

`and(A010048(n), A077853(n))`
-/

namespace A385456.P14782434972348099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077853 n)

end

end A385456.P14782434972348099941

namespace A385456

/-- `and(A010048(n), A077853(n))` -/
def P14782434972348099941.Spec : Prop :=
  ∀ n, P14782434972348099941.a n = A385456 n

end A385456

/-! ## A385456.P8774160474397468704

`A034801(n)%2`
-/

namespace A385456.P8774160474397468704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034801 n) 2

end

end A385456.P8774160474397468704

namespace A385456

/-- `A034801(n)%2` -/
def P8774160474397468704.Spec : Prop :=
  ∀ n, P8774160474397468704.a n = A385456 n

end A385456

/-! ## A385456.P8682652425869645754

`and(A034801(n), A131843(n))`
-/

namespace A385456.P8682652425869645754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A131843 n)

end

end A385456.P8682652425869645754

namespace A385456

/-- `and(A034801(n), A131843(n))` -/
def P8682652425869645754.Spec : Prop :=
  ∀ n, P8682652425869645754.a n = A385456 n

end A385456

/-! ## A385456.P12405951170919881143

`and(A010048(n), A077891(n))`
-/

namespace A385456.P12405951170919881143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077891 n)

end

end A385456.P12405951170919881143

namespace A385456

/-- `and(A010048(n), A077891(n))` -/
def P12405951170919881143.Spec : Prop :=
  ∀ n, P12405951170919881143.a n = A385456 n

end A385456

/-! ## A385456.P3250179910751126490

`and(A010048(n), A077881(n))`
-/

namespace A385456.P3250179910751126490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077881 n)

end

end A385456.P3250179910751126490

namespace A385456

/-- `and(A010048(n), A077881(n))` -/
def P3250179910751126490.Spec : Prop :=
  ∀ n, P3250179910751126490.a n = A385456 n

end A385456

/-! ## A385456.P2690910215001138296

`and(1, A156600(n))`
-/

namespace A385456.P2690910215001138296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A156600 n)

end

end A385456.P2690910215001138296

namespace A385456

/-- `and(1, A156600(n))` -/
def P2690910215001138296.Spec : Prop :=
  ∀ n, P2690910215001138296.a n = A385456 n

end A385456

/-! ## A385456.P6452404236557655825

`and(A010048(n), A083318(n))`
-/

namespace A385456.P6452404236557655825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A083318 n)

end

end A385456.P6452404236557655825

namespace A385456

/-- `and(A010048(n), A083318(n))` -/
def P6452404236557655825.Spec : Prop :=
  ∀ n, P6452404236557655825.a n = A385456 n

end A385456

/-! ## A385456.P2970723428196175575

`and(A034801(n), A083318(n))`
-/

namespace A385456.P2970723428196175575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A083318 n)

end

end A385456.P2970723428196175575

namespace A385456

/-- `and(A034801(n), A083318(n))` -/
def P2970723428196175575.Spec : Prop :=
  ∀ n, P2970723428196175575.a n = A385456 n

end A385456

/-! ## A385456.P15434742859609690747

`and(A010048(n), A048578(n))`
-/

namespace A385456.P15434742859609690747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A048578 n)

end

end A385456.P15434742859609690747

namespace A385456

/-- `and(A010048(n), A048578(n))` -/
def P15434742859609690747.Spec : Prop :=
  ∀ n, P15434742859609690747.a n = A385456 n

end A385456

/-! ## A385456.P13387773081357362939

`and(A034801(n), A048578(n))`
-/

namespace A385456.P13387773081357362939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A048578 n)

end

end A385456.P13387773081357362939

namespace A385456

/-- `and(A034801(n), A048578(n))` -/
def P13387773081357362939.Spec : Prop :=
  ∀ n, P13387773081357362939.a n = A385456 n

end A385456

/-! ## A385456.P15919867196444313436

`and(A010048(n), A114001(n))`
-/

namespace A385456.P15919867196444313436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A114001 n)

end

end A385456.P15919867196444313436

namespace A385456

/-- `and(A010048(n), A114001(n))` -/
def P15919867196444313436.Spec : Prop :=
  ∀ n, P15919867196444313436.a n = A385456 n

end A385456

/-! ## A385456.P11232368493476244495

`and(A034801(n), A114001(n))`
-/

namespace A385456.P11232368493476244495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A114001 n)

end

end A385456.P11232368493476244495

namespace A385456

/-- `and(A034801(n), A114001(n))` -/
def P11232368493476244495.Spec : Prop :=
  ∀ n, P11232368493476244495.a n = A385456 n

end A385456

/-! ## A385456.P9149942253246288064

`and(A010048(n), A020737(n))`
-/

namespace A385456.P9149942253246288064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A020737 n)

end

end A385456.P9149942253246288064

namespace A385456

/-- `and(A010048(n), A020737(n))` -/
def P9149942253246288064.Spec : Prop :=
  ∀ n, P9149942253246288064.a n = A385456 n

end A385456

/-!
# A385457: Number of odd entries in row n of the Fibonomial triangle (A010048).

The programs for A385457, the canonical program `A385457.P1892993541243509914` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385457 has offset 0).

The definition of A385457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385457.P1892993541243509914

`A071044(A131452(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385457

/-- `A071044(A131452(n))` -/
def P1892993541243509914.Spec : Prop :=
  ∀ n, P1892993541243509914.a n = A385457 n

theorem P1892993541243509914.correct : P1892993541243509914.Spec := by
  intro n
  simp only [A385457]

end A385457

/-! ## A385457.P3295605248883054063

`A071044(A367286(n))`
-/

namespace A385457.P3295605248883054063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A367286 n).toNat

end

end A385457.P3295605248883054063

namespace A385457

/-- `A071044(A367286(n))` -/
def P3295605248883054063.Spec : Prop :=
  ∀ n, P3295605248883054063.a n = A385457 n

end A385457

/-! ## A385457.P7853122030840553752

`A006047(lt[A300222(n), 3])`
-/

namespace A385457.P7853122030840553752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A385457.P7853122030840553752

namespace A385457

/-- `A006047(lt[A300222(n), 3])` -/
def P7853122030840553752.Spec : Prop :=
  ∀ n, P7853122030840553752.a n = A385457 n

end A385457

/-! ## A385457.P15365921215386667327

`A006047(lt[A289814(n), 2])`
-/

namespace A385457.P15365921215386667327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A385457.P15365921215386667327

namespace A385457

/-- `A006047(lt[A289814(n), 2])` -/
def P15365921215386667327.Spec : Prop :=
  ∀ n, P15365921215386667327.a n = A385457 n

end A385457

/-! ## A385457.P7878542839271450237

`A335965(A047475(n+1))`
-/

namespace A385457.P7878542839271450237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335965 (A047475 (n + 1)).toNat

end

end A385457.P7878542839271450237

namespace A385457

/-- `A335965(A047475(n+1))` -/
def P7878542839271450237.Spec : Prop :=
  ∀ n, P7878542839271450237.a n = A385457 n

end A385457

/-!
# A385458: Triangle read by rows: T(n,k) = exponent of the highest power of 2 dividing each Fibonomial coefficient fibonomial(n, k).

The programs for A385458, there is no canonical definition to state claims against.
-/

/-! ## A385458.P4610257836782943709

`A007814(A010048(n))`
-/

namespace A385458.P4610257836782943709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A010048 n).toNat

end

end A385458.P4610257836782943709

/-! ## A385458.P7950567405918563517

`val(A010048(n), 2)`
-/

namespace A385458.P7950567405918563517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A010048 n).toNat 2

end

end A385458.P7950567405918563517

/-! ## A385458.P6855579097889818581

`val(abs(A055870(n)), 2)`
-/

namespace A385458.P6855579097889818581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A055870 n|.toNat 2

end

end A385458.P6855579097889818581

/-! ## A385458.P16662744590331756351

`A007814(gcd(A055870(n), A386810(n+1)))`
-/

namespace A385458.P16662744590331756351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A055870 n) (A386810 (n + 1)))

end

end A385458.P16662744590331756351

/-! ## A385458.P5659379664099477157

`A051903(2*A010048(n))-1`
-/

namespace A385458.P5659379664099477157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A010048 n).toNat - 1

end

end A385458.P5659379664099477157

/-! ## A385458.P15742308947036677907

`A051903(A010048(n)+A010048(n))-1`
-/

namespace A385458.P15742308947036677907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A010048 n + A010048 n).toNat - 1

end

end A385458.P15742308947036677907

/-!
# A385462: Numbers t which have a proper divisor d_i(t) such that (d_i(t) + sigma(t))/t is an integer k.

The programs for A385462, there is no canonical definition to state claims against.
-/

/-! ## A385462.P15954192062090187907

`A283002(n+1)+A156724(A000070(n))`
-/

namespace A385462.P15954192062090187907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (n + 1) + A156724 (A000070 n).toNat

end

end A385462.P15954192062090187907

/-!
# A385466: Primes that are at the end of the local maxima in the sequence of consecutive prime gaps.

The programs for A385466, there is no canonical definition to state claims against.
-/

/-! ## A385466.P11107293086314986283

`A000040(A198696(n+1)+1)`
-/

namespace A385466.P11107293086314986283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A198696 (n + 1) + 1).toNat

end

end A385466.P11107293086314986283

/-! ## A385466.P10224724860878302782

`A045319(A198696(n+1))`
-/

namespace A385466.P10224724860878302782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A198696 (n + 1)).toNat

end

end A385466.P10224724860878302782

/-! ## A385466.P3726791397637896066

`A006093(A198696(n+1)+1)+1`
-/

namespace A385466.P3726791397637896066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A198696 (n + 1) + 1).toNat + 1

end

end A385466.P3726791397637896066

/-! ## A385466.P3019612088887513065

`A065091(A198696(n+1)%A007522(n+1))`
-/

namespace A385466.P3019612088887513065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (Int.tmod (A198696 (n + 1)) (A007522 (n + 1))).toNat

end

end A385466.P3019612088887513065

/-! ## A385466.P17430584443631693539

`A065091(A198696(n+1))%A035790(n+1)`
-/

namespace A385466.P17430584443631693539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (A198696 (n + 1)).toNat) (A035790 (n + 1))

end

end A385466.P17430584443631693539

/-!
# A385467: a(n) is the number of divisors of sigma(n) that have not yet been counted in the sequence.

The programs for A385467, there is no canonical definition to state claims against.
-/

/-! ## A385467.P7137937875706893673

`A004586(A063999(n+1))`
-/

namespace A385467.P7137937875706893673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004586 (A063999 (n + 1)).toNat

end

end A385467.P7137937875706893673

/-! ## A385467.P15996646532959138725

`A287150(A401214(n+1))`
-/

namespace A385467.P15996646532959138725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287150 (A401214 (n + 1)).toNat

end

end A385467.P15996646532959138725

/-! ## A385467.P18336326987198913805

`A093518(or(n, A007631(n)))`
-/

namespace A385467.P18336326987198913805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093518 (Int.lor (n : ℤ) (A007631 n)).toNat

end

end A385467.P18336326987198913805

/-! ## A385467.P13221569330067259636

`A036580(A024916(ceil((n²-1)/2)+1))`
-/

namespace A385467.P13221569330067259636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A024916 (⌈((n ^ 2 : ℤ) - 1 : ℚ) / 2⌉ + 1).toNat).toNat

end

end A385467.P13221569330067259636

/-! ## A385467.P1020226168672969560

`A036579(A195205(n+1)+A036596(n))`
-/

namespace A385467.P1020226168672969560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (A195205 (n + 1) + A036596 n).toNat

end

end A385467.P1020226168672969560

/-!
# A385468: Expansion of e.g.f. 1/(1 - 2 * arctanh(x))^(1/2).

The programs for A385468, the canonical program `A385468.P12772888741653451822` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385468 has offset 0).

The definition of A385468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385468.P12772888741653451822

`∑{#}[n, A001147(#)*A111594(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385468

/-- `∑{#}[n, A001147(#)*A111594(C(n+1, 2)+#)]` -/
def P12772888741653451822.Spec : Prop :=
  ∀ n, P12772888741653451822.a n = A385468 n

theorem P12772888741653451822.correct : P12772888741653451822.Spec := by
  intro n
  simp only [A385468]

end A385468

/-! ## A385468.P2363883476377916302

`A088809(n)+A052382(A001147(n))`
-/

namespace A385468.P2363883476377916302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n + A052382 (A001147 n).toNat

end

end A385468.P2363883476377916302

namespace A385468

/-- `A088809(n)+A052382(A001147(n))` -/
def P2363883476377916302.Spec : Prop :=
  ∀ n, P2363883476377916302.a n = A385468 n

end A385468

/-!
# A385469: Expansion of e.g.f. 1/(1 - 3 * arctanh(x))^(1/3).

The programs for A385469, the canonical program `A385469.P10167520793086109988` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385469 has offset 0).

The definition of A385469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385469.P10167520793086109988

`∑{#}[n, A007559(#)*A111594(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385469

/-- `∑{#}[n, A007559(#)*A111594(C(n+1, 2)+#)]` -/
def P10167520793086109988.Spec : Prop :=
  ∀ n, P10167520793086109988.a n = A385469 n

theorem P10167520793086109988.correct : P10167520793086109988.Spec := by
  intro n
  simp only [A385469]

end A385469

/-!
# A385470: Expansion of e.g.f. 1/(1 - 2 * arctanh(x)).

The programs for A385470, the canonical program `A385470.P5152266911723554094` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385470 has offset 0).

The definition of A385470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385470.P5152266911723554094

`∑{#}[n, 2^#*#!*A111594(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385470

/-- `∑{#}[n, 2^#*#!*A111594(C(n+1, 2)+#)]` -/
def P5152266911723554094.Spec : Prop :=
  ∀ n, P5152266911723554094.a n = A385470 n

theorem P5152266911723554094.correct : P5152266911723554094.Spec := by
  intro n
  simp only [A385470]

end A385470

/-!
# A385471: Expansion of e.g.f. 1/(1 - 3 * arctanh(x)).

The programs for A385471, the canonical program `A385471.P13187066339902425731` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385471 has offset 0).

The definition of A385471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385471.P13187066339902425731

`∑{#}[n, 3^#*#!*A111594(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385471

/-- `∑{#}[n, 3^#*#!*A111594(C(n+1, 2)+#)]` -/
def P13187066339902425731.Spec : Prop :=
  ∀ n, P13187066339902425731.a n = A385471 n

theorem P13187066339902425731.correct : P13187066339902425731.Spec := by
  intro n
  simp only [A385471]

end A385471

/-!
# A385472: Expansion of e.g.f. 1/(1 - arctanh(2*x))^(1/2).

The programs for A385472, the canonical program `A385472.P7563898429269226586` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385472 has offset 0).

The definition of A385472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385472.P7563898429269226586

`∑{#}[n, A001147(#)*2^(n-#)*A111594(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385472

/-- `∑{#}[n, A001147(#)*2^(n-#)*A111594(C(n+1, 2)+#)]` -/
def P7563898429269226586.Spec : Prop :=
  ∀ n, P7563898429269226586.a n = (A385472 n : ℚ)

end A385472

/-!
# A385473: Expansion of e.g.f. 1/(1 - arctanh(3*x))^(1/3).

The programs for A385473, the canonical program `A385473.P6740271229782449686` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385473 has offset 0).

The definition of A385473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385473.P6740271229782449686

`∑{#}[n, A007559(#)*3^(n-#)*A111594(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385473

/-- `∑{#}[n, A007559(#)*3^(n-#)*A111594(C(n+1, 2)+#)]` -/
def P6740271229782449686.Spec : Prop :=
  ∀ n, P6740271229782449686.a n = (A385473 n : ℚ)

end A385473

/-!
# A385476: Values of u in the quartets (1, u, v, w) of type 3; i.e., values of u for solutions to (1 - u) = v(v - w), in distinct positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

The programs for A385476, the canonical program `A385476.P6490758313331182239` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385476 has offset 1).

The definition of A385476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385476.P6490758313331182239

`comp[∑[A032741(n)]]-n+2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A385476

/-- `comp[∑[A032741(n)]]-n+2` -/
def P6490758313331182239.Spec : Prop :=
  ∀ n, P6490758313331182239.a n = A385476 (n + 1)

theorem P6490758313331182239.correct : P6490758313331182239.Spec := by
  intro n
  simp only [A385476, Nat.add_sub_cancel]

end A385476

/-! ## A385476.P1825113440479738028

`comp[A006218(n)-n]-n+2`
-/

namespace A385476.P1825113440479738028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 2

end

end A385476.P1825113440479738028

namespace A385476

/-- `comp[A006218(n)-n]-n+2` -/
def P1825113440479738028.Spec : Prop :=
  ∀ n, P1825113440479738028.a n = A385476 (n + 1)

end A385476

/-! ## A385476.P12373498553655258193

`comp[∑[A000005(n+1)-1]]+2-n`
-/

namespace A385476.P12373498553655258193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (2 - (n : ℤ))

end

end A385476.P12373498553655258193

namespace A385476

/-- `comp[∑[A000005(n+1)-1]]+2-n` -/
def P12373498553655258193.Spec : Prop :=
  ∀ n, P12373498553655258193.a n = A385476 (n + 1)

end A385476

/-! ## A385476.P8175808443783324265

`A228363(n+1)+1`
-/

namespace A385476.P8175808443783324265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (n + 1) + 1

end

end A385476.P8175808443783324265

namespace A385476

/-- `A228363(n+1)+1` -/
def P8175808443783324265.Spec : Prop :=
  ∀ n, P8175808443783324265.a n = A385476 (n + 1)

end A385476

/-!
# A385477: Composite numbers whose digits are odd prime numbers.

The programs for A385477, there is no canonical definition to state claims against.
-/

/-! ## A385477.P6775345501516177426

`∩[A046034(n+1), A320062(n+1)]`
-/

namespace A385477.P6775345501516177426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P6775345501516177426

/-! ## A385477.P5478232809099807857

`∩[A061371(n+1), A320062(n+1)]`
-/

namespace A385477.P5478232809099807857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P5478232809099807857

/-! ## A385477.P11437621824041709439

`∩[A014261(n+1), A061371(n+1)]`
-/

namespace A385477.P11437621824041709439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P11437621824041709439

/-! ## A385477.P11705941358229036348

`∩[A059307(n+1), A320062(n+1)]`
-/

namespace A385477.P11705941358229036348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P11705941358229036348

/-! ## A385477.P13656768466214400588

`∩[A061371(n+1), A168501(n+1)]`
-/

namespace A385477.P13656768466214400588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P13656768466214400588

/-! ## A385477.P4453226864101518389

`∩[A039113(n+1), A061371(n+1)]`
-/

namespace A385477.P4453226864101518389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P4453226864101518389

/-! ## A385477.P6063374966975617958

`∩[A039120(n+1), A061371(n+1)]`
-/

namespace A385477.P6063374966975617958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P6063374966975617958

/-! ## A385477.P9711459604957918522

`∩[A039129(n+1), A061371(n+1)]`
-/

namespace A385477.P9711459604957918522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P9711459604957918522

/-! ## A385477.P13483703956041902425

`∩[A039131(n+1), A061371(n+1)]`
-/

namespace A385477.P13483703956041902425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P13483703956041902425

/-! ## A385477.P15592561521442693719

`∩[A039133(n+1), A061371(n+1)]`
-/

namespace A385477.P15592561521442693719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385477.P15592561521442693719

/-!
# A385479: a(n) is the cardinality of the union of the sets of divisors of sigma(k) for 1 <= k <= n.

The programs for A385479, there is no canonical definition to state claims against.
-/

/-! ## A385479.P11801368333406288130

`∑[A385467(1+n)]`
-/

namespace A385479.P11801368333406288130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385467 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385479.P11801368333406288130

/-! ## A385479.P11336851623300574989

`A385467(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A385479.P11336851623300574989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A385467 (n + 1) + a (n - 1)

end

end A385479.P11336851623300574989

/-! ## A385479.P16851981056618149129

`A001651(A077168(n))-A033103(3*n+1)`
-/

namespace A385479.P16851981056618149129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A077168 n).toNat - A033103 (3 * n + 1)

end

end A385479.P16851981056618149129

/-!
# A385482: a(n) is the least number k such that k*n is a binary Niven number (A049445).

The programs for A385482, there is no canonical definition to state claims against.
-/

/-! ## A385482.P17279589573856252409

`col(A050873(A000079(n+1)))+1`
-/

namespace A385482.P17279589573856252409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A050873 (A000079 (n + 1)).toNat).toNat + 1

end

end A385482.P17279589573856252409

/-! ## A385482.P7461922543590760674

`A281939(C(A072966(n+1), A079612(n+1)))`
-/

namespace A385482.P7461922543590760674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281939 (Nat.choose (A072966 (n + 1)).toNat (A079612 (n + 1)).toNat)

end

end A385482.P7461922543590760674

/-! ## A385482.P17699922123016128205

`gcd(A196358(A196358(3*n+2)), A276076(3*(n+1)))`
-/

namespace A385482.P17699922123016128205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196358 (A196358 (3 * n + 2)).toNat) (A276076 (3 * (n + 1)))

end

end A385482.P17699922123016128205

/-! ## A385482.P13003067430942326283

`A249740(gcd(n, ∏{p}[n+1, 1-#])^4)`
-/

namespace A385482.P13003067430942326283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (Int.gcd (n : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) ^ 4)

end

end A385482.P13003067430942326283

/-! ## A385482.P17627923399714607509

`A006530(n^(n*(1+(-1)^n)/4))`
-/

namespace A385482.P17627923399714607509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n : ℝ) ^ (((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4 : ℝ))).toNat

end

end A385482.P17627923399714607509

/-!
# A385483: Where records occur in A385482.

The programs for A385483, there is no canonical definition to state claims against.
-/

/-! ## A385483.P2568261009759643330

`eq[A091247(n), A326390(n)]`
-/

namespace A385483.P2568261009759643330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385483.P2568261009759643330

/-! ## A385483.P4401229213874524020

`eq[A074398(n+1), A354267(n)]`
-/

namespace A385483.P4401229213874524020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385483.P4401229213874524020

/-!
# A385484: Records in A385482.

The programs for A385484, there is no canonical definition to state claims against.
-/

/-! ## A385484.P16019694107098706558

`A385482(A385483(n+1))`
-/

namespace A385484.P16019694107098706558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385482 (A385483 (n + 1)).toNat

end

end A385484.P16019694107098706558

/-!
# A385486: Where records occur in A385485.

The programs for A385486, there is no canonical definition to state claims against.
-/

/-! ## A385486.P17248566105748355212

`A018772(A075714(n+1))`
-/

namespace A385486.P17248566105748355212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018772 (A075714 (n + 1)).toNat

end

end A385486.P17248566105748355212

/-!
# A385487: Records in A385485.

The programs for A385487, there is no canonical definition to state claims against.
-/

/-! ## A385487.P16687257062618472465

`A385485(A385486(n+1))`
-/

namespace A385487.P16687257062618472465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385485 (A385486 (n + 1)).toNat

end

end A385487.P16687257062618472465

/-! ## A385487.P2694099260191046874

`record[A385485(A049445(n+1))]`
-/

namespace A385487.P2694099260191046874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385485 (A049445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385487.P2694099260191046874

/-!
# A385489: Positive integers m such that every Gaussian integer g with |g| <= m is a linear combination of the distinct Gaussian divisors of m.

The programs for A385489, there is no canonical definition to state claims against.
-/

/-! ## A385489.P4298777442396420990

`lt[A027052(2*n), A074206(A033046(n))]`
-/

namespace A385489.P4298777442396420990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A033046 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385489.P4298777442396420990

/-!
# A385491: Period 8: repeat [1, 8, 4, 3, 6, 5, 7, 2].

The programs for A385491, the canonical program `A385491.P13397815981411324293` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385491 has offset 0).

The definition of A385491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385491.P13397815981411324293

`ogf((1+7x-3x^2+6x^3+5x^5+2x^6)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385491

/-- `ogf((1+7x-3x^2+6x^3+5x^5+2x^6)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7))` -/
def P13397815981411324293.Spec : Prop :=
  ∀ n, P13397815981411324293.a n = A385491 n

theorem P13397815981411324293.correct : P13397815981411324293.Spec := by
  intro n
  simp only [A385491]

end A385491

/-!
# A385492: Numbers y such that there exists an integer 0 < x < y such that x^sigma(x) * y^sigma(y) = (x*y)^(x+y).

The programs for A385492, there is no canonical definition to state claims against.
-/

/-! ## A385492.P5179361175672699014

`∪[record[A002046(n+1)], A000040(n+1)]`
-/

namespace A385492.P5179361175672699014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A385492.P5179361175672699014

/-! ## A385492.P16929121783638904784

`∪[A000040(n+1), A038550(A289568(n))]`
-/

namespace A385492.P16929121783638904784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (A289568 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385492.P16929121783638904784

/-! ## A385492.P17667360222726282580

`∪[A000040(n+1), A344616(A128593(3*n+4))]`
-/

namespace A385492.P17667360222726282580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A128593 (3 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385492.P17667360222726282580

/-!
# A385494: Total number of 1's in the decimal digits of the divisors of n.

The programs for A385494, the canonical program `A385494.P9916212289199863013` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385494 has offset 1).

The definition of A385494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385494.P9916212289199863013

`∑{d}[n+1, A268643(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385494

/-- `∑{d}[n+1, A268643(#)]` -/
def P9916212289199863013.Spec : Prop :=
  ∀ n, P9916212289199863013.a n = A385494 (n + 1)

theorem P9916212289199863013.correct : P9916212289199863013.Spec := by
  intro n
  simp only [A385494, Nat.add_sub_cancel]

end A385494

/-!
# A385496: Decimal expansion of 1 - exp(1/2)/2.

The programs for A385496, there is no canonical definition to state claims against.
-/

/-! ## A385496.P12681931070867765370

`9-A019775(n)`
-/

namespace A385496.P12681931070867765370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019775 n

end

end A385496.P12681931070867765370

/-!
# A385497: a(n) = Sum_{k=0..n} binomial(6*n+1,k).

The programs for A385497, the canonical program `A385497.P13396569933165689967` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385497 has offset 0).

The definition of A385497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(6*n+1, #)]` (program `A385497.P13396569933165689967`, by `A385497.P13396569933165689967.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385497.P13396569933165689967

`∑{#}[n, C(6*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385497

/-- `∑{#}[n, C(6*n+1, #)]` -/
def P13396569933165689967.Spec : Prop :=
  ∀ n, (P13396569933165689967.a n : ℤ) = A385497 n

theorem P13396569933165689967.correct : P13396569933165689967.Spec := by
  intro n
  simp only [A385497]

end A385497

/-! ## A385497.P16986660751994354015

`∑{#}[n, 2^#*C(6*n-#, n-#)]`
-/

namespace A385497.P16986660751994354015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose ((6 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat

end

end A385497.P16986660751994354015

namespace A385497

/-- `∑{#}[n, 2^#*C(6*n-#, n-#)]` -/
def P16986660751994354015.Spec : Prop :=
  ∀ n, (P16986660751994354015.a n : ℤ) = A385497 n

end A385497

/-! ## A385497.P6615704469649026048

`A128175(A081266(2*n+1)-n)`
-/

namespace A385497.P6615704469649026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A081266 (2 * n + 1) - (n : ℤ)).toNat

end

end A385497.P6615704469649026048

namespace A385497

/-- `A128175(A081266(2*n+1)-n)` -/
def P6615704469649026048.Spec : Prop :=
  ∀ n, P6615704469649026048.a n = A385497 n

end A385497

/-!
# A385498: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n,k).

The programs for A385498, the canonical program `A385498.P1339448201009790540` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385498 has offset 0).

The definition of A385498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385498.P1339448201009790540

`∑{#}[n, 2^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385498

/-- `∑{#}[n, 2^(n-#)*C(4*n, #)]` -/
def P1339448201009790540.Spec : Prop :=
  ∀ n, P1339448201009790540.a n = (A385498 n : ℚ)

end A385498

/-! ## A385498.P4496173125693407667

`A106516(A139277(n))`
-/

namespace A385498.P4496173125693407667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A139277 n).toNat

end

end A385498.P4496173125693407667

namespace A385498

/-- `A106516(A139277(n))` -/
def P4496173125693407667.Spec : Prop :=
  ∀ n, P4496173125693407667.a n = A385498 n

end A385498

/-! ## A385498.P8894558007459290820

`A106516(A214675(n+1)-A002522(n))`
-/

namespace A385498.P8894558007459290820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A214675 (n + 1) - A002522 n).toNat

end

end A385498.P8894558007459290820

namespace A385498

/-- `A106516(A214675(n+1)-A002522(n))` -/
def P8894558007459290820.Spec : Prop :=
  ∀ n, P8894558007459290820.a n = A385498 n

end A385498

/-!
# A385499: a(n) is the smallest integer k such that A385392(k) = n.

The programs for A385499, there is no canonical definition to state claims against.
-/

/-! ## A385499.P17625039283604261745

`A025049(2*(n+1))*A186994(A023147(n+1))`
-/

namespace A385499.P17625039283604261745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 (2 * (n + 1)) * A186994 (A023147 (n + 1)).toNat

end

end A385499.P17625039283604261745

