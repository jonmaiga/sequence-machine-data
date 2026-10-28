import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398500: Final terms of rows of triangle A398498.

The programs for A398500, there is no canonical definition to state claims against.
-/

/-! ## A398500.P11037424350759532111

`A379067(n)-1`
-/

namespace A398500.P11037424350759532111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379067 n - 1

end

end A398500.P11037424350759532111

/-! ## A398500.P3852951417664674575

`A398501(n)-A379068(n)`
-/

namespace A398500.P3852951417664674575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - A379068 n

end

end A398500.P3852951417664674575

/-! ## A398500.P9712421923055539684

`A070198(n)%A379067(n)`
-/

namespace A398500.P9712421923055539684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A379067 n)

end

end A398500.P9712421923055539684

/-! ## A398500.P6344628242338941014

`A079782(n+1)%A379067(n)`
-/

namespace A398500.P6344628242338941014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A379067 n)

end

end A398500.P6344628242338941014

/-! ## A398500.P8993642233025595777

`A083685(n+1)%A379067(n)`
-/

namespace A398500.P8993642233025595777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A379067 n)

end

end A398500.P8993642233025595777

/-! ## A398500.P7314900812041746154

`A121934(n+1)%A379067(n)`
-/

namespace A398500.P7314900812041746154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A379067 n)

end

end A398500.P7314900812041746154

/-!
# A398501: Number of terms in row n of triangle A398498.

The programs for A398501, there is no canonical definition to state claims against.
-/

/-! ## A398501.P13650053799992050557

`A398499(n)+A398500(n)+1`
-/

namespace A398501.P13650053799992050557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398499 n + A398500 n + 1

end

end A398501.P13650053799992050557

/-! ## A398501.P4537944863893567635

`1-A398506(n)+n`
-/

namespace A398501.P4537944863893567635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A398506 n + (n : ℤ)

end

end A398501.P4537944863893567635

/-! ## A398501.P11791875360605207697

`A398499(n)+A379067(n)`
-/

namespace A398501.P11791875360605207697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398499 n + A379067 n

end

end A398501.P11791875360605207697

/-! ## A398501.P10028040904715614273

`A398500(n)+A379068(n)`
-/

namespace A398501.P10028040904715614273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398500 n + A379068 n

end

end A398501.P10028040904715614273

/-! ## A398501.P17136980957937291283

`A398499(n)+A398502(n)-A398504(n)`
-/

namespace A398501.P17136980957937291283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398499 n + (A398502 n - A398504 n)

end

end A398501.P17136980957937291283

/-!
# A398502: Number of nonnegative terms in the sequence S(n) defined in A398498.

The programs for A398502, there is no canonical definition to state claims against.
-/

/-! ## A398502.P17565916275346382684

`2-A398503(n)+n`
-/

namespace A398502.P17565916275346382684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A398503 n + (n : ℤ)

end

end A398502.P17565916275346382684

/-! ## A398502.P15512727966246075258

`∑[char[A379072(n+1)]]`
-/

namespace A398502.P15512727966246075258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379072 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398502.P15512727966246075258

/-! ## A398502.P1382644202230910223

`A398504(n)+A379067(n)`
-/

namespace A398502.P1382644202230910223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398504 n + A379067 n

end

end A398502.P1382644202230910223

/-! ## A398502.P9307894307710768826

`A398503(n)+A380268(n)`
-/

namespace A398502.P9307894307710768826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398503 n + A380268 n

end

end A398502.P9307894307710768826

/-! ## A398502.P5285077926379289115

`∑[char[A379059(n)]]`
-/

namespace A398502.P5285077926379289115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398502.P5285077926379289115

/-!
# A398503: Number of nonpositive terms in the sequence S(n) defined in A398498.

The programs for A398503, there is no canonical definition to state claims against.
-/

/-! ## A398503.P12101658109446506406

`2-A398502(n)+n`
-/

namespace A398503.P12101658109446506406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A398502 n + (n : ℤ)

end

end A398503.P12101658109446506406

/-! ## A398503.P11980170915324325058

`∑[char[A379073(n+1)]]`
-/

namespace A398503.P11980170915324325058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379073 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398503.P11980170915324325058

/-! ## A398503.P13315358011895912607

`A398505(n)+A379068(n)`
-/

namespace A398503.P13315358011895912607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398505 n + A379068 n

end

end A398503.P13315358011895912607

/-! ## A398503.P3758510903764009069

`A398502(n)-A380268(n)`
-/

namespace A398503.P3758510903764009069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398502 n - A380268 n

end

end A398503.P3758510903764009069

/-! ## A398503.P14128240606827801669

`A398501(n)+A398505(n)-A398500(n)`
-/

namespace A398503.P14128240606827801669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n + (A398505 n - A398500 n)

end

end A398503.P14128240606827801669

/-! ## A398503.P3255101520860328011

`∑[char[A379060(n)]]`
-/

namespace A398503.P3255101520860328011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398503.P3255101520860328011

/-!
# A398504: The number of nonnegative terms in the sequence S(n) defined in A398498 that are not in row n of A398498.

The programs for A398504, there is no canonical definition to state claims against.
-/

/-! ## A398504.P6478686162154267876

`A398502(n)-A379067(n)`
-/

namespace A398504.P6478686162154267876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398502 n - A379067 n

end

end A398504.P6478686162154267876

/-! ## A398504.P14431778764547683510

`A398506(n)-A398505(n)`
-/

namespace A398504.P14431778764547683510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398506 n - A398505 n

end

end A398504.P14431778764547683510

/-! ## A398504.P5171105124192309030

`A398506(n)%A279848(n+3)`
-/

namespace A398504.P5171105124192309030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398506 n) (A279848 (n + 3))

end

end A398504.P5171105124192309030

/-! ## A398504.P2019984806960917130

`A070563(A220752(n+2))`
-/

namespace A398504.P2019984806960917130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (A220752 (n + 2)).toNat

end

end A398504.P2019984806960917130

/-! ## A398504.P2373743631067343379

`A116681(A116676(A000700(A000700(A000700(n)))))`
-/

namespace A398504.P2373743631067343379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116681 (A116676 (A000700 (A000700 (A000700 n).toNat).toNat).toNat).toNat

end

end A398504.P2373743631067343379

/-!
# A398505: The number of nonpositive terms in the sequence S(n) defined in A398498 that are not in row n of A398498.

The programs for A398505, there is no canonical definition to state claims against.
-/

/-! ## A398505.P4533347694643147762

`A398503(n)-A379068(n)`
-/

namespace A398505.P4533347694643147762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398503 n - A379068 n

end

end A398505.P4533347694643147762

/-! ## A398505.P8181427470154038324

`A398506(n)-A398504(n)`
-/

namespace A398505.P8181427470154038324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398506 n - A398504 n

end

end A398505.P8181427470154038324

/-! ## A398505.P6428741558802379037

`and(A031539(n+1), A398506(n))`
-/

namespace A398505.P6428741558802379037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031539 (n + 1)) (A398506 n)

end

end A398505.P6428741558802379037

/-! ## A398505.P15203835717344562406

`and(A031543(n+1), A398506(n))`
-/

namespace A398505.P15203835717344562406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031543 (n + 1)) (A398506 n)

end

end A398505.P15203835717344562406

/-! ## A398505.P15728110837336991430

`and(A031535(n+1), A398506(n))`
-/

namespace A398505.P15728110837336991430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031535 (n + 1)) (A398506 n)

end

end A398505.P15728110837336991430

/-!
# A398506: Total number of terms in the sequence S(n) defined in A398498 that are not in row n of A398498.

The programs for A398506, there is no canonical definition to state claims against.
-/

/-! ## A398506.P7689105851151203992

`A398504(n)+A398505(n)`
-/

namespace A398506.P7689105851151203992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398504 n + A398505 n

end

end A398506.P7689105851151203992

/-! ## A398506.P14411081580168139472

`1-A398501(n)+n`
-/

namespace A398506.P14411081580168139472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A398501 n + (n : ℤ)

end

end A398506.P14411081580168139472

/-! ## A398506.P15062333749534513863

`A000027(n+1)%A398501(n)`
-/

namespace A398506.P15062333749534513863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A398501 n)

end

end A398506.P15062333749534513863

/-! ## A398506.P15022841684119175608

`A087156(n+1)%A398501(n)`
-/

namespace A398506.P15022841684119175608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A398501 n)

end

end A398506.P15022841684119175608

/-! ## A398506.P5066953861004503521

`A178915(n+1)%A398501(n)`
-/

namespace A398506.P5066953861004503521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A398501 n)

end

end A398506.P5066953861004503521

/-! ## A398506.P3303092675721564347

`A060401(n+1)%A398501(n)`
-/

namespace A398506.P3303092675721564347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A398501 n)

end

end A398506.P3303092675721564347

/-!
# A398507: Complement of A380699.

The programs for A398507, there is no canonical definition to state claims against.
-/

/-! ## A398507.P8893870218359043180

`comp[A380699(n+1)]`
-/

namespace A398507.P8893870218359043180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398507.P8893870218359043180

/-! ## A398507.P6314226363284793141

`lt[0, A398506(n)]`
-/

namespace A398507.P6314226363284793141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398507.P6314226363284793141

/-! ## A398507.P6180419739175108024

`eq[A076303(n+1), A380698(n)]`
-/

namespace A398507.P6180419739175108024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398507.P6180419739175108024

/-!
# A398508: Terms in A398507 that begin a run of terms increasing by 1.

The programs for A398508, there is no canonical definition to state claims against.
-/

/-! ## A398508.P16798612498636543450

`A398574(n)+a(n-1)` with `a(0)=3`
-/

namespace A398508.P16798612498636543450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A398574 n + a (n - 1)

end

end A398508.P16798612498636543450

/-!
# A398513: Record high-points in A398512.

The programs for A398513, there is no canonical definition to state claims against.
-/

/-! ## A398513.P1300775596623156336

`A398512(A398514(n+1))`
-/

namespace A398513.P1300775596623156336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398512 (A398514 (n + 1)).toNat

end

end A398513.P1300775596623156336

/-! ## A398513.P15142724073453976538

`A175585(A189391(n))`
-/

namespace A398513.P15142724073453976538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 (A189391 n).toNat

end

end A398513.P15142724073453976538

/-!
# A398517: a(n) = (4*n^3-3*n^2+5*n+6)/6.

The programs for A398517, the canonical program `A398517.P13771540962809668512` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398517 has offset 0).

The definition of A398517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398517.P13771540962809668512

`ogf((1-2x+4x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398517

/-- `ogf((1-2x+4x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P13771540962809668512.Spec : Prop :=
  ∀ n, P13771540962809668512.a n = A398517 n

theorem P13771540962809668512.correct : P13771540962809668512.Spec := by
  intro n
  simp only [A398517]

end A398517

/-! ## A398517.P12927652904470706771

`(4*n^3-3*n²+5*n+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398517.P12927652904470706771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (5 * n : ℤ) + 6 : ℚ) / 6

end

end A398517.P12927652904470706771

namespace A398517

/-- `(4*n^3-3*n²+5*n+6)/6` -/
def P12927652904470706771.Spec : Prop :=
  ∀ n, P12927652904470706771.a n = (A398517 n : ℚ)

end A398517

/-! ## A398517.P6256408177061078150

`Δ[n*C(n, 3)]+n+1`
-/

namespace A398517.P6256408177061078150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A398517.P6256408177061078150

namespace A398517

/-- `Δ[n*C(n, 3)]+n+1` -/
def P6256408177061078150.Spec : Prop :=
  ∀ n, P6256408177061078150.a n = A398517 n

end A398517

/-! ## A398517.P15485958176518652072

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A398517.P15485958176518652072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398517.P15485958176518652072

namespace A398517

/-- `∑[∑[a(n-1)+4]]` -/
def P15485958176518652072.Spec : Prop :=
  ∀ n, (P15485958176518652072.a n : ℤ) = A398517 n

end A398517

/-! ## A398517.P1417397329992081175

`A139488(n)-n`
-/

namespace A398517.P1417397329992081175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139488 n - (n : ℤ)

end

end A398517.P1417397329992081175

namespace A398517

/-- `A139488(n)-n` -/
def P1417397329992081175.Spec : Prop :=
  ∀ n, P1417397329992081175.a n = A398517 n

end A398517

/-! ## A398517.P11012765140704712420

`Δ[A361099(n)]-n`
-/

namespace A398517.P11012765140704712420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A398517.P11012765140704712420

namespace A398517

/-- `Δ[A361099(n)]-n` -/
def P11012765140704712420.Spec : Prop :=
  ∀ n, P11012765140704712420.a n = A398517 n

end A398517

/-! ## A398517.P8847026812557890766

`A071568(n)-∑[n²]`
-/

namespace A398517.P8847026812557890766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398517.P8847026812557890766

namespace A398517

/-- `A071568(n)-∑[n²]` -/
def P8847026812557890766.Spec : Prop :=
  ∀ n, P8847026812557890766.a n = A398517 n

end A398517

/-! ## A398517.P16524718227109687879

`∑[A077588(n)-n²]`
-/

namespace A398517.P16524718227109687879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398517.P16524718227109687879

namespace A398517

/-- `∑[A077588(n)-n²]` -/
def P16524718227109687879.Spec : Prop :=
  ∀ n, P16524718227109687879.a n = A398517 n

end A398517

/-! ## A398517.P7666498427688244990

`∑[A130883(n)]-n²`
-/

namespace A398517.P7666498427688244990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A398517.P7666498427688244990

namespace A398517

/-- `∑[A130883(n)]-n²` -/
def P7666498427688244990.Spec : Prop :=
  ∀ n, P7666498427688244990.a n = A398517 n

end A398517

/-! ## A398517.P9996866290696655497

`A146298(n)+∑[n+1]`
-/

namespace A398517.P9996866290696655497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398517.P9996866290696655497

namespace A398517

/-- `A146298(n)+∑[n+1]` -/
def P9996866290696655497.Spec : Prop :=
  ∀ n, P9996866290696655497.a n = A398517 n

end A398517

/-! ## A398517.P12696787506727677602

`∑[A116735(n+1)]-n`
-/

namespace A398517.P12696787506727677602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398517.P12696787506727677602

namespace A398517

/-- `∑[A116735(n+1)]-n` -/
def P12696787506727677602.Spec : Prop :=
  ∀ n, P12696787506727677602.a n = A398517 n

end A398517

/-! ## A398517.P11324764577975049130

`A270109(n)-∑[(n+1)²]`
-/

namespace A398517.P11324764577975049130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398517.P11324764577975049130

namespace A398517

/-- `A270109(n)-∑[(n+1)²]` -/
def P11324764577975049130.Spec : Prop :=
  ∀ n, P11324764577975049130.a n = A398517 n

end A398517

/-! ## A398517.P960622238117868030

`A056520(n)+A007290(n)`
-/

namespace A398517.P960622238117868030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n + A007290 n

end

end A398517.P960622238117868030

namespace A398517

/-- `A056520(n)+A007290(n)` -/
def P960622238117868030.Spec : Prop :=
  ∀ n, P960622238117868030.a n = A398517 n

end A398517

/-! ## A398517.P9938345748687302258

`A080956(n)+A005900(n)`
-/

namespace A398517.P9938345748687302258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + A005900 n

end

end A398517.P9938345748687302258

namespace A398517

/-- `A080956(n)+A005900(n)` -/
def P9938345748687302258.Spec : Prop :=
  ∀ n, P9938345748687302258.a n = A398517 n

end A398517

/-! ## A398517.P1004577163498723383

`A189890(n)+A005581(n)`
-/

namespace A398517.P1004577163498723383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189890 n + A005581 n

end

end A398517.P1004577163498723383

namespace A398517

/-- `A189890(n)+A005581(n)` -/
def P1004577163498723383.Spec : Prop :=
  ∀ n, P1004577163498723383.a n = A398517 n

end A398517

/-! ## A398517.P12341333658248802020

`A033562(n)-A007585(n)`
-/

namespace A398517.P12341333658248802020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n - A007585 n

end

end A398517.P12341333658248802020

namespace A398517

/-- `A033562(n)-A007585(n)` -/
def P12341333658248802020.Spec : Prop :=
  ∀ n, P12341333658248802020.a n = A398517 n

end A398517

/-! ## A398517.P10344838071372480466

`A005894(n)-A045943(n)`
-/

namespace A398517.P10344838071372480466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n - A045943 n

end

end A398517.P10344838071372480466

namespace A398517

/-- `A005894(n)-A045943(n)` -/
def P10344838071372480466.Spec : Prop :=
  ∀ n, P10344838071372480466.a n = A398517 n

end A398517

/-! ## A398517.P11394845392723910480

`A016061(n)-A056220(n)`
-/

namespace A398517.P11394845392723910480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n - A056220 n

end

end A398517.P11394845392723910480

namespace A398517

/-- `A016061(n)-A056220(n)` -/
def P11394845392723910480.Spec : Prop :=
  ∀ n, P11394845392723910480.a n = A398517 n

end A398517

/-! ## A398517.P11080880380726024480

`A053698(n)-A101986(n)`
-/

namespace A398517.P11080880380726024480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n - A101986 n

end

end A398517.P11080880380726024480

namespace A398517

/-- `A053698(n)-A101986(n)` -/
def P11080880380726024480.Spec : Prop :=
  ∀ n, P11080880380726024480.a n = A398517 n

end A398517

/-!
# A398518: a(n) = Product_{k=1..n} M(floor(n/k)), where M = A014963 is the exponential Mangoldt function.

The programs for A398518, there is no canonical definition to state claims against.
-/

/-! ## A398518.P15809895926337883291

`A325360(n+1)*A355733(A000111(n))`
-/

namespace A398518.P15809895926337883291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325360 (n + 1) * A355733 (A000111 n).toNat

end

end A398518.P15809895926337883291

/-! ## A398518.P7794547005312567421

`(n+1)*A106578(A056651(A110495(n+1)))`
-/

namespace A398518.P7794547005312567421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106578 (A056651 (A110495 (n + 1)).toNat).toNat

end

end A398518.P7794547005312567421

/-! ## A398518.P5033739543356873785

`A205406(n+1)*A270650(A381542(3*n+1))`
-/

namespace A398518.P5033739543356873785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 (n + 1) * A270650 (A381542 (3 * n + 1)).toNat

end

end A398518.P5033739543356873785

/-!
# A398520: a(n) = Sum_{k=1..n} tau(floor(n/k)), where tau(n) = A000005(n) is the number of divisors of n.

The programs for A398520, the canonical program `A398520.P3879229793699235213` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398520 has offset 1).

The definition of A398520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(floor((n+1)/(#+1)))]` (program `A398520.P3879229793699235213`, by `A398520.P3879229793699235213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398520.P3879229793699235213

`∑{#}[n, A000005(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A398520

/-- `∑{#}[n, A000005(floor((n+1)/(#+1)))]` -/
def P3879229793699235213.Spec : Prop :=
  ∀ n, P3879229793699235213.a n = A398520 (n + 1)

theorem P3879229793699235213.correct : P3879229793699235213.Spec := by
  intro n
  simp only [A398520, Nat.add_sub_cancel]

end A398520

/-!
# A398524: a(n) = Sum_{k=1..n} mu(floor(n/k))^2, where mu = A008683 is the Möbius function.

The programs for A398524, the canonical program `A398524.P15977062120974542991` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398524 has offset 1).

The definition of A398524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(floor((n+1)/(#+1)))²]` (program `A398524.P15977062120974542991`, by `A398524.P15977062120974542991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398524.P15977062120974542991

`∑{#}[n, A008683(floor((n+1)/(#+1)))²]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398524

/-- `∑{#}[n, A008683(floor((n+1)/(#+1)))²]` -/
def P15977062120974542991.Spec : Prop :=
  ∀ n, P15977062120974542991.a n = A398524 (n + 1)

theorem P15977062120974542991.correct : P15977062120974542991.Spec := by
  intro n
  simp only [A398524, Nat.add_sub_cancel]

end A398524

/-! ## A398524.P1301120599790660510

`A070939(A007947(n+1)*A334269(n+1))`
-/

namespace A398524.P1301120599790660510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007947 (n + 1) * A334269 (n + 1)).toNat

end

end A398524.P1301120599790660510

namespace A398524

/-- `A070939(A007947(n+1)*A334269(n+1))` -/
def P1301120599790660510.Spec : Prop :=
  ∀ n, P1301120599790660510.a n = A398524 (n + 1)

end A398524

/-! ## A398524.P17439338612636882123

`A302291(A007947(n+1)*A334269(n+1))`
-/

namespace A398524.P17439338612636882123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A007947 (n + 1) * A334269 (n + 1)).toNat

end

end A398524.P17439338612636882123

namespace A398524

/-- `A302291(A007947(n+1)*A334269(n+1))` -/
def P17439338612636882123.Spec : Prop :=
  ∀ n, P17439338612636882123.a n = A398524 (n + 1)

end A398524

/-!
# A398526: a(n) = Sum_{k=1..n} A212793(floor(n/k)).

The programs for A398526, the canonical program `A398526.P17968995175064697241` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398526 has offset 1).

The definition of A398526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398526.P17968995175064697241

`∑{#}[n, A212793(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398526

/-- `∑{#}[n, A212793(floor((n+1)/(#+1)))]` -/
def P17968995175064697241.Spec : Prop :=
  ∀ n, P17968995175064697241.a n = A398526 (n + 1)

theorem P17968995175064697241.correct : P17968995175064697241.Spec := by
  intro n
  simp only [A398526, Nat.add_sub_cancel]

end A398526

/-!
# A398528: a(n) = Sum_{k=1..n} omega(floor(n/k)), where omega(n) = A001221(n) is the number of distinct primes dividing n.

The programs for A398528, the canonical program `A398528.P8306073796892616151` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398528 has offset 1).

The definition of A398528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001221(floor((n+1)/(#+1)))]` (program `A398528.P8306073796892616151`, by `A398528.P8306073796892616151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398528.P8306073796892616151

`∑{#}[n, A001221(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398528

/-- `∑{#}[n, A001221(floor((n+1)/(#+1)))]` -/
def P8306073796892616151.Spec : Prop :=
  ∀ n, P8306073796892616151.a n = A398528 (n + 1)

theorem P8306073796892616151.correct : P8306073796892616151.Spec := by
  intro n
  simp only [A398528, Nat.add_sub_cancel]

end A398528

/-!
# A398535: a(n) is the trace of the product of two Hankel n X n matrices M_n and N_n whose M[i,j] generic elements are respectively (i+j)^2 and (i+j)^3.

The programs for A398535, the canonical program `A398535.P13248774024366701317` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398535 has offset 1).

The definition of A398535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398535.P13248774024366701317

`(n+1)²*(n+2)²*((n+1)*(2*(n+1)*(9*(n+1)+13)+5)-1)/6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398535

/-- `(n+1)²*(n+2)²*((n+1)*(2*(n+1)*(9*(n+1)+13)+5)-1)/6` -/
def P13248774024366701317.Spec : Prop :=
  ∀ n, P13248774024366701317.a n = (A398535 (n + 1) : ℚ)

end A398535

/-!
# A398536: a(n) is the trace of the Hankel n X n matrix M_n whose M_n(i,j) generic element is n^(i+j).

The programs for A398536, there is no canonical definition to state claims against.
-/

/-! ## A398536.P1832268234893026715

`A174964(n+1)-1`
-/

namespace A398536.P1832268234893026715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174964 (n + 1) - 1

end

end A398536.P1832268234893026715

/-! ## A398536.P7183382389734079254

`∑{#}[n, (n+1)²^(n+1-#)]`
-/

namespace A398536.P7183382389734079254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1) ^ 2 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ)

end

end A398536.P7183382389734079254

/-! ## A398536.P9911098961091390440

`(n+1)*(n+1)*A343009(n+1)`
-/

namespace A398536.P9911098961091390440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 1) : ℤ) * A343009 (n + 1)

end

end A398536.P9911098961091390440

/-!
# A398537: a(n) is the permanent of the symmetric tridiagonal Toeplitz n X n matrix M_n where M_n(j,k) = n^2+1 for j = k, M_n(j,k) = n for abs(j-k) = 1, M_n(j,k) = 0 otherwise.

The programs for A398537, the canonical program `A398537.P15466782401860754690` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398537 has offset 0).

The definition of A398537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398537.P15466782401860754690

`∑{#}[floor(n/2), C(n-#, #)*(n²+1)^(n-2*#)*n^(2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398537

/-- `∑{#}[floor(n/2), C(n-#, #)*(n²+1)^(n-2*#)*n^(2*#)]` -/
def P15466782401860754690.Spec : Prop :=
  ∀ n, P15466782401860754690.a n = (A398537 n : ℚ)

end A398537

/-!
# A398538: Number of n-tuples (a_1, ..., a_n) in (Z/3Z)^n such that M(a_1)*M(a_2)*...*M(a_n) = -I, where M(a) = [a, -1; 1, 0].

The programs for A398538, the canonical program `A398538.P17523405333718738598` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398538 has offset 2).

The definition of A398538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398538.P17523405333718738598

`ogf((1-x)/(1-2x-6x^3-9x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398538

/-- `ogf((1-x)/(1-2x-6x^3-9x^4))` -/
def P17523405333718738598.Spec : Prop :=
  ∀ n, P17523405333718738598.a n = A398538 (n + 2)

theorem P17523405333718738598.correct : P17523405333718738598.Spec := by
  intro n
  simp only [A398538, Nat.add_sub_cancel]

end A398538

/-! ## A398538.P7232570608657334347

`2*a(n-1)+6*a(n-3)+9*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=10`
-/

namespace A398538.P7232570608657334347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 10] fun n a =>
  2 * a (n - 1) + 6 * a (n - 3) + 9 * a (n - 4)

end

end A398538.P7232570608657334347

namespace A398538

/-- `2*a(n-1)+6*a(n-3)+9*a(n-4)` -/
def P7232570608657334347.Spec : Prop :=
  ∀ n, (P7232570608657334347.a n : ℤ) = A398538 (n + 2)

end A398538

/-! ## A398538.P2697055760610903345

`A153773(n+1)-A382171(n)`
-/

namespace A398538.P2697055760610903345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 1) - A382171 n

end

end A398538.P2697055760610903345

namespace A398538

/-- `A153773(n+1)-A382171(n)` -/
def P2697055760610903345.Spec : Prop :=
  ∀ n, P2697055760610903345.a n = A398538 (n + 2)

end A398538

/-!
# A398542: Number of 1324-avoiding L-griddings with n points.

The programs for A398542, there is no canonical definition to state claims against.
-/

/-! ## A398542.P688323493513842733

`A110266(A123347(n))`
-/

namespace A398542.P688323493513842733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A123347 n).toNat

end

end A398542.P688323493513842733

/-!
# A398543: a(n) = A008683(A000026(n)).

The programs for A398543, the canonical program `A398543.P3266382039981285700` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398543 has offset 1).

The definition of A398543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398543.P3266382039981285700

`A008683(A000026(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A398543

/-- `A008683(A000026(n+1))` -/
def P3266382039981285700.Spec : Prop :=
  ∀ n, P3266382039981285700.a n = A398543 (n + 1)

theorem P3266382039981285700.correct : P3266382039981285700.Spec := by
  intro n
  simp only [A398543, Nat.add_sub_cancel]

end A398543

/-! ## A398543.P13163043730957372672

`A008683(A007947(n+1)*A005361(n+1))`
-/

namespace A398543.P13163043730957372672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1) * A005361 (n + 1)).toNat

end

end A398543.P13163043730957372672

namespace A398543

/-- `A008683(A007947(n+1)*A005361(n+1))` -/
def P13163043730957372672.Spec : Prop :=
  ∀ n, P13163043730957372672.a n = A398543 (n + 1)

theorem P13163043730957372672.correct : P13163043730957372672.Spec := by
  intro n
  simp only [A398543, Nat.add_sub_cancel, A398543.P13163043730957372672.a, A398543.P3266382039981285700.a, A000026, A000026.P14646158085172730513.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398543

/-! ## A398543.P614138644432709347

`A008683(∏{p}[n+1, #]*∏{e}[n+1, #])`
-/

namespace A398543.P614138644432709347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A398543.P614138644432709347

namespace A398543

/-- `A008683(∏{p}[n+1, #]*∏{e}[n+1, #])` -/
def P614138644432709347.Spec : Prop :=
  ∀ n, P614138644432709347.a n = A398543 (n + 1)

end A398543

/-! ## A398543.P10042713204263914027

`A008683(A005361(n+1)*A007947(n+1))`
-/

namespace A398543.P10042713204263914027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005361 (n + 1) * A007947 (n + 1)).toNat

end

end A398543.P10042713204263914027

namespace A398543

/-- `A008683(A005361(n+1)*A007947(n+1))` -/
def P10042713204263914027.Spec : Prop :=
  ∀ n, P10042713204263914027.a n = A398543 (n + 1)

end A398543

/-! ## A398543.P12455031359966137007

`A008683(A361268(n+1)/A064549(n+1))`
-/

namespace A398543.P12455031359966137007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A361268 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ))).toNat

end

end A398543.P12455031359966137007

namespace A398543

/-- `A008683(A361268(n+1)/A064549(n+1))` -/
def P12455031359966137007.Spec : Prop :=
  ∀ n, P12455031359966137007.a n = A398543 (n + 1)

end A398543

/-!
# A398544: Numbers of the form p^q + q^p divisible by 3, where p and q are primes.

The programs for A398544, there is no canonical definition to state claims against.
-/

/-! ## A398544.P17811629107882056501

`filter[A173056(n+1), A059620(#)]`
-/

namespace A398544.P17811629107882056501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A398544.P17811629107882056501

/-!
# A398545: Least prime that congruence conditions permit as the n-th smallest prime in a Goldbach partition of an even number.

The programs for A398545, there is no canonical definition to state claims against.
-/

/-! ## A398545.P18413010917740847468

`∩[A028806(n+1), A322184(n+1)]`
-/

namespace A398545.P18413010917740847468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398545.P18413010917740847468

/-! ## A398545.P8440577086051825390

`∩[A028806(n+1), A172146(n+1)]`
-/

namespace A398545.P8440577086051825390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398545.P8440577086051825390

/-! ## A398545.P11590302935112642447

`A175944(A175944(A051349(A227547(n+1))))`
-/

namespace A398545.P11590302935112642447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A175944 (A051349 (A227547 (n + 1)).toNat).toNat).toNat

end

end A398545.P11590302935112642447

/-! ## A398545.P767051296799546415

`A180101(∑[n+5])`
-/

namespace A398545.P767051296799546415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398545.P767051296799546415

/-! ## A398545.P18390517707282848990

`A137847(A384601(n+1))`
-/

namespace A398545.P18390517707282848990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A384601 (n + 1)).toNat

end

end A398545.P18390517707282848990

/-!
# A398547: d^c^b, where b >= c >= d >= 0 ordered by b then c then d.

The programs for A398547, the canonical program `A398547.P9174656088477173349` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398547 has offset 0).

The definition of A398547 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398547.P9174656088477173349

`A056558(n)^A056557(n)^A056556(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A398547

/-- `A056558(n)^A056557(n)^A056556(n)` -/
def P9174656088477173349.Spec : Prop :=
  ∀ n, P9174656088477173349.a n = (A398547 n : ℝ)

end A398547

/-!
# A398549: Number of n-tuples (x_1, ..., x_n) of distinct positive integers such that 1/x_1 + 2/x_2 + ... + n/x_n = n.

The programs for A398549, there is no canonical definition to state claims against.
-/

/-! ## A398549.P10569047074371782299

`A093109(A124890(n))-A124890(n)`
-/

namespace A398549.P10569047074371782299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093109 (A124890 n).toNat - A124890 n

end

end A398549.P10569047074371782299

/-!
# A398551: Even numbers that are not sums of two isolated primes.

The programs for A398551, there is no canonical definition to state claims against.
-/

/-! ## A398551.P11818370584463382094

`A005843(lt[A057521(2*(n+2)), A126290(2*(n+2))])`
-/

namespace A398551.P11818370584463382094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398551.P11818370584463382094

/-! ## A398551.P13848051160599983397

`A105360(lt[9, A371221(2*(n+2))])`
-/

namespace A398551.P13848051160599983397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371221 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A398551.P13848051160599983397

/-! ## A398551.P17236258680487279302

`∑[A000122(A239986(2*n+3)+1)+2]`
-/

namespace A398551.P17236258680487279302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A239986 (2 * n + 3) + 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398551.P17236258680487279302

/-! ## A398551.P16395112857235268944

`lt[A000122(A068382(2*n+3)), A033999(n)]`
-/

namespace A398551.P16395112857235268944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A068382 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398551.P16395112857235268944

/-!
# A398553: Number of factorizations of (p*q*r)^n into parts > 1 where none of p, q, or r are permitted as factors, for any three distinct primes p, q, and r.

The programs for A398553, there is no canonical definition to state claims against.
-/

/-! ## A398553.P12530908810557927995

`A399923(∑[n+3])`
-/

namespace A398553.P12530908810557927995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398553.P12530908810557927995

/-!
# A398562: Number of composite numbers less than the n-th primorial that are relatively prime to the (n-1)-th primorial.

The programs for A398562, the canonical program `A398562.P6227823675874311163` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398562 has offset 1).

The definition of A398562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398562.P6227823675874311163

`A000040(n+1)*A005867(n)+n+1-2-A000849(n+1)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A398562

/-- `A000040(n+1)*A005867(n)+n+1-2-A000849(n+1)` -/
def P6227823675874311163.Spec : Prop :=
  ∀ n, P6227823675874311163.a n = A398562 (n + 1)

theorem P6227823675874311163.correct : P6227823675874311163.Spec := by
  intro n
  simp only [A398562, Nat.add_sub_cancel]

end A398562

/-!
# A398564: Triangle read by rows: T(n,k) is the greatest common divisor of the numbers of ways to form j simultaneous cross-team handshakes between teams of n and k distinct people, with each person participating in at most one handshake, for 1 <= j <= k <= n.

The programs for A398564, the canonical program `A398564.P7925307628146078000` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398564 has offset 1).

The definition of A398564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398564.P7925307628146078000

`(row(n)+1)*(col(n)+1)/A007947(gcd(row(n)+1, col(n)+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398564

/-- `(row(n)+1)*(col(n)+1)/A007947(gcd(row(n)+1, col(n)+1))` -/
def P7925307628146078000.Spec : Prop :=
  ∀ n, P7925307628146078000.a n = (A398564 (n + 1) : ℚ)

end A398564

/-!
# A398565: a(n) = 3^(2^n - 1).

The programs for A398565, the canonical program `A398565.P17286952794565849304` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398565 has offset 0).

The definition of A398565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398565.P17286952794565849304

`3^(2^n-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398565

/-- `3^(2^n-1)` -/
def P17286952794565849304.Spec : Prop :=
  ∀ n, P17286952794565849304.a n = (A398565 n : ℚ)

end A398565

/-! ## A398565.P1063777096492202384

`3*a(n-1)²` with `a(0)=1`
-/

namespace A398565.P1063777096492202384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) ^ 2

end

end A398565.P1063777096492202384

namespace A398565

/-- `3*a(n-1)²` -/
def P1063777096492202384.Spec : Prop :=
  ∀ n, (P1063777096492202384.a n : ℤ) = A398565 n

end A398565

/-! ## A398565.P10895654344791689264

`A011764(n)/3`
-/

namespace A398565.P10895654344791689264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011764 n : ℚ) / 3

end

end A398565.P10895654344791689264

namespace A398565

/-- `A011764(n)/3` -/
def P10895654344791689264.Spec : Prop :=
  ∀ n, P10895654344791689264.a n = (A398565 n : ℚ)

end A398565

/-! ## A398565.P12633186962983425342

`A133494(2^n)`
-/

namespace A398565.P12633186962983425342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (2 ^ n)

end

end A398565.P12633186962983425342

namespace A398565

/-- `A133494(2^n)` -/
def P12633186962983425342.Spec : Prop :=
  ∀ n, P12633186962983425342.a n = A398565 n

end A398565

/-!
# A398566: Numbers that can be obtained by concatenating the decimal representations of x, y, and x-y for x >= 1 and 0 <= y <= x.

The programs for A398566, there is no canonical definition to state claims against.
-/

/-! ## A398566.P7100661758905257840

`A233583(A352438(n+10)+1)`
-/

namespace A398566.P7100661758905257840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A352438 (n + 10) + 1).toNat

end

end A398566.P7100661758905257840

/-! ## A398566.P10181997367482637980

`∩[A068520(n+1), A240237(n)]`
-/

namespace A398566.P10181997367482637980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398566.P10181997367482637980

/-! ## A398566.P11525788648572707811

`∩[A083967(n+1), A240237(n)]`
-/

namespace A398566.P11525788648572707811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398566.P11525788648572707811

/-! ## A398566.P9992413723127725876

`∩[A240237(n), A352438(n+1)]`
-/

namespace A398566.P9992413723127725876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398566.P9992413723127725876

/-! ## A398566.P2108032908394202391

`∩[A387911(n+1), A240237(n)]`
-/

namespace A398566.P2108032908394202391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398566.P2108032908394202391

/-! ## A398566.P16822135219463022743

`A352438(round(acot(A337984(n+1))+n)+10)`
-/

namespace A398566.P16822135219463022743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A337984 (n + 1) : ℝ) + (n : ℝ)) + 10).toNat

end

end A398566.P16822135219463022743

/-! ## A398566.P11767137618391117475

`A352438(A102494(n+1))`
-/

namespace A398566.P11767137618391117475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (A102494 (n + 1)).toNat

end

end A398566.P11767137618391117475

/-!
# A398567: Number of perfect matchings in a 2n X 3 grid graph on the Klein bottle.

The programs for A398567, the canonical program `A398567.P6072055630550410281` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398567 has offset 1).

The definition of A398567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398567.P6072055630550410281

`ogf((16+18x-80x^2-54x^3+44x^4+8x^5)/(1-4x-16x^2+6x^3+16x^4-4x^5-x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398567

/-- `ogf((16+18x-80x^2-54x^3+44x^4+8x^5)/(1-4x-16x^2+6x^3+16x^4-4x^5-x^6))` -/
def P6072055630550410281.Spec : Prop :=
  ∀ n, P6072055630550410281.a n = A398567 (n + 1)

theorem P6072055630550410281.correct : P6072055630550410281.Spec := by
  intro n
  simp only [A398567, Nat.add_sub_cancel]

end A398567

/-!
# A398568: Nonpalindromic composite numbers all of whose proper divisors are palindromic.

The programs for A398568, there is no canonical definition to state claims against.
-/

/-! ## A398568.P2548684459016232378

`∩[A084981(n+1), A141322(n+1)]`
-/

namespace A398568.P2548684459016232378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398568.P2548684459016232378

/-! ## A398568.P12421732693337647008

`∩[A084981(n+1), A161598(n+1)]`
-/

namespace A398568.P12421732693337647008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398568.P12421732693337647008

/-! ## A398568.P6538371689527816749

`filter[A163122(n+1), A377191(#)]`
-/

namespace A398568.P6538371689527816749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A398568.P6538371689527816749

/-! ## A398568.P15041231599951246132

`∩[A163122(n+1), A267521(n+1)]`
-/

namespace A398568.P15041231599951246132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398568.P15041231599951246132

/-!
# A398569: Odd numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

The programs for A398569, the canonical program `A398569.P1103607179862908180` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398569 has offset 1).

The definition of A398569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398569.P5976317760860233432

`∩[A053850(n+1), A398316(n+1)]`
-/

namespace A398569.P5976317760860233432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P5976317760860233432

namespace A398569

/-- `∩[A053850(n+1), A398316(n+1)]` -/
def P5976317760860233432.Spec : Prop :=
  ∀ n, (P5976317760860233432.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P9212987319650500982

`∩[A360769(n+1), A398316(n+1)]`
-/

namespace A398569.P9212987319650500982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P9212987319650500982

namespace A398569

/-- `∩[A360769(n+1), A398316(n+1)]` -/
def P9212987319650500982.Spec : Prop :=
  ∀ n, (P9212987319650500982.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P11997630562802637362

`∩[A381823(n+1), A398316(n+1)]`
-/

namespace A398569.P11997630562802637362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P11997630562802637362

namespace A398569

/-- `∩[A381823(n+1), A398316(n+1)]` -/
def P11997630562802637362.Spec : Prop :=
  ∀ n, (P11997630562802637362.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P15167433625845317283

`∩[A381950(n+1), A398316(n+1)]`
-/

namespace A398569.P15167433625845317283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P15167433625845317283

namespace A398569

/-- `∩[A381950(n+1), A398316(n+1)]` -/
def P15167433625845317283.Spec : Prop :=
  ∀ n, (P15167433625845317283.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P2871530740302650348

`∩[A391025(n+1), A398316(n+1)]`
-/

namespace A398569.P2871530740302650348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P2871530740302650348

namespace A398569

/-- `∩[A391025(n+1), A398316(n+1)]` -/
def P2871530740302650348.Spec : Prop :=
  ∀ n, (P2871530740302650348.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P9593023270879846754

`∩[A124438(n+1), A398316(n+1)]`
-/

namespace A398569.P9593023270879846754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P9593023270879846754

namespace A398569

/-- `∩[A124438(n+1), A398316(n+1)]` -/
def P9593023270879846754.Spec : Prop :=
  ∀ n, (P9593023270879846754.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P17632825104022170036

`∩[A216918(n+1), A398316(n+1)]`
-/

namespace A398569.P17632825104022170036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P17632825104022170036

namespace A398569

/-- `∩[A216918(n+1), A398316(n+1)]` -/
def P17632825104022170036.Spec : Prop :=
  ∀ n, (P17632825104022170036.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P7091146400081096632

`∩[A139392(n+1), A398316(n+1)]`
-/

namespace A398569.P7091146400081096632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P7091146400081096632

namespace A398569

/-- `∩[A139392(n+1), A398316(n+1)]` -/
def P7091146400081096632.Spec : Prop :=
  ∀ n, (P7091146400081096632.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P1103607179862908180

`∩[A072357(n+1), A216918(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A398569

/-- `∩[A072357(n+1), A216918(n+1)]` -/
def P1103607179862908180.Spec : Prop :=
  ∀ n, (P1103607179862908180.a n : ℤ) = A398569 (n + 1)

theorem P1103607179862908180.correct : P1103607179862908180.Spec := by
  intro n
  simp only [A398569, Nat.add_sub_cancel]

end A398569

/-! ## A398569.P2027491949534400925

`∩[A060687(n+1), A216918(n+1)]`
-/

namespace A398569.P2027491949534400925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P2027491949534400925

namespace A398569

/-- `∩[A060687(n+1), A216918(n+1)]` -/
def P2027491949534400925.Spec : Prop :=
  ∀ n, (P2027491949534400925.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P10049675994669872306

`∩[A333326(n+1), A398316(n+1)]`
-/

namespace A398569.P10049675994669872306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P10049675994669872306

namespace A398569

/-- `∩[A333326(n+1), A398316(n+1)]` -/
def P10049675994669872306.Spec : Prop :=
  ∀ n, (P10049675994669872306.a n : ℤ) = A398569 (n + 1)

end A398569

/-! ## A398569.P14934870171559802552

`filter[A398316(n+1), A000035(#)]`
-/

namespace A398569.P14934870171559802552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A398569.P14934870171559802552

namespace A398569

/-- `filter[A398316(n+1), A000035(#)]` -/
def P14934870171559802552.Spec : Prop :=
  ∀ n, P14934870171559802552.a n = A398569 (n + 1)

end A398569

/-!
# A398572: 

The programs for A398572, there is no canonical definition to state claims against.
-/

/-! ## A398572.P4436732176601727290

`∑{e}[A000026(n+1), #]`
-/

namespace A398572.P4436732176601727290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A398572.P4436732176601727290

/-! ## A398572.P13829330943111995369

`∑{e}[A226602(n+1), #]`
-/

namespace A398572.P13829330943111995369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A398572.P13829330943111995369

/-! ## A398572.P18172029865544473783

`∑{e}[A322327(n+1), #]`
-/

namespace A398572.P18172029865544473783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A398572.P18172029865544473783

/-! ## A398572.P8548566903263661216

`∑{e}[A360996(n+1), #]`
-/

namespace A398572.P8548566903263661216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A398572.P8548566903263661216

/-! ## A398572.P17443373926512086616

`A001222(A000026(n+1))`
-/

namespace A398572.P17443373926512086616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000026 (n + 1)).toNat

end

end A398572.P17443373926512086616

/-! ## A398572.P7428092643202104513

`A001222(A226602(n+1))`
-/

namespace A398572.P7428092643202104513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A226602 (n + 1)).toNat

end

end A398572.P7428092643202104513

/-! ## A398572.P9941685292029802505

`A001222(A322327(n+1))`
-/

namespace A398572.P9941685292029802505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322327 (n + 1)).toNat

end

end A398572.P9941685292029802505

/-! ## A398572.P16921065241650025567

`A001222(A360996(n+1))`
-/

namespace A398572.P16921065241650025567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A360996 (n + 1)).toNat

end

end A398572.P16921065241650025567

/-! ## A398572.P4106811595689940425

`A196052(A181819(n+1))`
-/

namespace A398572.P4106811595689940425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (A181819 (n + 1)).toNat

end

end A398572.P4106811595689940425

/-! ## A398572.P15645362408451913337

`A391900(n+1)+A001221(n+1)`
-/

namespace A398572.P15645362408451913337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391900 (n + 1) + A001221 (n + 1)

end

end A398572.P15645362408451913337

/-! ## A398572.P2881698258003230174

`A001221(n+1)+A001222(A005361(n+1))`
-/

namespace A398572.P2881698258003230174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001222 (A005361 (n + 1)).toNat

end

end A398572.P2881698258003230174

/-! ## A398572.P7295187074549216210

`A001222(A005361(n+1)*A007947(n+1))`
-/

namespace A398572.P7295187074549216210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005361 (n + 1) * A007947 (n + 1)).toNat

end

end A398572.P7295187074549216210

/-! ## A398572.P2708536044165601152

`∑{e}[∏{e}[(n+1)², #], #]`
-/

namespace A398572.P2708536044165601152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A398572.P2708536044165601152

/-! ## A398572.P12922994410596928072

`A001222(A005361((n+1)²))`
-/

namespace A398572.P12922994410596928072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005361 ((n + 1) ^ 2)).toNat

end

end A398572.P12922994410596928072

/-! ## A398572.P17795810416947179075

`A362412(A005361((n+1)²)²)`
-/

namespace A398572.P17795810416947179075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A005361 ((n + 1) ^ 2) ^ 2).toNat

end

end A398572.P17795810416947179075

/-!
# A398574: First differences of A398508.

The programs for A398574, there is no canonical definition to state claims against.
-/

/-! ## A398574.P964847105590844091

`Δ[A398508(n+1)]`
-/

namespace A398574.P964847105590844091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398574.P964847105590844091

/-! ## A398574.P7507098642986924198

`A398508(n+2)-A398508(n+1)`
-/

namespace A398574.P7507098642986924198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398508 (n + 2) - A398508 (n + 1)

end

end A398574.P7507098642986924198

/-!
# A398575: Number of unlabeled 7-gonal cacti having n blocks.

The programs for A398575, there is no canonical definition to state claims against.
-/

/-! ## A398575.P18061152933847595287

`A193964(A098407(n))`
-/

namespace A398575.P18061152933847595287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193964 (A098407 n).toNat

end

end A398575.P18061152933847595287

/-!
# A398576: a(n) = A008836(A000026(n)).

The programs for A398576, the canonical program `A398576.P17709678476820359098` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398576 has offset 1).

The definition of A398576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398576.P17709678476820359098

`A008836(A000026(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A398576

/-- `A008836(A000026(n+1))` -/
def P17709678476820359098.Spec : Prop :=
  ∀ n, P17709678476820359098.a n = A398576 (n + 1)

theorem P17709678476820359098.correct : P17709678476820359098.Spec := by
  intro n
  simp only [A398576, Nat.add_sub_cancel]

end A398576

/-! ## A398576.P4601726799958090088

`A076479(n+1)*A008836(A005361(n+1))`
-/

namespace A398576.P4601726799958090088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A008836 (A005361 (n + 1)).toNat

end

end A398576.P4601726799958090088

namespace A398576

/-- `A076479(n+1)*A008836(A005361(n+1))` -/
def P4601726799958090088.Spec : Prop :=
  ∀ n, P4601726799958090088.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P7659207556719404072

`A008836(A226602(n+1))`
-/

namespace A398576.P7659207556719404072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A226602 (n + 1)).toNat

end

end A398576.P7659207556719404072

namespace A398576

/-- `A008836(A226602(n+1))` -/
def P7659207556719404072.Spec : Prop :=
  ∀ n, P7659207556719404072.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P10520720201319903096

`A008836(A322327(n+1))`
-/

namespace A398576.P10520720201319903096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A322327 (n + 1)).toNat

end

end A398576.P10520720201319903096

namespace A398576

/-- `A008836(A322327(n+1))` -/
def P10520720201319903096.Spec : Prop :=
  ∀ n, P10520720201319903096.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P13169176669571603436

`A008836(A360996(n+1))`
-/

namespace A398576.P13169176669571603436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A360996 (n + 1)).toNat

end

end A398576.P13169176669571603436

namespace A398576

/-- `A008836(A360996(n+1))` -/
def P13169176669571603436.Spec : Prop :=
  ∀ n, P13169176669571603436.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P17112436042828494111

`A008836(A005361(n+1))*A076479(n+1)`
-/

namespace A398576.P17112436042828494111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A005361 (n + 1)).toNat * A076479 (n + 1)

end

end A398576.P17112436042828494111

namespace A398576

/-- `A008836(A005361(n+1))*A076479(n+1)` -/
def P17112436042828494111.Spec : Prop :=
  ∀ n, P17112436042828494111.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P3289132636994132276

`A008836(A322328(n+1)/A034444(n+1))`
-/

namespace A398576.P3289132636994132276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (SequenceMachineLib.roundAway ((A322328 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ))).toNat

end

end A398576.P3289132636994132276

namespace A398576

/-- `A008836(A322328(n+1)/A034444(n+1))` -/
def P3289132636994132276.Spec : Prop :=
  ∀ n, P3289132636994132276.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P9558480296143900638

`A008836(A034444(n+1)*A322328(n+1))`
-/

namespace A398576.P9558480296143900638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A034444 (n + 1) * A322328 (n + 1)).toNat

end

end A398576.P9558480296143900638

namespace A398576

/-- `A008836(A034444(n+1)*A322328(n+1))` -/
def P9558480296143900638.Spec : Prop :=
  ∀ n, P9558480296143900638.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P3497182664233097737

`A011601(A062368(n+1))`
-/

namespace A398576.P3497182664233097737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 (A062368 (n + 1)).toNat

end

end A398576.P3497182664233097737

namespace A398576

/-- `A011601(A062368(n+1))` -/
def P3497182664233097737.Spec : Prop :=
  ∀ n, P3497182664233097737.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P10379493196250148480

`A008836(A005361((n+1)²))`
-/

namespace A398576.P10379493196250148480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A005361 ((n + 1) ^ 2)).toNat

end

end A398576.P10379493196250148480

namespace A398576

/-- `A008836(A005361((n+1)²))` -/
def P10379493196250148480.Spec : Prop :=
  ∀ n, P10379493196250148480.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P17944198773902379259

`A008836(A303915((n+1)²))`
-/

namespace A398576.P17944198773902379259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A303915 ((n + 1) ^ 2)).toNat

end

end A398576.P17944198773902379259

namespace A398576

/-- `A008836(A303915((n+1)²))` -/
def P17944198773902379259.Spec : Prop :=
  ∀ n, P17944198773902379259.a n = A398576 (n + 1)

end A398576

/-! ## A398576.P17672463891753632390

`A008836(A322328((n+1)²))`
-/

namespace A398576.P17672463891753632390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A322328 ((n + 1) ^ 2)).toNat

end

end A398576.P17672463891753632390

namespace A398576

/-- `A008836(A322328((n+1)²))` -/
def P17672463891753632390.Spec : Prop :=
  ∀ n, P17672463891753632390.a n = A398576 (n + 1)

end A398576

/-!
# A398577: a(n) is the maximum number of unordered representations of an integer as a sum of two positive divisors of n.

The programs for A398577, there is no canonical definition to state claims against.
-/

/-! ## A398577.P17975114934474904158

`gcd(A088663(n), A250068(n+1))`
-/

namespace A398577.P17975114934474904158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088663 n) (A250068 (n + 1))

end

end A398577.P17975114934474904158

/-! ## A398577.P11563190370467508259

`A382397(A398434(A398434(A325879(A399470(n+1)))))`
-/

namespace A398577.P11563190370467508259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A398434 (A398434 (A325879 (A399470 (n + 1)).toNat).toNat).toNat).toNat

end

end A398577.P11563190370467508259

/-! ## A398577.P14076386282679851974

`gcd(A010954(n), A250068(n+1))`
-/

namespace A398577.P14076386282679851974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010954 n) (A250068 (n + 1))

end

end A398577.P14076386282679851974

/-! ## A398577.P2392517537853146417

`gcd(A010950(n), A250068(n+1))`
-/

namespace A398577.P2392517537853146417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010950 n) (A250068 (n + 1))

end

end A398577.P2392517537853146417

/-! ## A398577.P8374484537463450403

`A000005(A398434(A398429(A399470(n+1))))`
-/

namespace A398577.P8374484537463450403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A398434 (A398429 (A399470 (n + 1)).toNat).toNat).toNat

end

end A398577.P8374484537463450403

/-!
# A398579: Number of complete non-ambiguous trees with n leaves whose maximum weight is 0.

The programs for A398579, there is no canonical definition to state claims against.
-/

/-! ## A398579.P9203946129600581760

`A399444(∑[n]+1)`
-/

namespace A398579.P9203946129600581760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399444 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A398579.P9203946129600581760

/-! ## A398579.P5836480695649439198

`A399342(∑[n]+1)`
-/

namespace A398579.P5836480695649439198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A398579.P5836480695649439198

/-!
# A398596: Exponents e for which there is a unique integer k > 1 such that S(k^e) = k, where S(n) is the sum of digits of n.

The programs for A398596, there is no canonical definition to state claims against.
-/

/-! ## A398596.P6110846855852548419

`eq[2, A046019(n)]`
-/

namespace A398596.P6110846855852548419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A398596.P6110846855852548419

/-!
# A398599: Number of permutations p of [n] such that |p(i+1)-p(i)| <> 3 for all 1 <= i < n.

The programs for A398599, there is no canonical definition to state claims against.
-/

/-! ## A398599.P18364497706388960733

`A398634(eq[3, A243070(n+1)])`
-/

namespace A398599.P18364497706388960733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398599.P18364497706388960733

/-! ## A398599.P3194241510667382886

`∏[∑{e}[n+2-n^(n+1), #]]`
-/

namespace A398599.P3194241510667382886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (n ^ (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A398599.P3194241510667382886

/-! ## A398599.P1038974437323959940

`∏[A043536((n+2)!)]`
-/

namespace A398599.P1038974437323959940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A398599.P1038974437323959940

