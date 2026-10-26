import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

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

/-! ## A385402.P4243402005755163153

`∪[A015919(n+1), A385858(n+1)]`
-/

namespace A385402.P4243402005755163153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P4243402005755163153

/-! ## A385402.P4752233789294589412

`∪[A095320(n+1), A385858(n+1)]`
-/

namespace A385402.P4752233789294589412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P4752233789294589412

/-! ## A385402.P16718399160803012799

`∪[A216883(n+1), A385858(n+1)]`
-/

namespace A385402.P16718399160803012799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P16718399160803012799

/-! ## A385402.P4001768387611991272

`∪[A216884(n+1), A385858(n+1)]`
-/

namespace A385402.P4001768387611991272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P4001768387611991272

/-! ## A385402.P17487108276592394988

`∪[A216885(n+1), A385858(n+1)]`
-/

namespace A385402.P17487108276592394988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P17487108276592394988

/-! ## A385402.P15031602114938283

`∪[A216887(n+1), A385858(n+1)]`
-/

namespace A385402.P15031602114938283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P15031602114938283

/-! ## A385402.P7029525669831635309

`∪[A238853(n+1), A385858(n+1)]`
-/

namespace A385402.P7029525669831635309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385402.P7029525669831635309

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

The programs for A385407, the canonical program `A385407.P7004031065679688765` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385407 has offset 0).

The definition of A385407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385407.P7004031065679688765

`60*C(n, 6)+10*C(n, 5)+4*C(n, 4)+4*C(n, 3)+C(n, 2)+n+1`

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A385412, the canonical program `A385412.P1663864152010749443` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385412 has offset 1).

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

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A385416.P381602666588149983

`A001055(A019554(n+1))%A090334(2*(n+2))`
-/

namespace A385416.P381602666588149983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A019554 (n + 1)).toNat) (A090334 (2 * (n + 2)))

end

end A385416.P381602666588149983

/-! ## A385416.P8778619518923659159

`A034836(A019554(n+1)%A367685(2*(n+2)))`
-/

namespace A385416.P8778619518923659159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (Int.tmod (A019554 (n + 1)) (A367685 (2 * (n + 2)))).toNat

end

end A385416.P8778619518923659159

/-! ## A385416.P12117182177259747638

`A381629(A082588(n+1))`
-/

namespace A385416.P12117182177259747638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381629 (A082588 (n + 1)).toNat

end

end A385416.P12117182177259747638

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

/-! ## A385418.P10018590722447890991

`A087436(A000040(n+5)*A188581(n+1))`
-/

namespace A385418.P10018590722447890991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A000040 (n + 5) * A188581 (n + 1)).toNat

end

end A385418.P10018590722447890991

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

/-! ## A385419.P8368281234739606050

`or(A001586(n), A326549(A383981(n)))`
-/

namespace A385419.P8368281234739606050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001586 n) (A326549 (A383981 n).toNat)

end

end A385419.P8368281234739606050

/-! ## A385419.P11293649424938432689

`A321469(n+3)+A004526(A062805(n))`
-/

namespace A385419.P11293649424938432689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321469 (n + 3) + A004526 (A062805 n).toNat

end

end A385419.P11293649424938432689

/-!
# A385421: Expansion of e.g.f. 1/(1 - arcsin(2*x))^(1/2).

The programs for A385421, there is no canonical definition to state claims against.
-/

/-! ## A385421.P14723721495306062054

`A385807(A385846(n))+A235134(n)`
-/

namespace A385421.P14723721495306062054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385807 (A385846 n).toNat + A235134 n

end

end A385421.P14723721495306062054

/-! ## A385421.P17026671119447121742

`A336467(or(A002275(n), A240098(n+1)))`
-/

namespace A385421.P17026671119447121742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (Int.lor (A002275 n) (A240098 (n + 1))).toNat

end

end A385421.P17026671119447121742

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

/-! ## A385425.P16534145984548172518

`A381142(n)+A200507(A376344(n))`
-/

namespace A385425.P16534145984548172518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381142 n + A200507 (A376344 n).toNat

end

end A385425.P16534145984548172518

/-!
# A385426: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-arcsin(x)) ).

The programs for A385426, there is no canonical definition to state claims against.
-/

/-! ## A385426.P11163907012144205198

`or(1, A376686(A138013(n)))`
-/

namespace A385426.P11163907012144205198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A376686 (A138013 n).toNat)

end

end A385426.P11163907012144205198

/-! ## A385426.P15252352544535448859

`A290579(n)+A112608(A209668(n))`
-/

namespace A385426.P15252352544535448859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290579 n + A112608 (A209668 n).toNat

end

end A385426.P15252352544535448859

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

/-! ## A385434.P17721940724193640205

`A015139(n)%3`
-/

namespace A385434.P17721940724193640205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015139 n) 3

end

end A385434.P17721940724193640205

namespace A385434

/-- `A015139(n)%3` -/
def P17721940724193640205.Spec : Prop :=
  ∀ n, P17721940724193640205.a n = A385434 n

end A385434

/-! ## A385434.P17209782673275605116

`A022181(n)%3`
-/

namespace A385434.P17209782673275605116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022181 n) 3

end

end A385434.P17209782673275605116

namespace A385434

/-- `A022181(n)%3` -/
def P17209782673275605116.Spec : Prop :=
  ∀ n, P17209782673275605116.a n = A385434 n

end A385434

/-!
# A385435: Row sums of A385434.

The programs for A385435, the canonical program `A385435.P8381468024742294352` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385435 has offset 0).

The definition of A385435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385435.P8381468024742294352

`A051638(A032766(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385435

/-- `A051638(A032766(n))` -/
def P8381468024742294352.Spec : Prop :=
  ∀ n, P8381468024742294352.a n = A385435 n

theorem P8381468024742294352.correct : P8381468024742294352.Spec := by
  intro n
  simp only [A385435]

end A385435

/-! ## A385435.P6033774977806731374

`A051638(A090570(n+1))`
-/

namespace A385435.P6033774977806731374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A090570 (n + 1)).toNat

end

end A385435.P6033774977806731374

namespace A385435

/-- `A051638(A090570(n+1))` -/
def P6033774977806731374.Spec : Prop :=
  ∀ n, P6033774977806731374.a n = A385435 n

end A385435

/-! ## A385435.P6568648028109772917

`A227428(A063289(n+3))`
-/

namespace A385435.P6568648028109772917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A063289 (n + 3)).toNat

end

end A385435.P6568648028109772917

namespace A385435

/-- `A227428(A063289(n+3))` -/
def P6568648028109772917.Spec : Prop :=
  ∀ n, P6568648028109772917.a n = A385435 n

end A385435

/-! ## A385435.P14206848718662087562

`A051638(A004526(3*n))`
-/

namespace A385435.P14206848718662087562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A004526 (3 * n)).toNat

end

end A385435.P14206848718662087562

namespace A385435

/-- `A051638(A004526(3*n))` -/
def P14206848718662087562.Spec : Prop :=
  ∀ n, P14206848718662087562.a n = A385435 n

theorem P14206848718662087562.correct : P14206848718662087562.Spec := by
  intro n
  simp only [A385435, Nat.add_sub_cancel, A385435.P14206848718662087562.a, A385435.P8381468024742294352.a, A004526, A004526.P10084182425416171735.a, A032766, A032766.P1975864606945388751.a, A051638, A051638.P12166677434659216956.a, A006047, A006047.P4068788115409844993.a, A062756, A062756.P3953090966624310992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A385435

/-! ## A385435.P14884269021466483831

`A051638(A004526(n)+n)`
-/

namespace A385435.P14884269021466483831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A004526 n + (n : ℤ)).toNat

end

end A385435.P14884269021466483831

namespace A385435

/-- `A051638(A004526(n)+n)` -/
def P14884269021466483831.Spec : Prop :=
  ∀ n, P14884269021466483831.a n = A385435 n

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

/-! ## A385436.P12378144819401611434

`A182801(n+1)-A010136(A022188(n))`
-/

namespace A385436.P12378144819401611434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (n + 1) - A010136 (A022188 n).toNat

end

end A385436.P12378144819401611434

/-! ## A385436.P15026524778346650726

`A182801(n+1)-A035263(A002878(n))`
-/

namespace A385436.P15026524778346650726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (n + 1) - A035263 (A002878 n).toNat

end

end A385436.P15026524778346650726

/-!
# A385438: a(n) = Sum_{k=0..n} 3^k * binomial(3*n+k-1,k).

The programs for A385438, there is no canonical definition to state claims against.
-/

/-! ## A385438.P4308258982696500866

`A119673(A139276(n))`
-/

namespace A385438.P4308258982696500866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A139276 n).toNat

end

end A385438.P4308258982696500866

/-! ## A385438.P11960224438809243586

`A193842(A139274(n))`
-/

namespace A385438.P11960224438809243586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A139274 n).toNat

end

end A385438.P11960224438809243586

/-! ## A385438.P13938075488692564403

`A119673(A033585(n)+n)`
-/

namespace A385438.P13938075488692564403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A033585 n + (n : ℤ)).toNat

end

end A385438.P13938075488692564403

/-! ## A385438.P6558205787488611269

`A193842(n*(A019442(2*n+1)+3))`
-/

namespace A385438.P6558205787488611269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 ((n : ℤ) * (A019442 (2 * n + 1) + 3)).toNat

end

end A385438.P6558205787488611269

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

/-! ## A385444.P17689611691132090328

`3-A352362(A078592(n))`
-/

namespace A385444.P17689611691132090328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A352362 (A078592 n).toNat

end

end A385444.P17689611691132090328

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

The programs for A385455, the canonical program `A385455.P302993814553403510` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385455 has offset 1).

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

/-! ## A385455.P302993814553403510

`A351631(n+1)-(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A385455

/-- `A351631(n+1)-(n+1)` -/
def P302993814553403510.Spec : Prop :=
  ∀ n, P302993814553403510.a n = A385455 (n + 1)

theorem P302993814553403510.correct : P302993814553403510.Spec := by
  intro n
  simp only [A385455, Nat.add_sub_cancel]

end A385455

/-! ## A385455.P17460472166197867493

`comp[A278039(n)+1]-n-1`
-/

namespace A385455.P17460472166197867493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - 1

end

end A385455.P17460472166197867493

namespace A385455

/-- `comp[A278039(n)+1]-n-1` -/
def P17460472166197867493.Spec : Prop :=
  ∀ n, P17460472166197867493.a n = A385455 (n + 1)

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

The programs for A385456, there is no canonical definition to state claims against.
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

/-! ## A385456.P1864707654299510456

`and(1, A055870(n))`
-/

namespace A385456.P1864707654299510456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055870 n)

end

end A385456.P1864707654299510456

/-! ## A385456.P15548438379323150754

`and(A010048(n), A131843(n))`
-/

namespace A385456.P15548438379323150754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A131843 n)

end

end A385456.P15548438379323150754

/-! ## A385456.P9541251335368287612

`and(A010048(n), A158388(n))`
-/

namespace A385456.P9541251335368287612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A158388 n)

end

end A385456.P9541251335368287612

/-! ## A385456.P15573718962198273897

`and(A010048(n), A077860(n))`
-/

namespace A385456.P15573718962198273897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077860 n)

end

end A385456.P15573718962198273897

/-! ## A385456.P15982077989821123101

`and(A010048(n), A077924(n))`
-/

namespace A385456.P15982077989821123101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077924 n)

end

end A385456.P15982077989821123101

/-! ## A385456.P14782434972348099941

`and(A010048(n), A077853(n))`
-/

namespace A385456.P14782434972348099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077853 n)

end

end A385456.P14782434972348099941

/-! ## A385456.P8774160474397468704

`A034801(n)%2`
-/

namespace A385456.P8774160474397468704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034801 n) 2

end

end A385456.P8774160474397468704

/-! ## A385456.P8682652425869645754

`and(A034801(n), A131843(n))`
-/

namespace A385456.P8682652425869645754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A131843 n)

end

end A385456.P8682652425869645754

/-! ## A385456.P12405951170919881143

`and(A010048(n), A077891(n))`
-/

namespace A385456.P12405951170919881143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077891 n)

end

end A385456.P12405951170919881143

/-! ## A385456.P3250179910751126490

`and(A010048(n), A077881(n))`
-/

namespace A385456.P3250179910751126490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A077881 n)

end

end A385456.P3250179910751126490

/-! ## A385456.P2690910215001138296

`and(1, A156600(n))`
-/

namespace A385456.P2690910215001138296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A156600 n)

end

end A385456.P2690910215001138296

/-! ## A385456.P6452404236557655825

`and(A010048(n), A083318(n))`
-/

namespace A385456.P6452404236557655825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A083318 n)

end

end A385456.P6452404236557655825

/-! ## A385456.P2970723428196175575

`and(A034801(n), A083318(n))`
-/

namespace A385456.P2970723428196175575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A083318 n)

end

end A385456.P2970723428196175575

/-! ## A385456.P15434742859609690747

`and(A010048(n), A048578(n))`
-/

namespace A385456.P15434742859609690747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A048578 n)

end

end A385456.P15434742859609690747

/-! ## A385456.P13387773081357362939

`and(A034801(n), A048578(n))`
-/

namespace A385456.P13387773081357362939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A048578 n)

end

end A385456.P13387773081357362939

/-! ## A385456.P15919867196444313436

`and(A010048(n), A114001(n))`
-/

namespace A385456.P15919867196444313436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A114001 n)

end

end A385456.P15919867196444313436

/-! ## A385456.P11232368493476244495

`and(A034801(n), A114001(n))`
-/

namespace A385456.P11232368493476244495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A114001 n)

end

end A385456.P11232368493476244495

/-! ## A385456.P9149942253246288064

`and(A010048(n), A020737(n))`
-/

namespace A385456.P9149942253246288064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A020737 n)

end

end A385456.P9149942253246288064

/-! ## A385456.P1536413139694744935

`and(A020737(n), A034801(n))`
-/

namespace A385456.P1536413139694744935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A034801 n)

end

end A385456.P1536413139694744935

/-!
# A385457: Number of odd entries in row n of the Fibonomial triangle (A010048).

The programs for A385457, the canonical program `A385457.P1892993541243509914` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385457 has offset 0).

The definition of A385457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385457.P1892993541243509914

`A071044(A131452(n))`

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A385458.P3546556183924446457

`A010878(val(A010048(n), 2))`
-/

namespace A385458.P3546556183924446457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (SequenceMachineLib.valuation (A010048 n).toNat 2)

end

end A385458.P3546556183924446457

/-! ## A385458.P15000132779179051549

`A010879(val(A010048(n), 2))`
-/

namespace A385458.P15000132779179051549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.valuation (A010048 n).toNat 2)

end

end A385458.P15000132779179051549

/-! ## A385458.P1489549705314060948

`A030108(val(A010048(n), 2))`
-/

namespace A385458.P1489549705314060948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (SequenceMachineLib.valuation (A010048 n).toNat 2)

end

end A385458.P1489549705314060948

/-! ## A385458.P16073342803269235758

`val(A010048(n), A066086(A115591(n+1)))`
-/

namespace A385458.P16073342803269235758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A010048 n).toNat (A066086 (A115591 (n + 1)).toNat).toNat

end

end A385458.P16073342803269235758

/-! ## A385458.P8369165787277010824

`val(A055870(n)², 4)`
-/

namespace A385458.P8369165787277010824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055870 n ^ 2).toNat 4

end

end A385458.P8369165787277010824

/-! ## A385458.P16662744590331756351

`A007814(gcd(A055870(n), A386810(n+1)))`
-/

namespace A385458.P16662744590331756351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A055870 n) (A386810 (n + 1)))

end

end A385458.P16662744590331756351

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

/-! ## A385466.P718066465851476861

`∩[A051634(n+1), A358528(n+1)]`
-/

namespace A385466.P718066465851476861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385466.P718066465851476861

/-! ## A385466.P16703374457694577044

`∩[A225493(n+1), A358528(n+1)]`
-/

namespace A385466.P16703374457694577044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385466.P16703374457694577044

/-! ## A385466.P11883236881070799598

`∩[A264719(n+1), A358528(n+1)]`
-/

namespace A385466.P11883236881070799598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385466.P11883236881070799598

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

/-! ## A385467.P18313833553443044437

`A347730(A321299(n+1)+A088459(2*n+5))`
-/

namespace A385467.P18313833553443044437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 (A321299 (n + 1) + A088459 (2 * n + 5)).toNat

end

end A385467.P18313833553443044437

/-!
# A385468: Expansion of e.g.f. 1/(1 - 2 * arctanh(x))^(1/2).

The programs for A385468, there is no canonical definition to state claims against.
-/

/-! ## A385468.P2363883476377916302

`A088809(n)+A052382(A001147(n))`
-/

namespace A385468.P2363883476377916302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n + A052382 (A001147 n).toNat

end

end A385468.P2363883476377916302

/-! ## A385468.P3432170176935954011

`A124419(n)+A052421(A001147(n))`
-/

namespace A385468.P3432170176935954011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 n + A052421 (A001147 n).toNat

end

end A385468.P3432170176935954011

/-!
# A385470: Expansion of e.g.f. 1/(1 - 2 * arctanh(x)).

The programs for A385470, there is no canonical definition to state claims against.
-/

/-! ## A385470.P17487361647465525650

`Δ[A364295(2^n)]`
-/

namespace A385470.P17487361647465525650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364295 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385470.P17487361647465525650

/-!
# A385471: Expansion of e.g.f. 1/(1 - 3 * arctanh(x)).

The programs for A385471, there is no canonical definition to state claims against.
-/

/-! ## A385471.P8435249543298266093

`A375229(n*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A385471.P8435249543298266093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A375229 ((n : ℤ) * a (n - 1)).toNat

end

end A385471.P8435249543298266093

/-!
# A385476: Values of u in the quartets (1, u, v, w) of type 3; i.e., values of u for solutions to (1 - u) = v(v - w), in distinct positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

The programs for A385476, the canonical program `A385476.P6490758313331182239` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385476 has offset 1).

The definition of A385476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385476.P6490758313331182239

`comp[∑[A032741(n)]]-n+2`

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A385476.P15208952411144318696

`comp[∑[A000005(n+1)-1]]-n+2`
-/

namespace A385476.P15208952411144318696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 2

end

end A385476.P15208952411144318696

namespace A385476

/-- `comp[∑[A000005(n+1)-1]]-n+2` -/
def P15208952411144318696.Spec : Prop :=
  ∀ n, P15208952411144318696.a n = A385476 (n + 1)

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

/-! ## A385479.P15760939356511094707

`∑[A385467(n+1)]`
-/

namespace A385479.P15760939356511094707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385479.P15760939356511094707

/-!
# A385482: a(n) is the least number k such that k*n is a binary Niven number (A049445).

The programs for A385482, there is no canonical definition to state claims against.
-/

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

/-! ## A385482.P6962793732516527820

`∏{e}[A030195(ceil((n+1)/∏{p}[n+1, (n+1)/#])), #]`
-/

namespace A385482.P6962793732516527820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A385482.P6962793732516527820

/-! ## A385482.P14904373618732466671

`A045796(A141459(n))`
-/

namespace A385482.P14904373618732466671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045796 (A141459 n).toNat

end

end A385482.P14904373618732466671

/-! ## A385482.P18326239346651003408

`A043534(A172282(n))`
-/

namespace A385482.P18326239346651003408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A172282 n).toNat

end

end A385482.P18326239346651003408

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
# A385492: Numbers y such that there exists an integer 0 < x < y such that x^sigma(x) * y^sigma(y) = (x*y)^(x+y).

The programs for A385492, there is no canonical definition to state claims against.
-/

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

The programs for A385494, the canonical program `A385494.P9916212289199863013` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385494 has offset 1).

The definition of A385494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385494.P9916212289199863013

`∑{d}[n+1, A268643(#)]`

The canonical program, it is in `Seq.B001.C012`.
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

The programs for A385497, there is no canonical definition to state claims against.
-/

/-! ## A385497.P6615704469649026048

`A128175(A081266(2*n+1)-n)`
-/

namespace A385497.P6615704469649026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A081266 (2 * n + 1) - (n : ℤ)).toNat

end

end A385497.P6615704469649026048

/-!
# A385498: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n,k).

The programs for A385498, there is no canonical definition to state claims against.
-/

/-! ## A385498.P4496173125693407667

`A106516(A139277(n))`
-/

namespace A385498.P4496173125693407667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A139277 n).toNat

end

end A385498.P4496173125693407667

/-! ## A385498.P8894558007459290820

`A106516(A214675(n+1)-A002522(n))`
-/

namespace A385498.P8894558007459290820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A214675 (n + 1) - A002522 n).toNat

end

end A385498.P8894558007459290820

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

