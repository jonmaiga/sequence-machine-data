import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A203000: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (A(x)^n + 1)^n.

The programs for A203000, there is no canonical definition to state claims against.
-/

/-! ## A203000.P4504357364171595559

`A183302(A052763(n)+1)`
-/

namespace A203000.P4504357364171595559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183302 (A052763 n + 1).toNat

end

end A203000.P4504357364171595559

/-! ## A203000.P3570380163805909790

`comp[n*(n+3)]*A276625(A000110(n))`
-/

namespace A203000.P3570380163805909790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A276625 (A000110 n).toNat

end

end A203000.P3570380163805909790

/-!
# A203006: (n-1)-st elementary symmetric function of the first n Fibonacci numbers.

The programs for A203006, there is no canonical definition to state claims against.
-/

/-! ## A203006.P1656148538018300677

`abs(A158472(A046691(n)+2))`
-/

namespace A203006.P1656148538018300677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158472 (A046691 n + 2).toNat|

end

end A203006.P1656148538018300677

/-! ## A203006.P7808497350693125752

`record[gcd(A158472(n), A183568(n))]`
-/

namespace A203006.P7808497350693125752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158472 n) (A183568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203006.P7808497350693125752

/-! ## A203006.P1199899372687711710

`abs(A158472(∑[A065475(n+1)]))`
-/

namespace A203006.P1199899372687711710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A203006.P1199899372687711710

/-! ## A203006.P1691621966167944286

`A033999(n)*A158472(A046691(n)+2)`
-/

namespace A203006.P1691621966167944286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A158472 (A046691 n + 2).toNat

end

end A203006.P1691621966167944286

/-! ## A203006.P8237093543834970678

`lcm(A020985(n), A158472(A046691(n)+2))`
-/

namespace A203006.P8237093543834970678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A158472 (A046691 n + 2).toNat)

end

end A203006.P8237093543834970678

/-!
# A203007: (n-1)-st elementary symmetric function of Fibonacci numbers F(2) to F(n).

The programs for A203007, there is no canonical definition to state claims against.
-/

/-! ## A203007.P14611376775507002541

`A203006(n+2)-A003266(n+2)`
-/

namespace A203007.P14611376775507002541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203006 (n + 2) - A003266 (n + 2)

end

end A203007.P14611376775507002541

/-! ## A203007.P4724554332925793556

`record[-A107416(n+2)]`
-/

namespace A203007.P4724554332925793556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203007.P4724554332925793556

/-! ## A203007.P17686536324737747917

`-A107416(∑[n+1]+1)`
-/

namespace A203007.P17686536324737747917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203007.P17686536324737747917

/-! ## A203007.P14275007941606865056

`record[floor(acot(n)²)-A107416(n)]`
-/

namespace A203007.P14275007941606865056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A107416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203007.P14275007941606865056

/-!
# A203008: (n-1)-st elementary symmetric function of the first n odd primes; a(0) = 0.

The programs for A203008, there is no canonical definition to state claims against.
-/

/-! ## A203008.P4929955156994495110

`1/2*(A024451(1+n)-A070826(1+n))`
-/

namespace A203008.P4929955156994495110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A024451 (1 + n) - A070826 (1 + n) : ℚ)

end

end A203008.P4929955156994495110

/-! ## A203008.P14935306173979856318

`A342921(2^(n+1)-2)`
-/

namespace A203008.P14935306173979856318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342921 (2 ^ (n + 1) - 2)

end

end A203008.P14935306173979856318

/-! ## A203008.P5142383575872539160

`A278544(2^(n+1)-2)`
-/

namespace A203008.P5142383575872539160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278544 (2 ^ (n + 1) - 2)

end

end A203008.P5142383575872539160

/-! ## A203008.P4282577871944221847

`A344028(A020988(n))`
-/

namespace A203008.P4282577871944221847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A020988 n).toNat

end

end A203008.P4282577871944221847

/-!
# A203009: (n-1)-st elementary symmetric function of first n Lucas numbers, starting with L(0)=2.

The programs for A203009, there is no canonical definition to state claims against.
-/

/-! ## A203009.P11965862235124010583

`A324749(∑[∑[n+1]+1])`
-/

namespace A203009.P11965862235124010583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203009.P11965862235124010583

/-!
# A203010: (n-1)-st elementary symmetric function of first n Lucas numbers, starting with L(1)=1.

The programs for A203010, there is no canonical definition to state claims against.
-/

/-! ## A203010.P15881435883781833385

`(A203009(n+2)-A070825(n+1))/2`
-/

namespace A203010.P15881435883781833385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203009 (n + 2) - A070825 (n + 1) : ℚ) / 2

end

end A203010.P15881435883781833385

/-! ## A203010.P11751011017757155435

`A000026(A225904(n+1))*A009194(n+1)`
-/

namespace A203010.P11751011017757155435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A225904 (n + 1)).toNat * A009194 (n + 1)

end

end A203010.P11751011017757155435

/-!
# A203011: (n-1)-st elementary symmetric function of {1,3,7,15,31,63,...-1+2^n}.

The programs for A203011, there is no canonical definition to state claims against.
-/

/-! ## A203011.P3907463647000789600

`abs(A342186(A000096(n)+3))`
-/

namespace A203011.P3907463647000789600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A342186 (A000096 n + 3).toNat|

end

end A203011.P3907463647000789600

/-! ## A203011.P14001620642547042524

`abs(A342186(A134869(n+1)+1))`
-/

namespace A203011.P14001620642547042524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A342186 (A134869 (n + 1) + 1).toNat|

end

end A203011.P14001620642547042524

/-! ## A203011.P4844012705688519093

`record[gcd(A053119(n), A342186(n+1))]`
-/

namespace A203011.P4844012705688519093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053119 n) (A342186 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203011.P4844012705688519093

/-! ## A203011.P14797652583650611962

`A005329(n+1)+A005329(n+1)-A204243(n+1)`
-/

namespace A203011.P14797652583650611962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005329 (n + 1) + (A005329 (n + 1) - A204243 (n + 1))

end

end A203011.P14797652583650611962

/-! ## A203011.P11199852856578633647

`record[lcm(A342186(n+1), A346632(n))]`
-/

namespace A203011.P11199852856578633647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A342186 (n + 1)) (A346632 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203011.P11199852856578633647

/-!
# A203012: Vandermonde sequence using x^2 + xy + y^2 applied to (1,2,...,n).

The programs for A203012, there is no canonical definition to state claims against.
-/

/-! ## A203012.P5579554134391782234

`∏[A203750(n+1)/(n+1)]`
-/

namespace A203012.P5579554134391782234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203750 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203012.P5579554134391782234

/-!
# A203014: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (2*A(x)^n - 1)^n.

The programs for A203014, there is no canonical definition to state claims against.
-/

/-! ## A203014.P6352823351577340517

`A092695(A142979(n+1))`
-/

namespace A203014.P6352823351577340517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (A142979 (n + 1)).toNat

end

end A203014.P6352823351577340517

/-! ## A203014.P1638333224838609828

`or(n, A195072(A002720(n)))`
-/

namespace A203014.P1638333224838609828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A195072 (A002720 n).toNat)

end

end A203014.P1638333224838609828

/-!
# A203015: Primes p such that p + 1 or p - 1 is in A066120.

The programs for A203015, there is no canonical definition to state claims against.
-/

/-! ## A203015.P10686671076004249598

`A066120(n)+A011583(A066142(n))`
-/

namespace A203015.P10686671076004249598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066120 n + A011583 (A066142 n).toNat

end

end A203015.P10686671076004249598

/-!
# A203016: Numbers congruent to {1, 2, 3, 4} mod 6, multiplied by 3.

The programs for A203016, the canonical program `A203016.P16942968103650683207` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203016 has offset 1).

The definition of A203016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203016.P16942968103650683207

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=6, a(2)=9, a(3)=12, a(4)=21`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203016

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16942968103650683207.Spec : Prop :=
  ∀ n, P16942968103650683207.a n = A203016 (n + 1)

theorem P16942968103650683207.correct : P16942968103650683207.Spec := by
  intro n
  simp only [A203016, Nat.add_sub_cancel]

end A203016

/-! ## A203016.P12055411882291715809

`a(n-4)+18` with `a(0)=3, a(1)=6, a(2)=9, a(3)=12`
-/

namespace A203016.P12055411882291715809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 9, 12] fun n a =>
  a (n - 4) + 18

end

end A203016.P12055411882291715809

namespace A203016

/-- `a(n-4)+18` -/
def P12055411882291715809.Spec : Prop :=
  ∀ n, (P12055411882291715809.a n : ℤ) = A203016 (n + 1)

end A203016

/-! ## A203016.P8156788961835259027

`3*comp[xor(1, 3*n+1)]`
-/

namespace A203016.P8156788961835259027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A203016.P8156788961835259027

namespace A203016

/-- `3*comp[xor(1, 3*n+1)]` -/
def P8156788961835259027.Spec : Prop :=
  ∀ n, (P8156788961835259027.a n : ℤ) = A203016 (n + 1)

end A203016

/-! ## A203016.P4609116759250983846

`3*(or(1, floor(n/2))+n)`
-/

namespace A203016.P4609116759250983846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.lor 1 ⌊(n : ℚ) / 2⌋ + (n : ℤ))

end

end A203016.P4609116759250983846

namespace A203016

/-- `3*(or(1, floor(n/2))+n)` -/
def P4609116759250983846.Spec : Prop :=
  ∀ n, P4609116759250983846.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P15252652053393842114

`∑[6%xor(n, n-1)+3]`
-/

namespace A203016.P15252652053393842114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (Int.xor (n : ℤ) ((n : ℤ) - 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203016.P15252652053393842114

namespace A203016

/-- `∑[6%xor(n, n-1)+3]` -/
def P15252652053393842114.Spec : Prop :=
  ∀ n, P15252652053393842114.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P15662952020679159086

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=3, a(2)=3, a(3)=3, a(4)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A203016.P15662952020679159086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 3, 3, 9] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203016.P15662952020679159086

namespace A203016

/-- `∑[floor(a(n-4))]` -/
def P15662952020679159086.Spec : Prop :=
  ∀ n, (P15662952020679159086.a n : ℤ) = A203016 (n + 1)

end A203016

/-! ## A203016.P11459842687184133489

`∑[round(a(n-4))]` with `a(0)=3, a(1)=3, a(2)=3, a(3)=3, a(4)=9`

`round` is left out, it is the identity on integers.
-/

namespace A203016.P11459842687184133489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 3, 3, 9] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203016.P11459842687184133489

namespace A203016

/-- `∑[round(a(n-4))]` -/
def P11459842687184133489.Spec : Prop :=
  ∀ n, (P11459842687184133489.a n : ℤ) = A203016 (n + 1)

end A203016

/-! ## A203016.P6267617336567535388

`3*((or(3, n)-1)/2+n)`
-/

namespace A203016.P6267617336567535388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((Nat.lor 3 n : ℤ) - 1 : ℚ) / 2 + (n : ℚ))

end

end A203016.P6267617336567535388

namespace A203016

/-- `3*((or(3, n)-1)/2+n)` -/
def P6267617336567535388.Spec : Prop :=
  ∀ n, P6267617336567535388.a n = (A203016 (n + 1) : ℚ)

end A203016

/-! ## A203016.P5273262428052793081

`3*(n-(1-or(3, n))/2)`
-/

namespace A203016.P5273262428052793081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) - (1 - (Nat.lor 3 n : ℤ) : ℚ) / 2)

end

end A203016.P5273262428052793081

namespace A203016

/-- `3*(n-(1-or(3, n))/2)` -/
def P5273262428052793081.Spec : Prop :=
  ∀ n, P5273262428052793081.a n = (A203016 (n + 1) : ℚ)

end A203016

/-! ## A203016.P5803488636274187378

`∑[6*char[4*(n+1)]+3]`
-/

namespace A203016.P5803488636274187378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (if ∃ j, f2 j = n then 1 else 0) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203016.P5803488636274187378

namespace A203016

/-- `∑[6*char[4*(n+1)]+3]` -/
def P5803488636274187378.Spec : Prop :=
  ∀ n, (P5803488636274187378.a n : ℤ) = A203016 (n + 1)

end A203016

/-! ## A203016.P18375605119795844491

`3*comp[3*n-4*and(1, n)]`
-/

namespace A203016.P18375605119795844491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (4 * Nat.land 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A203016.P18375605119795844491

namespace A203016

/-- `3*comp[3*n-4*and(1, n)]` -/
def P18375605119795844491.Spec : Prop :=
  ∀ n, (P18375605119795844491.a n : ℤ) = A203016 (n + 1)

end A203016

/-! ## A203016.P1890024471150987549

`3*A047227(n+1)`
-/

namespace A203016.P1890024471150987549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047227 (n + 1)

end

end A203016.P1890024471150987549

namespace A203016

/-- `3*A047227(n+1)` -/
def P1890024471150987549.Spec : Prop :=
  ∀ n, P1890024471150987549.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P17790647472433207448

`3*(A129756(n)+n)`
-/

namespace A203016.P17790647472433207448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A129756 n + (n : ℤ))

end

end A203016.P17790647472433207448

namespace A203016

/-- `3*(A129756(n)+n)` -/
def P17790647472433207448.Spec : Prop :=
  ∀ n, P17790647472433207448.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P13596246351075764771

`3*(A047246(n+1)+1)`
-/

namespace A203016.P13596246351075764771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047246 (n + 1) + 1)

end

end A203016.P13596246351075764771

namespace A203016

/-- `3*(A047246(n+1)+1)` -/
def P13596246351075764771.Spec : Prop :=
  ∀ n, P13596246351075764771.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P3996773740904065594

`3*(A047247(n+1)-1)`
-/

namespace A203016.P3996773740904065594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047247 (n + 1) - 1)

end

end A203016.P3996773740904065594

namespace A203016

/-- `3*(A047247(n+1)-1)` -/
def P3996773740904065594.Spec : Prop :=
  ∀ n, P3996773740904065594.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P1785096673701493102

`3*(A047250(n+2)-2)`
-/

namespace A203016.P1785096673701493102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047250 (n + 2) - 2)

end

end A203016.P1785096673701493102

namespace A203016

/-- `3*(A047250(n+2)-2)` -/
def P1785096673701493102.Spec : Prop :=
  ∀ n, P1785096673701493102.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P745278553699530574

`3*(A047260(n+3)-3)`
-/

namespace A203016.P745278553699530574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047260 (n + 3) - 3)

end

end A203016.P745278553699530574

namespace A203016

/-- `3*(A047260(n+3)-3)` -/
def P745278553699530574.Spec : Prop :=
  ∀ n, P745278553699530574.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P566305095805224820

`3*(A122461(n)+1+n)`
-/

namespace A203016.P566305095805224820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A122461 n + 1 + (n : ℤ))

end

end A203016.P566305095805224820

namespace A203016

/-- `3*(A122461(n)+1+n)` -/
def P566305095805224820.Spec : Prop :=
  ∀ n, P566305095805224820.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P1571391713799720791

`A390774(n)+2*n+3`
-/

namespace A203016.P1571391713799720791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n + (2 * n + 3 : ℤ)

end

end A203016.P1571391713799720791

namespace A203016

/-- `A390774(n)+2*n+3` -/
def P1571391713799720791.Spec : Prop :=
  ∀ n, P1571391713799720791.a n = A203016 (n + 1)

end A203016

/-! ## A203016.P16669693340220887888

`3*abs(n%2-A293990(n))`
-/

namespace A203016.P16669693340220887888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * |((n % 2 : ℕ) : ℤ) - A293990 n|

end

end A203016.P16669693340220887888

namespace A203016

/-- `3*abs(n%2-A293990(n))` -/
def P16669693340220887888.Spec : Prop :=
  ∀ n, P16669693340220887888.a n = A203016 (n + 1)

end A203016

/-!
# A203017: Number of partitions of {1,2,...,3n} into 3 n-element subsets having the same sum.

The programs for A203017, there is no canonical definition to state claims against.
-/

/-! ## A203017.P5848987902380396534

`A203986(∑[a(n-1)+1])` with `a(0)=1, a(1)=7, a(2)=4, a(3)=12, a(4)=7`
-/

namespace A203017.P5848987902380396534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 4, 12, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203017.P5848987902380396534

/-! ## A203017.P12526897082977814559

`A203986(A167614(n+2))`
-/

namespace A203017.P12526897082977814559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (A167614 (n + 2)).toNat

end

end A203017.P12526897082977814559

/-! ## A203017.P698490322550226254

`A203986(A141214(n)+6)`
-/

namespace A203017.P698490322550226254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (A141214 n + 6).toNat

end

end A203017.P698490322550226254

/-! ## A203017.P5982355671126683144

`A203986(A052905(n)+8)`
-/

namespace A203017.P5982355671126683144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (A052905 n + 8).toNat

end

end A203017.P5982355671126683144

/-! ## A203017.P4355934611102777803

`A203986(A055999(n)+9)`
-/

namespace A203017.P4355934611102777803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (A055999 n + 9).toNat

end

end A203017.P4355934611102777803

/-!
# A203018: The n-th prime number that equals 1 (mod 4n).

The programs for A203018, there is no canonical definition to state claims against.
-/

/-! ## A203018.P15584088194731323667

`A077316(A139274(n+1))`
-/

namespace A203018.P15584088194731323667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A139274 (n + 1)).toNat

end

end A203018.P15584088194731323667

/-! ## A203018.P118530451529067316

`A077316(∑[A004771(2*n)])`
-/

namespace A203018.P118530451529067316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203018.P118530451529067316

/-! ## A203018.P4527784025937350213

`A077316(∑[A154612(n)-n])`
-/

namespace A203018.P4527784025937350213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203018.P4527784025937350213

/-! ## A203018.P8304211073649144836

`A077316(A158058(n+1)/2)`
-/

namespace A203018.P8304211073649144836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (SequenceMachineLib.roundAway ((A158058 (n + 1) : ℚ) / 2)).toNat

end

end A203018.P8304211073649144836

/-! ## A203018.P6659821525639064882

`A077316(A185438(n+1)+n)`
-/

namespace A203018.P6659821525639064882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A185438 (n + 1) + (n : ℤ)).toNat

end

end A203018.P6659821525639064882

/-!
# A203019: Number of elevated peakless Motzkin paths.

The programs for A203019, there is no canonical definition to state claims against.
-/

/-! ## A203019.P14072093805603326495

`A154955(n+1)-A292461(n)`
-/

namespace A203019.P14072093805603326495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) - A292461 n

end

end A203019.P14072093805603326495

/-! ## A203019.P1326728828607641949

`lcm(A173950(n+1), A292461(n))`
-/

namespace A203019.P1326728828607641949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173950 (n + 1)) (A292461 n)

end

end A203019.P1326728828607641949

/-! ## A203019.P18233080317655620784

`A008683(A062383(n))-A292461(n)`
-/

namespace A203019.P18233080317655620784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062383 n).toNat - A292461 n

end

end A203019.P18233080317655620784

/-! ## A203019.P3886476790235490965

`abs(A292461(n)%A247293(n))`
-/

namespace A203019.P3886476790235490965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292461 n) (A247293 n)|

end

end A203019.P3886476790235490965

/-! ## A203019.P14019273191318637700

`abs(A292461(n))%A292460(n)`
-/

namespace A203019.P14019273191318637700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A292461 n| (A292460 n)

end

end A203019.P14019273191318637700

/-! ## A203019.P16928275779425426602

`-A292461(n)%A004148(n+1)`
-/

namespace A203019.P16928275779425426602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A292461 n) (A004148 (n + 1))

end

end A203019.P16928275779425426602

/-! ## A203019.P4724195910642772434

`A004148(abs(2-n))%A004148(n+1)`
-/

namespace A203019.P4724195910642772434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004148 |2 - (n : ℤ)|.toNat) (A004148 (n + 1))

end

end A203019.P4724195910642772434

/-! ## A203019.P758563203396730730

`A008683(A069067(n+1))-A292461(n)`
-/

namespace A203019.P758563203396730730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A069067 (n + 1)).toNat - A292461 n

end

end A203019.P758563203396730730

/-! ## A203019.P16224718296836990353

`-A292461(n)%A001006(n)`
-/

namespace A203019.P16224718296836990353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A292461 n) (A001006 n)

end

end A203019.P16224718296836990353

/-!
# A203020: Number of nX2 nonnegative integer arrays with adjacent horizontal and vertical element pair sums equal to all values in 0..2nk-n-k-1 (each exactly once).

The programs for A203020, there is no canonical definition to state claims against.
-/

/-! ## A203020.P6057627898294702368

`A203022(∑[n+1]+2)`
-/

namespace A203020.P6057627898294702368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203022 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203020.P6057627898294702368

/-! ## A203020.P4786759987851594403

`record[A203022(A284624(n+1))]`
-/

namespace A203020.P4786759987851594403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203022 (A284624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203020.P4786759987851594403

/-! ## A203020.P12838402630160603740

`record[gcd(A203022(n+1), A259776(n))]`
-/

namespace A203020.P12838402630160603740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203022 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203020.P12838402630160603740

/-!
# A203021: Number of n X 3 nonnegative integer arrays with adjacent horizontal and vertical element pair sums equal to all values in 0..2nk-n-k-1 (each exactly once).

The programs for A203021, there is no canonical definition to state claims against.
-/

/-! ## A203021.P8089436702370123499

`A203022(∑[n+3]+1)`
-/

namespace A203021.P8089436702370123499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203022 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203021.P8089436702370123499

/-!
# A203022: T(n,k)=Number of nXk nonnegative integer arrays with adjacent horizontal and vertical element pair sums equal to all values in 0..2nk-n-k-1 (each exactly once).

The programs for A203022, there is no canonical definition to state claims against.
-/

/-! ## A203022.P3067255168485833477

`A001221(A152124(n))*A008459(n)`
-/

namespace A203022.P3067255168485833477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A152124 n).toNat * A008459 n

end

end A203022.P3067255168485833477

/-! ## A203022.P10552042879368685407

`A007318(n)²*A001221(A152124(n))`
-/

namespace A203022.P10552042879368685407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A001221 (A152124 n).toNat

end

end A203022.P10552042879368685407

/-! ## A203022.P7305426052461706912

`A048804(n)²*A001221(A152124(n))`
-/

namespace A203022.P7305426052461706912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n ^ 2 * A001221 (A152124 n).toNat

end

end A203022.P7305426052461706912

/-! ## A203022.P431912322613517164

`A087890(A017986(n))*A298280(n+1)`
-/

namespace A203022.P431912322613517164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (A017986 n).toNat * A298280 (n + 1)

end

end A203022.P431912322613517164

/-!
# A203023: Integers n dividing A000041(n)+1.

The programs for A203023, there is no canonical definition to state claims against.
-/

/-! ## A203023.P6850856518403076409

`record[C(A093952(n+1)+1, n)]`
-/

namespace A203023.P6850856518403076409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093952 (n + 1) + 1).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203023.P6850856518403076409

/-!
# A203025: Largest perfect power divisor of n.

The programs for A203025, there is no canonical definition to state claims against.
-/

/-! ## A203025.P17632917045851984032

`A327526(A057521(n+1))`
-/

namespace A203025.P17632917045851984032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (A057521 (n + 1)).toNat

end

end A203025.P17632917045851984032

/-! ## A203025.P12654091759785756020

`A327526(A004526(2*n+3)/∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A203025.P12654091759785756020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (SequenceMachineLib.roundAway ((A004526 (2 * n + 3) : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A203025.P12654091759785756020

/-! ## A203025.P16514401129486032716

`gcd(n+1, A105119(A003557(n+1)²))`
-/

namespace A203025.P16514401129486032716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A105119 (A003557 (n + 1) ^ 2).toNat)

end

end A203025.P16514401129486032716

/-! ## A203025.P4266408888356176191

`gcd(A002378(n), A062759(A003557(n+1)²))`
-/

namespace A203025.P4266408888356176191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A062759 (A003557 (n + 1) ^ 2).toNat)

end

end A203025.P4266408888356176191

/-! ## A203025.P201003773345735289

`A289726(A289726(n+1))/A304328(n+1)`
-/

namespace A203025.P201003773345735289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289726 (A289726 (n + 1)).toNat : ℚ) / (A304328 (n + 1) : ℚ)

end

end A203025.P201003773345735289

/-! ## A203025.P14587767236339729333

`A051537(A000124(n))/A304328(n+1)`
-/

namespace A203025.P14587767236339729333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (A000124 n).toNat : ℚ) / (A304328 (n + 1) : ℚ)

end

end A203025.P14587767236339729333

/-! ## A203025.P9352355966767548411

`A126988(A304328(n+1)+A000217(n))`
-/

namespace A203025.P9352355966767548411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A304328 (n + 1) + A000217 n).toNat

end

end A203025.P9352355966767548411

/-! ## A203025.P4142643746787390125

`A003056(A000124(n+1))/A304328(n+1)`
-/

namespace A203025.P4142643746787390125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A000124 (n + 1)).toNat : ℚ) / (A304328 (n + 1) : ℚ)

end

end A203025.P4142643746787390125

/-! ## A203025.P8780910803507523925

`A003056(A134869(n+1))/A304328(n+1)`
-/

namespace A203025.P8780910803507523925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A134869 (n + 1)).toNat : ℚ) / (A304328 (n + 1) : ℚ)

end

end A203025.P8780910803507523925

/-! ## A203025.P14229735207245287841

`A003056(∑[A143692(n+1)])/A304328(n+1)`
-/

namespace A203025.P14229735207245287841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143692 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A304328 (n + 1) : ℚ)

end

end A203025.P14229735207245287841

/-! ## A203025.P18323092388866027205

`A003056(A027379(n))/A304328(n+1)`
-/

namespace A203025.P18323092388866027205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A027379 n).toNat : ℚ) / (A304328 (n + 1) : ℚ)

end

end A203025.P18323092388866027205

/-!
# A203026: Number of nX2 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203026, there is no canonical definition to state claims against.
-/

/-! ## A203026.P11267090763812114250

`A203031(∑[n+2])`
-/

namespace A203026.P11267090763812114250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203026.P11267090763812114250

/-! ## A203026.P7796662657017641767

`record[A203031(A117142(n+2))]`
-/

namespace A203026.P7796662657017641767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203026.P7796662657017641767

/-! ## A203026.P14326357674920374897

`record[A203031(lt[A297519(n+1), n])]`
-/

namespace A203026.P14326357674920374897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203026.P14326357674920374897

/-! ## A203026.P12425148267679529011

`record[root(A203031(n+2), A046089(n+3))]`
-/

namespace A203026.P12425148267679529011
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203031 (n + 2) : ℝ) ^ (1 / (A046089 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203026.P12425148267679529011

/-! ## A203026.P9807560859561253525

`record[root(A203031(n+2), A297519(n+3))]`
-/

namespace A203026.P9807560859561253525
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203031 (n + 2) : ℝ) ^ (1 / (A297519 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203026.P9807560859561253525

/-!
# A203027: Number of nX3 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203027, there is no canonical definition to state claims against.
-/

/-! ## A203027.P14955344296143712196

`A203031(∑[n+3]+1)`
-/

namespace A203027.P14955344296143712196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203027.P14955344296143712196

/-! ## A203027.P5341780375210812426

`record[A203031(lt[A297519(n+2), n])]`
-/

namespace A203027.P5341780375210812426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203027.P5341780375210812426

/-! ## A203027.P15746020072751245968

`A203031(A034856(n+2))+A000007(n+3)`
-/

namespace A203027.P15746020072751245968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A034856 (n + 2)).toNat + A000007 (n + 3)

end

end A203027.P15746020072751245968

/-!
# A203028: Number of nX4 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203028, there is no canonical definition to state claims against.
-/

/-! ## A203028.P3510026668227216212

`A203031(C(2*(n+2)-n, 2)+n+1)`
-/

namespace A203028.P3510026668227216212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (Nat.choose ((2 * (n + 2) : ℤ) - (n : ℤ)).toNat 2 + (n + 1))

end

end A203028.P3510026668227216212

/-! ## A203028.P2855124665361210560

`A203031(A141214(n+1))`
-/

namespace A203028.P2855124665361210560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A141214 (n + 1)).toNat

end

end A203028.P2855124665361210560

/-! ## A203028.P1886532399502566543

`A203031(A027379(n+2))`
-/

namespace A203028.P1886532399502566543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A027379 (n + 2)).toNat

end

end A203028.P1886532399502566543

/-!
# A203029: Number of nX5 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203029, there is no canonical definition to state claims against.
-/

/-! ## A203029.P908902790121199246

`A203031(Δ[A264443(n)])`
-/

namespace A203029.P908902790121199246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (f1 (n + 1) - f1 n).toNat

end

end A203029.P908902790121199246

/-! ## A203029.P11303444604937992727

`A203031(A046691(n+3))`
-/

namespace A203029.P11303444604937992727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A046691 (n + 3)).toNat

end

end A203029.P11303444604937992727

/-!
# A203030: Number of nX6 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203030, there is no canonical definition to state claims against.
-/

/-! ## A203030.P11276999315758758412

`A203031(A052905(n+3))`
-/

namespace A203030.P11276999315758758412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A052905 (n + 3)).toNat

end

end A203030.P11276999315758758412

/-!
# A203031: T(n,k)=Number of nXk 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203031, there is no canonical definition to state claims against.
-/

/-! ## A203031.P13747430767059673687

`A196267(A039811(n+1))`
-/

namespace A203031.P13747430767059673687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196267 (A039811 (n + 1)).toNat

end

end A203031.P13747430767059673687

/-! ## A203031.P16804275373633682186

`A196267(A046089(n+1))`
-/

namespace A203031.P16804275373633682186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196267 (A046089 (n + 1)).toNat

end

end A203031.P16804275373633682186

/-! ## A203031.P11255566382962942587

`A339658(A203491(n+1))`
-/

namespace A203031.P11255566382962942587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (A203491 (n + 1)).toNat

end

end A203031.P11255566382962942587

/-!
# A203032: Number of 2Xn 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203032, there is no canonical definition to state claims against.
-/

/-! ## A203032.P14522621792758696741

`A203031(∑[n+1]+2)`
-/

namespace A203032.P14522621792758696741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203032.P14522621792758696741

/-! ## A203032.P12958795937785107452

`record[A203031(A133263(∑{digits}[n, #]))]`
-/

namespace A203032.P12958795937785107452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203032.P12958795937785107452

/-! ## A203032.P1594918681641605263

`record[A159855(n)*A203031(n+3)]`
-/

namespace A203032.P1594918681641605263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159855 n * A203031 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203032.P1594918681641605263

/-! ## A203032.P5562907181601307562

`record[root(A203031(n+1), A130270(n+1))]`
-/

namespace A203032.P5562907181601307562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203031 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203032.P5562907181601307562

/-! ## A203032.P2644522521235989311

`record[root(A203031(n+3), A199898(n+2))]`
-/

namespace A203032.P2644522521235989311
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203031 (n + 3) : ℝ) ^ (1 / (A199898 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203032.P2644522521235989311

/-!
# A203033: Number of 3 X n 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203033, there is no canonical definition to state claims against.
-/

/-! ## A203033.P5819617736150185524

`A203031(∑[n+2]+4)`
-/

namespace A203033.P5819617736150185524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203033.P5819617736150185524

/-! ## A203033.P5774529904790750257

`lcm(2, A203031(A167614(n+1)))`
-/

namespace A203033.P5774529904790750257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203031 (A167614 (n + 1)).toNat)

end

end A203033.P5774529904790750257

/-! ## A203033.P8058930173694705302

`record[A203031(record[A195081(n+1)])]`
-/

namespace A203033.P8058930173694705302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203033.P8058930173694705302

/-! ## A203033.P15966266674525123717

`A203031(A167614(n+1))+A025443(n)`
-/

namespace A203033.P15966266674525123717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A167614 (n + 1)).toNat + A025443 n

end

end A203033.P15966266674525123717

/-! ## A203033.P14978237751923707108

`A308919(n)+A203031(A167614(n+1))`
-/

namespace A203033.P14978237751923707108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n + A203031 (A167614 (n + 1)).toNat

end

end A203033.P14978237751923707108

/-!
# A203034: Number of 4Xn 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203034, there is no canonical definition to state claims against.
-/

/-! ## A203034.P14569698432704267518

`A203031(A141214(n)+7)`
-/

namespace A203034.P14569698432704267518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A141214 n + 7).toNat

end

end A203034.P14569698432704267518

/-! ## A203034.P18259946306994885748

`A203031(A052905(n)+9)`
-/

namespace A203034.P18259946306994885748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A052905 n + 9).toNat

end

end A203034.P18259946306994885748

/-! ## A203034.P6568547839129433618

`A203031(A055999(n)+10)`
-/

namespace A203034.P6568547839129433618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A055999 n + 10).toNat

end

end A203034.P6568547839129433618

/-!
# A203035: Number of 5 X n 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203035, there is no canonical definition to state claims against.
-/

/-! ## A203035.P15767874967344881646

`A203031(A167499(n+3))`
-/

namespace A203035.P15767874967344881646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (A167499 (n + 3)).toNat

end

end A203035.P15767874967344881646

/-!
# A203036: Number of 6Xn 0..3 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A203036, there is no canonical definition to state claims against.
-/

/-! ## A203036.P4442484888058144078

`A203031(∑[n+5]+16)`
-/

namespace A203036.P4442484888058144078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203031 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A203036.P4442484888058144078

/-!
# A203040: Number of (n+3)X(n+3) binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203040, there is no canonical definition to state claims against.
-/

/-! ## A203040.P1565192651064054466

`A203048(∑[4*n]+1)`
-/

namespace A203040.P1565192651064054466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203040.P1565192651064054466

/-! ## A203040.P15844247356477511517

`record[A003982(n)*A203048(n+1)]`
-/

namespace A203040.P15844247356477511517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203040.P15844247356477511517

/-! ## A203040.P483135675021543485

`record[A203048(n+1)*A203994(n+1)]`
-/

namespace A203040.P483135675021543485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203040.P483135675021543485

/-! ## A203040.P13931689511971702494

`A000041(C(2, n+2))*A203048(A001844(n))`
-/

namespace A203040.P13931689511971702494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A203048 (A001844 n).toNat

end

end A203040.P13931689511971702494

/-! ## A203040.P15672931298669869330

`A007318(floor(1/(n+1)))*A203048(A001844(n))`
-/

namespace A203040.P15672931298669869330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A203048 (A001844 n).toNat

end

end A203040.P15672931298669869330

/-!
# A203041: Number of (n+3) X 4 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203041, there is no canonical definition to state claims against.
-/

/-! ## A203041.P14477863130360224335

`A203048(∑[n]+1)`
-/

namespace A203041.P14477863130360224335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203041.P14477863130360224335

/-! ## A203041.P6625456068841024185

`record[A203048(n+1)/A117401(n)]`
-/

namespace A203041.P6625456068841024185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203048 (n + 1) : ℚ) / (A117401 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203041.P6625456068841024185

/-! ## A203041.P9285112189484290574

`record[A203048(n+1)/A225910(n)]`
-/

namespace A203041.P9285112189484290574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203048 (n + 1) : ℚ) / (A225910 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203041.P9285112189484290574

/-! ## A203041.P506460041464635671

`record[gcd(A002262(n), A203048(n+1))]`
-/

namespace A203041.P506460041464635671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203048 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203041.P506460041464635671

/-! ## A203041.P14308603382940922445

`record[A203048(A115017(n+1))]`
-/

namespace A203041.P14308603382940922445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203041.P14308603382940922445

/-!
# A203042: Number of (n+3)X5 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203042, there is no canonical definition to state claims against.
-/

/-! ## A203042.P3466632710153468316

`A203048(∑[n+1]+2)`
-/

namespace A203042.P3466632710153468316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203042.P3466632710153468316

/-! ## A203042.P9721589999945794854

`or(1, A203048(A000096(n)+3))`
-/

namespace A203042.P9721589999945794854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203048 (A000096 n + 3).toNat)

end

end A203042.P9721589999945794854

/-! ## A203042.P1399682668624697838

`record[gcd(A002262(n), A203048(n+2))]`
-/

namespace A203042.P1399682668624697838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203048 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203042.P1399682668624697838

/-! ## A203042.P4276457869749433058

`A203048(A000096(n)+3)%A203043(n+1)`
-/

namespace A203042.P4276457869749433058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203048 (A000096 n + 3).toNat) (A203043 (n + 1))

end

end A203042.P4276457869749433058

/-! ## A203042.P8880622565307194821

`A203048(A000096(n)+3)+A022559(A282568(n))`
-/

namespace A203042.P8880622565307194821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A000096 n + 3).toNat + A022559 (A282568 n).toNat

end

end A203042.P8880622565307194821

/-!
# A203043: Number of (n+3)X6 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203043, there is no canonical definition to state claims against.
-/

/-! ## A203043.P14089600125310967581

`A203048(∑[n+2]+4)`
-/

namespace A203043.P14089600125310967581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203043.P14089600125310967581

/-! ## A203043.P13304379261665544631

`A203048(A046691(n)+7)%A203044(n+1)`
-/

namespace A203043.P13304379261665544631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203048 (A046691 n + 7).toNat) (A203044 (n + 1))

end

end A203043.P13304379261665544631

/-! ## A203043.P17007913370874755840

`A203048(A046691(n)+7)+char[A000330(n+6)]`
-/

namespace A203043.P17007913370874755840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A046691 n + 7).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A203043.P17007913370874755840

/-! ## A203043.P5483650529865536342

`A014963(A008458(n))*A203048(A046691(n)+7)`
-/

namespace A203043.P5483650529865536342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A203048 (A046691 n + 7).toNat

end

end A203043.P5483650529865536342

/-! ## A203043.P15129700643486523651

`A001222(A000043(n+1))*A203048(A046691(n)+7)`
-/

namespace A203043.P15129700643486523651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A203048 (A046691 n + 7).toNat

end

end A203043.P15129700643486523651

/-!
# A203044: Number of (n+3)X7 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203044, there is no canonical definition to state claims against.
-/

/-! ## A203044.P17046497056496803771

`A203048(A374004(n+1))`
-/

namespace A203044.P17046497056496803771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A374004 (n + 1)).toNat

end

end A203044.P17046497056496803771

/-! ## A203044.P530826543428383160

`A203048(A141214(n)+7)`
-/

namespace A203044.P530826543428383160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A141214 n + 7).toNat

end

end A203044.P530826543428383160

/-! ## A203044.P2961231966429515629

`A203048(A052905(n)+9)`
-/

namespace A203044.P2961231966429515629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A052905 n + 9).toNat

end

end A203044.P2961231966429515629

/-! ## A203044.P5817440058600209661

`A203048(A055999(n)+10)`
-/

namespace A203044.P5817440058600209661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A055999 n + 10).toNat

end

end A203044.P5817440058600209661

/-! ## A203044.P17143258331286678290

`A203048(A167614(n+2)+1)`
-/

namespace A203044.P17143258331286678290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A167614 (n + 2) + 1).toNat

end

end A203044.P17143258331286678290

/-!
# A203045: Number of (n+3)X8 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203045, there is no canonical definition to state claims against.
-/

/-! ## A203045.P2822123017255939060

`A203048(A374005(n+1))`
-/

namespace A203045.P2822123017255939060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A374005 (n + 1)).toNat

end

end A203045.P2822123017255939060

/-! ## A203045.P13590668738518130353

`A203048(A167499(n+3))`
-/

namespace A203045.P13590668738518130353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A167499 (n + 3)).toNat

end

end A203045.P13590668738518130353

/-! ## A203045.P3760154440736439895

`A203048(A056000(n)+15)`
-/

namespace A203045.P3760154440736439895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A056000 n + 15).toNat

end

end A203045.P3760154440736439895

/-! ## A203045.P14723398080828324924

`A203048(eq[6, A131818(n+1)])`
-/

namespace A203045.P14723398080828324924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203045.P14723398080828324924

/-! ## A203045.P5391436451139674793

`A203048(eq[4, A193592(n)])`
-/

namespace A203045.P5391436451139674793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203045.P5391436451139674793

/-!
# A203046: Number of (n+3)X9 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203046, there is no canonical definition to state claims against.
-/

/-! ## A203046.P7782510052564834723

`A203048(A374007(n+1))`
-/

namespace A203046.P7782510052564834723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A374007 (n + 1)).toNat

end

end A203046.P7782510052564834723

/-! ## A203046.P3913193925423739395

`A203048(eq[7, A131818(n+1)])`
-/

namespace A203046.P3913193925423739395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203046.P3913193925423739395

/-! ## A203046.P8472452530443195335

`A203048(A056119(n)+16)`
-/

namespace A203046.P8472452530443195335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A056119 n + 16).toNat

end

end A203046.P8472452530443195335

/-! ## A203046.P317493065529095196

`A203048(eq[3, A219347(n)])`
-/

namespace A203046.P317493065529095196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203046.P317493065529095196

/-! ## A203046.P4063818556364966570

`A203048(eq[5, A193592(n)])`
-/

namespace A203046.P4063818556364966570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203046.P4063818556364966570

/-!
# A203047: Number of (n+3)X10 binary arrays with no more than one of any consecutive four bits set in any row or column.

The programs for A203047, there is no canonical definition to state claims against.
-/

/-! ## A203047.P15597990118780619781

`A203048(A374008(n+1))`
-/

namespace A203047.P15597990118780619781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A374008 (n + 1)).toNat

end

end A203047.P15597990118780619781

/-! ## A203047.P2694148935240709349

`A203048(A152947(n+8)+6)`
-/

namespace A203047.P2694148935240709349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (A152947 (n + 8) + 6).toNat

end

end A203047.P2694148935240709349

/-! ## A203047.P940813164741924481

`A203048(eq[8, A131818(n+1)])`
-/

namespace A203047.P940813164741924481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203047.P940813164741924481

/-! ## A203047.P9670486669145754089

`A203048(eq[4, A219347(n)])`
-/

namespace A203047.P9670486669145754089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203047.P9670486669145754089

/-! ## A203047.P11080792016905100324

`A203048(eq[6, A193592(n)])`
-/

namespace A203047.P11080792016905100324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203047.P11080792016905100324

/-!
# A203049: 

The programs for A203049, there is no canonical definition to state claims against.
-/

/-! ## A203049.P4578549978910798293

`A203057((n+1)²+n²)`
-/

namespace A203049.P4578549978910798293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 ((n + 1) ^ 2 + n ^ 2)

end

end A203049.P4578549978910798293

/-!
# A203050: Number of nX1 0..5 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203050, there is no canonical definition to state claims against.
-/

/-! ## A203050.P11707878675061358766

`A203057(∑[n]+1)`
-/

namespace A203050.P11707878675061358766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203050.P11707878675061358766

/-! ## A203050.P4356808928510661707

`record[root(A203057(n+1), A064282(n))]`
-/

namespace A203050.P4356808928510661707
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203057 (n + 1) : ℝ) ^ (1 / (A064282 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203050.P4356808928510661707

/-! ## A203050.P551458093785054873

`record[root(A203057(n+1), A083075(n))]`
-/

namespace A203050.P551458093785054873
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203057 (n + 1) : ℝ) ^ (1 / (A083075 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203050.P551458093785054873

/-! ## A203050.P1162933029209949267

`record[gcd(A051775(n), A203057(n+1))]`
-/

namespace A203050.P1162933029209949267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051775 n) (A203057 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203050.P1162933029209949267

/-! ## A203050.P7651101719572771050

`record[root(A203057(n+1), A163269(n+1))]`
-/

namespace A203050.P7651101719572771050
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203057 (n + 1) : ℝ) ^ (1 / (A163269 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203050.P7651101719572771050

/-!
# A203051: Number of nX2 0..5 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203051, there is no canonical definition to state claims against.
-/

/-! ## A203051.P3497792855814684970

`A203057(∑[n+1]+2)`
-/

namespace A203051.P3497792855814684970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203051.P3497792855814684970

/-! ## A203051.P17535293664478690610

`record[root(A203057(n+2), A064282(n))]`
-/

namespace A203051.P17535293664478690610
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203057 (n + 2) : ℝ) ^ (1 / (A064282 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203051.P17535293664478690610

/-! ## A203051.P1672745236221353631

`record[A203057(abs(A201163(n)))]`
-/

namespace A203051.P1672745236221353631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203051.P1672745236221353631

/-! ## A203051.P6645966275082487801

`record[A203057(A198455(n+1))]`
-/

namespace A203051.P6645966275082487801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203051.P6645966275082487801

/-! ## A203051.P15288763201123656993

`record[A203057(lt[A163269(n+1), n])]`
-/

namespace A203051.P15288763201123656993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203051.P15288763201123656993

/-!
# A203052: Number of n X 3 0..5 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203052, there is no canonical definition to state claims against.
-/

/-! ## A203052.P13878120304260847306

`A203057(∑[n+2]+4)`
-/

namespace A203052.P13878120304260847306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203052.P13878120304260847306

/-! ## A203052.P10132026405769255328

`lcm(2, A203057(A167614(n+1)))`
-/

namespace A203052.P10132026405769255328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203057 (A167614 (n + 1)).toNat)

end

end A203052.P10132026405769255328

/-! ## A203052.P17663450488271397478

`A203057(A167614(n+1))+A107846(n)`
-/

namespace A203052.P17663450488271397478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A167614 (n + 1)).toNat + A107846 n

end

end A203052.P17663450488271397478

/-! ## A203052.P8402144238311550294

`A203057(A167614(n+1))+A185284(n)`
-/

namespace A203052.P8402144238311550294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A167614 (n + 1)).toNat + A185284 n

end

end A203052.P8402144238311550294

/-! ## A203052.P13892178648114584504

`A203057(A167614(n+1))%A186550(n+1)`
-/

namespace A203052.P13892178648114584504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203057 (A167614 (n + 1)).toNat) (A186550 (n + 1))

end

end A203052.P13892178648114584504

/-!
# A203053: Number of nX4 0..5 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203053, there is no canonical definition to state claims against.
-/

/-! ## A203053.P14682792711159706303

`A203057(A055999(n)+10)`
-/

namespace A203053.P14682792711159706303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A055999 n + 10).toNat

end

end A203053.P14682792711159706303

/-! ## A203053.P11248472467714362679

`A203057(A167614(n+2)+1)`
-/

namespace A203053.P11248472467714362679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A167614 (n + 2) + 1).toNat

end

end A203053.P11248472467714362679

/-!
# A203055: 

The programs for A203055, there is no canonical definition to state claims against.
-/

/-! ## A203055.P10729308684838389470

`A203057(A027379(n+4)-2)`
-/

namespace A203055.P10729308684838389470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (A027379 (n + 4) - 2).toNat

end

end A203055.P10729308684838389470

/-!
# A203056: 

The programs for A203056, there is no canonical definition to state claims against.
-/

/-! ## A203056.P4758366747750548408

`A203057(eq[4, A219347(n)])`
-/

namespace A203056.P4758366747750548408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203056.P4758366747750548408

/-!
# A203057: T(n,k)=Number of nXk 0..5 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203057, there is no canonical definition to state claims against.
-/

/-! ## A203057.P3892948577717098953

`C(A034968(A287706(2*(n+2))), round(2*n/3))`
-/

namespace A203057.P3892948577717098953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034968 (A287706 (2 * (n + 2))).toNat).toNat (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A203057.P3892948577717098953

/-!
# A203058: 

The programs for A203058, there is no canonical definition to state claims against.
-/

/-! ## A203058.P3716888671229135612

`A203066((n+1)²+n²)`
-/

namespace A203058.P3716888671229135612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 ((n + 1) ^ 2 + n ^ 2)

end

end A203058.P3716888671229135612

/-!
# A203059: Number of nX1 0..6 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203059, there is no canonical definition to state claims against.
-/

/-! ## A203059.P15454074889890603751

`A203066(∑[n]+1)`
-/

namespace A203059.P15454074889890603751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203059.P15454074889890603751

/-! ## A203059.P6243635884967984538

`record[A010054(n)*A203066(n+1)]`
-/

namespace A203059.P6243635884967984538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203059.P6243635884967984538

/-! ## A203059.P12340068061056385245

`record[root(A203066(n+1), A059274(n))]`
-/

namespace A203059.P12340068061056385245
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203066 (n + 1) : ℝ) ^ (1 / (A059274 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203059.P12340068061056385245

/-! ## A203059.P750121837341745670

`record[root(A203066(n+1), A064282(n))]`
-/

namespace A203059.P750121837341745670
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203066 (n + 1) : ℝ) ^ (1 / (A064282 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203059.P750121837341745670

/-! ## A203059.P3930044282584030486

`record[root(A203066(n+1), A188002(n+1))]`
-/

namespace A203059.P3930044282584030486
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203066 (n + 1) : ℝ) ^ (1 / (A188002 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203059.P3930044282584030486

/-!
# A203060: Number of nX2 0..6 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203060, there is no canonical definition to state claims against.
-/

/-! ## A203060.P7701440483959196716

`A203066(∑[n+1]+2)`
-/

namespace A203060.P7701440483959196716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203060.P7701440483959196716

/-! ## A203060.P10453305894161951911

`record[A010054(n)*A203066(n+2)]`
-/

namespace A203060.P10453305894161951911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203066 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203060.P10453305894161951911

/-! ## A203060.P13888928678962030644

`record[root(A203066(n+2), A059274(n))]`
-/

namespace A203060.P13888928678962030644
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203066 (n + 2) : ℝ) ^ (1 / (A059274 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203060.P13888928678962030644

/-! ## A203060.P17170277870541765836

`record[root(A203066(n+2), A064282(n))]`
-/

namespace A203060.P17170277870541765836
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203066 (n + 2) : ℝ) ^ (1 / (A064282 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203060.P17170277870541765836

/-! ## A203060.P5754079857048686906

`record[root(A203066(n+2), A188002(n+1))]`
-/

namespace A203060.P5754079857048686906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203066 (n + 2) : ℝ) ^ (1 / (A188002 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203060.P5754079857048686906

/-!
# A203061: Number of nX3 0..6 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203061, there is no canonical definition to state claims against.
-/

/-! ## A203061.P8833561893560937807

`A203066(∑[n+2]+4)`
-/

namespace A203061.P8833561893560937807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203061.P8833561893560937807

/-! ## A203061.P12648035903462945209

`or(1, A203066(A167614(n+1)))`
-/

namespace A203061.P12648035903462945209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203066 (A167614 (n + 1)).toNat)

end

end A203061.P12648035903462945209

/-! ## A203061.P9783351646210574709

`A203066(A167614(n+1))+A185284(n)`
-/

namespace A203061.P9783351646210574709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (A167614 (n + 1)).toNat + A185284 n

end

end A203061.P9783351646210574709

/-! ## A203061.P3037841730393731389

`lcm(A020985(n), A203066(A167614(n+1)))`
-/

namespace A203061.P3037841730393731389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A203066 (A167614 (n + 1)).toNat)

end

end A203061.P3037841730393731389

/-! ## A203061.P4984279466213332434

`A203066(A167614(n+1))+A085974(n+1)`
-/

namespace A203061.P4984279466213332434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (A167614 (n + 1)).toNat + A085974 (n + 1)

end

end A203061.P4984279466213332434

/-!
# A203062: Number of nX4 0..6 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203062, there is no canonical definition to state claims against.
-/

/-! ## A203062.P17195074430654277742

`A203066(A167614(n+2)+1)`
-/

namespace A203062.P17195074430654277742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (A167614 (n + 2) + 1).toNat

end

end A203062.P17195074430654277742

/-! ## A203062.P18212428074672146629

`A203066(eq[2, A054123(n)])`
-/

namespace A203062.P18212428074672146629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203062.P18212428074672146629

/-!
# A203063: 

The programs for A203063, there is no canonical definition to state claims against.
-/

/-! ## A203063.P14019731657234332672

`A203066(eq[6, A131818(n+1)])`
-/

namespace A203063.P14019731657234332672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203063.P14019731657234332672

/-! ## A203063.P13412027092826186922

`A203066(∑[n+5]+6)`
-/

namespace A203063.P13412027092826186922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A203063.P13412027092826186922

/-!
# A203064: 

The programs for A203064, there is no canonical definition to state claims against.
-/

/-! ## A203064.P12507574792312730869

`A203066(eq[7, A131818(n+1)])`
-/

namespace A203064.P12507574792312730869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203064.P12507574792312730869

/-! ## A203064.P15181984433615584637

`A203066(A027379(n+4)-2)`
-/

namespace A203064.P15181984433615584637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (A027379 (n + 4) - 2).toNat

end

end A203064.P15181984433615584637

/-!
# A203065: 

The programs for A203065, there is no canonical definition to state claims against.
-/

/-! ## A203065.P13847545170962672698

`A203066(A052905(n+4)-1)`
-/

namespace A203065.P13847545170962672698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203066 (A052905 (n + 4) - 1).toNat

end

end A203065.P13847545170962672698

/-!
# A203066: T(n,k)=Number of nXk 0..6 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203066, there is no canonical definition to state claims against.
-/

/-! ## A203066.P8358216929871824945

`7*A242640(a(n-1))` with `a(0)=1, a(1)=7, a(2)=7`
-/

namespace A203066.P8358216929871824945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 7] fun n a =>
  7 * A242640 (a (n - 1)).toNat

end

end A203066.P8358216929871824945

/-!
# A203067: G.f. satisfies: A(x) = Product_{n>=0} 1/( (1 - (x*A(x))^(5*n+1)) * (1 - (x*A(x))^(5*n+4)) ).

The programs for A203067, there is no canonical definition to state claims against.
-/

/-! ## A203067.P15180817071124082346

`A060384(4*A273203(n+1))`
-/

namespace A203067.P15180817071124082346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (4 * A273203 (n + 1)).toNat

end

end A203067.P15180817071124082346

/-! ## A203067.P3850982671743788762

`A247913(2*a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A203067.P3850982671743788762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A247913 (2 * a (n - 1)).toNat - 1

end

end A203067.P3850982671743788762

/-! ## A203067.P3742248349521640272

`A263270(A149706(n))`
-/

namespace A203067.P3742248349521640272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A149706 n).toNat

end

end A203067.P3742248349521640272

/-! ## A203067.P11415496774755542463

`A345470(record[n-A068527(floor(2^(n-1)))])`
-/

namespace A203067.P11415496774755542463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A068527 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203067.P11415496774755542463

/-!
# A203068: G.f. satisfies: A(x) = Product_{n>=0} 1/( (1 - (x*A(x))^(5*n+2)) * (1 - (x*A(x))^(5*n+3)) ).

The programs for A203068, there is no canonical definition to state claims against.
-/

/-! ## A203068.P467506807347277850

`A002024(A275753(n))-A000035(n)`
-/

namespace A203068.P467506807347277850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A275753 n).toNat - A000035 n

end

end A203068.P467506807347277850

/-! ## A203068.P16550289101573063464

`A123578(or(A020034(n), A020039(n)))`
-/

namespace A203068.P16550289101573063464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lor (A020034 n) (A020039 n)).toNat

end

end A203068.P16550289101573063464

/-! ## A203068.P12694287617625039499

`A320268(n+1)+A168201(A000244(n))`
-/

namespace A203068.P12694287617625039499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320268 (n + 1) + A168201 (A000244 n).toNat

end

end A203068.P12694287617625039499

/-!
# A203069: Lexicographically earliest sequence of distinct positive numbers such that a(n-1)+a(n) is odd and composite.

The programs for A203069, there is no canonical definition to state claims against.
-/

/-! ## A203069.P7524096531370172831

`A346610(n)+a(n-1)` with `a(0)=1`
-/

namespace A203069.P7524096531370172831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346610 n + a (n - 1)

end

end A203069.P7524096531370172831

/-! ## A203069.P7494608442576775233

`2*A346611(n+1)+1+n`
-/

namespace A203069.P7494608442576775233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346611 (n + 1) + 1 + (n : ℤ)

end

end A203069.P7494608442576775233

/-! ## A203069.P1128007276979128831

`A346609(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A203069.P1128007276979128831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346609 (n + 1) - a (n - 1)

end

end A203069.P1128007276979128831

/-! ## A203069.P3988381091519390368

`∑[A346610(A028310(n))]-6`
-/

namespace A203069.P3988381091519390368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346610 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 6

end

end A203069.P3988381091519390368

/-! ## A203069.P16041385294473278093

`∑[Δ[A346609(n+1)]-A346610(n+1)]`
-/

namespace A203069.P16041385294473278093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A346610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203069.P16041385294473278093

/-! ## A203069.P5851412903996983589

`A026741(A346609(n+2)-A346610(n+1))`
-/

namespace A203069.P5851412903996983589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A346609 (n + 2) - A346610 (n + 1)).toNat

end

end A203069.P5851412903996983589

/-!
# A203072: First row of A203071.

The programs for A203072, there is no canonical definition to state claims against.
-/

/-! ## A203072.P9932945112042619390

`A203071(∑[n]+1)`
-/

namespace A203072.P9932945112042619390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203071 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203072.P9932945112042619390

/-! ## A203072.P17606621937624078771

`A203071(A000124(n))%A159697(n)`
-/

namespace A203072.P17606621937624078771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203071 (A000124 n).toNat) (A159697 n)

end

end A203072.P17606621937624078771

/-! ## A203072.P11935892744971343317

`or(A000007(n), A203071(A000124(n)))`
-/

namespace A203072.P11935892744971343317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203071 (A000124 n).toNat)

end

end A203072.P11935892744971343317

/-! ## A203072.P12484593584448044085

`A203071(A000124(n))+n*A131185(3*(n+1))`
-/

namespace A203072.P12484593584448044085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203071 (A000124 n).toNat + (n : ℤ) * A131185 (3 * (n + 1))

end

end A203072.P12484593584448044085

/-! ## A203072.P9560723900018946160

`A000120(A006519(n+1))*A203071(A000124(n))`
-/

namespace A203072.P9560723900018946160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006519 (n + 1)).toNat * A203071 (A000124 n).toNat

end

end A203072.P9560723900018946160

/-! ## A203072.P17870414895768058830

`A001263(A184389(n+1))*A203071(A000124(n))`
-/

namespace A203072.P17870414895768058830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A184389 (n + 1)).toNat * A203071 (A000124 n).toNat

end

end A203072.P17870414895768058830

/-!
# A203074: a(0) = 1; for n > 0, a(n) = next prime after 2^(n-1).

The programs for A203074, the canonical program `A203074.P7851202269046150314` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203074 has offset 0).

The definition of A203074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203074.P7851202269046150314

`A014210((n-1)%a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A203074

/-- `A014210((n-1)%a(n-1))` -/
def P7851202269046150314.Spec : Prop :=
  ∀ n, P7851202269046150314.a n = A203074 n

theorem P7851202269046150314.correct : P7851202269046150314.Spec := by
  intro n
  simp only [A203074]

end A203074

/-! ## A203074.P10669757450580922373

`A014210((n-1)*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A203074.P10669757450580922373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014210 (((n : ℤ) - 1) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A203074.P10669757450580922373

namespace A203074

/-- `A014210((n-1)*a(floor(acot(n))))` -/
def P10669757450580922373.Spec : Prop :=
  ∀ n, P10669757450580922373.a n = A203074 n

end A203074

/-! ## A203074.P1828021006737578255

`A014210((n-1)*a(ceil(acot(n))-1))` with `a(0)=1`
-/

namespace A203074.P1828021006737578255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014210 (((n : ℤ) - 1) * a (⌈SequenceMachineLib.acot (n : ℝ)⌉ - 1).toNat).toNat

end

end A203074.P1828021006737578255

namespace A203074

/-- `A014210((n-1)*a(ceil(acot(n))-1))` -/
def P1828021006737578255.Spec : Prop :=
  ∀ n, P1828021006737578255.a n = A203074 n

end A203074

/-! ## A203074.P10004264136543787133

`record[A014210(A057979(n))-A000038(n)]`
-/

namespace A203074.P10004264136543787133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A057979 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203074.P10004264136543787133

namespace A203074

/-- `record[A014210(A057979(n))-A000038(n)]` -/
def P10004264136543787133.Spec : Prop :=
  ∀ n, P10004264136543787133.a n = A203074 n

end A203074

/-! ## A203074.P14638387687790992845

`record[A014210(A004524(n))-A265829(n)]`
-/

namespace A203074.P14638387687790992845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A004524 n).toNat - A265829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203074.P14638387687790992845

namespace A203074

/-- `record[A014210(A004524(n))-A265829(n)]` -/
def P14638387687790992845.Spec : Prop :=
  ∀ n, P14638387687790992845.a n = A203074 n

end A203074

/-! ## A203074.P6094041805400576074

`record[A014210(A057979(n))%A014210(n)]`
-/

namespace A203074.P6094041805400576074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 (A057979 n).toNat) (A014210 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203074.P6094041805400576074

namespace A203074

/-- `record[A014210(A057979(n))%A014210(n)]` -/
def P6094041805400576074.Spec : Prop :=
  ∀ n, P6094041805400576074.a n = A203074 n

end A203074

/-! ## A203074.P3598874824352394515

`record[A014210(A305298(n))%A014210(n)]`
-/

namespace A203074.P3598874824352394515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 (A305298 n).toNat) (A014210 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203074.P3598874824352394515

namespace A203074

/-- `record[A014210(A305298(n))%A014210(n)]` -/
def P3598874824352394515.Spec : Prop :=
  ∀ n, P3598874824352394515.a n = A203074 n

end A203074

/-! ## A203074.P4434563245520011727

`A014210(A002260(A027379(n)))%A014210(n)`
-/

namespace A203074.P4434563245520011727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 (A002260 (A027379 n).toNat).toNat) (A014210 n)

end

end A203074.P4434563245520011727

namespace A203074

/-- `A014210(A002260(A027379(n)))%A014210(n)` -/
def P4434563245520011727.Spec : Prop :=
  ∀ n, P4434563245520011727.a n = A203074 n

end A203074

/-! ## A203074.P13818922916827681289

`A014210(A082601(A000124(n)))%A014210(n)`
-/

namespace A203074.P13818922916827681289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 (A082601 (A000124 n).toNat).toNat) (A014210 n)

end

end A203074.P13818922916827681289

namespace A203074

/-- `A014210(A082601(A000124(n)))%A014210(n)` -/
def P13818922916827681289.Spec : Prop :=
  ∀ n, P13818922916827681289.a n = A203074 n

end A203074

/-! ## A203074.P5768866718368899004

`record[A014210(A008611(n))%A014210(n)]`
-/

namespace A203074.P5768866718368899004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 (A008611 n).toNat) (A014210 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203074.P5768866718368899004

namespace A203074

/-- `record[A014210(A008611(n))%A014210(n)]` -/
def P5768866718368899004.Spec : Prop :=
  ∀ n, P5768866718368899004.a n = A203074 n

end A203074

/-!
# A203075: Write n as a sum of distinct terms from A203074; if there is more than one way, choose the smallest binary number.

The programs for A203075, there is no canonical definition to state claims against.
-/

/-! ## A203075.P13338150869915484412

`A007088(A203076(n))`
-/

namespace A203075.P13338150869915484412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A203076 n).toNat

end

end A203075.P13338150869915484412

/-! ## A203075.P5002879048643931545

`A185544(2*A203076(n))`
-/

namespace A203075.P5002879048643931545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A203076 n).toNat

end

end A203075.P5002879048643931545

/-! ## A203075.P13396038851424382391

`A185544(A203076(n)+A203076(n))`
-/

namespace A203075.P13396038851424382391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A203076 n + A203076 n).toNat

end

end A203075.P13396038851424382391

/-! ## A203075.P16503301248461834130

`A007088(lt[n, ∏{p}[and(-n, n²²), #]+1])`
-/

namespace A203075.P16503301248461834130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((n ^ 2) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A203075.P16503301248461834130

/-! ## A203075.P8152977950722244342

`A185544(2*lt[n, ∏{p}[and(-n, n²²), #]+1])`
-/

namespace A203075.P8152977950722244342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((n ^ 2) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A203075.P8152977950722244342

/-!
# A203076: Convert A203075(n) to base 10.

The programs for A203076, there is no canonical definition to state claims against.
-/

/-! ## A203076.P10516761511476811682

`lt[n, ∏{p}[and(-n, n²²), #]+1]`
-/

namespace A203076.P10516761511476811682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((n ^ 2) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203076.P10516761511476811682

/-! ## A203076.P9152036580655859842

`lt[A165161(lcm(n, -1%∏{e}[n, #])), 2]`
-/

namespace A203076.P9152036580655859842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165161 (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A203076.P9152036580655859842

/-! ## A203076.P11683157016531812296

`eq[0, A277017(A256078(n))]`
-/

namespace A203076.P11683157016531812296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A256078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203076.P11683157016531812296

/-! ## A203076.P56089389726497354

`eq[0, A294168(A294105(n))]`
-/

namespace A203076.P56089389726497354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294168 (A294105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203076.P56089389726497354

/-! ## A203076.P2243778702563470874

`lt[A165161(A105570(n)), 2]`
-/

namespace A203076.P2243778702563470874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165161 (A105570 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203076.P2243778702563470874

/-!
# A203083: Number of (n+2)X(n+2) binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203083, there is no canonical definition to state claims against.
-/

/-! ## A203083.P10590108522758189640

`A203091(∑[4*n]+1)`
-/

namespace A203083.P10590108522758189640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203083.P10590108522758189640

/-! ## A203083.P9814271368979090212

`record[A003982(n)*A203091(n+1)]`
-/

namespace A203083.P9814271368979090212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203083.P9814271368979090212

/-! ## A203083.P14548950744953509325

`record[gcd(A114327(n), A203091(n+1))]`
-/

namespace A203083.P14548950744953509325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A203091 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203083.P14548950744953509325

/-! ## A203083.P12812497016911528694

`ceil(1/A007318(n))*A203091(A001844(n))`
-/

namespace A203083.P12812497016911528694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A203091 (A001844 n).toNat

end

end A203083.P12812497016911528694

/-! ## A203083.P15600278755205400321

`A203091(A001844(n))/A014963(12*(n+1))`
-/

namespace A203083.P15600278755205400321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203091 (A001844 n).toNat : ℚ) / (A014963 (12 * (n + 1)) : ℚ)

end

end A203083.P15600278755205400321

/-!
# A203084: Number of (n+2) X 3 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203084, there is no canonical definition to state claims against.
-/

/-! ## A203084.P10071651788466963184

`A207785(Δ[A264443(n)]+2)`
-/

namespace A203084.P10071651788466963184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (f1 (n + 1) - f1 n + 2).toNat

end

end A203084.P10071651788466963184

/-! ## A203084.P14140873272106614978

`A207785(A000217(n+5)-2)`
-/

namespace A203084.P14140873272106614978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000217 (n + 5) - 2).toNat

end

end A203084.P14140873272106614978

/-! ## A203084.P11897751361279613008

`A207785(A167499(n+4)-7)`
-/

namespace A203084.P11897751361279613008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A167499 (n + 4) - 7).toNat

end

end A203084.P11897751361279613008

/-! ## A203084.P16966557296349579232

`A207785(Δ[A023545(n+1)]+2)`
-/

namespace A203084.P16966557296349579232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (f1 (n + 1) - f1 n + 2).toNat

end

end A203084.P16966557296349579232

/-! ## A203084.P7238137983910965032

`A207785(A027379(n+2)+n+6)`
-/

namespace A203084.P7238137983910965032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A027379 (n + 2) + (n + 6 : ℤ)).toNat

end

end A203084.P7238137983910965032

/-!
# A203085: Number of (n+2)X4 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203085, there is no canonical definition to state claims against.
-/

/-! ## A203085.P17284800283060580008

`A203091(∑[n+1]+2)`
-/

namespace A203085.P17284800283060580008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203085.P17284800283060580008

/-! ## A203085.P14001715944032923956

`record[A203091(A133263(A008624(n)))]`
-/

namespace A203085.P14001715944032923956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203085.P14001715944032923956

/-! ## A203085.P5801543516234861952

`record[A203091(abs(A201163(n)))]`
-/

namespace A203085.P5801543516234861952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203085.P5801543516234861952

/-! ## A203085.P1743096832548374381

`record[A203091(Δ[A003453(n+5)])]`
-/

namespace A203085.P1743096832548374381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203085.P1743096832548374381

/-! ## A203085.P17298350857709906518

`record[A203091(A000096(A000188(n+1)))]`
-/

namespace A203085.P17298350857709906518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203085.P17298350857709906518

/-!
# A203086: Number of (n+2)X5 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203086, there is no canonical definition to state claims against.
-/

/-! ## A203086.P7245942299016063034

`A203091(∑[n+2]+4)`
-/

namespace A203086.P7245942299016063034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203086.P7245942299016063034

/-! ## A203086.P14174623770912569752

`A203091(A167614(n+1))+A011744(n)`
-/

namespace A203086.P14174623770912569752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A167614 (n + 1)).toNat + A011744 n

end

end A203086.P14174623770912569752

/-! ## A203086.P3854621220048500792

`lcm(A033999(n), A203091(A167614(n+1)))`
-/

namespace A203086.P3854621220048500792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203091 (A167614 (n + 1)).toNat)

end

end A203086.P3854621220048500792

/-! ## A203086.P14240770048161350019

`or(A000007(n), A203091(A167614(n+1)))`
-/

namespace A203086.P14240770048161350019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203091 (A167614 (n + 1)).toNat)

end

end A203086.P14240770048161350019

/-! ## A203086.P18165653733289013214

`A203091(A167614(n+1))%A203087(n+1)`
-/

namespace A203086.P18165653733289013214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203091 (A167614 (n + 1)).toNat) (A203087 (n + 1))

end

end A203086.P18165653733289013214

/-!
# A203087: Number of (n+2)X6 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203087, there is no canonical definition to state claims against.
-/

/-! ## A203087.P9204320316168108540

`A203091(∑[n+3]+7)`
-/

namespace A203087.P9204320316168108540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203087.P9204320316168108540

/-! ## A203087.P14335935543052563374

`A203091(A141214(n+1))+A011744(n)`
-/

namespace A203087.P14335935543052563374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A141214 (n + 1)).toNat + A011744 n

end

end A203087.P14335935543052563374

/-! ## A203087.P16884524442708693417

`lcm(A033999(n), A203091(A141214(n+1)))`
-/

namespace A203087.P16884524442708693417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203091 (A141214 (n + 1)).toNat)

end

end A203087.P16884524442708693417

/-! ## A203087.P3287441501479554747

`or(A000007(n), A203091(A141214(n+1)))`
-/

namespace A203087.P3287441501479554747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203091 (A141214 (n + 1)).toNat)

end

end A203087.P3287441501479554747

/-! ## A203087.P14168465923996990171

`or(A003982(n), A203091(A141214(n+1)))`
-/

namespace A203087.P14168465923996990171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A203091 (A141214 (n + 1)).toNat)

end

end A203087.P14168465923996990171

/-!
# A203088: Number of (n+2)X7 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203088, there is no canonical definition to state claims against.
-/

/-! ## A203088.P17766066524465637235

`A203091(A374005(n+1))`
-/

namespace A203088.P17766066524465637235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A374005 (n + 1)).toNat

end

end A203088.P17766066524465637235

/-! ## A203088.P18446275739886054834

`A203091(A167499(n+3))`
-/

namespace A203088.P18446275739886054834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A167499 (n + 3)).toNat

end

end A203088.P18446275739886054834

/-! ## A203088.P858092490935309473

`A203091(A155212(n)+13)`
-/

namespace A203088.P858092490935309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A155212 n + 13).toNat

end

end A203088.P858092490935309473

/-! ## A203088.P4746185081979946279

`A203091(A000124(n+4)+4)`
-/

namespace A203088.P4746185081979946279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A000124 (n + 4) + 4).toNat

end

end A203088.P4746185081979946279

/-! ## A203088.P5583126657623037593

`A203091(A141214(n+1)+8)`
-/

namespace A203088.P5583126657623037593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A141214 (n + 1) + 8).toNat

end

end A203088.P5583126657623037593

/-!
# A203089: Number of (n+2)X8 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203089, there is no canonical definition to state claims against.
-/

/-! ## A203089.P10666263489101081870

`A203091(A374007(n+1))`
-/

namespace A203089.P10666263489101081870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A374007 (n + 1)).toNat

end

end A203089.P10666263489101081870

/-! ## A203089.P9532795341427640013

`A203091(A056115(n)+21)`
-/

namespace A203089.P9532795341427640013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A056115 n + 21).toNat

end

end A203089.P9532795341427640013

/-! ## A203089.P1623487597416941625

`A203091(A167499(n+4)+1)`
-/

namespace A203089.P1623487597416941625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A167499 (n + 4) + 1).toNat

end

end A203089.P1623487597416941625

/-! ## A203089.P1095086312405888730

`A203091(A141214(n+2)+9)`
-/

namespace A203089.P1095086312405888730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A141214 (n + 2) + 9).toNat

end

end A203089.P1095086312405888730

/-! ## A203089.P11838363343561155181

`A203091(A000124(n+6)-(n+1))`
-/

namespace A203089.P11838363343561155181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A203089.P11838363343561155181

/-!
# A203090: Number of (n+2)X9 binary arrays avoiding patterns 000 and 101 in rows and columns.

The programs for A203090, there is no canonical definition to state claims against.
-/

/-! ## A203090.P12220908235218851855

`A203091(A374008(n+1))`
-/

namespace A203090.P12220908235218851855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A374008 (n + 1)).toNat

end

end A203090.P12220908235218851855

/-! ## A203090.P12577337612638819715

`A203091(eq[11, A066657(n)])`
-/

namespace A203090.P12577337612638819715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203090.P12577337612638819715

/-! ## A203090.P2641062913503972234

`A203091(eq[8, A131818(n+1)])`
-/

namespace A203090.P2641062913503972234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203090.P2641062913503972234

/-! ## A203090.P11278635219227722486

`A203091(A055999(n+4))`
-/

namespace A203090.P11278635219227722486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (A055999 (n + 4)).toNat

end

end A203090.P11278635219227722486

/-! ## A203090.P14984934894148594561

`A203091(eq[4, A219347(n)])`
-/

namespace A203090.P14984934894148594561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203090.P14984934894148594561

/-!
# A203092: Triangular array read by rows. T(n,k) is the number of partial functions on {1,2,...,n} that are endofunctions with no cycles of length > 1 that have exactly k components.

The programs for A203092, there is no canonical definition to state claims against.
-/

/-! ## A203092.P12136959776263714307

`A007318(n)*A144303(A061579(n))`
-/

namespace A203092.P12136959776263714307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144303 (A061579 n).toNat

end

end A203092.P12136959776263714307

/-! ## A203092.P3536767417356527642

`abs(A130595(n)*A144303(A061579(n)))`
-/

namespace A203092.P3536767417356527642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A144303 (A061579 n).toNat|

end

end A203092.P3536767417356527642

/-! ## A203092.P5526058527877459402

`sqrt(A008459(n))*A144303(A061579(n))`
-/

namespace A203092.P5526058527877459402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A144303 (A061579 n).toNat : ℝ)

end

end A203092.P5526058527877459402

/-! ## A203092.P8231004922138398057

`Δ[A102363(n)]*A144303(A061579(n))`
-/

namespace A203092.P8231004922138398057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A144303 (A061579 n).toNat

end

end A203092.P8231004922138398057

/-! ## A203092.P16448416027687639891

`ceil(A109128(n)/2)*A144303(A061579(n))`
-/

namespace A203092.P16448416027687639891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A144303 (A061579 n).toNat

end

end A203092.P16448416027687639891

/-!
# A203093: Number of n X n 0..3 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203093, there is no canonical definition to state claims against.
-/

/-! ## A203093.P5545122553963729215

`A203101(∑[4*n]+1)`
-/

namespace A203093.P5545122553963729215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203093.P5545122553963729215

/-! ## A203093.P7527170531225190276

`A203101(A001844(n))^ceil(acot(n))`
-/

namespace A203093.P7527170531225190276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203101 (A001844 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A203093.P7527170531225190276

/-! ## A203093.P6079280574571207000

`record[A003982(n)*A203101(n+1)]`
-/

namespace A203093.P6079280574571207000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203093.P6079280574571207000

/-! ## A203093.P18113278254445809042

`gcd(A000038(n), A203101(A001844(n)))`
-/

namespace A203093.P18113278254445809042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A203101 (A001844 n).toNat)

end

end A203093.P18113278254445809042

/-!
# A203094: Number of nX1 0..3 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203094, there is no canonical definition to state claims against.
-/

/-! ## A203094.P1810950755234051825

`record[gcd(A119879(n), A217954(n+1))]`
-/

namespace A203094.P1810950755234051825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119879 n) (A217954 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203094.P1810950755234051825

/-! ## A203094.P10629770916224289209

`record[gcd(A217954(n+3), A319797(n+2))]`
-/

namespace A203094.P10629770916224289209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217954 (n + 3)) (A319797 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203094.P10629770916224289209

/-! ## A203094.P8690184246855187323

`gcd(A112316(n), A217954(A347553(n+3)))`
-/

namespace A203094.P8690184246855187323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A217954 (A347553 (n + 3)).toNat)

end

end A203094.P8690184246855187323

/-! ## A203094.P12854230304231849241

`record[A217954(n+1)^A319797(A319797(n))]`
-/

namespace A203094.P12854230304231849241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217954 (n + 1) : ℚ) ^ (A319797 (A319797 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203094.P12854230304231849241

/-! ## A203094.P6952933201776442797

`record[A217954(n+10)%A217883(n+11)]`
-/

namespace A203094.P6952933201776442797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217954 (n + 10)) (A217883 (n + 11))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203094.P6952933201776442797

/-!
# A203095: Number of n X 2 0..3 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203095, there is no canonical definition to state claims against.
-/

/-! ## A203095.P2318526236960407298

`A203101(∑[n+1]+2)`
-/

namespace A203095.P2318526236960407298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203095.P2318526236960407298

/-! ## A203095.P12189689889027481128

`record[A010054(n)*A203101(n+2)]`
-/

namespace A203095.P12189689889027481128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203101 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203095.P12189689889027481128

/-! ## A203095.P11298385242699009071

`record[root(A203101(n+3), A066633(n+1))]`
-/

namespace A203095.P11298385242699009071
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203101 (n + 3) : ℝ) ^ (1 / (A066633 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203095.P11298385242699009071

/-! ## A203095.P6397140385477490734

`record[A203101(Δ[A003453(n+5)])]`
-/

namespace A203095.P6397140385477490734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203095.P6397140385477490734

/-! ## A203095.P5073940878271293480

`record[A203101(A198453(n+1))]`
-/

namespace A203095.P5073940878271293480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203095.P5073940878271293480

/-!
# A203096: Number of nX3 0..3 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203096, there is no canonical definition to state claims against.
-/

/-! ## A203096.P11416683211134022637

`A203101(∑[n+2]+4)`
-/

namespace A203096.P11416683211134022637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203096.P11416683211134022637

/-! ## A203096.P12681373704232723257

`lcm(2, A203101(A167614(n+1)))`
-/

namespace A203096.P12681373704232723257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203101 (A167614 (n + 1)).toNat)

end

end A203096.P12681373704232723257

/-! ## A203096.P13423848933847361488

`A203101(A167614(n+1))+A025469(n)`
-/

namespace A203096.P13423848933847361488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A167614 (n + 1)).toNat + A025469 n

end

end A203096.P13423848933847361488

/-! ## A203096.P1420609911808254554

`A203101(A167614(n+1))+A178798(n)`
-/

namespace A203096.P1420609911808254554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A167614 (n + 1)).toNat + A178798 n

end

end A203096.P1420609911808254554

/-! ## A203096.P8748808998874219067

`A203101(A167614(n+1))%A203097(n+1)`
-/

namespace A203096.P8748808998874219067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203101 (A167614 (n + 1)).toNat) (A203097 (n + 1))

end

end A203096.P8748808998874219067

/-!
# A203097: Number of n X 4 0..3 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203097, there is no canonical definition to state claims against.
-/

/-! ## A203097.P2137491443371893597

`A203101(A052905(n)+9)`
-/

namespace A203097.P2137491443371893597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A052905 n + 9).toNat

end

end A203097.P2137491443371893597

/-! ## A203097.P2861903343602757280

`A203101(A055999(n)+10)`
-/

namespace A203097.P2861903343602757280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A055999 n + 10).toNat

end

end A203097.P2861903343602757280

/-! ## A203097.P2102015375879264364

`A203101(A167614(n+2)+1)`
-/

namespace A203097.P2102015375879264364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A167614 (n + 2) + 1).toNat

end

end A203097.P2102015375879264364

/-! ## A203097.P12537578091908060705

`A203101(Δ[A006416(n+2)])`
-/

namespace A203097.P12537578091908060705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (f1 (n + 1) - f1 n).toNat

end

end A203097.P12537578091908060705

/-! ## A203097.P10237059619105378611

`A203101(eq[4, A057728(n+1)])`
-/

namespace A203097.P10237059619105378611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203097.P10237059619105378611

/-!
# A203098: Number of nX5 0..3 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203098, there is no canonical definition to state claims against.
-/

/-! ## A203098.P17474829110523258369

`A203101(A374005(n+1))`
-/

namespace A203098.P17474829110523258369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A374005 (n + 1)).toNat

end

end A203098.P17474829110523258369

/-! ## A203098.P10744532333225562886

`A203101(eq[8, A057728(n+1)])`
-/

namespace A203098.P10744532333225562886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203098.P10744532333225562886

/-! ## A203098.P11298890269460668509

`A203101(lt[A228461(n+5), n])`
-/

namespace A203098.P11298890269460668509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A203098.P11298890269460668509

/-! ## A203098.P15055186674239267863

`A203101(Δ[A006416(n+3)]-1)`
-/

namespace A203098.P15055186674239267863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (f1 (n + 1) - f1 n - 1).toNat

end

end A203098.P15055186674239267863

/-!
# A203099: 

The programs for A203099, there is no canonical definition to state claims against.
-/

/-! ## A203099.P9007429526437480302

`A203101(Δ[Δ[A006504(n+1)]])`
-/

namespace A203099.P9007429526437480302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (f1 (n + 1) - f1 n).toNat

end

end A203099.P9007429526437480302

