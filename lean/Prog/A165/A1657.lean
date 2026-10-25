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
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165705: Range and record values of A165704.

The programs for A165705, there is no canonical definition to state claims against.
-/

/-! ## A165705.P6583517381887519522

`record[A165704(n-3*floor(n/10))]`
-/

namespace A165705.P6583517381887519522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165705.P6583517381887519522

/-! ## A165705.P1784119376065947978

`A165704(A108651(n)/8)`
-/

namespace A165705.P1784119376065947978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (SequenceMachineLib.roundAway ((A108651 n : ℚ) / 8)).toNat

end

end A165705.P1784119376065947978

/-! ## A165705.P17294856036688422806

`A165704(A051037(n+1)-1)`
-/

namespace A165705.P17294856036688422806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (A051037 (n + 1) - 1).toNat

end

end A165705.P17294856036688422806

/-! ## A165705.P997279138218481810

`A165704(eq[1, A165725(n+1)])`
-/

namespace A165705.P997279138218481810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165705.P997279138218481810

/-! ## A165705.P6398046483768367783

`A165704(lt[A165725(n+1), 2])`
-/

namespace A165705.P6398046483768367783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A165705.P6398046483768367783

/-! ## A165705.P4837671481026521504

`A165704(record[A228732(n+1)-1])`
-/

namespace A165705.P4837671481026521504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165705.P4837671481026521504

/-! ## A165705.P14356340435472841607

`A165704(record[n/A165725(n+1)])`
-/

namespace A165705.P14356340435472841607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A165725 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165705.P14356340435472841607

/-! ## A165705.P13160017148586428141

`record[A165704(n)%A074400(n+1)]`
-/

namespace A165705.P13160017148586428141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165704 n) (A074400 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165705.P13160017148586428141

/-!
# A165706: a(0) = 1, a(n) = a([n/2]) + a([n/5]) for n > 1.

The programs for A165706, the canonical program `A165706.P13010813806349730415` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165706 has offset 0).

The definition of A165706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165706.P13010813806349730415

`a(floor(n/2))+a(floor(n/5))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165706

/-- `a(floor(n/2))+a(floor(n/5))` -/
def P13010813806349730415.Spec : Prop :=
  ∀ n, (P13010813806349730415.a n : ℤ) = A165706 n

theorem P13010813806349730415.correct : P13010813806349730415.Spec := by
  intro n
  simp only [A165706]

end A165706

/-!
# A165707: Range and record values of A165706.

The programs for A165707, there is no canonical definition to state claims against.
-/

/-! ## A165707.P13781036623731527272

`record[A165706(A265667(n))]`
-/

namespace A165707.P13781036623731527272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 (A265667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165707.P13781036623731527272

/-! ## A165707.P16682629821909239753

`A165706(A227070(n+1)-1)`
-/

namespace A165707.P16682629821909239753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 (A227070 (n + 1) - 1).toNat

end

end A165707.P16682629821909239753

/-! ## A165707.P9495150539738568360

`record[A165706(2*n+1-A165706(n))]`
-/

namespace A165707.P9495150539738568360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 ((2 * n + 1 : ℤ) - A165706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165707.P9495150539738568360

/-! ## A165707.P15863010808935689920

`∑[A008480(A003592(A028310(n)))]`
-/

namespace A165707.P15863010808935689920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A003592 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165707.P15863010808935689920

/-! ## A165707.P2745729930759198830

`record[A165706(A005044(n))]`
-/

namespace A165707.P2745729930759198830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 (A005044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165707.P2745729930759198830

/-!
# A165710: 

The programs for A165710, there is no canonical definition to state claims against.
-/

/-! ## A165710.P11250980849942105768

`∑[n!^n!]`
-/

namespace A165710.P11250980849942105768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165710.P11250980849942105768

/-!
# A165712: a(n) = the smallest integer > n that is divisible by exactly the same number of primes (counted with multiplicity) as n is.

The programs for A165712, there is no canonical definition to state claims against.
-/

/-! ## A165712.P8505041400100610491

`A178139(n+2)+2+n`
-/

namespace A165712.P8505041400100610491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178139 (n + 2) + 2 + (n : ℤ)

end

end A165712.P8505041400100610491

/-! ## A165712.P5649463509843402420

`A009056(A178139(n+2))+n`
-/

namespace A165712.P5649463509843402420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A178139 (n + 2)).toNat + (n : ℤ)

end

end A165712.P5649463509843402420

/-!
# A165713: a(n) = the smallest integer > n that is divisible by exactly the same number of distinct primes as n is.

The programs for A165713, there is no canonical definition to state claims against.
-/

/-! ## A165713.P6330644041339717470

`A188348(n+2)+2+n`
-/

namespace A165713.P6330644041339717470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (n + 2) + 2 + (n : ℤ)

end

end A165713.P6330644041339717470

/-! ## A165713.P16909607056392107032

`A009056(A188348(n+2))+n`
-/

namespace A165713.P16909607056392107032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A188348 (n + 2)).toNat + (n : ℤ)

end

end A165713.P16909607056392107032

/-! ## A165713.P9824119311621564178

`A137929(A090106(n+2))`
-/

namespace A165713.P9824119311621564178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137929 (A090106 (n + 2)).toNat

end

end A165713.P9824119311621564178

/-! ## A165713.P2764101262490200815

`A137929(n+2)+A000122(A274471(n+1))`
-/

namespace A165713.P2764101262490200815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137929 (n + 2) + A000122 (A274471 (n + 1)).toNat

end

end A165713.P2764101262490200815

/-! ## A165713.P9351165720816765322

`A001222(A114367(2*n))*A137929(n+2)`
-/

namespace A165713.P9351165720816765322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114367 (2 * n)).toNat * A137929 (n + 2)

end

end A165713.P9351165720816765322

/-!
# A165715: Let the prime factorization of m be m = product p(m,k)^b(m,k), where p(m,j) < p(m, j+1) for all j, the p's are the distinct primes dividing m, and each b is a positive integer. Then a(n) = product {p(n,k)^b(A165713(n), k)}.

The programs for A165715, there is no canonical definition to state claims against.
-/

/-! ## A165715.P11861343111074129586

`filter[A112537(n+1), A266588(#)]`
-/

namespace A165715.P11861343111074129586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266588 (f1 j).toNat = 1) n)

end

end A165715.P11861343111074129586

/-! ## A165715.P36577784023641281

`A106177(C(A105290(n+1)+3+n, 2)-(n+1))`
-/

namespace A165715.P36577784023641281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 (Nat.choose (A105290 (n + 1) + 3 + (n : ℤ)).toNat 2 - (n + 1))

end

end A165715.P36577784023641281

/-!
# A165716: Number of tilings of a 3 X n rectangle using dominoes and right trominoes.

The programs for A165716, the canonical program `A165716.P585644996520659810` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165716 has offset 0).

The definition of A165716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165716.P585644996520659810

`2*a(n-1)+6*a(n-2)-4*a(n-3)+11*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=8, a(4)=55`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165716

/-- `2*a(n-1)+6*a(n-2)-4*a(n-3)+11*a(n-4)+2*a(n-5)` -/
def P585644996520659810.Spec : Prop :=
  ∀ n, P585644996520659810.a n = A165716 n

theorem P585644996520659810.correct : P585644996520659810.Spec := by
  intro n
  simp only [A165716]

end A165716

/-! ## A165716.P10585000798164936959

`A219987(∑[n+3]+n+3)`
-/

namespace A165716.P10585000798164936959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A165716.P10585000798164936959

namespace A165716

/-- `A219987(∑[n+3]+n+3)` -/
def P10585000798164936959.Spec : Prop :=
  ∀ n, P10585000798164936959.a n = A165716 n

end A165716

/-! ## A165716.P7897019941910444808

`or(A003982(n), A219987(A167614(n+2)))`
-/

namespace A165716.P7897019941910444808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A219987 (A167614 (n + 2)).toNat)

end

end A165716.P7897019941910444808

namespace A165716

/-- `or(A003982(n), A219987(A167614(n+2)))` -/
def P7897019941910444808.Spec : Prop :=
  ∀ n, P7897019941910444808.a n = A165716 n

end A165716

/-! ## A165716.P5849493116464593596

`A219987(A167614(n+2))%A021044(n+1)`
-/

namespace A165716.P5849493116464593596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219987 (A167614 (n + 2)).toNat) (A021044 (n + 1))

end

end A165716.P5849493116464593596

namespace A165716

/-- `A219987(A167614(n+2))%A021044(n+1)` -/
def P5849493116464593596.Spec : Prop :=
  ∀ n, P5849493116464593596.a n = A165716 n

end A165716

/-! ## A165716.P10442851038749824850

`A219987(A167614(n+2))+A003982(2*n+1)`
-/

namespace A165716.P10442851038749824850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A167614 (n + 2)).toNat + A003982 (2 * n + 1)

end

end A165716.P10442851038749824850

namespace A165716

/-- `A219987(A167614(n+2))+A003982(2*n+1)` -/
def P10442851038749824850.Spec : Prop :=
  ∀ n, P10442851038749824850.a n = A165716 n

end A165716

/-!
# A165717: Integers of the form k*(5+k)/4.

The programs for A165717, the canonical program `A165717.P18119459922318321722` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165717 has offset 1).

The definition of A165717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165717.P18119459922318321722

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=6, a(1)=9, a(2)=21, a(3)=26, a(4)=44`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165717

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P18119459922318321722.Spec : Prop :=
  ∀ n, P18119459922318321722.a n = A165717 (n + 1)

theorem P18119459922318321722.correct : P18119459922318321722.Spec := by
  intro n
  simp only [A165717, Nat.add_sub_cancel]

end A165717

/-! ## A165717.P7541146317871579453

`∑[(n+2)*gcd(3, n%2)]`
-/

namespace A165717.P7541146317871579453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165717.P7541146317871579453

namespace A165717

/-- `∑[(n+2)*gcd(3, n%2)]` -/
def P7541146317871579453.Spec : Prop :=
  ∀ n, (P7541146317871579453.a n : ℤ) = A165717 (n + 1)

end A165717

/-! ## A165717.P14826936823228919130

`∑[(n+2)*((-1)^n+2)]`
-/

namespace A165717.P14826936823228919130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((-1) ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165717.P14826936823228919130

namespace A165717

/-- `∑[(n+2)*((-1)^n+2)]` -/
def P14826936823228919130.Spec : Prop :=
  ∀ n, P14826936823228919130.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P9038884226922705923

`3*∑[(n+2)/and(3, 2*n+1)]`
-/

namespace A165717.P9038884226922705923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.land 3 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165717.P9038884226922705923

namespace A165717

/-- `3*∑[(n+2)/and(3, 2*n+1)]` -/
def P9038884226922705923.Spec : Prop :=
  ∀ n, P9038884226922705923.a n = (A165717 (n + 1) : ℚ)

end A165717

/-! ## A165717.P15917107598843915103

`n+1+A153192(n+1)`
-/

namespace A165717.P15917107598843915103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A153192 (n + 1)

end

end A165717.P15917107598843915103

namespace A165717

/-- `n+1+A153192(n+1)` -/
def P15917107598843915103.Spec : Prop :=
  ∀ n, P15917107598843915103.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P7892083621468589223

`A159469(n+3)+floor((n+1)/2)`
-/

namespace A165717.P7892083621468589223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159469 (n + 3) + ⌊(n + 1 : ℚ) / 2⌋

end

end A165717.P7892083621468589223

namespace A165717

/-- `A159469(n+3)+floor((n+1)/2)` -/
def P7892083621468589223.Spec : Prop :=
  ∀ n, P7892083621468589223.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P7314899230257201652

`∑[(n+2)*A153284(n+1)]+4`
-/

namespace A165717.P7314899230257201652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A153284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A165717.P7314899230257201652

namespace A165717

/-- `∑[(n+2)*A153284(n+1)]+4` -/
def P7314899230257201652.Spec : Prop :=
  ∀ n, P7314899230257201652.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P2207456846925582242

`A014494(n+1)-A074377(n)`
-/

namespace A165717.P2207456846925582242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (n + 1) - A074377 n

end

end A165717.P2207456846925582242

namespace A165717

/-- `A014494(n+1)-A074377(n)` -/
def P2207456846925582242.Spec : Prop :=
  ∀ n, P2207456846925582242.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P3045594695205266175

`A174114(n+1)+A047550(n+1)`
-/

namespace A165717.P3045594695205266175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1) + A047550 (n + 1)

end

end A165717.P3045594695205266175

namespace A165717

/-- `A174114(n+1)+A047550(n+1)` -/
def P3045594695205266175.Spec : Prop :=
  ∀ n, P3045594695205266175.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P15069430806729647316

`A028552(n+1)+A131723(n+1)+A131723(n)`
-/

namespace A165717.P15069430806729647316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 1) + (A131723 (n + 1) + A131723 n)

end

end A165717.P15069430806729647316

namespace A165717

/-- `A028552(n+1)+A131723(n+1)+A131723(n)` -/
def P15069430806729647316.Spec : Prop :=
  ∀ n, P15069430806729647316.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P17919212929294581576

`A165998(n+1)+a(n-1)` with `a(0)=6`
-/

namespace A165717.P17919212929294581576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A165998 (n + 1) + a (n - 1)

end

end A165717.P17919212929294581576

namespace A165717

/-- `A165998(n+1)+a(n-1)` -/
def P17919212929294581576.Spec : Prop :=
  ∀ n, P17919212929294581576.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P916859126331439438

`A074378(n+1)+A014601(n+1)`
-/

namespace A165717.P916859126331439438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (n + 1) + A014601 (n + 1)

end

end A165717.P916859126331439438

namespace A165717

/-- `A074378(n+1)+A014601(n+1)` -/
def P916859126331439438.Spec : Prop :=
  ∀ n, P916859126331439438.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P13205470770297508709

`A193867(n+2)-A174114(n+1)`
-/

namespace A165717.P13205470770297508709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (n + 2) - A174114 (n + 1)

end

end A165717.P13205470770297508709

namespace A165717

/-- `A193867(n+2)-A174114(n+1)` -/
def P13205470770297508709.Spec : Prop :=
  ∀ n, P13205470770297508709.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P7646054630090789846

`A014601(n+1)+A014494(n+1)/2`
-/

namespace A165717.P7646054630090789846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014601 (n + 1) : ℚ) + (A014494 (n + 1) : ℚ) / 2

end

end A165717.P7646054630090789846

namespace A165717

/-- `A014601(n+1)+A014494(n+1)/2` -/
def P7646054630090789846.Spec : Prop :=
  ∀ n, P7646054630090789846.a n = (A165717 (n + 1) : ℚ)

end A165717

/-! ## A165717.P8487570973987271480

`A014601(n+1)+A074377(n)+A014601(n+1)`
-/

namespace A165717.P8487570973987271480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (n + 1) + (A074377 n + A014601 (n + 1))

end

end A165717.P8487570973987271480

namespace A165717

/-- `A014601(n+1)+A074377(n)+A014601(n+1)` -/
def P8487570973987271480.Spec : Prop :=
  ∀ n, P8487570973987271480.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P8380501342370545931

`A074378(n+1)+A074378(n+1)-A074377(n)`
-/

namespace A165717.P8380501342370545931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (n + 1) + (A074378 (n + 1) - A074377 n)

end

end A165717.P8380501342370545931

namespace A165717

/-- `A074378(n+1)+A074378(n+1)-A074377(n)` -/
def P8380501342370545931.Spec : Prop :=
  ∀ n, P8380501342370545931.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P11728043350744736168

`A074378(n+1)+A266883(n+1)-A174114(n+1)`
-/

namespace A165717.P11728043350744736168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (n + 1) + (A266883 (n + 1) - A174114 (n + 1))

end

end A165717.P11728043350744736168

namespace A165717

/-- `A074378(n+1)+A266883(n+1)-A174114(n+1)` -/
def P11728043350744736168.Spec : Prop :=
  ∀ n, P11728043350744736168.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P277934351968340284

`A265611(n+1)+A266221(n+1)+A198442(n+2)`
-/

namespace A165717.P277934351968340284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265611 (n + 1) + (A266221 (n + 1) + A198442 (n + 2))

end

end A165717.P277934351968340284

namespace A165717

/-- `A265611(n+1)+A266221(n+1)+A198442(n+2)` -/
def P277934351968340284.Spec : Prop :=
  ∀ n, P277934351968340284.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P14371730699702040503

`A074377(n+2)-1`
-/

namespace A165717.P14371730699702040503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (n + 2) - 1

end

end A165717.P14371730699702040503

namespace A165717

/-- `A074377(n+2)-1` -/
def P14371730699702040503.Spec : Prop :=
  ∀ n, P14371730699702040503.a n = A165717 (n + 1)

end A165717

/-! ## A165717.P17641973079875061373

`A174114(n+3)-2`
-/

namespace A165717.P17641973079875061373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 3) - 2

end

end A165717.P17641973079875061373

namespace A165717

/-- `A174114(n+3)-2` -/
def P17641973079875061373.Spec : Prop :=
  ∀ n, P17641973079875061373.a n = A165717 (n + 1)

end A165717

/-!
# A165718: Integers of the form k*(k+7)/6.

The programs for A165718, the canonical program `A165718.P10052520348555012362` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165718 has offset 1).

The definition of A165718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165718.P10052520348555012362

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=5, a(2)=10, a(3)=13, a(4)=20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165718

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10052520348555012362.Spec : Prop :=
  ∀ n, P10052520348555012362.a n = A165718 (n + 1)

theorem P10052520348555012362.correct : P10052520348555012362.Spec := by
  intro n
  simp only [A165718, Nat.add_sub_cancel]

end A165718

/-! ## A165718.P4566404683634588602

`A001318(n+3)-2`
-/

namespace A165718.P4566404683634588602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 3) - 2

end

end A165718.P4566404683634588602

namespace A165718

/-- `A001318(n+3)-2` -/
def P4566404683634588602.Spec : Prop :=
  ∀ n, P4566404683634588602.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P3598104281700255485

`∑[lcm(2, n+3)/2]`
-/

namespace A165718.P3598104281700255485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P3598104281700255485

namespace A165718

/-- `∑[lcm(2, n+3)/2]` -/
def P3598104281700255485.Spec : Prop :=
  ∀ n, P3598104281700255485.a n = (A165718 (n + 1) : ℚ)

end A165718

/-! ## A165718.P1502851984300561740

`∑[gcd(n+3, 3-∑[n])]`
-/

namespace A165718.P1502851984300561740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (3 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P1502851984300561740

namespace A165718

/-- `∑[gcd(n+3, 3-∑[n])]` -/
def P1502851984300561740.Spec : Prop :=
  ∀ n, (P1502851984300561740.a n : ℤ) = A165718 (n + 1)

end A165718

/-! ## A165718.P10904277838585952459

`∑[(n+3)/(n%2+1)]`
-/

namespace A165718.P10904277838585952459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P10904277838585952459

namespace A165718

/-- `∑[(n+3)/(n%2+1)]` -/
def P10904277838585952459.Spec : Prop :=
  ∀ n, P10904277838585952459.a n = (A165718 (n + 1) : ℚ)

end A165718

/-! ## A165718.P4040009558330740665

`∑[(n+3)/gcd(2, n+1)]`
-/

namespace A165718.P4040009558330740665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P4040009558330740665

namespace A165718

/-- `∑[(n+3)/gcd(2, n+1)]` -/
def P4040009558330740665.Spec : Prop :=
  ∀ n, P4040009558330740665.a n = (A165718 (n + 1) : ℚ)

end A165718

/-! ## A165718.P11992570571053351322

`∑[(n+3)/(and(1, n)+1)]`
-/

namespace A165718.P11992570571053351322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P11992570571053351322

namespace A165718

/-- `∑[(n+3)/(and(1, n)+1)]` -/
def P11992570571053351322.Spec : Prop :=
  ∀ n, P11992570571053351322.a n = (A165718 (n + 1) : ℚ)

end A165718

/-! ## A165718.P9726545714878994747

`∑[(n+3)/(2-∑[(-1)^n])]`
-/

namespace A165718.P9726545714878994747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P9726545714878994747

namespace A165718

/-- `∑[(n+3)/(2-∑[(-1)^n])]` -/
def P9726545714878994747.Spec : Prop :=
  ∀ n, P9726545714878994747.a n = (A165718 (n + 1) : ℚ)

end A165718

/-! ## A165718.P17853437169272244058

`a(n-1)+(n+3)/gcd(n-1, 2*n)` with `a(0)=3`
-/

namespace A165718.P17853437169272244058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n + 3 : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ)

end

end A165718.P17853437169272244058

namespace A165718

/-- `a(n-1)+(n+3)/gcd(n-1, 2*n)` -/
def P17853437169272244058.Spec : Prop :=
  ∀ n, P17853437169272244058.a n = (A165718 (n + 1) : ℚ)

end A165718

/-! ## A165718.P3812129481604623668

`∑[∑[3-a(n-1)]-a(n-1)]+n+1` with `a(0)=2`
-/

namespace A165718.P3812129481604623668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A165718.P3812129481604623668

namespace A165718

/-- `∑[∑[3-a(n-1)]-a(n-1)]+n+1` -/
def P3812129481604623668.Spec : Prop :=
  ∀ n, P3812129481604623668.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P5614649889716263606

`A241200(n+1)+1`
-/

namespace A165718.P5614649889716263606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241200 (n + 1) + 1

end

end A165718.P5614649889716263606

namespace A165718

/-- `A241200(n+1)+1` -/
def P5614649889716263606.Spec : Prop :=
  ∀ n, P5614649889716263606.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P4552991798749672108

`A014616(n+1)+A008805(n)`
-/

namespace A165718.P4552991798749672108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1) + A008805 n

end

end A165718.P4552991798749672108

namespace A165718

/-- `A014616(n+1)+A008805(n)` -/
def P4552991798749672108.Spec : Prop :=
  ∀ n, P4552991798749672108.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P4925516587556840435

`A198392(n)+1-A242477(n)`
-/

namespace A165718.P4925516587556840435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198392 n + (1 - A242477 n)

end

end A165718.P4925516587556840435

namespace A165718

/-- `A198392(n)+1-A242477(n)` -/
def P4925516587556840435.Spec : Prop :=
  ∀ n, P4925516587556840435.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P11387777885057204720

`A369304(n+1)-A144065(n)`
-/

namespace A165718.P11387777885057204720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369304 (n + 1) - A144065 n

end

end A165718.P11387777885057204720

namespace A165718

/-- `A369304(n+1)-A144065(n)` -/
def P11387777885057204720.Spec : Prop :=
  ∀ n, P11387777885057204720.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P13979519488061580971

`A213479(n)+1-A331952(n)`
-/

namespace A165718.P13979519488061580971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (1 - A331952 n)

end

end A165718.P13979519488061580971

namespace A165718

/-- `A213479(n)+1-A331952(n)` -/
def P13979519488061580971.Spec : Prop :=
  ∀ n, P13979519488061580971.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P10564731749691639283

`A008805(n)+∑[A004526(n)+2]`
-/

namespace A165718.P10564731749691639283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P10564731749691639283

namespace A165718

/-- `A008805(n)+∑[A004526(n)+2]` -/
def P10564731749691639283.Spec : Prop :=
  ∀ n, P10564731749691639283.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P3295874465189078613

`A027656(n)+∑[A026741(n)+2]`
-/

namespace A165718.P3295874465189078613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P3295874465189078613

namespace A165718

/-- `A027656(n)+∑[A026741(n)+2]` -/
def P3295874465189078613.Spec : Prop :=
  ∀ n, P3295874465189078613.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P13228103142936790805

`A005993(n)+∑[2-A004652(n)]`
-/

namespace A165718.P13228103142936790805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165718.P13228103142936790805

namespace A165718

/-- `A005993(n)+∑[2-A004652(n)]` -/
def P13228103142936790805.Spec : Prop :=
  ∀ n, P13228103142936790805.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P7692547787259998307

`A211538(n+1)+A047389(n+1)`
-/

namespace A165718.P7692547787259998307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1) + A047389 (n + 1)

end

end A165718.P7692547787259998307

namespace A165718

/-- `A211538(n+1)+A047389(n+1)` -/
def P7692547787259998307.Spec : Prop :=
  ∀ n, P7692547787259998307.a n = A165718 (n + 1)

end A165718

/-! ## A165718.P1605696318665408985

`A376313(n+2)+A186347(n+1)`
-/

namespace A165718.P1605696318665408985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376313 (n + 2) + A186347 (n + 1)

end

end A165718.P1605696318665408985

namespace A165718

/-- `A376313(n+2)+A186347(n+1)` -/
def P1605696318665408985.Spec : Prop :=
  ∀ n, P1605696318665408985.a n = A165718 (n + 1)

end A165718

/-!
# A165719: Integers of the form k*(k+9)/8.

The programs for A165719, the canonical program `A165719.P269901681559896732` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165719 has offset 1).

The definition of A165719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165719.P269901681559896732

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=14, a(1)=17, a(2)=45, a(3)=50, a(4)=92`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165719

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P269901681559896732.Spec : Prop :=
  ∀ n, P269901681559896732.a n = A165719 (n + 1)

theorem P269901681559896732.correct : P269901681559896732.Spec := by
  intro n
  simp only [A165719, Nat.add_sub_cancel]

end A165719

/-! ## A165719.P16566832470227391007

`2*(n+1)²+6*(n+1)+9/4-3*(-1)^(n+1)*(2*(n+1)+3)/4`
-/

namespace A165719.P16566832470227391007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 + 6 * (n + 1) : ℚ) + (9 : ℚ) / 4 - (3 * (-1) ^ (n + 1) * (2 * (n + 1) + 3 : ℤ) : ℚ) / 4

end

end A165719.P16566832470227391007

namespace A165719

/-- `2*(n+1)²+6*(n+1)+9/4-3*(-1)^(n+1)*(2*(n+1)+3)/4` -/
def P16566832470227391007.Spec : Prop :=
  ∀ n, P16566832470227391007.a n = (A165719 (n + 1) : ℚ)

theorem P16566832470227391007.correct : P16566832470227391007.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A165719, Nat.add_sub_cancel, A165719.P16566832470227391007.a, A165719.P269901681559896732.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A165719, Nat.add_sub_cancel, A165719.P16566832470227391007.a, A165719.P269901681559896732.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165719

/-! ## A165719.P5267905473120019778

`∑[(n+2)*gcd(7, n%2)]`
-/

namespace A165719.P5267905473120019778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 7 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P5267905473120019778

namespace A165719

/-- `∑[(n+2)*gcd(7, n%2)]` -/
def P5267905473120019778.Spec : Prop :=
  ∀ n, (P5267905473120019778.a n : ℤ) = A165719 (n + 1)

end A165719

/-! ## A165719.P10349610058072080249

`∑[(n+2)*dr(gcd(2, n)^4)]`
-/

namespace A165719.P10349610058072080249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * SequenceMachineLib.digitalRoot (Nat.gcd 2 n ^ 4 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P10349610058072080249

namespace A165719

/-- `∑[(n+2)*dr(gcd(2, n)^4)]` -/
def P10349610058072080249.Spec : Prop :=
  ∀ n, (P10349610058072080249.a n : ℤ) = A165719 (n + 1)

end A165719

/-! ## A165719.P11151755183353524482

`∑[(n+2)*dr(gcd(4, n²)²)]`
-/

namespace A165719.P11151755183353524482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * SequenceMachineLib.digitalRoot (Nat.gcd 4 (n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P11151755183353524482

namespace A165719

/-- `∑[(n+2)*dr(gcd(4, n²)²)]` -/
def P11151755183353524482.Spec : Prop :=
  ∀ n, (P11151755183353524482.a n : ℤ) = A165719 (n + 1)

end A165719

/-! ## A165719.P11259320870671786512

`∑[(n+2)*7^((n+1)%2)]`
-/

namespace A165719.P11259320870671786512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 7 ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P11259320870671786512

namespace A165719

/-- `∑[(n+2)*7^((n+1)%2)]` -/
def P11259320870671786512.Spec : Prop :=
  ∀ n, (P11259320870671786512.a n : ℤ) = A165719 (n + 1)

end A165719

/-! ## A165719.P7772252810471540559

`∑[(n+2)*7^and(1, n+1)]`
-/

namespace A165719.P7772252810471540559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 7 ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P7772252810471540559

namespace A165719

/-- `∑[(n+2)*7^and(1, n+1)]` -/
def P7772252810471540559.Spec : Prop :=
  ∀ n, (P7772252810471540559.a n : ℤ) = A165719 (n + 1)

end A165719

/-! ## A165719.P11834126119286746645

`∑[(n+2)*A176415(n)]`
-/

namespace A165719.P11834126119286746645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A176415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P11834126119286746645

namespace A165719

/-- `∑[(n+2)*A176415(n)]` -/
def P11834126119286746645.Spec : Prop :=
  ∀ n, P11834126119286746645.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P16064819634125354102

`∑[(n+2)*A000032(or(n, -2)²)]`
-/

namespace A165719.P16064819634125354102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000032 (Int.lor (n : ℤ) (-2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P16064819634125354102

namespace A165719

/-- `∑[(n+2)*A000032(or(n, -2)²)]` -/
def P16064819634125354102.Spec : Prop :=
  ∀ n, P16064819634125354102.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P6067684851859032099

`∑[(n+2)*A000032(gcd((n+2)*(n-2), 2*n))]`
-/

namespace A165719.P6067684851859032099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000032 (Int.gcd ((n + 2 : ℤ) * ((n : ℤ) - 2)) (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P6067684851859032099

namespace A165719

/-- `∑[(n+2)*A000032(gcd((n+2)*(n-2), 2*n))]` -/
def P6067684851859032099.Spec : Prop :=
  ∀ n, P6067684851859032099.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P9696423064573626149

`∑[(n+2)*A010688(n+1)]`
-/

namespace A165719.P9696423064573626149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A010688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P9696423064573626149

namespace A165719

/-- `∑[(n+2)*A010688(n+1)]` -/
def P9696423064573626149.Spec : Prop :=
  ∀ n, P9696423064573626149.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P13886949367692207245

`∑[A317314(n+2)]`
-/

namespace A165719.P13886949367692207245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P13886949367692207245

namespace A165719

/-- `∑[A317314(n+2)]` -/
def P13886949367692207245.Spec : Prop :=
  ∀ n, P13886949367692207245.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P3342800814566459341

`∑[A195159(A022998(n+2))]`
-/

namespace A165719.P3342800814566459341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A022998 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P3342800814566459341

namespace A165719

/-- `∑[A195159(A022998(n+2))]` -/
def P3342800814566459341.Spec : Prop :=
  ∀ n, P3342800814566459341.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P11086582974204621429

`A186380(A047521(n+2))`
-/

namespace A165719.P11086582974204621429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186380 (A047521 (n + 2)).toNat

end

end A165719.P11086582974204621429

namespace A165719

/-- `A186380(A047521(n+2))` -/
def P11086582974204621429.Spec : Prop :=
  ∀ n, P11086582974204621429.a n = A165719 (n + 1)

end A165719

/-! ## A165719.P15057849721883098032

`∑[A195159(A026741(A195161(n+2)))]`
-/

namespace A165719.P15057849721883098032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A026741 (A195161 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165719.P15057849721883098032

namespace A165719

/-- `∑[A195159(A026741(A195161(n+2)))]` -/
def P15057849721883098032.Spec : Prop :=
  ∀ n, P15057849721883098032.a n = A165719 (n + 1)

end A165719

/-!
# A165720: Integers of the form k*(k+11)/10.

The programs for A165720, the canonical program `A165720.P16433198714598241724` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165720 has offset 1).

The definition of A165720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165720.P16433198714598241724

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=6, a(1)=8, a(2)=18, a(3)=21, a(4)=35`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165720

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16433198714598241724.Spec : Prop :=
  ∀ n, P16433198714598241724.a n = A165720 (n + 1)

theorem P16433198714598241724.correct : P16433198714598241724.Spec := by
  intro n
  simp only [A165720, Nat.add_sub_cancel]

end A165720

/-! ## A165720.P6420074589615793192

`5*(2*(n+1)²+10*(n+1)+3)/16-3*(-1)^(n+1)*(5+2*(n+1))/16`
-/

namespace A165720.P6420074589615793192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (2 * (n + 1) ^ 2 + 10 * (n + 1) + 3) : ℚ) / 16 - (3 * (-1) ^ (n + 1) * (5 + 2 * (n + 1) : ℤ) : ℚ) / 16

end

end A165720.P6420074589615793192

namespace A165720

/-- `5*(2*(n+1)²+10*(n+1)+3)/16-3*(-1)^(n+1)*(5+2*(n+1))/16` -/
def P6420074589615793192.Spec : Prop :=
  ∀ n, P6420074589615793192.a n = (A165720 (n + 1) : ℚ)

theorem P6420074589615793192.correct : P6420074589615793192.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A165720, Nat.add_sub_cancel, A165720.P6420074589615793192.a, A165720.P16433198714598241724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A165720, Nat.add_sub_cancel, A165720.P6420074589615793192.a, A165720.P16433198714598241724.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165720

/-! ## A165720.P11755666042318522927

`∑[(n+3)/ratio[gcd(2, n)]]`
-/

namespace A165720.P11755666042318522927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165720.P11755666042318522927

namespace A165720

/-- `∑[(n+3)/ratio[gcd(2, n)]]` -/
def P11755666042318522927.Spec : Prop :=
  ∀ n, P11755666042318522927.a n = (A165720 (n + 1) : ℚ)

end A165720

/-! ## A165720.P1792234482864131599

`∑[lcm(2, lcm(n+1, n+3))/(n+1)]`
-/

namespace A165720.P1792234482864131599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lcm (n + 1) (n + 3)) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165720.P1792234482864131599

namespace A165720

/-- `∑[lcm(2, lcm(n+1, n+3))/(n+1)]` -/
def P1792234482864131599.Spec : Prop :=
  ∀ n, P1792234482864131599.a n = (A165720 (n + 1) : ℚ)

end A165720

/-! ## A165720.P14974918282551912842

`∑[(n+2)*(n+3)/a(n-1)]` with `a(0)=6`
-/

namespace A165720.P14974918282551912842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6] fun n f1 =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165720.P14974918282551912842

namespace A165720

/-- `∑[(n+2)*(n+3)/a(n-1)]` -/
def P14974918282551912842.Spec : Prop :=
  ∀ n, P14974918282551912842.a n = (A165720 (n + 1) : ℚ)

end A165720

/-! ## A165720.P2732118692588499154

`∑[A064680(n+3)]`
-/

namespace A165720.P2732118692588499154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165720.P2732118692588499154

namespace A165720

/-- `∑[A064680(n+3)]` -/
def P2732118692588499154.Spec : Prop :=
  ∀ n, P2732118692588499154.a n = A165720 (n + 1)

end A165720

/-! ## A165720.P17155523485320241799

`A186384(A047208(n+2))`
-/

namespace A165720.P17155523485320241799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186384 (A047208 (n + 2)).toNat

end

end A165720.P17155523485320241799

namespace A165720

/-- `A186384(A047208(n+2))` -/
def P17155523485320241799.Spec : Prop :=
  ∀ n, P17155523485320241799.a n = A165720 (n + 1)

end A165720

/-! ## A165720.P11794006619263044796

`A186385(a(n-2)+3)` with `a(0)=6, a(1)=8`
-/

namespace A165720.P11794006619263044796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 8] fun n a =>
  A186385 (a (n - 2) + 3).toNat

end

end A165720.P11794006619263044796

namespace A165720

/-- `A186385(a(n-2)+3)` -/
def P11794006619263044796.Spec : Prop :=
  ∀ n, P11794006619263044796.a n = A165720 (n + 1)

end A165720

/-! ## A165720.P3893220161967066119

`A186385(A057569(n+2))`
-/

namespace A165720.P3893220161967066119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186385 (A057569 (n + 2)).toNat

end

end A165720.P3893220161967066119

namespace A165720

/-- `A186385(A057569(n+2))` -/
def P3893220161967066119.Spec : Prop :=
  ∀ n, P3893220161967066119.a n = A165720 (n + 1)

end A165720

/-! ## A165720.P5788956135053175924

`∩[A186384(n+1), A186385(n+1)]`
-/

namespace A165720.P5788956135053175924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165720.P5788956135053175924

namespace A165720

/-- `∩[A186384(n+1), A186385(n+1)]` -/
def P5788956135053175924.Spec : Prop :=
  ∀ n, (P5788956135053175924.a n : ℤ) = A165720 (n + 1)

end A165720

/-! ## A165720.P6556760479001175084

`A183298(A338544(n+3)+n+1)`
-/

namespace A165720.P6556760479001175084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183298 (A338544 (n + 3) + (n + 1 : ℤ)).toNat

end

end A165720.P6556760479001175084

namespace A165720

/-- `A183298(A338544(n+3)+n+1)` -/
def P6556760479001175084.Spec : Prop :=
  ∀ n, P6556760479001175084.a n = A165720 (n + 1)

end A165720

/-!
# A165721: Integers of the form k*(k+13)/12.

The programs for A165721, the canonical program `A165721.P5437165114375339253` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165721 has offset 1).

The definition of A165721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165721.P5437165114375339253

`A154293(n+2)+A108752(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165721

/-- `A154293(n+2)+A108752(n+2)` -/
def P5437165114375339253.Spec : Prop :=
  ∀ n, P5437165114375339253.a n = A165721 (n + 1)

theorem P5437165114375339253.correct : P5437165114375339253.Spec := by
  intro n
  simp only [A165721, Nat.add_sub_cancel]

end A165721

/-! ## A165721.P2854333203833487117

`A268539(n+4)-3`
-/

namespace A165721.P2854333203833487117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268539 (n + 4) - 3

end

end A165721.P2854333203833487117

namespace A165721

/-- `A268539(n+4)-3` -/
def P2854333203833487117.Spec : Prop :=
  ∀ n, P2854333203833487117.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P14919945480251120513

`∑[abs(Δ[A268539(n+3)])]`
-/

namespace A165721.P14919945480251120513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268539 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165721.P14919945480251120513

namespace A165721

/-- `∑[abs(Δ[A268539(n+3)])]` -/
def P14919945480251120513.Spec : Prop :=
  ∀ n, P14919945480251120513.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P4775566390363265895

`∑[A000027(Δ[A268539(n+3)])]`
-/

namespace A165721.P4775566390363265895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268539 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165721.P4775566390363265895

namespace A165721

/-- `∑[A000027(Δ[A268539(n+3)])]` -/
def P4775566390363265895.Spec : Prop :=
  ∀ n, P4775566390363265895.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P4402341458312199373

`∑[Δ[A268539(n+3)]%A000217(n+10)]`
-/

namespace A165721.P4402341458312199373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268539 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000217 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165721.P4402341458312199373

namespace A165721

/-- `∑[Δ[A268539(n+3)]%A000217(n+10)]` -/
def P4402341458312199373.Spec : Prop :=
  ∀ n, P4402341458312199373.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P14988994699233363350

`A186388(A108752(n+2))`
-/

namespace A165721.P14988994699233363350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186388 (A108752 (n + 2)).toNat

end

end A165721.P14988994699233363350

namespace A165721

/-- `A186388(A108752(n+2))` -/
def P14988994699233363350.Spec : Prop :=
  ∀ n, P14988994699233363350.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P1289812834998706661

`A027379(A098181(n))+A008619(A027379(n))`
-/

namespace A165721.P1289812834998706661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A098181 n).toNat + A008619 (A027379 n).toNat

end

end A165721.P1289812834998706661

namespace A165721

/-- `A027379(A098181(n))+A008619(A027379(n))` -/
def P1289812834998706661.Spec : Prop :=
  ∀ n, P1289812834998706661.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P5767080702323580195

`A055998(A098181(n))+A008619(A055998(n))`
-/

namespace A165721.P5767080702323580195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A098181 n).toNat + A008619 (A055998 n).toNat

end

end A165721.P5767080702323580195

namespace A165721

/-- `A055998(A098181(n))+A008619(A055998(n))` -/
def P5767080702323580195.Spec : Prop :=
  ∀ n, P5767080702323580195.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P2222597658811055403

`A186389(A154293(n+2))`
-/

namespace A165721.P2222597658811055403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186389 (A154293 (n + 2)).toNat

end

end A165721.P2222597658811055403

namespace A165721

/-- `A186389(A154293(n+2))` -/
def P2222597658811055403.Spec : Prop :=
  ∀ n, P2222597658811055403.a n = A165721 (n + 1)

end A165721

/-! ## A165721.P11771136898140313287

`∩[A186388(n+1), A186389(n+1)]`
-/

namespace A165721.P11771136898140313287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165721.P11771136898140313287

namespace A165721

/-- `∩[A186388(n+1), A186389(n+1)]` -/
def P11771136898140313287.Spec : Prop :=
  ∀ n, (P11771136898140313287.a n : ℤ) = A165721 (n + 1)

end A165721

/-! ## A165721.P9983655569367376224

`record[C(A186389(n+1), A186387(n+1))]`
-/

namespace A165721.P9983655569367376224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A186389 (n + 1)).toNat (A186387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165721.P9983655569367376224

namespace A165721

/-- `record[C(A186389(n+1), A186387(n+1))]` -/
def P9983655569367376224.Spec : Prop :=
  ∀ n, (P9983655569367376224.a n : ℤ) = A165721 (n + 1)

end A165721

/-!
# A165722: Positive integers k such that the sum of decimal digits of (16^k - 1) equals 6*k.

The programs for A165722, there is no canonical definition to state claims against.
-/

/-! ## A165722.P16600118778579918316

`A165737(comp[A033580(n)])`
-/

namespace A165722.P16600118778579918316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165722.P16600118778579918316

/-! ## A165722.P406744923430553135

`A165737(comp[A165618(n)])`
-/

namespace A165722.P406744923430553135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165722.P406744923430553135

/-! ## A165722.P11416894059477876007

`A165737(comp[A316466(n)])`
-/

namespace A165722.P11416894059477876007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316466 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165722.P11416894059477876007

/-! ## A165722.P8438175853010437255

`A165737(comp[A140672(n²)])`
-/

namespace A165722.P8438175853010437255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165722.P8438175853010437255

/-! ## A165722.P13377048860635250454

`A165737(comp[∑[A140672(n)]])`
-/

namespace A165722.P13377048860635250454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165722.P13377048860635250454

/-!
# A165723: The (d+1)th digit after the decimal point in the decimal representation of 1/n, where d is the number of digits of n.

The programs for A165723, there is no canonical definition to state claims against.
-/

/-! ## A165723.P7265957419036917185

`A061861(n+1)%10`
-/

namespace A165723.P7265957419036917185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061861 (n + 1)) 10

end

end A165723.P7265957419036917185

/-! ## A165723.P5271017986499952642

`A010879(A061861(n+1))`
-/

namespace A165723.P5271017986499952642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A061861 (n + 1)).toNat

end

end A165723.P5271017986499952642

/-! ## A165723.P253849077461226721

`A217657(A061861(n+1)+10)`
-/

namespace A165723.P253849077461226721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A061861 (n + 1) + 10).toNat

end

end A165723.P253849077461226721

/-! ## A165723.P5083876427505037034

`A007953(A061861(n+1))-A052038(n+1)`
-/

namespace A165723.P5083876427505037034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A061861 (n + 1)).toNat - A052038 (n + 1)

end

end A165723.P5083876427505037034

/-! ## A165723.P16010272010518503887

`A097326(3*3*(n+1)+n)-A225693(A061861(n+1))`
-/

namespace A165723.P16010272010518503887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (3 * (3 * (n + 1)) + n) - A225693 (A061861 (n + 1)).toNat

end

end A165723.P16010272010518503887

/-!
# A165724: Digit sums of A092571.

The programs for A165724, there is no canonical definition to state claims against.
-/

/-! ## A165724.P5469034052439189703

`1+6*A056658(n+1)`
-/

namespace A165724.P5469034052439189703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 6 * A056658 (n + 1)

end

end A165724.P5469034052439189703

/-! ## A165724.P18083972805061567760

`6*A098088(n+1)-5`
-/

namespace A165724.P18083972805061567760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A098088 (n + 1) - 5

end

end A165724.P18083972805061567760

/-! ## A165724.P4897148485120701565

`A016921(A056658(n+1))`
-/

namespace A165724.P4897148485120701565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A056658 (n + 1)).toNat

end

end A165724.P4897148485120701565

/-! ## A165724.P17763112580993180584

`A016921(A098088(n+1)-1)`
-/

namespace A165724.P17763112580993180584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A098088 (n + 1) - 1).toNat

end

end A165724.P17763112580993180584

/-! ## A165724.P10661365750175900244

`A100764(A098088(n+1)+2)`
-/

namespace A165724.P10661365750175900244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (A098088 (n + 1) + 2).toNat

end

end A165724.P10661365750175900244

/-!
# A165725: Largest divisor of n coprime to 30. I.e., a(n) = max { k | gcd(n, k) = k and gcd(k, 30) = 1 }.

The programs for A165725, the canonical program `A165725.P14061313058113490236` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165725 has offset 1).

The definition of A165725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165725.P14061313058113490236

`(n+1)/A355582(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A165725

/-- `(n+1)/A355582(n+1)` -/
def P14061313058113490236.Spec : Prop :=
  ∀ n, P14061313058113490236.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P4009676030302240321

`A132740(A038502(n+1))`
-/

namespace A165725.P4009676030302240321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A038502 (n + 1)).toNat

end

end A165725.P4009676030302240321

namespace A165725

/-- `A132740(A038502(n+1))` -/
def P4009676030302240321.Spec : Prop :=
  ∀ n, P4009676030302240321.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P648156021800020389

`A132739(A065330(n+1))`
-/

namespace A165725.P648156021800020389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A065330 (n + 1)).toNat

end

end A165725.P648156021800020389

namespace A165725

/-- `A132739(A065330(n+1))` -/
def P648156021800020389.Spec : Prop :=
  ∀ n, P648156021800020389.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P1643424642055112978

`A065330(A132740(n+1))`
-/

namespace A165725.P1643424642055112978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A132740 (n + 1)).toNat

end

end A165725.P1643424642055112978

namespace A165725

/-- `A065330(A132740(n+1))` -/
def P1643424642055112978.Spec : Prop :=
  ∀ n, P1643424642055112978.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P14845382830789077641

`A214685(A000265(n+1))`
-/

namespace A165725.P14845382830789077641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A000265 (n + 1)).toNat

end

end A165725.P14845382830789077641

namespace A165725

/-- `A214685(A000265(n+1))` -/
def P14845382830789077641.Spec : Prop :=
  ∀ n, P14845382830789077641.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P14827153868436200217

`A214685(A004151(n+1))`
-/

namespace A165725.P14827153868436200217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A004151 (n + 1)).toNat

end

end A165725.P14827153868436200217

namespace A165725

/-- `A214685(A004151(n+1))` -/
def P14827153868436200217.Spec : Prop :=
  ∀ n, P14827153868436200217.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P5814709129588929329

`A214685(A078268(n+1))`
-/

namespace A165725.P5814709129588929329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A078268 (n + 1)).toNat

end

end A165725.P5814709129588929329

namespace A165725

/-- `A214685(A078268(n+1))` -/
def P5814709129588929329.Spec : Prop :=
  ∀ n, P5814709129588929329.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P10440490530336063755

`A007775(A141256(n+1)-1)`
-/

namespace A165725.P10440490530336063755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A141256 (n + 1) - 1).toNat

end

end A165725.P10440490530336063755

namespace A165725

/-- `A007775(A141256(n+1)-1)` -/
def P10440490530336063755.Spec : Prop :=
  ∀ n, P10440490530336063755.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P4018080925642834445

`A065330(n+1)/A060904(n+1)`
-/

namespace A165725.P4018080925642834445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065330 (n + 1) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A165725.P4018080925642834445

namespace A165725

/-- `A065330(n+1)/A060904(n+1)` -/
def P4018080925642834445.Spec : Prop :=
  ∀ n, P4018080925642834445.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P9317618300175061748

`A038502(n+1)/A132741(n+1)`
-/

namespace A165725.P9317618300175061748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038502 (n + 1) : ℚ) / (A132741 (n + 1) : ℚ)

end

end A165725.P9317618300175061748

namespace A165725

/-- `A038502(n+1)/A132741(n+1)` -/
def P9317618300175061748.Spec : Prop :=
  ∀ n, P9317618300175061748.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P3732169480157089932

`A132740(n+1)/A038500(n+1)`
-/

namespace A165725.P3732169480157089932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132740 (n + 1) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A165725.P3732169480157089932

namespace A165725

/-- `A132740(n+1)/A038500(n+1)` -/
def P3732169480157089932.Spec : Prop :=
  ∀ n, P3732169480157089932.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P13377724863291916821

`A132739(n+1)/A065331(n+1)`
-/

namespace A165725.P13377724863291916821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132739 (n + 1) : ℚ) / (A065331 (n + 1) : ℚ)

end

end A165725.P13377724863291916821

namespace A165725

/-- `A132739(n+1)/A065331(n+1)` -/
def P13377724863291916821.Spec : Prop :=
  ∀ n, P13377724863291916821.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P6577405535089520508

`(n+1)/A051037(A379005(n+1))`
-/

namespace A165725.P6577405535089520508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051037 (A379005 (n + 1)).toNat : ℚ)

end

end A165725.P6577405535089520508

namespace A165725

/-- `(n+1)/A051037(A379005(n+1))` -/
def P6577405535089520508.Spec : Prop :=
  ∀ n, P6577405535089520508.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P9642886733021634102

`A214685((n+1)/A234959(n+1))`
-/

namespace A165725.P9642886733021634102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A234959 (n + 1) : ℚ))).toNat

end

end A165725.P9642886733021634102

namespace A165725

/-- `A214685((n+1)/A234959(n+1))` -/
def P9642886733021634102.Spec : Prop :=
  ∀ n, P9642886733021634102.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P1306951558110866290

`(n+1)/A392597(A242603(n+1))`
-/

namespace A165725.P1306951558110866290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A392597 (A242603 (n + 1)).toNat : ℚ)

end

end A165725.P1306951558110866290

namespace A165725

/-- `(n+1)/A392597(A242603(n+1))` -/
def P1306951558110866290.Spec : Prop :=
  ∀ n, P1306951558110866290.a n = (A165725 (n + 1) : ℚ)

end A165725

/-! ## A165725.P5646208209357469930

`gcd(A132739(n+1), A140215(n+1))`
-/

namespace A165725.P5646208209357469930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132739 (n + 1)) (A140215 (n + 1))

end

end A165725.P5646208209357469930

namespace A165725

/-- `gcd(A132739(n+1), A140215(n+1))` -/
def P5646208209357469930.Spec : Prop :=
  ∀ n, (P5646208209357469930.a n : ℤ) = A165725 (n + 1)

end A165725

/-! ## A165725.P66959621686351223

`A038502(A000265((n+1)/A060904(n+1)))`
-/

namespace A165725.P66959621686351223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat).toNat

end

end A165725.P66959621686351223

namespace A165725

/-- `A038502(A000265((n+1)/A060904(n+1)))` -/
def P66959621686351223.Spec : Prop :=
  ∀ n, P66959621686351223.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P7041968538281960300

`A082725(A008585(lcm(16, n+1)))`
-/

namespace A165725.P7041968538281960300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (A008585 (Nat.lcm 16 (n + 1))).toNat

end

end A165725.P7041968538281960300

namespace A165725

/-- `A082725(A008585(lcm(16, n+1)))` -/
def P7041968538281960300.Spec : Prop :=
  ∀ n, P7041968538281960300.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P4147043038613355966

`A082725(48*A082725(n+1))`
-/

namespace A165725.P4147043038613355966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (48 * A082725 (n + 1)).toNat

end

end A165725.P4147043038613355966

namespace A165725

/-- `A082725(48*A082725(n+1))` -/
def P4147043038613355966.Spec : Prop :=
  ∀ n, P4147043038613355966.a n = A165725 (n + 1)

end A165725

/-! ## A165725.P16666999377781207786

`A065330(A004151(Δ[A016826(n)]))`
-/

namespace A165725.P16666999377781207786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A004151 (f1 (n + 1) - f1 n).toNat).toNat

end

end A165725.P16666999377781207786

namespace A165725

/-- `A065330(A004151(Δ[A016826(n)]))` -/
def P16666999377781207786.Spec : Prop :=
  ∀ n, P16666999377781207786.a n = A165725 (n + 1)

end A165725

/-!
# A165727: Table T(k,n) read by antidiagonals: denominator of 1/min(n,k)^2 -1/max(n,k)^2 with T(0,n) = T(k,0) = 0.

The programs for A165727, there is no canonical definition to state claims against.
-/

/-! ## A165727.P16257463028240559556

`A307070(A154867(n))²`
-/

namespace A165727.P16257463028240559556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307070 (A154867 n).toNat ^ 2

end

end A165727.P16257463028240559556

/-! ## A165727.P14434956280652740647

`A325820(n)^A000005(A260827(n+1))`
-/

namespace A165727.P14434956280652740647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325820 n : ℚ) ^ (A000005 (A260827 (n + 1)).toNat : ℤ)

end

end A165727.P14434956280652740647

/-! ## A165727.P14912851584719731811

`(A325820(n)%A329529(n+1))²`
-/

namespace A165727.P14912851584719731811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325820 n) (A329529 (n + 1)) ^ 2

end

end A165727.P14912851584719731811

/-! ## A165727.P11753169233689461179

`A373954(A022166(n))²`
-/

namespace A165727.P11753169233689461179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A022166 n).toNat ^ 2

end

end A165727.P11753169233689461179

/-!
# A165728: If we divide the sequence into these subsequences, the pattern is obvious. {{1,1}, {0,1}, {1,1}}, {{0,1,0,1}, {1,1,1,1}, {0,1,0,1}}, {{1,1,1,1,1,1,1,1}, {0,1,0,1,0,1,0,1}, {1,1,1,1,1,1,1,1}}, {{0,1,0,1,0,1,0,1,0,1,0,1,0,1,0}, {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, {0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1}}, ...

The programs for A165728, there is no canonical definition to state claims against.
-/

/-! ## A165728.P3073497829370640644

`(∑[A179970(n+5)]+1)%2`
-/

namespace A165728.P3073497829370640644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179970 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A165728.P3073497829370640644

/-! ## A165728.P7261943593989187535

`A152822(A179970(n+5)+1)`
-/

namespace A165728.P7261943593989187535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A179970 (n + 5) + 1).toNat

end

end A165728.P7261943593989187535

/-! ## A165728.P13275244989883439536

`A059841(A059841(n)*A179970(n+5))`
-/

namespace A165728.P13275244989883439536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A059841 n * A179970 (n + 5)).toNat

end

end A165728.P13275244989883439536

/-! ## A165728.P8228637688246661124

`A295308(A017042(n))`
-/

namespace A165728.P8228637688246661124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (A017042 n).toNat

end

end A165728.P8228637688246661124

/-! ## A165728.P6302622179991141599

`A266216((A066099(n+1)+A000203(2*(n+1)))*A266222(n))`
-/

namespace A165728.P6302622179991141599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 ((A066099 (n + 1) + A000203 (2 * (n + 1))) * A266222 n).toNat

end

end A165728.P6302622179991141599

/-!
# A165730: Number of distinct rate points of concentric permutation source codes with three initial codewords in dimension n.

The programs for A165730, there is no canonical definition to state claims against.
-/

/-! ## A165730.P10933894618319939717

`(a(n-1)+1)*A326702(a(n-1)+1)` with `a(0)=4`
-/

namespace A165730.P10933894618319939717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + 1) * A326702 (a (n - 1) + 1).toNat

end

end A165730.P10933894618319939717

/-!
# A165734: Period 2: repeat (6,30).

The programs for A165734, the canonical program `A165734.P17144810099035719709` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165734 has offset 1).

The definition of A165734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165734.P17144810099035719709

`30-(n+1)%2*24`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165734

/-- `30-(n+1)%2*24` -/
def P17144810099035719709.Spec : Prop :=
  ∀ n, P17144810099035719709.a n = A165734 (n + 1)

theorem P17144810099035719709.correct : P17144810099035719709.Spec := by
  intro n
  simp only [A165734, Nat.add_sub_cancel]

end A165734

/-!
# A165735: Surviving integers under the double-count Josephus problem (see A054995), modulo 3.

The programs for A165735, the canonical program `A165735.P14877846359675506891` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165735 has offset 1).

The definition of A165735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165735.P14877846359675506891

`A010872(A054995(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165735

/-- `A010872(A054995(n+1))` -/
def P14877846359675506891.Spec : Prop :=
  ∀ n, P14877846359675506891.a n = A165735 (n + 1)

theorem P14877846359675506891.correct : P14877846359675506891.Spec := by
  intro n
  simp only [A165735, Nat.add_sub_cancel]

end A165735

/-! ## A165735.P12809767754427531624

`(1-A193298(n+1)%(n+1)+n)%3`
-/

namespace A165735.P12809767754427531624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - Int.tmod (A193298 (n + 1)) (n + 1 : ℤ) + (n : ℤ)) 3

end

end A165735.P12809767754427531624

namespace A165735

/-- `(1-A193298(n+1)%(n+1)+n)%3` -/
def P12809767754427531624.Spec : Prop :=
  ∀ n, P12809767754427531624.a n = A165735 (n + 1)

end A165735

/-! ## A165735.P6555533522734249341

`A060236(A054995(n+1)+3)`
-/

namespace A165735.P6555533522734249341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (A054995 (n + 1) + 3).toNat

end

end A165735.P6555533522734249341

namespace A165735

/-- `A060236(A054995(n+1)+3)` -/
def P6555533522734249341.Spec : Prop :=
  ∀ n, P6555533522734249341.a n = A165735 (n + 1)

end A165735

/-! ## A165735.P7685983593291193205

`A054995(n+1)%A174971(n)`
-/

namespace A165735.P7685983593291193205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054995 (n + 1)) (A174971 n)

end

end A165735.P7685983593291193205

namespace A165735

/-- `A054995(n+1)%A174971(n)` -/
def P7685983593291193205.Spec : Prop :=
  ∀ n, P7685983593291193205.a n = A165735 (n + 1)

end A165735

/-! ## A165735.P6765690434986338081

`A054995(n+1-A002264(A054995(n+1)))`
-/

namespace A165735.P6765690434986338081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054995 ((n + 1 : ℤ) - A002264 (A054995 (n + 1)).toNat).toNat

end

end A165735.P6765690434986338081

namespace A165735

/-- `A054995(n+1-A002264(A054995(n+1)))` -/
def P6765690434986338081.Spec : Prop :=
  ∀ n, P6765690434986338081.a n = A165735 (n + 1)

end A165735

/-! ## A165735.P3484671123973491206

`gcd(2, ∑[A205592(4*n+3)])`
-/

namespace A165735.P3484671123973491206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205592 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165735.P3484671123973491206

namespace A165735

/-- `gcd(2, ∑[A205592(4*n+3)])` -/
def P3484671123973491206.Spec : Prop :=
  ∀ n, (P3484671123973491206.a n : ℤ) = A165735 (n + 1)

end A165735

/-! ## A165735.P5322009771059634667

`A198789(∑[n+3]+1)%3`
-/

namespace A165735.P5322009771059634667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 3

end

end A165735.P5322009771059634667

namespace A165735

/-- `A198789(∑[n+3]+1)%3` -/
def P5322009771059634667.Spec : Prop :=
  ∀ n, P5322009771059634667.a n = A165735 (n + 1)

end A165735

/-! ## A165735.P17211010757705501023

`A198788(∑[n+2]+4)%3`
-/

namespace A165735.P17211010757705501023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) 3

end

end A165735.P17211010757705501023

namespace A165735

/-- `A198788(∑[n+2]+4)%3` -/
def P17211010757705501023.Spec : Prop :=
  ∀ n, P17211010757705501023.a n = A165735 (n + 1)

end A165735

/-! ## A165735.P7679701780856685270

`(A198788(A167614(n+1))%3)!`
-/

namespace A165735.P7679701780856685270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A198788 (A167614 (n + 1)).toNat) 3).toNat

end

end A165735.P7679701780856685270

namespace A165735

/-- `(A198788(A167614(n+1))%3)!` -/
def P7679701780856685270.Spec : Prop :=
  ∀ n, (P7679701780856685270.a n : ℤ) = A165735 (n + 1)

end A165735

/-!
# A165737: Positive integers n such that the sum of decimal digits of (16^n-1) is divisible by n.

The programs for A165737, there is no canonical definition to state claims against.
-/

/-! ## A165737.P15341030712815605179

`∪[A163383(n+1)², A165722(n+1)]`
-/

namespace A165737.P15341030712815605179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163383 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165737.P15341030712815605179

/-! ## A165737.P16323988775551984018

`lt[A289222(A124678(n+1)), A056115(n)]`
-/

namespace A165737.P16323988775551984018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289222 (A124678 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165737.P16323988775551984018

/-!
# A165738: Rank deficiency (= dimension of the null space) of the n X n "Lights Out" puzzle on a torus.

The programs for A165738, there is no canonical definition to state claims against.
-/

/-! ## A165738.P7445328541912030583

`A083220(A159257(2*n+1))`
-/

namespace A165738.P7445328541912030583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 (A159257 (2 * n + 1)).toNat

end

end A165738.P7445328541912030583

/-! ## A165738.P11183559058535823882

`A129760(A159257(Δ[n²])+4)`
-/

namespace A165738.P11183559058535823882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A159257 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 4).toNat

end

end A165738.P11183559058535823882

/-! ## A165738.P5899196592676653568

`A159257(2*n+1)+Δ[A008611(2*n)]`
-/

namespace A165738.P5899196592676653568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A165738.P5899196592676653568

/-! ## A165738.P6932087408885032937

`A159257(4*n+3)-A159257(2*n+1)`
-/

namespace A165738.P6932087408885032937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (4 * n + 3) - A159257 (2 * n + 1)

end

end A165738.P6932087408885032937

/-! ## A165738.P2834988972697655456

`A023443(A159257(2*n+1)+gcd(3, n+1))`
-/

namespace A165738.P2834988972697655456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159257 (2 * n + 1) + (Nat.gcd 3 (n + 1) : ℤ)).toNat

end

end A165738.P2834988972697655456

/-!
# A165740: Positive integers n such that solution to the toric n X n "Lights Out" puzzle is not unique (up to the order of flippings; each flipping appears at most once).

The programs for A165740, there is no canonical definition to state claims against.
-/

/-! ## A165740.P15839929766594933667

`lt[1, A159257(2*n+1)]+1`
-/

namespace A165740.P15839929766594933667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165740.P15839929766594933667

/-! ## A165740.P17826493355312237642

`record[A001057(A117870(n+2))]`
-/

namespace A165740.P17826493355312237642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A117870 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165740.P17826493355312237642

/-! ## A165740.P9490674119638704771

`∪[A093614(n+1), A016945(n)]`
-/

namespace A165740.P9490674119638704771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P9490674119638704771

/-! ## A165740.P16309672403017603067

`∪[A031193(n+1), A093614(n+1)]`
-/

namespace A165740.P16309672403017603067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P16309672403017603067

/-! ## A165740.P9103832111205184758

`∪[A080307(n+1), A093614(n+1)]`
-/

namespace A165740.P9103832111205184758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P9103832111205184758

/-! ## A165740.P8175710681069997774

`∪[A093614(n+1), A126590(n+1)]`
-/

namespace A165740.P8175710681069997774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P8175710681069997774

/-! ## A165740.P14352194104043888877

`∪[A093614(n+1), A259754(n+1)]`
-/

namespace A165740.P14352194104043888877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P14352194104043888877

/-! ## A165740.P12622743438298324480

`∪[A093614(n+1), A277569(n+1)]`
-/

namespace A165740.P12622743438298324480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P12622743438298324480

/-! ## A165740.P234698642799639105

`∪[A093614(n+1), A392368(n+1)]`
-/

namespace A165740.P234698642799639105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P234698642799639105

/-! ## A165740.P6449608864611819479

`record[A025480(A093614(n+2))]`
-/

namespace A165740.P6449608864611819479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A093614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165740.P6449608864611819479

/-! ## A165740.P15099486094278176687

`lt[0, A165738(n+1)]+1`
-/

namespace A165740.P15099486094278176687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165740.P15099486094278176687

/-! ## A165740.P1716093280589078624

`lt[0, A165738(A028310(n))]`
-/

namespace A165740.P1716093280589078624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165740.P1716093280589078624

/-! ## A165740.P3550287333562291

`eq[A000007(n+1), A000007(A165738(n+1))]+1`
-/

namespace A165740.P3550287333562291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A165738 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A165740.P3550287333562291

/-! ## A165740.P288786357587168454

`lt[1, A165738(A233583(n+1))]`
-/

namespace A165740.P288786357587168454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165740.P288786357587168454

/-! ## A165740.P3894411509869084380

`lt[1, A075462(2*n+1)]+1`
-/

namespace A165740.P3894411509869084380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165740.P3894411509869084380

/-! ## A165740.P9560527396564581016

`∪[A086748(n+1), A093614(n+1)]`
-/

namespace A165740.P9560527396564581016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165740.P9560527396564581016

/-!
# A165741: Positive integers n such that the toric n X n "Lights Out" puzzle has a unique solution (up to the order of flippings; each flipping appears at most once).

The programs for A165741, there is no canonical definition to state claims against.
-/

/-! ## A165741.P6552082733477271957

`lt[A159257(2*n+1), 1]+1`
-/

namespace A165741.P6552082733477271957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A165741.P6552082733477271957

/-! ## A165741.P1878602289224307406

`eq[2, A159257(n+1+n)²+2]+1`
-/

namespace A165741.P1878602289224307406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1 + n) ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165741.P1878602289224307406

/-! ## A165741.P14449415323468903073

`eq[2, A347634(A159257(2*n+1)+1)]+1`
-/

namespace A165741.P14449415323468903073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A159257 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165741.P14449415323468903073

/-! ## A165741.P13359191450957618615

`lt[A165738(n+1), 1]+1`
-/

namespace A165741.P13359191450957618615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A165741.P13359191450957618615

/-! ## A165741.P16833752981145706795

`lt[n*A165738(A028310(n)), n]`
-/

namespace A165741.P16833752981145706795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165738 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165741.P16833752981145706795

/-! ## A165741.P3906991196384527790

`record[n+1-A015238(n)*A165738(n+1)]`
-/

namespace A165741.P3906991196384527790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A015238 n * A165738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165741.P3906991196384527790

/-! ## A165741.P9570057406448448694

`lt[A165738(n*A176895(2*a(n-1))), 1]` with `a(0)=6`
-/

namespace A165741.P9570057406448448694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A165738 ((n : ℤ) * A176895 (2 * f1 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165741.P9570057406448448694

/-! ## A165741.P11504978333225771438

`record[(n+1)/A003973(5*A165738(n+1)+1)]`
-/

namespace A165741.P11504978333225771438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003973 (5 * A165738 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165741.P11504978333225771438

/-! ## A165741.P14353586988931919708

`record[n+1-A045778(n+1)*A165738(n+1)]`
-/

namespace A165741.P14353586988931919708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045778 (n + 1) * A165738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165741.P14353586988931919708

/-! ## A165741.P18274730745560674826

`record[n+1-A100380(n+1)*A165738(n+1)]`
-/

namespace A165741.P18274730745560674826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100380 (n + 1) * A165738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165741.P18274730745560674826

/-! ## A165741.P11161270124175773205

`eq[A000007(n), A165738(A000007(n)+n)]`
-/

namespace A165741.P11161270124175773205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165741.P11161270124175773205

/-! ## A165741.P16296938265714327527

`eq[1, A075462(2*n+1)]+1`
-/

namespace A165741.P16296938265714327527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165741.P16296938265714327527

/-!
# A165742: First differences of A003591.

The programs for A165742, there is no canonical definition to state claims against.
-/

/-! ## A165742.P801622717858778229

`Δ[A003591(n+1)]`
-/

namespace A165742.P801622717858778229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165742.P801622717858778229

/-! ## A165742.P15276177991010457

`Δ[A033847(n+1)/14]`
-/

namespace A165742.P15276177991010457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033847 (n + 1) : ℚ) / 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165742.P15276177991010457

/-! ## A165742.P8848101715877701908

`A003591(n+2)-A003591(n+1)`
-/

namespace A165742.P8848101715877701908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 2) - A003591 (n + 1)

end

end A165742.P8848101715877701908

/-! ## A165742.P10341759451142256517

`Δ[record[A003591(A126759(n))]]`
-/

namespace A165742.P10341759451142256517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165742.P10341759451142256517

/-! ## A165742.P6494496270657516603

`Δ[record[A003591(A028920(n))]]`
-/

namespace A165742.P6494496270657516603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165742.P6494496270657516603

/-!
# A165743: The greatest common divisor of n and 210.

The programs for A165743, the canonical program `A165743.P13176155077439662060` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165743 has offset 1).

The definition of A165743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165743.P13176155077439662060

`gcd(n+1, 210)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165743

/-- `gcd(n+1, 210)` -/
def P13176155077439662060.Spec : Prop :=
  ∀ n, (P13176155077439662060.a n : ℤ) = A165743 (n + 1)

theorem P13176155077439662060.correct : P13176155077439662060.Spec := by
  intro n
  simp only [A165743, Nat.add_sub_cancel]

end A165743

/-!
# A165744: Numbers k with property that 6^k is the sum of two consecutive primes.

The programs for A165744, there is no canonical definition to state claims against.
-/

/-! ## A165744.P6359630919065950372

`eq[1, A180133(n)]`
-/

namespace A165744.P6359630919065950372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180133 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165744.P6359630919065950372

/-! ## A165744.P4861266009760484948

`lt[A180133(n+1), 2]+1`
-/

namespace A165744.P4861266009760484948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180133 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A165744.P4861266009760484948

/-!
# A165745: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165745, there is no canonical definition to state claims against.
-/

/-! ## A165745.P6117664398517454286

`A008486(record[A251749(n)-A251764(n)])`
-/

namespace A165745.P6117664398517454286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 n - A251764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165745.P6117664398517454286

/-! ## A165745.P9131156386367782660

`A166327(A065673(n+1))-A042950(n)`
-/

namespace A165745.P9131156386367782660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166327 (A065673 (n + 1)).toNat - A042950 n

end

end A165745.P9131156386367782660

/-! ## A165745.P4816585861441526568

`A105637(xor(A108577(n+1)², A033484(n)))`
-/

namespace A165745.P4816585861441526568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (Int.xor (A108577 (n + 1) ^ 2) (A033484 n)).toNat

end

end A165745.P4816585861441526568

/-! ## A165745.P10075780619567317489

`Δ[Δ[A004151(A166467(n))]]`
-/

namespace A165745.P10075780619567317489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A166467 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165745.P10075780619567317489

/-! ## A165745.P5438563699666195279

`A269172(Δ[Δ[A166467(n)]])`
-/

namespace A165745.P5438563699666195279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (f1 (n + 1) - f1 n).toNat

end

end A165745.P5438563699666195279

/-!
# A165746: a(n) = 3 - 2*3^n.

The programs for A165746, the canonical program `A165746.P9992936474950471143` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165746 has offset 0).

The definition of A165746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3-2*3^n` (program `A165746.P9992936474950471143`, by `A165746.P9992936474950471143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165746.P9992936474950471143

`3-2*3^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165746

/-- `3-2*3^n` -/
def P9992936474950471143.Spec : Prop :=
  ∀ n, P9992936474950471143.a n = A165746 n

theorem P9992936474950471143.correct : P9992936474950471143.Spec := by
  intro n
  simp only [A165746]

end A165746

/-! ## A165746.P1939530799303087476

`ogf((1-7x)/(1-4x+3x^2))`
-/

namespace A165746.P1939530799303087476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -4, 3] n

end

end A165746.P1939530799303087476

namespace A165746

/-- `ogf((1-7x)/(1-4x+3x^2))` -/
def P1939530799303087476.Spec : Prop :=
  ∀ n, P1939530799303087476.a n = A165746 n

end A165746

/-! ## A165746.P17617703605584948889

`3*(a(n-1)-2)` with `a(0)=1`
-/

namespace A165746.P17617703605584948889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) - 2)

end

end A165746.P17617703605584948889

namespace A165746

/-- `3*(a(n-1)-2)` -/
def P17617703605584948889.Spec : Prop :=
  ∀ n, P17617703605584948889.a n = A165746 n

theorem P17617703605584948889.correct : P17617703605584948889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165746, Nat.add_sub_cancel, A165746.P17617703605584948889.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165746, Nat.add_sub_cancel, A165746.P17617703605584948889.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165746

/-! ## A165746.P15682764569107257190

`-lcm(3, 2-a(n-1))` with `a(0)=1`
-/

namespace A165746.P15682764569107257190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.lcm 3 (2 - a (n - 1)) : ℤ)

end

end A165746.P15682764569107257190

namespace A165746

/-- `-lcm(3, 2-a(n-1))` -/
def P15682764569107257190.Spec : Prop :=
  ∀ n, P15682764569107257190.a n = A165746 n

end A165746

/-! ## A165746.P14589033998300614188

`(12/2-lcm(4, 3^n))/2`
-/

namespace A165746.P14589033998300614188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 : ℚ) / 2 - (Nat.lcm 4 (3 ^ n) : ℚ)) / 2

end

end A165746.P14589033998300614188

namespace A165746

/-- `(12/2-lcm(4, 3^n))/2` -/
def P14589033998300614188.Spec : Prop :=
  ∀ n, P14589033998300614188.a n = (A165746 n : ℚ)

end A165746

/-! ## A165746.P11404767271768899999

`(a(n-1)-2)/sqrt(1/9)` with `a(0)=1`
-/

namespace A165746.P11404767271768899999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 2) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A165746.P11404767271768899999

namespace A165746

/-- `(a(n-1)-2)/sqrt(1/9)` -/
def P11404767271768899999.Spec : Prop :=
  ∀ n, P11404767271768899999.a n = (A165746 n : ℝ)

theorem P11404767271768899999.correct : P11404767271768899999.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165746, Nat.add_sub_cancel, A165746.P11404767271768899999.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165746, Nat.add_sub_cancel, A165746.P11404767271768899999.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165746

/-! ## A165746.P3106493463384260666

`(2-a(n-1))/(2/3-1)` with `a(0)=1`
-/

namespace A165746.P3106493463384260666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - a (n - 1)) / ((2 : ℚ) / 3 - 1)

end

end A165746.P3106493463384260666

namespace A165746

/-- `(2-a(n-1))/(2/3-1)` -/
def P3106493463384260666.Spec : Prop :=
  ∀ n, P3106493463384260666.a n = (A165746 n : ℚ)

theorem P3106493463384260666.correct : P3106493463384260666.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165746, Nat.add_sub_cancel, A165746.P3106493463384260666.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165746, Nat.add_sub_cancel, A165746.P3106493463384260666.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165746

/-! ## A165746.P11292678668884650797

`∑[a(n-1)+a(n-1)+a(n-1)]` with `a(0)=1, a(1)=-4`
-/

namespace A165746.P11292678668884650797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165746.P11292678668884650797

namespace A165746

/-- `∑[a(n-1)+a(n-1)+a(n-1)]` -/
def P11292678668884650797.Spec : Prop :=
  ∀ n, P11292678668884650797.a n = A165746 n

end A165746

/-! ## A165746.P16352721459030362132

`floor(a(n-1)+a(n-1)+a(n-1)-6)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165746.P16352721459030362132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 6))

end

end A165746.P16352721459030362132

namespace A165746

/-- `floor(a(n-1)+a(n-1)+a(n-1)-6)` -/
def P16352721459030362132.Spec : Prop :=
  ∀ n, P16352721459030362132.a n = A165746 n

theorem P16352721459030362132.correct : P16352721459030362132.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165746, Nat.add_sub_cancel, A165746.P16352721459030362132.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165746, Nat.add_sub_cancel, A165746.P16352721459030362132.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165746

/-! ## A165746.P2898398324043054905

`floor(a(n-1)-(6-a(n-1)-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165746.P2898398324043054905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (6 - a (n - 1) - a (n - 1))

end

end A165746.P2898398324043054905

namespace A165746

/-- `floor(a(n-1)-(6-a(n-1)-a(n-1)))` -/
def P2898398324043054905.Spec : Prop :=
  ∀ n, P2898398324043054905.a n = A165746 n

theorem P2898398324043054905.correct : P2898398324043054905.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165746, Nat.add_sub_cancel, A165746.P2898398324043054905.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165746, Nat.add_sub_cancel, A165746.P2898398324043054905.a, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165746

/-! ## A165746.P12454092033051257646

`Δ[-A107583(n)]`
-/

namespace A165746.P12454092033051257646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165746.P12454092033051257646

namespace A165746

/-- `Δ[-A107583(n)]` -/
def P12454092033051257646.Spec : Prop :=
  ∀ n, P12454092033051257646.a n = A165746 n

theorem P12454092033051257646.correct : P12454092033051257646.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P12454092033051257646.f1, A165746.P12454092033051257646.a, A165746.P9992936474950471143.a, A107583, A107583.P8707585772826993051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P12487905828014524903

`Δ[n-A061981(n)]`
-/

namespace A165746.P12487905828014524903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165746.P12487905828014524903

namespace A165746

/-- `Δ[n-A061981(n)]` -/
def P12487905828014524903.Spec : Prop :=
  ∀ n, P12487905828014524903.a n = A165746 n

theorem P12487905828014524903.correct : P12487905828014524903.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P12487905828014524903.f1, A165746.P12487905828014524903.a, A165746.P9992936474950471143.a, A061981, A061981.P3646078623781529490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P3373443032267032939

`Δ[n-A186948(n)]`
-/

namespace A165746.P3373443032267032939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A186948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165746.P3373443032267032939

namespace A165746

/-- `Δ[n-A186948(n)]` -/
def P3373443032267032939.Spec : Prop :=
  ∀ n, P3373443032267032939.a n = A165746 n

theorem P3373443032267032939.correct : P3373443032267032939.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P3373443032267032939.f1, A165746.P3373443032267032939.a, A165746.P9992936474950471143.a, A186948, A186948.P6848014094409711045.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P8816426642859514500

`(2-A302507(n))/2`
-/

namespace A165746.P8816426642859514500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A302507 n : ℚ) / 2

end

end A165746.P8816426642859514500

namespace A165746

/-- `(2-A302507(n))/2` -/
def P8816426642859514500.Spec : Prop :=
  ∀ n, P8816426642859514500.a n = (A165746 n : ℚ)

theorem P8816426642859514500.correct : P8816426642859514500.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P8816426642859514500.a, A165746.P9992936474950471143.a, A302507, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P1393336379737920595

`(3-A036543(n))/2`
-/

namespace A165746.P1393336379737920595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A036543 n : ℚ) / 2

end

end A165746.P1393336379737920595

namespace A165746

/-- `(3-A036543(n))/2` -/
def P1393336379737920595.Spec : Prop :=
  ∀ n, P1393336379737920595.a n = (A165746 n : ℚ)

theorem P1393336379737920595.correct : P1393336379737920595.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P1393336379737920595.a, A165746.P9992936474950471143.a, A036543, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P17055417462325265293

`(5-A171498(n))/2`
-/

namespace A165746.P17055417462325265293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A171498 n : ℚ) / 2

end

end A165746.P17055417462325265293

namespace A165746

/-- `(5-A171498(n))/2` -/
def P17055417462325265293.Spec : Prop :=
  ∀ n, P17055417462325265293.a n = (A165746 n : ℚ)

theorem P17055417462325265293.correct : P17055417462325265293.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P17055417462325265293.a, A165746.P9992936474950471143.a, A171498, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P9277128022902761150

`(5-A036545(n))/4`
-/

namespace A165746.P9277128022902761150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A036545 n : ℚ) / 4

end

end A165746.P9277128022902761150

namespace A165746

/-- `(5-A036545(n))/4` -/
def P9277128022902761150.Spec : Prop :=
  ∀ n, P9277128022902761150.a n = (A165746 n : ℚ)

theorem P9277128022902761150.correct : P9277128022902761150.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P9277128022902761150.a, A165746.P9992936474950471143.a, A036545, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P3105625777379837899

`Δ[A176805(n)-Δ[A176805(n)]]`
-/

namespace A165746.P3105625777379837899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176805 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176805 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165746.P3105625777379837899

namespace A165746

/-- `Δ[A176805(n)-Δ[A176805(n)]]` -/
def P3105625777379837899.Spec : Prop :=
  ∀ n, P3105625777379837899.a n = A165746 n

theorem P3105625777379837899.correct : P3105625777379837899.Spec := by
  intro n
  simp only [A165746, Nat.add_sub_cancel, A165746.P3105625777379837899.f2, A165746.P3105625777379837899.f1, A165746.P3105625777379837899.a, A165746.P9992936474950471143.a, A176805, A176805.P17224655801162528754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165746

/-! ## A165746.P3068701541737866682

`A176225(∑[n+1]+1)`
-/

namespace A165746.P3068701541737866682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A165746.P3068701541737866682

namespace A165746

/-- `A176225(∑[n+1]+1)` -/
def P3068701541737866682.Spec : Prop :=
  ∀ n, P3068701541737866682.a n = A165746 n

end A165746

/-! ## A165746.P9346603932252292722

`(A000079(n+1)-A081656(n))/A000079(n)`
-/

namespace A165746.P9346603932252292722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A081656 n : ℚ) / (A000079 n : ℚ)

end

end A165746.P9346603932252292722

namespace A165746

/-- `(A000079(n+1)-A081656(n))/A000079(n)` -/
def P9346603932252292722.Spec : Prop :=
  ∀ n, P9346603932252292722.a n = (A165746 n : ℚ)

end A165746

/-!
# A165747: a(n) = 1-2n.

The programs for A165747, the canonical program `A165747.P841094423596546419` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165747 has offset 0).

The definition of A165747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2*n` (program `A165747.P841094423596546419`, by `A165747.P841094423596546419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165747.P841094423596546419

`1-2*n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165747

/-- `1-2*n` -/
def P841094423596546419.Spec : Prop :=
  ∀ n, P841094423596546419.a n = A165747 n

theorem P841094423596546419.correct : P841094423596546419.Spec := by
  intro n
  simp only [A165747]

end A165747

/-!
# A165748: a(n) = (8/9)*(2+7*(-8)^(n-1)).

The programs for A165748, the canonical program `A165748.P4439501861601019006` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165748 has offset 0).

The definition of A165748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8/9*(2+7*(-8)^(n-1))` (program `A165748.P8296120090975712471`, by `A165748.P8296120090975712471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165748.P8296120090975712471

`8/9*(2+7*(-8)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165748.P8296120090975712471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 9 * (2 + 7 * (-8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165748.P8296120090975712471

namespace A165748

/-- `8/9*(2+7*(-8)^(n-1))` -/
def P8296120090975712471.Spec : Prop :=
  ∀ n, P8296120090975712471.a n = (A165748 n : ℚ)

theorem P8296120090975712471.correct : P8296120090975712471.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165748, Nat.add_sub_cancel, A165748.P8296120090975712471.a, A165748.P4439501861601019006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165748, Nat.add_sub_cancel, A165748.P8296120090975712471.a, A165748.P4439501861601019006.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A165748

/-! ## A165748.P4439501861601019006

`8*a(n-2)-7*a(n-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165748

/-- `8*a(n-2)-7*a(n-1)` -/
def P4439501861601019006.Spec : Prop :=
  ∀ n, P4439501861601019006.a n = A165748 n

theorem P4439501861601019006.correct : P4439501861601019006.Spec := by
  intro n
  simp only [A165748]

end A165748

/-! ## A165748.P13514038944662933957

`∑[ogf((1+15x)/(1+8x))]`
-/

namespace A165748.P13514038944662933957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15] [1, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165748.P13514038944662933957

namespace A165748

/-- `∑[ogf((1+15x)/(1+8x))]` -/
def P13514038944662933957.Spec : Prop :=
  ∀ n, P13514038944662933957.a n = A165748 n

end A165748

/-! ## A165748.P17902603247158322219

`ogf((1+15x)/(1+7x-8x^2))`
-/

namespace A165748.P17902603247158322219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15] [1, 7, -8] n

end

end A165748.P17902603247158322219

namespace A165748

/-- `ogf((1+15x)/(1+7x-8x^2))` -/
def P17902603247158322219.Spec : Prop :=
  ∀ n, P17902603247158322219.a n = A165748 n

end A165748

/-! ## A165748.P4784009295597746060

`16-8*a(n-1)` with `a(0)=1`
-/

namespace A165748.P4784009295597746060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 - 8 * a (n - 1)

end

end A165748.P4784009295597746060

namespace A165748

/-- `16-8*a(n-1)` -/
def P4784009295597746060.Spec : Prop :=
  ∀ n, P4784009295597746060.a n = A165748 n

end A165748

/-! ## A165748.P14774620704587182254

`(2-a(n-1))/(1/2)^3` with `a(0)=1`
-/

namespace A165748.P14774620704587182254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - a (n - 1)) / ((1 : ℚ) / 2) ^ 3

end

end A165748.P14774620704587182254

namespace A165748

/-- `(2-a(n-1))/(1/2)^3` -/
def P14774620704587182254.Spec : Prop :=
  ∀ n, P14774620704587182254.a n = (A165748 n : ℚ)

end A165748

/-! ## A165748.P11806446190949369349

`∑[A055274(n)*A165326(n)]`
-/

namespace A165748.P11806446190949369349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165748.P11806446190949369349

namespace A165748

/-- `∑[A055274(n)*A165326(n)]` -/
def P11806446190949369349.Spec : Prop :=
  ∀ n, P11806446190949369349.a n = A165748 n

end A165748

/-! ## A165748.P13644630961810198106

`2-A033999(n)*A090409(n)`
-/

namespace A165748.P13644630961810198106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n * A090409 n

end

end A165748.P13644630961810198106

namespace A165748

/-- `2-A033999(n)*A090409(n)` -/
def P13644630961810198106.Spec : Prop :=
  ∀ n, P13644630961810198106.a n = A165748 n

end A165748

/-! ## A165748.P5677540564540988808

`(4-a(n-1))²-a(n-1)²` with `a(0)=1`
-/

namespace A165748.P5677540564540988808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 - a (n - 1)) ^ 2 - a (n - 1) ^ 2

end

end A165748.P5677540564540988808

namespace A165748

/-- `(4-a(n-1))²-a(n-1)²` -/
def P5677540564540988808.Spec : Prop :=
  ∀ n, P5677540564540988808.a n = A165748 n

end A165748

/-!
# A165749: a(n) = (9/5)*(1+4*(-9)^(n-1)).

The programs for A165749, the canonical program `A165749.P10598932218390690233` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165749 has offset 0).

The definition of A165749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165749.P10598932218390690233

`(9-4*(-9)^n)/5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165749

/-- `(9-4*(-9)^n)/5` -/
def P10598932218390690233.Spec : Prop :=
  ∀ n, P10598932218390690233.a n = (A165749 n : ℚ)

end A165749

/-! ## A165749.P12269311063273133296

`9/5*(1+4*(-9)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165749.P12269311063273133296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 5 * (1 + 4 * (-9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165749.P12269311063273133296

namespace A165749

/-- `9/5*(1+4*(-9)^(n-1))` -/
def P12269311063273133296.Spec : Prop :=
  ∀ n, P12269311063273133296.a n = (A165749 n : ℚ)

end A165749

/-! ## A165749.P17730237518567487990

`∑[ogf((1+17x)/(1+9x))]`
-/

namespace A165749.P17730237518567487990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17] [1, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165749.P17730237518567487990

namespace A165749

/-- `∑[ogf((1+17x)/(1+9x))]` -/
def P17730237518567487990.Spec : Prop :=
  ∀ n, P17730237518567487990.a n = A165749 n

end A165749

/-! ## A165749.P12113668712538563828

`ogf((1+17x)/(1+8x-9x^2))`
-/

namespace A165749.P12113668712538563828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17] [1, 8, -9] n

end

end A165749.P12113668712538563828

namespace A165749

/-- `ogf((1+17x)/(1+8x-9x^2))` -/
def P12113668712538563828.Spec : Prop :=
  ∀ n, P12113668712538563828.a n = A165749 n

end A165749

/-! ## A165749.P1193570017225141192

`5-4*A083294(n)`
-/

namespace A165749.P1193570017225141192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A083294 n

end

end A165749.P1193570017225141192

namespace A165749

/-- `5-4*A083294(n)` -/
def P1193570017225141192.Spec : Prop :=
  ∀ n, P1193570017225141192.a n = A165749 n

end A165749

/-! ## A165749.P18437399143085411566

`∑[A055275(n)*A165326(n)]`
-/

namespace A165749.P18437399143085411566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165749.P18437399143085411566

namespace A165749

/-- `∑[A055275(n)*A165326(n)]` -/
def P18437399143085411566.Spec : Prop :=
  ∀ n, P18437399143085411566.a n = A165749 n

end A165749

/-!
# A165750: a(n) = (10/11)*(2+9*(-10)^(n-1)).

The programs for A165750, the canonical program `A165750.P13967842448134396208` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165750 has offset 0).

The definition of A165750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10/11*(2+9*(-10)^(n-1))` (program `A165750.P11920720579965061336`, by `A165750.P11920720579965061336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165750.P11920720579965061336

`10/11*(2+9*(-10)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165750.P11920720579965061336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) / 11 * (2 + 9 * (-10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165750.P11920720579965061336

namespace A165750

/-- `10/11*(2+9*(-10)^(n-1))` -/
def P11920720579965061336.Spec : Prop :=
  ∀ n, P11920720579965061336.a n = (A165750 n : ℚ)

theorem P11920720579965061336.correct : P11920720579965061336.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165750, Nat.add_sub_cancel, A165750.P11920720579965061336.a, A165750.P13967842448134396208.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165750, Nat.add_sub_cancel, A165750.P11920720579965061336.a, A165750.P13967842448134396208.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A165750

/-! ## A165750.P3451119559350532610

`∑[ogf((1+19x)/(1+10x))]`
-/

namespace A165750.P3451119559350532610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 19] [1, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165750.P3451119559350532610

namespace A165750

/-- `∑[ogf((1+19x)/(1+10x))]` -/
def P3451119559350532610.Spec : Prop :=
  ∀ n, P3451119559350532610.a n = A165750 n

end A165750

/-! ## A165750.P14179796056942810444

`ogf((1+19x)/(1+9x-10x^2))`
-/

namespace A165750.P14179796056942810444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 19] [1, 9, -10] n

end

end A165750.P14179796056942810444

namespace A165750

/-- `ogf((1+19x)/(1+9x-10x^2))` -/
def P14179796056942810444.Spec : Prop :=
  ∀ n, P14179796056942810444.a n = A165750 n

end A165750

/-! ## A165750.P1411974955204521602

`4-a(n-1)-a(n-1)-(a(n-1)-2)/(1/2)^3` with `a(0)=1`
-/

namespace A165750.P1411974955204521602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 - a (n - 1) - a (n - 1) - (a (n - 1) - 2) / ((1 : ℚ) / 2) ^ 3

end

end A165750.P1411974955204521602

namespace A165750

/-- `4-a(n-1)-a(n-1)-(a(n-1)-2)/(1/2)^3` -/
def P1411974955204521602.Spec : Prop :=
  ∀ n, P1411974955204521602.a n = (A165750 n : ℚ)

end A165750

/-! ## A165750.P7167358439686049824

`∑[Δ[A178501(n)]*A165326(n)]`
-/

namespace A165750.P7167358439686049824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165750.P7167358439686049824

namespace A165750

/-- `∑[Δ[A178501(n)]*A165326(n)]` -/
def P7167358439686049824.Spec : Prop :=
  ∀ n, P7167358439686049824.a n = A165750 n

end A165750

/-! ## A165750.P12021356443262222307

`20*(2-a(n-1))/2` with `a(0)=1`
-/

namespace A165750.P12021356443262222307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  20 * (2 - a (n - 1)) / 2

end

end A165750.P12021356443262222307

namespace A165750

/-- `20*(2-a(n-1))/2` -/
def P12021356443262222307.Spec : Prop :=
  ∀ n, P12021356443262222307.a n = (A165750 n : ℚ)

end A165750

/-! ## A165750.P13967842448134396208

`(5-a(n-1))²-(a(n-1)²+5)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165750

/-- `(5-a(n-1))²-(a(n-1)²+5)` -/
def P13967842448134396208.Spec : Prop :=
  ∀ n, P13967842448134396208.a n = A165750 n

theorem P13967842448134396208.correct : P13967842448134396208.Spec := by
  intro n
  simp only [A165750]

end A165750

/-! ## A165750.P1769145083958076323

`(5-a(n-1))²-5-a(n-1)²` with `a(0)=1`
-/

namespace A165750.P1769145083958076323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 - a (n - 1)) ^ 2 - 5 - a (n - 1) ^ 2

end

end A165750.P1769145083958076323

namespace A165750

/-- `(5-a(n-1))²-5-a(n-1)²` -/
def P1769145083958076323.Spec : Prop :=
  ∀ n, P1769145083958076323.a n = A165750 n

end A165750

/-!
# A165751: a(n) = 4 - 3*2^n.

The programs for A165751, the canonical program `A165751.P9848275255671097216` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165751 has offset 0).

The definition of A165751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4-3*2^n` (program `A165751.P9848275255671097216`, by `A165751.P9848275255671097216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165751.P9848275255671097216

`4-3*2^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165751

/-- `4-3*2^n` -/
def P9848275255671097216.Spec : Prop :=
  ∀ n, P9848275255671097216.a n = A165751 n

theorem P9848275255671097216.correct : P9848275255671097216.Spec := by
  intro n
  simp only [A165751]

end A165751

/-! ## A165751.P9551767823381154329

`ogf((1-5x)/(1-3x+2x^2))`
-/

namespace A165751.P9551767823381154329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -3, 2] n

end

end A165751.P9551767823381154329

namespace A165751

/-- `ogf((1-5x)/(1-3x+2x^2))` -/
def P9551767823381154329.Spec : Prop :=
  ∀ n, P9551767823381154329.a n = A165751 n

end A165751

/-! ## A165751.P1885500886760224679

`2*(a(n-1)-2)` with `a(0)=1`
-/

namespace A165751.P1885500886760224679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - 2)

end

end A165751.P1885500886760224679

namespace A165751

/-- `2*(a(n-1)-2)` -/
def P1885500886760224679.Spec : Prop :=
  ∀ n, P1885500886760224679.a n = A165751 n

theorem P1885500886760224679.correct : P1885500886760224679.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P1885500886760224679.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P1885500886760224679.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P6682687426891293370

`(2-a(n-1))/(1/2-1)` with `a(0)=1`
-/

namespace A165751.P6682687426891293370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - a (n - 1)) / ((1 : ℚ) / 2 - 1)

end

end A165751.P6682687426891293370

namespace A165751

/-- `(2-a(n-1))/(1/2-1)` -/
def P6682687426891293370.Spec : Prop :=
  ∀ n, P6682687426891293370.a n = (A165751 n : ℚ)

theorem P6682687426891293370.correct : P6682687426891293370.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P6682687426891293370.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P6682687426891293370.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P11680318556697669518

`floor(a(n-1)+a(n-1)-4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165751.P11680318556697669518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - 4)

end

end A165751.P11680318556697669518

namespace A165751

/-- `floor(a(n-1)+a(n-1)-4)` -/
def P11680318556697669518.Spec : Prop :=
  ∀ n, P11680318556697669518.a n = A165751 n

theorem P11680318556697669518.correct : P11680318556697669518.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P11680318556697669518.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P11680318556697669518.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P15482431618388169929

`floor(a(n-1)-(4-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165751.P15482431618388169929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (4 - a (n - 1))

end

end A165751.P15482431618388169929

namespace A165751

/-- `floor(a(n-1)-(4-a(n-1)))` -/
def P15482431618388169929.Spec : Prop :=
  ∀ n, P15482431618388169929.a n = A165751 n

theorem P15482431618388169929.correct : P15482431618388169929.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P15482431618388169929.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P15482431618388169929.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P3792311824892533512

`ceil(a(n-1)+a(n-1)-4)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A165751.P3792311824892533512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - 4)

end

end A165751.P3792311824892533512

namespace A165751

/-- `ceil(a(n-1)+a(n-1)-4)` -/
def P3792311824892533512.Spec : Prop :=
  ∀ n, P3792311824892533512.a n = A165751 n

theorem P3792311824892533512.correct : P3792311824892533512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P3792311824892533512.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P3792311824892533512.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P7555496595005767022

`ceil(a(n-1)-(4-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A165751.P7555496595005767022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (4 - a (n - 1))

end

end A165751.P7555496595005767022

namespace A165751

/-- `ceil(a(n-1)-(4-a(n-1)))` -/
def P7555496595005767022.Spec : Prop :=
  ∀ n, P7555496595005767022.a n = A165751 n

theorem P7555496595005767022.correct : P7555496595005767022.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P7555496595005767022.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P7555496595005767022.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P926002898871142447

`round(a(n-1)+a(n-1)-4)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A165751.P926002898871142447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - 4)

end

end A165751.P926002898871142447

namespace A165751

/-- `round(a(n-1)+a(n-1)-4)` -/
def P926002898871142447.Spec : Prop :=
  ∀ n, P926002898871142447.a n = A165751 n

theorem P926002898871142447.correct : P926002898871142447.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P926002898871142447.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P926002898871142447.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P12971091410081898422

`round(a(n-1)-(4-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A165751.P12971091410081898422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (4 - a (n - 1))

end

end A165751.P12971091410081898422

namespace A165751

/-- `round(a(n-1)-(4-a(n-1)))` -/
def P12971091410081898422.Spec : Prop :=
  ∀ n, P12971091410081898422.a n = A165751 n

theorem P12971091410081898422.correct : P12971091410081898422.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165751, Nat.add_sub_cancel, A165751.P12971091410081898422.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165751, Nat.add_sub_cancel, A165751.P12971091410081898422.a, A165751.P9848275255671097216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165751

/-! ## A165751.P9711176343419498918

`xor(1, a(n-1)+a(n-1)-3)` with `a(0)=1`
-/

namespace A165751.P9711176343419498918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) + (a (n - 1) - 3))

end

end A165751.P9711176343419498918

namespace A165751

/-- `xor(1, a(n-1)+a(n-1)-3)` -/
def P9711176343419498918.Spec : Prop :=
  ∀ n, P9711176343419498918.a n = A165751 n

end A165751

/-! ## A165751.P1451107154572067345

`xor(1, a(n-1)-(3-a(n-1)))` with `a(0)=1`
-/

namespace A165751.P1451107154572067345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) - (3 - a (n - 1)))

end

end A165751.P1451107154572067345

namespace A165751

/-- `xor(1, a(n-1)-(3-a(n-1)))` -/
def P1451107154572067345.Spec : Prop :=
  ∀ n, P1451107154572067345.a n = A165751 n

end A165751

/-! ## A165751.P12240597008395321875

`xor(1, 1-A131128(n))`
-/

namespace A165751.P12240597008395321875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A131128 n)

end

end A165751.P12240597008395321875

namespace A165751

/-- `xor(1, 1-A131128(n))` -/
def P12240597008395321875.Spec : Prop :=
  ∀ n, P12240597008395321875.a n = A165751 n

end A165751

/-! ## A165751.P9301781981353044287

`(3-A048488(n))/2`
-/

namespace A165751.P9301781981353044287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A048488 n : ℚ) / 2

end

end A165751.P9301781981353044287

namespace A165751

/-- `(3-A048488(n))/2` -/
def P9301781981353044287.Spec : Prop :=
  ∀ n, P9301781981353044287.a n = (A165751 n : ℚ)

theorem P9301781981353044287.correct : P9301781981353044287.Spec := by
  intro n
  simp only [A165751, Nat.add_sub_cancel, A165751.P9301781981353044287.a, A165751.P9848275255671097216.a, A048488, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165751

/-! ## A165751.P10574875012775611872

`(4-A048491(n))/3`
-/

namespace A165751.P10574875012775611872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A048491 n : ℚ) / 3

end

end A165751.P10574875012775611872

namespace A165751

/-- `(4-A048491(n))/3` -/
def P10574875012775611872.Spec : Prop :=
  ∀ n, P10574875012775611872.a n = (A165751 n : ℚ)

theorem P10574875012775611872.correct : P10574875012775611872.Spec := by
  intro n
  simp only [A165751, Nat.add_sub_cancel, A165751.P10574875012775611872.a, A165751.P9848275255671097216.a, A048491, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165751

/-! ## A165751.P4845073422858998314

`Δ[Δ[n²]-A050488(n)]`
-/

namespace A165751.P4845073422858998314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A050488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165751.P4845073422858998314

namespace A165751

/-- `Δ[Δ[n²]-A050488(n)]` -/
def P4845073422858998314.Spec : Prop :=
  ∀ n, P4845073422858998314.a n = A165751 n

theorem P4845073422858998314.correct : P4845073422858998314.Spec := by
  intro n
  simp only [A165751, Nat.add_sub_cancel, A165751.P4845073422858998314.f2, A165751.P4845073422858998314.f1, A165751.P4845073422858998314.a, A165751.P9848275255671097216.a, A050488, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165751

/-! ## A165751.P6246638886806267579

`Δ[Δ[n²]-A097813(n)]`
-/

namespace A165751.P6246638886806267579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A097813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165751.P6246638886806267579

namespace A165751

/-- `Δ[Δ[n²]-A097813(n)]` -/
def P6246638886806267579.Spec : Prop :=
  ∀ n, P6246638886806267579.a n = A165751 n

theorem P6246638886806267579.correct : P6246638886806267579.Spec := by
  intro n
  simp only [A165751, Nat.add_sub_cancel, A165751.P6246638886806267579.f2, A165751.P6246638886806267579.f1, A165751.P6246638886806267579.a, A165751.P9848275255671097216.a, A097813, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165751

/-! ## A165751.P11771062831385079252

`Δ[A008574(n+1)-A042950(n+1)]`
-/

namespace A165751.P11771062831385079252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - A042950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165751.P11771062831385079252

namespace A165751

/-- `Δ[A008574(n+1)-A042950(n+1)]` -/
def P11771062831385079252.Spec : Prop :=
  ∀ n, P11771062831385079252.a n = A165751 n

end A165751

/-! ## A165751.P14322902958135729493

`Δ[A130824(n+1)-A003945(n+1)]`
-/

namespace A165751.P14322902958135729493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (n + 1) - A003945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165751.P14322902958135729493

namespace A165751

/-- `Δ[A130824(n+1)-A003945(n+1)]` -/
def P14322902958135729493.Spec : Prop :=
  ∀ n, P14322902958135729493.a n = A165751 n

end A165751

/-! ## A165751.P13843113800732904347

`A135690(A016813(n))`
-/

namespace A165751.P13843113800732904347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135690 (A016813 n).toNat

end

end A165751.P13843113800732904347

namespace A165751

/-- `A135690(A016813(n))` -/
def P13843113800732904347.Spec : Prop :=
  ∀ n, P13843113800732904347.a n = A165751 n

end A165751

/-!
# A165752: a(n) = (8-5*4^n)/3.

The programs for A165752, the canonical program `A165752.P7370415444370669443` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165752 has offset 0).

The definition of A165752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8-5*4^n)/3` (program `A165752.P16557938751420348467`, by `A165752.P16557938751420348467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165752.P7370415444370669443

`4*a(n-1)-8` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165752

/-- `4*a(n-1)-8` -/
def P7370415444370669443.Spec : Prop :=
  ∀ n, P7370415444370669443.a n = A165752 n

theorem P7370415444370669443.correct : P7370415444370669443.Spec := by
  intro n
  simp only [A165752]

end A165752

/-! ## A165752.P16557938751420348467

`(8-5*4^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165752.P16557938751420348467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 - (5 * 4 ^ n : ℤ) : ℚ) / 3

end

end A165752.P16557938751420348467

namespace A165752

/-- `(8-5*4^n)/3` -/
def P16557938751420348467.Spec : Prop :=
  ∀ n, P16557938751420348467.a n = (A165752 n : ℚ)

theorem P16557938751420348467.correct : P16557938751420348467.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165752, Nat.add_sub_cancel, A165752.P16557938751420348467.a, A165752.P7370415444370669443.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165752, Nat.add_sub_cancel, A165752.P16557938751420348467.a, A165752.P7370415444370669443.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165752

/-! ## A165752.P11888021681830304095

`ogf((1-9x)/(1-5x+4x^2))`
-/

namespace A165752.P11888021681830304095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -5, 4] n

end

end A165752.P11888021681830304095

namespace A165752

/-- `ogf((1-9x)/(1-5x+4x^2))` -/
def P11888021681830304095.Spec : Prop :=
  ∀ n, P11888021681830304095.a n = A165752 n

end A165752

/-! ## A165752.P672488913555960976

`a(n-1)-lcm(5, 4^(n-1))` with `a(0)=1`
-/

namespace A165752.P672488913555960976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (Int.lcm 5 (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) : ℤ)

end

end A165752.P672488913555960976

namespace A165752

/-- `a(n-1)-lcm(5, 4^(n-1))` -/
def P672488913555960976.Spec : Prop :=
  ∀ n, P672488913555960976.a n = A165752 n

end A165752

/-! ## A165752.P5143085908544038127

`2-A020989(n)`
-/

namespace A165752.P5143085908544038127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A020989 n

end

end A165752.P5143085908544038127

namespace A165752

/-- `2-A020989(n)` -/
def P5143085908544038127.Spec : Prop :=
  ∀ n, P5143085908544038127.a n = A165752 n

end A165752

/-! ## A165752.P12129684348560375909

`A083581(2*n)`
-/

namespace A165752.P12129684348560375909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083581 (2 * n)

end

end A165752.P12129684348560375909

namespace A165752

/-- `A083581(2*n)` -/
def P12129684348560375909.Spec : Prop :=
  ∀ n, P12129684348560375909.a n = A165752 n

end A165752

/-! ## A165752.P9861340016817649915

`3-A136412(n)`
-/

namespace A165752.P9861340016817649915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A136412 n

end

end A165752.P9861340016817649915

namespace A165752

/-- `3-A136412(n)` -/
def P9861340016817649915.Spec : Prop :=
  ∀ n, P9861340016817649915.a n = A165752 n

end A165752

/-! ## A165752.P3938887132867945421

`4-A135583(n)`
-/

namespace A165752.P3938887132867945421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A135583 n

end

end A165752.P3938887132867945421

namespace A165752

/-- `4-A135583(n)` -/
def P3938887132867945421.Spec : Prop :=
  ∀ n, P3938887132867945421.a n = A165752 n

end A165752

/-! ## A165752.P4604794960149866413

`-A145593(2*n)`
-/

namespace A165752.P4604794960149866413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145593 (2 * n)

end

end A165752.P4604794960149866413

namespace A165752

/-- `-A145593(2*n)` -/
def P4604794960149866413.Spec : Prop :=
  ∀ n, P4604794960149866413.a n = A165752 n

end A165752

/-! ## A165752.P1820345507976250238

`2-∑[A003947(n)]`
-/

namespace A165752.P1820345507976250238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165752.P1820345507976250238

namespace A165752

/-- `2-∑[A003947(n)]` -/
def P1820345507976250238.Spec : Prop :=
  ∀ n, P1820345507976250238.a n = A165752 n

end A165752

/-! ## A165752.P14777913229272211090

`2-Δ[A141291(n)]`
-/

namespace A165752.P14777913229272211090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A165752.P14777913229272211090

namespace A165752

/-- `2-Δ[A141291(n)]` -/
def P14777913229272211090.Spec : Prop :=
  ∀ n, P14777913229272211090.a n = A165752 n

end A165752

/-! ## A165752.P1850741587643266758

`∑[A166577(2*n)]`
-/

namespace A165752.P1850741587643266758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166577 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165752.P1850741587643266758

namespace A165752

/-- `∑[A166577(2*n)]` -/
def P1850741587643266758.Spec : Prop :=
  ∀ n, P1850741587643266758.a n = A165752 n

end A165752

/-! ## A165752.P18151817023663708462

`3-Δ[A164044(n)]`
-/

namespace A165752.P18151817023663708462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A165752.P18151817023663708462

namespace A165752

/-- `3-Δ[A164044(n)]` -/
def P18151817023663708462.Spec : Prop :=
  ∀ n, P18151817023663708462.a n = A165752 n

end A165752

/-! ## A165752.P16085923885927226425

`1-A084640(2*n)`
-/

namespace A165752.P16085923885927226425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084640 (2 * n)

end

end A165752.P16085923885927226425

namespace A165752

/-- `1-A084640(2*n)` -/
def P16085923885927226425.Spec : Prop :=
  ∀ n, P16085923885927226425.a n = A165752 n

end A165752

/-! ## A165752.P2382730468872304825

`2-A084170(2*n)`
-/

namespace A165752.P2382730468872304825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084170 (2 * n)

end

end A165752.P2382730468872304825

namespace A165752

/-- `2-A084170(2*n)` -/
def P2382730468872304825.Spec : Prop :=
  ∀ n, P2382730468872304825.a n = A165752 n

end A165752

/-! ## A165752.P8155152905868769011

`2-A140359(2*n)`
-/

namespace A165752.P8155152905868769011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A140359 (2 * n)

end

end A165752.P8155152905868769011

namespace A165752

/-- `2-A140359(2*n)` -/
def P8155152905868769011.Spec : Prop :=
  ∀ n, P8155152905868769011.a n = A165752 n

end A165752

/-! ## A165752.P1601096063199344866

`2-A277954(2*n)`
-/

namespace A165752.P1601096063199344866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A277954 (2 * n)

end

end A165752.P1601096063199344866

namespace A165752

/-- `2-A277954(2*n)` -/
def P1601096063199344866.Spec : Prop :=
  ∀ n, P1601096063199344866.a n = A165752 n

end A165752

/-! ## A165752.P4573725036044857964

`2-A282123(2*n)`
-/

namespace A165752.P4573725036044857964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A282123 (2 * n)

end

end A165752.P4573725036044857964

namespace A165752

/-- `2-A282123(2*n)` -/
def P4573725036044857964.Spec : Prop :=
  ∀ n, P4573725036044857964.a n = A165752 n

end A165752

/-! ## A165752.P561308682203558539

`3-A048573(2*n)`
-/

namespace A165752.P561308682203558539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A048573 (2 * n)

end

end A165752.P561308682203558539

namespace A165752

/-- `3-A048573(2*n)` -/
def P561308682203558539.Spec : Prop :=
  ∀ n, P561308682203558539.a n = A165752 n

end A165752

/-! ## A165752.P4405083071995955625

`3-A171231(2*n)`
-/

namespace A165752.P4405083071995955625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A171231 (2 * n)

end

end A165752.P4405083071995955625

namespace A165752

/-- `3-A171231(2*n)` -/
def P4405083071995955625.Spec : Prop :=
  ∀ n, P4405083071995955625.a n = A165752 n

end A165752

/-!
# A165753: Number of trailing zeros in sequence of factorials of Fibonacci numbers.

The programs for A165753, the canonical program `A165753.P1365110760228968470` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165753 has offset 1).

The definition of A165753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165753.P1365110760228968470

`A027868(A000045(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165753

/-- `A027868(A000045(n+1))` -/
def P1365110760228968470.Spec : Prop :=
  ∀ n, P1365110760228968470.a n = A165753 (n + 1)

theorem P1365110760228968470.correct : P1365110760228968470.Spec := by
  intro n
  simp only [A165753, Nat.add_sub_cancel]

end A165753

/-! ## A165753.P8762328765712014930

`A191610(A004698(n+1)+1)`
-/

namespace A165753.P8762328765712014930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (A004698 (n + 1) + 1).toNat

end

end A165753.P8762328765712014930

namespace A165753

/-- `A191610(A004698(n+1)+1)` -/
def P8762328765712014930.Spec : Prop :=
  ∀ n, P8762328765712014930.a n = A165753 (n + 1)

end A165753

/-! ## A165753.P9580022031249264969

`A027868(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A165753.P9580022031249264969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f1 (n + 1) - f1 n).toNat

end

end A165753.P9580022031249264969

namespace A165753

/-- `A027868(Δ[round(ϕ*a(n-1))])` -/
def P9580022031249264969.Spec : Prop :=
  ∀ n, P9580022031249264969.a n = A165753 (n + 1)

end A165753

/-! ## A165753.P11105546241239439127

`A027868(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A165753.P11105546241239439127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165753.P11105546241239439127

namespace A165753

/-- `A027868(∑[round(ϕ*a(n-1))])` -/
def P11105546241239439127.Spec : Prop :=
  ∀ n, P11105546241239439127.a n = A165753 (n + 1)

end A165753

/-!
# A165754: a(n) = nimsum(n+(n+1)+(n+2)).

The programs for A165754, the canonical program `A165754.P17957295106225998984` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165754 has offset 0).

The definition of A165754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165754.P17957295106225998984

`1+n+2*(-1)^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165754

/-- `1+n+2*(-1)^n` -/
def P17957295106225998984.Spec : Prop :=
  ∀ n, P17957295106225998984.a n = A165754 n

theorem P17957295106225998984.correct : P17957295106225998984.Spec := by
  intro n
  simp only [A165754]

end A165754

/-! ## A165754.P9662893699762296119

`xor(1, abs(xor(n, -2)))`
-/

namespace A165754.P9662893699762296119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |Int.xor (n : ℤ) (-2)|

end

end A165754.P9662893699762296119

namespace A165754

/-- `xor(1, abs(xor(n, -2)))` -/
def P9662893699762296119.Spec : Prop :=
  ∀ n, P9662893699762296119.a n = A165754 n

end A165754

/-! ## A165754.P2541519806624739796

`xor(1, xor(1, n)+1)`
-/

namespace A165754.P2541519806624739796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 n + 1)

end

end A165754.P2541519806624739796

namespace A165754

/-- `xor(1, xor(1, n)+1)` -/
def P2541519806624739796.Spec : Prop :=
  ∀ n, (P2541519806624739796.a n : ℤ) = A165754 n

end A165754

/-! ## A165754.P18098251534953194316

`xor(1, -xor(n, -2))`
-/

namespace A165754.P18098251534953194316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-Int.xor (n : ℤ) (-2))

end

end A165754.P18098251534953194316

namespace A165754

/-- `xor(1, -xor(n, -2))` -/
def P18098251534953194316.Spec : Prop :=
  ∀ n, P18098251534953194316.a n = A165754 n

end A165754

/-! ## A165754.P13192246819994234032

`abs(a(n-2)+2)` with `a(0)=3, a(1)=0`
-/

namespace A165754.P13192246819994234032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n a =>
  a (n - 2) + 2

end

end A165754.P13192246819994234032

namespace A165754

/-- `abs(a(n-2)+2)` -/
def P13192246819994234032.Spec : Prop :=
  ∀ n, (P13192246819994234032.a n : ℤ) = A165754 n

theorem P13192246819994234032.correct : P13192246819994234032.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165754, Nat.add_sub_cancel, A165754.P13192246819994234032.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A165754, Nat.add_sub_cancel, A165754.P13192246819994234032.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165754

/-! ## A165754.P3974374550609557903

`∑[2-a(n-1)]` with `a(0)=3, a(1)=-3`
-/

namespace A165754.P3974374550609557903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165754.P3974374550609557903

namespace A165754

/-- `∑[2-a(n-1)]` -/
def P3974374550609557903.Spec : Prop :=
  ∀ n, P3974374550609557903.a n = A165754 n

end A165754

/-! ## A165754.P4961544821642262530

`Δ[n²-a(n-1)]` with `a(0)=-1`
-/

namespace A165754.P4961544821642262530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165754.P4961544821642262530

namespace A165754

/-- `Δ[n²-a(n-1)]` -/
def P4961544821642262530.Spec : Prop :=
  ∀ n, P4961544821642262530.a n = A165754 n

end A165754

/-! ## A165754.P15037554943182545651

`∑[∑[ogf((3-3x+2x^2)/(1+x))]]`
-/

namespace A165754.P15037554943182545651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165754.P15037554943182545651

namespace A165754

/-- `∑[∑[ogf((3-3x+2x^2)/(1+x))]]` -/
def P15037554943182545651.Spec : Prop :=
  ∀ n, P15037554943182545651.a n = A165754 n

end A165754

/-! ## A165754.P13156516462908031943

`ogf((3-3x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A165754.P13156516462908031943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 2] [1, -1, -1, 1] n

end

end A165754.P13156516462908031943

namespace A165754

/-- `ogf((3-3x+2x^2)/(1-x-x^2+x^3))` -/
def P13156516462908031943.Spec : Prop :=
  ∀ n, P13156516462908031943.a n = A165754 n

end A165754

/-! ## A165754.P12534321957848622759

`root(a(n-2)+2, 2)²` with `a(0)=3, a(1)=0`
-/

namespace A165754.P12534321957848622759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 0] fun n a =>
  ((a (n - 2) + 2) ^ (1 / (2 : ℝ))) ^ 2

end

end A165754.P12534321957848622759

namespace A165754

/-- `root(a(n-2)+2, 2)²` -/
def P12534321957848622759.Spec : Prop :=
  ∀ n, P12534321957848622759.a n = (A165754 n : ℝ)

end A165754

/-! ## A165754.P5008890540290700170

`4*((n+3)/4-n%2)`
-/

namespace A165754.P5008890540290700170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 3 : ℚ) / 4 - ((n % 2 : ℕ) : ℚ))

end

end A165754.P5008890540290700170

namespace A165754

/-- `4*((n+3)/4-n%2)` -/
def P5008890540290700170.Spec : Prop :=
  ∀ n, P5008890540290700170.a n = (A165754 n : ℚ)

end A165754

/-! ## A165754.P12422062115061563970

`ceil(a(n-2)-(ϕ-3))` with `a(0)=3, a(1)=0`
-/

namespace A165754.P12422062115061563970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  ⌈(a (n - 2) : ℝ) - (Real.goldenRatio - 3)⌉

end

end A165754.P12422062115061563970

namespace A165754

/-- `ceil(a(n-2)-(ϕ-3))` -/
def P12422062115061563970.Spec : Prop :=
  ∀ n, P12422062115061563970.a n = A165754 n

end A165754

/-! ## A165754.P404730397114729497

`floor(a(n-2)-(ϕ-4))` with `a(0)=3, a(1)=0`
-/

namespace A165754.P404730397114729497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  ⌊(a (n - 2) : ℝ) - (Real.goldenRatio - 4)⌋

end

end A165754.P404730397114729497

namespace A165754

/-- `floor(a(n-2)-(ϕ-4))` -/
def P404730397114729497.Spec : Prop :=
  ∀ n, P404730397114729497.a n = A165754 n

end A165754

/-! ## A165754.P170948742198617062

`round(a(n-2)-(ϕ-4))` with `a(0)=3, a(1)=0`
-/

namespace A165754.P170948742198617062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) - (Real.goldenRatio - 4))

end

end A165754.P170948742198617062

namespace A165754

/-- `round(a(n-2)-(ϕ-4))` -/
def P170948742198617062.Spec : Prop :=
  ∀ n, P170948742198617062.a n = A165754 n

end A165754

/-! ## A165754.P3581618516754142228

`abs(comp[2*n]-a(n-1))` with `a(0)=3`
-/

namespace A165754.P3581618516754142228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)|

end

end A165754.P3581618516754142228

namespace A165754

/-- `abs(comp[2*n]-a(n-1))` -/
def P3581618516754142228.Spec : Prop :=
  ∀ n, P3581618516754142228.a n = A165754 n

end A165754

/-! ## A165754.P14457212293584659287

`floor(comp[2*n]-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A165754.P14457212293584659287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A165754.P14457212293584659287

namespace A165754

/-- `floor(comp[2*n]-a(n-1))` -/
def P14457212293584659287.Spec : Prop :=
  ∀ n, P14457212293584659287.a n = A165754 n

end A165754

/-! ## A165754.P16798737836495672518

`ceil(comp[2*n]-a(n-1))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A165754.P16798737836495672518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A165754.P16798737836495672518

namespace A165754

/-- `ceil(comp[2*n]-a(n-1))` -/
def P16798737836495672518.Spec : Prop :=
  ∀ n, P16798737836495672518.a n = A165754 n

end A165754

/-! ## A165754.P14522785876105738541

`floor(2*n-(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A165754.P14522785876105738541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - 1)

end

end A165754.P14522785876105738541

namespace A165754

/-- `floor(2*n-(a(n-1)-1))` -/
def P14522785876105738541.Spec : Prop :=
  ∀ n, P14522785876105738541.a n = A165754 n

theorem P14522785876105738541.correct : P14522785876105738541.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165754, Nat.add_sub_cancel, A165754.P14522785876105738541.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165754, Nat.add_sub_cancel, A165754.P14522785876105738541.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165754

/-! ## A165754.P6524225541403148648

`floor(n-(a(n-1)-1-n))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A165754.P6524225541403148648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℤ) - (a (n - 1) - 1 - (n : ℤ))

end

end A165754.P6524225541403148648

namespace A165754

/-- `floor(n-(a(n-1)-1-n))` -/
def P6524225541403148648.Spec : Prop :=
  ∀ n, P6524225541403148648.a n = A165754 n

theorem P6524225541403148648.correct : P6524225541403148648.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165754, Nat.add_sub_cancel, A165754.P6524225541403148648.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165754, Nat.add_sub_cancel, A165754.P6524225541403148648.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165754

/-! ## A165754.P6269492687799040211

`2*(n-(a(n-1)-1)/2)` with `a(0)=3`
-/

namespace A165754.P6269492687799040211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * ((n : ℚ) - (a (n - 1) - 1) / 2)

end

end A165754.P6269492687799040211

namespace A165754

/-- `2*(n-(a(n-1)-1)/2)` -/
def P6269492687799040211.Spec : Prop :=
  ∀ n, P6269492687799040211.a n = (A165754 n : ℚ)

theorem P6269492687799040211.correct : P6269492687799040211.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165754, Nat.add_sub_cancel, A165754.P6269492687799040211.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165754, Nat.add_sub_cancel, A165754.P6269492687799040211.a, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165754

/-!
# A165755: a(n) = (5-3*5^n)/2.

The programs for A165755, the canonical program `A165755.P2695702003617750033` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165755 has offset 0).

The definition of A165755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5-3*5^n)/2` (program `A165755.P1954438732810008637`, by `A165755.P1954438732810008637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165755.P1954438732810008637

`(5-3*5^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165755.P1954438732810008637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (3 * 5 ^ n : ℤ) : ℚ) / 2

end

end A165755.P1954438732810008637

namespace A165755

/-- `(5-3*5^n)/2` -/
def P1954438732810008637.Spec : Prop :=
  ∀ n, P1954438732810008637.a n = (A165755 n : ℚ)

theorem P1954438732810008637.correct : P1954438732810008637.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165755, Nat.add_sub_cancel, A165755.P1954438732810008637.a, A165755.P2695702003617750033.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165755, Nat.add_sub_cancel, A165755.P1954438732810008637.a, A165755.P2695702003617750033.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165755

/-! ## A165755.P2695702003617750033

`5*a(n-1)-10` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165755

/-- `5*a(n-1)-10` -/
def P2695702003617750033.Spec : Prop :=
  ∀ n, P2695702003617750033.a n = A165755 n

theorem P2695702003617750033.correct : P2695702003617750033.Spec := by
  intro n
  simp only [A165755]

end A165755

/-! ## A165755.P7012574589221721112

`ogf((1-11x)/(1-6x+5x^2))`
-/

namespace A165755.P7012574589221721112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -11] [1, -6, 5] n

end

end A165755.P7012574589221721112

namespace A165755

/-- `ogf((1-11x)/(1-6x+5x^2))` -/
def P7012574589221721112.Spec : Prop :=
  ∀ n, P7012574589221721112.a n = A165755 n

end A165755

/-! ## A165755.P1840975365232932287

`-lcm(5, 2-a(n-1))` with `a(0)=1`
-/

namespace A165755.P1840975365232932287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.lcm 5 (2 - a (n - 1)) : ℤ)

end

end A165755.P1840975365232932287

namespace A165755

/-- `-lcm(5, 2-a(n-1))` -/
def P1840975365232932287.Spec : Prop :=
  ∀ n, P1840975365232932287.a n = A165755 n

end A165755

/-! ## A165755.P14966181461186294980

`a(n-1)/(1-4/5)-10` with `a(0)=1`
-/

namespace A165755.P14966181461186294980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 10

end

end A165755.P14966181461186294980

namespace A165755

/-- `a(n-1)/(1-4/5)-10` -/
def P14966181461186294980.Spec : Prop :=
  ∀ n, P14966181461186294980.a n = (A165755 n : ℚ)

end A165755

/-! ## A165755.P6568496800232251539

`2-A057651(n)`
-/

namespace A165755.P6568496800232251539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057651 n

end

end A165755.P6568496800232251539

namespace A165755

/-- `2-A057651(n)` -/
def P6568496800232251539.Spec : Prop :=
  ∀ n, P6568496800232251539.a n = A165755 n

end A165755

/-! ## A165755.P17982875610613988971

`3-A199213(n)`
-/

namespace A165755.P17982875610613988971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A199213 n

end

end A165755.P17982875610613988971

namespace A165755

/-- `3-A199213(n)` -/
def P17982875610613988971.Spec : Prop :=
  ∀ n, P17982875610613988971.a n = A165755 n

end A165755

/-! ## A165755.P1001794877577250898

`2-∑[A003948(n)]`
-/

namespace A165755.P1001794877577250898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165755.P1001794877577250898

namespace A165755

/-- `2-∑[A003948(n)]` -/
def P1001794877577250898.Spec : Prop :=
  ∀ n, P1001794877577250898.a n = A165755 n

end A165755

/-! ## A165755.P6657272706950403706

`1-2*A125833(n)`
-/

namespace A165755.P6657272706950403706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A125833 n

end

end A165755.P6657272706950403706

namespace A165755

/-- `1-2*A125833(n)` -/
def P6657272706950403706.Spec : Prop :=
  ∀ n, P6657272706950403706.a n = A165755 n

end A165755

/-! ## A165755.P7413322724683680853

`2-A097162(2*n)`
-/

namespace A165755.P7413322724683680853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A097162 (2 * n)

end

end A165755.P7413322724683680853

namespace A165755

/-- `2-A097162(2*n)` -/
def P7413322724683680853.Spec : Prop :=
  ∀ n, P7413322724683680853.a n = A165755 n

end A165755

/-! ## A165755.P2944298532938936903

`2-A238366(2*n)`
-/

namespace A165755.P2944298532938936903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238366 (2 * n)

end

end A165755.P2944298532938936903

namespace A165755

/-- `2-A238366(2*n)` -/
def P2944298532938936903.Spec : Prop :=
  ∀ n, P2944298532938936903.a n = A165755 n

end A165755

/-! ## A165755.P14191689296771582990

`3-2*A083065(n)`
-/

namespace A165755.P14191689296771582990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A083065 n

end

end A165755.P14191689296771582990

namespace A165755

/-- `3-2*A083065(n)` -/
def P14191689296771582990.Spec : Prop :=
  ∀ n, P14191689296771582990.a n = A165755 n

end A165755

/-! ## A165755.P5121707852389340929

`2-A198762(n)/2`
-/

namespace A165755.P5121707852389340929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A198762 n : ℚ) / 2

end

end A165755.P5121707852389340929

namespace A165755

/-- `2-A198762(n)/2` -/
def P5121707852389340929.Spec : Prop :=
  ∀ n, P5121707852389340929.a n = (A165755 n : ℚ)

theorem P5121707852389340929.correct : P5121707852389340929.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165755, Nat.add_sub_cancel, A165755.P5121707852389340929.a, A165755.P2695702003617750033.a, A198762, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165755, Nat.add_sub_cancel, A165755.P5121707852389340929.a, A165755.P2695702003617750033.a, A198762, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A165755

/-! ## A165755.P11970960068602711542

`3-A199214(n)/2`
-/

namespace A165755.P11970960068602711542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (A199214 n : ℚ) / 2

end

end A165755.P11970960068602711542

namespace A165755

/-- `3-A199214(n)/2` -/
def P11970960068602711542.Spec : Prop :=
  ∀ n, P11970960068602711542.a n = (A165755 n : ℚ)

theorem P11970960068602711542.correct : P11970960068602711542.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165755, Nat.add_sub_cancel, A165755.P11970960068602711542.a, A165755.P2695702003617750033.a, A199214, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165755, Nat.add_sub_cancel, A165755.P11970960068602711542.a, A165755.P2695702003617750033.a, A199214, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A165755

/-! ## A165755.P11679772036571093391

`1-6*A003463(n)`
-/

namespace A165755.P11679772036571093391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 6 * A003463 n

end

end A165755.P11679772036571093391

namespace A165755

/-- `1-6*A003463(n)` -/
def P11679772036571093391.Spec : Prop :=
  ∀ n, P11679772036571093391.a n = A165755 n

end A165755

/-! ## A165755.P322112079578522977

`4-3*A034478(n)`
-/

namespace A165755.P322112079578522977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 3 * A034478 n

end

end A165755.P322112079578522977

namespace A165755

/-- `4-3*A034478(n)` -/
def P322112079578522977.Spec : Prop :=
  ∀ n, P322112079578522977.a n = A165755 n

end A165755

/-! ## A165755.P7057130889296053058

`Δ[n-A268414(n)]+2`
-/

namespace A165755.P7057130889296053058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A165755.P7057130889296053058

namespace A165755

/-- `Δ[n-A268414(n)]+2` -/
def P7057130889296053058.Spec : Prop :=
  ∀ n, P7057130889296053058.a n = A165755 n

end A165755

/-! ## A165755.P10381556503335221523

`1-3*A121177(n+1)`
-/

namespace A165755.P10381556503335221523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * A121177 (n + 1)

end

end A165755.P10381556503335221523

namespace A165755

/-- `1-3*A121177(n+1)` -/
def P10381556503335221523.Spec : Prop :=
  ∀ n, P10381556503335221523.a n = A165755 n

end A165755

/-! ## A165755.P2060284218704277071

`3-A294566(2*(n+1))`
-/

namespace A165755.P2060284218704277071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A294566 (2 * (n + 1))

end

end A165755.P2060284218704277071

namespace A165755

/-- `3-A294566(2*(n+1))` -/
def P2060284218704277071.Spec : Prop :=
  ∀ n, P2060284218704277071.a n = A165755 n

end A165755

/-!
# A165756: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165756, there is no canonical definition to state claims against.
-/

/-! ## A165756.P1841428571094567463

`xor(A003946(n), A185255(3*n))`
-/

namespace A165756.P1841428571094567463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003946 n) (A185255 (3 * n))

end

end A165756.P1841428571094567463

/-! ## A165756.P10206885450789217884

`floor(4*3^(n-1))-A036638(A036633(n))`
-/

namespace A165756.P10206885450789217884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A036638 (A036633 n).toNat

end

end A165756.P10206885450789217884

/-! ## A165756.P12869918457677077661

`floor(4*3^(n-1))-A036638(A036640(n))`
-/

namespace A165756.P12869918457677077661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A036638 (A036640 n).toNat

end

end A165756.P12869918457677077661

/-! ## A165756.P10258098604279069399

`A003946(n)-A036638(A036647(n))`
-/

namespace A165756.P10258098604279069399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A036638 (A036647 n).toNat

end

end A165756.P10258098604279069399

/-! ## A165756.P196633553797610829

`A003946(n)-A051768(A189788(n))`
-/

namespace A165756.P196633553797610829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A051768 (A189788 n).toNat

end

end A165756.P196633553797610829

/-!
# A165757: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165757, there is no canonical definition to state claims against.
-/

/-! ## A165757.P17119959270489827536

`floor(5*4^(n-1))-A185255(3*n)`
-/

namespace A165757.P17119959270489827536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (3 * n)

end

end A165757.P17119959270489827536

/-! ## A165757.P7669506967765208726

`floor(5*4^(n-1))-A285007(A250351(n+3))`
-/

namespace A165757.P7669506967765208726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A285007 (A250351 (n + 3)).toNat

end

end A165757.P7669506967765208726

/-! ## A165757.P3914320580543673005

`round(record[5*(-2)^(n-2)])-A010894(A085158(n))`
-/

namespace A165757.P3914320580543673005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A010894 ((A085158 n).toNat + 21)

end

end A165757.P3914320580543673005

/-! ## A165757.P7014164822641768571

`A003947(n)-A010894(A085158(n))`
-/

namespace A165757.P7014164822641768571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A010894 ((A085158 n).toNat + 21)

end

end A165757.P7014164822641768571

/-! ## A165757.P1608428370729478830

`A168682(n)-A010894(A085158(n))`
-/

namespace A165757.P1608428370729478830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168682 n - A010894 ((A085158 n).toNat + 21)

end

end A165757.P1608428370729478830

/-!
# A165758: a(n) = (12-7*6^n)/5.

The programs for A165758, the canonical program `A165758.P16311305120767342695` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165758 has offset 0).

The definition of A165758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12-7*6^n)/5` (program `A165758.P18055573195217866412`, by `A165758.P18055573195217866412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165758.P16311305120767342695

`6*a(n-1)-12` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165758

/-- `6*a(n-1)-12` -/
def P16311305120767342695.Spec : Prop :=
  ∀ n, P16311305120767342695.a n = A165758 n

theorem P16311305120767342695.correct : P16311305120767342695.Spec := by
  intro n
  simp only [A165758]

end A165758

/-! ## A165758.P18055573195217866412

`(12-7*6^n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165758.P18055573195217866412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 - (7 * 6 ^ n : ℤ) : ℚ) / 5

end

end A165758.P18055573195217866412

namespace A165758

/-- `(12-7*6^n)/5` -/
def P18055573195217866412.Spec : Prop :=
  ∀ n, P18055573195217866412.a n = (A165758 n : ℚ)

theorem P18055573195217866412.correct : P18055573195217866412.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165758, Nat.add_sub_cancel, A165758.P18055573195217866412.a, A165758.P16311305120767342695.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165758, Nat.add_sub_cancel, A165758.P18055573195217866412.a, A165758.P16311305120767342695.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165758

/-! ## A165758.P11121921728960299437

`ogf((1-13x)/(1-7x+6x^2))`
-/

namespace A165758.P11121921728960299437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -13] [1, -7, 6] n

end

end A165758.P11121921728960299437

namespace A165758

/-- `ogf((1-13x)/(1-7x+6x^2))` -/
def P11121921728960299437.Spec : Prop :=
  ∀ n, P11121921728960299437.a n = A165758 n

end A165758

/-! ## A165758.P4933904709994115709

`2-A061801(n)`
-/

namespace A165758.P4933904709994115709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A061801 n

end

end A165758.P4933904709994115709

namespace A165758

/-- `2-A061801(n)` -/
def P4933904709994115709.Spec : Prop :=
  ∀ n, P4933904709994115709.a n = A165758 n

end A165758

/-! ## A165758.P16815691226732603588

`∑[A000038(n)-A003949(n)]`
-/

namespace A165758.P16815691226732603588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A003949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165758.P16815691226732603588

namespace A165758

/-- `∑[A000038(n)-A003949(n)]` -/
def P16815691226732603588.Spec : Prop :=
  ∀ n, P16815691226732603588.a n = A165758 n

end A165758

/-! ## A165758.P6442912606688170326

`∑[A010673(A008574(n))-A003949(n)]`
-/

namespace A165758.P6442912606688170326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A008574 n).toNat - A003949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165758.P6442912606688170326

namespace A165758

/-- `∑[A010673(A008574(n))-A003949(n)]` -/
def P6442912606688170326.Spec : Prop :=
  ∀ n, P6442912606688170326.a n = A165758 n

end A165758

/-! ## A165758.P16290253027306754447

`∑[A003949(n)*A033999(A000040(n+1))]`
-/

namespace A165758.P16290253027306754447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n * A033999 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165758.P16290253027306754447

namespace A165758

/-- `∑[A003949(n)*A033999(A000040(n+1))]` -/
def P16290253027306754447.Spec : Prop :=
  ∀ n, P16290253027306754447.a n = A165758 n

end A165758

/-! ## A165758.P15946096960058920075

`a(n-1)²-((3-a(n-1))²+3)` with `a(0)=1`
-/

namespace A165758.P15946096960058920075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 - ((3 - a (n - 1)) ^ 2 + 3)

end

end A165758.P15946096960058920075

namespace A165758

/-- `a(n-1)²-((3-a(n-1))²+3)` -/
def P15946096960058920075.Spec : Prop :=
  ∀ n, P15946096960058920075.a n = A165758 n

theorem P15946096960058920075.correct : P15946096960058920075.Spec := by
  intro n
  simp only [A165758, Nat.add_sub_cancel, A165758.P15946096960058920075.a, A165758.P16311305120767342695.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165758

/-! ## A165758.P14609437682978983418

`a(n-1)²-(3-a(n-1))²-3` with `a(0)=1`
-/

namespace A165758.P14609437682978983418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 - (3 - a (n - 1)) ^ 2 - 3

end

end A165758.P14609437682978983418

namespace A165758

/-- `a(n-1)²-(3-a(n-1))²-3` -/
def P14609437682978983418.Spec : Prop :=
  ∀ n, P14609437682978983418.a n = A165758 n

theorem P14609437682978983418.correct : P14609437682978983418.Spec := by
  intro n
  simp only [A165758, Nat.add_sub_cancel, A165758.P14609437682978983418.a, A165758.P16311305120767342695.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165758

/-!
# A165759: a(n) = (7-4*7^n)/3.

The programs for A165759, the canonical program `A165759.P16346398038910171855` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165759 has offset 0).

The definition of A165759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7-4*7^n)/3` (program `A165759.P2670859728780722985`, by `A165759.P2670859728780722985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165759.P16346398038910171855

`7*a(n-1)-14` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165759

/-- `7*a(n-1)-14` -/
def P16346398038910171855.Spec : Prop :=
  ∀ n, P16346398038910171855.a n = A165759 n

theorem P16346398038910171855.correct : P16346398038910171855.Spec := by
  intro n
  simp only [A165759]

end A165759

/-! ## A165759.P2670859728780722985

`(7-4*7^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165759.P2670859728780722985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 - (4 * 7 ^ n : ℤ) : ℚ) / 3

end

end A165759.P2670859728780722985

namespace A165759

/-- `(7-4*7^n)/3` -/
def P2670859728780722985.Spec : Prop :=
  ∀ n, P2670859728780722985.a n = (A165759 n : ℚ)

theorem P2670859728780722985.correct : P2670859728780722985.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165759, Nat.add_sub_cancel, A165759.P2670859728780722985.a, A165759.P16346398038910171855.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165759, Nat.add_sub_cancel, A165759.P2670859728780722985.a, A165759.P16346398038910171855.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165759

/-! ## A165759.P4301415308813915405

`ogf((1-15x)/(1-8x+7x^2))`
-/

namespace A165759.P4301415308813915405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -15] [1, -8, 7] n

end

end A165759.P4301415308813915405

namespace A165759

/-- `ogf((1-15x)/(1-8x+7x^2))` -/
def P4301415308813915405.Spec : Prop :=
  ∀ n, P4301415308813915405.a n = A165759 n

end A165759

/-! ## A165759.P10633396194887812002

`-lcm(7, 2-a(n-1))` with `a(0)=1`
-/

namespace A165759.P10633396194887812002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.lcm 7 (2 - a (n - 1)) : ℤ)

end

end A165759.P10633396194887812002

namespace A165759

/-- `-lcm(7, 2-a(n-1))` -/
def P10633396194887812002.Spec : Prop :=
  ∀ n, P10633396194887812002.a n = A165759 n

end A165759

/-! ## A165759.P9147978352457488218

`2-A238275(n)`
-/

namespace A165759.P9147978352457488218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238275 n

end

end A165759.P9147978352457488218

namespace A165759

/-- `2-A238275(n)` -/
def P9147978352457488218.Spec : Prop :=
  ∀ n, P9147978352457488218.a n = A165759 n

end A165759

/-! ## A165759.P10058135079001143917

`3-2*A083076(n)`
-/

namespace A165759.P10058135079001143917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A083076 n

end

end A165759.P10058135079001143917

namespace A165759

/-- `3-2*A083076(n)` -/
def P10058135079001143917.Spec : Prop :=
  ∀ n, P10058135079001143917.a n = A165759 n

end A165759

/-! ## A165759.P13755707706504059087

`1-2*A125823(n+1)`
-/

namespace A165759.P13755707706504059087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A125823 (n + 1)

end

end A165759.P13755707706504059087

namespace A165759

/-- `1-2*A125823(n+1)` -/
def P13755707706504059087.Spec : Prop :=
  ∀ n, P13755707706504059087.a n = A165759 n

end A165759

/-! ## A165759.P17231578789567376377

`1-4*A125725(n+1)`
-/

namespace A165759.P17231578789567376377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 4 * A125725 (n + 1)

end

end A165759.P17231578789567376377

namespace A165759

/-- `1-4*A125725(n+1)` -/
def P17231578789567376377.Spec : Prop :=
  ∀ n, P17231578789567376377.a n = A165759 n

end A165759

/-! ## A165759.P4292782979392732633

`∑[A000038(n)-A003950(n)]`
-/

namespace A165759.P4292782979392732633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A003950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165759.P4292782979392732633

namespace A165759

/-- `∑[A000038(n)-A003950(n)]` -/
def P4292782979392732633.Spec : Prop :=
  ∀ n, P4292782979392732633.a n = A165759 n

end A165759

/-! ## A165759.P8686466350793847937

`2-A198686(n)/3`
-/

namespace A165759.P8686466350793847937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A198686 n : ℚ) / 3

end

end A165759.P8686466350793847937

namespace A165759

/-- `2-A198686(n)/3` -/
def P8686466350793847937.Spec : Prop :=
  ∀ n, P8686466350793847937.a n = (A165759 n : ℚ)

theorem P8686466350793847937.correct : P8686466350793847937.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165759, Nat.add_sub_cancel, A165759.P8686466350793847937.a, A165759.P16346398038910171855.a, A198686, A198686.P16801955039865335109.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165759, Nat.add_sub_cancel, A165759.P8686466350793847937.a, A165759.P16346398038910171855.a, A198686, A198686.P16801955039865335109.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A165759

/-!
# A165760: a(n) = (16-9*8^n)/7.

The programs for A165760, the canonical program `A165760.P7576848393789180957` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165760 has offset 0).

The definition of A165760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16-9*8^n)/7` (program `A165760.P903797404732951740`, by `A165760.P903797404732951740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165760.P7576848393789180957

`8*a(n-1)-16` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165760

/-- `8*a(n-1)-16` -/
def P7576848393789180957.Spec : Prop :=
  ∀ n, P7576848393789180957.a n = A165760 n

theorem P7576848393789180957.correct : P7576848393789180957.Spec := by
  intro n
  simp only [A165760]

end A165760

/-! ## A165760.P903797404732951740

`(16-9*8^n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165760.P903797404732951740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 - (9 * 8 ^ n : ℤ) : ℚ) / 7

end

end A165760.P903797404732951740

namespace A165760

/-- `(16-9*8^n)/7` -/
def P903797404732951740.Spec : Prop :=
  ∀ n, P903797404732951740.a n = (A165760 n : ℚ)

theorem P903797404732951740.correct : P903797404732951740.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165760, Nat.add_sub_cancel, A165760.P903797404732951740.a, A165760.P7576848393789180957.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165760, Nat.add_sub_cancel, A165760.P903797404732951740.a, A165760.P7576848393789180957.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165760

/-! ## A165760.P4760928609200209584

`ogf((1-17x)/(1-9x+8x^2))`
-/

namespace A165760.P4760928609200209584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -17] [1, -9, 8] n

end

end A165760.P4760928609200209584

namespace A165760

/-- `ogf((1-17x)/(1-9x+8x^2))` -/
def P4760928609200209584.Spec : Prop :=
  ∀ n, P4760928609200209584.a n = A165760 n

end A165760

/-! ## A165760.P5021663646315668718

`2-A238276(n)`
-/

namespace A165760.P5021663646315668718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238276 n

end

end A165760.P5021663646315668718

namespace A165760

/-- `2-A238276(n)` -/
def P5021663646315668718.Spec : Prop :=
  ∀ n, P5021663646315668718.a n = A165760 n

end A165760

/-! ## A165760.P5972496622729206521

`1-3*A083713(n)`
-/

namespace A165760.P5972496622729206521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * A083713 n

end

end A165760.P5972496622729206521

namespace A165760

/-- `1-3*A083713(n)` -/
def P5972496622729206521.Spec : Prop :=
  ∀ n, P5972496622729206521.a n = A165760 n

end A165760

/-! ## A165760.P9686986208715698705

`∑[A000038(n)-A003951(n)]`
-/

namespace A165760.P9686986208715698705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A003951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165760.P9686986208715698705

namespace A165760

/-- `∑[A000038(n)-A003951(n)]` -/
def P9686986208715698705.Spec : Prop :=
  ∀ n, P9686986208715698705.a n = A165760 n

end A165760

/-! ## A165760.P11408178243894717646

`∑[A003951(n)*A165326(2*n)]`
-/

namespace A165760.P11408178243894717646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n * A165326 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165760.P11408178243894717646

namespace A165760

/-- `∑[A003951(n)*A165326(2*n)]` -/
def P11408178243894717646.Spec : Prop :=
  ∀ n, P11408178243894717646.a n = A165760 n

end A165760

/-! ## A165760.P6897323106796657267

`∑[A010673(A008574(n))-A003951(n)]`
-/

namespace A165760.P6897323106796657267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A008574 n).toNat - A003951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165760.P6897323106796657267

namespace A165760

/-- `∑[A010673(A008574(n))-A003951(n)]` -/
def P6897323106796657267.Spec : Prop :=
  ∀ n, P6897323106796657267.a n = A165760 n

end A165760

/-! ## A165760.P11581484071785852703

`a(n-1)²-(4-a(n-1))²` with `a(0)=1`
-/

namespace A165760.P11581484071785852703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 - (4 - a (n - 1)) ^ 2

end

end A165760.P11581484071785852703

namespace A165760

/-- `a(n-1)²-(4-a(n-1))²` -/
def P11581484071785852703.Spec : Prop :=
  ∀ n, P11581484071785852703.a n = A165760 n

theorem P11581484071785852703.correct : P11581484071785852703.Spec := by
  intro n
  simp only [A165760, Nat.add_sub_cancel, A165760.P11581484071785852703.a, A165760.P7576848393789180957.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165760

/-!
# A165761: Indices of records in A165633.

The programs for A165761, there is no canonical definition to state claims against.
-/

/-! ## A165761.P1683858987562077084

`A165765(∑[A036997(n+1)!])`
-/

namespace A165761.P1683858987562077084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165761.P1683858987562077084

/-! ## A165761.P14004877847240573256

`A165765(∑[A124778(3*n+2)])`
-/

namespace A165761.P14004877847240573256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165761.P14004877847240573256

/-! ## A165761.P15363145315391425100

`A165765(A184107(n+1)^A124778(n))`
-/

namespace A165761.P15363145315391425100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165765 (SequenceMachineLib.roundAway ((A184107 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A165761.P15363145315391425100

/-! ## A165761.P7216237998220322907

`A165765(C(A184107(n+1), A124778(n)))`
-/

namespace A165761.P7216237998220322907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165765 (Nat.choose (A184107 (n + 1)).toNat (A124778 n).toNat)

end

end A165761.P7216237998220322907

/-! ## A165761.P10127398816106938520

`A165765(A124778(n)²*A184107(n+1))`
-/

namespace A165761.P10127398816106938520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165765 (A124778 n ^ 2 * A184107 (n + 1)).toNat

end

end A165761.P10127398816106938520

/-!
# A165762: Areas for which there are more tatami-free rooms (cf. A165633) than for any smaller size.

The programs for A165762, there is no canonical definition to state claims against.
-/

/-! ## A165762.P7843564169270909852

`A165764(∑[A036997(n+1)!])`
-/

namespace A165762.P7843564169270909852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165762.P7843564169270909852

/-! ## A165762.P497075957402921535

`A165764(∑[A124778(3*n+2)])`
-/

namespace A165762.P497075957402921535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165764 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165762.P497075957402921535

/-! ## A165762.P4409669707577692489

`A165764(A184107(n+1)^A124778(n))`
-/

namespace A165762.P4409669707577692489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165764 (SequenceMachineLib.roundAway ((A184107 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A165762.P4409669707577692489

/-! ## A165762.P9449311028814354398

`A165764(C(A184107(n+1), A124778(n)))`
-/

namespace A165762.P9449311028814354398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165764 (Nat.choose (A184107 (n + 1)).toNat (A124778 n).toNat)

end

end A165762.P9449311028814354398

/-! ## A165762.P18343229509450645793

`A165764(A124778(n)²*A184107(n+1))`
-/

namespace A165762.P18343229509450645793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165764 (A124778 n ^ 2 * A184107 (n + 1)).toNat

end

end A165762.P18343229509450645793

/-!
# A165766: Number of tatami-free rooms of size 2n.

The programs for A165766, there is no canonical definition to state claims against.
-/

/-! ## A165766.P13825478823241771691

`(A256974(n)%A254077(n+1))²%A255481(n+2)`
-/

namespace A165766.P13825478823241771691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A256974 n) (A254077 (n + 1)) ^ 2) (A255481 (n + 2))

end

end A165766.P13825478823241771691

/-! ## A165766.P9326163744779141222

`A087991(∏{e}[A087990(n+2), A000005((n+1)^#)])`
-/

namespace A165766.P9326163744779141222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 ((n + 1) ^ Nat.factorization (f1 n).natAbs p)).toNat

end

end A165766.P9326163744779141222

/-! ## A165766.P14735369836333132414

`val(A120913(A321366(n+1)), 11)`
-/

namespace A165766.P14735369836333132414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120913 (A321366 (n + 1)).toNat).toNat 11

end

end A165766.P14735369836333132414

/-! ## A165766.P4054419118159272637

`and(A003849(A308957(n)), A018067(n))`
-/

namespace A165766.P4054419118159272637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003849 (A308957 n).toNat) (A018067 n)

end

end A165766.P4054419118159272637

/-! ## A165766.P263099526289105359

`A378979(n+1)%A272901(A329004(3*n+2))`
-/

namespace A165766.P263099526289105359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378979 (n + 1)) (A272901 (A329004 (3 * n + 2)).toNat)

end

end A165766.P263099526289105359

/-! ## A165766.P9704828507138035324

`A336356(A090628(n))`
-/

namespace A165766.P9704828507138035324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (A090628 n).toNat

end

end A165766.P9704828507138035324

/-! ## A165766.P11235152651384727574

`A341025(A008441(A341025(2*n+1))²)`
-/

namespace A165766.P11235152651384727574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A008441 (A341025 (2 * n + 1 + 120)).toNat ^ 2).toNat + 120)

end

end A165766.P11235152651384727574

/-!
# A165767: Numbers m such that 2^m-m is a semiprime.

The programs for A165767, there is no canonical definition to state claims against.
-/

/-! ## A165767.P10678254767584783040

`eq[2, A361803(n+1)]+1`
-/

namespace A165767.P10678254767584783040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165767.P10678254767584783040

/-!
# A165768: Smallest prime factor of the semiprime 2^A165767(n)-A165767(n).

The programs for A165768, there is no canonical definition to state claims against.
-/

/-! ## A165768.P734428390200136245

`(2^A165767(n+1)-A165767(n+1))/A165769(n+1)`
-/

namespace A165768.P734428390200136245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A165767 (n + 1) : ℤ) - (A165767 (n + 1) : ℚ)) / (A165769 (n + 1) : ℚ)

end

end A165768.P734428390200136245

/-! ## A165768.P9085438963685188686

`A000325(A165767(n+1))/A165769(n+1)`
-/

namespace A165768.P9085438963685188686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000325 (A165767 (n + 1)).toNat : ℚ) / (A165769 (n + 1) : ℚ)

end

end A165768.P9085438963685188686

/-! ## A165768.P1510967461260401881

`A000325(eq[2, A361803(n+1)]+1)/A165769(n+1)`
-/

namespace A165768.P1510967461260401881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361803 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A165769 (n + 1) : ℚ)

end

end A165768.P1510967461260401881

/-!
# A165769: Largest prime factor of the semiprime 2^A165767(n)-A165767(n).

The programs for A165769, there is no canonical definition to state claims against.
-/

/-! ## A165769.P10758493451379526495

`(2^A165767(n+1)-A165767(n+1))/A165768(n+1)`
-/

namespace A165769.P10758493451379526495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A165767 (n + 1) : ℤ) - (A165767 (n + 1) : ℚ)) / (A165768 (n + 1) : ℚ)

end

end A165769.P10758493451379526495

/-! ## A165769.P12683790896194953541

`A359684(A165767(n+1))`
-/

namespace A165769.P12683790896194953541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359684 (A165767 (n + 1)).toNat

end

end A165769.P12683790896194953541

/-! ## A165769.P6001539508761428759

`A000325(A165767(n+1))/A165768(n+1)`
-/

namespace A165769.P6001539508761428759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000325 (A165767 (n + 1)).toNat : ℚ) / (A165768 (n + 1) : ℚ)

end

end A165769.P6001539508761428759

/-! ## A165769.P5408987714945502615

`A359684(eq[2, A361803(n+1)]+1)`
-/

namespace A165769.P5408987714945502615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A165769.P5408987714945502615

/-! ## A165769.P14261694465369622470

`A000325(eq[2, A361803(n+1)]+1)/A165768(n+1)`
-/

namespace A165769.P14261694465369622470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361803 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A165768 (n + 1) : ℚ)

end

end A165769.P14261694465369622470

/-!
# A165770: Smallest divisor of 123...n (=A007908) larger than the preceding term.

The programs for A165770, there is no canonical definition to state claims against.
-/

/-! ## A165770.P12170199477588115850

`∑[A165771(n+1)]`
-/

namespace A165770.P12170199477588115850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165770.P12170199477588115850

/-! ## A165770.P1820713998417667772

`∑{d}[A000079(n), A165771(A048794(#))]`
-/

namespace A165770.P1820713998417667772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165771 (A048794 d).toNat

end

end A165770.P1820713998417667772

/-!
# A165771: Smallest positive integer such that a(1)+...a(n) divides 123...n (=A007908(n)).

The programs for A165771, there is no canonical definition to state claims against.
-/

/-! ## A165771.P7847999792762892047

`A207574(∏{d}[A307947(n), #])`
-/

namespace A165771.P7847999792762892047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A165771.P7847999792762892047

/-!
# A165772: Numbers d*p where d is a perfect number and p

The programs for A165772, there is no canonical definition to state claims against.
-/

/-! ## A165772.P4466629606222406581

`∩[A109321(n+1), A333840(n+1)]`
-/

namespace A165772.P4466629606222406581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165772.P4466629606222406581

/-!
# A165773: Numbers k for which phi(k) = m! for some integer m, where phi = A000010.

The programs for A165773, the canonical program `A165773.P7798958671883465394` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165773 has offset 1).

The definition of A165773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165773.P7798958671883465394

`eq[1, A034968(A000010(n+1))]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A165773

/-- `eq[1, A034968(A000010(n+1))]+1` -/
def P7798958671883465394.Spec : Prop :=
  ∀ n, (P7798958671883465394.a n : ℤ) = A165773 (n + 1)

theorem P7798958671883465394.correct : P7798958671883465394.Spec := by
  intro n
  simp only [A165773, Nat.add_sub_cancel]

end A165773

/-! ## A165773.P5338611283734647958

`record[A000027(n+1)/A034968(A000010(n+1))]`
-/

namespace A165773.P5338611283734647958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A034968 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165773.P5338611283734647958

namespace A165773

/-- `record[A000027(n+1)/A034968(A000010(n+1))]` -/
def P5338611283734647958.Spec : Prop :=
  ∀ n, P5338611283734647958.a n = (A165773 (n + 1) : ℚ)

end A165773

/-! ## A165773.P401119229044456119

`record[(A005408(n)-n)/A034968(A000010(n+1))]`
-/

namespace A165773.P401119229044456119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A034968 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165773.P401119229044456119

namespace A165773

/-- `record[(A005408(n)-n)/A034968(A000010(n+1))]` -/
def P401119229044456119.Spec : Prop :=
  ∀ n, P401119229044456119.a n = (A165773 (n + 1) : ℚ)

end A165773

/-! ## A165773.P4508292340539223126

`record[A008619(2*n)/A034968(A000010(n+1))]`
-/

namespace A165773.P4508292340539223126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A034968 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165773.P4508292340539223126

namespace A165773

/-- `record[A008619(2*n)/A034968(A000010(n+1))]` -/
def P4508292340539223126.Spec : Prop :=
  ∀ n, P4508292340539223126.a n = (A165773 (n + 1) : ℚ)

end A165773

/-! ## A165773.P6447974441211325161

`record[A266285(2*n)/A034968(A000010(n+1))]`
-/

namespace A165773.P6447974441211325161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266285 (2 * n) : ℚ) / (A034968 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165773.P6447974441211325161

namespace A165773

/-- `record[A266285(2*n)/A034968(A000010(n+1))]` -/
def P6447974441211325161.Spec : Prop :=
  ∀ n, P6447974441211325161.a n = (A165773 (n + 1) : ℚ)

end A165773

/-!
# A165774: Largest solution to phi(x) = n!, where phi() is Euler totient function (A000010).

The programs for A165774, there is no canonical definition to state claims against.
-/

/-! ## A165774.P1062420854225457423

`A165773(∑[A055506(n+1)])`
-/

namespace A165774.P1062420854225457423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165773 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165774.P1062420854225457423

/-! ## A165774.P7245281690854124525

`A057635((n+1)!)`
-/

namespace A165774.P7245281690854124525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (Nat.factorial (n + 1))

end

end A165774.P7245281690854124525

/-! ## A165774.P18401939064595379506

`A066900((n+1)!)`
-/

namespace A165774.P18401939064595379506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066900 (Nat.factorial (n + 1))

end

end A165774.P18401939064595379506

/-!
# A165775: n + (least square >= n), i.e., n + A048761(n).

The programs for A165775, the canonical program `A165775.P10524646008314914098` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165775 has offset 0).

The definition of A165775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165775.P15581141746073739978

`n+ceil(sqrt(n))²`
-/

namespace A165775.P15581141746073739978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌈Real.sqrt (n : ℝ)⌉ ^ 2

end

end A165775.P15581141746073739978

namespace A165775

/-- `n+ceil(sqrt(n))²` -/
def P15581141746073739978.Spec : Prop :=
  ∀ n, P15581141746073739978.a n = A165775 n

end A165775

/-! ## A165775.P10524646008314914098

`n+A048761(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165775

/-- `n+A048761(n)` -/
def P10524646008314914098.Spec : Prop :=
  ∀ n, P10524646008314914098.a n = A165775 n

theorem P10524646008314914098.correct : P10524646008314914098.Spec := by
  intro n
  simp only [A165775]

end A165775

/-! ## A165775.P16180000258856271624

`record[(n+1)*floor(sqrt(2*n))%2]`
-/

namespace A165775.P16180000258856271624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.sqrt (2 * n) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165775.P16180000258856271624

namespace A165775

/-- `record[(n+1)*floor(sqrt(2*n))%2]` -/
def P16180000258856271624.Spec : Prop :=
  ∀ n, (P16180000258856271624.a n : ℤ) = A165775 n

end A165775

/-! ## A165775.P12858775893419630058

`comp[A061887(n)+1]`
-/

namespace A165775.P12858775893419630058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165775.P12858775893419630058

namespace A165775

/-- `comp[A061887(n)+1]` -/
def P12858775893419630058.Spec : Prop :=
  ∀ n, (P12858775893419630058.a n : ℤ) = A165775 n

end A165775

/-! ## A165775.P13619602984353228236

`eq[1, A263919(2*n)]`
-/

namespace A165775.P13619602984353228236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263919 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165775.P13619602984353228236

namespace A165775

/-- `eq[1, A263919(2*n)]` -/
def P13619602984353228236.Spec : Prop :=
  ∀ n, (P13619602984353228236.a n : ℤ) = A165775 n

end A165775

/-! ## A165775.P11693841173580080930

`lt[0, A266982(2*n)]`
-/

namespace A165775.P11693841173580080930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165775.P11693841173580080930

namespace A165775

/-- `lt[0, A266982(2*n)]` -/
def P11693841173580080930.Spec : Prop :=
  ∀ n, (P11693841173580080930.a n : ℤ) = A165775 n

end A165775

/-! ## A165775.P7142733825108149464

`comp[comp[A165776(n)]+1]`
-/

namespace A165775.P7142733825108149464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A165775.P7142733825108149464

namespace A165775

/-- `comp[comp[A165776(n)]+1]` -/
def P7142733825108149464.Spec : Prop :=
  ∀ n, (P7142733825108149464.a n : ℤ) = A165775 n

end A165775

/-! ## A165775.P4718839324257188950

`comp[A048760(n)+1+n]`
-/

namespace A165775.P4718839324257188950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165775.P4718839324257188950

namespace A165775

/-- `comp[A048760(n)+1+n]` -/
def P4718839324257188950.Spec : Prop :=
  ∀ n, (P4718839324257188950.a n : ℤ) = A165775 n

end A165775

/-! ## A165775.P1797798735928179107

`record[(ceil(sqrt(n))+1)%2*A318518(n+1)]`
-/

namespace A165775.P1797798735928179107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt (n : ℝ)⌉ + 1) 2 * A318518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165775.P1797798735928179107

namespace A165775

/-- `record[(ceil(sqrt(n))+1)%2*A318518(n+1)]` -/
def P1797798735928179107.Spec : Prop :=
  ∀ n, P1797798735928179107.a n = A165775 n

end A165775

/-! ## A165775.P10280641536170911292

`record[n-A130472(A000194(2*n))]`
-/

namespace A165775.P10280641536170911292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130472 (A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165775.P10280641536170911292

namespace A165775

/-- `record[n-A130472(A000194(2*n))]` -/
def P10280641536170911292.Spec : Prop :=
  ∀ n, P10280641536170911292.a n = A165775 n

end A165775

/-! ## A165775.P4028641582267449755

`record[A001057(A000194(n))+A001057(n)]`
-/

namespace A165775.P4028641582267449755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A000194 n).toNat + A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165775.P4028641582267449755

namespace A165775

/-- `record[A001057(A000194(n))+A001057(n)]` -/
def P4028641582267449755.Spec : Prop :=
  ∀ n, P4028641582267449755.a n = A165775 n

end A165775

/-!
# A165776: n + (least square > n), i.e., n + A048761(n+1).

The programs for A165776, the canonical program `A165776.P8682621078741289421` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165776 has offset 0).

The definition of A165776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165776.P8682621078741289421

`n+A048761(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165776

/-- `n+A048761(n+1)` -/
def P8682621078741289421.Spec : Prop :=
  ∀ n, P8682621078741289421.a n = A165776 n

theorem P8682621078741289421.correct : P8682621078741289421.Spec := by
  intro n
  simp only [A165776]

end A165776

/-! ## A165776.P14267469083666096368

`comp[floor(sqrt(n))²+n]`
-/

namespace A165776.P14267469083666096368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A165776.P14267469083666096368

namespace A165776

/-- `comp[floor(sqrt(n))²+n]` -/
def P14267469083666096368.Spec : Prop :=
  ∀ n, (P14267469083666096368.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P14715416300955495672

`eq[1, floor(sqrt(2*n))%2]`
-/

namespace A165776.P14715416300955495672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165776.P14715416300955495672

namespace A165776

/-- `eq[1, floor(sqrt(2*n))%2]` -/
def P14715416300955495672.Spec : Prop :=
  ∀ n, (P14715416300955495672.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P18267431314747328422

`eq[1, gcd(2, floor(sqrt(2*n)))]`
-/

namespace A165776.P18267431314747328422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.sqrt (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165776.P18267431314747328422

namespace A165776

/-- `eq[1, gcd(2, floor(sqrt(2*n)))]` -/
def P18267431314747328422.Spec : Prop :=
  ∀ n, (P18267431314747328422.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P15958076708335769294

`eq[1, and(1, floor(sqrt(2*n)))]`
-/

namespace A165776.P15958076708335769294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165776.P15958076708335769294

namespace A165776

/-- `eq[1, and(1, floor(sqrt(2*n)))]` -/
def P15958076708335769294.Spec : Prop :=
  ∀ n, (P15958076708335769294.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P12590144484020786421

`abs(xor(floor(sqrt(n)), -1))²+n`
-/

namespace A165776.P12590144484020786421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.sqrt n : ℤ) (-1)| ^ 2 + (n : ℤ)

end

end A165776.P12590144484020786421

namespace A165776

/-- `abs(xor(floor(sqrt(n)), -1))²+n` -/
def P12590144484020786421.Spec : Prop :=
  ∀ n, P12590144484020786421.a n = A165776 n

end A165776

/-! ## A165776.P3155057300386774142

`A080883(n)+2*n`
-/

namespace A165776.P3155057300386774142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 n + (2 * n : ℤ)

end

end A165776.P3155057300386774142

namespace A165776

/-- `A080883(n)+2*n` -/
def P3155057300386774142.Spec : Prop :=
  ∀ n, P3155057300386774142.a n = A165776 n

end A165776

/-! ## A165776.P13893692967491011191

`∑[A010052(n)]²+n`
-/

namespace A165776.P13893692967491011191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)

end

end A165776.P13893692967491011191

namespace A165776

/-- `∑[A010052(n)]²+n` -/
def P13893692967491011191.Spec : Prop :=
  ∀ n, P13893692967491011191.a n = A165776 n

end A165776

/-! ## A165776.P7393282069170156736

`Δ[A327672(n)]²+n`
-/

namespace A165776.P7393282069170156736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + (n : ℤ)

end

end A165776.P7393282069170156736

namespace A165776

/-- `Δ[A327672(n)]²+n` -/
def P7393282069170156736.Spec : Prop :=
  ∀ n, P7393282069170156736.a n = A165776 n

end A165776

/-! ## A165776.P1134023721551889008

`A003059(n+1)²+n`
-/

namespace A165776.P1134023721551889008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) ^ 2 + (n : ℤ)

end

end A165776.P1134023721551889008

namespace A165776

/-- `A003059(n+1)²+n` -/
def P1134023721551889008.Spec : Prop :=
  ∀ n, P1134023721551889008.a n = A165776 n

theorem P1134023721551889008.correct : P1134023721551889008.Spec := by
  intro n
  simp only [A165776, Nat.add_sub_cancel, A165776.P1134023721551889008.a, A165776.P8682621078741289421.a, A003059, A003059.P1258737259570017328.a, A048761, A048761.P914736112300567897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165776

/-! ## A165776.P11627414552441203083

`∑[char[A000290(n)]]²+n`
-/

namespace A165776.P11627414552441203083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n

end

end A165776.P11627414552441203083

namespace A165776

/-- `∑[char[A000290(n)]]²+n` -/
def P11627414552441203083.Spec : Prop :=
  ∀ n, (P11627414552441203083.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P433436348564122632

`eq[1, A021913(floor(sqrt(8*n)))]`
-/

namespace A165776.P433436348564122632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (Nat.sqrt (8 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165776.P433436348564122632

namespace A165776

/-- `eq[1, A021913(floor(sqrt(8*n)))]` -/
def P433436348564122632.Spec : Prop :=
  ∀ n, (P433436348564122632.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P3776857620531459403

`eq[2, A020639(floor(sqrt(2*n))+1)]`
-/

namespace A165776.P3776857620531459403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.sqrt (2 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165776.P3776857620531459403

namespace A165776

/-- `eq[2, A020639(floor(sqrt(2*n))+1)]` -/
def P3776857620531459403.Spec : Prop :=
  ∀ n, (P3776857620531459403.a n : ℤ) = A165776 n

end A165776

/-! ## A165776.P14828230505235453867

`A008619(A000267(n))²+n`
-/

namespace A165776.P14828230505235453867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000267 n).toNat ^ 2 + (n : ℤ)

end

end A165776.P14828230505235453867

namespace A165776

/-- `A008619(A000267(n))²+n` -/
def P14828230505235453867.Spec : Prop :=
  ∀ n, P14828230505235453867.a n = A165776 n

end A165776

/-! ## A165776.P11111053913837907947

`A005563(A000196(n))+n+1`
-/

namespace A165776.P11111053913837907947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A000196 n).toNat + (n + 1 : ℤ)

end

end A165776.P11111053913837907947

namespace A165776

/-- `A005563(A000196(n))+n+1` -/
def P11111053913837907947.Spec : Prop :=
  ∀ n, P11111053913837907947.a n = A165776 n

end A165776

/-! ## A165776.P13152637269012671470

`A007606(n+1)+A000196(n)`
-/

namespace A165776.P13152637269012671470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1) + A000196 n

end

end A165776.P13152637269012671470

namespace A165776

/-- `A007606(n+1)+A000196(n)` -/
def P13152637269012671470.Spec : Prop :=
  ∀ n, P13152637269012671470.a n = A165776 n

end A165776

/-! ## A165776.P7907677010795637138

`A061887(n)+A001650(n+1)`
-/

namespace A165776.P7907677010795637138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n + A001650 (n + 1)

end

end A165776.P7907677010795637138

namespace A165776

/-- `A061887(n)+A001650(n+1)` -/
def P7907677010795637138.Spec : Prop :=
  ∀ n, P7907677010795637138.a n = A165776 n

end A165776

/-! ## A165776.P11875350512763795397

`A094761(n)+A020703(n+1)`
-/

namespace A165776.P11875350512763795397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094761 n + A020703 (n + 1)

end

end A165776.P11875350512763795397

namespace A165776

/-- `A094761(n)+A020703(n+1)` -/
def P11875350512763795397.Spec : Prop :=
  ∀ n, P11875350512763795397.a n = A165776 n

end A165776

/-! ## A165776.P402770164993284394

`A161983(n)+A003059(n+1)`
-/

namespace A165776.P402770164993284394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n + A003059 (n + 1)

end

end A165776.P402770164993284394

namespace A165776

/-- `A161983(n)+A003059(n+1)` -/
def P402770164993284394.Spec : Prop :=
  ∀ n, P402770164993284394.a n = A165776 n

end A165776

/-! ## A165776.P14281773181189160707

`A020703(n+1)+A053186(n)+n`
-/

namespace A165776.P14281773181189160707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1) + (A053186 n + (n : ℤ))

end

end A165776.P14281773181189160707

namespace A165776

/-- `A020703(n+1)+A053186(n)+n` -/
def P14281773181189160707.Spec : Prop :=
  ∀ n, P14281773181189160707.a n = A165776 n

end A165776

/-!
# A165777: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165777, there is no canonical definition to state claims against.
-/

/-! ## A165777.P2420343096879734807

`floor(6*5^(n-1))-A241831(A115205(n))`
-/

namespace A165777.P2420343096879734807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A241831 (A115205 n).toNat

end

end A165777.P2420343096879734807

/-! ## A165777.P9283648341612199502

`A167651(n)-A326688(A156882(n+2))`
-/

namespace A165777.P9283648341612199502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167651 n - A326688 (A156882 (n + 2)).toNat

end

end A165777.P9283648341612199502

/-! ## A165777.P2968074901871757336

`A003948(n)-A005940(n+1)*A185284(A212804(n))`
-/

namespace A165777.P2968074901871757336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n - A005940 (n + 1) * A185284 (A212804 n).toNat

end

end A165777.P2968074901871757336

/-!
# A165780: Numbers n such that |2^n-16257| is prime.

The programs for A165780, there is no canonical definition to state claims against.
-/

/-! ## A165780.P6966563742752268

`A029023(n+3)*A352823(A050530(n+1))`
-/

namespace A165780.P6966563742752268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029023 (n + 3) * A352823 (A050530 (n + 1)).toNat

end

end A165780.P6966563742752268

/-!
# A165781: a(n) = (2^A002326(n)-1)/(2*n+1).

The programs for A165781, there is no canonical definition to state claims against.
-/

/-! ## A165781.P73631258233004985

`(2^A002326(n)-1)/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165781.P73631258233004985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A002326 n : ℤ) - 1) / (2 * n + 1 : ℚ)

end

end A165781.P73631258233004985

/-! ## A165781.P16975342811436333736

`A204984(Δ[n²])`
-/

namespace A165781.P16975342811436333736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165781.P16975342811436333736

/-! ## A165781.P3727415522053899570

`A204992(Δ[n²])/2`
-/

namespace A165781.P3727415522053899570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204992 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A165781.P3727415522053899570

/-! ## A165781.P187760806439666318

`or(1, A204984(2*n+1))`
-/

namespace A165781.P187760806439666318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204984 (2 * n + 1))

end

end A165781.P187760806439666318

/-! ## A165781.P11539754387143885243

`A249596(n+1)/(n+1)`
-/

namespace A165781.P11539754387143885243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249596 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165781.P11539754387143885243

/-! ## A165781.P1371816456430204587

`A204983(2*n+1)/Δ[n²]`
-/

namespace A165781.P1371816456430204587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204983 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A165781.P1371816456430204587

/-! ## A165781.P16900853349573568603

`A204990(2*n+1)/(2*n+1)`
-/

namespace A165781.P16900853349573568603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204990 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A165781.P16900853349573568603

/-! ## A165781.P11636546093270441019

`A204991(2*n+1)/(2*(2*n+1))`
-/

namespace A165781.P11636546093270441019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (2 * n + 1) : ℚ) / (2 * (2 * n + 1) : ℚ)

end

end A165781.P11636546093270441019

/-! ## A165781.P2261836839682071724

`A000225(A002326(n))/(2*n+1)`
-/

namespace A165781.P2261836839682071724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002326 n).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A165781.P2261836839682071724

/-! ## A165781.P7464324581240765808

`A001226(n+1)%A352217(n+1)`
-/

namespace A165781.P7464324581240765808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001226 (n + 1)) (A352217 (n + 1))

end

end A165781.P7464324581240765808

/-! ## A165781.P3313361753091710470

`A329238(n+1)%A352217(n+1)`
-/

namespace A165781.P3313361753091710470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329238 (n + 1)) (A352217 (n + 1))

end

end A165781.P3313361753091710470

/-! ## A165781.P12001171529375494596

`A000225(A007733(2*n+1))/(2*n+1)`
-/

namespace A165781.P12001171529375494596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A007733 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A165781.P12001171529375494596

/-! ## A165781.P17602386138366614218

`A000225(A054703(2*n+1))/(2*n+1)`
-/

namespace A165781.P17602386138366614218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A054703 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A165781.P17602386138366614218

/-! ## A165781.P10275199732438698206

`2*A204984(2*n+1)/A000034(2*n+1)`
-/

namespace A165781.P10275199732438698206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A204984 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A165781.P10275199732438698206

/-! ## A165781.P1092089560041963099

`2*A204984(2*n+1)/A020639(2*(n+1))`
-/

namespace A165781.P1092089560041963099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A204984 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A165781.P1092089560041963099

/-! ## A165781.P5888657792588104622

`2*A204984(2*n+1)/A168361(2*n+1)`
-/

namespace A165781.P5888657792588104622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A204984 (2 * n + 1) : ℚ) / (A168361 (2 * n + 1) : ℚ)

end

end A165781.P5888657792588104622

/-! ## A165781.P18301449699556380668

`gcd(A003473(2*n+1), A204992(2*n+1))`
-/

namespace A165781.P18301449699556380668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003473 (2 * n + 1)) (A204992 (2 * n + 1))

end

end A165781.P18301449699556380668

/-! ## A165781.P8797013633606152924

`gcd(A204984(2*n+1)*A204984(2*(n+1)), A204984(2*n+1))`
-/

namespace A165781.P8797013633606152924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204984 (2 * n + 1) * A204984 (2 * (n + 1))) (A204984 (2 * n + 1))

end

end A165781.P8797013633606152924

/-!
# A165783: a(n) = A002326(n-1) + A000120(A165781(n-1)).

The programs for A165783, there is no canonical definition to state claims against.
-/

/-! ## A165783.P11712818053632238214

`A179382(n+1)+A002326(n)`
-/

namespace A165783.P11712818053632238214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1) + A002326 n

end

end A165783.P11712818053632238214

/-! ## A165783.P14538328849880070296

`A179382(n+1)+A054703(Δ[n²])`
-/

namespace A165783.P14538328849880070296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1) + A054703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165783.P14538328849880070296

/-! ## A165783.P1677046748374390335

`A179382(n+1)+A007733(2*n+1)`
-/

namespace A165783.P1677046748374390335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1) + A007733 (2 * n + 1)

end

end A165783.P1677046748374390335

/-! ## A165783.P4226988598281008694

`A336843(A064216(n+1))+A179382(n+1)`
-/

namespace A165783.P4226988598281008694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A064216 (n + 1)).toNat + A179382 (n + 1)

end

end A165783.P4226988598281008694

/-! ## A165783.P11067235941102824307

`A179382(n+1)+A037225(n)/A037226(n)`
-/

namespace A165783.P11067235941102824307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179382 (n + 1) : ℚ) + (A037225 n : ℚ) / (A037226 n : ℚ)

end

end A165783.P11067235941102824307

/-! ## A165783.P8570548684288017321

`A179382(n+1)+lcm(A003558(n), A053451(n))`
-/

namespace A165783.P8570548684288017321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1) + (Int.lcm (A003558 n) (A053451 n) : ℤ)

end

end A165783.P8570548684288017321

/-!
# A165784: a(1)=1. For n >= 2, each a(n) = the decimal equivalent of either a(k)U0Ua(k) or a(k)U1Ua(k), where U denotes concatenation of the binary representations of the arguments, and where k is some positive integer < n. The numbers are arranged in numerical order.

The programs for A165784, there is no canonical definition to state claims against.
-/

/-! ## A165784.P8791092798144616323

`A329419(∑[A000088(2^val(n+1, 2))])`
-/

namespace A165784.P8791092798144616323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165784.P8791092798144616323

/-!
# A165785: Base 10 representation of A240602.

The programs for A165785, there is no canonical definition to state claims against.
-/

/-! ## A165785.P8446204213775205168

`eq[A055945(n), A230831(A145799(n+1))]`
-/

namespace A165785.P8446204213775205168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A145799 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165785.P8446204213775205168

/-! ## A165785.P15296458184127708940

`eq[A178225(n), A196641(A145799(n+1))]`
-/

namespace A165785.P15296458184127708940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A145799 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165785.P15296458184127708940

/-! ## A165785.P7156852659099409479

`eq[A175919(n), A230831(A145799(n+1))]`
-/

namespace A165785.P7156852659099409479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A145799 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165785.P7156852659099409479

/-! ## A165785.P6529676726980458060

`record[gcd(A137510(n+1), A175298(n))]`
-/

namespace A165785.P6529676726980458060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137510 (n + 1)) (A175298 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165785.P6529676726980458060

/-! ## A165785.P13915603520028176562

`A006995(A191925(n+2))%A331678(n+1)`
-/

namespace A165785.P13915603520028176562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006995 (A191925 (n + 2)).toNat) (A331678 (n + 1))

end

end A165785.P13915603520028176562

/-!
# A165786: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165786, there is no canonical definition to state claims against.
-/

/-! ## A165786.P6849126570156477368

`A166366(n)-A166353(A166340(n+2))`
-/

namespace A165786.P6849126570156477368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166366 n - A166353 (A166340 (n + 2)).toNat

end

end A165786.P6849126570156477368

/-! ## A165786.P8734787292214291900

`xor(A004016(A022371(n+4)), A167899(n))`
-/

namespace A165786.P8734787292214291900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A022371 (n + 4)).toNat) (A167899 n)

end

end A165786.P8734787292214291900

/-! ## A165786.P8643293065524365815

`xor(A004016(A022371(n+4)), A168685(n))`
-/

namespace A165786.P8643293065524365815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A022371 (n + 4)).toNat) (A168685 n)

end

end A165786.P8643293065524365815

/-! ## A165786.P8533172318056032803

`xor(A223564(n+1)/8, A004016(A022371(n+4)))`
-/

namespace A165786.P8533172318056032803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A223564 (n + 1) : ℚ) / 8)) (A004016 (A022371 (n + 4)).toNat)

end

end A165786.P8533172318056032803

/-!
# A165787: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165787, there is no canonical definition to state claims against.
-/

/-! ## A165787.P913478915756731136

`A003951(n)-A159788(A038141(n+4))`
-/

namespace A165787.P913478915756731136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n - A159788 (A038141 (n + 4)).toNat

end

end A165787.P913478915756731136

/-!
# A165789: a(n) is the smallest positive integer k that when written in binary, and leading 0's of k are ignored, contains the reversal of the digits of binary n.

The programs for A165789, the canonical program `A165789.P3775044912176039512` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165789 has offset 1).

The definition of A165789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165789.P3775044912176039512

`A145341(A145051(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A165789

/-- `A145341(A145051(n+1))` -/
def P3775044912176039512.Spec : Prop :=
  ∀ n, P3775044912176039512.a n = A165789 (n + 1)

theorem P3775044912176039512.correct : P3775044912176039512.Spec := by
  intro n
  simp only [A165789, Nat.add_sub_cancel]

end A165789

/-! ## A165789.P2411913297492755484

`A057889(A066104(n)+1)`
-/

namespace A165789.P2411913297492755484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A066104 n + 1).toNat

end

end A165789.P2411913297492755484

namespace A165789

/-- `A057889(A066104(n)+1)` -/
def P2411913297492755484.Spec : Prop :=
  ∀ n, P2411913297492755484.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P16403394020987718320

`A057889(2*(A026741(n+2)-2)+3)`
-/

namespace A165789.P16403394020987718320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * (A026741 (n + 2) - 2) + 3).toNat

end

end A165789.P16403394020987718320

namespace A165789

/-- `A057889(2*(A026741(n+2)-2)+3)` -/
def P16403394020987718320.Spec : Prop :=
  ∀ n, P16403394020987718320.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P2126490665670898279

`A030101(record[or(2, n-1)]+3)`
-/

namespace A165789.P2126490665670898279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A165789.P2126490665670898279

namespace A165789

/-- `A030101(record[or(2, n-1)]+3)` -/
def P2126490665670898279.Spec : Prop :=
  ∀ n, P2126490665670898279.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P10995667846945639876

`A030101(comp[or(2, n)-1]+2)`
-/

namespace A165789.P10995667846945639876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A165789.P10995667846945639876

namespace A165789

/-- `A030101(comp[or(2, n)-1]+2)` -/
def P10995667846945639876.Spec : Prop :=
  ∀ n, P10995667846945639876.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P18258412620812811468

`A030101(A014601(n)+2)`
-/

namespace A165789.P18258412620812811468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A014601 n + 2).toNat

end

end A165789.P18258412620812811468

namespace A165789

/-- `A030101(A014601(n)+2)` -/
def P18258412620812811468.Spec : Prop :=
  ∀ n, P18258412620812811468.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P17745826100400674459

`A030101(A042963(n+2))`
-/

namespace A165789.P17745826100400674459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A042963 (n + 2)).toNat

end

end A165789.P17745826100400674459

namespace A165789

/-- `A030101(A042963(n+2))` -/
def P17745826100400674459.Spec : Prop :=
  ∀ n, P17745826100400674459.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P15738677532861070255

`A030101(A133090(n+2))`
-/

namespace A165789.P15738677532861070255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A133090 (n + 2)).toNat

end

end A165789.P15738677532861070255

namespace A165789

/-- `A030101(A133090(n+2))` -/
def P15738677532861070255.Spec : Prop :=
  ∀ n, P15738677532861070255.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P1785424126856044798

`A030101(A042948(n+1)+1)`
-/

namespace A165789.P1785424126856044798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A042948 (n + 1) + 1).toNat

end

end A165789.P1785424126856044798

namespace A165789

/-- `A030101(A042948(n+1)+1)` -/
def P1785424126856044798.Spec : Prop :=
  ∀ n, P1785424126856044798.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P1455961683045719027

`A030101(A047463(n+2)/2)`
-/

namespace A165789.P1455961683045719027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A047463 (n + 2) : ℚ) / 2)).toNat

end

end A165789.P1455961683045719027

namespace A165789

/-- `A030101(A047463(n+2)/2)` -/
def P1455961683045719027.Spec : Prop :=
  ∀ n, P1455961683045719027.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P13155856087097388062

`A030101(A131055(n+3)+n)`
-/

namespace A165789.P13155856087097388062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A131055 (n + 3) + (n : ℤ)).toNat

end

end A165789.P13155856087097388062

namespace A165789

/-- `A030101(A131055(n+3)+n)` -/
def P13155856087097388062.Spec : Prop :=
  ∀ n, P13155856087097388062.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P6199061783068047420

`A030101(A047241(n+2)-(n+1))`
-/

namespace A165789.P6199061783068047420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047241 (n + 2) - (n + 1 : ℤ)).toNat

end

end A165789.P6199061783068047420

namespace A165789

/-- `A030101(A047241(n+2)-(n+1))` -/
def P6199061783068047420.Spec : Prop :=
  ∀ n, P6199061783068047420.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P17178657760574879463

`A030101(A000034(n)+2*n+1)`
-/

namespace A165789.P17178657760574879463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000034 n + (2 * n + 1 : ℤ)).toNat

end

end A165789.P17178657760574879463

namespace A165789

/-- `A030101(A000034(n)+2*n+1)` -/
def P17178657760574879463.Spec : Prop :=
  ∀ n, P17178657760574879463.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P2950458352068247235

`A119608(A047621(n+2))`
-/

namespace A165789.P2950458352068247235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A047621 (n + 2)).toNat

end

end A165789.P2950458352068247235

namespace A165789

/-- `A119608(A047621(n+2))` -/
def P2950458352068247235.Spec : Prop :=
  ∀ n, P2950458352068247235.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P15061078042361365355

`A281589(A047471(n+2)+1)`
-/

namespace A165789.P15061078042361365355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (A047471 (n + 2) + 1).toNat

end

end A165789.P15061078042361365355

namespace A165789

/-- `A281589(A047471(n+2)+1)` -/
def P15061078042361365355.Spec : Prop :=
  ∀ n, P15061078042361365355.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P14219609562231762072

`A030101(2*(Δ[n²]/(char[A109613(n)]+1)+1))`
-/

namespace A165789.P14219609562231762072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 * (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) + 1))).toNat

end

end A165789.P14219609562231762072

namespace A165789

/-- `A030101(2*(Δ[n²]/(char[A109613(n)]+1)+1))` -/
def P14219609562231762072.Spec : Prop :=
  ∀ n, P14219609562231762072.a n = A165789 (n + 1)

end A165789

/-! ## A165789.P5674120278347316825

`A030101(A047463(n+2))`
-/

namespace A165789.P5674120278347316825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047463 (n + 2)).toNat

end

end A165789.P5674120278347316825

namespace A165789

/-- `A030101(A047463(n+2))` -/
def P5674120278347316825.Spec : Prop :=
  ∀ n, P5674120278347316825.a n = A165789 (n + 1)

end A165789

/-!
# A165790: a(n) = the smallest positive multiple, k, of n that when written in binary, and leading 0's of k are ignored, contains the reversal of the digits of binary n.

The programs for A165790, there is no canonical definition to state claims against.
-/

/-! ## A165790.P4746005827149232406

`lcm(A000005(A000351(n)), A145800(n+1))`
-/

namespace A165790.P4746005827149232406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A000351 n).toNat) (A145800 (n + 1))

end

end A165790.P4746005827149232406

/-! ## A165790.P14588224781112853586

`lcm(A033151(A033152(n+1)), A161501(n+1))`
-/

namespace A165790.P14588224781112853586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033151 (A033152 (n + 1)).toNat) (A161501 (n + 1))

end

end A165790.P14588224781112853586

/-!
# A165791: Number of tilings of a 4 X n rectangle using dominoes and right trominoes.

The programs for A165791, there is no canonical definition to state claims against.
-/

/-! ## A165791.P12444052013735715691

`A219987(A052905(n+2))`
-/

namespace A165791.P12444052013735715691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A052905 (n + 2)).toNat

end

end A165791.P12444052013735715691

/-! ## A165791.P15813900478097378967

`A219987(A056115(n)+10)`
-/

namespace A165791.P15813900478097378967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A056115 n + 10).toNat

end

end A165791.P15813900478097378967

/-! ## A165791.P3217628746696956992

`A219987(A155212(n)+12)`
-/

namespace A165791.P3217628746696956992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A155212 n + 12).toNat

end

end A165791.P3217628746696956992

/-! ## A165791.P17978053768850986342

`A219987(A056000(n)+14)`
-/

namespace A165791.P17978053768850986342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A056000 n + 14).toNat

end

end A165791.P17978053768850986342

/-! ## A165791.P7711255015164028739

`A219987(eq[4, A002262(n)])`
-/

namespace A165791.P7711255015164028739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165791.P7711255015164028739

/-!
# A165792: a(0)=1, a(n) = n*(a(n-1)+2).

The programs for A165792, the canonical program `A165792.P1156472048909709794` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165792 has offset 0).

The definition of A165792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+2)` (program `A165792.P1156472048909709794`, by `A165792.P1156472048909709794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165792.P1156472048909709794

`n*(a(n-1)+2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165792

/-- `n*(a(n-1)+2)` -/
def P1156472048909709794.Spec : Prop :=
  ∀ n, (P1156472048909709794.a n : ℤ) = A165792 n

theorem P1156472048909709794.correct : P1156472048909709794.Spec := by
  intro n
  simp only [A165792]

end A165792

/-! ## A165792.P8718182752788667109

`n*(2-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165792.P8718182752788667109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A165792.P8718182752788667109

namespace A165792

/-- `n*(2-floor(-a(n-1)))` -/
def P8718182752788667109.Spec : Prop :=
  ∀ n, P8718182752788667109.a n = A165792 n

end A165792

/-! ## A165792.P15614686469962239841

`n*(2-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A165792.P15614686469962239841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A165792.P15614686469962239841

namespace A165792

/-- `n*(2-ceil(-a(n-1)))` -/
def P15614686469962239841.Spec : Prop :=
  ∀ n, P15614686469962239841.a n = A165792 n

end A165792

/-! ## A165792.P4432383267977130048

`n*(2-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A165792.P4432383267977130048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A165792.P4432383267977130048

namespace A165792

/-- `n*(2-round(-a(n-1)))` -/
def P4432383267977130048.Spec : Prop :=
  ∀ n, P4432383267977130048.a n = A165792 n

end A165792

/-! ## A165792.P861223204778283391

`(a(n-1)+2)/tan(acot(n))` with `a(0)=1`
-/

namespace A165792.P861223204778283391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A165792.P861223204778283391

namespace A165792

/-- `(a(n-1)+2)/tan(acot(n))` -/
def P861223204778283391.Spec : Prop :=
  ∀ n, P861223204778283391.a n = (A165792 n : ℝ)

end A165792

/-! ## A165792.P9933550112830033399

`(a(n-1)+2)/n^(-1)` with `a(0)=1`
-/

namespace A165792.P9933550112830033399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A165792.P9933550112830033399

namespace A165792

/-- `(a(n-1)+2)/n^(-1)` -/
def P9933550112830033399.Spec : Prop :=
  ∀ n, P9933550112830033399.a n = (A165792 n : ℚ)

end A165792

/-! ## A165792.P1112351865724042413

`n*(4-(4/2-a(n-1)))` with `a(0)=1`
-/

namespace A165792.P1112351865724042413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (4 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A165792.P1112351865724042413

namespace A165792

/-- `n*(4-(4/2-a(n-1)))` -/
def P1112351865724042413.Spec : Prop :=
  ∀ n, P1112351865724042413.a n = (A165792 n : ℚ)

end A165792

/-! ## A165792.P10386741934231066453

`3*n-n*(1-a(n-1))` with `a(0)=1`
-/

namespace A165792.P10386741934231066453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A165792.P10386741934231066453

namespace A165792

/-- `3*n-n*(1-a(n-1))` -/
def P10386741934231066453.Spec : Prop :=
  ∀ n, P10386741934231066453.a n = A165792 n

end A165792

/-! ## A165792.P17703232567998254105

`A053817(n)+n`
-/

namespace A165792.P17703232567998254105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053817 n + (n : ℤ)

end

end A165792.P17703232567998254105

namespace A165792

/-- `A053817(n)+n` -/
def P17703232567998254105.Spec : Prop :=
  ∀ n, P17703232567998254105.a n = A165792 n

end A165792

/-! ## A165792.P13686704170299844252

`A019463(2*n)+n`
-/

namespace A165792.P13686704170299844252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (2 * n) + (n : ℤ)

end

end A165792.P13686704170299844252

namespace A165792

/-- `A019463(2*n)+n` -/
def P13686704170299844252.Spec : Prop :=
  ∀ n, P13686704170299844252.a n = A165792 n

end A165792

/-!
# A165793: a(0)=1, a(n)=n*(a(n-1)-2).

The programs for A165793, the canonical program `A165793.P6431682122210643216` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165793 has offset 0).

The definition of A165793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)-2)` (program `A165793.P6431682122210643216`, by `A165793.P6431682122210643216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165793.P6431682122210643216

`n*(a(n-1)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165793

/-- `n*(a(n-1)-2)` -/
def P6431682122210643216.Spec : Prop :=
  ∀ n, P6431682122210643216.a n = A165793 n

theorem P6431682122210643216.correct : P6431682122210643216.Spec := by
  intro n
  simp only [A165793]

end A165793

/-! ## A165793.P133136256854103166

`(a(n-1)-2)/tan(acot(n))` with `a(0)=1`
-/

namespace A165793.P133136256854103166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 2) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A165793.P133136256854103166

namespace A165793

/-- `(a(n-1)-2)/tan(acot(n))` -/
def P133136256854103166.Spec : Prop :=
  ∀ n, P133136256854103166.a n = (A165793 n : ℝ)

end A165793

/-! ## A165793.P13259260974622329398

`(a(n-1)-2)/cot(atan(n))` with `a(0)=1`
-/

namespace A165793.P13259260974622329398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 2) / Real.cot (Real.arctan (n : ℝ))

end

end A165793.P13259260974622329398

namespace A165793

/-- `(a(n-1)-2)/cot(atan(n))` -/
def P13259260974622329398.Spec : Prop :=
  ∀ n, P13259260974622329398.a n = (A165793 n : ℝ)

end A165793

/-! ## A165793.P11451168766250601671

`(a(n-1)-2)/n^(-1)` with `a(0)=1`
-/

namespace A165793.P11451168766250601671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A165793.P11451168766250601671

namespace A165793

/-- `(a(n-1)-2)/n^(-1)` -/
def P11451168766250601671.Spec : Prop :=
  ∀ n, P11451168766250601671.a n = (A165793 n : ℚ)

end A165793

/-! ## A165793.P7400850243755250267

`(2-a(n-1))/(1-(n+1)/n)` with `a(0)=1`
-/

namespace A165793.P7400850243755250267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - a (n - 1)) / (1 - (n + 1 : ℚ) / (n : ℚ))

end

end A165793.P7400850243755250267

namespace A165793

/-- `(2-a(n-1))/(1-(n+1)/n)` -/
def P7400850243755250267.Spec : Prop :=
  ∀ n, P7400850243755250267.a n = (A165793 n : ℚ)

end A165793

/-! ## A165793.P5122905380934877904

`A165814(n)+n!*∑[n/n!]`
-/

namespace A165793.P5122905380934877904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165814 n : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165793.P5122905380934877904

namespace A165793

/-- `A165814(n)+n!*∑[n/n!]` -/
def P5122905380934877904.Spec : Prop :=
  ∀ n, P5122905380934877904.a n = (A165793 n : ℚ)

end A165793

/-! ## A165793.P16697714750789510690

`A166554(n)-n!*∑[n/n!]`
-/

namespace A165793.P16697714750789510690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166554 n : ℚ) - (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165793.P16697714750789510690

namespace A165793

/-- `A166554(n)-n!*∑[n/n!]` -/
def P16697714750789510690.Spec : Prop :=
  ∀ n, P16697714750789510690.a n = (A165793 n : ℚ)

end A165793

/-! ## A165793.P14288422593961379836

`A165814(n)+A007526(n)`
-/

namespace A165793.P14288422593961379836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165814 n + A007526 n

end

end A165793.P14288422593961379836

namespace A165793

/-- `A165814(n)+A007526(n)` -/
def P14288422593961379836.Spec : Prop :=
  ∀ n, P14288422593961379836.a n = A165793 n

end A165793

/-! ## A165793.P4362061056775640376

`A166554(n)-A007526(n)`
-/

namespace A165793.P4362061056775640376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166554 n - A007526 n

end

end A165793.P4362061056775640376

namespace A165793

/-- `A166554(n)-A007526(n)` -/
def P4362061056775640376.Spec : Prop :=
  ∀ n, P4362061056775640376.a n = A165793 n

end A165793

/-! ## A165793.P17225159925711277286

`1-(A007526(n)+A002627(n))`
-/

namespace A165793.P17225159925711277286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007526 n + A002627 n)

end

end A165793.P17225159925711277286

namespace A165793

/-- `1-(A007526(n)+A002627(n))` -/
def P17225159925711277286.Spec : Prop :=
  ∀ n, P17225159925711277286.a n = A165793 n

end A165793

/-!
# A165794: Nimsum of pairs of consecutive Lucas numbers.

The programs for A165794, the canonical program `A165794.P6654975979671749485` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165794 has offset 0).

The definition of A165794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165794.P6654975979671749485

`xor(A000032(n+1), A000032(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165794

/-- `xor(A000032(n+1), A000032(n))` -/
def P6654975979671749485.Spec : Prop :=
  ∀ n, P6654975979671749485.a n = A165794 n

theorem P6654975979671749485.correct : P6654975979671749485.Spec := by
  intro n
  simp only [A165794]

end A165794

/-! ## A165794.P5577375008779178277

`xor(A001612(n)-1, A000204(n+1))`
-/

namespace A165794.P5577375008779178277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001612 n - 1) (A000204 (n + 1))

end

end A165794.P5577375008779178277

namespace A165794

/-- `xor(A001612(n)-1, A000204(n+1))` -/
def P5577375008779178277.Spec : Prop :=
  ∀ n, P5577375008779178277.a n = A165794 n

end A165794

/-! ## A165794.P15317098970117254089

`xor(A000211(n)-2, A000204(n+1))`
-/

namespace A165794.P15317098970117254089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000211 n - 2) (A000204 (n + 1))

end

end A165794.P15317098970117254089

namespace A165794

/-- `xor(A000211(n)-2, A000204(n+1))` -/
def P15317098970117254089.Spec : Prop :=
  ∀ n, P15317098970117254089.a n = A165794 n

end A165794

/-! ## A165794.P14759468463411899527

`xor(round(ϕ^(n+1)), Δ[round(ϕ^(n+1))])`
-/

namespace A165794.P14759468463411899527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))) (f1 (n + 1) - f1 n)

end

end A165794.P14759468463411899527

namespace A165794

/-- `xor(round(ϕ^(n+1)), Δ[round(ϕ^(n+1))])` -/
def P14759468463411899527.Spec : Prop :=
  ∀ n, P14759468463411899527.a n = A165794 n

end A165794

/-! ## A165794.P5662829148553284455

`xor(A156279(n+1), A156279(n))/4`
-/

namespace A165794.P5662829148553284455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A156279 (n + 1)) (A156279 n) : ℚ) / 4

end

end A165794.P5662829148553284455

namespace A165794

/-- `xor(A156279(n+1), A156279(n))/4` -/
def P5662829148553284455.Spec : Prop :=
  ∀ n, P5662829148553284455.a n = (A165794 n : ℚ)

end A165794

/-!
# A165795: Array A(n, k) = numerator of 1/n^2 - 1/k^2 with A(0,k) = 1 and A(n,0) = -1, read by antidiagonals.

The programs for A165795, there is no canonical definition to state claims against.
-/

/-! ## A165795.P15711349449302672417

`Δ[-A141213(A097805(n)²)]`
-/

namespace A165795.P15711349449302672417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A141213 (A097805 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165795.P15711349449302672417

/-! ## A165795.P3207578869553238289

`A055570(A059922(n))*A112467(n)`
-/

namespace A165795.P3207578869553238289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A059922 n).toNat * A112467 n

end

end A165795.P3207578869553238289

/-! ## A165795.P10262309011128487148

`A000005(A156581(n))*A112467(n)`
-/

namespace A165795.P10262309011128487148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156581 n).toNat * A112467 n

end

end A165795.P10262309011128487148

/-! ## A165795.P4366398837628224590

`A034880(A007318(n)²)*A112467(n)`
-/

namespace A165795.P4366398837628224590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A007318 n ^ 2).toNat * A112467 n

end

end A165795.P4366398837628224590

/-!
# A165797: a(n) = n^( sigma(n) - tau(n) ).

The programs for A165797, the canonical program `A165797.P12784172842606566617` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165797 has offset 1).

The definition of A165797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165797.P12784172842606566617

`(n+1)^A065608(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165797

/-- `(n+1)^A065608(n+1)` -/
def P12784172842606566617.Spec : Prop :=
  ∀ n, P12784172842606566617.a n = (A165797 (n + 1) : ℚ)

end A165797

/-! ## A165797.P5624324803808504408

`(n+1)^(A000203(n+1)-A000005(n+1))`
-/

namespace A165797.P5624324803808504408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000203 (n + 1) - A000005 (n + 1) : ℤ)

end

end A165797.P5624324803808504408

namespace A165797

/-- `(n+1)^(A000203(n+1)-A000005(n+1))` -/
def P5624324803808504408.Spec : Prop :=
  ∀ n, P5624324803808504408.a n = (A165797 (n + 1) : ℚ)

end A165797

/-! ## A165797.P7409666493151232389

`A100879(n+1)/A062758(n+1)`
-/

namespace A165797.P7409666493151232389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100879 (n + 1) : ℚ) / (A062758 (n + 1) : ℚ)

end

end A165797.P7409666493151232389

namespace A165797

/-- `A100879(n+1)/A062758(n+1)` -/
def P7409666493151232389.Spec : Prop :=
  ∀ n, P7409666493151232389.a n = (A165797 (n + 1) : ℚ)

end A165797

/-! ## A165797.P14022774767221285749

`(n+1)^∑{d}[n+1, #-1]`
-/

namespace A165797.P14022774767221285749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) : ℤ)

end

end A165797.P14022774767221285749

namespace A165797

/-- `(n+1)^∑{d}[n+1, #-1]` -/
def P14022774767221285749.Spec : Prop :=
  ∀ n, P14022774767221285749.a n = (A165797 (n + 1) : ℚ)

end A165797

/-! ## A165797.P7104571054609885979

`∏{d}[n+1, (n+1)^(#-1)]`
-/

namespace A165797.P7104571054609885979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A165797.P7104571054609885979

namespace A165797

/-- `∏{d}[n+1, (n+1)^(#-1)]` -/
def P7104571054609885979.Spec : Prop :=
  ∀ n, P7104571054609885979.a n = (A165797 (n + 1) : ℚ)

end A165797

/-!
# A165798: a(n) = 65*n^2.

The programs for A165798, the canonical program `A165798.P7018146217322468176` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165798 has offset 1).

The definition of A165798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `65*(n+1)²` (program `A165798.P7018146217322468176`, by `A165798.P7018146217322468176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165798.P7018146217322468176

`65*(n+1)²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165798

/-- `65*(n+1)²` -/
def P7018146217322468176.Spec : Prop :=
  ∀ n, (P7018146217322468176.a n : ℤ) = A165798 (n + 1)

theorem P7018146217322468176.correct : P7018146217322468176.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel]

end A165798

/-! ## A165798.P3318532083886601829

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=65, a(1)=260, a(2)=585`
-/

namespace A165798.P3318532083886601829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [65, 260, 585] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A165798.P3318532083886601829

namespace A165798

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3318532083886601829.Spec : Prop :=
  ∀ n, P3318532083886601829.a n = A165798 (n + 1)

theorem P3318532083886601829.correct : P3318532083886601829.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A165798, Nat.add_sub_cancel, A165798.P3318532083886601829.a, A165798.P7018146217322468176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A165798, Nat.add_sub_cancel, A165798.P3318532083886601829.a, A165798.P7018146217322468176.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165798

/-! ## A165798.P8403762262352745844

`record[65*(1-n)²]`
-/

namespace A165798.P8403762262352745844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  65 * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165798.P8403762262352745844

namespace A165798

/-- `record[65*(1-n)²]` -/
def P8403762262352745844.Spec : Prop :=
  ∀ n, P8403762262352745844.a n = A165798 (n + 1)

end A165798

/-! ## A165798.P8270200774534485332

`((n+1)/cos(atan(8)))²`
-/

namespace A165798.P8270200774534485332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.cos (Real.arctan (8 : ℝ))) ^ 2

end

end A165798.P8270200774534485332

namespace A165798

/-- `((n+1)/cos(atan(8)))²` -/
def P8270200774534485332.Spec : Prop :=
  ∀ n, P8270200774534485332.a n = (A165798 (n + 1) : ℝ)

end A165798

/-! ## A165798.P9292909108913983013

`((n+1)/sin(acot(8)))²`
-/

namespace A165798.P9292909108913983013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (8 : ℝ))) ^ 2

end

end A165798.P9292909108913983013

namespace A165798

/-- `((n+1)/sin(acot(8)))²` -/
def P9292909108913983013.Spec : Prop :=
  ∀ n, P9292909108913983013.a n = (A165798 (n + 1) : ℝ)

end A165798

/-! ## A165798.P918970775370848541

`∑[13*A017329(n)]`
-/

namespace A165798.P918970775370848541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165798.P918970775370848541

namespace A165798

/-- `∑[13*A017329(n)]` -/
def P918970775370848541.Spec : Prop :=
  ∀ n, P918970775370848541.a n = A165798 (n + 1)

end A165798

/-! ## A165798.P8561296862072972985

`∑[65*A005408(n)]`
-/

namespace A165798.P8561296862072972985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  65 * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165798.P8561296862072972985

namespace A165798

/-- `∑[65*A005408(n)]` -/
def P8561296862072972985.Spec : Prop :=
  ∀ n, P8561296862072972985.a n = A165798 (n + 1)

end A165798

/-! ## A165798.P13983723662112608084

`A017066(n+1)+(n+1)²`
-/

namespace A165798.P13983723662112608084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017066 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A165798.P13983723662112608084

namespace A165798

/-- `A017066(n+1)+(n+1)²` -/
def P13983723662112608084.Spec : Prop :=
  ∀ n, P13983723662112608084.a n = A165798 (n + 1)

theorem P13983723662112608084.correct : P13983723662112608084.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P13983723662112608084.a, A165798.P7018146217322468176.a, A017066, A017066.P14577607273091826583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P1203472162388801442

`∑[65*(A000027(n+1)+n)]`
-/

namespace A165798.P1203472162388801442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  65 * (A000027 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165798.P1203472162388801442

namespace A165798

/-- `∑[65*(A000027(n+1)+n)]` -/
def P1203472162388801442.Spec : Prop :=
  ∀ n, P1203472162388801442.a n = A165798 (n + 1)

end A165798

/-! ## A165798.P10952637279944848121

`A158693(n+1)-n*(n+2)`
-/

namespace A165798.P10952637279944848121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158693 (n + 1) - (n * (n + 2) : ℤ)

end

end A165798.P10952637279944848121

namespace A165798

/-- `A158693(n+1)-n*(n+2)` -/
def P10952637279944848121.Spec : Prop :=
  ∀ n, P10952637279944848121.a n = A165798 (n + 1)

theorem P10952637279944848121.correct : P10952637279944848121.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P10952637279944848121.a, A165798.P7018146217322468176.a, A158693, A158693.P7172618368171940871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P9837738832907713771

`(n+1)²+A022144(n+1)²`
-/

namespace A165798.P9837738832907713771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A022144 (n + 1) ^ 2

end

end A165798.P9837738832907713771

namespace A165798

/-- `(n+1)²+A022144(n+1)²` -/
def P9837738832907713771.Spec : Prop :=
  ∀ n, P9837738832907713771.a n = A165798 (n + 1)

end A165798

/-! ## A165798.P17513997184981648071

`A157948(n+1)+(n+1)*(n+2)`
-/

namespace A165798.P17513997184981648071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A165798.P17513997184981648071

namespace A165798

/-- `A157948(n+1)+(n+1)*(n+2)` -/
def P17513997184981648071.Spec : Prop :=
  ∀ n, P17513997184981648071.a n = A165798 (n + 1)

theorem P17513997184981648071.correct : P17513997184981648071.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P17513997184981648071.a, A165798.P7018146217322468176.a, A157948, A157948.P9942417277161281651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P5425156548446785085

`A158070(n+1)+(n+1)*(n-1)`
-/

namespace A165798.P5425156548446785085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158070 (n + 1) + (n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A165798.P5425156548446785085

namespace A165798

/-- `A158070(n+1)+(n+1)*(n-1)` -/
def P5425156548446785085.Spec : Prop :=
  ∀ n, P5425156548446785085.a n = A165798 (n + 1)

theorem P5425156548446785085.correct : P5425156548446785085.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P5425156548446785085.a, A165798.P7018146217322468176.a, A158070, A158070.P11407784734891459078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P9888338528760852844

`A158067(n+1)+(n+1)*(n+3)`
-/

namespace A165798.P9888338528760852844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158067 (n + 1) + ((n + 1) * (n + 3) : ℤ)

end

end A165798.P9888338528760852844

namespace A165798

/-- `A158067(n+1)+(n+1)*(n+3)` -/
def P9888338528760852844.Spec : Prop :=
  ∀ n, P9888338528760852844.a n = A165798 (n + 1)

theorem P9888338528760852844.correct : P9888338528760852844.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P9888338528760852844.a, A165798.P7018146217322468176.a, A158067, A158067.P15568386419510494438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P13541447183462888191

`A157923(n+1)+A157474(n+1)`
-/

namespace A165798.P13541447183462888191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157923 (n + 1) + A157474 (n + 1)

end

end A165798.P13541447183462888191

namespace A165798

/-- `A157923(n+1)+A157474(n+1)` -/
def P13541447183462888191.Spec : Prop :=
  ∀ n, P13541447183462888191.a n = A165798 (n + 1)

theorem P13541447183462888191.correct : P13541447183462888191.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P13541447183462888191.a, A165798.P7018146217322468176.a, A157474, A157474.P9009052472332458401.a, A157923, A157923.P11488389607895145215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P16010816777040953880

`A158056(n+1)+A157362(n+1)`
-/

namespace A165798.P16010816777040953880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158056 (n + 1) + A157362 (n + 1)

end

end A165798.P16010816777040953880

namespace A165798

/-- `A158056(n+1)+A157362(n+1)` -/
def P16010816777040953880.Spec : Prop :=
  ∀ n, P16010816777040953880.a n = A165798 (n + 1)

theorem P16010816777040953880.correct : P16010816777040953880.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P16010816777040953880.a, A165798.P7018146217322468176.a, A157362, A157362.P11972487102006687154.a, A158056, A158056.P16840013752449040690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P17805875305799817971

`A158058(n+1)+A157365(n+1)`
-/

namespace A165798.P17805875305799817971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158058 (n + 1) + A157365 (n + 1)

end

end A165798.P17805875305799817971

namespace A165798

/-- `A158058(n+1)+A157365(n+1)` -/
def P17805875305799817971.Spec : Prop :=
  ∀ n, P17805875305799817971.a n = A165798 (n + 1)

theorem P17805875305799817971.correct : P17805875305799817971.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P17805875305799817971.a, A165798.P7018146217322468176.a, A157365, A157365.P11866209212843534164.a, A158058, A158058.P14909818304514455316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P8770177691242475307

`A173141(n+1)+A157446(n+1)`
-/

namespace A165798.P8770177691242475307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173141 (n + 1) + A157446 (n + 1)

end

end A165798.P8770177691242475307

namespace A165798

/-- `A173141(n+1)+A157446(n+1)` -/
def P8770177691242475307.Spec : Prop :=
  ∀ n, P8770177691242475307.a n = A165798 (n + 1)

theorem P8770177691242475307.correct : P8770177691242475307.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P8770177691242475307.a, A165798.P7018146217322468176.a, A157446, A157446.P6226797554834386845.a, A173141, A173141.P7971151032588999872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P17159162542046214549

`A158730(n+1)-A080663(n+1)`
-/

namespace A165798.P17159162542046214549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158730 (n + 1) - A080663 (n + 1)

end

end A165798.P17159162542046214549

namespace A165798

/-- `A158730(n+1)-A080663(n+1)` -/
def P17159162542046214549.Spec : Prop :=
  ∀ n, P17159162542046214549.a n = A165798 (n + 1)

theorem P17159162542046214549.correct : P17159162542046214549.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P17159162542046214549.a, A165798.P7018146217322468176.a, A080663, A080663.P16382865435079334463.a, A158730, A158730.P13211681437165183510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-! ## A165798.P6775634163050743006

`A158736(n+1)-A134538(n+1)`
-/

namespace A165798.P6775634163050743006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158736 (n + 1) - A134538 (n + 1)

end

end A165798.P6775634163050743006

namespace A165798

/-- `A158736(n+1)-A134538(n+1)` -/
def P6775634163050743006.Spec : Prop :=
  ∀ n, P6775634163050743006.a n = A165798 (n + 1)

theorem P6775634163050743006.correct : P6775634163050743006.Spec := by
  intro n
  simp only [A165798, Nat.add_sub_cancel, A165798.P6775634163050743006.a, A165798.P7018146217322468176.a, A134538, A134538.P2082491740549767163.a, A158736, A158736.P1921437562563384827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165798

/-!
# A165799: Number of tilings of a 4 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A165799, there is no canonical definition to state claims against.
-/

/-! ## A165799.P16745092680556803953

`A219946(A052905(n+2))`
-/

namespace A165799.P16745092680556803953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A052905 (n + 2)).toNat

end

end A165799.P16745092680556803953

/-! ## A165799.P17391903892923669230

`A219946(A056115(n)+10)`
-/

namespace A165799.P17391903892923669230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A056115 n + 10).toNat

end

end A165799.P17391903892923669230

/-! ## A165799.P14309059263727596599

`A219946(A056000(n)+14)`
-/

namespace A165799.P14309059263727596599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A056000 n + 14).toNat

end

end A165799.P14309059263727596599

/-! ## A165799.P1113726965249409578

`A219946(eq[4, A002262(n)])`
-/

namespace A165799.P1113726965249409578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165799.P1113726965249409578

/-! ## A165799.P3275907104621831259

`A219946(eq[4, A025581(n)])`
-/

namespace A165799.P3275907104621831259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165799.P3275907104621831259

