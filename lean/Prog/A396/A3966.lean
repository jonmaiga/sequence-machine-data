import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
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

/-!
# A396600: Odd numbers k where sigma_3(k)/k is an integer.

The programs for A396600, there is no canonical definition to state claims against.
-/

/-! ## A396600.P8944289067799115218

`filter[A046763(n+1), A379952(#)]`
-/

namespace A396600.P8944289067799115218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A396600.P8944289067799115218

/-!
# A396607: Lexicographically earliest sequence of distinct nonegative integers whose binary values, when written on a square spiral, one bit per square, high order bits first, contain no pair of 1 bits that are diagonally adjacent.

The programs for A396607, there is no canonical definition to state claims against.
-/

/-! ## A396607.P2005972686014333359

`A178133(A083184(n+1))`
-/

namespace A396607.P2005972686014333359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (A083184 (n + 1)).toNat

end

end A396607.P2005972686014333359

/-! ## A396607.P6556282339304376658

`eq[A030103(n), A031235(n)]`
-/

namespace A396607.P6556282339304376658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396607.P6556282339304376658

/-!
# A396614: a(n) is the number of 4-ary sequences of length n with characteristic value 2.

The programs for A396614, there is no canonical definition to state claims against.
-/

/-! ## A396614.P3640129497677353813

`2*4^n-A396251(n+1)`
-/

namespace A396614.P3640129497677353813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - A396251 (n + 1)

end

end A396614.P3640129497677353813

/-! ## A396614.P9448340673903153786

`A396638(A001096(n))`
-/

namespace A396614.P9448340673903153786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396638 (A001096 n).toNat

end

end A396614.P9448340673903153786

/-!
# A396622: a(n) = r(n,n), where r(1,k)=f(k)=floor(k*c), r(n,k)=f(r(n-1,k)), c=sqrt(3).

The programs for A396622, there is no canonical definition to state claims against.
-/

/-! ## A396622.P11622961233904382072

`A054240(A214824(n+1))`
-/

namespace A396622.P11622961233904382072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054240 (A214824 (n + 1)).toNat

end

end A396622.P11622961233904382072

/-! ## A396622.P8687488744797072205

`A331022(A331022(n+1))+A000247(n+2)`
-/

namespace A396622.P8687488744797072205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331022 (A331022 (n + 1)).toNat + A000247 (n + 2)

end

end A396622.P8687488744797072205

/-!
# A396623: a(n) = r(n,n), where r(1,k)=f(k)=ceiling(k*c), r(n,k)=f(r(n-1,k)), c=sqrt(3).

The programs for A396623, there is no canonical definition to state claims against.
-/

/-! ## A396623.P2215915783935219276

`∑[A347453(record[A007434(n+1)])]`
-/

namespace A396623.P2215915783935219276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396623.P2215915783935219276

/-!
# A396624: a(n) = r(n,n), where r(1,k)=f(k)=round(k*c), r(n,k)=f(r(n-1,k)), c=sqrt(3).

The programs for A396624, there is no canonical definition to state claims against.
-/

/-! ## A396624.P17298197259642212616

`A291934(A181984(n+1))`
-/

namespace A396624.P17298197259642212616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (A181984 (n + 1)).toNat

end

end A396624.P17298197259642212616

/-!
# A396625: Number of antichains of nonempty integer compositions that contain at least one composition of n and no compositions greater than n.

The programs for A396625, there is no canonical definition to state claims against.
-/

/-! ## A396625.P1069140608324115180

`A325234(a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A396625.P1069140608324115180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A325234 (a (n - 1)).toNat - 1

end

end A396625.P1069140608324115180

/-!
# A396630: Number of fixed-content bracelets of length n, summed over all integer partitions of n, that are different from their mirror image and have no nontrivial rotational symmetry.

The programs for A396630, there is no canonical definition to state claims against.
-/

/-! ## A396630.P13870465086618362558

`A172233(A148423(n))`
-/

namespace A396630.P13870465086618362558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172233 (A148423 n).toNat

end

end A396630.P13870465086618362558

/-! ## A396630.P10600869241884918469

`A334967(A065847(n+1))-n`
-/

namespace A396630.P10600869241884918469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334967 (A065847 (n + 1)).toNat - (n : ℤ)

end

end A396630.P10600869241884918469

/-!
# A396632: Number of fixed-content bracelets of length 2*n, summed over all integer partitions of 2*n, whose mirror image is a non-identity rotation, with no palindromic rotation and no nontrivial rotational symmetry.

The programs for A396632, there is no canonical definition to state claims against.
-/

/-! ## A396632.P14082087798953092603

`A325468(A008154(n))`
-/

namespace A396632.P14082087798953092603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (A008154 n).toNat

end

end A396632.P14082087798953092603

/-!
# A396633: Primes with strictly increasing decimal digits whose digit reversal is also prime.

The programs for A396633, there is no canonical definition to state claims against.
-/

/-! ## A396633.P14738739658446477740

`∩[A009994(n+1), A046732(n+1)]`
-/

namespace A396633.P14738739658446477740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P14738739658446477740

/-! ## A396633.P6153043223539529900

`∩[A028864(n+1), A046732(n+1)]`
-/

namespace A396633.P6153043223539529900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P6153043223539529900

/-! ## A396633.P18349480633651107298

`∩[A032524(n+1), A046732(n+1)]`
-/

namespace A396633.P18349480633651107298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P18349480633651107298

/-! ## A396633.P2469335501617804060

`∩[A046732(n+1), A190221(n+1)]`
-/

namespace A396633.P2469335501617804060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P2469335501617804060

/-! ## A396633.P8562747884856019132

`∩[A046732(n+1), A381509(n+1)]`
-/

namespace A396633.P8562747884856019132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P8562747884856019132

/-!
# A396637: Number of elements of geodesic length n in the braid group B_3.

The programs for A396637, the canonical program `A396637.P18262143251193077548` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396637 has offset 0).

The definition of A396637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396637.P18262143251193077548

`A068293(n+1)-A168193(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A396637

/-- `A068293(n+1)-A168193(n)` -/
def P18262143251193077548.Spec : Prop :=
  ∀ n, P18262143251193077548.a n = A396637 n

theorem P18262143251193077548.correct : P18262143251193077548.Spec := by
  intro n
  simp only [A396637]

end A396637

/-! ## A396637.P12470774786626749168

`A033484(n+1)-(A128588(n+1)+A128588(n+2))`
-/

namespace A396637.P12470774786626749168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (n + 1) - (A128588 (n + 1) + A128588 (n + 2))

end

end A396637.P12470774786626749168

namespace A396637

/-- `A033484(n+1)-(A128588(n+1)+A128588(n+2))` -/
def P12470774786626749168.Spec : Prop :=
  ∀ n, P12470774786626749168.a n = A396637 n

end A396637

/-! ## A396637.P7417088009159621342

`A004275(A104004(n))`
-/

namespace A396637.P7417088009159621342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A104004 n).toNat

end

end A396637.P7417088009159621342

namespace A396637

/-- `A004275(A104004(n))` -/
def P7417088009159621342.Spec : Prop :=
  ∀ n, P7417088009159621342.a n = A396637 n

end A396637

/-! ## A396637.P11717350281101605051

`A004277(A221719(n))`
-/

namespace A396637.P11717350281101605051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A221719 n).toNat

end

end A396637.P11717350281101605051

namespace A396637

/-- `A004277(A221719(n))` -/
def P11717350281101605051.Spec : Prop :=
  ∀ n, P11717350281101605051.a n = A396637 n

end A396637

/-!
# A396638: Number of geodesics of length n in the braid group B_3.

The programs for A396638, there is no canonical definition to state claims against.
-/

/-! ## A396638.P13865793781855701682

`A008574(A006684(n+1))`
-/

namespace A396638.P13865793781855701682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A006684 (n + 1)).toNat

end

end A396638.P13865793781855701682

/-!
# A396639: Number of elements of geodesic length n in the braid group B_4.

The programs for A396639, there is no canonical definition to state claims against.
-/

/-! ## A396639.P1010954228164900129

`A001462(A331936(n+1)*A377197(n))`
-/

namespace A396639.P1010954228164900129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A331936 (n + 1) * A377197 n).toNat

end

end A396639.P1010954228164900129

/-!
# A396640: Number of geodesics of length n in the braid group B_4.

The programs for A396640, there is no canonical definition to state claims against.
-/

/-! ## A396640.P18055120932106097806

`A248638(A149439(n+1))`
-/

namespace A396640.P18055120932106097806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248638 (A149439 (n + 1)).toNat

end

end A396640.P18055120932106097806

/-!
# A396641: Centered hexagonal numbers h such that 7*h is also a centered hexagonal number.

The programs for A396641, the canonical program `A396641.P2215949741411272717` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396641 has offset 1).

The definition of A396641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396641.P2215949741411272717

`(6*A253880(n+1)+1)/7`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A396641

/-- `(6*A253880(n+1)+1)/7` -/
def P2215949741411272717.Spec : Prop :=
  ∀ n, P2215949741411272717.a n = (A396641 (n + 1) : ℚ)

end A396641

/-! ## A396641.P13661287649033069552

`A073352(2*n+1)/4`
-/

namespace A396641.P13661287649033069552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073352 (2 * n + 1) : ℚ) / 4

end

end A396641.P13661287649033069552

namespace A396641

/-- `A073352(2*n+1)/4` -/
def P13661287649033069552.Spec : Prop :=
  ∀ n, P13661287649033069552.a n = (A396641 (n + 1) : ℚ)

end A396641

/-!
# A396642: Numbers k = p_1^e_1 * ... * p_i^e_i such that the area of the convex hull of the planar coordinates [p_i, e_i] is an integer >= 1.

The programs for A396642, there is no canonical definition to state claims against.
-/

/-! ## A396642.P11436841191102261738

`filter[A317534(n+1), A340370(#)]`
-/

namespace A396642.P11436841191102261738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A396642.P11436841191102261738

/-! ## A396642.P13990144875248919858

`filter[A328930(n+1), A340370(#)]`
-/

namespace A396642.P13990144875248919858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A396642.P13990144875248919858

/-! ## A396642.P9011845166789873098

`filter[A328930(n+1), A373374(#)]`
-/

namespace A396642.P9011845166789873098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A396642.P9011845166789873098

/-! ## A396642.P4198584274996867294

`∩[A257346(n+1), A359777(n+1)]`
-/

namespace A396642.P4198584274996867294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396642.P4198584274996867294

/-!
# A396643: Number of fixed polynars with n cells that are not the 2 X enlargement of a fixed n-omino.

The programs for A396643, there is no canonical definition to state claims against.
-/

/-! ## A396643.P12787801714127149642

`A390622(n+1)-A001168(n+1)`
-/

namespace A396643.P12787801714127149642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390622 (n + 1) - A001168 (n + 1)

end

end A396643.P12787801714127149642

/-!
# A396644: Number of cousin primes < 2^n.

The programs for A396644, there is no canonical definition to state claims against.
-/

/-! ## A396644.P15171179765705762578

`A098429(2^(n+1)-(n+1))`
-/

namespace A396644.P15171179765705762578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (2 ^ (n + 1) - (n + 1))

end

end A396644.P15171179765705762578

/-! ## A396644.P449116494124251869

`A374634(n)-A354579(A329740(n))`
-/

namespace A396644.P449116494124251869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374634 n - A354579 (A329740 n).toNat

end

end A396644.P449116494124251869

/-! ## A396644.P9033618345744141503

`A374634(n)-A124765(A286206(n+4))`
-/

namespace A396644.P9033618345744141503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374634 n - A124765 (A286206 (n + 4)).toNat

end

end A396644.P9033618345744141503

/-! ## A396644.P8751582000010051519

`A307707(A022543(n+2))-A000122(A241173(n))`
-/

namespace A396644.P8751582000010051519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A022543 (n + 2)).toNat - A000122 (A241173 n).toNat

end

end A396644.P8751582000010051519

/-! ## A396644.P8720438415863936715

`A307707(A022543(n+2))-A082647(A374688(n))`
-/

namespace A396644.P8720438415863936715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A022543 (n + 2)).toNat - A082647 (A374688 n).toNat

end

end A396644.P8720438415863936715

/-!
# A396645: a(n) = Sum_{j=1..n} |Stirling1(n-1,j-1)| * a(n-j) for n>=1, starting with a(0) = 1.

The programs for A396645, there is no canonical definition to state claims against.
-/

/-! ## A396645.P13648222038399576266

`A238617(A045633(n))`
-/

namespace A396645.P13648222038399576266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (A045633 n).toNat

end

end A396645.P13648222038399576266

/-! ## A396645.P12104253960161243004

`A087950(A303117(n))`
-/

namespace A396645.P12104253960161243004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 (A303117 n).toNat

end

end A396645.P12104253960161243004

/-! ## A396645.P9382627489502634016

`A238617(A238427(n))`
-/

namespace A396645.P9382627489502634016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (A238427 n).toNat

end

end A396645.P9382627489502634016

/-!
# A396647: Numbers k = p_1^e_1 * ... * p_i^e_i such that the area of the convex hull of the planar coordinates [p_i, e_i] is not an integer, but >= 1/2.

The programs for A396647, there is no canonical definition to state claims against.
-/

/-! ## A396647.P8582437154885097123

`∩[A230577(n+1), A335248(n+1)]`
-/

namespace A396647.P8582437154885097123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396647.P8582437154885097123

/-! ## A396647.P4231780264658611938

`A168361(A028491(n+1))*A230577(n+1)`
-/

namespace A396647.P4231780264658611938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A028491 (n + 1)).toNat * A230577 (n + 1)

end

end A396647.P4231780264658611938

/-! ## A396647.P3518754708252254387

`A230577(n+1)*A286324(A130537(n+1))`
-/

namespace A396647.P3518754708252254387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230577 (n + 1) * A286324 (A130537 (n + 1)).toNat

end

end A396647.P3518754708252254387

/-! ## A396647.P5842640180189870154

`filter[A383517(n+2), A360125(#)]`
-/

namespace A396647.P5842640180189870154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A396647.P5842640180189870154

/-! ## A396647.P1188423618428108762

`filter[A383531(n+2), A360125(#)]`
-/

namespace A396647.P1188423618428108762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A396647.P1188423618428108762

/-!
# A396648: Row sums of A396585.

The programs for A396648, there is no canonical definition to state claims against.
-/

/-! ## A396648.P12511411540174210681

`A133053(n+1)-A172361(n+1)`
-/

namespace A396648.P12511411540174210681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133053 (n + 1) - A172361 (n + 1)

end

end A396648.P12511411540174210681

/-!
# A396652: a(n) = (2*n-3-(-1)^n)*(6*n+1-(-1)^n)/8.

The programs for A396652, the canonical program `A396652.P9419091518121404480` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396652 has offset 0).

The definition of A396652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396652.P9419091518121404480

`2*floor((n-1)/2)*(n+1+floor((n-1)/2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A396652

/-- `2*floor((n-1)/2)*(n+1+floor((n-1)/2))` -/
def P9419091518121404480.Spec : Prop :=
  ∀ n, P9419091518121404480.a n = A396652 n

theorem P9419091518121404480.correct : P9419091518121404480.Spec := by
  intro n
  simp only [A396652]

end A396652

/-! ## A396652.P16126139125024960913

`(2*n-3-(-1)^n)*(6*n+1-(-1)^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396652.P16126139125024960913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3 - (-1) ^ n) * ((6 * n + 1 : ℤ) - (-1) ^ n) : ℚ) / 8

end

end A396652.P16126139125024960913

namespace A396652

/-- `(2*n-3-(-1)^n)*(6*n+1-(-1)^n)/8` -/
def P16126139125024960913.Spec : Prop :=
  ∀ n, P16126139125024960913.a n = (A396652 n : ℚ)

end A396652

/-! ## A396652.P6287995977547522102

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=10, a(4)=12`
-/

namespace A396652.P6287995977547522102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 10, 12] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A396652.P6287995977547522102

namespace A396652

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6287995977547522102.Spec : Prop :=
  ∀ n, P6287995977547522102.a n = A396652 n

end A396652

/-! ## A396652.P15858726215704565873

`A395421(n)-A137932(n)`
-/

namespace A396652.P15858726215704565873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395421 n - A137932 n

end

end A396652.P15858726215704565873

namespace A396652

/-- `A395421(n)-A137932(n)` -/
def P15858726215704565873.Spec : Prop :=
  ∀ n, P15858726215704565873.a n = A396652 n

end A396652

/-! ## A396652.P10929609781353006753

`A322462(n)-A317312(n)`
-/

namespace A396652.P10929609781353006753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n - A317312 n

end

end A396652.P10929609781353006753

namespace A396652

/-- `A322462(n)-A317312(n)` -/
def P10929609781353006753.Spec : Prop :=
  ∀ n, P10929609781353006753.a n = A396652 n

end A396652

/-! ## A396652.P9882302034368919306

`A393677(n)-A178414(n+1)`
-/

namespace A396652.P9882302034368919306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393677 n - A178414 (n + 1)

end

end A396652.P9882302034368919306

namespace A396652

/-- `A393677(n)-A178414(n+1)` -/
def P9882302034368919306.Spec : Prop :=
  ∀ n, P9882302034368919306.a n = A396652 n

end A396652

/-! ## A396652.P10408075203901167484

`A036498(n+1)-A047382(n+1)`
-/

namespace A396652.P10408075203901167484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036498 (n + 1) - A047382 (n + 1)

end

end A396652.P10408075203901167484

namespace A396652

/-- `A036498(n+1)-A047382(n+1)` -/
def P10408075203901167484.Spec : Prop :=
  ∀ n, P10408075203901167484.a n = A396652 n

end A396652

/-!
# A396665: Smallest nonnegative integer z for which there exists a solution to n = x*y+y*z+z*x in nonnegative integers x <= y <= z.

The programs for A396665, there is no canonical definition to state claims against.
-/

/-! ## A396665.P14762755347954700824

`A385249(A237642(n+1))`
-/

namespace A396665.P14762755347954700824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385249 (A237642 (n + 1)).toNat

end

end A396665.P14762755347954700824

/-! ## A396665.P5410903535777082494

`A081212(n+2)+A001221(A302862(n))`
-/

namespace A396665.P5410903535777082494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (n + 2) + A001221 (A302862 n).toNat

end

end A396665.P5410903535777082494

/-! ## A396665.P17980287550723169120

`A360677(A070175(n+1))`
-/

namespace A396665.P17980287550723169120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (A070175 (n + 1)).toNat

end

end A396665.P17980287550723169120

/-! ## A396665.P651981472770944212

`A302242(A003057(n+2)*A265054(n))`
-/

namespace A396665.P651981472770944212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A003057 (n + 2) * A265054 n).toNat

end

end A396665.P651981472770944212

/-! ## A396665.P296973015529876741

`A124767(A022839(n+1)*A276085(n+1))`
-/

namespace A396665.P296973015529876741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A022839 (n + 1) * A276085 (n + 1)).toNat

end

end A396665.P296973015529876741

/-!
# A396668: Number of primes p such that n is the smallest value of z for which there exists a solution to p = x*y+y*z+z*x in nonnegative integers x <= y <= z.

The programs for A396668, there is no canonical definition to state claims against.
-/

/-! ## A396668.P17944569256029546238

`A394353(n+1)-A394353(n)`
-/

namespace A396668.P17944569256029546238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394353 (n + 1) - A394353 n

end

end A396668.P17944569256029546238

/-! ## A396668.P4092645075323177085

`Δ[A394353(n)]`
-/

namespace A396668.P4092645075323177085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396668.P4092645075323177085

/-!
# A396671: Number of distinct tilings of an L-tromino of order n by elementary L-trominoes.

The programs for A396671, there is no canonical definition to state claims against.
-/

/-! ## A396671.P7911609002445078373

`A236257(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A396671.P7911609002445078373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A236257 (a (n - 1) ^ 2).toNat

end

end A396671.P7911609002445078373

/-!
# A396677: Expansion of e.g.f. log(1 - W_2(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396677, there is no canonical definition to state claims against.
-/

/-! ## A396677.P6936158067275417650

`A396675(A034856(n+2))`
-/

namespace A396677.P6936158067275417650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396675 (A034856 (n + 2)).toNat

end

end A396677.P6936158067275417650

/-!
# A396678: Expansion of e.g.f. log(1 - W_3(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396678, there is no canonical definition to state claims against.
-/

/-! ## A396678.P5288395196087273813

`A396675(A141214(n+1))`
-/

namespace A396678.P5288395196087273813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396675 (A141214 (n + 1)).toNat

end

end A396678.P5288395196087273813

/-! ## A396678.P5366593524103071327

`A396675(A000217(n+4)-3)`
-/

namespace A396678.P5366593524103071327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396675 (A000217 (n + 4) - 3).toNat

end

end A396678.P5366593524103071327

/-!
# A396679: Expansion of e.g.f. -log(1 + W_2(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396679, there is no canonical definition to state claims against.
-/

/-! ## A396679.P15878302850912201281

`A396676(A034856(n+2))`
-/

namespace A396679.P15878302850912201281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396676 (A034856 (n + 2)).toNat

end

end A396679.P15878302850912201281

/-!
# A396680: Expansion of e.g.f. -log(1 + W_3(-x)), where W_k(x) is the k-th iterate of LambertW(x).

The programs for A396680, there is no canonical definition to state claims against.
-/

/-! ## A396680.P16573648073899239303

`A396676(A141214(n+1))`
-/

namespace A396680.P16573648073899239303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396676 (A141214 (n + 1)).toNat

end

end A396680.P16573648073899239303

/-!
# A396681: Number of iterations for the n-th prime to reach 2 under the function f(p) = smallest odd prime factor of 5*p+1 or 2 if 5*p+1 is a power of 2.

The programs for A396681, there is no canonical definition to state claims against.
-/

/-! ## A396681.P12268508747926564238

`A275019(A026657(n))`
-/

namespace A396681.P12268508747926564238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (A026657 n).toNat

end

end A396681.P12268508747926564238

/-! ## A396681.P3924906117109582921

`A001221(A007088(2*n)+A000108(n))`
-/

namespace A396681.P3924906117109582921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007088 (2 * n) + A000108 n).toNat

end

end A396681.P3924906117109582921

/-!
# A396683: a(n) is the number of divisors of A006863(n).

The programs for A396683, there is no canonical definition to state claims against.
-/

/-! ## A396683.P13304479810320514842

`A000005(A006863(n))`
-/

namespace A396683.P13304479810320514842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006863 n).toNat

end

end A396683.P13304479810320514842

/-! ## A396683.P10052974047889881842

`∏{e}[A006863(n), A376573(#)]`
-/

namespace A396683.P10052974047889881842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A376573 (Nat.factorization (f1 n).natAbs p)

end

end A396683.P10052974047889881842

/-!
# A396684: Numbers k such that 2*k is the range of A002322, the reduced totient function.

The programs for A396684, there is no canonical definition to state claims against.
-/

/-! ## A396684.P16337853500046716276

`A002174(n+2)/2`
-/

namespace A396684.P16337853500046716276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002174 (n + 2) : ℚ) / 2

end

end A396684.P16337853500046716276

/-! ## A396684.P9111923318274875490

`A001281(A002174(n+2))`
-/

namespace A396684.P9111923318274875490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002174 (n + 2)).toNat

end

end A396684.P9111923318274875490

/-! ## A396684.P10487930489411256148

`A002616(A002396(n+2))`
-/

namespace A396684.P10487930489411256148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A002396 (n + 2)).toNat

end

end A396684.P10487930489411256148

/-! ## A396684.P13035633406146214721

`lt[A128076(A133263(n)), A001897(n)]`
-/

namespace A396684.P13035633406146214721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A133263 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396684.P13035633406146214721

/-! ## A396684.P16915759244866609880

`lt[A080594(A005385(n+1)), A002445(n)]`
-/

namespace A396684.P16915759244866609880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080594 (A005385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396684.P16915759244866609880

/-! ## A396684.P1489328389807936500

`lt[A001462(A328205(n+1)), A002445(n)]`
-/

namespace A396684.P1489328389807936500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A328205 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396684.P1489328389807936500

/-! ## A396684.P18219952042631805601

`lt[A087739(n+1), sqrt(A002445(n))]`
-/

namespace A396684.P18219952042631805601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002445 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A396684.P18219952042631805601

/-!
# A396685: Numbers k such that 2*k is not the range of A002322, the reduced totient function.

The programs for A396685, there is no canonical definition to state claims against.
-/

/-! ## A396685.P1276424393069787863

`eq[0, A060171(n+1)]+1`
-/

namespace A396685.P1276424393069787863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396685.P1276424393069787863

/-! ## A396685.P5299787277008898067

`lt[A001897(n)-A120881(A134860(n+1)+1), n]`
-/

namespace A396685.P5299787277008898067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n - A120881 (A134860 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396685.P5299787277008898067

/-! ## A396685.P10390814416780531643

`lt[A140812(n), A023836(A000124(n))]`
-/

namespace A396685.P10390814416780531643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023836 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396685.P10390814416780531643

/-! ## A396685.P8320231387750400431

`lt[A001897(n), A128076(A133263(n))]`
-/

namespace A396685.P8320231387750400431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A133263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396685.P8320231387750400431

/-! ## A396685.P4680396433012110562

`lt[A001897(n)-A120881(A186390(n+1)+1), n]`
-/

namespace A396685.P4680396433012110562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n - A120881 (A186390 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396685.P4680396433012110562

/-!
# A396686: a(n) = floor(2*log_2(n)) + 2.

The programs for A396686, the canonical program `A396686.P3676614447419960955` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396686 has offset 1).

The definition of A396686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396686.P669259925860771292

`floor(2*log2(n+1))+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396686.P669259925860771292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.logb 2 (n + 1 : ℝ)⌋ + 2

end

end A396686.P669259925860771292

namespace A396686

/-- `floor(2*log2(n+1))+2` -/
def P669259925860771292.Spec : Prop :=
  ∀ n, P669259925860771292.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P3676614447419960955

`A070939(2*(n+1)²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A396686

/-- `A070939(2*(n+1)²)` -/
def P3676614447419960955.Spec : Prop :=
  ∀ n, P3676614447419960955.a n = A396686 (n + 1)

theorem P3676614447419960955.correct : P3676614447419960955.Spec := by
  intro n
  simp only [A396686, Nat.add_sub_cancel]

end A396686

/-! ## A396686.P7485674179579129972

`ceil(log2(C(2*n+3, 2)))`
-/

namespace A396686.P7485674179579129972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose (2 * n + 3) 2 : ℝ)⌉

end

end A396686.P7485674179579129972

namespace A396686

/-- `ceil(log2(C(2*n+3, 2)))` -/
def P7485674179579129972.Spec : Prop :=
  ∀ n, P7485674179579129972.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P8841470684925029979

`ceil(abs(log2(Δ[atan(2*n+1)])))`
-/

namespace A396686.P8841470684925029979
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (f1 (n + 1) - f1 n)|⌉

end

end A396686.P8841470684925029979

namespace A396686

/-- `ceil(abs(log2(Δ[atan(2*n+1)])))` -/
def P8841470684925029979.Spec : Prop :=
  ∀ n, P8841470684925029979.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P9521467281720208626

`ceil(-log2(Δ[atan(2*n+1)]))`
-/

namespace A396686.P9521467281720208626
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.logb 2 (f1 (n + 1) - f1 n)⌉

end

end A396686.P9521467281720208626

namespace A396686

/-- `ceil(-log2(Δ[atan(2*n+1)]))` -/
def P9521467281720208626.Spec : Prop :=
  ∀ n, P9521467281720208626.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P7512184673894944585

`ceil(log2((2*n+1)/acot(n+2)))`
-/

namespace A396686.P7512184673894944585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ))⌉

end

end A396686.P7512184673894944585

namespace A396686

/-- `ceil(log2((2*n+1)/acot(n+2)))` -/
def P7512184673894944585.Spec : Prop :=
  ∀ n, P7512184673894944585.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P8211555999473269357

`A070941((n+1)²)`
-/

namespace A396686.P8211555999473269357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 ((n + 1) ^ 2)

end

end A396686.P8211555999473269357

namespace A396686

/-- `A070941((n+1)²)` -/
def P8211555999473269357.Spec : Prop :=
  ∀ n, P8211555999473269357.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P15355520740666705811

`floor(log2(A002943(n+1)))`
-/

namespace A396686.P15355520740666705811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A002943 (n + 1)).toNat

end

end A396686.P15355520740666705811

namespace A396686

/-- `floor(log2(A002943(n+1)))` -/
def P15355520740666705811.Spec : Prop :=
  ∀ n, (P15355520740666705811.a n : ℤ) = A396686 (n + 1)

end A396686

/-! ## A396686.P16498889630989884600

`floor(log2(A005899(n+1)))`
-/

namespace A396686.P16498889630989884600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A005899 (n + 1)).toNat

end

end A396686.P16498889630989884600

namespace A396686

/-- `floor(log2(A005899(n+1)))` -/
def P16498889630989884600.Spec : Prop :=
  ∀ n, (P16498889630989884600.a n : ℤ) = A396686 (n + 1)

end A396686

/-!
# A396689: Numbers k such that binomial(x + 4, 5) - binomial(x, 5) = k^2 for some integer x >= 5.

The programs for A396689, the canonical program `A396689.P6792333059227703695` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396689 has offset 1).

The definition of A396689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396689.P6792333059227703695

`A216073(n+2)*A080806(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A396689

/-- `A216073(n+2)*A080806(n+2)` -/
def P6792333059227703695.Spec : Prop :=
  ∀ n, P6792333059227703695.a n = A396689 (n + 1)

theorem P6792333059227703695.correct : P6792333059227703695.Spec := by
  intro n
  simp only [A396689, Nat.add_sub_cancel]

end A396689

/-! ## A396689.P8466386527192685144

`A077410(A014601(n+1))`
-/

namespace A396689.P8466386527192685144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (A014601 (n + 1)).toNat

end

end A396689.P8466386527192685144

namespace A396689

/-- `A077410(A014601(n+1))` -/
def P8466386527192685144.Spec : Prop :=
  ∀ n, P8466386527192685144.a n = A396689 (n + 1)

end A396689

/-! ## A396689.P6125538510078836650

`A077410(A154708(n+1))`
-/

namespace A396689.P6125538510078836650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (A154708 (n + 1)).toNat

end

end A396689.P6125538510078836650

namespace A396689

/-- `A077410(A154708(n+1))` -/
def P6125538510078836650.Spec : Prop :=
  ∀ n, P6125538510078836650.a n = A396689 (n + 1)

end A396689

/-! ## A396689.P14903737937208100330

`(A181442(n+1)+A077288(n+1))*A216073(n+2)`
-/

namespace A396689.P14903737937208100330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181442 (n + 1) + A077288 (n + 1)) * A216073 (n + 2)

end

end A396689.P14903737937208100330

namespace A396689

/-- `(A181442(n+1)+A077288(n+1))*A216073(n+2)` -/
def P14903737937208100330.Spec : Prop :=
  ∀ n, P14903737937208100330.a n = A396689 (n + 1)

end A396689

/-! ## A396689.P8934248291889812041

`(A179934(n+1)-A129444(n+2))*A216073(n+2)`
-/

namespace A396689.P8934248291889812041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179934 (n + 1) - A129444 (n + 2)) * A216073 (n + 2)

end

end A396689.P8934248291889812041

namespace A396689

/-- `(A179934(n+1)-A129444(n+2))*A216073(n+2)` -/
def P8934248291889812041.Spec : Prop :=
  ∀ n, P8934248291889812041.a n = A396689 (n + 1)

end A396689

/-!
# A396690: Number of permutations p of [n+2] such that |p(i+1)-p(i)| <> n for all 1 <= i < n+2.

The programs for A396690, there is no canonical definition to state claims against.
-/

/-! ## A396690.P12479715209170710073

`A259759(A166963(n))`
-/

namespace A396690.P12479715209170710073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259759 (A166963 n).toNat

end

end A396690.P12479715209170710073

