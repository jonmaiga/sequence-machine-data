import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C018
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C002
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B006.C002
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

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
# A398524: a(n) = Sum_{k=1..n} mu(floor(n/k))^2, where mu = A008683 is the Möbius function.

The programs for A398524, there is no canonical definition to state claims against.
-/

/-! ## A398524.P1301120599790660510

`A070939(A007947(n+1)*A334269(n+1))`
-/

namespace A398524.P1301120599790660510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007947 (n + 1) * A334269 (n + 1)).toNat

end

end A398524.P1301120599790660510

/-! ## A398524.P17439338612636882123

`A302291(A007947(n+1)*A334269(n+1))`
-/

namespace A398524.P17439338612636882123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A007947 (n + 1) * A334269 (n + 1)).toNat

end

end A398524.P17439338612636882123

/-!
# A398543: a(n) = A008683(A000026(n)).

The programs for A398543, the canonical program `A398543.P3266382039981285700` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398543 has offset 1).

The definition of A398543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398543.P3266382039981285700

`A008683(A000026(n+1))`

The canonical program, it is in `Seq.B011.C001`.
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

/-! ## A398551.P495709249171532755

`lt[A000367(A049084(n+1)), A006803(n)]`
-/

namespace A398551.P495709249171532755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 (A049084 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398551.P495709249171532755

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
# A398576: a(n) = A008836(A000026(n)).

The programs for A398576, the canonical program `A398576.P17709678476820359098` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398576 has offset 1).

The definition of A398576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A008836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398576.P17709678476820359098

`A008836(A000026(n+1))`

The canonical program, it is in `Seq.B012.C000`.
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

