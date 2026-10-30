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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C003
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

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
# A396602: Odd numbers k where sigma_5(k)/k is an integer.

The programs for A396602, there is no canonical definition to state claims against.
-/

/-! ## A396602.P16467588830927445183

`filter[A055709(n+1), A374134(#)]`
-/

namespace A396602.P16467588830927445183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A396602.P16467588830927445183

/-! ## A396602.P10776687652559517927

`filter[A055709(n+1), A379952(#)]`
-/

namespace A396602.P10776687652559517927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A396602.P10776687652559517927

/-! ## A396602.P3533400764045016912

`filter[A055709(n+1), A347871(#)]`
-/

namespace A396602.P3533400764045016912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A396602.P3533400764045016912

/-!
# A396607: Lexicographically earliest sequence of distinct nonnegative integers whose binary values, when written on a square spiral, one bit per square, high order bits first, contain no pair of 1 bits that are diagonally adjacent.

The programs for A396607, there is no canonical definition to state claims against.
-/

/-! ## A396607.P16844045200373185344

`A359906(a(n-2))^(n+2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A396607.P16844045200373185344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  A359906 (a (n - 2)).toNat ^ (n + 2)

end

end A396607.P16844045200373185344

/-! ## A396607.P2005972686014333359

`A178133(A083184(n+1))`
-/

namespace A396607.P2005972686014333359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (A083184 (n + 1)).toNat

end

end A396607.P2005972686014333359

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

/-! ## A396622.P16834620557563751001

`A377336(A377358(n))+A377322(n)`
-/

namespace A396622.P16834620557563751001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377336 (A377358 n).toNat + A377322 n

end

end A396622.P16834620557563751001

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

/-! ## A396624.P12115019342812682372

`A326841(A096114(2*(n+1))*A208301(n+1))`
-/

namespace A396624.P12115019342812682372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (A096114 (2 * (n + 1)) * A208301 (n + 1)).toNat

end

end A396624.P12115019342812682372

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

/-! ## A396630.P4946649364160048340

`A004526(A099237(n)-col(A038315(n)))`
-/

namespace A396630.P4946649364160048340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A099237 n - (SequenceMachineLib.triCol (A038315 n).toNat : ℤ)).toNat

end

end A396630.P4946649364160048340

/-! ## A396630.P13870465086618362558

`A172233(A148423(n))`
-/

namespace A396630.P13870465086618362558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172233 (A148423 n).toNat

end

end A396630.P13870465086618362558

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

/-! ## A396633.P17534602364927639970

`∩[A009993(n+1), A046732(n+1)]`
-/

namespace A396633.P17534602364927639970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P17534602364927639970

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

/-! ## A396633.P15188283068226841854

`∩[A046732(n+1), A052015(n+1)]`
-/

namespace A396633.P15188283068226841854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396633.P15188283068226841854

/-!
# A396634: Number of spanning trees of the coprime graph on vertices {1, 2, ..., n}.

The programs for A396634, there is no canonical definition to state claims against.
-/

/-! ## A396634.P9326610709973029447

`A290731(A010060(n)+A006153(n))`
-/

namespace A396634.P9326610709973029447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A010060 n + A006153 n).toNat

end

end A396634.P9326610709973029447

/-! ## A396634.P13669893244435027257

`A290731(A331126(2*n)+A006153(n))`
-/

namespace A396634.P13669893244435027257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A331126 (2 * n) + A006153 n).toNat

end

end A396634.P13669893244435027257

/-!
# A396637: Number of elements of geodesic length n in the braid group B_3.

The programs for A396637, the canonical program `A396637.P12568346666122777158` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396637 has offset 0).

The definition of A396637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396637.P12568346666122777158

`ogf((1-x^3-2x^4)/(1-4x+4x^2+x^3-2x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396637

/-- `ogf((1-x^3-2x^4)/(1-4x+4x^2+x^3-2x^4))` -/
def P12568346666122777158.Spec : Prop :=
  ∀ n, P12568346666122777158.a n = A396637 n

theorem P12568346666122777158.correct : P12568346666122777158.Spec := by
  intro n
  simp only [A396637]

end A396637

/-! ## A396637.P18262143251193077548

`A068293(n+1)-A168193(n)`
-/

namespace A396637.P18262143251193077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068293 (n + 1) - A168193 n

end

end A396637.P18262143251193077548

namespace A396637

/-- `A068293(n+1)-A168193(n)` -/
def P18262143251193077548.Spec : Prop :=
  ∀ n, P18262143251193077548.a n = A396637 n

end A396637

/-! ## A396637.P1218916730941823388

`A074878(n+2)-A040000(n)`
-/

namespace A396637.P1218916730941823388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 2) - A040000 n

end

end A396637.P1218916730941823388

namespace A396637

/-- `A074878(n+2)-A040000(n)` -/
def P1218916730941823388.Spec : Prop :=
  ∀ n, P1218916730941823388.a n = A396637 n

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

/-!
# A396638: Number of geodesics of length n in the braid group B_3.

The programs for A396638, the canonical program `A396638.P12202203418892401005` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396638 has offset 0).

The definition of A396638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396638.P12202203418892401005

`ogf((1+x+3x^3+x^4)/(1-3x+3x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396638

/-- `ogf((1+x+3x^3+x^4)/(1-3x+3x^3+x^4))` -/
def P12202203418892401005.Spec : Prop :=
  ∀ n, P12202203418892401005.a n = A396638 n

theorem P12202203418892401005.correct : P12202203418892401005.Spec := by
  intro n
  simp only [A396638]

end A396638

/-! ## A396638.P13865793781855701682

`A008574(A006684(n+1))`
-/

namespace A396638.P13865793781855701682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A006684 (n + 1)).toNat

end

end A396638.P13865793781855701682

namespace A396638

/-- `A008574(A006684(n+1))` -/
def P13865793781855701682.Spec : Prop :=
  ∀ n, P13865793781855701682.a n = A396638 n

end A396638

/-! ## A396638.P7063512883210571803

`A028310(4*A006684(n+1))`
-/

namespace A396638.P7063512883210571803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (4 * A006684 (n + 1)).toNat

end

end A396638.P7063512883210571803

namespace A396638

/-- `A028310(4*A006684(n+1))` -/
def P7063512883210571803.Spec : Prop :=
  ∀ n, P7063512883210571803.a n = A396638 n

end A396638

/-!
# A396639: Number of elements of geodesic length n in the braid group B_4.

The programs for A396639, there is no canonical definition to state claims against.
-/

/-! ## A396639.P7094299404286023633

`A345911(A018028(n))-A000045(n)`
-/

namespace A396639.P7094299404286023633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345911 (A018028 n).toNat - A000045 n

end

end A396639.P7094299404286023633

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

The programs for A396641, the canonical program `A396641.P2215949741411272717` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396641 has offset 1).

The definition of A396641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396641.P2215949741411272717

`(6*A253880(n+1)+1)/7`

The canonical program, it is in `Seq.B001.C014`.
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

/-! ## A396642.P2026933822076101586

`∩[A285800(n+1), A325283(n+1)]`
-/

namespace A396642.P2026933822076101586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396642.P2026933822076101586

/-! ## A396642.P12165227479064952956

`∩[A036438(n+1), A357874(n+1)]`
-/

namespace A396642.P12165227479064952956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396642.P12165227479064952956

/-! ## A396642.P251548538172419797

`∩[A338519(n+1), A357874(n+1)]`
-/

namespace A396642.P251548538172419797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396642.P251548538172419797

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

/-! ## A396642.P7734019508256710048

`∩[A317534(n+1), A340380(n+1)]`
-/

namespace A396642.P7734019508256710048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396642.P7734019508256710048

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

/-! ## A396647.P9381643439191381726

`A046698(A204926(2*n+3))*A230577(n+1)`
-/

namespace A396647.P9381643439191381726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A204926 (2 * n + 3)).toNat * A230577 (n + 1)

end

end A396647.P9381643439191381726

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

/-! ## A396647.P11998793961028034160

`A046698(A077238(n))*A230577(n+1)`
-/

namespace A396647.P11998793961028034160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A077238 n).toNat * A230577 (n + 1)

end

end A396647.P11998793961028034160

/-! ## A396647.P3103436771847286845

`A230577(n+1)*A351235(A092927(n+1))`
-/

namespace A396647.P3103436771847286845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230577 (n + 1) * A351235 (A092927 (n + 1)).toNat

end

end A396647.P3103436771847286845

/-! ## A396647.P1445609056534829074

`A230577(n+1)*A249822(A101881(2*n+3))`
-/

namespace A396647.P1445609056534829074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230577 (n + 1) * A249822 (A101881 (2 * n + 3)).toNat

end

end A396647.P1445609056534829074

/-!
# A396648: Row sums of A396585.

The programs for A396648, the canonical program `A396648.P12511411540174210681` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396648 has offset 0).

The definition of A396648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396648.P12511411540174210681

`A133053(n+1)-A172361(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A396648

/-- `A133053(n+1)-A172361(n+1)` -/
def P12511411540174210681.Spec : Prop :=
  ∀ n, P12511411540174210681.a n = A396648 n

theorem P12511411540174210681.correct : P12511411540174210681.Spec := by
  intro n
  simp only [A396648]

end A396648

/-!
# A396649: Array read by ascending antidiagonals: A(n, k) = (-1)^k*(n - 3*k)*binomial(n+k-1, k) / n for n > 0, T(0, 0) = 1, and T(0, k) = (-1)^(k+1)*3 for k > 0.

The programs for A396649, there is no canonical definition to state claims against.
-/

/-! ## A396649.P16701628202127660747

`T(n-1,k)-T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A396649.P16701628202127660747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n

end

end A396649.P16701628202127660747

/-!
# A396651: Triangle read by rows: the coefficients of the polynomials P(n, x) = x * P(n-1, x) + P(n-2, x), where P(0, x) = 1 and P(1, x) = 4*x, ordered by ascending powers.

The programs for A396651, the canonical program `A396651.P1106920181312554847` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396651 has offset 0).

The definition of A396651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396651.P1106920181312554847

`T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396651

/-- `T(n-1,k-1)+T(n-2,k)` -/
def P1106920181312554847.Spec : Prop :=
  ∀ n, (P1106920181312554847.a n : ℤ) = A396651 n

theorem P1106920181312554847.correct : P1106920181312554847.Spec := by
  intro n
  simp only [A396651]

end A396651

/-!
# A396652: a(n) = (2*n-3-(-1)^n)*(6*n+1-(-1)^n)/8.

The programs for A396652, the canonical program `A396652.P9419091518121404480` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396652 has offset 0).

The definition of A396652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396652.P3847551577910755040

`ogf((10x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A396652.P3847551577910755040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 10, 2] [1, -1, -2, 2, 1, -1] n

end

end A396652.P3847551577910755040

namespace A396652

/-- `ogf((10x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P3847551577910755040.Spec : Prop :=
  ∀ n, P3847551577910755040.a n = A396652 n

end A396652

/-! ## A396652.P9419091518121404480

`2*floor((n-1)/2)*(n+1+floor((n-1)/2))`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A396652.P8504253400768767322

`∑{#}[floor((n-1)/2)-1, 2*n+4*(#+1)]`
-/

namespace A396652.P8504253400768767322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 * n + 4 * (k + 1))

end

end A396652.P8504253400768767322

namespace A396652

/-- `∑{#}[floor((n-1)/2)-1, 2*n+4*(#+1)]` -/
def P8504253400768767322.Spec : Prop :=
  ∀ n, (P8504253400768767322.a n : ℤ) = A396652 n

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
# A396658: Consider the 0-indexed spiral on a hexagonal grid, as in A395365. Three players, Red, Green and Blue, take turns and place knights at the smallest unoccupied cell not attacked by an opposing knight, where Red is only opposed by Blue, Green by Red and Blue by Green. Sequence lists cells occupied by Blue knights.

The programs for A396658, there is no canonical definition to state claims against.
-/

/-! ## A396658.P15993570627644715534

`eq[(2*n)%3, A002850(A029937(n+1)+1)]`
-/

namespace A396658.P15993570627644715534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002850 (A029937 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396658.P15993570627644715534

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

/-! ## A396665.P7355914394383627180

`A001221(A325923(n+2)+1)`
-/

namespace A396665.P7355914394383627180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325923 (n + 2) + 1).toNat

end

end A396665.P7355914394383627180

/-! ## A396665.P4479579152025808657

`A332894(n+1)-A007949(A322381(n))`
-/

namespace A396665.P4479579152025808657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (n + 1) - A007949 (A322381 n).toNat

end

end A396665.P4479579152025808657

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
# A396670: Binary colorings of the sunlet graph S_n up to rotation, with no monochromatic connected component of size 3 or more.

The programs for A396670, the canonical program `A396670.P15040176529343827376` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396670 has offset 3).

The definition of A396670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396670.P15040176529343827376

`1/(n+3)*∑{d}[n+3, A000010((n+3)/#)*((1+sqrt(2))^#+(1-sqrt(2))^#+2*(-1)^#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396670

/-- `1/(n+3)*∑{d}[n+3, A000010((n+3)/#)*((1+sqrt(2))^#+(1-sqrt(2))^#+2*(-1)^#)]` -/
def P15040176529343827376.Spec : Prop :=
  ∀ n, P15040176529343827376.a n = (A396670 (n + 3) : ℝ)

end A396670

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

/-! ## A396677.P16851733685923690212

`A396675(A052905(n+1)-A272215(n+1))`
-/

namespace A396677.P16851733685923690212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396675 (A052905 (n + 1) - A272215 (n + 1)).toNat

end

end A396677.P16851733685923690212

/-! ## A396677.P10723713216541775842

`A396675(A137442(2*n+3)-A000217(n))`
-/

namespace A396677.P10723713216541775842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396675 (A137442 (2 * n + 3) - A000217 n).toNat

end

end A396677.P10723713216541775842

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

/-! ## A396678.P2877869889855897372

`A396675(A052905(n+1)+2)`
-/

namespace A396678.P2877869889855897372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396675 (A052905 (n + 1) + 2).toNat

end

end A396678.P2877869889855897372

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

/-! ## A396679.P11654004304505864497

`record[A010054(n+3)*A396676(n+1)]`
-/

namespace A396679.P11654004304505864497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A396676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396679.P11654004304505864497

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

/-! ## A396681.P9789442131024050576

`A037812(A055820(3*n+5)-A050166(3*(n+1)))`
-/

namespace A396681.P9789442131024050576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A055820 (3 * n + 5) - A050166 (3 * (n + 1))).toNat

end

end A396681.P9789442131024050576

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

/-! ## A396683.P16667627109764245857

`∑{d}[A006863(n), A033999(2*n)^#]`
-/

namespace A396683.P16667627109764245857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033999 (2 * n) ^ d

end

end A396683.P16667627109764245857

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

/-! ## A396684.P13293938061178074548

`A302042(A002174(2+n))`
-/

namespace A396684.P13293938061178074548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A002174 (2 + n)).toNat

end

end A396684.P13293938061178074548

/-! ## A396684.P14123526852943925481

`A004525(∩[2*n, A002174(n+1)])`
-/

namespace A396684.P14123526852943925481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A396684.P14123526852943925481

/-! ## A396684.P9111923318274875490

`A001281(A002174(n+2))`
-/

namespace A396684.P9111923318274875490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002174 (n + 2)).toNat

end

end A396684.P9111923318274875490

/-! ## A396684.P10294926744757493844

`A065033(A002174(n+1)+Δ[A002174(n+1)])`
-/

namespace A396684.P10294926744757493844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002174 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A396684.P10294926744757493844

/-! ## A396684.P10487930489411256148

`A002616(A002396(n+2))`
-/

namespace A396684.P10487930489411256148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A002396 (n + 2)).toNat

end

end A396684.P10487930489411256148

/-! ## A396684.P17493110160293890116

`A400855(n+1)%A303166(A319804(3*n+4))`
-/

namespace A396684.P17493110160293890116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400855 (n + 1)) (A303166 (A319804 (3 * n + 4)).toNat)

end

end A396684.P17493110160293890116

/-! ## A396684.P7393667044579930501

`A400855(n+1)%A000330(A004050(n+1))`
-/

namespace A396684.P7393667044579930501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400855 (n + 1)) (A000330 (A004050 (n + 1)).toNat)

end

end A396684.P7393667044579930501

/-! ## A396684.P17895916597380098715

`and(A086827(n+1), A400855(n+1))`
-/

namespace A396684.P17895916597380098715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A400855 (n + 1))

end

end A396684.P17895916597380098715

/-! ## A396684.P6536959730463379811

`lt[A362668(2*n+3), A400854(n+1)²]+1`
-/

namespace A396684.P6536959730463379811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362668 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400854 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396684.P6536959730463379811

/-! ## A396684.P17001476613588407593

`lt[A375674(A348934(n+1)), A002445(n)]`
-/

namespace A396684.P17001476613588407593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375674 (A348934 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396684.P17001476613588407593

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

/-!
# A396685: Numbers k such that 2*k is not the range of A002322, the reduced totient function.

The programs for A396685, there is no canonical definition to state claims against.
-/

/-! ## A396685.P15347731419738259397

`comp[A396684(n+1)-1]+1`
-/

namespace A396685.P15347731419738259397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396685.P15347731419738259397

/-! ## A396685.P14111453907355225378

`comp[A023443(A396684(n+1))]+1`
-/

namespace A396685.P14111453907355225378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A396684 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396685.P14111453907355225378

/-! ## A396685.P10606336909349334859

`comp[A032742(A002174(n+1))-1]+1`
-/

namespace A396685.P10606336909349334859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002174 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396685.P10606336909349334859

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

/-! ## A396685.P6929606751726148602

`lt[A060171(n+1), A037831(A051373(n+1))]+1`
-/

namespace A396685.P6929606751726148602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A051373 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396685.P6929606751726148602

/-!
# A396686: a(n) = floor(2*log_2(n)) + 2.

The programs for A396686, the canonical program `A396686.P3676614447419960955` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396686 has offset 1).

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

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396686

/-- `A070939(2*(n+1)²)` -/
def P3676614447419960955.Spec : Prop :=
  ∀ n, P3676614447419960955.a n = A396686 (n + 1)

theorem P3676614447419960955.correct : P3676614447419960955.Spec := by
  intro n
  simp only [A396686, Nat.add_sub_cancel]

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

/-! ## A396686.P43519953678921572

`floor(log2(∑[A017113(n)]))`
-/

namespace A396686.P43519953678921572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A396686.P43519953678921572

namespace A396686

/-- `floor(log2(∑[A017113(n)]))` -/
def P43519953678921572.Spec : Prop :=
  ∀ n, (P43519953678921572.a n : ℤ) = A396686 (n + 1)

end A396686

/-! ## A396686.P14361556557766944232

`floor(log2(A184635(n+1)))`
-/

namespace A396686.P14361556557766944232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A184635 (n + 1)).toNat

end

end A396686.P14361556557766944232

namespace A396686

/-- `floor(log2(A184635(n+1)))` -/
def P14361556557766944232.Spec : Prop :=
  ∀ n, (P14361556557766944232.a n : ℤ) = A396686 (n + 1)

end A396686

/-! ## A396686.P480685797734178688

`ceil(log2(A005893(n+1)))`
-/

namespace A396686.P480685797734178688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A005893 (n + 1) : ℝ)⌉

end

end A396686.P480685797734178688

namespace A396686

/-- `ceil(log2(A005893(n+1)))` -/
def P480685797734178688.Spec : Prop :=
  ∀ n, P480685797734178688.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P137090158085024731

`floor(log2(Δ[A001845(n)]))`
-/

namespace A396686.P137090158085024731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat

end

end A396686.P137090158085024731

namespace A396686

/-- `floor(log2(Δ[A001845(n)]))` -/
def P137090158085024731.Spec : Prop :=
  ∀ n, (P137090158085024731.a n : ℤ) = A396686 (n + 1)

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

/-! ## A396686.P6731413445500865430

`floor(log2(A016742(n+1)))`
-/

namespace A396686.P6731413445500865430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A016742 (n + 1)).toNat

end

end A396686.P6731413445500865430

namespace A396686

/-- `floor(log2(A016742(n+1)))` -/
def P6731413445500865430.Spec : Prop :=
  ∀ n, (P6731413445500865430.a n : ℤ) = A396686 (n + 1)

end A396686

/-! ## A396686.P691282582031655694

`floor(log2(A053755(n+1)))`
-/

namespace A396686.P691282582031655694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A053755 (n + 1)).toNat

end

end A396686.P691282582031655694

namespace A396686

/-- `floor(log2(A053755(n+1)))` -/
def P691282582031655694.Spec : Prop :=
  ∀ n, (P691282582031655694.a n : ℤ) = A396686 (n + 1)

end A396686

/-! ## A396686.P13537649533925347454

`floor(log2(A222465(n+1)))`
-/

namespace A396686.P13537649533925347454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A222465 (n + 1)).toNat

end

end A396686.P13537649533925347454

namespace A396686

/-- `floor(log2(A222465(n+1)))` -/
def P13537649533925347454.Spec : Prop :=
  ∀ n, (P13537649533925347454.a n : ℤ) = A396686 (n + 1)

end A396686

/-! ## A396686.P10990596719247218098

`ceil(log2(A008084(n+1)))`
-/

namespace A396686.P10990596719247218098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A008084 (n + 1) : ℝ)⌉

end

end A396686.P10990596719247218098

namespace A396686

/-- `ceil(log2(A008084(n+1)))` -/
def P10990596719247218098.Spec : Prop :=
  ∀ n, P10990596719247218098.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P8483829352425098801

`ceil(log2(A008239(n+1)))`
-/

namespace A396686.P8483829352425098801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A008239 (n + 1) : ℝ)⌉

end

end A396686.P8483829352425098801

namespace A396686

/-- `ceil(log2(A008239(n+1)))` -/
def P8483829352425098801.Spec : Prop :=
  ∀ n, P8483829352425098801.a n = A396686 (n + 1)

end A396686

/-! ## A396686.P1837224672075724749

`A121663(A053644((n+1)²))`
-/

namespace A396686.P1837224672075724749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A053644 ((n + 1) ^ 2)).toNat

end

end A396686.P1837224672075724749

namespace A396686

/-- `A121663(A053644((n+1)²))` -/
def P1837224672075724749.Spec : Prop :=
  ∀ n, P1837224672075724749.a n = A396686 (n + 1)

end A396686

/-!
# A396689: Numbers k such that binomial(x + 4, 5) - binomial(x, 5) = k^2 for some integer x >= 5.

The programs for A396689, the canonical program `A396689.P6792333059227703695` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396689 has offset 1).

The definition of A396689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396689.P9939042133765730828

`ogf((21+119x+x^2-x^3)/(1-98x^2+x^4))`
-/

namespace A396689.P9939042133765730828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 119, 1, -1] [1, 0, -98, 0, 1] n

end

end A396689.P9939042133765730828

namespace A396689

/-- `ogf((21+119x+x^2-x^3)/(1-98x^2+x^4))` -/
def P9939042133765730828.Spec : Prop :=
  ∀ n, P9939042133765730828.a n = A396689 (n + 1)

end A396689

/-! ## A396689.P6792333059227703695

`A216073(n+2)*A080806(n+2)`

The canonical program, it is in `Seq.B001.C014`.
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

/-! ## A396689.P1264832788945769300

`A245031(n+3)-A245031(n+1)`
-/

namespace A396689.P1264832788945769300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (n + 3) - A245031 (n + 1)

end

end A396689.P1264832788945769300

namespace A396689

/-- `A245031(n+3)-A245031(n+1)` -/
def P1264832788945769300.Spec : Prop :=
  ∀ n, P1264832788945769300.a n = A396689 (n + 1)

end A396689

/-! ## A396689.P8201706654233848592

`A080806(n+2)*A216073(n+2)`
-/

namespace A396689.P8201706654233848592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 2) * A216073 (n + 2)

end

end A396689.P8201706654233848592

namespace A396689

/-- `A080806(n+2)*A216073(n+2)` -/
def P8201706654233848592.Spec : Prop :=
  ∀ n, P8201706654233848592.a n = A396689 (n + 1)

theorem P8201706654233848592.correct : P8201706654233848592.Spec := by
  intro n
  simp only [A396689, Nat.add_sub_cancel, A396689.P8201706654233848592.a, A396689.P6792333059227703695.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A396690.P7897410864663597266

`A348715(a(n-1))` with `a(0)=2, a(1)=0, a(2)=8`
-/

namespace A396690.P7897410864663597266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 8] fun n a =>
  A348715 (a (n - 1)).toNat

end

end A396690.P7897410864663597266

/-!
# A396691: a(n) = Sum_{k=0..n} binomial(4*n+2*k,k).

The programs for A396691, the canonical program `A396691.P5579847914221138822` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396691 has offset 0).

The definition of A396691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2*#, #)]` (program `A396691.P5579847914221138822`, by `A396691.P5579847914221138822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396691.P5579847914221138822

`∑{#}[n, C(4*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396691

/-- `∑{#}[n, C(4*n+2*#, #)]` -/
def P5579847914221138822.Spec : Prop :=
  ∀ n, (P5579847914221138822.a n : ℤ) = A396691 n

theorem P5579847914221138822.correct : P5579847914221138822.Spec := by
  intro n
  simp only [A396691]

end A396691

/-!
# A396693: a(n) is the number of order-n row-magic triangles formed by arranging the integers from 1 to n*(n+1)/2 exactly once in a triangular array, such that, for every k from 2 to n, the sums of the three corner-anchored triangular subarrays of side length k are equal, counted up to rotations and reflections.

The programs for A396693, there is no canonical definition to state claims against.
-/

/-! ## A396693.P4583821847591189837

`A364155(a(A102125(n)))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A396693.P4583821847591189837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 2] fun n a =>
  A364155 (a (A102125 n).toNat).toNat

end

end A396693.P4583821847591189837

/-!
# A396696: a(n) is the smallest prime greater than n^2*a(n-1), with a(1) = 2.

The programs for A396696, there is no canonical definition to state claims against.
-/

/-! ## A396696.P10333447246152937882

`A151800((n+1)²*a(n-1))` with `a(0)=2`
-/

namespace A396696.P10333447246152937882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (((n + 1) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A396696.P10333447246152937882

/-!
# A396698: Number of n X n upper triangular binary matrices in which every row and every column has sum 0 or 2.

The programs for A396698, there is no canonical definition to state claims against.
-/

/-! ## A396698.P11054828164149280550

`A008615(A005651(n)+1)`
-/

namespace A396698.P11054828164149280550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005651 n + 1).toNat

end

end A396698.P11054828164149280550

/-! ## A396698.P11267791588830003231

`A103221(A005651(n)-1)`
-/

namespace A396698.P11267791588830003231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A005651 n - 1).toNat

end

end A396698.P11267791588830003231

/-! ## A396698.P12710530214129648206

`A103221(A278984(n+1)+A005651(n))`
-/

namespace A396698.P12710530214129648206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A278984 (n + 1) + A005651 n).toNat

end

end A396698.P12710530214129648206

/-!
# A396699: a(2) = 1; a(2*m) = m*(2*m^2+1)/3 - 1 for m >= 2, and a(2*m+1) = m*(m+1)*(2*m+1)/3 for m >= 1.

The programs for A396699, the canonical program `A396699.P6815226784310775407` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396699 has offset 2).

The definition of A396699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396699.P6815226784310775407

`ogf((1+2x^3-2x^5+x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396699

/-- `ogf((1+2x^3-2x^5+x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P6815226784310775407.Spec : Prop :=
  ∀ n, P6815226784310775407.a n = A396699 (n + 2)

theorem P6815226784310775407.correct : P6815226784310775407.Spec := by
  intro n
  simp only [A396699, Nat.add_sub_cancel]

end A396699

/-! ## A396699.P563274632999526943

`∑[or(1, n)]+a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A396699.P563274632999526943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A396699.P563274632999526943

namespace A396699

/-- `∑[or(1, n)]+a(n-2)` -/
def P563274632999526943.Spec : Prop :=
  ∀ n, (P563274632999526943.a n : ℤ) = A396699 (n + 2)

end A396699

/-! ## A396699.P5365667182899692933

`∑[∑[a(n-2)+2]-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A396699.P5365667182899692933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396699.P5365667182899692933

namespace A396699

/-- `∑[∑[a(n-2)+2]-a(n-1)]` -/
def P5365667182899692933.Spec : Prop :=
  ∀ n, P5365667182899692933.a n = A396699 (n + 2)

end A396699

/-! ## A396699.P15220974990933691912

`A087279(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A396699.P15220974990933691912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A087279 (n + 1) + a (n - 1)

end

end A396699.P15220974990933691912

namespace A396699

/-- `A087279(n+1)+a(n-1)` -/
def P15220974990933691912.Spec : Prop :=
  ∀ n, P15220974990933691912.a n = A396699 (n + 2)

end A396699

/-! ## A396699.P3247553313230897690

`A266464(n)+A258087(n)`
-/

namespace A396699.P3247553313230897690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n + A258087 n

end

end A396699.P3247553313230897690

namespace A396699

/-- `A266464(n)+A258087(n)` -/
def P3247553313230897690.Spec : Prop :=
  ∀ n, P3247553313230897690.a n = A396699 (n + 2)

end A396699

/-! ## A396699.P15091547413133285736

`A316261(n)-A042948(n)`
-/

namespace A396699.P15091547413133285736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316261 n - A042948 n

end

end A396699.P15091547413133285736

namespace A396699

/-- `A316261(n)-A042948(n)` -/
def P15091547413133285736.Spec : Prop :=
  ∀ n, P15091547413133285736.a n = A396699 (n + 2)

end A396699

/-! ## A396699.P15045065433645255145

`A184632(n+1)-A212970(n)`
-/

namespace A396699.P15045065433645255145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184632 (n + 1) - A212970 n

end

end A396699.P15045065433645255145

namespace A396699

/-- `A184632(n+1)-A212970(n)` -/
def P15045065433645255145.Spec : Prop :=
  ∀ n, P15045065433645255145.a n = A396699 (n + 2)

end A396699

/-! ## A396699.P11670656955802189354

`A065033(n)+A005993(n)-A065033(n+1)`
-/

namespace A396699.P11670656955802189354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A005993 n - A065033 (n + 1)

end

end A396699.P11670656955802189354

namespace A396699

/-- `A065033(n)+A005993(n)-A065033(n+1)` -/
def P11670656955802189354.Spec : Prop :=
  ∀ n, P11670656955802189354.a n = A396699 (n + 2)

end A396699

