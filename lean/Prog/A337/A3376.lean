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
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A337600: Number of unordered triples of positive integers summing to n whose set of distinct parts is pairwise coprime, where a singleton is always considered coprime.

The programs for A337600, there is no canonical definition to state claims against.
-/

/-! ## A337600.P14140349315568529529

`A337601(n)+char[3*(n+2)]`
-/

namespace A337600.P14140349315568529529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337601 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337600.P14140349315568529529

/-!
# A337601: Number of unordered triples of positive integers summing to n whose set of distinct parts is pairwise coprime, where a singleton is not considered coprime unless it is (1).

The programs for A337601, there is no canonical definition to state claims against.
-/

/-! ## A337601.P17003010415936042763

`A337600(n)-A337604(n)%3`
-/

namespace A337601.P17003010415936042763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n - Int.tmod (A337604 n) 3

end

end A337601.P17003010415936042763

/-! ## A337601.P1974921675795758040

`A337600(n)+A337603(n)-A337602(n)`
-/

namespace A337601.P1974921675795758040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n + (A337603 n - A337602 n)

end

end A337601.P1974921675795758040

/-! ## A337601.P8349027737748741629

`A337600(n)-A010872(A337604(n))`
-/

namespace A337601.P8349027737748741629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n - A010872 (A337604 n).toNat

end

end A337601.P8349027737748741629

/-! ## A337601.P8509238759542261630

`A337600(n)-A011655(A337604(n)+6)`
-/

namespace A337601.P8509238759542261630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n - A011655 (A337604 n + 6).toNat

end

end A337601.P8509238759542261630

/-! ## A337601.P17119988539568029047

`A337600(n)-A011655(A337604(n)²)`
-/

namespace A337601.P17119988539568029047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n - A011655 (A337604 n ^ 2).toNat

end

end A337601.P17119988539568029047

/-!
# A337602: Number of ordered triples of positive integers summing to n whose set of distinct parts is pairwise coprime, where a singleton is always considered coprime.

The programs for A337602, there is no canonical definition to state claims against.
-/

/-! ## A337602.P4526769537658933657

`A337603(n)+A337604(n)%3`
-/

namespace A337602.P4526769537658933657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337603 n + Int.tmod (A337604 n) 3

end

end A337602.P4526769537658933657

/-! ## A337602.P17476642489187074410

`A337603(n)+char[A007494(2*(n+2))]`
-/

namespace A337602.P17476642489187074410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337603 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337602.P17476642489187074410

/-! ## A337602.P3486634649063949423

`A337600(n)+A337603(n)-A337601(n)`
-/

namespace A337602.P3486634649063949423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n + (A337603 n - A337601 n)

end

end A337602.P3486634649063949423

/-! ## A337602.P17544756891849266756

`A337603(n)+A010872(A337604(n))`
-/

namespace A337602.P17544756891849266756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337603 n + A010872 (A337604 n).toNat

end

end A337602.P17544756891849266756

/-! ## A337602.P9039396139437844632

`A337603(n)+A187969(A304204(n+1))`
-/

namespace A337602.P9039396139437844632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337603 n + A187969 (A304204 (n + 1)).toNat

end

end A337602.P9039396139437844632

/-!
# A337603: Number of ordered triples of positive integers summing to n whose set of distinct parts is pairwise coprime, where a singleton is not considered coprime unless it is (1).

The programs for A337603, there is no canonical definition to state claims against.
-/

/-! ## A337603.P17846169668227345406

`A337602(n)-A337604(n)%3`
-/

namespace A337603.P17846169668227345406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337602 n - Int.tmod (A337604 n) 3

end

end A337603.P17846169668227345406

/-! ## A337603.P2047045278062870097

`A337602(n)-char[A008486(n+2)]`
-/

namespace A337603.P2047045278062870097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337602 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337603.P2047045278062870097

/-! ## A337603.P381663566482303369

`A337601(n)+A337602(n)-A337600(n)`
-/

namespace A337603.P381663566482303369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337601 n + (A337602 n - A337600 n)

end

end A337603.P381663566482303369

/-! ## A337603.P8522900064489925228

`A337602(n)-A010872(A337604(n))`
-/

namespace A337603.P8522900064489925228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337602 n - A010872 (A337604 n).toNat

end

end A337603.P8522900064489925228

/-!
# A337604: Number of ordered triples of positive integers summing to n, any two of which have a common divisor > 1.

The programs for A337604, there is no canonical definition to state claims against.
-/

/-! ## A337604.P1452864972329843648

`A344574(A015161(n)²+n)`
-/

namespace A337604.P1452864972329843648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344574 (A015161 n ^ 2 + (n : ℤ)).toNat

end

end A337604.P1452864972329843648

/-!
# A337605: Number of unordered triples of distinct positive integers summing to n, any two of which have a common divisor > 1.

The programs for A337605, there is no canonical definition to state claims against.
-/

/-! ## A337605.P1029147443632090699

`val(A331885(n)!, 11)`
-/

namespace A337605.P1029147443632090699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A331885 n).toNat) 11

end

end A337605.P1029147443632090699

/-! ## A337605.P5145109028222030795

`A097576(C(A116900(n), 2))`
-/

namespace A337605.P5145109028222030795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 (Nat.choose (A116900 n).toNat 2)

end

end A337605.P5145109028222030795

/-! ## A337605.P4176321116040736153

`floor(A105592(A018783(n))/2)`
-/

namespace A337605.P4176321116040736153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105592 (A018783 n).toNat : ℚ) / 2⌋

end

end A337605.P4176321116040736153

/-! ## A337605.P11308495760685434375

`A368094(A326850(n))%A333627(2*n+1)`
-/

namespace A337605.P11308495760685434375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368094 (A326850 n).toNat) (A333627 (2 * n + 1))

end

end A337605.P11308495760685434375

/-! ## A337605.P12596879554934812130

`A086008(A005579(n)+2)`
-/

namespace A337605.P12596879554934812130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A005579 n + 2).toNat

end

end A337605.P12596879554934812130

/-!
# A337609: Positive integers m such that A126286^k(m) = m for some positive integer k.

The programs for A337609, there is no canonical definition to state claims against.
-/

/-! ## A337609.P6027489505126014850

`eq[n+1, A126286(A126286(n+1))]+1`
-/

namespace A337609.P6027489505126014850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126286 (A126286 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337609.P6027489505126014850

/-!
# A337610: Positive integers m such that A126287^k(m) = m for some positive integer k.

The programs for A337610, there is no canonical definition to state claims against.
-/

/-! ## A337610.P4547511913745359610

`eq[n+1, A126287(A126287(n+1))]+1`
-/

namespace A337610.P4547511913745359610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126287 (A126287 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337610.P4547511913745359610

/-!
# A337611: Positive integers m such that A126288^k(m) = m for some positive integer k.

The programs for A337611, there is no canonical definition to state claims against.
-/

/-! ## A337611.P12878583014095204947

`A181486(round(round(sqrt(n²+1))/2)+n+1)`
-/

namespace A337611.P12878583014095204947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181486 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ) / 2) + (n + 1 : ℤ)).toNat

end

end A337611.P12878583014095204947

/-! ## A337611.P6724183355264042419

`filter[A181486(n+1), A285080(#)]`
-/

namespace A337611.P6724183355264042419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A337611.P6724183355264042419

/-!
# A337615: T(n, k) = binomial(n, k)*sf(n-k)*sf(k) where sf is the subfactorial (A000166). Triangle read by rows, for 0 <= k <= n.

The programs for A337615, the canonical program `A337615.P1242488017580297949` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337615 has offset 0).

The definition of A337615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337615.P10925646326858986482

`a(A112367(n))*A008290(n)` with `a(0)=1`
-/

namespace A337615.P10925646326858986482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A112367 n).toNat * A008290 n

end

end A337615.P10925646326858986482

namespace A337615

/-- `a(A112367(n))*A008290(n)` -/
def P10925646326858986482.Spec : Prop :=
  ∀ n, P10925646326858986482.a n = A337615 n

end A337615

/-! ## A337615.P9350823797403685030

`A000166(n-C(∑[char[∑[n]]], 2))*A008290(n)`
-/

namespace A337615.P9350823797403685030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A008290 n

end

end A337615.P9350823797403685030

namespace A337615

/-- `A000166(n-C(∑[char[∑[n]]], 2))*A008290(n)` -/
def P9350823797403685030.Spec : Prop :=
  ∀ n, P9350823797403685030.a n = A337615 n

end A337615

/-! ## A337615.P16602620154733339123

`A000166(A002262(n))*A008290(n)`
-/

namespace A337615.P16602620154733339123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A002262 n).toNat * A008290 n

end

end A337615.P16602620154733339123

namespace A337615

/-- `A000166(A002262(n))*A008290(n)` -/
def P16602620154733339123.Spec : Prop :=
  ∀ n, P16602620154733339123.a n = A337615 n

end A337615

/-! ## A337615.P1242488017580297949

`A000166(A025581(n))*A098825(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A337615

/-- `A000166(A025581(n))*A098825(n)` -/
def P1242488017580297949.Spec : Prop :=
  ∀ n, P1242488017580297949.a n = A337615 n

theorem P1242488017580297949.correct : P1242488017580297949.Spec := by
  intro n
  simp only [A337615]

end A337615

/-! ## A337615.P14984005523036881273

`A008290(n)*A008290(A112367(n))`
-/

namespace A337615.P14984005523036881273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n * A008290 (A112367 n).toNat

end

end A337615.P14984005523036881273

namespace A337615

/-- `A008290(n)*A008290(A112367(n))` -/
def P14984005523036881273.Spec : Prop :=
  ∀ n, P14984005523036881273.a n = A337615 n

end A337615

/-! ## A337615.P8492047693721785643

`A000166(log2(A059268(n)))*A008290(n)`
-/

namespace A337615.P8492047693721785643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A008290 n

end

end A337615.P8492047693721785643

namespace A337615

/-- `A000166(log2(A059268(n)))*A008290(n)` -/
def P8492047693721785643.Spec : Prop :=
  ∀ n, P8492047693721785643.a n = A337615 n

end A337615

/-! ## A337615.P9053472163667370829

`A008290(n)/A007318(n)*A098825(n)`
-/

namespace A337615.P9053472163667370829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008290 n : ℚ) / (A007318 n : ℚ) * (A098825 n : ℚ)

end

end A337615.P9053472163667370829

namespace A337615

/-- `A008290(n)/A007318(n)*A098825(n)` -/
def P9053472163667370829.Spec : Prop :=
  ∀ n, P9053472163667370829.a n = (A337615 n : ℚ)

end A337615

/-!
# A337616: Row sums of A337967.

The programs for A337616, there is no canonical definition to state claims against.
-/

/-! ## A337616.P3945772546480091954

`A000111(n)*A122803(A004526(n))`
-/

namespace A337616.P3945772546480091954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A122803 (A004526 n).toNat

end

end A337616.P3945772546480091954

/-! ## A337616.P13686735474656809543

`A000111(n)*A077966(A052928(n))`
-/

namespace A337616.P13686735474656809543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A077966 (A052928 n).toNat

end

end A337616.P13686735474656809543

/-! ## A337616.P12606152895209946595

`A000111(n)*A123344(A008619(n))`
-/

namespace A337616.P12606152895209946595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A123344 (A008619 n).toNat

end

end A337616.P12606152895209946595

/-! ## A337616.P17084044077762116159

`A000111(n)*A123344(A004526(n)+1)`
-/

namespace A337616.P17084044077762116159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A123344 (A004526 n + 1).toNat

end

end A337616.P17084044077762116159

/-! ## A337616.P17799688550808549878

`A000111(n)*A016116(n)*A057077(n)`
-/

namespace A337616.P17799688550808549878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A016116 n * A057077 n

end

end A337616.P17799688550808549878

/-!
# A337618: a(n) is the number of horizontal segments originating from some grid point on the n-th antidiagonal of the Even Conant lattice.

The programs for A337618, there is no canonical definition to state claims against.
-/

/-! ## A337618.P2440557422188306423

`A231813(xor(A085268(n), A246568(2*(n+1))))`
-/

namespace A337618.P2440557422188306423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.xor (A085268 (n + 32)) (A246568 (2 * (n + 1)))).toNat

end

end A337618.P2440557422188306423

/-! ## A337618.P3187812191164049176

`A318559(lt[A098743(n+4), 3*n/5+n])`
-/

namespace A337618.P3187812191164049176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098743 (n + 4)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / 5) + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318559 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A337618.P3187812191164049176

/-! ## A337618.P12937356299016074485

`A356233(A051037(n+1)%A255832(n+5))`
-/

namespace A337618.P12937356299016074485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (Int.tmod (A051037 (n + 1)) (A255832 (n + 5))).toNat

end

end A337618.P12937356299016074485

/-! ## A337618.P420495459376070946

`A001055(lt[A168542(n), A244788(2*(n+1))])`
-/

namespace A337618.P420495459376070946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337618.P420495459376070946

/-! ## A337618.P2877722760527281207

`A001055(lt[A264593(n), A001055(3*n+2)])`
-/

namespace A337618.P2877722760527281207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337618.P2877722760527281207

/-!
# A337619: a(n) is the number of vertical segments originating from some grid point on the n-th antidiagonal of the Even Conant lattice.

The programs for A337619, there is no canonical definition to state claims against.
-/

/-! ## A337619.P12562476930170623784

`A088445(A286378(n)+A151838(n))`
-/

namespace A337619.P12562476930170623784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088445 (A286378 n + A151838 n).toNat

end

end A337619.P12562476930170623784

/-! ## A337619.P12352230628032212785

`gcd(A000120(A286375(n)), A324337(n))`
-/

namespace A337619.P12352230628032212785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A286375 n).toNat) (A324337 n)

end

end A337619.P12352230628032212785

/-! ## A337619.P5590153295077988203

`A088445(or(A151838(n), A286378(n)))`
-/

namespace A337619.P5590153295077988203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088445 (Int.lor (A151838 n) (A286378 n)).toNat

end

end A337619.P5590153295077988203

/-!
# A337621: a(n) is the length of the largest run of contiguous grid points on the n-th antidiagonal of the Even Conant lattice that are not on an edge, or 0 if no such point exists.

The programs for A337621, there is no canonical definition to state claims against.
-/

/-! ## A337621.P12527117439356446254

`A037817(∏{p}[A000045(n), #-1])`
-/

namespace A337621.P12527117439356446254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A337621.P12527117439356446254

/-! ## A337621.P14674510704199950703

`A234323(A264079(n)+1)`
-/

namespace A337621.P14674510704199950703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A264079 n + 1).toNat

end

end A337621.P14674510704199950703

/-! ## A337621.P1607516001148939090

`A011728(n)+A011720(A174794(n))`
-/

namespace A337621.P1607516001148939090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011728 n + A011720 (A174794 n).toNat

end

end A337621.P1607516001148939090

/-! ## A337621.P16463331463041184941

`A037833(A303852(n))`
-/

namespace A337621.P16463331463041184941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A303852 n).toNat

end

end A337621.P16463331463041184941

/-! ## A337621.P12484954889615422283

`A344606(3*n+4)%A055642(A000045(n+1))`
-/

namespace A337621.P12484954889615422283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344606 (3 * n + 4)) (A055642 (A000045 (n + 1)).toNat)

end

end A337621.P12484954889615422283

/-!
# A337623: a(n) is the least positive multiple of 2*n-1 containing only the digits 0 and 1 in base n.

The programs for A337623, there is no canonical definition to state claims against.
-/

/-! ## A337623.P16413960097371301385

`(2*(n+1)-1)*A337624(n+1)`
-/

namespace A337623.P16413960097371301385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A337624 (n + 1)

end

end A337623.P16413960097371301385

/-! ## A337623.P8179149566266361329

`A005408(n)*A337624(n+1)*A007318(∑[n])`
-/

namespace A337623.P8179149566266361329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A337624 (n + 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337623.P8179149566266361329

/-! ## A337623.P10026057639587771322

`C(2, A000203(n+2))+A005408(n)*A337624(n+1)`
-/

namespace A337623.P10026057639587771322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ) + A005408 n * A337624 (n + 1)

end

end A337623.P10026057639587771322

/-! ## A337623.P6660547216098410429

`A005408(n)*A337624(n+1)*A000108(gcd(n, n+1))`
-/

namespace A337623.P6660547216098410429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A337624 (n + 1) * A000108 (Nat.gcd n (n + 1))

end

end A337623.P6660547216098410429

/-!
# A337624: a(n) is the least positive integer in base n that when multiplied by 2n-1 will contain only the digits 0 and 1.

The programs for A337624, there is no canonical definition to state claims against.
-/

/-! ## A337624.P9236845217250616450

`A337623(n+1)/(2*(n+1)-1)`
-/

namespace A337624.P9236845217250616450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337623 (n + 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A337624.P9236845217250616450

/-! ## A337624.P3165064388815307103

`A008574(A337623(n+1))/A008574(2*n+1)`
-/

namespace A337624.P3165064388815307103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A337623 (n + 1)).toNat : ℚ) / (A008574 (2 * n + 1) : ℚ)

end

end A337624.P3165064388815307103

/-!
# A337625: Odd composite integers m such that F(m)^2 == 1 (mod m) and L(m) == 1 (mod m), where F(m) and L(m) are the m-th Fibonacci and Lucas numbers, respectively.

The programs for A337625, there is no canonical definition to state claims against.
-/

/-! ## A337625.P17327979218165142494

`∩[A005845(n+1), A337627(n+1)]`
-/

namespace A337625.P17327979218165142494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337625.P17327979218165142494

/-! ## A337625.P9699183431081776394

`∩[A005845(n+1), A337231(n+1)]`
-/

namespace A337625.P9699183431081776394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337625.P9699183431081776394

/-! ## A337625.P735027696646317741

`∩[A335670(n+1), A337231(n+1)]`
-/

namespace A337625.P735027696646317741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337625.P735027696646317741

/-! ## A337625.P12417080179644510420

`∩[A337231(n+1), A337627(n+1)]`
-/

namespace A337625.P12417080179644510420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337625.P12417080179644510420

/-! ## A337625.P9597736283273478197

`∩[A335672(n+1), A337627(n+1)]`
-/

namespace A337625.P9597736283273478197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337625.P9597736283273478197

/-! ## A337625.P3428109360976806329

`∩[A005845(n+1), A086504(n+1)]`
-/

namespace A337625.P3428109360976806329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337625.P3428109360976806329

/-!
# A337626: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 3 (mod m), where U(m) and V(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=3 and b=-1, respectively.

The programs for A337626, there is no canonical definition to state claims against.
-/

/-! ## A337626.P1829801205366180136

`∩[A335669(n+1), A337234(n+1)]`
-/

namespace A337626.P1829801205366180136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337626.P1829801205366180136

/-! ## A337626.P15181838800425408403

`record[A106614(A335669(n+1))]`
-/

namespace A337626.P15181838800425408403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A335669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337626.P15181838800425408403

/-!
# A337627: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 4 (mod m), where U(m) and V(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=4 and b=-1, respectively.

The programs for A337627, there is no canonical definition to state claims against.
-/

/-! ## A337627.P2362203891897620960

`filter[A335670(n+1), A011558(#)]`
-/

namespace A337627.P2362203891897620960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A337627.P2362203891897620960

/-! ## A337627.P7812130506115196656

`∩[A335670(n+1), A337236(n+1)]`
-/

namespace A337627.P7812130506115196656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337627.P7812130506115196656

/-! ## A337627.P13583101252585616733

`A335670(∑[and(1, n)+1]%A141464(n+1))`
-/

namespace A337627.P13583101252585616733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A141464 (n + 1))).toNat

end

end A337627.P13583101252585616733

/-!
# A337628: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 5 (mod m), where U(m) and V(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=5 and b=-1, respectively.

The programs for A337628, there is no canonical definition to state claims against.
-/

/-! ## A337628.P7991213057866822227

`∩[A335671(n+1), A337237(n+1)]`
-/

namespace A337628.P7991213057866822227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337628.P7991213057866822227

/-!
# A337629: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 6 (mod m), where U(m) and V(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=6 and b=-1, respectively.

The programs for A337629, there is no canonical definition to state claims against.
-/

/-! ## A337629.P4819336735724117541

`filter[A338078(n+1), A011558(#)]`
-/

namespace A337629.P4819336735724117541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A337629.P4819336735724117541

/-! ## A337629.P2727156081378126706

`∩[A338078(n+1), A100490(n)]`
-/

namespace A337629.P2727156081378126706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337629.P2727156081378126706

/-! ## A337629.P8056886614795470890

`∩[A338078(n+1), A338080(n+1)]`
-/

namespace A337629.P8056886614795470890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337629.P8056886614795470890

/-! ## A337629.P14392697138799824678

`filter[A338078(n+1), A011684(#)]`
-/

namespace A337629.P14392697138799824678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011684 (f1 j).toNat = 1) n)

end

end A337629.P14392697138799824678

/-! ## A337629.P7354795500926909981

`record[A338078(n+1)%A275702(n+1)]`
-/

namespace A337629.P7354795500926909981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338078 (n + 1)) (A275702 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337629.P7354795500926909981

/-!
# A337630: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 7 (mod m), where U(m) and V(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=7 and b=-1, respectively.

The programs for A337630, there is no canonical definition to state claims against.
-/

/-! ## A337630.P8678307415454853772

`∩[A338079(n+1), A338081(n+1)]`
-/

namespace A337630.P8678307415454853772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337630.P8678307415454853772

/-! ## A337630.P6691447192525661546

`A338079(A035246(n+1)^A267383(n))`
-/

namespace A337630.P6691447192525661546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338079 (SequenceMachineLib.roundAway ((A035246 (n + 1) : ℚ) ^ (A267383 n : ℤ))).toNat

end

end A337630.P6691447192525661546

/-! ## A337630.P17667502627818630548

`A338079(A035246(n+1)*A147108(n+1))`
-/

namespace A337630.P17667502627818630548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338079 (A035246 (n + 1) * A147108 (n + 1)).toNat

end

end A337630.P17667502627818630548

/-! ## A337630.P726111591925650937

`A338079(A035246(n+1)*A147109(n+1))`
-/

namespace A337630.P726111591925650937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338079 (A035246 (n + 1) * A147109 (n + 1)).toNat

end

end A337630.P726111591925650937

/-!
# A337631: a(n) is the sum of the squares of diameters of all nonempty subsets of {1,2,...,n}.

The programs for A337631, the canonical program `A337631.P9052327234039702644` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337631 has offset 1).

The definition of A337631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337631.P9052327234039702644

`2^(n+1)*((n-5)*(n+1)+13)-3*(n+1)-13`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337631

/-- `2^(n+1)*((n-5)*(n+1)+13)-3*(n+1)-13` -/
def P9052327234039702644.Spec : Prop :=
  ∀ n, P9052327234039702644.a n = A337631 (n + 1)

theorem P9052327234039702644.correct : P9052327234039702644.Spec := by
  intro n
  simp only [A337631, Nat.add_sub_cancel]

end A337631

/-! ## A337631.P10702022610560125154

`∑[A036826(n)]`
-/

namespace A337631.P10702022610560125154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337631.P10702022610560125154

namespace A337631

/-- `∑[A036826(n)]` -/
def P10702022610560125154.Spec : Prop :=
  ∀ n, P10702022610560125154.a n = A337631 (n + 1)

end A337631

/-! ## A337631.P11865143924860622672

`∑[A036800(n)/2]`
-/

namespace A337631.P11865143924860622672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036800 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337631.P11865143924860622672

namespace A337631

/-- `∑[A036800(n)/2]` -/
def P11865143924860622672.Spec : Prop :=
  ∀ n, P11865143924860622672.a n = (A337631 (n + 1) : ℚ)

end A337631

/-! ## A337631.P2228886478896947853

`∑[∑[A007758(n)]]/2`
-/

namespace A337631.P2228886478896947853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A337631.P2228886478896947853

namespace A337631

/-- `∑[∑[A007758(n)]]/2` -/
def P2228886478896947853.Spec : Prop :=
  ∀ n, P2228886478896947853.a n = (A337631 (n + 1) : ℚ)

end A337631

/-! ## A337631.P9405218880592592578

`∑[∑[n*A036289(n)]]/2`
-/

namespace A337631.P9405218880592592578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A337631.P9405218880592592578

namespace A337631

/-- `∑[∑[n*A036289(n)]]/2` -/
def P9405218880592592578.Spec : Prop :=
  ∀ n, P9405218880592592578.a n = (A337631 (n + 1) : ℚ)

end A337631

/-! ## A337631.P9451452704898475926

`∑[∑[n²*A000079(n)]]/2`
-/

namespace A337631.P9451452704898475926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A337631.P9451452704898475926

namespace A337631

/-- `∑[∑[n²*A000079(n)]]/2` -/
def P9451452704898475926.Spec : Prop :=
  ∀ n, P9451452704898475926.a n = (A337631 (n + 1) : ℚ)

end A337631

/-! ## A337631.P1810304275884118812

`∑[∑[n²*Δ[A000225(n)]]]/2`
-/

namespace A337631.P1810304275884118812
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A337631.P1810304275884118812

namespace A337631

/-- `∑[∑[n²*Δ[A000225(n)]]]/2` -/
def P1810304275884118812.Spec : Prop :=
  ∀ n, P1810304275884118812.a n = (A337631 (n + 1) : ℚ)

end A337631

/-!
# A337632: Triangle read by rows: T(n,k) is the number of nonnegative integers m < n such that m^k - m == 0 (mod n), where 0 <= k < n.

The programs for A337632, there is no canonical definition to state claims against.
-/

/-! ## A337632.P11283252096284736755

`A334006(n+1)*A337633(n+1)`
-/

namespace A337632.P11283252096284736755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334006 (n + 1) * A337633 (n + 1)

end

end A337632.P11283252096284736755

/-! ## A337632.P8505980458971805662

`A001222(A000079(A334006(n+1))^A337633(n+1))`
-/

namespace A337632.P8505980458971805662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000079 (A334006 (n + 1)).toNat : ℚ) ^ (A337633 (n + 1) : ℤ))).toNat

end

end A337632.P8505980458971805662

/-! ## A337632.P11801915233134062809

`A337633(n+1)*A337820(A245300(n)+1)`
-/

namespace A337632.P11801915233134062809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337633 (n + 1) * A337820 (A245300 n + 1).toNat

end

end A337632.P11801915233134062809

/-! ## A337632.P3761964740058277866

`A334006(n+1)*A353741(A315446(n)-A032741(n))`
-/

namespace A337632.P3761964740058277866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334006 (n + 1) * A353741 (A315446 n - A032741 n).toNat

end

end A337632.P3761964740058277866

/-! ## A337632.P1070875863850901595

`A001222(A165581(2^(n+1))+A098966(n+1))`
-/

namespace A337632.P1070875863850901595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A165581 (2 ^ (n + 1)) + A098966 (n + 1)).toNat

end

end A337632.P1070875863850901595

/-!
# A337633: Triangle read by rows: T(n,k) is the number of nonnegative integers m < n such that m^k + m == 0 (mod n), where 0 <= k < n.

The programs for A337633, there is no canonical definition to state claims against.
-/

/-! ## A337633.P17902582747850843248

`A337632(n+1)/A334006(n+1)`
-/

namespace A337633.P17902582747850843248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337632 (n + 1) : ℚ) / (A334006 (n + 1) : ℚ)

end

end A337633.P17902582747850843248

/-! ## A337633.P1516811581681934267

`gcd(A233583(A201873(n+1)), A337632(n+1))`
-/

namespace A337633.P1516811581681934267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233583 (A201873 (n + 1)).toNat) (A337632 (n + 1))

end

end A337633.P1516811581681934267

/-! ## A337633.P14093475260103738806

`A337632(n+1)/A337820(A245300(n)+1)`
-/

namespace A337633.P14093475260103738806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337632 (n + 1) : ℚ) / (A337820 (A245300 n + 1).toNat : ℚ)

end

end A337633.P14093475260103738806

/-! ## A337633.P8512500949523627476

`gcd(A168281(A168287(n)), A337632(n+1))`
-/

namespace A337633.P8512500949523627476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168281 (A168287 n).toNat) (A337632 (n + 1))

end

end A337633.P8512500949523627476

/-! ## A337633.P13274485053905414013

`A353741(A315446(n)-A032741(n))`
-/

namespace A337633.P13274485053905414013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353741 (A315446 n - A032741 n).toNat

end

end A337633.P13274485053905414013

/-!
# A337634: Number of numbers k <= n such that both k and k+1 are in A095096.

The programs for A337634, the canonical program `A337634.P13422522115950852119` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337634 has offset 0).

The definition of A337634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337634.P8596291704304080148

`∑[char[A337287(n+1)]]`
-/

namespace A337634.P8596291704304080148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337287 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337634.P8596291704304080148

namespace A337634

/-- `∑[char[A337287(n+1)]]` -/
def P8596291704304080148.Spec : Prop :=
  ∀ n, (P8596291704304080148.a n : ℤ) = A337634 n

end A337634

/-! ## A337634.P13651634739358823015

`∑[A095111(A095111(n)+n)]`
-/

namespace A337634.P13651634739358823015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (A095111 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337634.P13651634739358823015

namespace A337634

/-- `∑[A095111(A095111(n)+n)]` -/
def P13651634739358823015.Spec : Prop :=
  ∀ n, P13651634739358823015.a n = A337634 n

end A337634

/-! ## A337634.P14313162643075738777

`∑[1-A095076(A095076(n+1)+n)]`
-/

namespace A337634.P14313162643075738777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095076 (A095076 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337634.P14313162643075738777

namespace A337634

/-- `∑[1-A095076(A095076(n+1)+n)]` -/
def P14313162643075738777.Spec : Prop :=
  ∀ n, P14313162643075738777.a n = A337634 n

end A337634

/-! ## A337634.P13422522115950852119

`∑[(A143299(n+2)*A143299(n+1))%2]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A337634

/-- `∑[(A143299(n+2)*A143299(n+1))%2]` -/
def P13422522115950852119.Spec : Prop :=
  ∀ n, P13422522115950852119.a n = A337634 n

theorem P13422522115950852119.correct : P13422522115950852119.Spec := by
  intro n
  simp only [A337634]

end A337634

/-! ## A337634.P11987212933512670495

`a(n-1)+A095111(n+1)*A095111(n)` with `a(0)=0`
-/

namespace A337634.P11987212933512670495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A095111 (n + 1) * A095111 n

end

end A337634.P11987212933512670495

namespace A337634

/-- `a(n-1)+A095111(n+1)*A095111(n)` -/
def P11987212933512670495.Spec : Prop :=
  ∀ n, P11987212933512670495.a n = A337634 n

end A337634

/-! ## A337634.P14006294346380950586

`A095111(n+1-A095111(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A337634.P14006294346380950586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095111 ((n + 1 : ℤ) - A095111 (n + 1)).toNat + a (n - 1)

end

end A337634.P14006294346380950586

namespace A337634

/-- `A095111(n+1-A095111(n+1))+a(n-1)` -/
def P14006294346380950586.Spec : Prop :=
  ∀ n, P14006294346380950586.a n = A337634 n

end A337634

/-!
# A337635: Number of numbers k <= n such that k is in A095096 and k+1 is in A020899.

The programs for A337635, the canonical program `A337635.P17372032440398467433` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337635 has offset 0).

The definition of A337635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337635.P2569012791891511890

`∑[char[A337288(n+1)]]`
-/

namespace A337635.P2569012791891511890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337288 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P2569012791891511890

namespace A337635

/-- `∑[char[A337288(n+1)]]` -/
def P2569012791891511890.Spec : Prop :=
  ∀ n, (P2569012791891511890.a n : ℤ) = A337635 n

end A337635

/-! ## A337635.P18396029780530985449

`∑[ceil(sin(Δ[A095076(n)]))]`
-/

namespace A337635.P18396029780530985449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f2 (n + 1) - f2 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P18396029780530985449

namespace A337635

/-- `∑[ceil(sin(Δ[A095076(n)]))]` -/
def P18396029780530985449.Spec : Prop :=
  ∀ n, P18396029780530985449.a n = A337635 n

end A337635

/-! ## A337635.P4900113188235923484

`A337636(n)+A095076(n+1)`
-/

namespace A337635.P4900113188235923484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337636 n + A095076 (n + 1)

end

end A337635.P4900113188235923484

namespace A337635

/-- `A337636(n)+A095076(n+1)` -/
def P4900113188235923484.Spec : Prop :=
  ∀ n, P4900113188235923484.a n = A337635 n

end A337635

/-! ## A337635.P17372032440398467433

`∑[A000007(Δ[A095111(n)]+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A337635

/-- `∑[A000007(Δ[A095111(n)]+1)]` -/
def P17372032440398467433.Spec : Prop :=
  ∀ n, P17372032440398467433.a n = A337635 n

theorem P17372032440398467433.correct : P17372032440398467433.Spec := by
  intro n
  simp only [A337635]

end A337635

/-! ## A337635.P10548320832445989079

`∑[A000065(Δ[A095076(n)]+1)]`
-/

namespace A337635.P10548320832445989079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P10548320832445989079

namespace A337635

/-- `∑[A000065(Δ[A095076(n)]+1)]` -/
def P10548320832445989079.Spec : Prop :=
  ∀ n, P10548320832445989079.a n = A337635 n

end A337635

/-! ## A337635.P9920543017241830322

`∑[A000212(Δ[A095076(n)]+1)]`
-/

namespace A337635.P9920543017241830322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P9920543017241830322

namespace A337635

/-- `∑[A000212(Δ[A095076(n)]+1)]` -/
def P9920543017241830322.Spec : Prop :=
  ∀ n, P9920543017241830322.a n = A337635 n

end A337635

/-! ## A337635.P17175328751901957117

`∑[A001222((1-Δ[A095111(n)])!)]`
-/

namespace A337635.P17175328751901957117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (1 - (f2 (n + 1) - f2 n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P17175328751901957117

namespace A337635

/-- `∑[A001222((1-Δ[A095111(n)])!)]` -/
def P17175328751901957117.Spec : Prop :=
  ∀ n, P17175328751901957117.a n = A337635 n

end A337635

/-! ## A337635.P13195873052648195752

`∑[1-A000045(Δ[A095111(n)]+1)]`
-/

namespace A337635.P13195873052648195752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P13195873052648195752

namespace A337635

/-- `∑[1-A000045(Δ[A095111(n)]+1)]` -/
def P13195873052648195752.Spec : Prop :=
  ∀ n, P13195873052648195752.a n = A337635 n

end A337635

/-! ## A337635.P4362662451884474506

`∑[1-A000045(1-Δ[A095076(n)])]`
-/

namespace A337635.P4362662451884474506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P4362662451884474506

namespace A337635

/-- `∑[1-A000045(1-Δ[A095076(n)])]` -/
def P4362662451884474506.Spec : Prop :=
  ∀ n, P4362662451884474506.a n = A337635 n

end A337635

/-! ## A337635.P14278373844095453027

`a(n-1)+1-A095076(1-Δ[A095076(n)])` with `a(0)=1`
-/

namespace A337635.P14278373844095453027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - A095076 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A337635.P14278373844095453027

namespace A337635

/-- `a(n-1)+1-A095076(1-Δ[A095076(n)])` -/
def P14278373844095453027.Spec : Prop :=
  ∀ n, P14278373844095453027.a n = A337635 n

end A337635

/-! ## A337635.P17030395193293279146

`A337636(n+1)+A337637(n+1)-A337637(n)`
-/

namespace A337635.P17030395193293279146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337636 (n + 1) + (A337637 (n + 1) - A337637 n)

end

end A337635.P17030395193293279146

namespace A337635

/-- `A337636(n+1)+A337637(n+1)-A337637(n)` -/
def P17030395193293279146.Spec : Prop :=
  ∀ n, P17030395193293279146.a n = A337635 n

end A337635

/-!
# A337636: Number of numbers k <= n such that k+1 is in A095096 and k is in A020899.

The programs for A337636, the canonical program `A337636.P16176283414138515688` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337636 has offset 0).

The definition of A337636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337636.P11583354485572826706

`∑[char[A337289(n+1)]]`
-/

namespace A337636.P11583354485572826706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337289 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P11583354485572826706

namespace A337636

/-- `∑[char[A337289(n+1)]]` -/
def P11583354485572826706.Spec : Prop :=
  ∀ n, (P11583354485572826706.a n : ℤ) = A337636 n

end A337636

/-! ## A337636.P16176283414138515688

`∑[ceil(Δ[A095111(n)/2])]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A337636

/-- `∑[ceil(Δ[A095111(n)/2])]` -/
def P16176283414138515688.Spec : Prop :=
  ∀ n, P16176283414138515688.a n = A337636 n

theorem P16176283414138515688.correct : P16176283414138515688.Spec := by
  intro n
  simp only [A337636]

end A337636

/-! ## A337636.P10337508053644983528

`A004526(∑[Δ[A095076(n)]²])`
-/

namespace A337636.P10337508053644983528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337636.P10337508053644983528

namespace A337636

/-- `A004526(∑[Δ[A095076(n)]²])` -/
def P10337508053644983528.Spec : Prop :=
  ∀ n, P10337508053644983528.a n = A337636 n

end A337636

/-! ## A337636.P688655900299561921

`A337635(n)-A095076(n+1)`
-/

namespace A337636.P688655900299561921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 n - A095076 (n + 1)

end

end A337636.P688655900299561921

namespace A337636

/-- `A337635(n)-A095076(n+1)` -/
def P688655900299561921.Spec : Prop :=
  ∀ n, P688655900299561921.a n = A337636 n

end A337636

/-! ## A337636.P15490339750468343534

`∑[A000007(Δ[A095076(n)]+1)]`
-/

namespace A337636.P15490339750468343534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P15490339750468343534

namespace A337636

/-- `∑[A000007(Δ[A095076(n)]+1)]` -/
def P15490339750468343534.Spec : Prop :=
  ∀ n, P15490339750468343534.a n = A337636 n

end A337636

/-! ## A337636.P14628058536050010290

`∑[A000007(1-Δ[A095111(n)])]`
-/

namespace A337636.P14628058536050010290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P14628058536050010290

namespace A337636

/-- `∑[A000007(1-Δ[A095111(n)])]` -/
def P14628058536050010290.Spec : Prop :=
  ∀ n, P14628058536050010290.a n = A337636 n

end A337636

/-! ## A337636.P3912141320227440881

`∑[A000065(1-Δ[A095076(n)])]`
-/

namespace A337636.P3912141320227440881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P3912141320227440881

namespace A337636

/-- `∑[A000065(1-Δ[A095076(n)])]` -/
def P3912141320227440881.Spec : Prop :=
  ∀ n, P3912141320227440881.a n = A337636 n

end A337636

/-! ## A337636.P4682584149626876444

`∑[A000212(1-Δ[A095076(n)])]`
-/

namespace A337636.P4682584149626876444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P4682584149626876444

namespace A337636

/-- `∑[A000212(1-Δ[A095076(n)])]` -/
def P4682584149626876444.Spec : Prop :=
  ∀ n, P4682584149626876444.a n = A337636 n

end A337636

/-! ## A337636.P17206096918525293599

`∑[A001222((Δ[A095111(n)]+1)!)]`
-/

namespace A337636.P17206096918525293599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (f2 (n + 1) - f2 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P17206096918525293599

namespace A337636

/-- `∑[A001222((Δ[A095111(n)]+1)!)]` -/
def P17206096918525293599.Spec : Prop :=
  ∀ n, P17206096918525293599.a n = A337636 n

end A337636

/-! ## A337636.P2582121272518794520

`∑[A001221((1-Δ[A095076(n)])!)]`
-/

namespace A337636.P2582121272518794520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (1 - (f2 (n + 1) - f2 n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P2582121272518794520

namespace A337636

/-- `∑[A001221((1-Δ[A095076(n)])!)]` -/
def P2582121272518794520.Spec : Prop :=
  ∀ n, P2582121272518794520.a n = A337636 n

end A337636

/-! ## A337636.P13543138142089911429

`∑[A001222((1-Δ[A095076(n)])!)]`
-/

namespace A337636.P13543138142089911429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (1 - (f2 (n + 1) - f2 n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P13543138142089911429

namespace A337636

/-- `∑[A001222((1-Δ[A095076(n)])!)]` -/
def P13543138142089911429.Spec : Prop :=
  ∀ n, P13543138142089911429.a n = A337636 n

end A337636

/-!
# A337637: Number of numbers k <= n such that both k and k+1 are in A020899.

The programs for A337637, the canonical program `A337637.P9892417587625479301` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337637 has offset 0).

The definition of A337637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337637.P683835946011364683

`∑[char[A337290(n+1)]]`
-/

namespace A337637.P683835946011364683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337290 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337637.P683835946011364683

namespace A337637

/-- `∑[char[A337290(n+1)]]` -/
def P683835946011364683.Spec : Prop :=
  ∀ n, (P683835946011364683.a n : ℤ) = A337637 n

end A337637

/-! ## A337637.P9892417587625479301

`∑[A095076(A095076(n)+n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A337637

/-- `∑[A095076(A095076(n)+n)]` -/
def P9892417587625479301.Spec : Prop :=
  ∀ n, P9892417587625479301.a n = A337637 n

theorem P9892417587625479301.correct : P9892417587625479301.Spec := by
  intro n
  simp only [A337637]

end A337637

/-! ## A337637.P5827126668511973766

`∑[A095076(1-(A095111(n)-n))]`
-/

namespace A337637.P5827126668511973766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (1 - (A095111 n - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337637.P5827126668511973766

namespace A337637

/-- `∑[A095076(1-(A095111(n)-n))]` -/
def P5827126668511973766.Spec : Prop :=
  ∀ n, P5827126668511973766.a n = A337637 n

end A337637

/-! ## A337637.P14771109871559310005

`∑[1-A095111(A095111(n+1)+n)]`
-/

namespace A337637.P14771109871559310005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095111 (A095111 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337637.P14771109871559310005

namespace A337637

/-- `∑[1-A095111(A095111(n+1)+n)]` -/
def P14771109871559310005.Spec : Prop :=
  ∀ n, P14771109871559310005.a n = A337637 n

end A337637

/-! ## A337637.P12108830243913233853

`A095076((n+1)*A095076(n))+a(n-1)` with `a(0)=0`
-/

namespace A337637.P12108830243913233853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095076 ((n + 1 : ℤ) * A095076 n).toNat + a (n - 1)

end

end A337637.P12108830243913233853

namespace A337637

/-- `A095076((n+1)*A095076(n))+a(n-1)` -/
def P12108830243913233853.Spec : Prop :=
  ∀ n, P12108830243913233853.a n = A337637 n

end A337637

/-!
# A337640: a(n) = one-half of the number of cells in the central rectangle of the graph described in row 2n+1 of A333288.

The programs for A337640, there is no canonical definition to state claims against.
-/

/-! ## A337640.P5967456570913552268

`ceil(3/2*∑[A049697(2*n)])`
-/

namespace A337640.P5967456570913552268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A337640.P5967456570913552268

/-! ## A337640.P5749368886073183152

`A333288((n+1)²+n²)/2`
-/

namespace A337640.P5749368886073183152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333288 ((n + 1) ^ 2 + n ^ 2) : ℚ) / 2

end

end A337640.P5749368886073183152

/-! ## A337640.P2240416081693723310

`floor(A333288(A001844(n))/2)`
-/

namespace A337640.P2240416081693723310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333288 (A001844 n).toNat : ℚ) / 2⌋

end

end A337640.P2240416081693723310

/-! ## A337640.P10091347385989704283

`∑[A007494(A049697(2*n))]`
-/

namespace A337640.P10091347385989704283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A049697 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337640.P10091347385989704283

/-! ## A337640.P14379567019483931644

`A014682(∑[A049697(2*n)])`
-/

namespace A337640.P14379567019483931644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337640.P14379567019483931644

/-!
# A337641: One-quarter of the number of regions in the central square of an equal-armed cross with arms of length n (as in A331456).

The programs for A337641, there is no canonical definition to state claims against.
-/

/-! ## A337641.P6025452026539675949

`A122286(A005803(n+2))+A051879(n)`
-/

namespace A337641.P6025452026539675949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 (A005803 (n + 2)).toNat + A051879 n

end

end A337641.P6025452026539675949

/-!
# A337643: a(1) = 1; thereafter a(n) = a(n-1) / lpf(n) if lpf(n) divides a(n-1), otherwise a(n) = a(n-1) * lpf(n), where lpf is the least prime factor function A020639.

The programs for A337643, there is no canonical definition to state claims against.
-/

/-! ## A337643.P13351527092144607160

`A007913(a(n-1)*A020639(n))` with `a(0)=1`
-/

namespace A337643.P13351527092144607160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (a (n - 1) * A020639 n).toNat

end

end A337643.P13351527092144607160

/-! ## A337643.P10017893376208301780

`gcd(A008574(A056839(n)), A193385(n))`
-/

namespace A337643.P10017893376208301780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 (A056839 n).toNat) (A193385 n)

end

end A337643.P10017893376208301780

/-! ## A337643.P9351397164869611136

`A007913(lcm(A016116(n), A056839(n)))`
-/

namespace A337643.P9351397164869611136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.lcm (A016116 n) (A056839 n))

end

end A337643.P9351397164869611136

/-! ## A337643.P7248510277136903096

`A000034(A004526(n))*A026741(A056839(n))`
-/

namespace A337643.P7248510277136903096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004526 n).toNat * A026741 (A056839 n).toNat

end

end A337643.P7248510277136903096

/-! ## A337643.P3306203142836942499

`A304328(lcm(n, a(n-1)))` with `a(0)=1`
-/

namespace A337643.P3306203142836942499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304328 (Int.lcm (n : ℤ) (a (n - 1)))

end

end A337643.P3306203142836942499

/-!
# A337644: Numbers k such that w(k), w(k+1), and w(k+2) are all odd, where w is A336957.

The programs for A337644, there is no canonical definition to state claims against.
-/

/-! ## A337644.P6320632755041169018

`A338070(n+1)-2`
-/

namespace A337644.P6320632755041169018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338070 (n + 1) - 2

end

end A337644.P6320632755041169018

/-! ## A337644.P16692792464216346195

`A359790(A000040(n+1))+A338070(n+1)`
-/

namespace A337644.P16692792464216346195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A000040 (n + 1)).toNat + A338070 (n + 1)

end

end A337644.P16692792464216346195

/-! ## A337644.P17362359023325718756

`A359790(A065091(n+1))+A338070(n+1)`
-/

namespace A337644.P17362359023325718756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A065091 (n + 1)).toNat + A338070 (n + 1)

end

end A337644.P17362359023325718756

/-! ## A337644.P14158940172174275786

`A359790(A309586(n+1))+A338070(n+1)`
-/

namespace A337644.P14158940172174275786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A309586 (n + 1)).toNat + A338070 (n + 1)

end

end A337644.P14158940172174275786

/-!
# A337645: a(1)=2; thereafter, a(n) = smallest number with at least two different prime factors that is missing from A336957 after A336957(n) has been found.

The programs for A337645, there is no canonical definition to state claims against.
-/

/-! ## A337645.P5302310706278620120

`2*A338058(n+1)`
-/

namespace A337645.P5302310706278620120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338058 (n + 1)

end

end A337645.P5302310706278620120

/-! ## A337645.P13125282676706718153

`A338052(n+2)+2+n`
-/

namespace A337645.P13125282676706718153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338052 (n + 2) + 2 + (n : ℤ)

end

end A337645.P13125282676706718153

/-! ## A337645.P9159073191921651756

`A004277(A338058(n+1))`
-/

namespace A337645.P9159073191921651756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338058 (n + 1)).toNat

end

end A337645.P9159073191921651756

/-! ## A337645.P16580997363550508327

`A004275(A338058(n+1)+1)`
-/

namespace A337645.P16580997363550508327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A338058 (n + 1) + 1).toNat

end

end A337645.P16580997363550508327

/-! ## A337645.P11577539958978431095

`A338058(char[2]+1+n)+A338058(n+1)`
-/

namespace A337645.P11577539958978431095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338058 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A338058 (n + 1)

end

end A337645.P11577539958978431095

/-! ## A337645.P17482546077693138102

`(A338058(n+1)+A338058(n+1))%A187906(n+2)`
-/

namespace A337645.P17482546077693138102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338058 (n + 1) + A338058 (n + 1)) (A187906 (n + 2))

end

end A337645.P17482546077693138102

/-!
# A337646: Record high points in A336957.

The programs for A337646, there is no canonical definition to state claims against.
-/

/-! ## A337646.P10744988417436230969

`record[A336957(n+1)]`
-/

namespace A337646.P10744988417436230969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337646.P10744988417436230969

/-! ## A337646.P12086823455203761011

`record[A338051(n+1)+1+n]`
-/

namespace A337646.P12086823455203761011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337646.P12086823455203761011

/-! ## A337646.P5365365614590209608

`A336957(A337647(n+1))`
-/

namespace A337646.P5365365614590209608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A337647 (n + 1)).toNat

end

end A337646.P5365365614590209608

/-! ## A337646.P15962862320082607350

`A000027(record[A336957(ϕ²-(ϕ-n))])`
-/

namespace A337646.P15962862320082607350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337646.P15962862320082607350

/-! ## A337646.P15928315962020125840

`record[A336957(ϕ²-(ϕ-n))%A016946(n)]`
-/

namespace A337646.P15928315962020125840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336957 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A016946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337646.P15928315962020125840

/-!
# A337647: Indices of record high points in A336957.

The programs for A337647, there is no canonical definition to state claims against.
-/

/-! ## A337647.P11406588863526055188

`A337066(A337646(n+1))`
-/

namespace A337647.P11406588863526055188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A337646 (n + 1)).toNat

end

end A337647.P11406588863526055188

/-! ## A337647.P244005796783783114

`A337066(record[A336957(n+1)])`
-/

namespace A337647.P244005796783783114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337647.P244005796783783114

/-! ## A337647.P7833066671233063388

`A337066(record[A338051(n+1)+n+1])`
-/

namespace A337647.P7833066671233063388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337647.P7833066671233063388

/-! ## A337647.P14359708526317851081

`A337066(record[A336957(ϕ²-(ϕ-n))%A016946(n)])`
-/

namespace A337647.P14359708526317851081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336957 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A016946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337647.P14359708526317851081

/-! ## A337647.P2339653491821515902

`record[A337066(record[A338059(n+1)])]`
-/

namespace A337647.P2339653491821515902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338059 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337647.P2339653491821515902

/-!
# A337648: Odd primes p such that the first term in A336957 that is divisible by p is 2*p.

The programs for A337648, there is no canonical definition to state claims against.
-/

/-! ## A337648.P14204098208298439448

`p?[A000265(A336957(A337280(n+1)))]`
-/

namespace A337648.P14204098208298439448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A336957 (A337280 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337648.P14204098208298439448

/-! ## A337648.P15549861044077947361

`A337007(∩[A337280(n+1), A338074(n+1)])`
-/

namespace A337648.P15549861044077947361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338074 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337007 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A337648.P15549861044077947361

/-! ## A337648.P9935415609728351384

`p?[A336957(A337280(n+1))-A000040(n+1)]`
-/

namespace A337648.P9935415609728351384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A337280 (n + 1)).toNat - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337648.P9935415609728351384

/-! ## A337648.P16972457408404009692

`p?[A336957(A337280(n+1))-A008578(n+2)]`
-/

namespace A337648.P16972457408404009692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A337280 (n + 1)).toNat - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337648.P16972457408404009692

/-!
# A337649: Primes p such that the first term in {A336957(i): i >= 3} that is divisible by p is 3*p.

The programs for A337649, there is no canonical definition to state claims against.
-/

/-! ## A337649.P17116752233282769099

`p?[eq[A025851(n), A025868(n)]]`
-/

namespace A337649.P17116752233282769099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A337649.P17116752233282769099

/-! ## A337649.P5571151053862603991

`p?[eq[A025868(n), A025877(n+2)]]`
-/

namespace A337649.P5571151053862603991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A337649.P5571151053862603991

/-! ## A337649.P16779451582908974542

`p?[eq[A025908(n+4), A025909(n+3)]]`
-/

namespace A337649.P16779451582908974542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025908 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A337649.P16779451582908974542

/-! ## A337649.P7939884200637755802

`eq[A025851(A062584(n)), A025868(n)]`
-/

namespace A337649.P7939884200637755802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337649.P7939884200637755802

/-! ## A337649.P648690222590363538

`p?[A033684(n)+A028798(n+1)]`
-/

namespace A337649.P648690222590363538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 n + A028798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337649.P648690222590363538

/-!
# A337654: Expansion of H(x)*(1+x^5)/(1-x^2-x^3-x^4) where H(x) = g.f. for A249665.

The programs for A337654, there is no canonical definition to state claims against.
-/

/-! ## A337654.P5811660985434788200

`A121996(A180752(n+1)+1)`
-/

namespace A337654.P5811660985434788200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121996 (A180752 (n + 1) + 1).toNat

end

end A337654.P5811660985434788200

/-! ## A337654.P4482225541622511309

`A099155(n)-(A356989(n+1)-1)`
-/

namespace A337654.P4482225541622511309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099155 n - (A356989 (n + 1) - 1)

end

end A337654.P4482225541622511309

/-! ## A337654.P6746150251497442923

`A000196(A039301(n)-A148592(n))`
-/

namespace A337654.P6746150251497442923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A039301 n - A148592 n).toNat

end

end A337654.P6746150251497442923

/-! ## A337654.P3417485835125363244

`A000196(A039301(n)-A151412(n))`
-/

namespace A337654.P3417485835125363244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A039301 n - A151412 n).toNat

end

end A337654.P3417485835125363244

/-! ## A337654.P1339846135431838741

`A099155(n)-A000523(A132302(n))`
-/

namespace A337654.P1339846135431838741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099155 n - A000523 (A132302 n).toNat

end

end A337654.P1339846135431838741

/-!
# A337655: a(1)=1; thereafter, a(n) is the smallest number such that both the addition and multiplication tables for (a(1),...,a(n)) contain n*(n+1)/2 different entries (the maximum possible).

The programs for A337655, there is no canonical definition to state claims against.
-/

/-! ## A337655.P14359947999029026005

`A337662(∑[n+1])`
-/

namespace A337655.P14359947999029026005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337662 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337655.P14359947999029026005

/-! ## A337655.P6455008407687796516

`A337661(∑[n]+1)`
-/

namespace A337655.P6455008407687796516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A337655.P6455008407687796516

/-! ## A337655.P12213797404806231639

`A337660(∑[n+1])-1`
-/

namespace A337655.P12213797404806231639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337660 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A337655.P12213797404806231639

/-! ## A337655.P8481015694141803245

`A337659(∑[n]+1)-1`
-/

namespace A337655.P8481015694141803245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337659 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A337655.P8481015694141803245

/-! ## A337655.P6172843037959748356

`A337659(∑[n+1])/2`
-/

namespace A337655.P6172843037959748356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337659 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A337655.P6172843037959748356

/-! ## A337655.P9450325120874154937

`record[A337660(n+1)-1]`
-/

namespace A337655.P9450325120874154937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337660 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337655.P9450325120874154937

/-! ## A337655.P5144662380038735318

`record[A337661(n+1)%A337660(n+1)]`
-/

namespace A337655.P5144662380038735318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337661 (n + 1)) (A337660 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337655.P5144662380038735318

/-! ## A337655.P6408109364594469083

`record[A337662(n+1)%A337660(n+1)]`
-/

namespace A337655.P6408109364594469083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337662 (n + 1)) (A337660 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337655.P6408109364594469083

/-! ## A337655.P8650819199610219736

`record[A337661(n+1)-A338016(n+1)²]`
-/

namespace A337655.P8650819199610219736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337661 (n + 1) - A338016 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337655.P8650819199610219736

/-! ## A337655.P17016116889840410431

`A337662(A000124(n))%A017056(n)`
-/

namespace A337655.P17016116889840410431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337662 (A000124 n).toNat) (A017056 n)

end

end A337655.P17016116889840410431

/-!
# A337656: a(1)=0; thereafter, a(n) is the smallest number such that the addition table for (a(1),...,a(n)) contains n*(n+1)/2 different entries, and the multiplication table for (a(2),...,a(n)) contains n*(n-1)/2 different nonzero entries (the maximum possible in both cases).

The programs for A337656, there is no canonical definition to state claims against.
-/

/-! ## A337656.P571121258445485604

`A338032(∑[n+1])`
-/

namespace A337656.P571121258445485604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337656.P571121258445485604

/-! ## A337656.P5028063894167926075

`A338031(∑[n]+1)`
-/

namespace A337656.P5028063894167926075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A337656.P5028063894167926075

/-! ## A337656.P7456587781023139672

`A338033(∑[n]+2)`
-/

namespace A337656.P7456587781023139672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338033 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A337656.P7456587781023139672

/-! ## A337656.P13778839733214842835

`record[A338032(n+1)]`
-/

namespace A337656.P13778839733214842835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337656.P13778839733214842835

/-! ## A337656.P12505625703474733145

`sqrt(A338033(C(n+2, 2)))`
-/

namespace A337656.P12505625703474733145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A338033 (Nat.choose (n + 2) 2) : ℝ)

end

end A337656.P12505625703474733145

/-! ## A337656.P239094901188918506

`A338031(C(n+1, 2)+n+1)/2`
-/

namespace A337656.P239094901188918506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338031 (Nat.choose (n + 1) 2 + (n + 1)) : ℚ) / 2

end

end A337656.P239094901188918506

/-! ## A337656.P6949526056052121353

`or(char[15], A338031(A000124(n)))`
-/

namespace A337656.P6949526056052121353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A338031 (A000124 n).toNat)

end

end A337656.P6949526056052121353

/-! ## A337656.P748722215203798160

`A057427(n)*A338031(A000124(n))`
-/

namespace A337656.P748722215203798160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A338031 (A000124 n).toNat

end

end A337656.P748722215203798160

/-! ## A337656.P14752335217589064952

`A338031(A000124(n))%A015219(n)`
-/

namespace A337656.P14752335217589064952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338031 (A000124 n).toNat) (A015219 n)

end

end A337656.P14752335217589064952

/-! ## A337656.P11768381718529990849

`A011264(A014963(n+1))*A338031(A000124(n))`
-/

namespace A337656.P11768381718529990849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A014963 (n + 1)).toNat * A338031 (A000124 n).toNat

end

end A337656.P11768381718529990849

/-! ## A337656.P14300108040470490210

`A338034(∑[n+2])`
-/

namespace A337656.P14300108040470490210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337656.P14300108040470490210

/-!
# A337657: Let M_k denote the addition table for the first k terms of A337656. M_k contains exactly k*(k+1)/2 distinct numbers, and these numbers are a subset of the entries in M_{k+1}. The present sequence consists of the numbers that never appear in any M_k.

The programs for A337657, there is no canonical definition to state claims against.
-/

/-! ## A337657.P3654885521503769343

`comp[A338031(n+1)]`
-/

namespace A337657.P3654885521503769343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337657.P3654885521503769343

/-! ## A337657.P18075512799319493512

`eq[char[A338031(n+1)], A000038(n)]`
-/

namespace A337657.P18075512799319493512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338031 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337657.P18075512799319493512

/-! ## A337657.P10675535237145297517

`comp[A338032(n+1)]`
-/

namespace A337657.P10675535237145297517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337657.P10675535237145297517

/-! ## A337657.P9138685546865157287

`A055598(n+1)/A001222(A296812(n+1))-1`
-/

namespace A337657.P9138685546865157287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055598 (n + 1) : ℚ) / (A001222 (A296812 (n + 1)).toNat : ℚ) - 1

end

end A337657.P9138685546865157287

/-! ## A337657.P3483266269363332382

`A008619(A055598(n+1))-A001222(A296812(n+1))`
-/

namespace A337657.P3483266269363332382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A055598 (n + 1)).toNat - A001222 (A296812 (n + 1)).toNat

end

end A337657.P3483266269363332382

/-!
# A337658: Let M_k denote the addition table for the first k terms of A337655. M_k contains exactly k*(k+1)/2 distinct numbers, and these numbers are a subset of the entries in M_{k+1}. The present sequence consists of the numbers that never appear in any M_k.

The programs for A337658, there is no canonical definition to state claims against.
-/

/-! ## A337658.P821830461589507886

`eq[char[A337659(n+1)], A000007(n)]`
-/

namespace A337658.P821830461589507886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337659 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337658.P821830461589507886

/-! ## A337658.P18288620739529197881

`eq[char[A337659(n+1)], A000038(n)]`
-/

namespace A337658.P18288620739529197881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337659 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337658.P18288620739529197881

/-! ## A337658.P4619047400455599614

`eq[char[A337660(n+1)], A000007(n)]`
-/

namespace A337658.P4619047400455599614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337660 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337658.P4619047400455599614

/-! ## A337658.P4264899170424606998

`eq[char[A337660(n+1)], A000038(n)]`
-/

namespace A337658.P4264899170424606998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337660 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337658.P4264899170424606998

/-! ## A337658.P12969528430499432316

`eq[char[A337659(n+1)], A061397(2*(n+1))]`
-/

namespace A337658.P12969528430499432316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337659 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337658.P12969528430499432316

/-!
# A337659: Triangular array read by rows: T(n,k) = A337655(n) + A337655(k), for 1 <= k <= n.

The programs for A337659, there is no canonical definition to state claims against.
-/

/-! ## A337659.P5578150921488511441

`A337660(A245300(n)+1)`
-/

namespace A337659.P5578150921488511441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337660 (A245300 n + 1).toNat

end

end A337659.P5578150921488511441

/-!
# A337661: Triangular array read by rows: T(n,k) = A337655(n) * A337655(k), for 1 <= k <= n.

The programs for A337661, there is no canonical definition to state claims against.
-/

/-! ## A337661.P15116019257831479757

`A337662(A245300(n)+1)`
-/

namespace A337661.P15116019257831479757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337662 (A245300 n + 1).toNat

end

end A337661.P15116019257831479757

/-! ## A337661.P9717355445393538369

`A337662((A214661(n+1)+1)/2)`
-/

namespace A337661.P9717355445393538369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337662 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A337661.P9717355445393538369

/-!
# A337664: Number of compositions of n whose set of distinct parts is pairwise coprime, where a singleton is always considered coprime.

The programs for A337664, there is no canonical definition to state claims against.
-/

/-! ## A337664.P2387946589679218668

`round(1/acot(A337665(n)))+A032741(n)`
-/

namespace A337664.P2387946589679218668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A337665 n : ℝ)) + A032741 n

end

end A337664.P2387946589679218668

/-! ## A337664.P9822129626888737002

`A337665(round(acot(n)+n))+A032741(n)`
-/

namespace A337664.P9822129626888737002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337665 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A032741 n

end

end A337664.P9822129626888737002

/-! ## A337664.P4308331348932362739

`A337665(round(sqrt(n²+1)))+A032741(n)`
-/

namespace A337664.P4308331348932362739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337665 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A032741 n

end

end A337664.P4308331348932362739

/-! ## A337664.P9481346653347592289

`A000007(n)+A337665(n)+A032741(n)`
-/

namespace A337664.P9481346653347592289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A337665 n + A032741 n)

end

end A337664.P9481346653347592289

/-! ## A337664.P15700275213164793319

`A337665(n)+A338317(n)-A338315(n)`
-/

namespace A337664.P15700275213164793319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337665 n + (A338317 n - A338315 n)

end

end A337664.P15700275213164793319

/-!
# A337665: Number of compositions of n whose distinct parts are pairwise coprime, where a singleton is not considered coprime unless it is (1).

The programs for A337665, there is no canonical definition to state claims against.
-/

/-! ## A337665.P6836332889575114263

`A003056(A027193(n)*A116411(n))`
-/

namespace A337665.P6836332889575114263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A027193 n * A116411 n).toNat

end

end A337665.P6836332889575114263

/-! ## A337665.P4547282835534635369

`A036593(n)+Δ[A073188(A303836(n))]`
-/

namespace A337665.P4547282835534635369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A303836 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036593 n + (f1 (n + 1) - f1 n)

end

end A337665.P4547282835534635369

/-! ## A337665.P8946754223304199067

`A337664(n)-A139351(A209100(2*n+1))`
-/

namespace A337665.P8946754223304199067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337664 n - A139351 (A209100 (2 * n + 1)).toNat

end

end A337665.P8946754223304199067

/-!
# A337666: Numbers k such that any two parts of the k-th composition in standard order (A066099) have a common divisor > 1.

The programs for A337666, there is no canonical definition to state claims against.
-/

/-! ## A337666.P10256690201466386468

`lt[A064895(2*n), n+1]`
-/

namespace A337666.P10256690201466386468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337666.P10256690201466386468

/-! ## A337666.P8595551219219036464

`A291165(C(n, a(n-1)+2)+n)` with `a(0)=0`
-/

namespace A337666.P8595551219219036464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291165 (Nat.choose n (a (n - 1) + 2).toNat + n)

end

end A337666.P8595551219219036464

/-! ## A337666.P16490862076140297178

`∪[A291165(n+1), floor(n*(ϕ^8)²)]`
-/

namespace A337666.P16490862076140297178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio ^ 8) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P16490862076140297178

/-! ## A337666.P12757734437005748706

`∪[A004931(n), A291165(n+1)]`
-/

namespace A337666.P12757734437005748706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P12757734437005748706

/-! ## A337666.P3321774247313991609

`∪[A004932(n), A291165(n+1)]`
-/

namespace A337666.P3321774247313991609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P3321774247313991609

/-! ## A337666.P6768816084803027725

`∪[A004933(n), A291165(n+1)]`
-/

namespace A337666.P6768816084803027725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P6768816084803027725

/-! ## A337666.P5813307828494259469

`∪[A004934(n), A291165(n+1)]`
-/

namespace A337666.P5813307828494259469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P5813307828494259469

/-! ## A337666.P14715415852665406519

`∪[A004935(n), A291165(n+1)]`
-/

namespace A337666.P14715415852665406519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P14715415852665406519

/-! ## A337666.P2483361183622100805

`∪[A004951(n), A291165(n+1)]`
-/

namespace A337666.P2483361183622100805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337666.P2483361183622100805

/-!
# A337667: Number of compositions of n where any two parts have a common divisor > 1.

The programs for A337667, there is no canonical definition to state claims against.
-/

/-! ## A337667.P8629422159899227266

`A178472(2*A151815(n)+n)`
-/

namespace A337667.P8629422159899227266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (2 * A151815 n + (n : ℤ)).toNat

end

end A337667.P8629422159899227266

/-! ## A337667.P6996432160294640798

`A178472(A000007(a(n-1))+n)` with `a(0)=1`
-/

namespace A337667.P6996432160294640798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178472 (A000007 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A337667.P6996432160294640798

/-! ## A337667.P16803690910270015977

`A178472(A151815(n)+A028310(n))`
-/

namespace A337667.P16803690910270015977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A151815 n + A028310 n).toNat

end

end A337667.P16803690910270015977

/-! ## A337667.P15026398858584186242

`A178472(A151815(n)+n)+A151815(n)`
-/

namespace A337667.P15026398858584186242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A151815 n + (n : ℤ)).toNat + A151815 n

end

end A337667.P15026398858584186242

/-! ## A337667.P15143585278826891807

`A110654(A000079(n)-A027375(n))`
-/

namespace A337667.P15143585278826891807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000079 n - A027375 n).toNat

end

end A337667.P15143585278826891807

/-!
# A337672: Numbers with binary expansion Sum_{k = 0..w} b_k * 2^k such that the polynomial Sum_{k = 0..w} (X+k)^2 * (-1)^b_k is constant.

The programs for A337672, there is no canonical definition to state claims against.
-/

/-! ## A337672.P70908895752372715

`eq[A073138(n), A165071(2*A319720(n))]`
-/

namespace A337672.P70908895752372715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 (2 * A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337672.P70908895752372715

/-!
# A337674: Numbers k whose prime divisors are all less than or equal to the number of divisors of k.

The programs for A337674, there is no canonical definition to state claims against.
-/

/-! ## A337674.P9870214170549482820

`∪[A055841(n), A199768(n+1)]`
-/

namespace A337674.P9870214170549482820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P9870214170549482820

/-! ## A337674.P1422874007176753688

`∪[A199768(n+1), A076738(n)]`
-/

namespace A337674.P1422874007176753688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P1422874007176753688

/-! ## A337674.P17413948224437292070

`∪[A081913(n), A199768(n+1)]`
-/

namespace A337674.P17413948224437292070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P17413948224437292070

/-! ## A337674.P2757731101825272291

`∪[A083423(n), A199768(n+1)]`
-/

namespace A337674.P2757731101825272291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P2757731101825272291

/-! ## A337674.P17113728486438885683

`∪[A084652(n), A199768(n+1)]`
-/

namespace A337674.P17113728486438885683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P17113728486438885683

/-! ## A337674.P7698060307281117094

`∪[A092236(n), A199768(n+1)]`
-/

namespace A337674.P7698060307281117094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P7698060307281117094

/-! ## A337674.P11305475359106544027

`∪[A134759(n), A199768(n+1)]`
-/

namespace A337674.P11305475359106544027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P11305475359106544027

/-! ## A337674.P13229157239909309806

`∪[A150918(n), A199768(n+1)]`
-/

namespace A337674.P13229157239909309806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P13229157239909309806

/-! ## A337674.P13643879890673751248

`∪[A150973(n), A199768(n+1)]`
-/

namespace A337674.P13643879890673751248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150973 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P13643879890673751248

/-! ## A337674.P16332091299973553421

`∪[A150974(n), A199768(n+1)]`
-/

namespace A337674.P16332091299973553421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337674.P16332091299973553421

/-!
# A337675: Number of regions after generation n of Conant's dissection of a square where the starting edge rotates clockwise around the square and the dissection halves in size after every generation.

The programs for A337675, there is no canonical definition to state claims against.
-/

/-! ## A337675.P15464620981847636617

`A054404(A000055(n)*A109945(n+1))`
-/

namespace A337675.P15464620981847636617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A000055 n * A109945 (n + 1)).toNat

end

end A337675.P15464620981847636617

/-! ## A337675.P7458206775776739032

`A054404(lcm(A000055(n), A109945(n+1)))`
-/

namespace A337675.P7458206775776739032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (Int.lcm (A000055 n) (A109945 (n + 1)))

end

end A337675.P7458206775776739032

/-! ## A337675.P232988749053546035

`A141268(n+1)-A353501(A223504(n+1))`
-/

namespace A337675.P232988749053546035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141268 (n + 1) - A353501 (A223504 (n + 1)).toNat

end

end A337675.P232988749053546035

/-!
# A337679: Number of distinct positive integer pairs, (s,t), such that s < t < n where neither s nor t divides n, and (s + t) | n.

The programs for A337679, there is no canonical definition to state claims against.
-/

/-! ## A337679.P8189447895984163460

`C(∑{d}[n+1, C(#, n)-1], 2)-A337684(n+1)`
-/

namespace A337679.P8189447895984163460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d n : ℤ) - 1)).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P8189447895984163460

/-! ## A337679.P6618762101879855565

`A337273(n+1)-A337684(n+1)`
-/

namespace A337679.P6618762101879855565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337273 (n + 1) - A337684 (n + 1)

end

end A337679.P6618762101879855565

/-! ## A337679.P4218676411520930520

`C(A049820(n+1), 2)-A337684(n+1)`
-/

namespace A337679.P4218676411520930520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A049820 (n + 1)).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P4218676411520930520

/-! ## A337679.P271937991721553352

`C(A062968(n+1)-1, 2)-A337684(n+1)`
-/

namespace A337679.P271937991721553352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A062968 (n + 1) - 1).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P271937991721553352

/-! ## A337679.P15309688172643784547

`C(A059292(n+1)-2, 2)-A337684(n+1)`
-/

namespace A337679.P15309688172643784547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A059292 (n + 1) - 2).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P15309688172643784547

/-! ## A337679.P16527183178604097889

`C(1-Δ[A006218(n)]+n, 2)-A337684(n+1)`
-/

namespace A337679.P16527183178604097889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (f1 (n + 1) - f1 n) + (n : ℤ)).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P16527183178604097889

/-! ## A337679.P336549069277005275

`C(A286002(n+1)-(n+1), 2)-A337684(n+1)`
-/

namespace A337679.P336549069277005275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A286002 (n + 1) - (n + 1 : ℤ)).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P336549069277005275

/-! ## A337679.P13350923625932896605

`C(n-A338117(2*(n+1)), 2)-A337684(n+1)`
-/

namespace A337679.P13350923625932896605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n : ℤ) - A338117 (2 * (n + 1))).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P13350923625932896605

/-! ## A337679.P10678005373359711129

`C(∑{d}[n+1, A000010(#)-1], 2)-A337684(n+1)`
-/

namespace A337679.P10678005373359711129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1)).toNat 2 : ℤ) - A337684 (n + 1)

end

end A337679.P10678005373359711129

/-! ## A337679.P5864278770890739632

`A335567(n+1)-(A337684(n+1)+A049820(n+1))`
-/

namespace A337679.P5864278770890739632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335567 (n + 1) - (A337684 (n + 1) + A049820 (n + 1))

end

end A337679.P5864278770890739632

/-!
# A337682: Number of distinct positive integer pairs, (s,t), such that s < t < n where neither s nor t divides n, and (s + t) | (s * t).

The programs for A337682, there is no canonical definition to state claims against.
-/

/-! ## A337682.P16738394828664524899

`A234309(A325769(3*n))%A109697(n)`
-/

namespace A337682.P16738394828664524899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234309 (A325769 (3 * n)).toNat) (A109697 n)

end

end A337682.P16738394828664524899

/-!
# A337684: Number of distinct positive integer pairs, (s,t), such that s < t < n where neither s, t, nor (s + t) divides n.

The programs for A337684, there is no canonical definition to state claims against.
-/

/-! ## A337684.P326384014788012554

`C(∑{d}[n+1, C(#, n)-1], 2)-A337679(n+1)`
-/

namespace A337684.P326384014788012554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d n : ℤ) - 1)).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P326384014788012554

/-! ## A337684.P378640245808464039

`A337273(n+1)-A337679(n+1)`
-/

namespace A337684.P378640245808464039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337273 (n + 1) - A337679 (n + 1)

end

end A337684.P378640245808464039

/-! ## A337684.P8311143370508232502

`C(A049820(n+1), 2)-A337679(n+1)`
-/

namespace A337684.P8311143370508232502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A049820 (n + 1)).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P8311143370508232502

/-! ## A337684.P1914341471253797719

`C(A062968(n+1)-1, 2)-A337679(n+1)`
-/

namespace A337684.P1914341471253797719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A062968 (n + 1) - 1).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P1914341471253797719

/-! ## A337684.P9083311564899950947

`C(A059292(n+1)-2, 2)-A337679(n+1)`
-/

namespace A337684.P9083311564899950947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A059292 (n + 1) - 2).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P9083311564899950947

/-! ## A337684.P2836040556033749306

`C(1-Δ[A006218(n)]+n, 2)-A337679(n+1)`
-/

namespace A337684.P2836040556033749306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (f1 (n + 1) - f1 n) + (n : ℤ)).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P2836040556033749306

/-! ## A337684.P4357336738029060259

`C(1-A000005(n+1)+n, 2)-A337679(n+1)`
-/

namespace A337684.P4357336738029060259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - A000005 (n + 1) + (n : ℤ)).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P4357336738029060259

/-! ## A337684.P1903979873197857706

`C(∑{d}[n+1, A000010(#)-1], 2)-A337679(n+1)`
-/

namespace A337684.P1903979873197857706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1)).toNat 2 : ℤ) - A337679 (n + 1)

end

end A337684.P1903979873197857706

/-! ## A337684.P2977156189369646815

`C(n+1-∏{e}[n+1, #+1], 2)%A158901(n+1)²-A337679(n+1)`
-/

namespace A337684.P2977156189369646815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat 2 : ℤ) (A158901 (n + 1) ^ 2) - A337679 (n + 1)

end

end A337684.P2977156189369646815

/-! ## A337684.P3941659337919296083

`A161680(A049820(n+1))-A337679(n+1)`
-/

namespace A337684.P3941659337919296083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A049820 (n + 1)).toNat - A337679 (n + 1)

end

end A337684.P3941659337919296083

/-!
# A337685: Number of labeled n-node graphs with no cycles of length less than 5.

The programs for A337685, there is no canonical definition to state claims against.
-/

/-! ## A337685.P1356455207607328519

`∑[A004273(A213357(n))]`
-/

namespace A337685.P1356455207607328519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A213357 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337685.P1356455207607328519

/-! ## A337685.P1918434047072901939

`∑[A004273(A048801(n+1)/(n+1))]`
-/

namespace A337685.P1918434047072901939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A048801 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337685.P1918434047072901939

/-!
# A337686: a(n) is the least multiplier k such that n*k has twice as many divisors as n.

The programs for A337686, there is no canonical definition to state claims against.
-/

/-! ## A337686.P10443112741468864555

`A129902(n+1)/(n+1)`
-/

namespace A337686.P10443112741468864555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129902 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A337686.P10443112741468864555

/-! ## A337686.P3105282638578256854

`A055881(∑[or(1, n)])+1`
-/

namespace A337686.P3105282638578256854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A337686.P3105282638578256854

/-! ## A337686.P10404196887368411481

`A055881(A000982(n+1))+1`
-/

namespace A337686.P10404196887368411481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000982 (n + 1)).toNat + 1

end

end A337686.P10404196887368411481

/-! ## A337686.P16422788763108130350

`A055881(A047838(n+2)-n)+1`
-/

namespace A337686.P16422788763108130350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A047838 (n + 2) - (n : ℤ)).toNat + 1

end

end A337686.P16422788763108130350

/-! ## A337686.P378221371013912733

`A055881(A008811(2*(n+1))/2)+1`
-/

namespace A337686.P378221371013912733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.roundAway ((A008811 (2 * (n + 1)) : ℚ) / 2)).toNat + 1

end

end A337686.P378221371013912733

/-! ## A337686.P11615869184727776057

`A137921(A005235(2*n+1)*A055874(n+1))`
-/

namespace A337686.P11615869184727776057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (A005235 (2 * n + 1) * A055874 (n + 1)).toNat

end

end A337686.P11615869184727776057

/-! ## A337686.P698859106651214909

`A055881(A326578(n+1))+1-A056977(A112798(n+2))`
-/

namespace A337686.P698859106651214909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A326578 (n + 1)).toNat + 1 - A056977 (A112798 (n + 2)).toNat

end

end A337686.P698859106651214909

/-! ## A337686.P18397119932975833554

`A055881((n+1)*∏{p}[n+1, #])+1`
-/

namespace A337686.P18397119932975833554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) + 1

end

end A337686.P18397119932975833554

/-! ## A337686.P15375786399154328479

`A055881(A064549(n+1))+1`
-/

namespace A337686.P15375786399154328479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A064549 (n + 1)).toNat + 1

end

end A337686.P15375786399154328479

/-! ## A337686.P14104038646500916338

`A055881(A285109(n+1))+1`
-/

namespace A337686.P14104038646500916338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A285109 (n + 1)).toNat + 1

end

end A337686.P14104038646500916338

/-! ## A337686.P11482214081216117765

`A055881((n+1)²/A003557(n+1))+1`
-/

namespace A337686.P11482214081216117765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ))).toNat + 1

end

end A337686.P11482214081216117765

/-!
# A337688: Numbers divisible by 2 or more primitive nondeficient numbers.

The programs for A337688, the canonical program `A337688.P213648959849896231` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337688 has offset 1).

The definition of A337688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337688.P213648959849896231

`lt[1, A337690(n+1)]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A337688

/-- `lt[1, A337690(n+1)]+1` -/
def P213648959849896231.Spec : Prop :=
  ∀ n, (P213648959849896231.a n : ℤ) = A337688 (n + 1)

theorem P213648959849896231.correct : P213648959849896231.Spec := by
  intro n
  simp only [A337688, Nat.add_sub_cancel]

end A337688

/-! ## A337688.P3853531001953879436

`lt[1, A337690(A028310(n))]`
-/

namespace A337688.P3853531001953879436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337688.P3853531001953879436

namespace A337688

/-- `lt[1, A337690(A028310(n))]` -/
def P3853531001953879436.Spec : Prop :=
  ∀ n, (P3853531001953879436.a n : ℤ) = A337688 (n + 1)

end A337688

/-! ## A337688.P16548935787088944542

`A020725(lt[1, A337690(n+1)])`
-/

namespace A337688.P16548935787088944542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337688.P16548935787088944542

namespace A337688

/-- `A020725(lt[1, A337690(n+1)])` -/
def P16548935787088944542.Spec : Prop :=
  ∀ n, P16548935787088944542.a n = A337688 (n + 1)

end A337688

/-! ## A337688.P3457078316054770708

`A153152(lt[1, A337690(n+1)])`
-/

namespace A337688.P3457078316054770708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337688.P3457078316054770708

namespace A337688

/-- `A153152(lt[1, A337690(n+1)])` -/
def P3457078316054770708.Spec : Prop :=
  ∀ n, P3457078316054770708.a n = A337688 (n + 1)

end A337688

/-! ## A337688.P4548250016606557705

`lt[1, A337690(A233583(n+1))]`
-/

namespace A337688.P4548250016606557705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337688.P4548250016606557705

namespace A337688

/-- `lt[1, A337690(A233583(n+1))]` -/
def P4548250016606557705.Spec : Prop :=
  ∀ n, (P4548250016606557705.a n : ℤ) = A337688 (n + 1)

end A337688

/-!
# A337690: a(n) is the number of primitive nondeficient numbers (A006039) dividing n.

The programs for A337690, the canonical program `A337690.P488329027084497173` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337690 has offset 1).

The definition of A337690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337690.P488329027084497173

`∑{d}[n+1, A341619(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A337690

/-- `∑{d}[n+1, A341619(#)]` -/
def P488329027084497173.Spec : Prop :=
  ∀ n, P488329027084497173.a n = A337690 (n + 1)

theorem P488329027084497173.correct : P488329027084497173.Spec := by
  intro n
  simp only [A337690, Nat.add_sub_cancel]

end A337690

/-! ## A337690.P5524140052368280422

`A333254(A216765(n+1))*A341618(n+1)`
-/

namespace A337690.P5524140052368280422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A216765 (n + 1)).toNat * A341618 (n + 1)

end

end A337690.P5524140052368280422

namespace A337690

/-- `A333254(A216765(n+1))*A341618(n+1)` -/
def P5524140052368280422.Spec : Prop :=
  ∀ n, P5524140052368280422.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P9250566636823541230

`A341618(n+1)%(7^n)`
-/

namespace A337690.P9250566636823541230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341618 (n + 1)) (7 ^ n : ℤ)

end

end A337690.P9250566636823541230

namespace A337690

/-- `A341618(n+1)%(7^n)` -/
def P9250566636823541230.Spec : Prop :=
  ∀ n, P9250566636823541230.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P9273546973086987884

`A336835(A053439(n)^A336835(n+1))`
-/

namespace A337690.P9273546973086987884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (SequenceMachineLib.roundAway ((A053439 n : ℚ) ^ (A336835 (n + 1) : ℤ))).toNat

end

end A337690.P9273546973086987884

namespace A337690

/-- `A336835(A053439(n)^A336835(n+1))` -/
def P9273546973086987884.Spec : Prop :=
  ∀ n, P9273546973086987884.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P529938597774077248

`A341618(n+1)+A000038(A072499(n+1))`
-/

namespace A337690.P529938597774077248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (n + 1) + A000038 (A072499 (n + 1)).toNat

end

end A337690.P529938597774077248

namespace A337690

/-- `A341618(n+1)+A000038(A072499(n+1))` -/
def P529938597774077248.Spec : Prop :=
  ∀ n, P529938597774077248.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P16327555706368103458

`A294937(A071395(n+1))*A341618(n+1)`
-/

namespace A337690.P16327555706368103458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A071395 (n + 1)).toNat * A341618 (n + 1)

end

end A337690.P16327555706368103458

namespace A337690

/-- `A294937(A071395(n+1))*A341618(n+1)` -/
def P16327555706368103458.Spec : Prop :=
  ∀ n, P16327555706368103458.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P6821576104663379278

`A325469(A217046(n+1))*A341618(n+1)`
-/

namespace A337690.P6821576104663379278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325469 (A217046 (n + 1)).toNat * A341618 (n + 1)

end

end A337690.P6821576104663379278

namespace A337690

/-- `A325469(A217046(n+1))*A341618(n+1)` -/
def P6821576104663379278.Spec : Prop :=
  ∀ n, P6821576104663379278.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P5491883571563788491

`A341618(n+1)^A356706(abs(A061373(3*(n+1))-n)+1)`
-/

namespace A337690.P5491883571563788491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341618 (n + 1) : ℚ) ^ (A356706 (|A061373 (3 * (n + 1)) - (n : ℤ)| + 1).toNat : ℤ)

end

end A337690.P5491883571563788491

namespace A337690

/-- `A341618(n+1)^A356706(abs(A061373(3*(n+1))-n)+1)` -/
def P5491883571563788491.Spec : Prop :=
  ∀ n, P5491883571563788491.a n = (A337690 (n + 1) : ℚ)

end A337690

/-! ## A337690.P11544167498382746471

`A174341(n)*A341618(n+1)`
-/

namespace A337690.P11544167498382746471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174341 n * A341618 (n + 1)

end

end A337690.P11544167498382746471

namespace A337690

/-- `A174341(n)*A341618(n+1)` -/
def P11544167498382746471.Spec : Prop :=
  ∀ n, P11544167498382746471.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P1030266911183338498

`A181722(n+1)*A341618(n+1)`
-/

namespace A337690.P1030266911183338498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181722 (n + 1) * A341618 (n + 1)

end

end A337690.P1030266911183338498

namespace A337690

/-- `A181722(n+1)*A341618(n+1)` -/
def P1030266911183338498.Spec : Prop :=
  ∀ n, P1030266911183338498.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P16639102194925293976

`A089575(A341618(n+1))%A202430(n+1)`
-/

namespace A337690.P16639102194925293976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089575 (A341618 (n + 1)).toNat) (A202430 (n + 1))

end

end A337690.P16639102194925293976

namespace A337690

/-- `A089575(A341618(n+1))%A202430(n+1)` -/
def P16639102194925293976.Spec : Prop :=
  ∀ n, P16639102194925293976.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P11607665494894722859

`A341618(n+1)^A001876(∑[A026351(n)])`
-/

namespace A337690.P11607665494894722859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341618 (n + 1) : ℚ) ^ (A001876 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A337690.P11607665494894722859

namespace A337690

/-- `A341618(n+1)^A001876(∑[A026351(n)])` -/
def P11607665494894722859.Spec : Prop :=
  ∀ n, P11607665494894722859.a n = (A337690 (n + 1) : ℚ)

end A337690

/-! ## A337690.P9125221837906629606

`A184166(n+1)*A341618(n+1)`
-/

namespace A337690.P9125221837906629606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (n + 1) * A341618 (n + 1)

end

end A337690.P9125221837906629606

namespace A337690

/-- `A184166(n+1)*A341618(n+1)` -/
def P9125221837906629606.Spec : Prop :=
  ∀ n, P9125221837906629606.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P3074639760137607686

`A001222(A005592(A341618(n+1))^A184166(n+1))`
-/

namespace A337690.P3074639760137607686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A005592 (A341618 (n + 1)).toNat : ℚ) ^ (A184166 (n + 1) : ℤ))).toNat

end

end A337690.P3074639760137607686

namespace A337690

/-- `A001222(A005592(A341618(n+1))^A184166(n+1))` -/
def P3074639760137607686.Spec : Prop :=
  ∀ n, P3074639760137607686.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P3864077572052704305

`A341618(n+1)^gcd(5, A093338(n+2))`
-/

namespace A337690.P3864077572052704305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (n + 1) ^ Int.gcd 5 (A093338 (n + 2))

end

end A337690.P3864077572052704305

namespace A337690

/-- `A341618(n+1)^gcd(5, A093338(n+2))` -/
def P3864077572052704305.Spec : Prop :=
  ∀ n, P3864077572052704305.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P867869611601817927

`A034868(n²)*A341618(n+1)`
-/

namespace A337690.P867869611601817927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (n ^ 2) * A341618 (n + 1)

end

end A337690.P867869611601817927

namespace A337690

/-- `A034868(n²)*A341618(n+1)` -/
def P867869611601817927.Spec : Prop :=
  ∀ n, P867869611601817927.a n = A337690 (n + 1)

end A337690

/-! ## A337690.P14837443070089312344

`A055396(A002522(n))*A341618(n+1)`
-/

namespace A337690.P14837443070089312344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A002522 n).toNat * A341618 (n + 1)

end

end A337690.P14837443070089312344

namespace A337690

/-- `A055396(A002522(n))*A341618(n+1)` -/
def P14837443070089312344.Spec : Prop :=
  ∀ n, P14837443070089312344.a n = A337690 (n + 1)

end A337690

/-!
# A337691: a(n) is the least positive integer divisible by exactly n primitive nondeficient numbers (A006039).

The programs for A337691, there is no canonical definition to state claims against.
-/

/-! ## A337691.P4043991856228574892

`A209936(comp[∑[char[1]+n]]²)`
-/

namespace A337691.P4043991856228574892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209936 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)

end

end A337691.P4043991856228574892

/-!
# A337693: Number of regions after generation n of Conant's dissection of a square when dissected with diagonal lines and where the starting edges rotate counterclockwise around the square and the dissection halves in size after every generation.

The programs for A337693, there is no canonical definition to state claims against.
-/

/-! ## A337693.P1037286069855474285

`A117331(A005594(n))`
-/

namespace A337693.P1037286069855474285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117331 (A005594 n).toNat

end

end A337693.P1037286069855474285

/-! ## A337693.P155652985266239854

`A076682(floor(sqrt(A076706(n+2))))+1`
-/

namespace A337693.P155652985266239854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076682 (Int.sqrt (A076706 (n + 2))).toNat + 1

end

end A337693.P155652985266239854

/-! ## A337693.P18110143034216908973

`A265278(n)+A002260(A073983(n+1))`
-/

namespace A337693.P18110143034216908973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 n + A002260 (A073983 (n + 1)).toNat

end

end A337693.P18110143034216908973

/-!
# A337694: 

The programs for A337694, there is no canonical definition to state claims against.
-/

/-! ## A337694.P8602176766354718632

`lt[A327512(n+1), 3]+1`
-/

namespace A337694.P8602176766354718632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337694.P8602176766354718632

/-! ## A337694.P15808968957798228952

`lt[A327529(n+1), 3]+1`
-/

namespace A337694.P15808968957798228952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337694.P15808968957798228952

/-! ## A337694.P1530611815052932982

`record[A327656(n+1)+A000035(n)]`
-/

namespace A337694.P1530611815052932982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337694.P1530611815052932982

/-! ## A337694.P1142066471979254351

`record[A349907(n+2)+A327656(2*(n+1))]`
-/

namespace A337694.P1142066471979254351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (n + 2) + A327656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337694.P1142066471979254351

/-! ## A337694.P4690969453074363454

`record[A347438(2*(n+1))+A327656(2*(n+1))]`
-/

namespace A337694.P4690969453074363454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (2 * (n + 1)) + A327656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337694.P4690969453074363454

/-! ## A337694.P8414394840409044009

`A028310(comp[A327529(n+3)])`
-/

namespace A337694.P8414394840409044009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A337694.P8414394840409044009

/-! ## A337694.P9172798922872330195

`A328336(n+1)%A033650(n)`
-/

namespace A337694.P9172798922872330195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328336 (n + 1)) (A033650 n)

end

end A337694.P9172798922872330195

/-! ## A337694.P15639710767820513224

`and(A018886(n+1), A328336(n+1))`
-/

namespace A337694.P15639710767820513224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A328336 (n + 1))

end

end A337694.P15639710767820513224

/-! ## A337694.P2613167654502095897

`and(A164291(n+2), A328336(n+1))`
-/

namespace A337694.P2613167654502095897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A328336 (n + 1))

end

end A337694.P2613167654502095897

/-! ## A337694.P2872888372734023296

`and(A060160(n+1), A328336(n+1))`
-/

namespace A337694.P2872888372734023296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A328336 (n + 1))

end

end A337694.P2872888372734023296

/-! ## A337694.P7867164483061181545

`and(A103454(n), A328336(n+1))`
-/

namespace A337694.P7867164483061181545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103454 n) (A328336 (n + 1))

end

end A337694.P7867164483061181545

/-! ## A337694.P13992076361157631355

`and(A263806(n), A328336(n+1))`
-/

namespace A337694.P13992076361157631355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263806 n) (A328336 (n + 1))

end

end A337694.P13992076361157631355

/-! ## A337694.P3980511426754048497

`and(A267596(n), A328336(n+1))`
-/

namespace A337694.P3980511426754048497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267596 n) (A328336 (n + 1))

end

end A337694.P3980511426754048497

/-! ## A337694.P16546868374951813332

`and(A083420(n), A328336(n+1))`
-/

namespace A337694.P16546868374951813332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A328336 (n + 1))

end

end A337694.P16546868374951813332

/-! ## A337694.P15304317168492923366

`and(A186942(n), A328336(n+1))`
-/

namespace A337694.P15304317168492923366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186942 n) (A328336 (n + 1))

end

end A337694.P15304317168492923366

/-! ## A337694.P11212989951913440997

`and(A267816(n), A328336(n+1))`
-/

namespace A337694.P11212989951913440997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267816 n) (A328336 (n + 1))

end

end A337694.P11212989951913440997

/-! ## A337694.P6888366566309691558

`and(A267888(n), A328336(n+1))`
-/

namespace A337694.P6888366566309691558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267888 n) (A328336 (n + 1))

end

end A337694.P6888366566309691558

/-! ## A337694.P14281364325880754232

`and(A267890(n), A328336(n+1))`
-/

namespace A337694.P14281364325880754232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A328336 (n + 1))

end

end A337694.P14281364325880754232

/-! ## A337694.P11203381640595731075

`and(A267941(n), A328336(n+1))`
-/

namespace A337694.P11203381640595731075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267941 n) (A328336 (n + 1))

end

end A337694.P11203381640595731075

/-! ## A337694.P1743634255369536775

`and(A281482(n), A328336(n+1))`
-/

namespace A337694.P1743634255369536775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281482 n) (A328336 (n + 1))

end

end A337694.P1743634255369536775

/-!
# A337695: Numbers k such that the distinct parts of the k-th composition in standard order (A066099) are not pairwise coprime, where a singleton is always considered coprime.

The programs for A337695, there is no canonical definition to state claims against.
-/

/-! ## A337695.P9160580412349340671

`∩[A164711(n+1), A335238(n+1)]`
-/

namespace A337695.P9160580412349340671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337695.P9160580412349340671

/-! ## A337695.P13848519581041768224

`∩[A164711(n+1), A383669(n+1)]`
-/

namespace A337695.P13848519581041768224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337695.P13848519581041768224

/-! ## A337695.P15572621807541302945

`∩[A335238(n+1), A356842(n+1)]`
-/

namespace A337695.P15572621807541302945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337695.P15572621807541302945

/-! ## A337695.P14473577333966360686

`eq[3, A009194(A124774(n))]`
-/

namespace A337695.P14473577333966360686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A124774 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337695.P14473577333966360686

/-!
# A337696: Numbers k such that the k-th composition in standard order (A066099) is strict and pairwise non-coprime, meaning the parts are distinct and any two of them have a common divisor > 1.

The programs for A337696, there is no canonical definition to state claims against.
-/

/-! ## A337696.P5697179991342385870

`∩[A233564(n+1), A337666(n+1)]`
-/

namespace A337696.P5697179991342385870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337696.P5697179991342385870

/-! ## A337696.P12532615404548355599

`∩[A333222(n+1), A337666(n+1)]`
-/

namespace A337696.P12532615404548355599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337696.P12532615404548355599

/-! ## A337696.P17533306247818613070

`∩[A337666(n+1), A374698(n+1)]`
-/

namespace A337696.P17533306247818613070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337696.P17533306247818613070

/-! ## A337696.P565465382389217012

`A337666(∑[A216031(n+1)!])`
-/

namespace A337696.P565465382389217012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A216031 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337696.P565465382389217012

/-! ## A337696.P15223566794403821117

`A337666(∑[A230805(n+1)!])`
-/

namespace A337696.P15223566794403821117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337696.P15223566794403821117

/-!
# A337698: Number of compositions of n that are not strictly increasing.

The programs for A337698, there is no canonical definition to state claims against.
-/

/-! ## A337698.P16713261168446467536

`ceil(2^(n-1)-A000009(n))`
-/

namespace A337698.P16713261168446467536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000009 n : ℚ)⌉

end

end A337698.P16713261168446467536

/-! ## A337698.P2104454092709951526

`ceil(2^(n-1))-abs(A081360(n))`
-/

namespace A337698.P2104454092709951526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - |A081360 n|

end

end A337698.P2104454092709951526

/-! ## A337698.P13903199793714745923

`ceil(2^(n-1))-sqrt(A304990(n))`
-/

namespace A337698.P13903199793714745923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ) - Real.sqrt (A304990 n : ℝ)

end

end A337698.P13903199793714745923

/-! ## A337698.P12859842270759334514

`A056823(n)+A047967(n)`
-/

namespace A337698.P12859842270759334514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n + A047967 n

end

end A337698.P12859842270759334514

/-! ## A337698.P539047003355178784

`A011782(n)-A000009(n)`
-/

namespace A337698.P539047003355178784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000009 n

end

end A337698.P539047003355178784

/-! ## A337698.P16189433690331645700

`A094373(n)-A052839(n)`
-/

namespace A337698.P16189433690331645700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A052839 n

end

end A337698.P16189433690331645700

/-! ## A337698.P1466352105903820067

`A166444(n+1)-A000009(n)`
-/

namespace A337698.P1466352105903820067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - A000009 n

end

end A337698.P1466352105903820067

/-! ## A337698.P11448470130172230431

`A011782(n)-A035457(2*n)`
-/

namespace A337698.P11448470130172230431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A035457 (2 * n)

end

end A337698.P11448470130172230431

/-! ## A337698.P11300083921219820879

`A011782(n)+A096765(n)-A032303(n)`
-/

namespace A337698.P11300083921219820879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A096765 n - A032303 n)

end

end A337698.P11300083921219820879

/-! ## A337698.P6994364369490682748

`A011782(n)-(A096765(n+1)+A096765(n))`
-/

namespace A337698.P6994364369490682748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A096765 (n + 1) + A096765 n)

end

end A337698.P6994364369490682748

/-! ## A337698.P2954450993981388575

`(2^n-A087135(n))/2`
-/

namespace A337698.P2954450993981388575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A087135 n : ℚ) / 2

end

end A337698.P2954450993981388575

/-! ## A337698.P4732264093552718112

`floor((2^n-A333147(n))/2)`
-/

namespace A337698.P4732264093552718112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) - A333147 n : ℚ) / 2⌋

end

end A337698.P4732264093552718112

/-!
# A337699: Number of Gelfand-Cetlin type reduced words in R(w(n+1)0).

The programs for A337699, there is no canonical definition to state claims against.
-/

/-! ## A337699.P7900072916387809301

`A005185(∑[∑{d}[A001187(n), #]])`
-/

namespace A337699.P7900072916387809301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337699.P7900072916387809301

/-! ## A337699.P12951208380069000999

`A261585(or(6, A291936(n+1)))`
-/

namespace A337699.P12951208380069000999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.lor 6 (A291936 (n + 1))).toNat

end

end A337699.P12951208380069000999

