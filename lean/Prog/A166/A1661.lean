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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A166100: Sum of those positive i <= 2n+1, for which J(i,2n+1)=+1. Here J(i,k) is the Jacobi symbol.

The programs for A166100, there is no canonical definition to state claims against.
-/

/-! ## A166100.P3381821479396041107

`A166405(n)-A166406(n)`
-/

namespace A166100.P3381821479396041107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 n - A166406 n

end

end A166100.P3381821479396041107

/-! ## A166100.P17734335919545256648

`A166405(n)-A166407(n)/3*Δ[n²]`
-/

namespace A166100.P17734335919545256648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166405 n : ℚ) - (A166407 n : ℚ) / 3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A166100.P17734335919545256648

/-! ## A166100.P4375529167464974787

`A166405(n)-A005408(n)/3*A166407(n)`
-/

namespace A166100.P4375529167464974787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166405 n : ℚ) - (A005408 n : ℚ) / 3 * (A166407 n : ℚ)

end

end A166100.P4375529167464974787

/-! ## A166100.P15061825777885770229

`A023896(2*n+1)-A166405(n)`
-/

namespace A166100.P15061825777885770229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (2 * n + 1) - A166405 n

end

end A166100.P15061825777885770229

/-! ## A166100.P14834349544111633932

`abs(A023896(A004275(n+1)+1)-A166405(n))`
-/

namespace A166100.P14834349544111633932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023896 (A004275 (n + 1) + 1).toNat - A166405 n|

end

end A166100.P14834349544111633932

/-!
# A166101: Integers k such that A166100(k)/A005408(k) is not an integer.

The programs for A166101, there is no canonical definition to state claims against.
-/

/-! ## A166101.P15200617742267310862

`floor(A166102(n+1)/2)`
-/

namespace A166101.P15200617742267310862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166102 (n + 1) : ℚ) / 2⌋

end

end A166101.P15200617742267310862

/-! ## A166101.P1950021727378598360

`floor(3/2*A166104(n+1)²)`
-/

namespace A166101.P1950021727378598360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A166104 (n + 1) ^ 2 : ℚ)⌋

end

end A166101.P1950021727378598360

/-! ## A166101.P8013230269350329564

`A032528(A166104(n+1))`
-/

namespace A166101.P8013230269350329564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (A166104 (n + 1)).toNat

end

end A166101.P8013230269350329564

/-! ## A166101.P11737202950709328899

`A033436(2*A166104(n+1))`
-/

namespace A166101.P11737202950709328899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (2 * A166104 (n + 1)).toNat

end

end A166101.P11737202950709328899

/-! ## A166101.P13944354082071116677

`A056827(3*A166104(n+1))`
-/

namespace A166101.P13944354082071116677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (3 * A166104 (n + 1)).toNat

end

end A166101.P13944354082071116677

/-! ## A166101.P11772764454848976048

`floor(A000212(3*A166104(n+1))/2)`
-/

namespace A166101.P11772764454848976048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000212 (3 * A166104 (n + 1)).toNat : ℚ) / 2⌋

end

end A166101.P11772764454848976048

/-! ## A166101.P1675350571405209391

`floor(A000290(3*A166104(n+1))/6)`
-/

namespace A166101.P1675350571405209391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000290 (3 * A166104 (n + 1)).toNat : ℚ) / 6⌋

end

end A166101.P1675350571405209391

/-! ## A166101.P5178275719087952433

`A032528(eq[2, A033716(n²)])`
-/

namespace A166101.P5178275719087952433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166101.P5178275719087952433

/-!
# A166102: Odd numbers k such that A166100((k-1)/2)/k is not an integer.

The programs for A166102, there is no canonical definition to state claims against.
-/

/-! ## A166102.P13191361850642736646

`3*A166104(n+1)²`
-/

namespace A166102.P13191361850642736646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A166104 (n + 1) ^ 2

end

end A166102.P13191361850642736646

/-! ## A166102.P6913115544348287289

`2*A166101(n+1)+1`
-/

namespace A166102.P6913115544348287289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166101 (n + 1) + 1

end

end A166102.P6913115544348287289

/-! ## A166102.P6146950185065073630

`-xor(2*A166101(-xor(n, -1)), -1)`
-/

namespace A166102.P6146950185065073630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (2 * A166101 (-Int.xor (n : ℤ) (-1)).toNat) (-1)

end

end A166102.P6146950185065073630

/-! ## A166102.P15283805195825957002

`3*(eq[n%2, A005071(n+1)]+1)²`
-/

namespace A166102.P15283805195825957002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A166102.P15283805195825957002

/-! ## A166102.P9488509643189886838

`3*eq[val(n²+1, 2), A170824(or(1, n))]²`
-/

namespace A166102.P9488509643189886838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A166102.P9488509643189886838

/-! ## A166102.P13725753219592750251

`3*record[(n+1)²*(-1)^n/A248909(n+1)]`
-/

namespace A166102.P13725753219592750251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (-1) ^ n : ℚ) / (A248909 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166102.P13725753219592750251

/-! ## A166102.P18015181008683915591

`A033428(A166104(n+1))`
-/

namespace A166102.P18015181008683915591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A166104 (n + 1)).toNat

end

end A166102.P18015181008683915591

/-! ## A166102.P5090771647051066602

`A077043(2*A166104(n+1))`
-/

namespace A166102.P5090771647051066602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * A166104 (n + 1)).toNat

end

end A166102.P5090771647051066602

/-! ## A166102.P17496530279058049689

`A000212(3*A166104(n+1))`
-/

namespace A166102.P17496530279058049689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (3 * A166104 (n + 1)).toNat

end

end A166102.P17496530279058049689

/-! ## A166102.P12971178377170914080

`3*A166104(n+1)^A020639(2*(n+1))`
-/

namespace A166102.P12971178377170914080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A166104 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A166102.P12971178377170914080

/-!
# A166103: Squares of A166104.

The programs for A166103, there is no canonical definition to state claims against.
-/

/-! ## A166103.P13180015413872553200

`A166104(n+1)²`
-/

namespace A166103.P13180015413872553200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166104 (n + 1) ^ 2

end

end A166103.P13180015413872553200

/-! ## A166103.P2161175672802370052

`A166102(n+1)/3`
-/

namespace A166103.P2161175672802370052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166102 (n + 1) : ℚ) / 3

end

end A166103.P2161175672802370052

/-! ## A166103.P4502099604131885176

`eq[2, A033716(n²)]²`
-/

namespace A166103.P4502099604131885176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A166103.P4502099604131885176

/-! ## A166103.P3832344541219665462

`eq[4, A217220(n²)]²`
-/

namespace A166103.P3832344541219665462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A166103.P3832344541219665462

/-! ## A166103.P11090782127652825978

`ceil(2*A166101(n+1)/3)`
-/

namespace A166103.P11090782127652825978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A166101 (n + 1) : ℚ) / 3⌉

end

end A166103.P11090782127652825978

/-!
# A166104: Natural numbers whose prime factors are all congruent to 3 or 5 mod 6 (i.e., are in the sequence A045410).

The programs for A166104, the canonical program `A166104.P3960484114915730117` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166104 has offset 1).

The definition of A166104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166104.P11001593679512595439

`∩[comp[2*n], A230780(n+1)]`
-/

namespace A166104.P11001593679512595439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A166104.P11001593679512595439

namespace A166104

/-- `∩[comp[2*n], A230780(n+1)]` -/
def P11001593679512595439.Spec : Prop :=
  ∀ n, (P11001593679512595439.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P3960484114915730117

`eq[n%2, A005071(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166104

/-- `eq[n%2, A005071(n+1)]+1` -/
def P3960484114915730117.Spec : Prop :=
  ∀ n, (P3960484114915730117.a n : ℤ) = A166104 (n + 1)

theorem P3960484114915730117.correct : P3960484114915730117.Spec := by
  intro n
  simp only [A166104, Nat.add_sub_cancel]

end A166104

/-! ## A166104.P12228534089648886220

`eq[val(n²+1, 2), A170824(or(1, n))]`
-/

namespace A166104.P12228534089648886220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166104.P12228534089648886220

namespace A166104

/-- `eq[val(n²+1, 2), A170824(or(1, n))]` -/
def P12228534089648886220.Spec : Prop :=
  ∀ n, (P12228534089648886220.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P2925146723222884522

`eq[-a(n-1), A170824(n+1)]+1` with `a(0)=1`
-/

namespace A166104.P2925146723222884522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166104.P2925146723222884522

namespace A166104

/-- `eq[-a(n-1), A170824(n+1)]+1` -/
def P2925146723222884522.Spec : Prop :=
  ∀ n, (P2925146723222884522.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P1799175816636812345

`eq[A000007(n), A387908(n)]`
-/

namespace A166104.P1799175816636812345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P1799175816636812345

namespace A166104

/-- `eq[A000007(n), A387908(n)]` -/
def P1799175816636812345.Spec : Prop :=
  ∀ n, (P1799175816636812345.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P4545069739473556965

`eq[A000038(n), A387908(n)]`
-/

namespace A166104.P4545069739473556965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P4545069739473556965

namespace A166104

/-- `eq[A000038(n), A387908(n)]` -/
def P4545069739473556965.Spec : Prop :=
  ∀ n, (P4545069739473556965.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P15186331699836633654

`eq[A027656(n), A387908(n)]`
-/

namespace A166104.P15186331699836633654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P15186331699836633654

namespace A166104

/-- `eq[A027656(n), A387908(n)]` -/
def P15186331699836633654.Spec : Prop :=
  ∀ n, (P15186331699836633654.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P10735908241816390830

`eq[A089798(n), A387908(n)]`
-/

namespace A166104.P10735908241816390830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P10735908241816390830

namespace A166104

/-- `eq[A089798(n), A387908(n)]` -/
def P10735908241816390830.Spec : Prop :=
  ∀ n, (P10735908241816390830.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P3068598867017468725

`eq[A089800(n), A387908(n)]`
-/

namespace A166104.P3068598867017468725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P3068598867017468725

namespace A166104

/-- `eq[A089800(n), A387908(n)]` -/
def P3068598867017468725.Spec : Prop :=
  ∀ n, (P3068598867017468725.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P4019360771053910897

`eq[A115634(n), A387908(n)]`
-/

namespace A166104.P4019360771053910897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P4019360771053910897

namespace A166104

/-- `eq[A115634(n), A387908(n)]` -/
def P4019360771053910897.Spec : Prop :=
  ∀ n, (P4019360771053910897.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P2258052350465335707

`eq[A117980(n), A387908(n)]`
-/

namespace A166104.P2258052350465335707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P2258052350465335707

namespace A166104

/-- `eq[A117980(n), A387908(n)]` -/
def P2258052350465335707.Spec : Prop :=
  ∀ n, (P2258052350465335707.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P17647223245441481202

`eq[A176742(n), A387908(n)]`
-/

namespace A166104.P17647223245441481202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P17647223245441481202

namespace A166104

/-- `eq[A176742(n), A387908(n)]` -/
def P17647223245441481202.Spec : Prop :=
  ∀ n, (P17647223245441481202.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P12235194218514633435

`eq[A240332(n), A387908(n)]`
-/

namespace A166104.P12235194218514633435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P12235194218514633435

namespace A166104

/-- `eq[A240332(n), A387908(n)]` -/
def P12235194218514633435.Spec : Prop :=
  ∀ n, (P12235194218514633435.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P5661200144737619528

`eq[A331928(n), A387908(n)]`
-/

namespace A166104.P5661200144737619528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P5661200144737619528

namespace A166104

/-- `eq[A331928(n), A387908(n)]` -/
def P5661200144737619528.Spec : Prop :=
  ∀ n, (P5661200144737619528.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P3380289751691662826

`eq[A331979(n), A387908(n)]`
-/

namespace A166104.P3380289751691662826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P3380289751691662826

namespace A166104

/-- `eq[A331979(n), A387908(n)]` -/
def P3380289751691662826.Spec : Prop :=
  ∀ n, (P3380289751691662826.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P12987045853044942532

`record[A060819(A230780(n+1))]`
-/

namespace A166104.P12987045853044942532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A230780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166104.P12987045853044942532

namespace A166104

/-- `record[A060819(A230780(n+1))]` -/
def P12987045853044942532.Spec : Prop :=
  ∀ n, P12987045853044942532.a n = A166104 (n + 1)

end A166104

/-! ## A166104.P10815714235640890485

`filter[A230780(n+1), A000035(#)]`
-/

namespace A166104.P10815714235640890485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A166104.P10815714235640890485

namespace A166104

/-- `filter[A230780(n+1), A000035(#)]` -/
def P10815714235640890485.Spec : Prop :=
  ∀ n, P10815714235640890485.a n = A166104 (n + 1)

end A166104

/-! ## A166104.P5941300472691769854

`eq[A073911(n+1), A387908(n)]`
-/

namespace A166104.P5941300472691769854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P5941300472691769854

namespace A166104

/-- `eq[A073911(n+1), A387908(n)]` -/
def P5941300472691769854.Spec : Prop :=
  ∀ n, (P5941300472691769854.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P7657793063780567429

`eq[A106544(n+1), A387908(n)]`
-/

namespace A166104.P7657793063780567429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P7657793063780567429

namespace A166104

/-- `eq[A106544(n+1), A387908(n)]` -/
def P7657793063780567429.Spec : Prop :=
  ∀ n, (P7657793063780567429.a n : ℤ) = A166104 (n + 1)

end A166104

/-! ## A166104.P7450428263502987541

`eq[A118112(n+1), A387908(n)]`
-/

namespace A166104.P7450428263502987541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166104.P7450428263502987541

namespace A166104

/-- `eq[A118112(n+1), A387908(n)]` -/
def P7450428263502987541.Spec : Prop :=
  ∀ n, (P7450428263502987541.a n : ℤ) = A166104 (n + 1)

end A166104

/-!
# A166105: Quadratic recurrence from Sylvester's sequence, but starting with a(0)=1 and a(1)=2.

The programs for A166105, the canonical program `A166105.P9440066960198392468` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166105 has offset 0).

The definition of A166105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166105.P6343531844950509071

`a(n-1)²-a(n-2)²+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A166105.P6343531844950509071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 - a (n - 2) ^ 2 + a (n - 2)

end

end A166105.P6343531844950509071

namespace A166105

/-- `a(n-1)²-a(n-2)²+a(n-2)` -/
def P6343531844950509071.Spec : Prop :=
  ∀ n, P6343531844950509071.a n = A166105 n

end A166105

/-! ## A166105.P9440066960198392468

`A002065(n)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166105

/-- `A002065(n)+1` -/
def P9440066960198392468.Spec : Prop :=
  ∀ n, P9440066960198392468.a n = A166105 n

theorem P9440066960198392468.correct : P9440066960198392468.Spec := by
  intro n
  simp only [A166105]

end A166105

/-! ## A166105.P11107635094211843256

`(A232806(n)+1)/2`
-/

namespace A166105.P11107635094211843256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232806 n + 1 : ℚ) / 2

end

end A166105.P11107635094211843256

namespace A166105

/-- `(A232806(n)+1)/2` -/
def P11107635094211843256.Spec : Prop :=
  ∀ n, P11107635094211843256.a n = (A166105 n : ℚ)

theorem P11107635094211843256.correct : P11107635094211843256.Spec := by
  intro n
  simp only [A166105, Nat.add_sub_cancel, A166105.P11107635094211843256.a, A166105.P9440066960198392468.a, A002065, A002065.P3667177517846498653.a, A232806, A232806.P16277909643424588756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166105

/-! ## A166105.P16862813326526770356

`2*(C(a(n-1), 2)+1)` with `a(0)=1`
-/

namespace A166105.P16862813326526770356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.choose (a (n - 1)) 2 + 1)

end

end A166105.P16862813326526770356

namespace A166105

/-- `2*(C(a(n-1), 2)+1)` -/
def P16862813326526770356.Spec : Prop :=
  ∀ n, (P16862813326526770356.a n : ℤ) = A166105 n

end A166105

/-! ## A166105.P12107496616146698216

`floor((1/2-a(n-1))²)+2` with `a(0)=1`
-/

namespace A166105.P12107496616146698216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 2

end

end A166105.P12107496616146698216

namespace A166105

/-- `floor((1/2-a(n-1))²)+2` -/
def P12107496616146698216.Spec : Prop :=
  ∀ n, P12107496616146698216.a n = A166105 n

end A166105

/-!
# A166106: a(n) = a(n-1) + a(n-2) + F(n), with a(0) = 0, a(1) = 1, a(2) = a(1) + a(0), a(3) = a(2) + a(1), a(4) = a(3) + a(2) + 2.

The programs for A166106, the canonical program `A166106.P15446266820463540504` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166106 has offset 0).

The definition of A166106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166106.P15446266820463540504

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=12, a(6)=25`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166106

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P15446266820463540504.Spec : Prop :=
  ∀ n, P15446266820463540504.a n = A166106 n

theorem P15446266820463540504.correct : P15446266820463540504.Spec := by
  intro n
  simp only [A166106]

end A166106

/-! ## A166106.P3125313153829147155

`and(2^n-1, A067418(C(n, 2)+2))`
-/

namespace A166106.P3125313153829147155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 1) (A067418 (Nat.choose n 2 + 2))

end

end A166106.P3125313153829147155

namespace A166106

/-- `and(2^n-1, A067418(C(n, 2)+2))` -/
def P3125313153829147155.Spec : Prop :=
  ∀ n, P3125313153829147155.a n = A166106 n

end A166106

/-! ## A166106.P4833475764166018428

`A067418(C(n, 2)+2)%A000079(n)`
-/

namespace A166106.P4833475764166018428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067418 (Nat.choose n 2 + 2)) (A000079 n)

end

end A166106.P4833475764166018428

namespace A166106

/-- `A067418(C(n, 2)+2)%A000079(n)` -/
def P4833475764166018428.Spec : Prop :=
  ∀ n, P4833475764166018428.a n = A166106 n

end A166106

/-! ## A166106.P9483774915696276629

`A067418(A152948(n+1))%A164248(n)`
-/

namespace A166106.P9483774915696276629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067418 (A152948 (n + 1)).toNat) (A164248 n)

end

end A166106.P9483774915696276629

namespace A166106

/-- `A067418(A152948(n+1))%A164248(n)` -/
def P9483774915696276629.Spec : Prop :=
  ∀ n, P9483774915696276629.a n = A166106 n

end A166106

/-! ## A166106.P2305851607647464886

`and(A000225(n), A067418(A152948(n+1)))`
-/

namespace A166106.P2305851607647464886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A067418 (A152948 (n + 1)).toNat)

end

end A166106.P2305851607647464886

namespace A166106

/-- `and(A000225(n), A067418(A152948(n+1)))` -/
def P2305851607647464886.Spec : Prop :=
  ∀ n, P2305851607647464886.a n = A166106 n

end A166106

/-! ## A166106.P3240540063733934418

`A005248(n)%(A067418(A152948(n+1))-A005248(n))`
-/

namespace A166106.P3240540063733934418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005248 n) (A067418 (A152948 (n + 1)).toNat - A005248 n)

end

end A166106.P3240540063733934418

namespace A166106

/-- `A005248(n)%(A067418(A152948(n+1))-A005248(n))` -/
def P3240540063733934418.Spec : Prop :=
  ∀ n, P3240540063733934418.a n = A166106 n

end A166106

/-!
# A166108: a(0)=0. For n >= 1, a(n) = (A084758(n+1)-A084758(n))/2.

The programs for A166108, there is no canonical definition to state claims against.
-/

/-! ## A166108.P16920555794899802676

`floor(A121862(n+1)/2)`
-/

namespace A166108.P16920555794899802676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121862 (n + 1) : ℚ) / 2⌋

end

end A166108.P16920555794899802676

/-! ## A166108.P16922084369791006251

`Δ[floor(A084758(n+1)/2)]`
-/

namespace A166108.P16922084369791006251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084758 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166108.P16922084369791006251

/-! ## A166108.P3963923081152422966

`A004526(A121862(n+1))`
-/

namespace A166108.P3963923081152422966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A121862 (n + 1)).toNat

end

end A166108.P3963923081152422966

/-! ## A166108.P12265244748461679144

`Δ[A000224(A084758(n+1))]`
-/

namespace A166108.P12265244748461679144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A084758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166108.P12265244748461679144

/-! ## A166108.P12165186866233586800

`A004526(Δ[A084758(n+1)])`
-/

namespace A166108.P12165186866233586800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A166108.P12165186866233586800

/-! ## A166108.P6460797654340357709

`A025480(Δ[A084758(n+1)])`
-/

namespace A166108.P6460797654340357709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A166108.P6460797654340357709

/-! ## A166108.P10367643560877462300

`A001057(A121862(n+1)-1)`
-/

namespace A166108.P10367643560877462300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A121862 (n + 1) - 1).toNat

end

end A166108.P10367643560877462300

/-! ## A166108.P3919196169458946985

`A008615(3*A121862(n+1))`
-/

namespace A166108.P3919196169458946985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A121862 (n + 1)).toNat

end

end A166108.P3919196169458946985

/-! ## A166108.P1839860125567978665

`A001057(Δ[A084758(n+1)]-1)`
-/

namespace A166108.P1839860125567978665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n - 1).toNat

end

end A166108.P1839860125567978665

/-! ## A166108.P3029753958165790883

`Δ[A008619(A084758(n+1)+2)]`
-/

namespace A166108.P3029753958165790883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A084758 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166108.P3029753958165790883

/-!
# A166110: A positive integer n is included if the longest contiguous run of similar digits in binary n is of 0's.

The programs for A166110, there is no canonical definition to state claims against.
-/

/-! ## A166110.P7823598983228266749

`comp[A237883(n+1)-1]+1`
-/

namespace A166110.P7823598983228266749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237883 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A166110.P7823598983228266749

/-! ## A166110.P7408351420365197142

`lt[A284569(n), A087117(2*n+1)+1]`
-/

namespace A166110.P7408351420365197142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166110.P7408351420365197142

/-! ## A166110.P9440560282725086879

`lt[val(A278222(n), 2), (A087117(n)+1)%(n+1)]`
-/

namespace A166110.P9440560282725086879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 n + 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166110.P9440560282725086879

/-! ## A166110.P1638256340847098876

`lt[1, n*floor(A087117(n)²/A246596(n))+1]`
-/

namespace A166110.P1638256340847098876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(A087117 n ^ 2 : ℚ) / (A246596 n : ℚ)⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166110.P1638256340847098876

/-! ## A166110.P17445223118703338917

`eq[A087117(n), A090996(A335835(n))]`
-/

namespace A166110.P17445223118703338917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166110.P17445223118703338917

/-! ## A166110.P8849950111351992640

`lt[A087117(A003188(n)), A087117(n)]`
-/

namespace A166110.P8849950111351992640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003188 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166110.P8849950111351992640

/-! ## A166110.P1975838892205815423

`lt[A087117(A341915(n)), A087117(n)]`
-/

namespace A166110.P1975838892205815423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A341915 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166110.P1975838892205815423

/-! ## A166110.P13296171814105023693

`lt[A284569(n), A096029(A330036(n))]`
-/

namespace A166110.P13296171814105023693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (A330036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166110.P13296171814105023693

/-! ## A166110.P4836945719350381992

`eq[A043276(A028310(n)), A087117(2*n+1)]`
-/

namespace A166110.P4836945719350381992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166110.P4836945719350381992

/-!
# A166111: A positive integer n is included if the longest contiguous run of similar digits in binary n is of 1's.

The programs for A166111, there is no canonical definition to state claims against.
-/

/-! ## A166111.P844128967820328439

`comp[A237882(n+1)]`
-/

namespace A166111.P844128967820328439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166111.P844128967820328439

/-! ## A166111.P9817404508597885978

`comp[record[A237882(A291769(n))]]`
-/

namespace A166111.P9817404508597885978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237882 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166111.P9817404508597885978

/-! ## A166111.P16931224314895967963

`comp[lt[A272604(n), A087117(n)]]`
-/

namespace A166111.P16931224314895967963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A166111.P16931224314895967963

/-! ## A166111.P13258035622783586225

`lt[2*A087117(n), A330036(n)+1]`
-/

namespace A166111.P13258035622783586225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166111.P13258035622783586225

/-! ## A166111.P10346309199518287320

`∪[A090050(n+1), A237883(n+1)]`
-/

namespace A166111.P10346309199518287320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166111.P10346309199518287320

/-! ## A166111.P18018882378308037579

`eq[A038374(n+1), A043276(n+1)]+1`
-/

namespace A166111.P18018882378308037579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166111.P18018882378308037579

/-! ## A166111.P10025832994522757910

`lt[A087117(n), A006530(A246029(n))]`
-/

namespace A166111.P10025832994522757910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166111.P10025832994522757910

/-! ## A166111.P13499643479577308294

`lt[A087117(A003188(n)), A272604(n)]`
-/

namespace A166111.P13499643479577308294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003188 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166111.P13499643479577308294

/-! ## A166111.P4684655187004309805

`lt[A087117(n), A001511(A278222(n))]`
-/

namespace A166111.P4684655187004309805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166111.P4684655187004309805

/-! ## A166111.P1194834231114267246

`lt[A001222(A284559(n)), A272604(n)]`
-/

namespace A166111.P1194834231114267246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284559 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166111.P1194834231114267246

/-!
# A166113: Center element of a 3 X 3 magic square composed of consecutive primes.

The programs for A166113, there is no canonical definition to state claims against.
-/

/-! ## A166113.P18282864820048694427

`A270305(n+1)/3`
-/

namespace A166113.P18282864820048694427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270305 (n + 1) : ℚ) / 3

end

end A166113.P18282864820048694427

/-!
# A166114: a(n) = (6-(-4)^n)/5.

The programs for A166114, the canonical program `A166114.P16432414408807592574` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166114 has offset 0).

The definition of A166114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6-(-4)^n)/5` (program `A166114.P9504600347786220571`, by `A166114.P9504600347786220571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166114.P16432414408807592574

`6-4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166114

/-- `6-4*a(n-1)` -/
def P16432414408807592574.Spec : Prop :=
  ∀ n, P16432414408807592574.a n = A166114 n

theorem P16432414408807592574.correct : P16432414408807592574.Spec := by
  intro n
  simp only [A166114]

end A166114

/-! ## A166114.P2768099346647483321

`a(n-1)+(-4)^(n-1)` with `a(0)=1`
-/

namespace A166114.P2768099346647483321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A166114.P2768099346647483321

namespace A166114

/-- `a(n-1)+(-4)^(n-1)` -/
def P2768099346647483321.Spec : Prop :=
  ∀ n, P2768099346647483321.a n = (A166114 n : ℚ)

end A166114

/-! ## A166114.P9504600347786220571

`(6-(-4)^n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166114.P9504600347786220571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - (-4) ^ n : ℚ) / 5

end

end A166114.P9504600347786220571

namespace A166114

/-- `(6-(-4)^n)/5` -/
def P9504600347786220571.Spec : Prop :=
  ∀ n, P9504600347786220571.a n = (A166114 n : ℚ)

theorem P9504600347786220571.correct : P9504600347786220571.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166114, Nat.add_sub_cancel, A166114.P9504600347786220571.a, A166114.P16432414408807592574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166114, Nat.add_sub_cancel, A166114.P9504600347786220571.a, A166114.P16432414408807592574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166114

/-! ## A166114.P18417686148376617408

`∑[ogf((1+5x)/(1+4x))]`
-/

namespace A166114.P18417686148376617408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166114.P18417686148376617408

namespace A166114

/-- `∑[ogf((1+5x)/(1+4x))]` -/
def P18417686148376617408.Spec : Prop :=
  ∀ n, P18417686148376617408.a n = A166114 n

end A166114

/-! ## A166114.P2491068279508585211

`ogf((1+5x)/(1+3x-4x^2))`
-/

namespace A166114.P2491068279508585211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 3, -4] n

end

end A166114.P2491068279508585211

namespace A166114

/-- `ogf((1+5x)/(1+3x-4x^2))` -/
def P2491068279508585211.Spec : Prop :=
  ∀ n, P2491068279508585211.a n = A166114 n

end A166114

/-! ## A166114.P1516654348568318983

`∑[(-4)^((n-1)%(n+1))]`
-/

namespace A166114.P1516654348568318983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166114.P1516654348568318983

namespace A166114

/-- `∑[(-4)^((n-1)%(n+1))]` -/
def P1516654348568318983.Spec : Prop :=
  ∀ n, P1516654348568318983.a n = (A166114 n : ℚ)

end A166114

/-! ## A166114.P15940697262854235537

`6-a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A166114.P15940697262854235537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 - a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A166114.P15940697262854235537

namespace A166114

/-- `6-a(n-1)/(1/2)²` -/
def P15940697262854235537.Spec : Prop :=
  ∀ n, P15940697262854235537.a n = (A166114 n : ℚ)

end A166114

/-! ## A166114.P6701884700766613988

`xor(-4^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A166114.P6701884700766613988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway (-((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))) (a (n - 1))

end

end A166114.P6701884700766613988

namespace A166114

/-- `xor(-4^(n-1), a(n-1))` -/
def P6701884700766613988.Spec : Prop :=
  ∀ n, P6701884700766613988.a n = A166114 n

end A166114

/-! ## A166114.P16745693927832023213

`A113876(n+1)-A024036(n)`
-/

namespace A166114.P16745693927832023213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113876 (n + 1) - A024036 n

end

end A166114.P16745693927832023213

namespace A166114

/-- `A113876(n+1)-A024036(n)` -/
def P16745693927832023213.Spec : Prop :=
  ∀ n, P16745693927832023213.a n = A166114 n

end A166114

/-! ## A166114.P1892306569346981078

`A052539(n)-A112627(n+1)`
-/

namespace A166114.P1892306569346981078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - A112627 (n + 1)

end

end A166114.P1892306569346981078

namespace A166114

/-- `A052539(n)-A112627(n+1)` -/
def P1892306569346981078.Spec : Prop :=
  ∀ n, P1892306569346981078.a n = A166114 n

end A166114

/-! ## A166114.P1780347376710122439

`A028298(n²)+a(n-1)` with `a(0)=1`
-/

namespace A166114.P1780347376710122439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028298 (n ^ 2) + a (n - 1)

end

end A166114.P1780347376710122439

namespace A166114

/-- `A028298(n²)+a(n-1)` -/
def P1780347376710122439.Spec : Prop :=
  ∀ n, P1780347376710122439.a n = A166114 n

end A166114

/-!
# A166117: a(0)=0, a(1)=1, a(2)=2 and a(n) = a(n-1) - 2a(n-2) + a(n-3).

The programs for A166117, the canonical program `A166117.P9360193813016274329` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166117 has offset 0).

The definition of A166117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)` (program `A166117.P9360193813016274329`, by `A166117.P9360193813016274329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166117.P9360193813016274329

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166117

/-- `a(n-1)-2*a(n-2)+a(n-3)` -/
def P9360193813016274329.Spec : Prop :=
  ∀ n, P9360193813016274329.a n = A166117 n

theorem P9360193813016274329.correct : P9360193813016274329.Spec := by
  intro n
  simp only [A166117]

end A166117

/-! ## A166117.P7777330627056331764

`a(n-4)-(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A166117.P7777330627056331764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  a (n - 4) - (a (n - 2) + a (n - 3))

end

end A166117.P7777330627056331764

namespace A166117

/-- `a(n-4)-(a(n-2)+a(n-3))` -/
def P7777330627056331764.Spec : Prop :=
  ∀ n, P7777330627056331764.a n = A166117 n

end A166117

/-! ## A166117.P18368876931703243562

`a(n-4)-a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A166117.P18368876931703243562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  a (n - 4) - a (n - 2) - a (n - 3)

end

end A166117.P18368876931703243562

namespace A166117

/-- `a(n-4)-a(n-2)-a(n-3)` -/
def P18368876931703243562.Spec : Prop :=
  ∀ n, P18368876931703243562.a n = A166117 n

end A166117

/-! ## A166117.P3089489495475005773

`ogf((x+x^2)/(1-x+2x^2-x^3))`
-/

namespace A166117.P3089489495475005773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -1, 2, -1] n

end

end A166117.P3089489495475005773

namespace A166117

/-- `ogf((x+x^2)/(1-x+2x^2-x^3))` -/
def P3089489495475005773.Spec : Prop :=
  ∀ n, P3089489495475005773.a n = A166117 n

end A166117

/-! ## A166117.P2255353320122874552

`∑[A141576(n+1)+A141576(n)]+1`
-/

namespace A166117.P2255353320122874552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141576 (n + 1) + A141576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166117.P2255353320122874552

namespace A166117

/-- `∑[A141576(n+1)+A141576(n)]+1` -/
def P2255353320122874552.Spec : Prop :=
  ∀ n, P2255353320122874552.a n = A166117 n

end A166117

/-! ## A166117.P18001872860680173350

`A176971(2*n+1)+A176971(2*n+1)-A104769(2*n)`
-/

namespace A166117.P18001872860680173350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 1) + (A176971 (2 * n + 1) - A104769 (2 * n))

end

end A166117.P18001872860680173350

namespace A166117

/-- `A176971(2*n+1)+A176971(2*n+1)-A104769(2*n)` -/
def P18001872860680173350.Spec : Prop :=
  ∀ n, P18001872860680173350.a n = A166117 n

end A166117

/-! ## A166117.P3913649019528695055

`2*A050935(2*n+1)-A104769(2*n)`
-/

namespace A166117.P3913649019528695055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050935 (2 * n + 1) - A104769 (2 * n)

end

end A166117.P3913649019528695055

namespace A166117

/-- `2*A050935(2*n+1)-A104769(2*n)` -/
def P3913649019528695055.Spec : Prop :=
  ∀ n, P3913649019528695055.a n = A166117 n

end A166117

/-! ## A166117.P3580994427731365118

`2*A176971(2*n+1)-A104769(2*n)`
-/

namespace A166117.P3580994427731365118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176971 (2 * n + 1) - A104769 (2 * n)

end

end A166117.P3580994427731365118

namespace A166117

/-- `2*A176971(2*n+1)-A104769(2*n)` -/
def P3580994427731365118.Spec : Prop :=
  ∀ n, P3580994427731365118.a n = A166117 n

end A166117

/-! ## A166117.P9247817854201590578

`2*A050935(2*n+1)-A050935(2*(n+1))`
-/

namespace A166117.P9247817854201590578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050935 (2 * n + 1) - A050935 (2 * (n + 1))

end

end A166117.P9247817854201590578

namespace A166117

/-- `2*A050935(2*n+1)-A050935(2*(n+1))` -/
def P9247817854201590578.Spec : Prop :=
  ∀ n, P9247817854201590578.a n = A166117 n

end A166117

/-! ## A166117.P16137116702798570346

`A176971(2*n+1)+1-A077905(2*n)`
-/

namespace A166117.P16137116702798570346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 1) + (1 - A077905 (2 * n))

end

end A166117.P16137116702798570346

namespace A166117

/-- `A176971(2*n+1)+1-A077905(2*n)` -/
def P16137116702798570346.Spec : Prop :=
  ∀ n, P16137116702798570346.a n = A166117 n

end A166117

/-! ## A166117.P2198870553775840351

`A176971(2*n+1)+A247917(2*n+1)+A176971(2*n)`
-/

namespace A166117.P2198870553775840351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 1) + (A247917 (2 * n + 1) + A176971 (2 * n))

end

end A166117.P2198870553775840351

namespace A166117

/-- `A176971(2*n+1)+A247917(2*n+1)+A176971(2*n)` -/
def P2198870553775840351.Spec : Prop :=
  ∀ n, P2198870553775840351.a n = A166117 n

end A166117

/-! ## A166117.P11719223577183431843

`A247917(2*n+1)+A078013(2*n)-A078013(2*n+1)`
-/

namespace A166117.P11719223577183431843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (2 * n + 1) + (A078013 (2 * n) - A078013 (2 * n + 1))

end

end A166117.P11719223577183431843

namespace A166117

/-- `A247917(2*n+1)+A078013(2*n)-A078013(2*n+1)` -/
def P11719223577183431843.Spec : Prop :=
  ∀ n, P11719223577183431843.a n = A166117 n

end A166117

/-! ## A166117.P4554824433318823575

`A104770(2*n+1)+A104770(2*n)`
-/

namespace A166117.P4554824433318823575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (2 * n + 1) + A104770 (2 * n)

end

end A166117.P4554824433318823575

namespace A166117

/-- `A104770(2*n+1)+A104770(2*n)` -/
def P4554824433318823575.Spec : Prop :=
  ∀ n, P4554824433318823575.a n = A166117 n

end A166117

/-! ## A166117.P6147412185345433168

`A104771(2*n+1)+A176971(2*n)+A104771(2*n)`
-/

namespace A166117.P6147412185345433168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 (2 * n + 1) + (A176971 (2 * n) + A104771 (2 * n))

end

end A166117.P6147412185345433168

namespace A166117

/-- `A104771(2*n+1)+A176971(2*n)+A104771(2*n)` -/
def P6147412185345433168.Spec : Prop :=
  ∀ n, P6147412185345433168.a n = A166117 n

end A166117

/-! ## A166117.P3208122252591531562

`A005251(2*n)-A000931(2*n)*A001608(2*n+1)`
-/

namespace A166117.P3208122252591531562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * n) - A000931 (2 * n) * A001608 (2 * n + 1)

end

end A166117.P3208122252591531562

namespace A166117

/-- `A005251(2*n)-A000931(2*n)*A001608(2*n+1)` -/
def P3208122252591531562.Spec : Prop :=
  ∀ n, P3208122252591531562.a n = A166117 n

end A166117

/-!
# A166118: Fixed points of the mapping f(x) = (x + 2^x) mod (17 + x).

The programs for A166118, the canonical program `A166118.P6969598070021077412` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166118 has offset 1).

The definition of A166118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166118.P6969598070021077412

`16*2^(n+1)-17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166118

/-- `16*2^(n+1)-17` -/
def P6969598070021077412.Spec : Prop :=
  ∀ n, P6969598070021077412.a n = A166118 (n + 1)

theorem P6969598070021077412.correct : P6969598070021077412.Spec := by
  intro n
  simp only [A166118, Nat.add_sub_cancel]

end A166118

/-! ## A166118.P3000748735544103731

`ogf((15+2x)/(1-3x+2x^2))`
-/

namespace A166118.P3000748735544103731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 2] [1, -3, 2] n

end

end A166118.P3000748735544103731

namespace A166118

/-- `ogf((15+2x)/(1-3x+2x^2))` -/
def P3000748735544103731.Spec : Prop :=
  ∀ n, P3000748735544103731.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P3947293545743507723

`∑[2*a(n-1)]` with `a(0)=15, a(1)=32`
-/

namespace A166118.P3947293545743507723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 32] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166118.P3947293545743507723

namespace A166118

/-- `∑[2*a(n-1)]` -/
def P3947293545743507723.Spec : Prop :=
  ∀ n, (P3947293545743507723.a n : ℤ) = A166118 (n + 1)

end A166118

/-! ## A166118.P10633752070249728326

`∑[A018196(n+4)]`
-/

namespace A166118.P10633752070249728326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018196 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166118.P10633752070249728326

namespace A166118

/-- `∑[A018196(n+4)]` -/
def P10633752070249728326.Spec : Prop :=
  ∀ n, P10633752070249728326.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P13250073186183976474

`or(3, A159742(n+1))`
-/

namespace A166118.P13250073186183976474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A159742 (n + 1))

end

end A166118.P13250073186183976474

namespace A166118

/-- `or(3, A159742(n+1))` -/
def P13250073186183976474.Spec : Prop :=
  ∀ n, P13250073186183976474.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P1347294258872440427

`∑[A283523(n+3)+1]`
-/

namespace A166118.P1347294258872440427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283523 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166118.P1347294258872440427

namespace A166118

/-- `∑[A283523(n+3)+1]` -/
def P1347294258872440427.Spec : Prop :=
  ∀ n, P1347294258872440427.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P7546252369807214474

`∑[A290682(n+3)+1]`
-/

namespace A166118.P7546252369807214474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166118.P7546252369807214474

namespace A166118

/-- `∑[A290682(n+3)+1]` -/
def P7546252369807214474.Spec : Prop :=
  ∀ n, P7546252369807214474.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P16142012566907569438

`∑[A283709(n+3)+2]`
-/

namespace A166118.P16142012566907569438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283709 (n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166118.P16142012566907569438

namespace A166118

/-- `∑[A283709(n+3)+2]` -/
def P16142012566907569438.Spec : Prop :=
  ∀ n, P16142012566907569438.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P4637058335239890834

`∑[A290198(n+3)+2]`
-/

namespace A166118.P4637058335239890834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290198 (n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166118.P4637058335239890834

namespace A166118

/-- `∑[A290198(n+3)+2]` -/
def P4637058335239890834.Spec : Prop :=
  ∀ n, P4637058335239890834.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P16456726155924377468

`xor(A157532(n+1), A159742(n+1))`
-/

namespace A166118.P16456726155924377468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157532 (n + 1)) (A159742 (n + 1))

end

end A166118.P16456726155924377468

namespace A166118

/-- `xor(A157532(n+1), A159742(n+1))` -/
def P16456726155924377468.Spec : Prop :=
  ∀ n, P16456726155924377468.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P17341420592087886138

`or(3, A265207(2*n+1)+A007283(n+2))`
-/

namespace A166118.P17341420592087886138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A265207 (2 * n + 1) + A007283 (n + 2))

end

end A166118.P17341420592087886138

namespace A166118

/-- `or(3, A265207(2*n+1)+A007283(n+2))` -/
def P17341420592087886138.Spec : Prop :=
  ∀ n, P17341420592087886138.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P5019003403726645954

`(A175165(n+1)-2)/2`
-/

namespace A166118.P5019003403726645954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175165 (n + 1) - 2 : ℚ) / 2

end

end A166118.P5019003403726645954

namespace A166118

/-- `(A175165(n+1)-2)/2` -/
def P5019003403726645954.Spec : Prop :=
  ∀ n, P5019003403726645954.a n = (A166118 (n + 1) : ℚ)

theorem P5019003403726645954.correct : P5019003403726645954.Spec := by
  intro n
  simp only [A166118, Nat.add_sub_cancel, A166118.P5019003403726645954.a, A166118.P6969598070021077412.a, A175165, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166118

/-! ## A166118.P15938560557637925061

`A089633(A000217(n+5)-5)`
-/

namespace A166118.P15938560557637925061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A000217 (n + 5) - 5).toNat

end

end A166118.P15938560557637925061

namespace A166118

/-- `A089633(A000217(n+5)-5)` -/
def P15938560557637925061.Spec : Prop :=
  ∀ n, P15938560557637925061.a n = A166118 (n + 1)

end A166118

/-! ## A166118.P12007905488372720227

`A089633(A035254(A014132(A000217(n+3))))`
-/

namespace A166118.P12007905488372720227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A035254 (A014132 (A000217 (n + 3)).toNat).toNat).toNat

end

end A166118.P12007905488372720227

namespace A166118

/-- `A089633(A035254(A014132(A000217(n+3))))` -/
def P12007905488372720227.Spec : Prop :=
  ∀ n, P12007905488372720227.a n = A166118 (n + 1)

end A166118

/-!
# A166119: a(n) = A165966(n)/12.

The programs for A166119, there is no canonical definition to state claims against.
-/

/-! ## A166119.P2873608773430701458

`A165966(n+1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166119.P2873608773430701458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165966 (n + 1) : ℚ) / 12

end

end A166119.P2873608773430701458

/-! ## A166119.P9380402019153781070

`(A086816(n+1)+1)/6`
-/

namespace A166119.P9380402019153781070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086816 (n + 1) + 1 : ℚ) / 6

end

end A166119.P9380402019153781070

/-! ## A166119.P2726773529796323309

`round(A086816(n+1)/6)`
-/

namespace A166119.P2726773529796323309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086816 (n + 1) : ℚ) / 6)

end

end A166119.P2726773529796323309

/-! ## A166119.P12882211059176368215

`C(A105174(n+1)+1, 2)/12`
-/

namespace A166119.P12882211059176368215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A105174 (n + 1) + 1).toNat 2 : ℚ) / 12

end

end A166119.P12882211059176368215

/-! ## A166119.P17177353044847597393

`A000217(A105174(n+1))/12`
-/

namespace A166119.P17177353044847597393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A105174 (n + 1)).toNat : ℚ) / 12

end

end A166119.P17177353044847597393

/-!
# A166120: a(n) = A027642(n-1) / A089026(n).

The programs for A166120, the canonical program `A166120.P5315806912369987388` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166120 has offset 1).

The definition of A166120 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, A089026, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166120.P5315806912369987388

`A027642(n)/A089026(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166120

/-- `A027642(n)/A089026(n+1)` -/
def P5315806912369987388.Spec : Prop :=
  ∀ n, P5315806912369987388.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P11465326080476974737

`ceil(A027642(n)/A110560(n))`
-/

namespace A166120.P11465326080476974737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027642 n : ℚ) / (A110560 n : ℚ)⌉

end

end A166120.P11465326080476974737

namespace A166120

/-- `ceil(A027642(n)/A110560(n))` -/
def P11465326080476974737.Spec : Prop :=
  ∀ n, P11465326080476974737.a n = A166120 (n + 1)

end A166120

/-! ## A166120.P4838676174122079417

`A050932(n)*A166123(n+1)`
-/

namespace A166120.P4838676174122079417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n * A166123 (n + 1)

end

end A166120.P4838676174122079417

namespace A166120

/-- `A050932(n)*A166123(n+1)` -/
def P4838676174122079417.Spec : Prop :=
  ∀ n, P4838676174122079417.a n = A166120 (n + 1)

end A166120

/-! ## A166120.P14724686852638726911

`ceil(A176289(n)/A089026(n+1))`
-/

namespace A166120.P14724686852638726911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176289 n : ℚ) / (A089026 (n + 1) : ℚ)⌉

end

end A166120.P14724686852638726911

namespace A166120

/-- `ceil(A176289(n)/A089026(n+1))` -/
def P14724686852638726911.Spec : Prop :=
  ∀ n, P14724686852638726911.a n = A166120 (n + 1)

end A166120

/-! ## A166120.P11330661710609023281

`A027642(n)/(A166260(n+1)+1)`
-/

namespace A166120.P11330661710609023281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A166260 (n + 1) + 1 : ℚ)

end

end A166120.P11330661710609023281

namespace A166120

/-- `A027642(n)/(A166260(n+1)+1)` -/
def P11330661710609023281.Spec : Prop :=
  ∀ n, P11330661710609023281.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P2959642333821676661

`A027642(n)/A014963(A057723(n+1))`
-/

namespace A166120.P2959642333821676661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A014963 (A057723 (n + 1)).toNat : ℚ)

end

end A166120.P2959642333821676661

namespace A166120

/-- `A027642(n)/A014963(A057723(n+1))` -/
def P2959642333821676661.Spec : Prop :=
  ∀ n, P2959642333821676661.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P17883082846064121139

`A027642(n)/A014963(A080305(n+1))`
-/

namespace A166120.P17883082846064121139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A014963 (A080305 (n + 1)).toNat : ℚ)

end

end A166120.P17883082846064121139

namespace A166120

/-- `A027642(n)/A014963(A080305(n+1))` -/
def P17883082846064121139.Spec : Prop :=
  ∀ n, P17883082846064121139.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P5891167772696615785

`A027642(n)/A166333(A166260(n+1))`
-/

namespace A166120.P5891167772696615785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A166333 (A166260 (n + 1)).toNat : ℚ)

end

end A166120.P5891167772696615785

namespace A166120

/-- `A027642(n)/A166333(A166260(n+1))` -/
def P5891167772696615785.Spec : Prop :=
  ∀ n, P5891167772696615785.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P10053962542577960134

`(A176289(n)+char[1])/A014963(A080305(n+1))`
-/

namespace A166120.P10053962542577960134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (A014963 (A080305 (n + 1)).toNat : ℚ)

end

end A166120.P10053962542577960134

namespace A166120

/-- `(A176289(n)+char[1])/A014963(A080305(n+1))` -/
def P10053962542577960134.Spec : Prop :=
  ∀ n, P10053962542577960134.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P4263074017304728416

`(A176289(n)+char[1])/A166333(A166260(n+1))`
-/

namespace A166120.P4263074017304728416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (A166333 (A166260 (n + 1)).toNat : ℚ)

end

end A166120.P4263074017304728416

namespace A166120

/-- `(A176289(n)+char[1])/A166333(A166260(n+1))` -/
def P4263074017304728416.Spec : Prop :=
  ∀ n, P4263074017304728416.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P5769855693119560326

`lcm(A176289(n), A285068(n))/A089026(n+1)`
-/

namespace A166120.P5769855693119560326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A176289 n) (A285068 n) : ℚ) / (A089026 (n + 1) : ℚ)

end

end A166120.P5769855693119560326

namespace A166120

/-- `lcm(A176289(n), A285068(n))/A089026(n+1)` -/
def P5769855693119560326.Spec : Prop :=
  ∀ n, P5769855693119560326.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P1438856325825464651

`gcd(A176289(n), A378133(n))`
-/

namespace A166120.P1438856325825464651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176289 n) (A378133 n)

end

end A166120.P1438856325825464651

namespace A166120

/-- `gcd(A176289(n), A378133(n))` -/
def P1438856325825464651.Spec : Prop :=
  ∀ n, (P1438856325825464651.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P13017266099857402508

`gcd(A027642(n), A034386(n))`
-/

namespace A166120.P13017266099857402508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A034386 n)

end

end A166120.P13017266099857402508

namespace A166120

/-- `gcd(A027642(n), A034386(n))` -/
def P13017266099857402508.Spec : Prop :=
  ∀ n, (P13017266099857402508.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P1713629767704267822

`gcd(A172282(n), A330030(n))`
-/

namespace A166120.P1713629767704267822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172282 n) (A330030 n)

end

end A166120.P1713629767704267822

namespace A166120

/-- `gcd(A172282(n), A330030(n))` -/
def P1713629767704267822.Spec : Prop :=
  ∀ n, (P1713629767704267822.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P12244126840773184568

`gcd(A176289(n)², A186944(n+1))`
-/

namespace A166120.P12244126840773184568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176289 n ^ 2) (A186944 (n + 1))

end

end A166120.P12244126840773184568

namespace A166120

/-- `gcd(A176289(n)², A186944(n+1))` -/
def P12244126840773184568.Spec : Prop :=
  ∀ n, (P12244126840773184568.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P974421140642650324

`A027642(n)/A034386(n+1)*A034386(n)`
-/

namespace A166120.P974421140642650324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A034386 (n + 1) : ℚ) * (A034386 n : ℚ)

end

end A166120.P974421140642650324

namespace A166120

/-- `A027642(n)/A034386(n+1)*A034386(n)` -/
def P974421140642650324.Spec : Prop :=
  ∀ n, P974421140642650324.a n = (A166120 (n + 1) : ℚ)

end A166120

/-! ## A166120.P12280532854580179248

`gcd(2*A123023(n), A157780(n))`
-/

namespace A166120.P12280532854580179248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A123023 n) (A157780 n)

end

end A166120.P12280532854580179248

namespace A166120

/-- `gcd(2*A123023(n), A157780(n))` -/
def P12280532854580179248.Spec : Prop :=
  ∀ n, (P12280532854580179248.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P9872052452643968935

`gcd(A141056(n), A216443(n+2))`
-/

namespace A166120.P9872052452643968935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 n) (A216443 (n + 2))

end

end A166120.P9872052452643968935

namespace A166120

/-- `gcd(A141056(n), A216443(n+2))` -/
def P9872052452643968935.Spec : Prop :=
  ∀ n, (P9872052452643968935.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P14453699167545643751

`gcd(A127137(n), A141056(n))`
-/

namespace A166120.P14453699167545643751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127137 n) (A141056 n)

end

end A166120.P14453699167545643751

namespace A166120

/-- `gcd(A127137(n), A141056(n))` -/
def P14453699167545643751.Spec : Prop :=
  ∀ n, (P14453699167545643751.a n : ℤ) = A166120 (n + 1)

end A166120

/-! ## A166120.P18429680369127355402

`floor(A141056(n)/A135517(n²))/A089026(n+1)`
-/

namespace A166120.P18429680369127355402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A141056 n : ℚ) / (A135517 (n ^ 2) : ℚ)⌋ : ℚ) / (A089026 (n + 1) : ℚ)

end

end A166120.P18429680369127355402

namespace A166120

/-- `floor(A141056(n)/A135517(n²))/A089026(n+1)` -/
def P18429680369127355402.Spec : Prop :=
  ∀ n, P18429680369127355402.a n = (A166120 (n + 1) : ℚ)

end A166120

/-!
# A166122: a(n) = (7-(-5)^n)/6.

The programs for A166122, the canonical program `A166122.P12254188943384619917` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166122 has offset 0).

The definition of A166122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7-(-5)^n)/6` (program `A166122.P7498255049790548476`, by `A166122.P7498255049790548476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166122.P12254188943384619917

`7-5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166122

/-- `7-5*a(n-1)` -/
def P12254188943384619917.Spec : Prop :=
  ∀ n, P12254188943384619917.a n = A166122 n

theorem P12254188943384619917.correct : P12254188943384619917.Spec := by
  intro n
  simp only [A166122]

end A166122

/-! ## A166122.P9498905607319829854

`a(n-1)+(-5)^(n-1)` with `a(0)=1`
-/

namespace A166122.P9498905607319829854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A166122.P9498905607319829854

namespace A166122

/-- `a(n-1)+(-5)^(n-1)` -/
def P9498905607319829854.Spec : Prop :=
  ∀ n, P9498905607319829854.a n = (A166122 n : ℚ)

end A166122

/-! ## A166122.P7498255049790548476

`(7-(-5)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166122.P7498255049790548476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 - (-5) ^ n : ℚ) / 6

end

end A166122.P7498255049790548476

namespace A166122

/-- `(7-(-5)^n)/6` -/
def P7498255049790548476.Spec : Prop :=
  ∀ n, P7498255049790548476.a n = (A166122 n : ℚ)

theorem P7498255049790548476.correct : P7498255049790548476.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166122, Nat.add_sub_cancel, A166122.P7498255049790548476.a, A166122.P12254188943384619917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166122, Nat.add_sub_cancel, A166122.P7498255049790548476.a, A166122.P12254188943384619917.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166122

/-! ## A166122.P6533013322698656004

`∑[ogf((1+6x)/(1+5x))]`
-/

namespace A166122.P6533013322698656004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166122.P6533013322698656004

namespace A166122

/-- `∑[ogf((1+6x)/(1+5x))]` -/
def P6533013322698656004.Spec : Prop :=
  ∀ n, P6533013322698656004.a n = A166122 n

end A166122

/-! ## A166122.P13149243737795285964

`ogf((1+6x)/(1+4x-5x^2))`
-/

namespace A166122.P13149243737795285964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 4, -5] n

end

end A166122.P13149243737795285964

namespace A166122

/-- `ogf((1+6x)/(1+4x-5x^2))` -/
def P13149243737795285964.Spec : Prop :=
  ∀ n, P13149243737795285964.a n = A166122 n

end A166122

/-! ## A166122.P10013948445738458352

`∑[(-5)^((n-1)%(n+1))]`
-/

namespace A166122.P10013948445738458352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166122.P10013948445738458352

namespace A166122

/-- `∑[(-5)^((n-1)%(n+1))]` -/
def P10013948445738458352.Spec : Prop :=
  ∀ n, P10013948445738458352.a n = (A166122 n : ℚ)

end A166122

/-! ## A166122.P1432286674014124991

`∑[a(n-1)/(4/5-1)]` with `a(0)=1, a(1)=1`
-/

namespace A166122.P1432286674014124991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) / ((4 : ℚ) / 5 - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166122.P1432286674014124991

namespace A166122

/-- `∑[a(n-1)/(4/5-1)]` -/
def P1432286674014124991.Spec : Prop :=
  ∀ n, P1432286674014124991.a n = (A166122 n : ℚ)

end A166122

/-! ## A166122.P8553456115958284489

`∑[(-5)^(A004273(n)-n)]`
-/

namespace A166122.P8553456115958284489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-5 : ℚ) ^ (A004273 n - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166122.P8553456115958284489

namespace A166122

/-- `∑[(-5)^(A004273(n)-n)]` -/
def P8553456115958284489.Spec : Prop :=
  ∀ n, P8553456115958284489.a n = (A166122 n : ℚ)

end A166122

/-!
# A166123: If n is prime, a(n) = 1; otherwise, a(n) is gcd(n, d) where d is the denominator of the (n-1)-th Bernoulli number.

The programs for A166123, the canonical program `A166123.P17080126182771672901` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166123 has offset 1).

The definition of A166123 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050932, A166120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166123.P17080126182771672901

`A166120(n+1)/A050932(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166123

/-- `A166120(n+1)/A050932(n)` -/
def P17080126182771672901.Spec : Prop :=
  ∀ n, P17080126182771672901.a n = (A166123 (n + 1) : ℚ)

end A166123

/-! ## A166123.P2639913254584800760

`A326584(A005451(n+1))`
-/

namespace A166123.P2639913254584800760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A005451 (n + 1)).toNat

end

end A166123.P2639913254584800760

namespace A166123

/-- `A326584(A005451(n+1))` -/
def P2639913254584800760.Spec : Prop :=
  ∀ n, P2639913254584800760.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P1846451673765629329

`A326584(A113646(n+1))`
-/

namespace A166123.P1846451673765629329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A113646 (n + 1)).toNat

end

end A166123.P1846451673765629329

namespace A166123

/-- `A326584(A113646(n+1))` -/
def P1846451673765629329.Spec : Prop :=
  ∀ n, P1846451673765629329.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P15737257041669032323

`A326584(A179278(n+1))`
-/

namespace A166123.P15737257041669032323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A179278 (n + 1)).toNat

end

end A166123.P15737257041669032323

namespace A166123

/-- `A326584(A179278(n+1))` -/
def P15737257041669032323.Spec : Prop :=
  ∀ n, P15737257041669032323.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P13831456965297538273

`gcd(A005451(n+1), A027642(n))`
-/

namespace A166123.P13831456965297538273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A027642 n)

end

end A166123.P13831456965297538273

namespace A166123

/-- `gcd(A005451(n+1), A027642(n))` -/
def P13831456965297538273.Spec : Prop :=
  ∀ n, (P13831456965297538273.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P1510480182678626126

`gcd(A072195(n+1), A141459(n))`
-/

namespace A166123.P1510480182678626126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072195 (n + 1)) (A141459 n)

end

end A166123.P1510480182678626126

namespace A166123

/-- `gcd(A072195(n+1), A141459(n))` -/
def P1510480182678626126.Spec : Prop :=
  ∀ n, (P1510480182678626126.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P7104985687982496047

`gcd(A141056(n), A171435(n+1))`
-/

namespace A166123.P7104985687982496047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 n) (A171435 (n + 1))

end

end A166123.P7104985687982496047

namespace A166123

/-- `gcd(A141056(n), A171435(n+1))` -/
def P7104985687982496047.Spec : Prop :=
  ∀ n, (P7104985687982496047.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P14607464488704362778

`gcd(A176591(n), A385349(n+1))`
-/

namespace A166123.P14607464488704362778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176591 n) (A385349 (n + 1))

end

end A166123.P14607464488704362778

namespace A166123

/-- `gcd(A176591(n), A385349(n+1))` -/
def P14607464488704362778.Spec : Prop :=
  ∀ n, (P14607464488704362778.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P3570490854563013178

`A326584(n+1)-A166260(n+1)`
-/

namespace A166123.P3570490854563013178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (n + 1) - A166260 (n + 1)

end

end A166123.P3570490854563013178

namespace A166123

/-- `A326584(n+1)-A166260(n+1)` -/
def P3570490854563013178.Spec : Prop :=
  ∀ n, P3570490854563013178.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P4207581996433938411

`A005451(n+1)/A326478(n+1)`
-/

namespace A166123.P4207581996433938411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005451 (n + 1) : ℚ) / (A326478 (n + 1) : ℚ)

end

end A166123.P4207581996433938411

namespace A166123

/-- `A005451(n+1)/A326478(n+1)` -/
def P4207581996433938411.Spec : Prop :=
  ∀ n, P4207581996433938411.a n = (A166123 (n + 1) : ℚ)

end A166123

/-! ## A166123.P2280585073064113722

`A326584(n+1)/A089026(n+1)`
-/

namespace A166123.P2280585073064113722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326584 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ)

end

end A166123.P2280585073064113722

namespace A166123

/-- `A326584(n+1)/A089026(n+1)` -/
def P2280585073064113722.Spec : Prop :=
  ∀ n, P2280585073064113722.a n = (A166123 (n + 1) : ℚ)

end A166123

/-! ## A166123.P8986531097798269813

`A326584(n%(A007920(n+1)+n)+1)`
-/

namespace A166123.P8986531097798269813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (Int.tmod (n : ℤ) (A007920 (n + 1) + (n : ℤ)) + 1).toNat

end

end A166123.P8986531097798269813

namespace A166123

/-- `A326584(n%(A007920(n+1)+n)+1)` -/
def P8986531097798269813.Spec : Prop :=
  ∀ n, P8986531097798269813.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P7409898707637177451

`gcd(A027642(n), A048671(A109613(n)))`
-/

namespace A166123.P7409898707637177451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A048671 (A109613 n).toNat)

end

end A166123.P7409898707637177451

namespace A166123

/-- `gcd(A027642(n), A048671(A109613(n)))` -/
def P7409898707637177451.Spec : Prop :=
  ∀ n, (P7409898707637177451.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P13677481388977799900

`A027642(n)/(A050932(n)*A089026(n+1))`
-/

namespace A166123.P13677481388977799900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A050932 n * A089026 (n + 1) : ℚ)

end

end A166123.P13677481388977799900

namespace A166123

/-- `A027642(n)/(A050932(n)*A089026(n+1))` -/
def P13677481388977799900.Spec : Prop :=
  ∀ n, P13677481388977799900.a n = (A166123 (n + 1) : ℚ)

end A166123

/-! ## A166123.P14875344160814782599

`gcd(A000793(n), A326584(n+1))`
-/

namespace A166123.P14875344160814782599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000793 n) (A326584 (n + 1))

end

end A166123.P14875344160814782599

namespace A166123

/-- `gcd(A000793(n), A326584(n+1))` -/
def P14875344160814782599.Spec : Prop :=
  ∀ n, (P14875344160814782599.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P2405167670466470607

`A326584(A066560(n+1))`
-/

namespace A166123.P2405167670466470607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A066560 (n + 1)).toNat

end

end A166123.P2405167670466470607

namespace A166123

/-- `A326584(A066560(n+1))` -/
def P2405167670466470607.Spec : Prop :=
  ∀ n, P2405167670466470607.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P14283164241177952963

`A326584(A143545(n+1))`
-/

namespace A166123.P14283164241177952963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A143545 (n + 1)).toNat

end

end A166123.P14283164241177952963

namespace A166123

/-- `A326584(A143545(n+1))` -/
def P14283164241177952963.Spec : Prop :=
  ∀ n, P14283164241177952963.a n = A166123 (n + 1)

end A166123

/-! ## A166123.P2497669907311058571

`gcd(A144907(n+1), A172282(n))`
-/

namespace A166123.P2497669907311058571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144907 (n + 1)) (A172282 n)

end

end A166123.P2497669907311058571

namespace A166123

/-- `gcd(A144907(n+1), A172282(n))` -/
def P2497669907311058571.Spec : Prop :=
  ∀ n, (P2497669907311058571.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P6729607710839715657

`gcd(A176289(n), A205959(n+1))`
-/

namespace A166123.P6729607710839715657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176289 n) (A205959 (n + 1))

end

end A166123.P6729607710839715657

namespace A166123

/-- `gcd(A176289(n), A205959(n+1))` -/
def P6729607710839715657.Spec : Prop :=
  ∀ n, (P6729607710839715657.a n : ℤ) = A166123 (n + 1)

end A166123

/-! ## A166123.P17679514799473259321

`gcd(n*A172282(n), A334085(n+1))`
-/

namespace A166123.P17679514799473259321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A172282 n) (A334085 (n + 1))

end

end A166123.P17679514799473259321

namespace A166123

/-- `gcd(n*A172282(n), A334085(n+1))` -/
def P17679514799473259321.Spec : Prop :=
  ∀ n, (P17679514799473259321.a n : ℤ) = A166123 (n + 1)

end A166123

/-!
# A166124: Triangle, read by rows, given by [0,1/2,1/2,0,0,0,0,0,0,0,...] DELTA [2,-1,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A166124, the canonical program `A166124.P10325063162919866577` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166124 has offset 0).

The definition of A166124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166124.P10325063162919866577

`floor(ratio[A035214(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166124

/-- `floor(ratio[A035214(n)])` -/
def P10325063162919866577.Spec : Prop :=
  ∀ n, P10325063162919866577.a n = A166124 n

theorem P10325063162919866577.correct : P10325063162919866577.Spec := by
  intro n
  simp only [A166124]

end A166124

/-! ## A166124.P7607799029694489461

`Δ[A010054(n)]+1`
-/

namespace A166124.P7607799029694489461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A166124.P7607799029694489461

namespace A166124

/-- `Δ[A010054(n)]+1` -/
def P7607799029694489461.Spec : Prop :=
  ∀ n, P7607799029694489461.a n = A166124 n

end A166124

/-! ## A166124.P12590502627728805894

`1-Δ[A238303(n)]`
-/

namespace A166124.P12590502627728805894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A166124.P12590502627728805894

namespace A166124

/-- `1-Δ[A238303(n)]` -/
def P12590502627728805894.Spec : Prop :=
  ∀ n, P12590502627728805894.a n = A166124 n

end A166124

/-! ## A166124.P5086483279487922446

`1-Δ[gcd(2, A124927(n))]`
-/

namespace A166124.P5086483279487922446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A124927 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A166124.P5086483279487922446

namespace A166124

/-- `1-Δ[gcd(2, A124927(n))]` -/
def P5086483279487922446.Spec : Prop :=
  ∀ n, P5086483279487922446.a n = A166124 n

end A166124

/-! ## A166124.P12791050573891945359

`a(A271439(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A166124.P12791050573891945359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (A271439 (n - 1)).toNat

end

end A166124.P12791050573891945359

namespace A166124

/-- `a(A271439(n-1))` -/
def P12791050573891945359.Spec : Prop :=
  ∀ n, (P12791050573891945359.a n : ℤ) = A166124 n

end A166124

/-! ## A166124.P9087971415832343665

`2-floor(ratio[A002260(n+1)])`
-/

namespace A166124.P9087971415832343665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A166124.P9087971415832343665

namespace A166124

/-- `2-floor(ratio[A002260(n+1)])` -/
def P9087971415832343665.Spec : Prop :=
  ∀ n, P9087971415832343665.a n = A166124 n

end A166124

/-! ## A166124.P330166231820180091

`A023531(n)+1-char[∑[n]]`
-/

namespace A166124.P330166231820180091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A166124.P330166231820180091

namespace A166124

/-- `A023531(n)+1-char[∑[n]]` -/
def P330166231820180091.Spec : Prop :=
  ∀ n, P330166231820180091.a n = A166124 n

end A166124

/-! ## A166124.P14703712302438130084

`A035214(n+1)-char[∑[n]]`
-/

namespace A166124.P14703712302438130084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A166124.P14703712302438130084

namespace A166124

/-- `A035214(n+1)-char[∑[n]]` -/
def P14703712302438130084.Spec : Prop :=
  ∀ n, P14703712302438130084.a n = A166124 n

end A166124

/-! ## A166124.P17453285155472461343

`Δ[A000005(8*n+1)%2+n]`
-/

namespace A166124.P17453285155472461343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 1)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166124.P17453285155472461343

namespace A166124

/-- `Δ[A000005(8*n+1)%2+n]` -/
def P17453285155472461343.Spec : Prop :=
  ∀ n, P17453285155472461343.a n = A166124 n

end A166124

/-! ## A166124.P6600400332211094745

`Δ[A000203(8*n+1)%2+n]`
-/

namespace A166124.P6600400332211094745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (8 * n + 1)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166124.P6600400332211094745

namespace A166124

/-- `Δ[A000203(8*n+1)%2+n]` -/
def P6600400332211094745.Spec : Prop :=
  ∀ n, P6600400332211094745.a n = A166124 n

end A166124

/-! ## A166124.P3251356912434720324

`A103452(n)+A057427(n)`
-/

namespace A166124.P3251356912434720324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n + A057427 n

end

end A166124.P3251356912434720324

namespace A166124

/-- `A103452(n)+A057427(n)` -/
def P3251356912434720324.Spec : Prop :=
  ∀ n, P3251356912434720324.a n = A166124 n

end A166124

/-! ## A166124.P13862860528355132249

`A167407(n)+A158821(n)`
-/

namespace A166124.P13862860528355132249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n + A158821 n

end

end A166124.P13862860528355132249

namespace A166124

/-- `A167407(n)+A158821(n)` -/
def P13862860528355132249.Spec : Prop :=
  ∀ n, P13862860528355132249.a n = A166124 n

end A166124

/-! ## A166124.P1157448364536228794

`A103452(n)-A057428(n)`
-/

namespace A166124.P1157448364536228794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n - A057428 n

end

end A166124.P1157448364536228794

namespace A166124

/-- `A103452(n)-A057428(n)` -/
def P1157448364536228794.Spec : Prop :=
  ∀ n, P1157448364536228794.a n = A166124 n

end A166124

/-! ## A166124.P6325567815577050634

`A238303(n)-A023532(n)`
-/

namespace A166124.P6325567815577050634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n - A023532 n

end

end A166124.P6325567815577050634

namespace A166124

/-- `A238303(n)-A023532(n)` -/
def P6325567815577050634.Spec : Prop :=
  ∀ n, P6325567815577050634.a n = A166124 n

end A166124

/-! ## A166124.P4666640075599587584

`A166065(n)/A130321(n)`
-/

namespace A166124.P4666640075599587584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166065 n : ℚ) / (A130321 n : ℚ)

end

end A166124.P4666640075599587584

namespace A166124

/-- `A166065(n)/A130321(n)` -/
def P4666640075599587584.Spec : Prop :=
  ∀ n, P4666640075599587584.a n = (A166124 n : ℚ)

end A166124

/-! ## A166124.P12240170856050771945

`1+A023531(n)-A010054(n)`
-/

namespace A166124.P12240170856050771945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A023531 n - A010054 n)

end

end A166124.P12240170856050771945

namespace A166124

/-- `1+A023531(n)-A010054(n)` -/
def P12240170856050771945.Spec : Prop :=
  ∀ n, P12240170856050771945.a n = A166124 n

end A166124

/-! ## A166124.P16788248423809005277

`A103452(n)+1-A000007(n)`
-/

namespace A166124.P16788248423809005277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n + (1 - A000007 n)

end

end A166124.P16788248423809005277

namespace A166124

/-- `A103452(n)+1-A000007(n)` -/
def P16788248423809005277.Spec : Prop :=
  ∀ n, P16788248423809005277.a n = A166124 n

end A166124

/-! ## A166124.P11489235090476836632

`A124927(n)+1-A129994(n)`
-/

namespace A166124.P11489235090476836632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + (1 - A129994 n)

end

end A166124.P11489235090476836632

namespace A166124

/-- `A124927(n)+1-A129994(n)` -/
def P11489235090476836632.Spec : Prop :=
  ∀ n, P11489235090476836632.a n = A166124 n

end A166124

/-! ## A166124.P6317742009664670891

`A166065(n)/A057728(n+1)`
-/

namespace A166124.P6317742009664670891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166065 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A166124.P6317742009664670891

namespace A166124

/-- `A166065(n)/A057728(n+1)` -/
def P6317742009664670891.Spec : Prop :=
  ∀ n, P6317742009664670891.a n = (A166124 n : ℚ)

end A166124

/-! ## A166124.P12953430959907048776

`3-A035214(n)-A023532(n)`
-/

namespace A166124.P12953430959907048776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A035214 n - A023532 n

end

end A166124.P12953430959907048776

namespace A166124

/-- `3-A035214(n)-A023532(n)` -/
def P12953430959907048776.Spec : Prop :=
  ∀ n, P12953430959907048776.a n = A166124 n

end A166124

/-!
# A166127: Minimum value of j such that floor(j^2 / prime(n)) > 0.

The programs for A166127, the canonical program `A166127.P3009407500019831208` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166127 has offset 1).

The definition of A166127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166127.P17648296086297636094

`ceil(sqrt(sqrt(A166010(n+1))))`
-/

namespace A166127.P17648296086297636094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A166010 (n + 1) : ℝ))⌉

end

end A166127.P17648296086297636094

namespace A166127

/-- `ceil(sqrt(sqrt(A166010(n+1))))` -/
def P17648296086297636094.Spec : Prop :=
  ∀ n, P17648296086297636094.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P3009407500019831208

`A104103(n+1)%(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166127

/-- `A104103(n+1)%(n+2)` -/
def P3009407500019831208.Spec : Prop :=
  ∀ n, P3009407500019831208.a n = A166127 (n + 1)

theorem P3009407500019831208.correct : P3009407500019831208.Spec := by
  intro n
  simp only [A166127, Nat.add_sub_cancel]

end A166127

/-! ## A166127.P2649670041598821894

`ceil(sqrt(sqrt(A036689(n+1)-2)))`
-/

namespace A166127.P2649670041598821894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036689 (n + 1) - 2 : ℝ))⌉

end

end A166127.P2649670041598821894

namespace A166127

/-- `ceil(sqrt(sqrt(A036689(n+1)-2)))` -/
def P2649670041598821894.Spec : Prop :=
  ∀ n, P2649670041598821894.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P12996395493224307149

`ceil(sqrt(sqrt(A049001(n+1)-2)))`
-/

namespace A166127.P12996395493224307149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A049001 (n + 1) - 2 : ℝ))⌉

end

end A166127.P12996395493224307149

namespace A166127

/-- `ceil(sqrt(sqrt(A049001(n+1)-2)))` -/
def P12996395493224307149.Spec : Prop :=
  ∀ n, P12996395493224307149.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P8264768049759047928

`(A000006(n+1)+1)%(n+2)`
-/

namespace A166127.P8264768049759047928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000006 (n + 1) + 1) (n + 2 : ℤ)

end

end A166127.P8264768049759047928

namespace A166127

/-- `(A000006(n+1)+1)%(n+2)` -/
def P8264768049759047928.Spec : Prop :=
  ∀ n, P8264768049759047928.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P17589381225257225908

`ceil(sqrt(xor(1, A000040(n+1)-1)))`
-/

namespace A166127.P17589381225257225908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.xor 1 (A000040 (n + 1) - 1) : ℝ)⌉

end

end A166127.P17589381225257225908

namespace A166127

/-- `ceil(sqrt(xor(1, A000040(n+1)-1)))` -/
def P17589381225257225908.Spec : Prop :=
  ∀ n, P17589381225257225908.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P13311068583003707188

`(floor(sqrt(A006093(n+1)))+1)%(n+2)`
-/

namespace A166127.P13311068583003707188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A006093 (n + 1)) + 1) (n + 2 : ℤ)

end

end A166127.P13311068583003707188

namespace A166127

/-- `(floor(sqrt(A006093(n+1)))+1)%(n+2)` -/
def P13311068583003707188.Spec : Prop :=
  ∀ n, P13311068583003707188.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P2336512202016467747

`A158388(n)+A000006(n+1)`
-/

namespace A166127.P2336512202016467747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A000006 (n + 1)

end

end A166127.P2336512202016467747

namespace A166127

/-- `A158388(n)+A000006(n+1)` -/
def P2336512202016467747.Spec : Prop :=
  ∀ n, P2336512202016467747.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P8490922513356871889

`A104103(n+1)-A000038(n)`
-/

namespace A166127.P8490922513356871889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) - A000038 n

end

end A166127.P8490922513356871889

namespace A166127

/-- `A104103(n+1)-A000038(n)` -/
def P8490922513356871889.Spec : Prop :=
  ∀ n, P8490922513356871889.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P14438152948228816058

`A057427(n)*A104103(n+1)`
-/

namespace A166127.P14438152948228816058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A104103 (n + 1)

end

end A166127.P14438152948228816058

namespace A166127

/-- `A057427(n)*A104103(n+1)` -/
def P14438152948228816058.Spec : Prop :=
  ∀ n, P14438152948228816058.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P7091302522017252220

`and(A057428(n), A104103(n+1))`
-/

namespace A166127.P7091302522017252220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A104103 (n + 1))

end

end A166127.P7091302522017252220

namespace A166127

/-- `and(A057428(n), A104103(n+1))` -/
def P7091302522017252220.Spec : Prop :=
  ∀ n, P7091302522017252220.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P3791292772719739235

`A000006(n+1)-A153881(n+1)`
-/

namespace A166127.P3791292772719739235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) - A153881 (n + 1)

end

end A166127.P3791292772719739235

namespace A166127

/-- `A000006(n+1)-A153881(n+1)` -/
def P3791292772719739235.Spec : Prop :=
  ∀ n, P3791292772719739235.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P1939986657799848048

`A055670(n+1)-A112045(n+1)`
-/

namespace A166127.P1939986657799848048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - A112045 (n + 1)

end

end A166127.P1939986657799848048

namespace A166127

/-- `A055670(n+1)-A112045(n+1)` -/
def P1939986657799848048.Spec : Prop :=
  ∀ n, P1939986657799848048.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P4307241316185747584

`A114637(n+1)-A103355(n+1)`
-/

namespace A166127.P4307241316185747584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) - A103355 (n + 1)

end

end A166127.P4307241316185747584

namespace A166127

/-- `A114637(n+1)-A103355(n+1)` -/
def P4307241316185747584.Spec : Prop :=
  ∀ n, P4307241316185747584.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P10149844544227194320

`and(A104103(n+1), A112714(n+1))`
-/

namespace A166127.P10149844544227194320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104103 (n + 1)) (A112714 (n + 1))

end

end A166127.P10149844544227194320

namespace A166127

/-- `and(A104103(n+1), A112714(n+1))` -/
def P10149844544227194320.Spec : Prop :=
  ∀ n, P10149844544227194320.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P16732699025378140526

`and(A104103(n+1), A153881(n+1))`
-/

namespace A166127.P16732699025378140526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104103 (n + 1)) (A153881 (n + 1))

end

end A166127.P16732699025378140526

namespace A166127

/-- `and(A104103(n+1), A153881(n+1))` -/
def P16732699025378140526.Spec : Prop :=
  ∀ n, P16732699025378140526.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P9671265100916947202

`(A161188(n+1)-n)*A057427(n)`
-/

namespace A166127.P9671265100916947202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161188 (n + 1) - (n : ℤ)) * A057427 n

end

end A166127.P9671265100916947202

namespace A166127

/-- `(A161188(n+1)-n)*A057427(n)` -/
def P9671265100916947202.Spec : Prop :=
  ∀ n, P9671265100916947202.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P10995867467012906328

`ceil(sqrt(A000040(n+1)%(A018252(n+1)^9)))`
-/

namespace A166127.P10995867467012906328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.tmod (A000040 (n + 1)) (A018252 (n + 1) ^ 9) : ℝ)⌉

end

end A166127.P10995867467012906328

namespace A166127

/-- `ceil(sqrt(A000040(n+1)%(A018252(n+1)^9)))` -/
def P10995867467012906328.Spec : Prop :=
  ∀ n, P10995867467012906328.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P3139947547330646955

`A000006(n+1)+A055670(n+1)-A000040(n+1)`
-/

namespace A166127.P3139947547330646955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) + (A055670 (n + 1) - A000040 (n + 1))

end

end A166127.P3139947547330646955

namespace A166127

/-- `A000006(n+1)+A055670(n+1)-A000040(n+1)` -/
def P3139947547330646955.Spec : Prop :=
  ∀ n, P3139947547330646955.a n = A166127 (n + 1)

end A166127

/-! ## A166127.P8408451847440334612

`A000006(n+1)-A008836(A189172(n+3))`
-/

namespace A166127.P8408451847440334612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) - A008836 (A189172 (n + 3)).toNat

end

end A166127.P8408451847440334612

namespace A166127

/-- `A000006(n+1)-A008836(A189172(n+3))` -/
def P8408451847440334612.Spec : Prop :=
  ∀ n, P8408451847440334612.a n = A166127 (n + 1)

end A166127

/-!
# A166132: a(n) = 1 + (4*9^n - 9*4^n) / 5.

The programs for A166132, the canonical program `A166132.P9700897705273610945` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166132 has offset 1).

The definition of A166132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166132.P9700897705273610945

`1+(4*9^(n+1)-9*4^(n+1))/5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166132

/-- `1+(4*9^(n+1)-9*4^(n+1))/5` -/
def P9700897705273610945.Spec : Prop :=
  ∀ n, P9700897705273610945.a n = (A166132 (n + 1) : ℚ)

end A166132

/-! ## A166132.P10336086123889237757

`∑[13*a(n-1)-36*a(n-2)]` with `a(0)=1, a(1)=36`
-/

namespace A166132.P10336086123889237757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 36] fun n f1 =>
  13 * f1 (n - 1) - 36 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166132.P10336086123889237757

namespace A166132

/-- `∑[13*a(n-1)-36*a(n-2)]` -/
def P10336086123889237757.Spec : Prop :=
  ∀ n, P10336086123889237757.a n = A166132 (n + 1)

end A166132

/-! ## A166132.P12101488439520649123

`record[A091004(n)-A140253(n)]`
-/

namespace A166132.P12101488439520649123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 n - A140253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166132.P12101488439520649123

namespace A166132

/-- `record[A091004(n)-A140253(n)]` -/
def P12101488439520649123.Spec : Prop :=
  ∀ n, P12101488439520649123.a n = A166132 (n + 1)

end A166132

/-!
# A166133: After initial 1,2,4, a(n+1) is the smallest divisor of a(n)^2-1 that has not yet appeared in the sequence.

The programs for A166133, there is no canonical definition to state claims against.
-/

/-! ## A166133.P5895672079484748705

`sqrt(A256557(n+1)+1)`
-/

namespace A166133.P5895672079484748705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256557 (n + 1) + 1 : ℝ)

end

end A166133.P5895672079484748705

/-! ## A166133.P13094357000655179707

`A256541(n)+a(n-1)` with `a(0)=1`
-/

namespace A166133.P13094357000655179707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256541 n + a (n - 1)

end

end A166133.P13094357000655179707

/-! ## A166133.P13623266972803786438

`∑[A256541(A028310(n))]`
-/

namespace A166133.P13623266972803786438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166133.P13623266972803786438

/-! ## A166133.P18120515112882927479

`∑[A256541(A000007(n)+n)]`
-/

namespace A166133.P18120515112882927479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166133.P18120515112882927479

/-! ## A166133.P10471184690452466936

`∑[A256541(or(n, A322586(n+1)))]`
-/

namespace A166133.P10471184690452466936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (Int.lor (n : ℤ) (A322586 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166133.P10471184690452466936

/-! ## A166133.P15455008284332548533

`A256564(n+1)*A256578(n+1)`
-/

namespace A166133.P15455008284332548533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256564 (n + 1) * A256578 (n + 1)

end

end A166133.P15455008284332548533

/-! ## A166133.P17587191258700209763

`∑[A256541(A322586(2*n+1)+n)]`
-/

namespace A166133.P17587191258700209763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (A322586 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166133.P17587191258700209763

/-! ## A166133.P9528744857064837663

`∑[A256541(n+1)]+1-A256541(n+1)`
-/

namespace A166133.P9528744857064837663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A256541 (n + 1))

end

end A166133.P9528744857064837663

/-! ## A166133.P9041050707858460732

`A137734(A256557(n+1))`
-/

namespace A166133.P9041050707858460732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A256557 (n + 1)).toNat

end

end A166133.P9041050707858460732

/-! ## A166133.P4619208115386075916

`A000196(A256557(n+1)+1)`
-/

namespace A166133.P4619208115386075916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A256557 (n + 1) + 1).toNat

end

end A166133.P4619208115386075916

/-!
# A166134: a(n+1) is the smallest divisor of a(n)^2+1 that does not yet appear in the sequence, with a(1) = 1.

The programs for A166134, there is no canonical definition to state claims against.
-/

/-! ## A166134.P6608489166905983959

`A088444(a(n-1)²+1)` with `a(0)=1`
-/

namespace A166134.P6608489166905983959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088444 (a (n - 1) ^ 2 + 1).toNat

end

end A166134.P6608489166905983959

/-! ## A166134.P11352878531123558411

`A088444(A000290(a(n-1))+1)` with `a(0)=1`
-/

namespace A166134.P11352878531123558411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088444 (A000290 (a (n - 1)).toNat + 1).toNat

end

end A166134.P11352878531123558411

/-! ## A166134.P377844150482868026

`A051444(A259036(a(n-1))+1)` with `a(0)=1`
-/

namespace A166134.P377844150482868026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051444 (A259036 (a (n - 1)).toNat + 1).toNat

end

end A166134.P377844150482868026

/-!
# A166135: Number of possible paths to each node that lies along the edge of a cut 4-nomial tree, that is rooted one unit from the cut.

The programs for A166135, there is no canonical definition to state claims against.
-/

/-! ## A166135.P4769677563602692369

`A187430(n)+A055113(n+2)`
-/

namespace A166135.P4769677563602692369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 n + A055113 (n + 2)

end

end A166135.P4769677563602692369

/-! ## A166135.P3948996911587763217

`A187430(n+1)+A187430(n)-A296619(n)`
-/

namespace A166135.P3948996911587763217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 (n + 1) + (A187430 n - A296619 n)

end

end A166135.P3948996911587763217

/-! ## A166135.P5906802746830686916

`A000108(n+1)+A187430(n)-A111160(n+1)`
-/

namespace A166135.P5906802746830686916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A187430 n - A111160 (n + 1))

end

end A166135.P5906802746830686916

/-! ## A166135.P2662241327749323330

`A187430(n)+A185286(n²+1)`
-/

namespace A166135.P2662241327749323330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187430 n + A185286 (n ^ 2 + 1)

end

end A166135.P2662241327749323330

/-! ## A166135.P4288499718801204346

`A185286(n²)+A055113(n+2)`
-/

namespace A166135.P4288499718801204346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185286 (n ^ 2) + A055113 (n + 2)

end

end A166135.P4288499718801204346

/-!
# A166136: a(n) = n*(n+3)/2 + 7.

The programs for A166136, the canonical program `A166136.P13002216742162120617` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166136 has offset 1).

The definition of A166136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+4)/2+7` (program `A166136.P12581919153656739400`, by `A166136.P12581919153656739400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166136.P12581919153656739400

`(n+1)*(n+4)/2+7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166136.P12581919153656739400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 4) : ℚ) / 2 + 7

end

end A166136.P12581919153656739400

namespace A166136

/-- `(n+1)*(n+4)/2+7` -/
def P12581919153656739400.Spec : Prop :=
  ∀ n, P12581919153656739400.a n = (A166136 (n + 1) : ℚ)

theorem P12581919153656739400.correct : P12581919153656739400.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166136, Nat.add_sub_cancel, A166136.P12581919153656739400.a, A166136.P13002216742162120617.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166136, Nat.add_sub_cancel, A166136.P12581919153656739400.a, A166136.P13002216742162120617.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166136

/-! ## A166136.P3709443864227967399

`record[a(n-1)+n]` with `a(0)=9, a(1)=7`
-/

namespace A166136.P3709443864227967399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 7] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166136.P3709443864227967399

namespace A166136

/-- `record[a(n-1)+n]` -/
def P3709443864227967399.Spec : Prop :=
  ∀ n, (P3709443864227967399.a n : ℤ) = A166136 (n + 1)

end A166136

/-! ## A166136.P503024911773946871

`abs(n-3-C(n+4, 2))`
-/

namespace A166136.P503024911773946871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 3 - (Nat.choose (n + 4) 2 : ℤ)|

end

end A166136.P503024911773946871

namespace A166136

/-- `abs(n-3-C(n+4, 2))` -/
def P503024911773946871.Spec : Prop :=
  ∀ n, P503024911773946871.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P6111233073889559136

`abs(a(n-1)+2+n)` with `a(0)=9`
-/

namespace A166136.P6111233073889559136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 2 + n

end

end A166136.P6111233073889559136

namespace A166136

/-- `abs(a(n-1)+2+n)` -/
def P6111233073889559136.Spec : Prop :=
  ∀ n, (P6111233073889559136.a n : ℤ) = A166136 (n + 1)

end A166136

/-! ## A166136.P9468642921151938137

`floor(a(n-1)+2+n)` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A166136.P9468642921151938137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 2 + n

end

end A166136.P9468642921151938137

namespace A166136

/-- `floor(a(n-1)+2+n)` -/
def P9468642921151938137.Spec : Prop :=
  ∀ n, (P9468642921151938137.a n : ℤ) = A166136 (n + 1)

end A166136

/-! ## A166136.P3040122784139420914

`ceil(a(n-1)+2+n)` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A166136.P3040122784139420914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 2 + n

end

end A166136.P3040122784139420914

namespace A166136

/-- `ceil(a(n-1)+2+n)` -/
def P3040122784139420914.Spec : Prop :=
  ∀ n, (P3040122784139420914.a n : ℤ) = A166136 (n + 1)

end A166136

/-! ## A166136.P13002216742162120617

`round(a(n-1)+2+n)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166136

/-- `round(a(n-1)+2+n)` -/
def P13002216742162120617.Spec : Prop :=
  ∀ n, (P13002216742162120617.a n : ℤ) = A166136 (n + 1)

theorem P13002216742162120617.correct : P13002216742162120617.Spec := by
  intro n
  simp only [A166136, Nat.add_sub_cancel]

end A166136

/-! ## A166136.P16181284614244549081

`Δ[C(n+3, 3)+6*n]`
-/

namespace A166136.P16181284614244549081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166136.P16181284614244549081

namespace A166136

/-- `Δ[C(n+3, 3)+6*n]` -/
def P16181284614244549081.Spec : Prop :=
  ∀ n, P16181284614244549081.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P412216436097654681

`record[n-(3-a(n-1))]` with `a(0)=9`
-/

namespace A166136.P412216436097654681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  (n : ℤ) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166136.P412216436097654681

namespace A166136

/-- `record[n-(3-a(n-1))]` -/
def P412216436097654681.Spec : Prop :=
  ∀ n, P412216436097654681.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P6760136213184936638

`∑[ceil(acot(n))^3+n+1]`
-/

namespace A166136.P6760136213184936638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 3 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166136.P6760136213184936638

namespace A166136

/-- `∑[ceil(acot(n))^3+n+1]` -/
def P6760136213184936638.Spec : Prop :=
  ∀ n, P6760136213184936638.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P8336652050342440125

`∑[2*a(n-1)-n]` with `a(0)=9, a(1)=3`
-/

namespace A166136.P8336652050342440125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 3] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166136.P8336652050342440125

namespace A166136

/-- `∑[2*a(n-1)-n]` -/
def P8336652050342440125.Spec : Prop :=
  ∀ n, P8336652050342440125.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P6739080211210293520

`∑[floor(a(n-1)²/n)]` with `a(0)=9, a(1)=3`
-/

namespace A166136.P6739080211210293520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 3] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166136.P6739080211210293520

namespace A166136

/-- `∑[floor(a(n-1)²/n)]` -/
def P6739080211210293520.Spec : Prop :=
  ∀ n, P6739080211210293520.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P4128059190799939616

`record[C(n+1, 2)-3*(n-3)]`
-/

namespace A166136.P4128059190799939616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - 3 * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166136.P4128059190799939616

namespace A166136

/-- `record[C(n+1, 2)-3*(n-3)]` -/
def P4128059190799939616.Spec : Prop :=
  ∀ n, P4128059190799939616.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P7149701186462798438

`floor(∑[n+1]-cot(3)+n+1)`
-/

namespace A166136.P7149701186462798438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (3 : ℝ) + (n + 1 : ℝ)⌋

end

end A166136.P7149701186462798438

namespace A166136

/-- `floor(∑[n+1]-cot(3)+n+1)` -/
def P7149701186462798438.Spec : Prop :=
  ∀ n, P7149701186462798438.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P7336796173676516733

`round(∑[n+1]-cot(3)+n+1)`
-/

namespace A166136.P7336796173676516733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (3 : ℝ) + (n + 1 : ℝ))

end

end A166136.P7336796173676516733

namespace A166136

/-- `round(∑[n+1]-cot(3)+n+1)` -/
def P7336796173676516733.Spec : Prop :=
  ∀ n, P7336796173676516733.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P17628452153892866103

`abs(n-2-2*n-a(n-1))` with `a(0)=9`
-/

namespace A166136.P17628452153892866103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |(n : ℤ) - 2 - (2 * n : ℤ) - a (n - 1)|

end

end A166136.P17628452153892866103

namespace A166136

/-- `abs(n-2-2*n-a(n-1))` -/
def P17628452153892866103.Spec : Prop :=
  ∀ n, P17628452153892866103.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P17770756934074256260

`(a(n-1)+n+2)%(n+3)²` with `a(0)=9`
-/

namespace A166136.P17770756934074256260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + (n + 2)) % (n + 3) ^ 2

end

end A166136.P17770756934074256260

namespace A166136

/-- `(a(n-1)+n+2)%(n+3)²` -/
def P17770756934074256260.Spec : Prop :=
  ∀ n, (P17770756934074256260.a n : ℤ) = A166136 (n + 1)

end A166136

/-! ## A166136.P890861244651139429

`∑[a(n-1)-(n-a(n-1))]` with `a(0)=9, a(1)=3`
-/

namespace A166136.P890861244651139429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 3] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166136.P890861244651139429

namespace A166136

/-- `∑[a(n-1)-(n-a(n-1))]` -/
def P890861244651139429.Spec : Prop :=
  ∀ n, P890861244651139429.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P8067954681197902587

`Δ[∑[A167487(n)]-n]`
-/

namespace A166136.P8067954681197902587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166136.P8067954681197902587

namespace A166136

/-- `Δ[∑[A167487(n)]-n]` -/
def P8067954681197902587.Spec : Prop :=
  ∀ n, P8067954681197902587.a n = A166136 (n + 1)

end A166136

/-! ## A166136.P13871786484573759258

`(A048058(n+2)+1)/2`
-/

namespace A166136.P13871786484573759258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048058 (n + 2) + 1 : ℚ) / 2

end

end A166136.P13871786484573759258

namespace A166136

/-- `(A048058(n+2)+1)/2` -/
def P13871786484573759258.Spec : Prop :=
  ∀ n, P13871786484573759258.a n = (A166136 (n + 1) : ℚ)

end A166136

/-!
# A166137: a(n) = 5*n*(n+1)/2 - 4.

The programs for A166137, the canonical program `A166137.P17018116611103915253` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166137 has offset 1).

The definition of A166137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)*(n+2)/2-4` (program `A166137.P14448515281467916834`, by `A166137.P14448515281467916834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166137.P17018116611103915253

`a(n-1)+5*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166137

/-- `a(n-1)+5*(n+1)` -/
def P17018116611103915253.Spec : Prop :=
  ∀ n, (P17018116611103915253.a n : ℤ) = A166137 (n + 1)

theorem P17018116611103915253.correct : P17018116611103915253.Spec := by
  intro n
  simp only [A166137, Nat.add_sub_cancel]

end A166137

/-! ## A166137.P14448515281467916834

`5*(n+1)*(n+2)/2-4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166137.P14448515281467916834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) * (n + 2) : ℚ) / 2 - 4

end

end A166137.P14448515281467916834

namespace A166137

/-- `5*(n+1)*(n+2)/2-4` -/
def P14448515281467916834.Spec : Prop :=
  ∀ n, P14448515281467916834.a n = (A166137 (n + 1) : ℚ)

theorem P14448515281467916834.correct : P14448515281467916834.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166137, Nat.add_sub_cancel, A166137.P14448515281467916834.a, A166137.P17018116611103915253.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166137, Nat.add_sub_cancel, A166137.P14448515281467916834.a, A166137.P17018116611103915253.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166137

/-! ## A166137.P1040021944389966594

`∑[a(n-1)+5]` with `a(0)=1, a(1)=10`
-/

namespace A166137.P1040021944389966594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166137.P1040021944389966594

namespace A166137

/-- `∑[a(n-1)+5]` -/
def P1040021944389966594.Spec : Prop :=
  ∀ n, (P1040021944389966594.a n : ℤ) = A166137 (n + 1)

end A166137

/-! ## A166137.P10960244936543602296

`∑[ogf((1+8x-4x^2)/(1-2x+x^2))]`
-/

namespace A166137.P10960244936543602296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166137.P10960244936543602296

namespace A166137

/-- `∑[ogf((1+8x-4x^2)/(1-2x+x^2))]` -/
def P10960244936543602296.Spec : Prop :=
  ∀ n, P10960244936543602296.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P6805563596833294652

`ogf((1+8x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A166137.P6805563596833294652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -4] [1, -3, 3, -1] n

end

end A166137.P6805563596833294652

namespace A166137

/-- `ogf((1+8x-4x^2)/(1-3x+3x^2-x^3))` -/
def P6805563596833294652.Spec : Prop :=
  ∀ n, P6805563596833294652.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P2433094875966786093

`abs(4-5*C(n+2, 2))`
-/

namespace A166137.P2433094875966786093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (5 * Nat.choose (n + 2) 2 : ℤ)|

end

end A166137.P2433094875966786093

namespace A166137

/-- `abs(4-5*C(n+2, 2))` -/
def P2433094875966786093.Spec : Prop :=
  ∀ n, P2433094875966786093.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P5299972658022223499

`record[5*(C(n, 2)-n)+1]`
-/

namespace A166137.P5299972658022223499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.choose n 2 : ℤ) - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166137.P5299972658022223499

namespace A166137

/-- `record[5*(C(n, 2)-n)+1]` -/
def P5299972658022223499.Spec : Prop :=
  ∀ n, P5299972658022223499.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P3652619301747942978

`∑[(n+1)*5%(n+2)²]`
-/

namespace A166137.P3652619301747942978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (5 % (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166137.P3652619301747942978

namespace A166137

/-- `∑[(n+1)*5%(n+2)²]` -/
def P3652619301747942978.Spec : Prop :=
  ∀ n, (P3652619301747942978.a n : ℤ) = A166137 (n + 1)

end A166137

/-! ## A166137.P14048461639518149052

`∑[∪[5*(n+2), (5^n)²]]`
-/

namespace A166137.P14048461639518149052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166137.P14048461639518149052

namespace A166137

/-- `∑[∪[5*(n+2), (5^n)²]]` -/
def P14048461639518149052.Spec : Prop :=
  ∀ n, (P14048461639518149052.a n : ℤ) = A166137 (n + 1)

end A166137

/-! ## A166137.P12576884260219724805

`∑[(n+1)*(4%(n+4)+1)]`
-/

namespace A166137.P12576884260219724805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (4 % (n + 4) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166137.P12576884260219724805

namespace A166137

/-- `∑[(n+1)*(4%(n+4)+1)]` -/
def P12576884260219724805.Spec : Prop :=
  ∀ n, (P12576884260219724805.a n : ℤ) = A166137 (n + 1)

end A166137

/-! ## A166137.P7715355807642407838

`(5*(∑[n]+n)+1)^ceil(abs(sin(n)))`
-/

namespace A166137.P7715355807642407838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1 : ℕ) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A166137.P7715355807642407838

namespace A166137

/-- `(5*(∑[n]+n)+1)^ceil(abs(sin(n)))` -/
def P7715355807642407838.Spec : Prop :=
  ∀ n, P7715355807642407838.a n = (A166137 (n + 1) : ℚ)

end A166137

/-! ## A166137.P15501156906576385521

`(C(n+2, 2)/(n+3)+2*n)*(n+3)`
-/

namespace A166137.P15501156906576385521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 : ℚ) / (n + 3 : ℚ) + (2 * n : ℚ)) * (n + 3 : ℚ)

end

end A166137.P15501156906576385521

namespace A166137

/-- `(C(n+2, 2)/(n+3)+2*n)*(n+3)` -/
def P15501156906576385521.Spec : Prop :=
  ∀ n, P15501156906576385521.a n = (A166137 (n + 1) : ℚ)

end A166137

/-! ## A166137.P10479402547740461250

`(A166150(n+1)+1)/2`
-/

namespace A166137.P10479402547740461250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166150 (n + 1) + 1 : ℚ) / 2

end

end A166137.P10479402547740461250

namespace A166137

/-- `(A166150(n+1)+1)/2` -/
def P10479402547740461250.Spec : Prop :=
  ∀ n, P10479402547740461250.a n = (A166137 (n + 1) : ℚ)

end A166137

/-! ## A166137.P4209868046957131652

`abs(4-5*A000217(n+1))`
-/

namespace A166137.P4209868046957131652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 5 * A000217 (n + 1)|

end

end A166137.P4209868046957131652

namespace A166137

/-- `abs(4-5*A000217(n+1))` -/
def P4209868046957131652.Spec : Prop :=
  ∀ n, P4209868046957131652.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P6762363184996282264

`A016898(n)%A064226(n)`
-/

namespace A166137.P6762363184996282264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016898 n) (A064226 n)

end

end A166137.P6762363184996282264

namespace A166137

/-- `A016898(n)%A064226(n)` -/
def P6762363184996282264.Spec : Prop :=
  ∀ n, P6762363184996282264.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P7488113148064280079

`∑[record[A116547(n+3)]]`
-/

namespace A166137.P7488113148064280079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116547 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166137.P7488113148064280079

namespace A166137

/-- `∑[record[A116547(n+3)]]` -/
def P7488113148064280079.Spec : Prop :=
  ∀ n, P7488113148064280079.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P5049921149390301970

`A016861(∑[n]+n)`
-/

namespace A166137.P5049921149390301970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166137.P5049921149390301970

namespace A166137

/-- `A016861(∑[n]+n)` -/
def P5049921149390301970.Spec : Prop :=
  ∀ n, P5049921149390301970.a n = A166137 (n + 1)

end A166137

/-! ## A166137.P9811387341556628948

`A131063(∑[n+3])`
-/

namespace A166137.P9811387341556628948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166137.P9811387341556628948

namespace A166137

/-- `A131063(∑[n+3])` -/
def P9811387341556628948.Spec : Prop :=
  ∀ n, P9811387341556628948.a n = A166137 (n + 1)

end A166137

/-!
# A166138: Trisection A022998(3n+1).

The programs for A166138, the canonical program `A166138.P11177117645269563630` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166138 has offset 0).

The definition of A166138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022998(3*n+1)` (program `A166138.P11177117645269563630`, by `A166138.P11177117645269563630.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166138.P7868422552695956244

`(3*n+1)*(3-(-1)^n)/2`
-/

namespace A166138.P7868422552695956244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1 : ℤ) * (3 - (-1) ^ n) : ℚ) / 2

end

end A166138.P7868422552695956244

namespace A166138

/-- `(3*n+1)*(3-(-1)^n)/2` -/
def P7868422552695956244.Spec : Prop :=
  ∀ n, P7868422552695956244.a n = (A166138 n : ℚ)

end A166138

/-! ## A166138.P17874054031315170795

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=7, a(3)=20`
-/

namespace A166138.P17874054031315170795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 7, 20] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A166138.P17874054031315170795

namespace A166138

/-- `2*a(n-2)-a(n-4)` -/
def P17874054031315170795.Spec : Prop :=
  ∀ n, P17874054031315170795.a n = A166138 n

end A166138

/-! ## A166138.P11177117645269563630

`A022998(3*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166138

/-- `A022998(3*n+1)` -/
def P11177117645269563630.Spec : Prop :=
  ∀ n, P11177117645269563630.a n = A166138 n

theorem P11177117645269563630.correct : P11177117645269563630.Spec := by
  intro n
  simp only [A166138]

end A166138

/-! ## A166138.P7244551571514997153

`(3*n+1)*(n%2+1)`
-/

namespace A166138.P7244551571514997153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * (n % 2 + 1)

end

end A166138.P7244551571514997153

namespace A166138

/-- `(3*n+1)*(n%2+1)` -/
def P7244551571514997153.Spec : Prop :=
  ∀ n, (P7244551571514997153.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P16210319782172485007

`(3*n+1)*gcd(2, n+1)`
-/

namespace A166138.P16210319782172485007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * Nat.gcd 2 (n + 1)

end

end A166138.P16210319782172485007

namespace A166138

/-- `(3*n+1)*gcd(2, n+1)` -/
def P16210319782172485007.Spec : Prop :=
  ∀ n, (P16210319782172485007.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P18127923046807752443

`∑[∑[ogf((1+8x+5x^2+4x^3)/(1+2x+x^2))]]`
-/

namespace A166138.P18127923046807752443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 5, 4] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166138.P18127923046807752443

namespace A166138

/-- `∑[∑[ogf((1+8x+5x^2+4x^3)/(1+2x+x^2))]]` -/
def P18127923046807752443.Spec : Prop :=
  ∀ n, P18127923046807752443.a n = A166138 n

end A166138

/-! ## A166138.P17842693356310195026

`(and(1, n)+1)*(2*n+1+n)`
-/

namespace A166138.P17842693356310195026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * (2 * n + 1 + n)

end

end A166138.P17842693356310195026

namespace A166138

/-- `(and(1, n)+1)*(2*n+1+n)` -/
def P17842693356310195026.Spec : Prop :=
  ∀ n, (P17842693356310195026.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P8972589930838577124

`(2*n+1+n)*lcm(2, n+2)/(n+2)`
-/

namespace A166138.P8972589930838577124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n : ℚ) * ((Nat.lcm 2 (n + 2) : ℚ) / (n + 2 : ℚ))

end

end A166138.P8972589930838577124

namespace A166138

/-- `(2*n+1+n)*lcm(2, n+2)/(n+2)` -/
def P8972589930838577124.Spec : Prop :=
  ∀ n, P8972589930838577124.a n = (A166138 n : ℚ)

end A166138

/-! ## A166138.P1364114682421401276

`Δ[A032766(n)²]`
-/

namespace A166138.P1364114682421401276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166138.P1364114682421401276

namespace A166138

/-- `Δ[A032766(n)²]` -/
def P1364114682421401276.Spec : Prop :=
  ∀ n, P1364114682421401276.a n = A166138 n

end A166138

/-! ## A166138.P1759274820454445256

`A165367(n)+A165351(n)`
-/

namespace A166138.P1759274820454445256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n + A165351 n

end

end A166138.P1759274820454445256

namespace A166138

/-- `A165367(n)+A165351(n)` -/
def P1759274820454445256.Spec : Prop :=
  ∀ n, P1759274820454445256.a n = A166138 n

end A166138

/-! ## A166138.P4745181956913756152

`A000034(n)*A016777(n)`
-/

namespace A166138.P4745181956913756152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A016777 n

end

end A166138.P4745181956913756152

namespace A166138

/-- `A000034(n)*A016777(n)` -/
def P4745181956913756152.Spec : Prop :=
  ∀ n, P4745181956913756152.a n = A166138 n

end A166138

/-! ## A166138.P11354652288960344928

`A010685(n)*A165355(n)`
-/

namespace A166138.P11354652288960344928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A165355 n

end

end A166138.P11354652288960344928

namespace A166138

/-- `A010685(n)*A165355(n)` -/
def P11354652288960344928.Spec : Prop :=
  ∀ n, P11354652288960344928.a n = A166138 n

end A166138

/-! ## A166138.P1010520851927557543

`gcd(A011199(n), A016778(n))`
-/

namespace A166138.P1010520851927557543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011199 n) (A016778 n)

end

end A166138.P1010520851927557543

namespace A166138

/-- `gcd(A011199(n), A016778(n))` -/
def P1010520851927557543.Spec : Prop :=
  ∀ n, (P1010520851927557543.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P17131908591019611079

`gcd(A011245(n), A016933(n))`
-/

namespace A166138.P17131908591019611079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011245 n) (A016933 n)

end

end A166138.P17131908591019611079

namespace A166138

/-- `gcd(A011245(n), A016933(n))` -/
def P17131908591019611079.Spec : Prop :=
  ∀ n, (P17131908591019611079.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P8183893807367645652

`gcd(A016779(n), A033580(n))`
-/

namespace A166138.P8183893807367645652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016779 n) (A033580 n)

end

end A166138.P8183893807367645652

namespace A166138

/-- `gcd(A016779(n), A033580(n))` -/
def P8183893807367645652.Spec : Prop :=
  ∀ n, (P8183893807367645652.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P8626484129818418335

`gcd(A016780(n), A045946(n))`
-/

namespace A166138.P8626484129818418335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016780 n) (A045946 n)

end

end A166138.P8626484129818418335

namespace A166138

/-- `gcd(A016780(n), A045946(n))` -/
def P8626484129818418335.Spec : Prop :=
  ∀ n, (P8626484129818418335.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P6777058344672401794

`gcd(A016783(n), A087887(n))`
-/

namespace A166138.P6777058344672401794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016783 n) (A087887 n)

end

end A166138.P6777058344672401794

namespace A166138

/-- `gcd(A016783(n), A087887(n))` -/
def P6777058344672401794.Spec : Prop :=
  ∀ n, (P6777058344672401794.a n : ℤ) = A166138 n

end A166138

/-! ## A166138.P5922997781770652254

`A301451(n+1)+A084056(n)`
-/

namespace A166138.P5922997781770652254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1) + A084056 n

end

end A166138.P5922997781770652254

namespace A166138

/-- `A301451(n+1)+A084056(n)` -/
def P5922997781770652254.Spec : Prop :=
  ∀ n, P5922997781770652254.a n = A166138 n

end A166138

/-! ## A166138.P14294933750392848709

`A143988(n+1)-A166304(n)`
-/

namespace A166138.P14294933750392848709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) - A166304 n

end

end A166138.P14294933750392848709

namespace A166138

/-- `A143988(n+1)-A166304(n)` -/
def P14294933750392848709.Spec : Prop :=
  ∀ n, P14294933750392848709.a n = A166138 n

end A166138

/-! ## A166138.P2923785592228754799

`A063097(n+1)-A280166(n)`
-/

namespace A166138.P2923785592228754799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) - A280166 n

end

end A166138.P2923785592228754799

namespace A166138

/-- `A063097(n+1)-A280166(n)` -/
def P2923785592228754799.Spec : Prop :=
  ∀ n, P2923785592228754799.a n = A166138 n

end A166138

/-!
# A166139: Triangle T(n,k) read by rows. A080305(A126988(n,k)) if k|n, 0 otherwise.

The programs for A166139, the canonical program `A166139.P11029997221570494400` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166139 has offset 1).

The definition of A166139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166139.P11029997221570494400

`A051731(n+1)*A080305(A010766(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166139

/-- `A051731(n+1)*A080305(A010766(n+1))` -/
def P11029997221570494400.Spec : Prop :=
  ∀ n, P11029997221570494400.a n = A166139 (n + 1)

theorem P11029997221570494400.correct : P11029997221570494400.Spec := by
  intro n
  simp only [A166139, Nat.add_sub_cancel]

end A166139

/-! ## A166139.P14257969035268694878

`A051731(n+1)*A080305(A049834(n+1))`
-/

namespace A166139.P14257969035268694878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080305 (A049834 (n + 1)).toNat

end

end A166139.P14257969035268694878

namespace A166139

/-- `A051731(n+1)*A080305(A049834(n+1))` -/
def P14257969035268694878.Spec : Prop :=
  ∀ n, P14257969035268694878.a n = A166139 (n + 1)

end A166139

/-! ## A166139.P2010636676895536485

`A051731(n+1)*A080305(A051537(n+1))`
-/

namespace A166139.P2010636676895536485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080305 (A051537 (n + 1)).toNat

end

end A166139.P2010636676895536485

namespace A166139

/-- `A051731(n+1)*A080305(A051537(n+1))` -/
def P2010636676895536485.Spec : Prop :=
  ∀ n, P2010636676895536485.a n = A166139 (n + 1)

end A166139

/-! ## A166139.P14452651076994053946

`A051731(n+1)*A080305(A054531(n+1))`
-/

namespace A166139.P14452651076994053946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080305 (A054531 (n + 1)).toNat

end

end A166139.P14452651076994053946

namespace A166139

/-- `A051731(n+1)*A080305(A054531(n+1))` -/
def P14452651076994053946.Spec : Prop :=
  ∀ n, P14452651076994053946.a n = A166139 (n + 1)

end A166139

/-! ## A166139.P4538784599476662980

`A051731(n+1)*A080305(A219158(n+1))`
-/

namespace A166139.P4538784599476662980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080305 (A219158 (n + 1)).toNat

end

end A166139.P4538784599476662980

namespace A166139

/-- `A051731(n+1)*A080305(A219158(n+1))` -/
def P4538784599476662980.Spec : Prop :=
  ∀ n, P4538784599476662980.a n = A166139 (n + 1)

end A166139

/-! ## A166139.P17239459187363982517

`A051731(n+1)*A080305(A234575(n+1))`
-/

namespace A166139.P17239459187363982517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080305 (A234575 (n + 1)).toNat

end

end A166139.P17239459187363982517

namespace A166139

/-- `A051731(n+1)*A080305(A234575(n+1))` -/
def P17239459187363982517.Spec : Prop :=
  ∀ n, P17239459187363982517.a n = A166139 (n + 1)

end A166139

/-! ## A166139.P10937176290487125300

`A126988(n+1)^A094497(A181117(n+1))`
-/

namespace A166139.P10937176290487125300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126988 (n + 1) : ℚ) ^ (A094497 (A181117 (n + 1)).toNat : ℤ)

end

end A166139.P10937176290487125300

namespace A166139

/-- `A126988(n+1)^A094497(A181117(n+1))` -/
def P10937176290487125300.Spec : Prop :=
  ∀ n, P10937176290487125300.a n = (A166139 (n + 1) : ℚ)

end A166139

/-!
# A166140: Product of the nonzero elements of the n-th row of A166139.

The programs for A166140, the canonical program `A166140.P17649384582351937107` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166140 has offset 1).

The definition of A166140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166140.P11206674355635207980

`∏{d}[n+1, A080305(#)]`
-/

namespace A166140.P11206674355635207980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A080305 d

end

end A166140.P11206674355635207980

namespace A166140

/-- `∏{d}[n+1, A080305(#)]` -/
def P11206674355635207980.Spec : Prop :=
  ∀ n, P11206674355635207980.a n = A166140 (n + 1)

end A166140

/-! ## A166140.P17649384582351937107

`lcm(∏{p}[n+1, #], A166142(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A166140

/-- `lcm(∏{p}[n+1, #], A166142(n+1))` -/
def P17649384582351937107.Spec : Prop :=
  ∀ n, (P17649384582351937107.a n : ℤ) = A166140 (n + 1)

theorem P17649384582351937107.correct : P17649384582351937107.Spec := by
  intro n
  simp only [A166140, Nat.add_sub_cancel]

end A166140

/-! ## A166140.P13455422325581796253

`∏{d}[n+1, ceil(#^-A008683(#))]`
-/

namespace A166140.P13455422325581796253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) ^ (-A008683 d : ℤ)⌉

end

end A166140.P13455422325581796253

namespace A166140

/-- `∏{d}[n+1, ceil(#^-A008683(#))]` -/
def P13455422325581796253.Spec : Prop :=
  ∀ n, P13455422325581796253.a n = A166140 (n + 1)

end A166140

/-! ## A166140.P4585604332757440012

`A014963(n+1)*A166142(n+1)`
-/

namespace A166140.P4585604332757440012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A166142 (n + 1)

end

end A166140.P4585604332757440012

namespace A166140

/-- `A014963(n+1)*A166142(n+1)` -/
def P4585604332757440012.Spec : Prop :=
  ∀ n, P4585604332757440012.a n = A166140 (n + 1)

end A166140

/-! ## A166140.P4056144918598486755

`A078599(n+1)/A166142(n+1)`
-/

namespace A166140.P4056144918598486755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078599 (n + 1) : ℚ) / (A166142 (n + 1) : ℚ)

end

end A166140.P4056144918598486755

namespace A166140

/-- `A078599(n+1)/A166142(n+1)` -/
def P4056144918598486755.Spec : Prop :=
  ∀ n, P4056144918598486755.a n = (A166140 (n + 1) : ℚ)

end A166140

/-! ## A166140.P748958616825261192

`lcm(A006530(n+1), A166142(n+1))`
-/

namespace A166140.P748958616825261192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 1)) (A166142 (n + 1))

end

end A166140.P748958616825261192

namespace A166140

/-- `lcm(A006530(n+1), A166142(n+1))` -/
def P748958616825261192.Spec : Prop :=
  ∀ n, (P748958616825261192.a n : ℤ) = A166140 (n + 1)

end A166140

/-! ## A166140.P1694182330486769151

`∏{p}[n+1, #]^A347447(∏{p}[n+1, #])`
-/

namespace A166140.P1694182330486769151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A347447 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

end

end A166140.P1694182330486769151

namespace A166140

/-- `∏{p}[n+1, #]^A347447(∏{p}[n+1, #])` -/
def P1694182330486769151.Spec : Prop :=
  ∀ n, P1694182330486769151.a n = (A166140 (n + 1) : ℚ)

end A166140

/-!
# A166141: Triangle T(n,k) read by rows. A080304(A126988).

The programs for A166141, there is no canonical definition to state claims against.
-/

/-! ## A166141.P5780437048413426109

`A051731(n+1)*A080304(A010766(n+1))`
-/

namespace A166141.P5780437048413426109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080304 (A010766 (n + 1)).toNat

end

end A166141.P5780437048413426109

/-! ## A166141.P5692150358181873407

`A051731(n+1)*A080304(A049834(n+1))`
-/

namespace A166141.P5692150358181873407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080304 (A049834 (n + 1)).toNat

end

end A166141.P5692150358181873407

/-! ## A166141.P4577988156710357858

`A051731(n+1)*A080304(A051537(n+1))`
-/

namespace A166141.P4577988156710357858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080304 (A051537 (n + 1)).toNat

end

end A166141.P4577988156710357858

/-! ## A166141.P11933302494972297444

`A051731(n+1)*A080304(A054531(n+1))`
-/

namespace A166141.P11933302494972297444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080304 (A054531 (n + 1)).toNat

end

end A166141.P11933302494972297444

/-! ## A166141.P15589678490606318584

`A051731(n+1)*A080304(A219158(n+1))`
-/

namespace A166141.P15589678490606318584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080304 (A219158 (n + 1)).toNat

end

end A166141.P15589678490606318584

/-! ## A166141.P9440517273950642092

`gcd(A060466(A126988(n+1)), A126988(n+1))`
-/

namespace A166141.P9440517273950642092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060466 (A126988 (n + 1)).toNat) (A126988 (n + 1))

end

end A166141.P9440517273950642092

/-! ## A166141.P15532856347776305324

`gcd(A129372(n+1)+A115361(n), A130026(n))`
-/

namespace A166141.P15532856347776305324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129372 (n + 1) + A115361 n) (A130026 n)

end

end A166141.P15532856347776305324

/-! ## A166141.P11786226253615316940

`A126988(n+1)^A316866(n)^A126988(n+1)`
-/

namespace A166141.P11786226253615316940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A126988 (n + 1) : ℝ) ^ ((A316866 n : ℚ) ^ (A126988 (n + 1) : ℤ) : ℝ)

end

end A166141.P11786226253615316940

/-!
# A166142: Row products of A166141; Product of such divisors of n that are squarefree and have an even number of prime factors.

The programs for A166142, the canonical program `A166142.P10122674445425206392` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166142 has offset 1).

The definition of A166142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166142.P10122674445425206392

`∏{d}[n+1, A080304(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A166142

/-- `∏{d}[n+1, A080304(#)]` -/
def P10122674445425206392.Spec : Prop :=
  ∀ n, P10122674445425206392.a n = A166142 (n + 1)

theorem P10122674445425206392.correct : P10122674445425206392.Spec := by
  intro n
  simp only [A166142, Nat.add_sub_cancel]

end A166142

/-! ## A166142.P16562317801648243726

`∏{d}[A340679(n+1), sqrt(#)]`
-/

namespace A166142.P16562317801648243726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (d : ℝ)

end

end A166142.P16562317801648243726

namespace A166142

/-- `∏{d}[A340679(n+1), sqrt(#)]` -/
def P16562317801648243726.Spec : Prop :=
  ∀ n, P16562317801648243726.a n = (A166142 (n + 1) : ℝ)

end A166142

/-! ## A166142.P11897333753588402079

`∏{d}[n+1, ceil(#^A008683(#))]`
-/

namespace A166142.P11897333753588402079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) ^ (A008683 d : ℤ)⌉

end

end A166142.P11897333753588402079

namespace A166142

/-- `∏{d}[n+1, ceil(#^A008683(#))]` -/
def P11897333753588402079.Spec : Prop :=
  ∀ n, P11897333753588402079.a n = A166142 (n + 1)

end A166142

/-! ## A166142.P7624257642969287643

`gcd(A120112(n), A166140(n+1))`
-/

namespace A166142.P7624257642969287643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120112 n) (A166140 (n + 1))

end

end A166142.P7624257642969287643

namespace A166142

/-- `gcd(A120112(n), A166140(n+1))` -/
def P7624257642969287643.Spec : Prop :=
  ∀ n, (P7624257642969287643.a n : ℤ) = A166142 (n + 1)

end A166142

/-! ## A166142.P12689852355176184685

`A166140(n+1)/A014963(n+1)`
-/

namespace A166142.P12689852355176184685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166140 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A166142.P12689852355176184685

namespace A166142

/-- `A166140(n+1)/A014963(n+1)` -/
def P12689852355176184685.Spec : Prop :=
  ∀ n, P12689852355176184685.a n = (A166142 (n + 1) : ℚ)

end A166142

/-! ## A166142.P15547462868551649992

`A078599(n+1)/A166140(n+1)`
-/

namespace A166142.P15547462868551649992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078599 (n + 1) : ℚ) / (A166140 (n + 1) : ℚ)

end

end A166142.P15547462868551649992

namespace A166142

/-- `A078599(n+1)/A166140(n+1)` -/
def P15547462868551649992.Spec : Prop :=
  ∀ n, P15547462868551649992.a n = (A166142 (n + 1) : ℚ)

end A166142

/-! ## A166142.P2842844868002368664

`A007947(n+1)^A002265(A034444(n+1))`
-/

namespace A166142.P2842844868002368664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A002265 (A034444 (n + 1)).toNat : ℤ)

end

end A166142.P2842844868002368664

namespace A166142

/-- `A007947(n+1)^A002265(A034444(n+1))` -/
def P2842844868002368664.Spec : Prop :=
  ∀ n, P2842844868002368664.a n = (A166142 (n + 1) : ℚ)

end A166142

/-! ## A166142.P17711137164044437841

`A007947(n+1)^A056172(∏{p}[(n+1)², A194560(#)])`
-/

namespace A166142.P17711137164044437841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A056172 (∏ p ∈ Nat.primeFactors (f1 n), A194560 p).toNat : ℤ)

end

end A166142.P17711137164044437841

namespace A166142

/-- `A007947(n+1)^A056172(∏{p}[(n+1)², A194560(#)])` -/
def P17711137164044437841.Spec : Prop :=
  ∀ n, P17711137164044437841.a n = (A166142 (n + 1) : ℚ)

end A166142

/-! ## A166142.P7626119945535606104

`A205959(∏{p}[A205959(n+1), #])`
-/

namespace A166142.P7626119945535606104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A166142.P7626119945535606104

namespace A166142

/-- `A205959(∏{p}[A205959(n+1), #])` -/
def P7626119945535606104.Spec : Prop :=
  ∀ n, P7626119945535606104.a n = A166142 (n + 1)

end A166142

/-! ## A166142.P11902391448562610625

`A304404(∏{p}[A304404(n+1), #])`
-/

namespace A166142.P11902391448562610625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A166142.P11902391448562610625

namespace A166142

/-- `A304404(∏{p}[A304404(n+1), #])` -/
def P11902391448562610625.Spec : Prop :=
  ∀ n, P11902391448562610625.a n = A166142 (n + 1)

end A166142

/-! ## A166142.P4470122162250597166

`A342905(∑[n+1])^(A001221(n+1)-1)`
-/

namespace A166142.P4470122162250597166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342905 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A001221 (n + 1) - 1 : ℤ)

end

end A166142.P4470122162250597166

namespace A166142

/-- `A342905(∑[n+1])^(A001221(n+1)-1)` -/
def P4470122162250597166.Spec : Prop :=
  ∀ n, P4470122162250597166.a n = (A166142 (n + 1) : ℚ)

end A166142

/-! ## A166142.P17430162193513477742

`∏{p}[A228474(∑[n+1]), A007947(n+1)/#]`
-/

namespace A166142.P17430162193513477742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A007947 (n + 1) : ℚ) / (p : ℚ)

end

end A166142.P17430162193513477742

namespace A166142

/-- `∏{p}[A228474(∑[n+1]), A007947(n+1)/#]` -/
def P17430162193513477742.Spec : Prop :=
  ∀ n, P17430162193513477742.a n = (A166142 (n + 1) : ℚ)

end A166142

/-! ## A166142.P13673848414754873332

`A072195(A340679((n+1)²))`
-/

namespace A166142.P13673848414754873332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072195 (A340679 ((n + 1) ^ 2)).toNat

end

end A166142.P13673848414754873332

namespace A166142

/-- `A072195(A340679((n+1)²))` -/
def P13673848414754873332.Spec : Prop :=
  ∀ n, P13673848414754873332.a n = A166142 (n + 1)

end A166142

/-! ## A166142.P8713899875017100540

`A005451(A166140(n+1))`
-/

namespace A166142.P8713899875017100540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A166140 (n + 1)).toNat

end

end A166142.P8713899875017100540

namespace A166142

/-- `A005451(A166140(n+1))` -/
def P8713899875017100540.Spec : Prop :=
  ∀ n, P8713899875017100540.a n = A166142 (n + 1)

end A166142

/-! ## A166142.P6144437525414809158

`A166140(A304404(n+1))`
-/

namespace A166142.P6144437525414809158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166140 (A304404 (n + 1)).toNat

end

end A166142.P6144437525414809158

namespace A166142

/-- `A166140(A304404(n+1))` -/
def P6144437525414809158.Spec : Prop :=
  ∀ n, P6144437525414809158.a n = A166142 (n + 1)

end A166142

/-!
# A166143: a(n) = 3*n^2 + 3*n - 5.

The programs for A166143, the canonical program `A166143.P7390283485156560154` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166143 has offset 1).

The definition of A166143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²+3*(n+1)-5` (program `A166143.P7390283485156560154`, by `A166143.P7390283485156560154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166143.P303420788958456620

`3*(n+1)*(n+2)-5`
-/

namespace A166143.P303420788958456620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) * (n + 2) : ℤ) - 5

end

end A166143.P303420788958456620

namespace A166143

/-- `3*(n+1)*(n+2)-5` -/
def P303420788958456620.Spec : Prop :=
  ∀ n, P303420788958456620.a n = A166143 (n + 1)

theorem P303420788958456620.correct : P303420788958456620.Spec := by
  intro n
  simp only [A166143, Nat.add_sub_cancel, A166143.P303420788958456620.a, A166143.P7390283485156560154.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166143

/-! ## A166143.P7390283485156560154

`3*(n+1)²+3*(n+1)-5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166143

/-- `3*(n+1)²+3*(n+1)-5` -/
def P7390283485156560154.Spec : Prop :=
  ∀ n, P7390283485156560154.a n = A166143 (n + 1)

theorem P7390283485156560154.correct : P7390283485156560154.Spec := by
  intro n
  simp only [A166143, Nat.add_sub_cancel]

end A166143

/-! ## A166143.P4313196579006102843

`or(1, 6*(∑[n]+n))`
-/

namespace A166143.P4313196579006102843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A166143.P4313196579006102843

namespace A166143

/-- `or(1, 6*(∑[n]+n))` -/
def P4313196579006102843.Spec : Prop :=
  ∀ n, (P4313196579006102843.a n : ℤ) = A166143 (n + 1)

end A166143

/-! ## A166143.P6678653286575806315

`xor(1, 6*(∑[n]+n))`
-/

namespace A166143.P6678653286575806315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A166143.P6678653286575806315

namespace A166143

/-- `xor(1, 6*(∑[n]+n))` -/
def P6678653286575806315.Spec : Prop :=
  ∀ n, (P6678653286575806315.a n : ℤ) = A166143 (n + 1)

end A166143

/-! ## A166143.P15233276716042511306

`∑[a(n-1)+6]` with `a(0)=1, a(1)=12`
-/

namespace A166143.P15233276716042511306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166143.P15233276716042511306

namespace A166143

/-- `∑[a(n-1)+6]` -/
def P15233276716042511306.Spec : Prop :=
  ∀ n, (P15233276716042511306.a n : ℤ) = A166143 (n + 1)

end A166143

/-! ## A166143.P8723047839815185462

`∑[ogf((1+10x-5x^2)/(1-2x+x^2))]`
-/

namespace A166143.P8723047839815185462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166143.P8723047839815185462

namespace A166143

/-- `∑[ogf((1+10x-5x^2)/(1-2x+x^2))]` -/
def P8723047839815185462.Spec : Prop :=
  ∀ n, P8723047839815185462.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P4094080192452577228

`ogf((1+10x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A166143.P4094080192452577228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -5] [1, -3, 3, -1] n

end

end A166143.P4094080192452577228

namespace A166143

/-- `ogf((1+10x-5x^2)/(1-3x+3x^2-x^3))` -/
def P4094080192452577228.Spec : Prop :=
  ∀ n, P4094080192452577228.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P7753246740956275203

`record[(n-3)*3*n+1]`
-/

namespace A166143.P7753246740956275203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (3 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166143.P7753246740956275203

namespace A166143

/-- `record[(n-3)*3*n+1]` -/
def P7753246740956275203.Spec : Prop :=
  ∀ n, P7753246740956275203.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P14178532500970349049

`∑[(n+1)*(3%(n+3))!]`
-/

namespace A166143.P14178532500970349049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (3 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166143.P14178532500970349049

namespace A166143

/-- `∑[(n+1)*(3%(n+3))!]` -/
def P14178532500970349049.Spec : Prop :=
  ∀ n, (P14178532500970349049.a n : ℤ) = A166143 (n + 1)

end A166143

/-! ## A166143.P606635434161196800

`Δ[lcm(n, (n+1)²)+(2-n)²]`
-/

namespace A166143.P606635434161196800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166143.P606635434161196800

namespace A166143

/-- `Δ[lcm(n, (n+1)²)+(2-n)²]` -/
def P606635434161196800.Spec : Prop :=
  ∀ n, P606635434161196800.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P18243950000805443332

`(n*3*(n+3)+1)^ceil(abs(sin(n)))`
-/

namespace A166143.P18243950000805443332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * (n + 3)) + 1 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A166143.P18243950000805443332

namespace A166143

/-- `(n*3*(n+3)+1)^ceil(abs(sin(n)))` -/
def P18243950000805443332.Spec : Prop :=
  ∀ n, P18243950000805443332.a n = (A166143 (n + 1) : ℚ)

end A166143

/-! ## A166143.P5159212150530230660

`round(A166873(n+1)/2)`
-/

namespace A166143.P5159212150530230660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166873 (n + 1) : ℚ) / 2)

end

end A166143.P5159212150530230660

namespace A166143

/-- `round(A166873(n+1)/2)` -/
def P5159212150530230660.Spec : Prop :=
  ∀ n, P5159212150530230660.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P6440809919239399896

`A083079(n)%A005570(n+1)`
-/

namespace A166143.P6440809919239399896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083079 n) (A005570 (n + 1))

end

end A166143.P6440809919239399896

namespace A166143

/-- `A083079(n)%A005570(n+1)` -/
def P6440809919239399896.Spec : Prop :=
  ∀ n, P6440809919239399896.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P9667028715699525316

`A136016(n+1)%A129109(n)`
-/

namespace A166143.P9667028715699525316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136016 (n + 1)) (A129109 n)

end

end A166143.P9667028715699525316

namespace A166143

/-- `A136016(n+1)%A129109(n)` -/
def P9667028715699525316.Spec : Prop :=
  ∀ n, P9667028715699525316.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P12917766405069130744

`Δ[Δ[(3-C(n+1, 2))²]]`
-/

namespace A166143.P12917766405069130744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.choose (n + 1) 2 : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166143.P12917766405069130744

namespace A166143

/-- `Δ[Δ[(3-C(n+1, 2))²]]` -/
def P12917766405069130744.Spec : Prop :=
  ∀ n, P12917766405069130744.a n = A166143 (n + 1)

theorem P12917766405069130744.correct : P12917766405069130744.Spec := by
  intro n
  simp only [A166143, Nat.add_sub_cancel, A166143.P12917766405069130744.f2, A166143.P12917766405069130744.f1, A166143.P12917766405069130744.a, A166143.P7390283485156560154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166143

/-! ## A166143.P13277606808310445822

`∑[A163750(3*(n+1))]`
-/

namespace A166143.P13277606808310445822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163750 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166143.P13277606808310445822

namespace A166143

/-- `∑[A163750(3*(n+1))]` -/
def P13277606808310445822.Spec : Prop :=
  ∀ n, P13277606808310445822.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P9474864998407157735

`A016921(∑[n]+n)`
-/

namespace A166143.P9474864998407157735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166143.P9474864998407157735

namespace A166143

/-- `A016921(∑[n]+n)` -/
def P9474864998407157735.Spec : Prop :=
  ∀ n, P9474864998407157735.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P6917130778026010333

`A308196(∑[n]+n)`
-/

namespace A166143.P6917130778026010333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166143.P6917130778026010333

namespace A166143

/-- `A308196(∑[n]+n)` -/
def P6917130778026010333.Spec : Prop :=
  ∀ n, P6917130778026010333.a n = A166143 (n + 1)

end A166143

/-! ## A166143.P3150543330135780317

`A298035(∑[n+1])/3`
-/

namespace A166143.P3150543330135780317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298035 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A166143.P3150543330135780317

namespace A166143

/-- `A298035(∑[n+1])/3` -/
def P3150543330135780317.Spec : Prop :=
  ∀ n, P3150543330135780317.a n = (A166143 (n + 1) : ℚ)

end A166143

/-! ## A166143.P16931234872486788130

`A131065(∑[n+3])`
-/

namespace A166143.P16931234872486788130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166143.P16931234872486788130

namespace A166143

/-- `A131065(∑[n+3])` -/
def P16931234872486788130.Spec : Prop :=
  ∀ n, P16931234872486788130.a n = A166143 (n + 1)

end A166143

/-!
# A166144: a(n) = (11*n^2 + 11*n - 20)/2.

The programs for A166144, the canonical program `A166144.P552388920887420492` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166144 has offset 1).

The definition of A166144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*(n+1)²+11*(n+1)-20)/2` (program `A166144.P9121646662774728043`, by `A166144.P9121646662774728043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166144.P17484629199300821914

`11*C(n+2, 2)-10`
-/

namespace A166144.P17484629199300821914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * Nat.choose (n + 2) 2 : ℤ) - 10

end

end A166144.P17484629199300821914

namespace A166144

/-- `11*C(n+2, 2)-10` -/
def P17484629199300821914.Spec : Prop :=
  ∀ n, P17484629199300821914.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P552388920887420492

`a(n-1)+11*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166144

/-- `a(n-1)+11*(n+1)` -/
def P552388920887420492.Spec : Prop :=
  ∀ n, (P552388920887420492.a n : ℤ) = A166144 (n + 1)

theorem P552388920887420492.correct : P552388920887420492.Spec := by
  intro n
  simp only [A166144, Nat.add_sub_cancel]

end A166144

/-! ## A166144.P9121646662774728043

`(11*(n+1)²+11*(n+1)-20)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166144.P9121646662774728043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * (n + 1) ^ 2 + 11 * (n + 1) : ℤ) - 20 : ℚ) / 2

end

end A166144.P9121646662774728043

namespace A166144

/-- `(11*(n+1)²+11*(n+1)-20)/2` -/
def P9121646662774728043.Spec : Prop :=
  ∀ n, P9121646662774728043.a n = (A166144 (n + 1) : ℚ)

theorem P9121646662774728043.correct : P9121646662774728043.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166144, Nat.add_sub_cancel, A166144.P9121646662774728043.a, A166144.P552388920887420492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166144, Nat.add_sub_cancel, A166144.P9121646662774728043.a, A166144.P552388920887420492.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166144

/-! ## A166144.P9435619847886717518

`∑[a(n-1)+11]` with `a(0)=1, a(1)=22`
-/

namespace A166144.P9435619847886717518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166144.P9435619847886717518

namespace A166144

/-- `∑[a(n-1)+11]` -/
def P9435619847886717518.Spec : Prop :=
  ∀ n, (P9435619847886717518.a n : ℤ) = A166144 (n + 1)

end A166144

/-! ## A166144.P13649905191206959220

`A008593(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A166144.P13649905191206959220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008593 (n + 1) + a (n - 1)

end

end A166144.P13649905191206959220

namespace A166144

/-- `A008593(n+1)+a(n-1)` -/
def P13649905191206959220.Spec : Prop :=
  ∀ n, P13649905191206959220.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P6732305876682168549

`A098849(n)+A006137(n)`
-/

namespace A166144.P6732305876682168549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098849 n + A006137 n

end

end A166144.P6732305876682168549

namespace A166144

/-- `A098849(n)+A006137(n)` -/
def P6732305876682168549.Spec : Prop :=
  ∀ n, P6732305876682168549.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P2377665648924806917

`A081271(n)+A028569(n)`
-/

namespace A166144.P2377665648924806917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n + A028569 n

end

end A166144.P2377665648924806917

namespace A166144

/-- `A081271(n)+A028569(n)` -/
def P2377665648924806917.Spec : Prop :=
  ∀ n, P2377665648924806917.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P11762535371384974378

`A140679(n)+A005891(n)`
-/

namespace A166144.P11762535371384974378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n + A005891 n

end

end A166144.P11762535371384974378

namespace A166144

/-- `A140679(n)+A005891(n)` -/
def P11762535371384974378.Spec : Prop :=
  ∀ n, P11762535371384974378.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P1978943430561321070

`A098848(n)+A064225(n)`
-/

namespace A166144.P1978943430561321070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098848 n + A064225 n

end

end A166144.P1978943430561321070

namespace A166144

/-- `A098848(n)+A064225(n)` -/
def P1978943430561321070.Spec : Prop :=
  ∀ n, P1978943430561321070.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P13728614100675827757

`A152740(n)+A017401(n)`
-/

namespace A166144.P13728614100675827757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n + A017401 n

end

end A166144.P13728614100675827757

namespace A166144

/-- `A152740(n)+A017401(n)` -/
def P13728614100675827757.Spec : Prop :=
  ∀ n, P13728614100675827757.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P6230223350424239972

`A132760(n)+A038764(n)`
-/

namespace A166144.P6230223350424239972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132760 n + A038764 n

end

end A166144.P6230223350424239972

namespace A166144

/-- `A132760(n)+A038764(n)` -/
def P6230223350424239972.Spec : Prop :=
  ∀ n, P6230223350424239972.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P18104420780215348735

`A098850(n)+A080855(n)`
-/

namespace A166144.P18104420780215348735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098850 n + A080855 n

end

end A166144.P18104420780215348735

namespace A166144

/-- `A098850(n)+A080855(n)` -/
def P18104420780215348735.Spec : Prop :=
  ∀ n, P18104420780215348735.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P10593728340437269314

`A098603(n)+A081268(n)`
-/

namespace A166144.P10593728340437269314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 n + A081268 n

end

end A166144.P10593728340437269314

namespace A166144

/-- `A098603(n)+A081268(n)` -/
def P10593728340437269314.Spec : Prop :=
  ∀ n, P10593728340437269314.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P17914940994262276764

`A158057(n)+A022269(n)`
-/

namespace A166144.P17914940994262276764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A022269 n

end

end A166144.P17914940994262276764

namespace A166144

/-- `A158057(n)+A022269(n)` -/
def P17914940994262276764.Spec : Prop :=
  ∀ n, P17914940994262276764.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P9921633868173135460

`A134593(n)+A056119(n)`
-/

namespace A166144.P9921633868173135460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 n + A056119 n

end

end A166144.P9921633868173135460

namespace A166144

/-- `A134593(n)+A056119(n)` -/
def P9921633868173135460.Spec : Prop :=
  ∀ n, P9921633868173135460.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P15427220821221098856

`A132759(n)+A081267(n)`
-/

namespace A166144.P15427220821221098856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132759 n + A081267 n

end

end A166144.P15427220821221098856

namespace A166144

/-- `A132759(n)+A081267(n)` -/
def P15427220821221098856.Spec : Prop :=
  ∀ n, P15427220821221098856.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P9029441239860777014

`A140672(n)+A082112(n)`
-/

namespace A166144.P9029441239860777014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + A082112 n

end

end A166144.P9029441239860777014

namespace A166144

/-- `A140672(n)+A082112(n)` -/
def P9029441239860777014.Spec : Prop :=
  ∀ n, P9029441239860777014.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P1659991900851211571

`A140674(n)+A082109(n)`
-/

namespace A166144.P1659991900851211571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + A082109 n

end

end A166144.P1659991900851211571

namespace A166144

/-- `A140674(n)+A082109(n)` -/
def P1659991900851211571.Spec : Prop :=
  ∀ n, P1659991900851211571.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P8346196683694929340

`A172044(n)+A056115(n)`
-/

namespace A166144.P8346196683694929340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172044 n + A056115 n

end

end A166144.P8346196683694929340

namespace A166144

/-- `A172044(n)+A056115(n)` -/
def P8346196683694929340.Spec : Prop :=
  ∀ n, P8346196683694929340.a n = A166144 (n + 1)

end A166144

/-! ## A166144.P18273944241651998173

`A211013(n)+A017533(n)`
-/

namespace A166144.P18273944241651998173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n + A017533 n

end

end A166144.P18273944241651998173

namespace A166144

/-- `A211013(n)+A017533(n)` -/
def P18273944241651998173.Spec : Prop :=
  ∀ n, P18273944241651998173.a n = A166144 (n + 1)

end A166144

/-!
# A166146: a(n) = (7*n^2 + 7*n - 12)/2.

The programs for A166146, the canonical program `A166146.P9470877362216131916` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166146 has offset 1).

The definition of A166146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*(n+1)²+7*(n+1)-12)/2` (program `A166146.P17885584351680884919`, by `A166146.P17885584351680884919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166146.P9470877362216131916

`a(n-1)+7*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166146

/-- `a(n-1)+7*(n+1)` -/
def P9470877362216131916.Spec : Prop :=
  ∀ n, (P9470877362216131916.a n : ℤ) = A166146 (n + 1)

theorem P9470877362216131916.correct : P9470877362216131916.Spec := by
  intro n
  simp only [A166146, Nat.add_sub_cancel]

end A166146

/-! ## A166146.P16816410590431871710

`7*(n+1)*(n+2)/2-6`
-/

namespace A166146.P16816410590431871710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) * (n + 2) : ℚ) / 2 - 6

end

end A166146.P16816410590431871710

namespace A166146

/-- `7*(n+1)*(n+2)/2-6` -/
def P16816410590431871710.Spec : Prop :=
  ∀ n, P16816410590431871710.a n = (A166146 (n + 1) : ℚ)

theorem P16816410590431871710.correct : P16816410590431871710.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166146, Nat.add_sub_cancel, A166146.P16816410590431871710.a, A166146.P9470877362216131916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166146, Nat.add_sub_cancel, A166146.P16816410590431871710.a, A166146.P9470877362216131916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166146

/-! ## A166146.P17885584351680884919

`(7*(n+1)²+7*(n+1)-12)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166146.P17885584351680884919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * (n + 1) ^ 2 + 7 * (n + 1) : ℤ) - 12 : ℚ) / 2

end

end A166146.P17885584351680884919

namespace A166146

/-- `(7*(n+1)²+7*(n+1)-12)/2` -/
def P17885584351680884919.Spec : Prop :=
  ∀ n, P17885584351680884919.a n = (A166146 (n + 1) : ℚ)

theorem P17885584351680884919.correct : P17885584351680884919.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166146, Nat.add_sub_cancel, A166146.P17885584351680884919.a, A166146.P9470877362216131916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166146, Nat.add_sub_cancel, A166146.P17885584351680884919.a, A166146.P9470877362216131916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166146

/-! ## A166146.P16929221556218553079

`∑[a(n-1)+7]` with `a(0)=1, a(1)=14`
-/

namespace A166146.P16929221556218553079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166146.P16929221556218553079

namespace A166146

/-- `∑[a(n-1)+7]` -/
def P16929221556218553079.Spec : Prop :=
  ∀ n, (P16929221556218553079.a n : ℤ) = A166146 (n + 1)

end A166146

/-! ## A166146.P16159902506079577005

`floor(cosh(log(n*7*(n+3)+2)))`
-/

namespace A166146.P16159902506079577005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n * (7 * (n + 3)) + 2 : ℝ))⌋

end

end A166146.P16159902506079577005

namespace A166146

/-- `floor(cosh(log(n*7*(n+3)+2)))` -/
def P16159902506079577005.Spec : Prop :=
  ∀ n, P16159902506079577005.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P9850850318417270391

`abs(5*(2*n²+n)+1-(13*C(n, 2)+n))`
-/

namespace A166146.P9850850318417270391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * (2 * n ^ 2 + n) + 1 : ℤ) - (13 * Nat.choose n 2 + n : ℤ)|

end

end A166146.P9850850318417270391

namespace A166146

/-- `abs(5*(2*n²+n)+1-(13*C(n, 2)+n))` -/
def P9850850318417270391.Spec : Prop :=
  ∀ n, P9850850318417270391.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P4843859545748249591

`∑[(n+1)*A255910(n)]`
-/

namespace A166146.P4843859545748249591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A255910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166146.P4843859545748249591

namespace A166146

/-- `∑[(n+1)*A255910(n)]` -/
def P4843859545748249591.Spec : Prop :=
  ∀ n, P4843859545748249591.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P5026648082165036275

`abs(6-∑[A017041(n)+2])`
-/

namespace A166146.P5026648082165036275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166146.P5026648082165036275

namespace A166146

/-- `abs(6-∑[A017041(n)+2])` -/
def P5026648082165036275.Spec : Prop :=
  ∀ n, P5026648082165036275.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P11730275698873740986

`∑[gcd(7*(n+1), A000038(n))]`
-/

namespace A166146.P11730275698873740986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * (n + 1) : ℤ) (A000038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166146.P11730275698873740986

namespace A166146

/-- `∑[gcd(7*(n+1), A000038(n))]` -/
def P11730275698873740986.Spec : Prop :=
  ∀ n, (P11730275698873740986.a n : ℤ) = A166146 (n + 1)

end A166146

/-! ## A166146.P16617849667282004768

`∑[(n+1)*7%A018252(n+3)]`
-/

namespace A166146.P16617849667282004768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod 7 (A018252 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166146.P16617849667282004768

namespace A166146

/-- `∑[(n+1)*7%A018252(n+3)]` -/
def P16617849667282004768.Spec : Prop :=
  ∀ n, P16617849667282004768.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P3013469795093596603

`∑[(n+1)*A186684(n+2)]`
-/

namespace A166146.P3013469795093596603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166146.P3013469795093596603

namespace A166146

/-- `∑[(n+1)*A186684(n+2)]` -/
def P3013469795093596603.Spec : Prop :=
  ∀ n, P3013469795093596603.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P17537643611049829316

`Δ[A062748(2*n)-Δ[A063258(n+1)]]`
-/

namespace A166146.P17537643611049829316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166146.P17537643611049829316

namespace A166146

/-- `Δ[A062748(2*n)-Δ[A063258(n+1)]]` -/
def P17537643611049829316.Spec : Prop :=
  ∀ n, P17537643611049829316.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P4056609471246018143

`A016993(∑[n]+n)`
-/

namespace A166146.P4056609471246018143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166146.P4056609471246018143

namespace A166146

/-- `A016993(∑[n]+n)` -/
def P4056609471246018143.Spec : Prop :=
  ∀ n, P4056609471246018143.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P6386305724920702153

`sqrt(A016994(∑[n]+n))`
-/

namespace A166146.P6386305724920702153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016994 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℝ)

end

end A166146.P6386305724920702153

namespace A166146

/-- `sqrt(A016994(∑[n]+n))` -/
def P6386305724920702153.Spec : Prop :=
  ∀ n, P6386305724920702153.a n = (A166146 (n + 1) : ℝ)

end A166146

/-! ## A166146.P7759247062345140672

`record[7*A000096(A002262(n))+1]`
-/

namespace A166146.P7759247062345140672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000096 (A002262 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166146.P7759247062345140672

namespace A166146

/-- `record[7*A000096(A002262(n))+1]` -/
def P7759247062345140672.Spec : Prop :=
  ∀ n, P7759247062345140672.a n = A166146 (n + 1)

end A166146

/-! ## A166146.P13753876477691582356

`record[A016993(n)/A237587(n+1)]`
-/

namespace A166146.P13753876477691582356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016993 n : ℚ) / (A237587 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166146.P13753876477691582356

namespace A166146

/-- `record[A016993(n)/A237587(n+1)]` -/
def P13753876477691582356.Spec : Prop :=
  ∀ n, P13753876477691582356.a n = (A166146 (n + 1) : ℚ)

end A166146

/-! ## A166146.P6860373383984784806

`A131067(∑[n+3])`
-/

namespace A166146.P6860373383984784806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166146.P6860373383984784806

namespace A166146

/-- `A131067(∑[n+3])` -/
def P6860373383984784806.Spec : Prop :=
  ∀ n, P6860373383984784806.a n = A166146 (n + 1)

end A166146

/-!
# A166147: a(n) = 4*n^2 + 4*n - 7.

The programs for A166147, the canonical program `A166147.P8240369530521258348` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166147 has offset 1).

The definition of A166147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²+4*(n+1)-7` (program `A166147.P8240369530521258348`, by `A166147.P8240369530521258348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166147.P17439119222318865065

`8*C(n+2, 2)-7`
-/

namespace A166147.P17439119222318865065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (n + 2) 2 : ℤ) - 7

end

end A166147.P17439119222318865065

namespace A166147

/-- `8*C(n+2, 2)-7` -/
def P17439119222318865065.Spec : Prop :=
  ∀ n, P17439119222318865065.a n = A166147 (n + 1)

theorem P17439119222318865065.correct : P17439119222318865065.Spec := by
  intro n
  simp only [A166147, Nat.add_sub_cancel, A166147.P17439119222318865065.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166147

/-! ## A166147.P13291134058325298388

`a(n-1)+8*(n+1)` with `a(0)=1`
-/

namespace A166147.P13291134058325298388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * (n + 1)

end

end A166147.P13291134058325298388

namespace A166147

/-- `a(n-1)+8*(n+1)` -/
def P13291134058325298388.Spec : Prop :=
  ∀ n, (P13291134058325298388.a n : ℤ) = A166147 (n + 1)

theorem P13291134058325298388.correct : P13291134058325298388.Spec := by
  intro n
  induction n with
  | zero => simp [A166147, A166147.P13291134058325298388.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A166147, Nat.add_sub_cancel, A166147.P13291134058325298388.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A166147

/-! ## A166147.P8240369530521258348

`4*(n+1)²+4*(n+1)-7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166147

/-- `4*(n+1)²+4*(n+1)-7` -/
def P8240369530521258348.Spec : Prop :=
  ∀ n, P8240369530521258348.a n = A166147 (n + 1)

theorem P8240369530521258348.correct : P8240369530521258348.Spec := by
  intro n
  simp only [A166147, Nat.add_sub_cancel]

end A166147

/-! ## A166147.P3801959078364153253

`or(1, 8*(∑[n]+n))`
-/

namespace A166147.P3801959078364153253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A166147.P3801959078364153253

namespace A166147

/-- `or(1, 8*(∑[n]+n))` -/
def P3801959078364153253.Spec : Prop :=
  ∀ n, (P3801959078364153253.a n : ℤ) = A166147 (n + 1)

end A166147

/-! ## A166147.P1103323461862985917

`xor(1, 8*(∑[n]+n))`
-/

namespace A166147.P1103323461862985917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A166147.P1103323461862985917

namespace A166147

/-- `xor(1, 8*(∑[n]+n))` -/
def P1103323461862985917.Spec : Prop :=
  ∀ n, (P1103323461862985917.a n : ℤ) = A166147 (n + 1)

end A166147

/-! ## A166147.P16290270056347797340

`∑[a(n-1)+8]` with `a(0)=1, a(1)=16`
-/

namespace A166147.P16290270056347797340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166147.P16290270056347797340

namespace A166147

/-- `∑[a(n-1)+8]` -/
def P16290270056347797340.Spec : Prop :=
  ∀ n, (P16290270056347797340.a n : ℤ) = A166147 (n + 1)

end A166147

/-! ## A166147.P4429030022760243651

`record[(2*n-3)²-8]`
-/

namespace A166147.P4429030022760243651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) ^ 2 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166147.P4429030022760243651

namespace A166147

/-- `record[(2*n-3)²-8]` -/
def P4429030022760243651.Spec : Prop :=
  ∀ n, P4429030022760243651.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P10547759281967614283

`∑[(n+1)*8%∑[n+7]]`
-/

namespace A166147.P10547759281967614283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (8 % (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166147.P10547759281967614283

namespace A166147

/-- `∑[(n+1)*8%∑[n+7]]` -/
def P10547759281967614283.Spec : Prop :=
  ∀ n, (P10547759281967614283.a n : ℤ) = A166147 (n + 1)

end A166147

/-! ## A166147.P3830922669906994363

`floor(4*(lcm(n+1, n+2)-ϕ))`
-/

namespace A166147.P3830922669906994363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((Nat.lcm (n + 1) (n + 2) : ℝ) - Real.goldenRatio)⌋

end

end A166147.P3830922669906994363

namespace A166147

/-- `floor(4*(lcm(n+1, n+2)-ϕ))` -/
def P3830922669906994363.Spec : Prop :=
  ∀ n, P3830922669906994363.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P7293892740322535286

`∑[(n+1)*ceil(atan(n+1))^3]`
-/

namespace A166147.P7293892740322535286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166147.P7293892740322535286

namespace A166147

/-- `∑[(n+1)*ceil(atan(n+1))^3]` -/
def P7293892740322535286.Spec : Prop :=
  ∀ n, P7293892740322535286.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P5802012885900641342

`abs(lcm(2*n+1, 2*n+5)-4)`
-/

namespace A166147.P5802012885900641342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (2 * n + 5) : ℤ) - 4|

end

end A166147.P5802012885900641342

namespace A166147

/-- `abs(lcm(2*n+1, 2*n+5)-4)` -/
def P5802012885900641342.Spec : Prop :=
  ∀ n, P5802012885900641342.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P11162624138070435104

`and((2*n+1)*(2*n+5), -5)`
-/

namespace A166147.P11162624138070435104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1) * (2 * n + 5) : ℤ) (-5)

end

end A166147.P11162624138070435104

namespace A166147

/-- `and((2*n+1)*(2*n+5), -5)` -/
def P11162624138070435104.Spec : Prop :=
  ∀ n, P11162624138070435104.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P2786728896966022962

`floor(Δ[(n+1+n)²]+a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A166147.P2786728896966022962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A166147.P2786728896966022962

namespace A166147

/-- `floor(Δ[(n+1+n)²]+a(n-1))` -/
def P2786728896966022962.Spec : Prop :=
  ∀ n, P2786728896966022962.a n = A166147 (n + 1)

theorem P2786728896966022962.correct : P2786728896966022962.Spec := by
  intro n
  induction n with
  | zero => simp [A166147, A166147.P2786728896966022962.f1, A166147.P2786728896966022962.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A166147, Nat.add_sub_cancel, A166147.P2786728896966022962.f1, A166147.P2786728896966022962.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A166147

/-! ## A166147.P17125895666824017575

`floor(a(n-1)+(n+3)²-(1-n)²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A166147.P17125895666824017575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 3) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2

end

end A166147.P17125895666824017575

namespace A166147

/-- `floor(a(n-1)+(n+3)²-(1-n)²)` -/
def P17125895666824017575.Spec : Prop :=
  ∀ n, P17125895666824017575.a n = A166147 (n + 1)

theorem P17125895666824017575.correct : P17125895666824017575.Spec := by
  intro n
  induction n with
  | zero => simp [A166147, A166147.P17125895666824017575.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A166147, Nat.add_sub_cancel, A166147.P17125895666824017575.a, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A166147

/-! ## A166147.P3133942426082875729

`A001513(n)%A157870(n)`
-/

namespace A166147.P3133942426082875729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A157870 n)

end

end A166147.P3133942426082875729

namespace A166147

/-- `A001513(n)%A157870(n)` -/
def P3133942426082875729.Spec : Prop :=
  ∀ n, P3133942426082875729.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P5158556113252095686

`A083079(n)%A073577(n+1)`
-/

namespace A166147.P5158556113252095686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083079 n) (A073577 (n + 1))

end

end A166147.P5158556113252095686

namespace A166147

/-- `A083079(n)%A073577(n+1)` -/
def P5158556113252095686.Spec : Prop :=
  ∀ n, P5158556113252095686.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P13164041921817244160

`A016970(n)%A254527(n+1)`
-/

namespace A166147.P13164041921817244160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016970 n) (A254527 (n + 1))

end

end A166147.P13164041921817244160

namespace A166147

/-- `A016970(n)%A254527(n+1)` -/
def P13164041921817244160.Spec : Prop :=
  ∀ n, P13164041921817244160.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P7954363396303532087

`A195317(n+1)%A068379(n+1)`
-/

namespace A166147.P7954363396303532087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195317 (n + 1)) (A068379 (n + 1))

end

end A166147.P7954363396303532087

namespace A166147

/-- `A195317(n+1)%A068379(n+1)` -/
def P7954363396303532087.Spec : Prop :=
  ∀ n, P7954363396303532087.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P10455361094057914736

`A014771(n+1)%A254527(n+1)`
-/

namespace A166147.P10455361094057914736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014771 (n + 1)) (A254527 (n + 1))

end

end A166147.P10455361094057914736

namespace A166147

/-- `A014771(n+1)%A254527(n+1)` -/
def P10455361094057914736.Spec : Prop :=
  ∀ n, P10455361094057914736.a n = A166147 (n + 1)

end A166147

/-! ## A166147.P14251301202709479256

`A028884(2*n)`
-/

namespace A166147.P14251301202709479256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (2 * n)

end

end A166147.P14251301202709479256

namespace A166147

/-- `A028884(2*n)` -/
def P14251301202709479256.Spec : Prop :=
  ∀ n, P14251301202709479256.a n = A166147 (n + 1)

theorem P14251301202709479256.correct : P14251301202709479256.Spec := by
  intro n
  simp only [A166147, Nat.add_sub_cancel, A166147.P14251301202709479256.a, A166147.P8240369530521258348.a, A028884, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166147

/-!
# A166148: a(n) = (9*n^2 + 9*n - 16)/2.

The programs for A166148, the canonical program `A166148.P4211898455442276885` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166148 has offset 1).

The definition of A166148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*(n+1)²+9*(n+1)-16)/2` (program `A166148.P1541336065150472213`, by `A166148.P1541336065150472213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166148.P1205980029880537477

`9*C(n+2, 2)-8`
-/

namespace A166148.P1205980029880537477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * Nat.choose (n + 2) 2 : ℤ) - 8

end

end A166148.P1205980029880537477

namespace A166148

/-- `9*C(n+2, 2)-8` -/
def P1205980029880537477.Spec : Prop :=
  ∀ n, P1205980029880537477.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P4211898455442276885

`a(n-1)+9*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166148

/-- `a(n-1)+9*(n+1)` -/
def P4211898455442276885.Spec : Prop :=
  ∀ n, (P4211898455442276885.a n : ℤ) = A166148 (n + 1)

theorem P4211898455442276885.correct : P4211898455442276885.Spec := by
  intro n
  simp only [A166148, Nat.add_sub_cancel]

end A166148

/-! ## A166148.P1541336065150472213

`(9*(n+1)²+9*(n+1)-16)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166148.P1541336065150472213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 1) ^ 2 + 9 * (n + 1) : ℤ) - 16 : ℚ) / 2

end

end A166148.P1541336065150472213

namespace A166148

/-- `(9*(n+1)²+9*(n+1)-16)/2` -/
def P1541336065150472213.Spec : Prop :=
  ∀ n, P1541336065150472213.a n = (A166148 (n + 1) : ℚ)

theorem P1541336065150472213.correct : P1541336065150472213.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166148, Nat.add_sub_cancel, A166148.P1541336065150472213.a, A166148.P4211898455442276885.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166148, Nat.add_sub_cancel, A166148.P1541336065150472213.a, A166148.P4211898455442276885.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166148

/-! ## A166148.P1759993953885254415

`∑[a(n-1)+9]` with `a(0)=1, a(1)=18`
-/

namespace A166148.P1759993953885254415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166148.P1759993953885254415

namespace A166148

/-- `∑[a(n-1)+9]` -/
def P1759993953885254415.Spec : Prop :=
  ∀ n, (P1759993953885254415.a n : ℤ) = A166148 (n + 1)

end A166148

/-! ## A166148.P17533309348528353166

`∑[(n+1)*3^(2%(n+2))]`
-/

namespace A166148.P17533309348528353166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ (2 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166148.P17533309348528353166

namespace A166148

/-- `∑[(n+1)*3^(2%(n+2))]` -/
def P17533309348528353166.Spec : Prop :=
  ∀ n, (P17533309348528353166.a n : ℤ) = A166148 (n + 1)

end A166148

/-! ## A166148.P6120698254792113612

`∑[(n+1)*(3%∑[n+2])²]`
-/

namespace A166148.P6120698254792113612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 % (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166148.P6120698254792113612

namespace A166148

/-- `∑[(n+1)*(3%∑[n+2])²]` -/
def P6120698254792113612.Spec : Prop :=
  ∀ n, (P6120698254792113612.a n : ℤ) = A166148 (n + 1)

end A166148

/-! ## A166148.P534412647494983501

`A179436(n)-6`
-/

namespace A166148.P534412647494983501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179436 n - 6

end

end A166148.P534412647494983501

namespace A166148

/-- `A179436(n)-6` -/
def P534412647494983501.Spec : Prop :=
  ∀ n, P534412647494983501.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P10042779484166033871

`3*A140091(n)+1`
-/

namespace A166148.P10042779484166033871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140091 n + 1

end

end A166148.P10042779484166033871

namespace A166148

/-- `3*A140091(n)+1` -/
def P10042779484166033871.Spec : Prop :=
  ∀ n, P10042779484166033871.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P7532681533443008733

`A235332(n)-5+n`
-/

namespace A166148.P7532681533443008733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235332 n - 5 + (n : ℤ)

end

end A166148.P7532681533443008733

namespace A166148

/-- `A235332(n)-5+n` -/
def P7532681533443008733.Spec : Prop :=
  ∀ n, P7532681533443008733.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P17184514044179510581

`3*A133694(n+1)-2`
-/

namespace A166148.P17184514044179510581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133694 (n + 1) - 2

end

end A166148.P17184514044179510581

namespace A166148

/-- `3*A133694(n+1)-2` -/
def P17184514044179510581.Spec : Prop :=
  ∀ n, P17184514044179510581.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P16971098087905517493

`∑[(n+1)*A122553(n)²]`
-/

namespace A166148.P16971098087905517493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122553 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166148.P16971098087905517493

namespace A166148

/-- `∑[(n+1)*A122553(n)²]` -/
def P16971098087905517493.Spec : Prop :=
  ∀ n, P16971098087905517493.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P8614251835547521086

`A332519(n+1)+∑[n+1]`
-/

namespace A166148.P8614251835547521086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332519 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A166148.P8614251835547521086

namespace A166148

/-- `A332519(n+1)+∑[n+1]` -/
def P8614251835547521086.Spec : Prop :=
  ∀ n, P8614251835547521086.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P10343431088390301635

`∑[(n+1)*A291092(n+1)]`
-/

namespace A166148.P10343431088390301635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A291092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166148.P10343431088390301635

namespace A166148

/-- `∑[(n+1)*A291092(n+1)]` -/
def P10343431088390301635.Spec : Prop :=
  ∀ n, P10343431088390301635.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P13882064536121581022

`A008595(n)+A006137(n)`
-/

namespace A166148.P13882064536121581022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n + A006137 n

end

end A166148.P13882064536121581022

namespace A166148

/-- `A008595(n)+A006137(n)` -/
def P13882064536121581022.Spec : Prop :=
  ∀ n, P13882064536121581022.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P12685583265933886988

`A027468(n)+A017173(n)`
-/

namespace A166148.P12685583265933886988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + A017173 n

end

end A166148.P12685583265933886988

namespace A166148

/-- `A027468(n)+A017173(n)` -/
def P12685583265933886988.Spec : Prop :=
  ∀ n, P12685583265933886988.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P13257988671300648775

`A038764(n)+A008594(n)`
-/

namespace A166148.P13257988671300648775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + A008594 n

end

end A166148.P13257988671300648775

namespace A166148

/-- `A038764(n)+A008594(n)` -/
def P13257988671300648775.Spec : Prop :=
  ∀ n, P13257988671300648775.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P13823884048896976908

`A064225(n)+A008593(n)`
-/

namespace A166148.P13823884048896976908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n + A008593 n

end

end A166148.P13823884048896976908

namespace A166148

/-- `A064225(n)+A008593(n)` -/
def P13823884048896976908.Spec : Prop :=
  ∀ n, P13823884048896976908.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P8731779942126510616

`A062728(n)+A017281(n)`
-/

namespace A166148.P8731779942126510616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n + A017281 n

end

end A166148.P8731779942126510616

namespace A166148

/-- `A062728(n)+A017281(n)` -/
def P8731779942126510616.Spec : Prop :=
  ∀ n, P8731779942126510616.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P11298476014176017315

`A062725(n)+A017401(n)`
-/

namespace A166148.P11298476014176017315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n + A017401 n

end

end A166148.P11298476014176017315

namespace A166148

/-- `A062725(n)+A017401(n)` -/
def P11298476014176017315.Spec : Prop :=
  ∀ n, P11298476014176017315.a n = A166148 (n + 1)

end A166148

/-! ## A166148.P13335210481107270563

`A080855(n)+A008597(n)`
-/

namespace A166148.P13335210481107270563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n + A008597 n

end

end A166148.P13335210481107270563

namespace A166148

/-- `A080855(n)+A008597(n)` -/
def P13335210481107270563.Spec : Prop :=
  ∀ n, P13335210481107270563.a n = A166148 (n + 1)

end A166148

/-!
# A166149: a(n) = (5^n + 10*(-6)^n)/11.

The programs for A166149, the canonical program `A166149.P939326700740443043` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166149 has offset 0).

The definition of A166149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n+10*(-6)^n)/11` (program `A166149.P17554449147399250061`, by `A166149.P17554449147399250061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166149.P939326700740443043

`30*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166149

/-- `30*a(n-2)-a(n-1)` -/
def P939326700740443043.Spec : Prop :=
  ∀ n, P939326700740443043.a n = A166149 n

theorem P939326700740443043.correct : P939326700740443043.Spec := by
  intro n
  simp only [A166149]

end A166149

/-! ## A166149.P17554449147399250061

`(5^n+10*(-6)^n)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166149.P17554449147399250061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) + 10 * (-6) ^ n : ℚ) / 11

end

end A166149.P17554449147399250061

namespace A166149

/-- `(5^n+10*(-6)^n)/11` -/
def P17554449147399250061.Spec : Prop :=
  ∀ n, P17554449147399250061.a n = (A166149 n : ℚ)

theorem P17554449147399250061.correct : P17554449147399250061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166149, Nat.add_sub_cancel, A166149.P17554449147399250061.a, A166149.P939326700740443043.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166149, Nat.add_sub_cancel, A166149.P17554449147399250061.a, A166149.P939326700740443043.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166149

/-!
# A166150: a(n) = 5*n^2 + 5*n - 9.

The programs for A166150, the canonical program `A166150.P2402035840510749250` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166150 has offset 1).

The definition of A166150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)²+5*(n+1)-9` (program `A166150.P2402035840510749250`, by `A166150.P2402035840510749250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166150.P11728360343601122119

`5*(n+1)*(n+2)-9`
-/

namespace A166150.P11728360343601122119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) * (n + 2) : ℤ) - 9

end

end A166150.P11728360343601122119

namespace A166150

/-- `5*(n+1)*(n+2)-9` -/
def P11728360343601122119.Spec : Prop :=
  ∀ n, P11728360343601122119.a n = A166150 (n + 1)

theorem P11728360343601122119.correct : P11728360343601122119.Spec := by
  intro n
  simp only [A166150, Nat.add_sub_cancel, A166150.P11728360343601122119.a, A166150.P2402035840510749250.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166150

/-! ## A166150.P2402035840510749250

`5*(n+1)²+5*(n+1)-9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166150

/-- `5*(n+1)²+5*(n+1)-9` -/
def P2402035840510749250.Spec : Prop :=
  ∀ n, P2402035840510749250.a n = A166150 (n + 1)

theorem P2402035840510749250.correct : P2402035840510749250.Spec := by
  intro n
  simp only [A166150, Nat.add_sub_cancel]

end A166150

/-! ## A166150.P9378901654764387255

`∑[a(n-1)+10]` with `a(0)=1, a(1)=20`
-/

namespace A166150.P9378901654764387255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166150.P9378901654764387255

namespace A166150

/-- `∑[a(n-1)+10]` -/
def P9378901654764387255.Spec : Prop :=
  ∀ n, (P9378901654764387255.a n : ℤ) = A166150 (n + 1)

end A166150

/-! ## A166150.P5226890957498773483

`or(1, 5*n*(n+3))`
-/

namespace A166150.P5226890957498773483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * (n * (n + 3)))

end

end A166150.P5226890957498773483

namespace A166150

/-- `or(1, 5*n*(n+3))` -/
def P5226890957498773483.Spec : Prop :=
  ∀ n, (P5226890957498773483.a n : ℤ) = A166150 (n + 1)

end A166150

/-! ## A166150.P5641618972779158196

`xor(1, 5*n*(n+3))`
-/

namespace A166150.P5641618972779158196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * (n * (n + 3)))

end

end A166150.P5641618972779158196

namespace A166150

/-- `xor(1, 5*n*(n+3))` -/
def P5641618972779158196.Spec : Prop :=
  ∀ n, (P5641618972779158196.a n : ℤ) = A166150 (n + 1)

end A166150

/-! ## A166150.P3049233955422667685

`record[or(1, 5*n*(n-3))]`
-/

namespace A166150.P3049233955422667685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (5 * ((n : ℤ) * ((n : ℤ) - 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166150.P3049233955422667685

namespace A166150

/-- `record[or(1, 5*n*(n-3))]` -/
def P3049233955422667685.Spec : Prop :=
  ∀ n, P3049233955422667685.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P12811113599942597826

`record[xor(1, 5*n*(n-3))]`
-/

namespace A166150.P12811113599942597826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * ((n : ℤ) * ((n : ℤ) - 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166150.P12811113599942597826

namespace A166150

/-- `record[xor(1, 5*n*(n-3))]` -/
def P12811113599942597826.Spec : Prop :=
  ∀ n, P12811113599942597826.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P3849536428345209702

`∑[(n+1)*10%(n+3)²]`
-/

namespace A166150.P3849536428345209702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (10 % (n + 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166150.P3849536428345209702

namespace A166150

/-- `∑[(n+1)*10%(n+3)²]` -/
def P3849536428345209702.Spec : Prop :=
  ∀ n, (P3849536428345209702.a n : ℤ) = A166150 (n + 1)

end A166150

/-! ## A166150.P7950398909838194884

`((n+3)*A008592(n)+2)/2`
-/

namespace A166150.P7950398909838194884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A008592 n + 2 : ℚ) / 2

end

end A166150.P7950398909838194884

namespace A166150

/-- `((n+3)*A008592(n)+2)/2` -/
def P7950398909838194884.Spec : Prop :=
  ∀ n, P7950398909838194884.a n = (A166150 (n + 1) : ℚ)

theorem P7950398909838194884.correct : P7950398909838194884.Spec := by
  intro n
  simp only [A166150, Nat.add_sub_cancel, A166150.P7950398909838194884.a, A166150.P2402035840510749250.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166150

/-! ## A166150.P13543299066282922144

`A193249(n+1)%A085025(n)`
-/

namespace A166150.P13543299066282922144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193249 (n + 1)) (A085025 n)

end

end A166150.P13543299066282922144

namespace A166150

/-- `A193249(n+1)%A085025(n)` -/
def P13543299066282922144.Spec : Prop :=
  ∀ n, P13543299066282922144.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P15122230029678838897

`abs(9-∑[A008592(n+1)])`
-/

namespace A166150.P15122230029678838897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166150.P15122230029678838897

namespace A166150

/-- `abs(9-∑[A008592(n+1)])` -/
def P15122230029678838897.Spec : Prop :=
  ∀ n, P15122230029678838897.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P8477224558268821180

`∑[A053715(2*n+1)]`
-/

namespace A166150.P8477224558268821180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053715 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166150.P8477224558268821180

namespace A166150

/-- `∑[A053715(2*n+1)]` -/
def P8477224558268821180.Spec : Prop :=
  ∀ n, P8477224558268821180.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P4108101641959370093

`∑[(n+1)*A072988(2*n)]`
-/

namespace A166150.P4108101641959370093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072988 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166150.P4108101641959370093

namespace A166150

/-- `∑[(n+1)*A072988(2*n)]` -/
def P4108101641959370093.Spec : Prop :=
  ∀ n, P4108101641959370093.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P5273855467946971817

`A017281(∑[n]+n)`
-/

namespace A166150.P5273855467946971817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166150.P5273855467946971817

namespace A166150

/-- `A017281(∑[n]+n)` -/
def P5273855467946971817.Spec : Prop :=
  ∀ n, P5273855467946971817.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P4863298308077962215

`∑[record[A059920(n+2)]]`
-/

namespace A166150.P4863298308077962215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059920 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166150.P4863298308077962215

namespace A166150

/-- `∑[record[A059920(n+2)]]` -/
def P4863298308077962215.Spec : Prop :=
  ∀ n, P4863298308077962215.a n = A166150 (n + 1)

end A166150

/-! ## A166150.P12443205512290351962

`A139222(∑[n+1])/3`
-/

namespace A166150.P12443205512290351962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139222 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A166150.P12443205512290351962

namespace A166150

/-- `A139222(∑[n+1])/3` -/
def P12443205512290351962.Spec : Prop :=
  ∀ n, P12443205512290351962.a n = (A166150 (n + 1) : ℚ)

end A166150

/-! ## A166150.P17461339445943335466

`A087446(A143978(n+1))`
-/

namespace A166150.P17461339445943335466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087446 (A143978 (n + 1)).toNat

end

end A166150.P17461339445943335466

namespace A166150

/-- `A087446(A143978(n+1))` -/
def P17461339445943335466.Spec : Prop :=
  ∀ n, P17461339445943335466.a n = A166150 (n + 1)

end A166150

/-!
# A166151: a(n) = (5*n^2 + 5*n - 6)/2.

The programs for A166151, the canonical program `A166151.P12940752801155925471` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166151 has offset 1).

The definition of A166151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*(n+1)²+5*(n+1)-6)/2` (program `A166151.P16469060165474857410`, by `A166151.P16469060165474857410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166151.P8488520705270666415

`5*(n+1)*(n+2)/2-3`
-/

namespace A166151.P8488520705270666415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) * (n + 2) : ℚ) / 2 - 3

end

end A166151.P8488520705270666415

namespace A166151

/-- `5*(n+1)*(n+2)/2-3` -/
def P8488520705270666415.Spec : Prop :=
  ∀ n, P8488520705270666415.a n = (A166151 (n + 1) : ℚ)

end A166151

/-! ## A166151.P16469060165474857410

`(5*(n+1)²+5*(n+1)-6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166151.P16469060165474857410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) ^ 2 + 5 * (n + 1) : ℤ) - 6 : ℚ) / 2

end

end A166151.P16469060165474857410

namespace A166151

/-- `(5*(n+1)²+5*(n+1)-6)/2` -/
def P16469060165474857410.Spec : Prop :=
  ∀ n, P16469060165474857410.a n = (A166151 (n + 1) : ℚ)

theorem P16469060165474857410.correct : P16469060165474857410.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166151, Nat.add_sub_cancel, A166151.P16469060165474857410.a, A166151.P12940752801155925471.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166151, Nat.add_sub_cancel, A166151.P16469060165474857410.a, A166151.P12940752801155925471.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166151

/-! ## A166151.P4347036337623237828

`∑[a(n-1)+5]` with `a(0)=2, a(1)=10`
-/

namespace A166151.P4347036337623237828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166151.P4347036337623237828

namespace A166151

/-- `∑[a(n-1)+5]` -/
def P4347036337623237828.Spec : Prop :=
  ∀ n, (P4347036337623237828.a n : ℤ) = A166151 (n + 1)

end A166151

/-! ## A166151.P4458718213218971980

`∑[ogf((2+6x-3x^2)/(1-2x+x^2))]`
-/

namespace A166151.P4458718213218971980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166151.P4458718213218971980

namespace A166151

/-- `∑[ogf((2+6x-3x^2)/(1-2x+x^2))]` -/
def P4458718213218971980.Spec : Prop :=
  ∀ n, P4458718213218971980.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P10192126298727752411

`ogf((2+6x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A166151.P10192126298727752411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -3] [1, -3, 3, -1] n

end

end A166151.P10192126298727752411

namespace A166151

/-- `ogf((2+6x-3x^2)/(1-3x+3x^2-x^3))` -/
def P10192126298727752411.Spec : Prop :=
  ∀ n, P10192126298727752411.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P14126113847388787579

`abs(3-5*C(n+2, 2))`
-/

namespace A166151.P14126113847388787579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (5 * Nat.choose (n + 2) 2 : ℤ)|

end

end A166151.P14126113847388787579

namespace A166151

/-- `abs(3-5*C(n+2, 2))` -/
def P14126113847388787579.Spec : Prop :=
  ∀ n, P14126113847388787579.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P4760167931705824782

`∑[(n+1)*5%∑[n+3]]`
-/

namespace A166151.P4760167931705824782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (5 % (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166151.P4760167931705824782

namespace A166151

/-- `∑[(n+1)*5%∑[n+3]]` -/
def P4760167931705824782.Spec : Prop :=
  ∀ n, (P4760167931705824782.a n : ℤ) = A166151 (n + 1)

end A166151

/-! ## A166151.P9871608792352850767

`abs(a(n-1)+5*(n+1))` with `a(0)=2`
-/

namespace A166151.P9871608792352850767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 5 * (n + 1)

end

end A166151.P9871608792352850767

namespace A166151

/-- `abs(a(n-1)+5*(n+1))` -/
def P9871608792352850767.Spec : Prop :=
  ∀ n, (P9871608792352850767.a n : ℤ) = A166151 (n + 1)

end A166151

/-! ## A166151.P974967145042621845

`floor(a(n-1)+5*(n+1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A166151.P974967145042621845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 5 * (n + 1)

end

end A166151.P974967145042621845

namespace A166151

/-- `floor(a(n-1)+5*(n+1))` -/
def P974967145042621845.Spec : Prop :=
  ∀ n, (P974967145042621845.a n : ℤ) = A166151 (n + 1)

end A166151

/-! ## A166151.P4620440991430009379

`ceil(a(n-1)+5*(n+1))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A166151.P4620440991430009379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 5 * (n + 1)

end

end A166151.P4620440991430009379

namespace A166151

/-- `ceil(a(n-1)+5*(n+1))` -/
def P4620440991430009379.Spec : Prop :=
  ∀ n, (P4620440991430009379.a n : ℤ) = A166151 (n + 1)

end A166151

/-! ## A166151.P12940752801155925471

`round(a(n-1)+5*(n+1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166151

/-- `round(a(n-1)+5*(n+1))` -/
def P12940752801155925471.Spec : Prop :=
  ∀ n, (P12940752801155925471.a n : ℤ) = A166151 (n + 1)

theorem P12940752801155925471.correct : P12940752801155925471.Spec := by
  intro n
  simp only [A166151, Nat.add_sub_cancel]

end A166151

/-! ## A166151.P10003592529794358843

`∑[∪[5*(n+2), (n+2)!!]]`
-/

namespace A166151.P10003592529794358843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166151.P10003592529794358843

namespace A166151

/-- `∑[∪[5*(n+2), (n+2)!!]]` -/
def P10003592529794358843.Spec : Prop :=
  ∀ n, (P10003592529794358843.a n : ℤ) = A166151 (n + 1)

end A166151

/-! ## A166151.P8280954760124720165

`record[a(n-1)+5*(n-3)]` with `a(0)=2, a(1)=2`
-/

namespace A166151.P8280954760124720165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) + 5 * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166151.P8280954760124720165

namespace A166151

/-- `record[a(n-1)+5*(n-3)]` -/
def P8280954760124720165.Spec : Prop :=
  ∀ n, P8280954760124720165.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P11037572110870855811

`abs(3-∑[A016897(n)+1])`
-/

namespace A166151.P11037572110870855811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166151.P11037572110870855811

namespace A166151

/-- `abs(3-∑[A016897(n)+1])` -/
def P11037572110870855811.Spec : Prop :=
  ∀ n, P11037572110870855811.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P12066617507011676111

`abs(3-∑[A016885(n)+2])`
-/

namespace A166151.P12066617507011676111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166151.P12066617507011676111

namespace A166151

/-- `abs(3-∑[A016885(n)+2])` -/
def P12066617507011676111.Spec : Prop :=
  ∀ n, P12066617507011676111.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P7085504323148772972

`abs(3-∑[A016873(n)+3])`
-/

namespace A166151.P7085504323148772972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166151.P7085504323148772972

namespace A166151

/-- `abs(3-∑[A016873(n)+3])` -/
def P7085504323148772972.Spec : Prop :=
  ∀ n, P7085504323148772972.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P13936036037515749406

`abs(3-5*A000217(n+1))`
-/

namespace A166151.P13936036037515749406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 5 * A000217 (n + 1)|

end

end A166151.P13936036037515749406

namespace A166151

/-- `abs(3-5*A000217(n+1))` -/
def P13936036037515749406.Spec : Prop :=
  ∀ n, P13936036037515749406.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P2688048775991031175

`∑[(n+1)*A374359(n+1)]`
-/

namespace A166151.P2688048775991031175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166151.P2688048775991031175

namespace A166151

/-- `∑[(n+1)*A374359(n+1)]` -/
def P2688048775991031175.Spec : Prop :=
  ∀ n, P2688048775991031175.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P11505389098602335331

`record[3*(1-n)²-∑[n+1]]`
-/

namespace A166151.P11505389098602335331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - (n : ℤ)) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166151.P11505389098602335331

namespace A166151

/-- `record[3*(1-n)²-∑[n+1]]` -/
def P11505389098602335331.Spec : Prop :=
  ∀ n, P11505389098602335331.a n = A166151 (n + 1)

end A166151

/-! ## A166151.P2849447523369912618

`∑[record[A266084(n+3)]]`
-/

namespace A166151.P2849447523369912618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266084 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166151.P2849447523369912618

namespace A166151

/-- `∑[record[A266084(n+3)]]` -/
def P2849447523369912618.Spec : Prop :=
  ∀ n, P2849447523369912618.a n = A166151 (n + 1)

end A166151

/-!
# A166152: a(n) = (6^n+12*(-7)^n)/13.

The programs for A166152, the canonical program `A166152.P15118070601452558485` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166152 has offset 0).

The definition of A166152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n+12*(-7)^n)/13` (program `A166152.P1961734631878687436`, by `A166152.P1961734631878687436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166152.P15118070601452558485

`42*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166152

/-- `42*a(n-2)-a(n-1)` -/
def P15118070601452558485.Spec : Prop :=
  ∀ n, P15118070601452558485.a n = A166152 n

theorem P15118070601452558485.correct : P15118070601452558485.Spec := by
  intro n
  simp only [A166152]

end A166152

/-! ## A166152.P1961734631878687436

`(6^n+12*(-7)^n)/13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166152.P1961734631878687436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) + 12 * (-7) ^ n : ℚ) / 13

end

end A166152.P1961734631878687436

namespace A166152

/-- `(6^n+12*(-7)^n)/13` -/
def P1961734631878687436.Spec : Prop :=
  ∀ n, P1961734631878687436.a n = (A166152 n : ℚ)

theorem P1961734631878687436.correct : P1961734631878687436.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166152, Nat.add_sub_cancel, A166152.P1961734631878687436.a, A166152.P15118070601452558485.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166152, Nat.add_sub_cancel, A166152.P1961734631878687436.a, A166152.P15118070601452558485.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166152

/-!
# A166153: a(n) = (7^n+14*(-8)^n)/15.

The programs for A166153, the canonical program `A166153.P5102803508048242724` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166153 has offset 0).

The definition of A166153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n+14*(-8)^n)/15` (program `A166153.P17281645110466670735`, by `A166153.P17281645110466670735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166153.P5102803508048242724

`56*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166153

/-- `56*a(n-2)-a(n-1)` -/
def P5102803508048242724.Spec : Prop :=
  ∀ n, P5102803508048242724.a n = A166153 n

theorem P5102803508048242724.correct : P5102803508048242724.Spec := by
  intro n
  simp only [A166153]

end A166153

/-! ## A166153.P17281645110466670735

`(7^n+14*(-8)^n)/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166153.P17281645110466670735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) + 14 * (-8) ^ n : ℚ) / 15

end

end A166153.P17281645110466670735

namespace A166153

/-- `(7^n+14*(-8)^n)/15` -/
def P17281645110466670735.Spec : Prop :=
  ∀ n, P17281645110466670735.a n = (A166153 n : ℚ)

theorem P17281645110466670735.correct : P17281645110466670735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166153, Nat.add_sub_cancel, A166153.P17281645110466670735.a, A166153.P5102803508048242724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166153, Nat.add_sub_cancel, A166153.P17281645110466670735.a, A166153.P5102803508048242724.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166153

/-!
# A166154: a(n) = 7*n*(n+1)/2 - 5.

The programs for A166154, the canonical program `A166154.P16831314308526712453` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166154 has offset 1).

The definition of A166154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)*(n+2)/2-5` (program `A166154.P4867119562097318228`, by `A166154.P4867119562097318228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166154.P16831314308526712453

`a(n-1)+7*(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166154

/-- `a(n-1)+7*(n+1)` -/
def P16831314308526712453.Spec : Prop :=
  ∀ n, (P16831314308526712453.a n : ℤ) = A166154 (n + 1)

theorem P16831314308526712453.correct : P16831314308526712453.Spec := by
  intro n
  simp only [A166154, Nat.add_sub_cancel]

end A166154

/-! ## A166154.P4867119562097318228

`7*(n+1)*(n+2)/2-5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166154.P4867119562097318228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) * (n + 2) : ℚ) / 2 - 5

end

end A166154.P4867119562097318228

namespace A166154

/-- `7*(n+1)*(n+2)/2-5` -/
def P4867119562097318228.Spec : Prop :=
  ∀ n, P4867119562097318228.a n = (A166154 (n + 1) : ℚ)

theorem P4867119562097318228.correct : P4867119562097318228.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166154, Nat.add_sub_cancel, A166154.P4867119562097318228.a, A166154.P16831314308526712453.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166154, Nat.add_sub_cancel, A166154.P4867119562097318228.a, A166154.P16831314308526712453.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166154

/-! ## A166154.P9336409424278491754

`∑[a(n-1)+7]` with `a(0)=2, a(1)=14`
-/

namespace A166154.P9336409424278491754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 14] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P9336409424278491754

namespace A166154

/-- `∑[a(n-1)+7]` -/
def P9336409424278491754.Spec : Prop :=
  ∀ n, (P9336409424278491754.a n : ℤ) = A166154 (n + 1)

end A166154

/-! ## A166154.P14687993155439911559

`∑[ogf((2+10x-5x^2)/(1-2x+x^2))]`
-/

namespace A166154.P14687993155439911559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P14687993155439911559

namespace A166154

/-- `∑[ogf((2+10x-5x^2)/(1-2x+x^2))]` -/
def P14687993155439911559.Spec : Prop :=
  ∀ n, P14687993155439911559.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P4991872576999522761

`ogf((2+10x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A166154.P4991872576999522761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, -5] [1, -3, 3, -1] n

end

end A166154.P4991872576999522761

namespace A166154

/-- `ogf((2+10x-5x^2)/(1-3x+3x^2-x^3))` -/
def P4991872576999522761.Spec : Prop :=
  ∀ n, P4991872576999522761.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P18382762804353882332

`record[7*(C(n, 2)-n)+2]`
-/

namespace A166154.P18382762804353882332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((Nat.choose n 2 : ℤ) - (n : ℤ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166154.P18382762804353882332

namespace A166154

/-- `record[7*(C(n, 2)-n)+2]` -/
def P18382762804353882332.Spec : Prop :=
  ∀ n, P18382762804353882332.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P10836228780811415354

`∑[(n+1)*7%∑[n+5]]`
-/

namespace A166154.P10836228780811415354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (7 % (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P10836228780811415354

namespace A166154

/-- `∑[(n+1)*7%∑[n+5]]` -/
def P10836228780811415354.Spec : Prop :=
  ∀ n, (P10836228780811415354.a n : ℤ) = A166154 (n + 1)

end A166154

/-! ## A166154.P11700666573077033839

`record[7*(A000217(n)-2*n)+2]`
-/

namespace A166154.P11700666573077033839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A000217 n - (2 * n : ℤ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166154.P11700666573077033839

namespace A166154

/-- `record[7*(A000217(n)-2*n)+2]` -/
def P11700666573077033839.Spec : Prop :=
  ∀ n, P11700666573077033839.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P10488004633672980550

`floor(A016993(n)+(n*7*(n+1)+2)/2)`
-/

namespace A166154.P10488004633672980550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016993 n : ℚ) + (n * (7 * (n + 1)) + 2 : ℚ) / 2⌋

end

end A166154.P10488004633672980550

namespace A166154

/-- `floor(A016993(n)+(n*7*(n+1)+2)/2)` -/
def P10488004633672980550.Spec : Prop :=
  ∀ n, P10488004633672980550.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P4149235829794225407

`abs(A016993(n)+∑[A022144(n)-n])`
-/

namespace A166154.P4149235829794225407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016993 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166154.P4149235829794225407

namespace A166154

/-- `abs(A016993(n)+∑[A022144(n)-n])` -/
def P4149235829794225407.Spec : Prop :=
  ∀ n, P4149235829794225407.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P3802062966308923786

`abs(A054552(n+1)+6*n-A000217(n))`
-/

namespace A166154.P3802062966308923786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054552 (n + 1) + (6 * n : ℤ) - A000217 n|

end

end A166154.P3802062966308923786

namespace A166154

/-- `abs(A054552(n+1)+6*n-A000217(n))` -/
def P3802062966308923786.Spec : Prop :=
  ∀ n, P3802062966308923786.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P394772381282244453

`record[(2*(n-1))²-∑[n+2]]`
-/

namespace A166154.P394772381282244453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166154.P394772381282244453

namespace A166154

/-- `record[(2*(n-1))²-∑[n+2]]` -/
def P394772381282244453.Spec : Prop :=
  ∀ n, P394772381282244453.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P3545669144809527405

`∑[A130773(A171463(n+1))+5*n]`
-/

namespace A166154.P3545669144809527405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A171463 (n + 1)).toNat + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P3545669144809527405

namespace A166154

/-- `∑[A130773(A171463(n+1))+5*n]` -/
def P3545669144809527405.Spec : Prop :=
  ∀ n, P3545669144809527405.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P10446841852985582036

`∑[(n+1)*A137282(2*n+1)]`
-/

namespace A166154.P10446841852985582036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A137282 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P10446841852985582036

namespace A166154

/-- `∑[(n+1)*A137282(2*n+1)]` -/
def P10446841852985582036.Spec : Prop :=
  ∀ n, P10446841852985582036.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P1640542119318880237

`∑[record[A001204(n+1)-n]]`
-/

namespace A166154.P1640542119318880237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P1640542119318880237

namespace A166154

/-- `∑[record[A001204(n+1)-n]]` -/
def P1640542119318880237.Spec : Prop :=
  ∀ n, P1640542119318880237.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P10628319395642542184

`A017005(∑[n]+n)`
-/

namespace A166154.P10628319395642542184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166154.P10628319395642542184

namespace A166154

/-- `A017005(∑[n]+n)` -/
def P10628319395642542184.Spec : Prop :=
  ∀ n, P10628319395642542184.a n = A166154 (n + 1)

end A166154

/-! ## A166154.P75781122381487398

`∑[A213579(∑[n+3])]`
-/

namespace A166154.P75781122381487398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166154.P75781122381487398

namespace A166154

/-- `∑[A213579(∑[n+3])]` -/
def P75781122381487398.Spec : Prop :=
  ∀ n, P75781122381487398.a n = A166154 (n + 1)

end A166154

/-!
# A166155: Numbers n such that number of divisors of n + number of perfect partitions of (n-1) is prime.

The programs for A166155, there is no canonical definition to state claims against.
-/

/-! ## A166155.P4210925424181520647

`filter[A354144(n+1), A355823(#)]`
-/

namespace A166155.P4210925424181520647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A166155.P4210925424181520647

/-! ## A166155.P1509360604082314366

`filter[A354144(n+1), A355825(#)]`
-/

namespace A166155.P1509360604082314366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A166155.P1509360604082314366

/-! ## A166155.P11486240323763073596

`∪[A037143(n+1), A099980(n)²]`
-/

namespace A166155.P11486240323763073596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099980 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166155.P11486240323763073596

/-! ## A166155.P10725588181213257970

`eq[1, A000001(A292504(n+1))]+1`
-/

namespace A166155.P10725588181213257970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A292504 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166155.P10725588181213257970

/-! ## A166155.P5707782592737736092

`eq[1, A381637(A140773(n+1))]+1`
-/

namespace A166155.P5707782592737736092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381637 (A140773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166155.P5707782592737736092

/-! ## A166155.P18118710190693004952

`lt[A194003(A063647(n+1)), 2]+1`
-/

namespace A166155.P18118710190693004952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (A063647 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166155.P18118710190693004952

/-! ## A166155.P11244418235562772322

`lt[A269678(A046523(n+1)), 10]+1`
-/

namespace A166155.P11244418235562772322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A046523 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166155.P11244418235562772322

/-! ## A166155.P11064830714796940619

`∪[A001358(n+1), A026477(n+1)]`
-/

namespace A166155.P11064830714796940619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166155.P11064830714796940619

/-! ## A166155.P11852125560066917709

`∪[A026477(n+1), A037143(n+1)]`
-/

namespace A166155.P11852125560066917709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166155.P11852125560066917709

/-! ## A166155.P15591081368756085642

`∪[A001358(n+1), A323520(n+1)]`
-/

namespace A166155.P15591081368756085642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166155.P15591081368756085642

/-!
# A166156: Numbers k such that phi(k) = number of perfect partitions of (k-1).

The programs for A166156, there is no canonical definition to state claims against.
-/

/-! ## A166156.P2506878105104905033

`eq[A000010(n+1), A002033(n)]+1`
-/

namespace A166156.P2506878105104905033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166156.P2506878105104905033

/-! ## A166156.P9382499532963890103

`eq[A000010(A028310(n)), A074206(n)]`
-/

namespace A166156.P9382499532963890103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166156.P9382499532963890103

/-! ## A166156.P16998107778163940728

`eq[A000010(2*A065033(n)), A074206(n)]`
-/

namespace A166156.P16998107778163940728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166156.P16998107778163940728

/-! ## A166156.P7832244147629800976

`record[A060789(A122408(n+1))]`
-/

namespace A166156.P7832244147629800976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A122408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166156.P7832244147629800976

/-! ## A166156.P5097857800905136234

`∩[A034776(n+1), A326669(n+1)]`
-/

namespace A166156.P5097857800905136234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166156.P5097857800905136234

/-!
# A166157: a(n) = (8^n+16*(-9)^n)/17.

The programs for A166157, the canonical program `A166157.P11637669757812422235` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166157 has offset 0).

The definition of A166157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n+16*(-9)^n)/17` (program `A166157.P5914212823272365996`, by `A166157.P5914212823272365996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166157.P11637669757812422235

`72*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166157

/-- `72*a(n-2)-a(n-1)` -/
def P11637669757812422235.Spec : Prop :=
  ∀ n, P11637669757812422235.a n = A166157 n

theorem P11637669757812422235.correct : P11637669757812422235.Spec := by
  intro n
  simp only [A166157]

end A166157

/-! ## A166157.P5914212823272365996

`(8^n+16*(-9)^n)/17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166157.P5914212823272365996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) + 16 * (-9) ^ n : ℚ) / 17

end

end A166157.P5914212823272365996

namespace A166157

/-- `(8^n+16*(-9)^n)/17` -/
def P5914212823272365996.Spec : Prop :=
  ∀ n, P5914212823272365996.a n = (A166157 n : ℚ)

theorem P5914212823272365996.correct : P5914212823272365996.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166157, Nat.add_sub_cancel, A166157.P5914212823272365996.a, A166157.P11637669757812422235.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166157, Nat.add_sub_cancel, A166157.P5914212823272365996.a, A166157.P11637669757812422235.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166157

/-!
# A166158: Numbers n such that phi(n)+ number of perfect partitions of (n-1) is prime.

The programs for A166158, there is no canonical definition to state claims against.
-/

/-! ## A166158.P7473442167559052820

`eq[1, A001065(A225530(n)+A074206(n))]`
-/

namespace A166158.P7473442167559052820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P7473442167559052820

/-! ## A166158.P12527399037757631936

`eq[1, A001222(A225530(n)+A074206(n))]`
-/

namespace A166158.P12527399037757631936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P12527399037757631936

/-! ## A166158.P5070319913653435162

`eq[1, A003415(A225530(n)+A074206(n))]`
-/

namespace A166158.P5070319913653435162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P5070319913653435162

/-! ## A166158.P16168786710031315499

`eq[1, A008481(A225530(n)+A074206(n))]`
-/

namespace A166158.P16168786710031315499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P16168786710031315499

/-! ## A166158.P7845324516320123799

`eq[1, A010051(A225530(n)+A074206(n))]`
-/

namespace A166158.P7845324516320123799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P7845324516320123799

/-! ## A166158.P3640336411112603706

`eq[1, A051953(A225530(n)+A074206(n))]`
-/

namespace A166158.P3640336411112603706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P3640336411112603706

/-! ## A166158.P5401296931193061304

`eq[1, A076526(A225530(n)+A074206(n))]`
-/

namespace A166158.P5401296931193061304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P5401296931193061304

/-! ## A166158.P14457961898378264866

`eq[1, A076558(A225530(n)+A074206(n))]`
-/

namespace A166158.P14457961898378264866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076558 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P14457961898378264866

/-! ## A166158.P14891391175577174755

`eq[2, A000005(A225530(n)+A074206(n))]`
-/

namespace A166158.P14891391175577174755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A225530 n + A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166158.P14891391175577174755

/-! ## A166158.P4838991024964474532

`eq[2, A101296(A002033(n)+A000010(n+1))]+1`
-/

namespace A166158.P4838991024964474532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A002033 n + A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166158.P4838991024964474532

/-!
# A166159: Numbers k such that phi(k) + number of perfect partitions of (k-1) = k.

The programs for A166159, there is no canonical definition to state claims against.
-/

/-! ## A166159.P7661648817238187517

`eq[n, A225530(n)+A074206(n)]`
-/

namespace A166159.P7661648817238187517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n + A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166159.P7661648817238187517

/-! ## A166159.P3387445316107240464

`eq[A002033(n), A051953(n+1)]+1`
-/

namespace A166159.P3387445316107240464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166159.P3387445316107240464

/-! ## A166159.P11759525887115320305

`record[(A002033(n)+A000010(n+1))%(n+3)]`
-/

namespace A166159.P11759525887115320305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 n + A000010 (n + 1)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166159.P11759525887115320305

/-! ## A166159.P11204349502692969408

`eq[n, A074206(n)+A000010(A028310(n))]`
-/

namespace A166159.P11204349502692969408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n + A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166159.P11204349502692969408

/-! ## A166159.P13527767937410284356

`eq[A236836(n)-A074206(n), A225530(n)]`
-/

namespace A166159.P13527767937410284356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n - A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166159.P13527767937410284356

/-! ## A166159.P12920746907601157763

`eq[n, A074206(n)+A000010(A233583(n+1))]`
-/

namespace A166159.P12920746907601157763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n + A000010 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166159.P12920746907601157763

/-!
# A166160: a(n) = (n-th odd prime + n-th odd nonprime)/2 - 1.

The programs for A166160, the canonical program `A166160.P15900755279161251971` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166160 has offset 1).

The definition of A166160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166160.P15900755279161251971

`A005097(n+1)+A047845(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A166160

/-- `A005097(n+1)+A047845(n+1)` -/
def P15900755279161251971.Spec : Prop :=
  ∀ n, P15900755279161251971.a n = A166160 (n + 1)

theorem P15900755279161251971.correct : P15900755279161251971.Spec := by
  intro n
  simp only [A166160, Nat.add_sub_cancel]

end A166160

/-! ## A166160.P12188684551096754998

`(A065091(n+1)+A014076(n+1))/2-1`
-/

namespace A166160.P12188684551096754998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + A014076 (n + 1) : ℚ) / 2 - 1

end

end A166160.P12188684551096754998

namespace A166160

/-- `(A065091(n+1)+A014076(n+1))/2-1` -/
def P12188684551096754998.Spec : Prop :=
  ∀ n, P12188684551096754998.a n = (A166160 (n + 1) : ℚ)

end A166160

/-! ## A166160.P3724611207906711996

`A104275(n+1)+A067076(n+1)`
-/

namespace A166160.P3724611207906711996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + A067076 (n + 1)

end

end A166160.P3724611207906711996

namespace A166160

/-- `A104275(n+1)+A067076(n+1)` -/
def P3724611207906711996.Spec : Prop :=
  ∀ n, P3724611207906711996.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P12670183520099535068

`A047845(n+1)+A067076(n+1)+1`
-/

namespace A166160.P12670183520099535068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + (A067076 (n + 1) + 1)

end

end A166160.P12670183520099535068

namespace A166160

/-- `A047845(n+1)+A067076(n+1)+1` -/
def P12670183520099535068.Spec : Prop :=
  ∀ n, P12670183520099535068.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P14260960600249838573

`A006254(n+1)+A047845(n+1)-1`
-/

namespace A166160.P14260960600249838573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (A047845 (n + 1) - 1)

end

end A166160.P14260960600249838573

namespace A166160

/-- `A006254(n+1)+A047845(n+1)-1` -/
def P14260960600249838573.Spec : Prop :=
  ∀ n, P14260960600249838573.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P16150954474947899231

`A005097(n+1)+A104275(n+1)-1`
-/

namespace A166160.P16150954474947899231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A104275 (n + 1) - 1)

end

end A166160.P16150954474947899231

namespace A166160

/-- `A005097(n+1)+A104275(n+1)-1` -/
def P16150954474947899231.Spec : Prop :=
  ∀ n, P16150954474947899231.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P17736444767243265089

`A067076(n+1)+A153043(n+1)-1`
-/

namespace A166160.P17736444767243265089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (A153043 (n + 1) - 1)

end

end A166160.P17736444767243265089

namespace A166160

/-- `A067076(n+1)+A153043(n+1)-1` -/
def P17736444767243265089.Spec : Prop :=
  ∀ n, P17736444767243265089.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P15523047647264336615

`comp[A175540(n+1)-n]+A175540(n+1)-n`
-/

namespace A166160.P15523047647264336615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (A175540 (n + 1) - (n : ℤ))

end

end A166160.P15523047647264336615

namespace A166160

/-- `comp[A175540(n+1)-n]+A175540(n+1)-n` -/
def P15523047647264336615.Spec : Prop :=
  ∀ n, P15523047647264336615.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P4519359216487633810

`A102781(n+2)+A047845(n+1)`
-/

namespace A166160.P4519359216487633810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) + A047845 (n + 1)

end

end A166160.P4519359216487633810

namespace A166160

/-- `A102781(n+2)+A047845(n+1)` -/
def P4519359216487633810.Spec : Prop :=
  ∀ n, P4519359216487633810.a n = A166160 (n + 1)

theorem P4519359216487633810.correct : P4519359216487633810.Spec := by
  intro n
  simp only [A166160, Nat.add_sub_cancel, A166160.P4519359216487633810.a, A166160.P15900755279161251971.a, A005097, A005097.P2146150579650678334.a, A047845, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A102781, A102781.P673049022325180502.a, A006005, A006005.P1228063357782503489.a, A101264, A101264.P18132826973570150985.a, A130290, A130290.P12006832031725450867.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166160

/-! ## A166160.P8938109097923320541

`A130290(n+2)+comp[A130290(n+1)]`
-/

namespace A166160.P8938109097923320541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A166160.P8938109097923320541

namespace A166160

/-- `A130290(n+2)+comp[A130290(n+1)]` -/
def P8938109097923320541.Spec : Prop :=
  ∀ n, P8938109097923320541.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P15073123806986030622

`A104275(n+1)+A000040(n+2)-A098090(n+1)`
-/

namespace A166160.P15073123806986030622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + (A000040 (n + 2) - A098090 (n + 1))

end

end A166160.P15073123806986030622

namespace A166160

/-- `A104275(n+1)+A000040(n+2)-A098090(n+1)` -/
def P15073123806986030622.Spec : Prop :=
  ∀ n, P15073123806986030622.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P3974589590640163838

`A153049(n+1)+A000040(n+2)-A097480(n+1)`
-/

namespace A166160.P3974589590640163838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) + (A000040 (n + 2) - A097480 (n + 1))

end

end A166160.P3974589590640163838

namespace A166160

/-- `A153049(n+1)+A000040(n+2)-A097480(n+1)` -/
def P3974589590640163838.Spec : Prop :=
  ∀ n, P3974589590640163838.a n = A166160 (n + 1)

end A166160

/-! ## A166160.P1572169113876689343

`A104275(n+1)+A078444(n+2)-A006254(n+2)`
-/

namespace A166160.P1572169113876689343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + (A078444 (n + 2) - A006254 (n + 2))

end

end A166160.P1572169113876689343

namespace A166160

/-- `A104275(n+1)+A078444(n+2)-A006254(n+2)` -/
def P1572169113876689343.Spec : Prop :=
  ∀ n, P1572169113876689343.a n = A166160 (n + 1)

end A166160

/-!
# A166161: Numbers k such that k minus the number of perfect partitions of (k-1) is a prime.

The programs for A166161, there is no canonical definition to state claims against.
-/

/-! ## A166161.P1429661966687980095

`eq[2, A074206((n-A074206(n))²)]`
-/

namespace A166161.P1429661966687980095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (((n : ℤ) - A074206 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166161.P1429661966687980095

/-!
# A166162: Twin prime averages which are also the sum of the divisors of a triangular number.

The programs for A166162, there is no canonical definition to state claims against.
-/

/-! ## A166162.P17580464840701745393

`A000203(∩[A072282(n+1), ∑[n]])`
-/

namespace A166162.P17580464840701745393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A166162.P17580464840701745393

/-!
# A166163: a(n) = the largest possible prime made by inserting either a 0 or a 1 anywhere in the binary representation of the n-th prime, then converting to decimal.

The programs for A166163, there is no canonical definition to state claims against.
-/

/-! ## A166163.P7701378466603285177

`A094802(A229067(n+1))`
-/

namespace A166163.P7701378466603285177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A229067 (n + 1)).toNat

end

end A166163.P7701378466603285177

/-! ## A166163.P15502122523087692586

`A092674(A002181(A092674(A002181(n+2))))`
-/

namespace A166163.P15502122523087692586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (A002181 (A092674 (A002181 (n + 2)).toNat).toNat).toNat

end

end A166163.P15502122523087692586

/-!
# A166164: a(n) = the smallest possible prime > a(n-1) made by inserting either a 0 or a 1 anywhere in the binary representation of a(n-1) (including possibly between any two leading 0's), then converting to decimal.

The programs for A166164, there is no canonical definition to state claims against.
-/

/-! ## A166164.P1861299310309290203

`A294472(A164413(n))`
-/

namespace A166164.P1861299310309290203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (A164413 n).toNat

end

end A166164.P1861299310309290203

/-! ## A166164.P16890740220706451150

`A321578(A149845(n+1))`
-/

namespace A166164.P16890740220706451150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A149845 (n + 1)).toNat

end

end A166164.P16890740220706451150

/-! ## A166164.P14357249651157515932

`A334266(A303668(n+1))`
-/

namespace A166164.P14357249651157515932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334266 (A303668 (n + 1)).toNat

end

end A166164.P14357249651157515932

/-! ## A166164.P17729667195959918517

`A304713(ceil(sqrt(A212262(n))))`
-/

namespace A166164.P17729667195959918517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 ⌈Real.sqrt (A212262 n : ℝ)⌉.toNat

end

end A166164.P17729667195959918517

/-!
# A166168: G.f.: exp( Sum_{n>=1} Lucas(n^2)*x^n/n ) where Lucas(n) = A000204(n).

The programs for A166168, there is no canonical definition to state claims against.
-/

/-! ## A166168.P6339429628956357534

`A048147(∑[A003024(n)])`
-/

namespace A166168.P6339429628956357534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166168.P6339429628956357534

/-!
# A166169: a(n) = Lucas(n^2) = A000204(n^2) for n >= 1.

The programs for A166169, the canonical program `A166169.P2397110666755841043` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166169 has offset 1).

The definition of A166169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166169.P13797061339475234200

`((1+sqrt(5))/2)^(n+1)²+((1-sqrt(5))/2)^(n+1)²`
-/

namespace A166169.P13797061339475234200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) ^ 2 + ((1 - Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) ^ 2

end

end A166169.P13797061339475234200

namespace A166169

/-- `((1+sqrt(5))/2)^(n+1)²+((1-sqrt(5))/2)^(n+1)²` -/
def P13797061339475234200.Spec : Prop :=
  ∀ n, P13797061339475234200.a n = (A166169 (n + 1) : ℝ)

end A166169

/-! ## A166169.P2397110666755841043

`A000204((n+1)²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166169

/-- `A000204((n+1)²)` -/
def P2397110666755841043.Spec : Prop :=
  ∀ n, P2397110666755841043.a n = A166169 (n + 1)

theorem P2397110666755841043.correct : P2397110666755841043.Spec := by
  intro n
  simp only [A166169, Nat.add_sub_cancel]

end A166169

/-! ## A166169.P10067872862978370549

`round(ϕ^∪[(2*n)², (n+2)²])`
-/

namespace A166169.P10067872862978370549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A166169.P10067872862978370549

namespace A166169

/-- `round(ϕ^∪[(2*n)², (n+2)²])` -/
def P10067872862978370549.Spec : Prop :=
  ∀ n, P10067872862978370549.a n = A166169 (n + 1)

end A166169

/-! ## A166169.P10896271529834049418

`round(ϕ^((n+1)%(2*n+1))²)`
-/

namespace A166169.P10896271529834049418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (2 * n + 1)) ^ 2)

end

end A166169.P10896271529834049418

namespace A166169

/-- `round(ϕ^((n+1)%(2*n+1))²)` -/
def P10896271529834049418.Spec : Prop :=
  ∀ n, P10896271529834049418.a n = A166169 (n + 1)

end A166169

/-! ## A166169.P10875249361742912614

`A000032((n+1)²)`
-/

namespace A166169.P10875249361742912614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((n + 1) ^ 2)

end

end A166169.P10875249361742912614

namespace A166169

/-- `A000032((n+1)²)` -/
def P10875249361742912614.Spec : Prop :=
  ∀ n, P10875249361742912614.a n = A166169 (n + 1)

end A166169

/-!
# A166173: Digit sum of n-th twin prime pair.

The programs for A166173, the canonical program `A166173.P17158240679124746959` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166173 has offset 1).

The definition of A166173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166173.P17158240679124746959

`A007953(A001359(n+1))+A007953(A006512(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166173

/-- `A007953(A001359(n+1))+A007953(A006512(n+1))` -/
def P17158240679124746959.Spec : Prop :=
  ∀ n, P17158240679124746959.a n = A166173 (n + 1)

theorem P17158240679124746959.correct : P17158240679124746959.Spec := by
  intro n
  simp only [A166173, Nat.add_sub_cancel]

end A166173

/-! ## A166173.P5770366756976121551

`∑{digits}[A107309(n), #]`
-/

namespace A166173.P5770366756976121551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P5770366756976121551

namespace A166173

/-- `∑{digits}[A107309(n), #]` -/
def P5770366756976121551.Spec : Prop :=
  ∀ n, (P5770366756976121551.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P33029928238575170

`∑{digits}[A095958(n+1), #]`
-/

namespace A166173.P33029928238575170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P33029928238575170

namespace A166173

/-- `∑{digits}[A095958(n+1), #]` -/
def P33029928238575170.Spec : Prop :=
  ∀ n, (P33029928238575170.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P4693468013329462941

`∑{digits}[A045533(A029707(n+1)), #]`
-/

namespace A166173.P4693468013329462941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A029707 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P4693468013329462941

namespace A166173

/-- `∑{digits}[A045533(A029707(n+1)), #]` -/
def P4693468013329462941.Spec : Prop :=
  ∀ n, (P4693468013329462941.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P12647536485459471183

`∑{digits}[A045533(A107770(n+1)-1), #]`
-/

namespace A166173.P12647536485459471183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A107770 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P12647536485459471183

namespace A166173

/-- `∑{digits}[A045533(A107770(n+1)-1), #]` -/
def P12647536485459471183.Spec : Prop :=
  ∀ n, (P12647536485459471183.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P16919490046107074819

`∑{digits}[A127421(A014574(n+1))+1, #]`
-/

namespace A166173.P16919490046107074819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A014574 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P16919490046107074819

namespace A166173

/-- `∑{digits}[A127421(A014574(n+1))+1, #]` -/
def P16919490046107074819.Spec : Prop :=
  ∀ n, (P16919490046107074819.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P10908444876738264195

`A118137(A001359(n+1))+1`
-/

namespace A166173.P10908444876738264195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118137 (A001359 (n + 1)).toNat + 1

end

end A166173.P10908444876738264195

namespace A166173

/-- `A118137(A001359(n+1))+1` -/
def P10908444876738264195.Spec : Prop :=
  ∀ n, P10908444876738264195.a n = A166173 (n + 1)

end A166173

/-! ## A166173.P18323183223301154363

`∑{digits}[A049851(A006512(n+1)), #]`
-/

namespace A166173.P18323183223301154363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A006512 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P18323183223301154363

namespace A166173

/-- `∑{digits}[A049851(A006512(n+1)), #]` -/
def P18323183223301154363.Spec : Prop :=
  ∀ n, (P18323183223301154363.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P9106927162575610556

`∑{digits}[A049851(A067829(n+2)), #]`
-/

namespace A166173.P9106927162575610556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A067829 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P9106927162575610556

namespace A166173

/-- `∑{digits}[A049851(A067829(n+2)), #]` -/
def P9106927162575610556.Spec : Prop :=
  ∀ n, (P9106927162575610556.a n : ℤ) = A166173 (n + 1)

end A166173

/-! ## A166173.P12547726711007685862

`∑{digits}[A049851(A094743(n+2)), #]`
-/

namespace A166173.P12547726711007685862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A094743 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166173.P12547726711007685862

namespace A166173

/-- `∑{digits}[A049851(A094743(n+2)), #]` -/
def P12547726711007685862.Spec : Prop :=
  ∀ n, (P12547726711007685862.a n : ℤ) = A166173 (n + 1)

end A166173

/-!
# A166175: Number of nXnXn triangular nonnegative integer arrays with all sums of an element and its neighbors <= 3.

The programs for A166175, there is no canonical definition to state claims against.
-/

/-! ## A166175.P16697294715286435226

`∑[A049019(n+1)]*A281532(n+1)`
-/

namespace A166175.P16697294715286435226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A281532 (n + 1)

end

end A166175.P16697294715286435226

/-!
# A166189: Number of 3 X 3 X 3 triangular nonnegative integer arrays with all sums of an element and its neighbors <= n.

The programs for A166189, the canonical program `A166189.P13653143442823428445` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166189 has offset 0).

The definition of A166189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166189.P13653143442823428445

`∑[∑[floor((n/2+1)^4)]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166189

/-- `∑[∑[floor((n/2+1)^4)]]` -/
def P13653143442823428445.Spec : Prop :=
  ∀ n, P13653143442823428445.a n = A166189 n

theorem P13653143442823428445.correct : P13653143442823428445.Spec := by
  intro n
  simp only [A166189]

end A166189

/-! ## A166189.P10831817667024399657

`A011888(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A166189.P10831817667024399657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011888 (n + 1) + a (n - 1)

end

end A166189.P10831817667024399657

namespace A166189

/-- `A011888(n+1)+a(n-1)` -/
def P10831817667024399657.Spec : Prop :=
  ∀ n, P10831817667024399657.a n = A166189 n

end A166189

/-! ## A166189.P15772949819517547126

`∑[A011888(n+1)]+char[1]*A347323(n)`
-/

namespace A166189.P15772949819517547126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A347323 n

end

end A166189.P15772949819517547126

namespace A166189

/-- `∑[A011888(n+1)]+char[1]*A347323(n)` -/
def P15772949819517547126.Spec : Prop :=
  ∀ n, P15772949819517547126.a n = A166189 n

end A166189

/-! ## A166189.P7127188349437099248

`∑[A011888(n+1)]+A008683(A007918(n))+1`
-/

namespace A166189.P7127188349437099248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A008683 (A007918 n).toNat + 1)

end

end A166189.P7127188349437099248

namespace A166189

/-- `∑[A011888(n+1)]+A008683(A007918(n))+1` -/
def P7127188349437099248.Spec : Prop :=
  ∀ n, P7127188349437099248.a n = A166189 n

end A166189

/-! ## A166189.P6875351728691744315

`∑[A011888(n+1)]/A238946(A053670(n+1))`
-/

namespace A166189.P6875351728691744315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A238946 (A053670 (n + 1)).toNat : ℚ)

end

end A166189.P6875351728691744315

namespace A166189

/-- `∑[A011888(n+1)]/A238946(A053670(n+1))` -/
def P6875351728691744315.Spec : Prop :=
  ∀ n, P6875351728691744315.a n = (A166189 n : ℚ)

end A166189

/-! ## A166189.P7918681210651869300

`∑[A011888(n+1)]/A238946(A112484(n+3))`
-/

namespace A166189.P7918681210651869300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A238946 (A112484 (n + 3)).toNat : ℚ)

end

end A166189.P7918681210651869300

namespace A166189

/-- `∑[A011888(n+1)]/A238946(A112484(n+3))` -/
def P7918681210651869300.Spec : Prop :=
  ∀ n, P7918681210651869300.a n = (A166189 n : ℚ)

end A166189

/-! ## A166189.P1950951344703641198

`A001769(n)+A000579(n+5)`
-/

namespace A166189.P1950951344703641198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 n + A000579 (n + 5)

end

end A166189.P1950951344703641198

namespace A166189

/-- `A001769(n)+A000579(n+5)` -/
def P1950951344703641198.Spec : Prop :=
  ∀ n, P1950951344703641198.a n = A166189 n

end A166189

/-! ## A166189.P8766245814607383099

`∑[A011888(n+1)]/A071222(A096014(n+1))`
-/

namespace A166189.P8766245814607383099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A071222 (A096014 (n + 1)).toNat : ℚ)

end

end A166189.P8766245814607383099

namespace A166189

/-- `∑[A011888(n+1)]/A071222(A096014(n+1))` -/
def P8766245814607383099.Spec : Prop :=
  ∀ n, P8766245814607383099.a n = (A166189 n : ℚ)

end A166189

/-! ## A166189.P16824472483758210704

`∑[A011888(n+1)]*A176889(2*n+1)`
-/

namespace A166189.P16824472483758210704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A176889 (2 * n + 1)

end

end A166189.P16824472483758210704

namespace A166189

/-- `∑[A011888(n+1)]*A176889(2*n+1)` -/
def P16824472483758210704.Spec : Prop :=
  ∀ n, P16824472483758210704.a n = A166189 n

end A166189

/-! ## A166189.P4528928722350858939

`A001222(A126204(n))*∑[A011888(n+1)]`
-/

namespace A166189.P4528928722350858939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A126204 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166189.P4528928722350858939

namespace A166189

/-- `A001222(A126204(n))*∑[A011888(n+1)]` -/
def P4528928722350858939.Spec : Prop :=
  ∀ n, P4528928722350858939.a n = A166189 n

end A166189

/-! ## A166189.P1315763005934086341

`∑[A011888(n+1)]/A071222(A087560(n+1))`
-/

namespace A166189.P1315763005934086341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A071222 (A087560 (n + 1)).toNat : ℚ)

end

end A166189.P1315763005934086341

namespace A166189

/-- `∑[A011888(n+1)]/A071222(A087560(n+1))` -/
def P1315763005934086341.Spec : Prop :=
  ∀ n, P1315763005934086341.a n = (A166189 n : ℚ)

end A166189

/-! ## A166189.P15452558328595741293

`A002262(A000217(n))+∑[A011888(n+1)]`
-/

namespace A166189.P15452558328595741293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000217 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166189.P15452558328595741293

namespace A166189

/-- `A002262(A000217(n))+∑[A011888(n+1)]` -/
def P15452558328595741293.Spec : Prop :=
  ∀ n, P15452558328595741293.a n = A166189 n

end A166189

