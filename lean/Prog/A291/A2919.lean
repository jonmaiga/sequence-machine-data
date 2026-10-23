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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A291900: Sum of the divisors of 24*n - 1, divided by 24, minus n.

The programs for A291900, the canonical program `A291900.P14772207315450596015` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291900 has offset 1).

The definition of A291900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291900.P14772207315450596015

`A280098(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A291900

/-- `A280098(n+1)-(n+1)` -/
def P14772207315450596015.Spec : Prop :=
  ∀ n, P14772207315450596015.a n = A291900 (n + 1)

theorem P14772207315450596015.correct : P14772207315450596015.Spec := by
  intro n
  simp only [A291900, Nat.add_sub_cancel]

end A291900

/-! ## A291900.P1692938506706667941

`A280097(n+1)/24-(n+1)`
-/

namespace A291900.P1692938506706667941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280097 (n + 1) : ℚ) / 24 - (n + 1 : ℚ)

end

end A291900.P1692938506706667941

namespace A291900

/-- `A280097(n+1)/24-(n+1)` -/
def P1692938506706667941.Spec : Prop :=
  ∀ n, P1692938506706667941.a n = (A291900 (n + 1) : ℚ)

end A291900

/-! ## A291900.P16034633942677891951

`A000203(A183010(n+1))/24-(n+1)`
-/

namespace A291900.P16034633942677891951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A183010 (n + 1)).toNat : ℚ) / 24 - (n + 1 : ℚ)

end

end A291900.P16034633942677891951

namespace A291900

/-- `A000203(A183010(n+1))/24-(n+1)` -/
def P16034633942677891951.Spec : Prop :=
  ∀ n, P16034633942677891951.a n = (A291900 (n + 1) : ℚ)

end A291900

/-! ## A291900.P14143960649282454592

`A295012(2*(n+1))/2-(n+1)`
-/

namespace A291900.P14143960649282454592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295012 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A291900.P14143960649282454592

namespace A291900

/-- `A295012(2*(n+1))/2-(n+1)` -/
def P14143960649282454592.Spec : Prop :=
  ∀ n, P14143960649282454592.a n = (A291900 (n + 1) : ℚ)

end A291900

/-! ## A291900.P17696487727567882227

`A280098(n+1)%A000027(n+1)`
-/

namespace A291900.P17696487727567882227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280098 (n + 1)) (A000027 (n + 1))

end

end A291900.P17696487727567882227

namespace A291900

/-- `A280098(n+1)%A000027(n+1)` -/
def P17696487727567882227.Spec : Prop :=
  ∀ n, P17696487727567882227.a n = A291900 (n + 1)

end A291900

/-! ## A291900.P14429384088187907117

`(A280098(n+1)+A000217(n))%A000217(n+1)`
-/

namespace A291900.P14429384088187907117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280098 (n + 1) + A000217 n) (A000217 (n + 1))

end

end A291900.P14429384088187907117

namespace A291900

/-- `(A280098(n+1)+A000217(n))%A000217(n+1)` -/
def P14429384088187907117.Spec : Prop :=
  ∀ n, P14429384088187907117.a n = A291900 (n + 1)

end A291900

/-! ## A291900.P13234279324573106238

`A294614(2*(n+1))/2`
-/

namespace A291900.P13234279324573106238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294614 (2 * (n + 1)) : ℚ) / 2

end

end A291900.P13234279324573106238

namespace A291900

/-- `A294614(2*(n+1))/2` -/
def P13234279324573106238.Spec : Prop :=
  ∀ n, P13234279324573106238.a n = (A291900 (n + 1) : ℚ)

end A291900

/-! ## A291900.P3024602903515330074

`(A295012(2*(n+1))+A001478(2*(n+1)))/2`
-/

namespace A291900.P3024602903515330074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295012 (2 * (n + 1)) + A001478 (2 * (n + 1)) : ℚ) / 2

end

end A291900.P3024602903515330074

namespace A291900

/-- `(A295012(2*(n+1))+A001478(2*(n+1)))/2` -/
def P3024602903515330074.Spec : Prop :=
  ∀ n, P3024602903515330074.a n = (A291900 (n + 1) : ℚ)

end A291900

/-! ## A291900.P3322450650023022777

`A194698(A280097(n+1))-(n+1)`
-/

namespace A291900.P3322450650023022777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A280097 (n + 1)).toNat - (n + 1 : ℤ)

end

end A291900.P3322450650023022777

namespace A291900

/-- `A194698(A280097(n+1))-(n+1)` -/
def P3322450650023022777.Spec : Prop :=
  ∀ n, P3322450650023022777.a n = A291900 (n + 1)

end A291900

/-!
# A291901: Numbers n such that the sum of sums of elements of subsets of divisors of n is a perfect number (A000396).

The programs for A291901, there is no canonical definition to state claims against.
-/

/-! ## A291901.P8424261258463858121

`∩[A164571(n+1), A188381(n+1)]`
-/

namespace A291901.P8424261258463858121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291901.P8424261258463858121

/-! ## A291901.P2313264947192867639

`record[gcd(A005029(n+1), A240991(n+2))]`
-/

namespace A291901.P2313264947192867639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005029 (n + 1)) (A240991 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291901.P2313264947192867639

/-! ## A291901.P10476666971373165549

`A377142(n+1)+A004018(A349799(n+1))`
-/

namespace A291901.P10476666971373165549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377142 (n + 1) + A004018 (A349799 (n + 1)).toNat

end

end A291901.P10476666971373165549

/-!
# A291902: Sums of the cubes of the descent set statistics for permutations on n elements.

The programs for A291902, there is no canonical definition to state claims against.
-/

/-! ## A291902.P6781439329922875474

`A334622(∑[n+3]+n+3)`
-/

namespace A291902.P6781439329922875474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A291902.P6781439329922875474

/-!
# A291903: Sums of the fourth powers of the descent set statistics for permutations on n elements.

The programs for A291903, there is no canonical definition to state claims against.
-/

/-! ## A291903.P6963605864673121770

`A334622(A052905(n+2))`
-/

namespace A291903.P6963605864673121770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (A052905 (n + 2)).toNat

end

end A291903.P6963605864673121770

/-! ## A291903.P7235664178520817565

`A334622(eq[3, A212551(n)])`
-/

namespace A291903.P7235664178520817565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291903.P7235664178520817565

/-! ## A291903.P10276850587482332881

`A334622(eq[4, A025581(n)])`
-/

namespace A291903.P10276850587482332881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291903.P10276850587482332881

/-! ## A291903.P18428648376219021440

`A334622(eq[5, A193739(n)])`
-/

namespace A291903.P18428648376219021440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291903.P18428648376219021440

/-! ## A291903.P3440169010545087810

`A334622(eq[9, A099375(n)])`
-/

namespace A291903.P3440169010545087810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291903.P3440169010545087810

/-!
# A291904: Triangle read by rows: T(n,k) = T(n-k,k-1) + T(n-k,k+1) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291904, there is no canonical definition to state claims against.
-/

/-! ## A291904.P6760538055848426665

`abs(A291955(n))`
-/

namespace A291904.P6760538055848426665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291955 n|

end

end A291904.P6760538055848426665

/-! ## A291904.P5619289993167028589

`gcd(A000038(n), A291955(n))`
-/

namespace A291904.P5619289993167028589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A291955 n)

end

end A291904.P5619289993167028589

/-! ## A291904.P10622299332841219076

`lcm(A020985(n), A291955(n))`
-/

namespace A291904.P10622299332841219076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A291955 n)

end

end A291904.P10622299332841219076

/-! ## A291904.P15835481359793765625

`lcm(A034947(n+1)*A291955(n), A034947(n+1))`
-/

namespace A291904.P15835481359793765625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1) * A291955 n) (A034947 (n + 1))

end

end A291904.P15835481359793765625

/-! ## A291904.P2588534920773774105

`∑{d}[A291955(n), A000010(#)]`
-/

namespace A291904.P2588534920773774105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A291904.P2588534920773774105

/-! ## A291904.P7335255549506428356

`A000196(A291955(n)²)`
-/

namespace A291904.P7335255549506428356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A291955 n ^ 2).toNat

end

end A291904.P7335255549506428356

/-! ## A291904.P10960648049675573422

`A000196(A291955(n)^2)`
-/

namespace A291904.P10960648049675573422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A291955 n ^ 2).toNat

end

end A291904.P10960648049675573422

/-! ## A291904.P7780096676467677983

`A000196(A291955(n)*A291955(n))`
-/

namespace A291904.P7780096676467677983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A291955 n * A291955 n).toNat

end

end A291904.P7780096676467677983

/-!
# A291905: Row sums of A291904.

The programs for A291905, there is no canonical definition to state claims against.
-/

/-! ## A291905.P18318403975385684504

`A364039(A152948(n+1))`
-/

namespace A291905.P18318403975385684504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364039 (A152948 (n + 1)).toNat

end

end A291905.P18318403975385684504

/-! ## A291905.P4653662825590681311

`A364039(A000217(n)+A355039(n+1)²%3)`
-/

namespace A291905.P4653662825590681311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364039 (A000217 n + Int.tmod (A355039 (n + 1) ^ 2) 3).toNat

end

end A291905.P4653662825590681311

/-! ## A291905.P17065388484197028119

`A364039(A000217(n)+(ceil(2^or(1, n-1))-1)²%3)`
-/

namespace A291905.P17065388484197028119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364039 (A000217 n + Int.tmod ((⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉ - 1) ^ 2) 3).toNat

end

end A291905.P17065388484197028119

/-! ## A291905.P1609439227223057933

`A001221((a(n-2)+2*a(n-3))!)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A291905.P1609439227223057933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  A001221 (Nat.factorial (a (n - 2) + 2 * a (n - 3)).toNat)

end

end A291905.P1609439227223057933

/-! ## A291905.P15423659913643018953

`A001221((a(n-3)+a(n-2)+a(n-3))!)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A291905.P15423659913643018953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  A001221 (Nat.factorial (a (n - 3) + (a (n - 2) + a (n - 3))).toNat)

end

end A291905.P15423659913643018953

/-!
# A291907: Numbers such that the nonzero digits in the base 3 expansion consists of two 1s and one 2.

The programs for A291907, the canonical program `A291907.P1519353443668877122` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291907 has offset 1).

The definition of A291907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291907.P1519353443668877122

`∩[A023693(n+1), A023699(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A291907

/-- `∩[A023693(n+1), A023699(n+1)]` -/
def P1519353443668877122.Spec : Prop :=
  ∀ n, (P1519353443668877122.a n : ℤ) = A291907 (n + 1)

theorem P1519353443668877122.correct : P1519353443668877122.Spec := by
  intro n
  simp only [A291907, Nat.add_sub_cancel]

end A291907

/-! ## A291907.P15358519720372668572

`eq[8, A387188(n)]`
-/

namespace A291907.P15358519720372668572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291907.P15358519720372668572

namespace A291907

/-- `eq[8, A387188(n)]` -/
def P15358519720372668572.Spec : Prop :=
  ∀ n, (P15358519720372668572.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P11685463742480626656

`eq[10, A331279(n)]`
-/

namespace A291907.P11685463742480626656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291907.P11685463742480626656

namespace A291907

/-- `eq[10, A331279(n)]` -/
def P11685463742480626656.Spec : Prop :=
  ∀ n, (P11685463742480626656.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P2271393905281787393

`eq[12, A006047(n)]`
-/

namespace A291907.P2271393905281787393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291907.P2271393905281787393

namespace A291907

/-- `eq[12, A006047(n)]` -/
def P2271393905281787393.Spec : Prop :=
  ∀ n, (P2271393905281787393.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P6484174467838343630

`eq[A040019(n), A206424(n)]`
-/

namespace A291907.P6484174467838343630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P6484174467838343630

namespace A291907

/-- `eq[A040019(n), A206424(n)]` -/
def P6484174467838343630.Spec : Prop :=
  ∀ n, (P6484174467838343630.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P10188425301917940258

`eq[A038574(n), A040042(n)]`
-/

namespace A291907.P10188425301917940258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P10188425301917940258

namespace A291907

/-- `eq[A038574(n), A040042(n)]` -/
def P10188425301917940258.Spec : Prop :=
  ∀ n, (P10188425301917940258.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P8883127700082059945

`eq[A038574(n), A040043(n)]`
-/

namespace A291907.P8883127700082059945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P8883127700082059945

namespace A291907

/-- `eq[A038574(n), A040043(n)]` -/
def P8883127700082059945.Spec : Prop :=
  ∀ n, (P8883127700082059945.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P8369548009930242415

`eq[A038574(n), A040048(n)]`
-/

namespace A291907.P8369548009930242415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P8369548009930242415

namespace A291907

/-- `eq[A038574(n), A040048(n)]` -/
def P8369548009930242415.Spec : Prop :=
  ∀ n, (P8369548009930242415.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P13145358924164358835

`eq[A023453(n), A062296(n)]`
-/

namespace A291907.P13145358924164358835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P13145358924164358835

namespace A291907

/-- `eq[A023453(n), A062296(n)]` -/
def P13145358924164358835.Spec : Prop :=
  ∀ n, (P13145358924164358835.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P16384482201414118577

`eq[A010170(n), A120879(n)]`
-/

namespace A291907.P16384482201414118577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P16384482201414118577

namespace A291907

/-- `eq[A010170(n), A120879(n)]` -/
def P16384482201414118577.Spec : Prop :=
  ∀ n, (P16384482201414118577.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P16536329755292899350

`eq[A040072(n), A120879(n)]`
-/

namespace A291907.P16536329755292899350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040072 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P16536329755292899350

namespace A291907

/-- `eq[A040072(n), A120879(n)]` -/
def P16536329755292899350.Spec : Prop :=
  ∀ n, (P16536329755292899350.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P16543085527254447849

`eq[A040073(n), A120879(n)]`
-/

namespace A291907.P16543085527254447849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P16543085527254447849

namespace A291907

/-- `eq[A040073(n), A120879(n)]` -/
def P16543085527254447849.Spec : Prop :=
  ∀ n, (P16543085527254447849.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P12747032094034995853

`eq[A040080(n), A120879(n)]`
-/

namespace A291907.P12747032094034995853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P12747032094034995853

namespace A291907

/-- `eq[A040080(n), A120879(n)]` -/
def P12747032094034995853.Spec : Prop :=
  ∀ n, (P12747032094034995853.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P2627198522329678010

`eq[A053735(n), A120880(n)]`
-/

namespace A291907.P2627198522329678010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P2627198522329678010

namespace A291907

/-- `eq[A053735(n), A120880(n)]` -/
def P2627198522329678010.Spec : Prop :=
  ∀ n, (P2627198522329678010.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P9176978918897574175

`eq[A010732(n), A206424(n)]`
-/

namespace A291907.P9176978918897574175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P9176978918897574175

namespace A291907

/-- `eq[A010732(n), A206424(n)]` -/
def P9176978918897574175.Spec : Prop :=
  ∀ n, (P9176978918897574175.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P14589805386628802116

`eq[2, A117358(A038574(n)+2)]`
-/

namespace A291907.P14589805386628802116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A038574 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291907.P14589805386628802116

namespace A291907

/-- `eq[2, A117358(A038574(n)+2)]` -/
def P14589805386628802116.Spec : Prop :=
  ∀ n, (P14589805386628802116.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P437870486094246917

`eq[A117592(n)+2, A120880(n)]`
-/

namespace A291907.P437870486094246917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291907.P437870486094246917

namespace A291907

/-- `eq[A117592(n)+2, A120880(n)]` -/
def P437870486094246917.Spec : Prop :=
  ∀ n, (P437870486094246917.a n : ℤ) = A291907 (n + 1)

end A291907

/-! ## A291907.P1786218771050163024

`eq[2, A081603(n)²*A062756(n)]`
-/

namespace A291907.P1786218771050163024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n ^ 2 * A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291907.P1786218771050163024

namespace A291907

/-- `eq[2, A081603(n)²*A062756(n)]` -/
def P1786218771050163024.Spec : Prop :=
  ∀ n, (P1786218771050163024.a n : ℤ) = A291907 (n + 1)

end A291907

/-!
# A291910: Number of 4-cycles in the n X n rook complement graph.

The programs for A291910, the canonical program `A291910.P4037087634097820678` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291910 has offset 1).

The definition of A291910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291910.P4037087634097820678

`(n+1)²*C(n*C(n, 2), 2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291910

/-- `(n+1)²*C(n*C(n, 2), 2)` -/
def P4037087634097820678.Spec : Prop :=
  ∀ n, (P4037087634097820678.a n : ℤ) = A291910 (n + 1)

theorem P4037087634097820678.correct : P4037087634097820678.Spec := by
  intro n
  simp only [A291910, Nat.add_sub_cancel]

end A291910

/-! ## A291910.P5685456930748798434

`(A071237(n)-A006000(n))*A006011(n)`
-/

namespace A291910.P5685456930748798434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071237 n - A006000 n) * A006011 n

end

end A291910.P5685456930748798434

namespace A291910

/-- `(A071237(n)-A006000(n))*A006011(n)` -/
def P5685456930748798434.Spec : Prop :=
  ∀ n, P5685456930748798434.a n = A291910 (n + 1)

end A291910

/-! ## A291910.P13593496463767261043

`(A000982(A002061(n))-n²)*∑[n]²`
-/

namespace A291910.P13593496463767261043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000982 (A002061 n).toNat - (n ^ 2 : ℤ)) * (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A291910.P13593496463767261043

namespace A291910

/-- `(A000982(A002061(n))-n²)*∑[n]²` -/
def P13593496463767261043.Spec : Prop :=
  ∀ n, P13593496463767261043.a n = A291910 (n + 1)

end A291910

/-! ## A291910.P9391481998647367824

`(n+1)²*A161680(n*A161680(n))`
-/

namespace A291910.P9391481998647367824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A161680 ((n : ℤ) * A161680 n).toNat

end

end A291910.P9391481998647367824

namespace A291910

/-- `(n+1)²*A161680(n*A161680(n))` -/
def P9391481998647367824.Spec : Prop :=
  ∀ n, P9391481998647367824.a n = A291910 (n + 1)

end A291910

/-!
# A291913: Primes of the form Phi(k, -11), where Phi is the cyclotomic polynomial.

The programs for A291913, there is no canonical definition to state claims against.
-/

/-! ## A291913.P373857716168952166

`A020510(A138919(n+1))`
-/

namespace A291913.P373857716168952166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020510 (A138919 (n + 1)).toNat

end

end A291913.P373857716168952166

/-!
# A291914: Termination behavior of the iteration k->(sigma(k)+phi(k))/2 when started at k=n.

The programs for A291914, there is no canonical definition to state claims against.
-/

/-! ## A291914.P5070181464759690312

`A368413(A000041(n))-A056169(n+1)`
-/

namespace A291914.P5070181464759690312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A000041 n).toNat - A056169 (n + 1)

end

end A291914.P5070181464759690312

/-! ## A291914.P226989701199033051

`A368413(A000041(n))-A341595(n+1)`
-/

namespace A291914.P226989701199033051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A000041 n).toNat - A341595 (n + 1)

end

end A291914.P226989701199033051

/-! ## A291914.P10840819574805740056

`A347050(n+1)-A347050(A067716(n))`
-/

namespace A291914.P10840819574805740056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - A347050 (A067716 n).toNat

end

end A291914.P10840819574805740056

/-! ## A291914.P791423944396925208

`A330235(n+1)-A134193(A032502(n+1))`
-/

namespace A291914.P791423944396925208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330235 (n + 1) - A134193 (A032502 (n + 1)).toNat

end

end A291914.P791423944396925208

/-! ## A291914.P18193709838913533401

`A241462(A105800(n+1))-A319138(n+1)`
-/

namespace A291914.P18193709838913533401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241462 (A105800 (n + 1)).toNat - A319138 (n + 1)

end

end A291914.P18193709838913533401

/-!
# A291915: Number of 6-cycles in the n-Fibonacci cube graph.

The programs for A291915, there is no canonical definition to state claims against.
-/

/-! ## A291915.P13149483653174229654

`A234515(A324166(n+1))-2`
-/

namespace A291915.P13149483653174229654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234515 (A324166 (n + 1)).toNat - 2

end

end A291915.P13149483653174229654

/-! ## A291915.P16142262195869481609

`∑{e}[n+1, #]*A064458(A074859(n+2))`
-/

namespace A291915.P16142262195869481609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A064458 (A074859 (n + 2)).toNat

end

end A291915.P16142262195869481609

/-! ## A291915.P3923787171882789824

`A000142(n)-A054758(A131267(n))`
-/

namespace A291915.P3923787171882789824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A054758 (A131267 n).toNat

end

end A291915.P3923787171882789824

/-!
# A291916: Number of (not necessarily maximal) cliques in the n-Fibonacci cube graph.

The programs for A291916, the canonical program `A291916.P12833885300825950041` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291916 has offset 1).

The definition of A291916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291916.P12833885300825950041

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=4, a(1)=6, a(2)=11, a(3)=19, a(4)=34`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291916

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P12833885300825950041.Spec : Prop :=
  ∀ n, P12833885300825950041.a n = A291916 (n + 1)

theorem P12833885300825950041.correct : P12833885300825950041.Spec := by
  intro n
  simp only [A291916, Nat.add_sub_cancel]

end A291916

/-! ## A291916.P7866209207957932690

`A010049(n+3)+1`
-/

namespace A291916.P7866209207957932690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 3) + 1

end

end A291916.P7866209207957932690

namespace A291916

/-- `A010049(n+3)+1` -/
def P7866209207957932690.Spec : Prop :=
  ∀ n, P7866209207957932690.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P7197337956500666915

`∑[record[A006367(n)]]+3`
-/

namespace A291916.P7197337956500666915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A291916.P7197337956500666915

namespace A291916

/-- `∑[record[A006367(n)]]+3` -/
def P7197337956500666915.Spec : Prop :=
  ∀ n, P7197337956500666915.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P10271471014770556033

`∑[A006367(n+2)]+2`
-/

namespace A291916.P10271471014770556033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A291916.P10271471014770556033

namespace A291916

/-- `∑[A006367(n+2)]+2` -/
def P10271471014770556033.Spec : Prop :=
  ∀ n, P10271471014770556033.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P6509418126141173344

`A048577(n)+A001629(n+2)`
-/

namespace A291916.P6509418126141173344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A001629 (n + 2)

end

end A291916.P6509418126141173344

namespace A291916

/-- `A048577(n)+A001629(n+2)` -/
def P6509418126141173344.Spec : Prop :=
  ∀ n, P6509418126141173344.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P14475516394829437456

`A078642(n+1)+∑[A001629(n)]`
-/

namespace A291916.P14475516394829437456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291916.P14475516394829437456

namespace A291916

/-- `A078642(n+1)+∑[A001629(n)]` -/
def P14475516394829437456.Spec : Prop :=
  ∀ n, P14475516394829437456.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P12654403191037039772

`A029907(n+2)+A001611(n+1)`
-/

namespace A291916.P12654403191037039772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 2) + A001611 (n + 1)

end

end A291916.P12654403191037039772

namespace A291916

/-- `A029907(n+2)+A001611(n+1)` -/
def P12654403191037039772.Spec : Prop :=
  ∀ n, P12654403191037039772.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P3688304593746060523

`A001629(n+2)+Δ[A006327(n+4)+n]`
-/

namespace A291916.P3688304593746060523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) + (f1 (n + 1) - f1 n)

end

end A291916.P3688304593746060523

namespace A291916

/-- `A001629(n+2)+Δ[A006327(n+4)+n]` -/
def P3688304593746060523.Spec : Prop :=
  ∀ n, P3688304593746060523.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P14825427792197110821

`Δ[A001629(n+3)]+1`
-/

namespace A291916.P14825427792197110821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A291916.P14825427792197110821

namespace A291916

/-- `Δ[A001629(n+3)]+1` -/
def P14825427792197110821.Spec : Prop :=
  ∀ n, P14825427792197110821.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P6056013304596651375

`A001611(n+1)+Δ[A023610(n)]`
-/

namespace A291916.P6056013304596651375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + (f1 (n + 1) - f1 n)

end

end A291916.P6056013304596651375

namespace A291916

/-- `A001611(n+1)+Δ[A023610(n)]` -/
def P6056013304596651375.Spec : Prop :=
  ∀ n, P6056013304596651375.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P12905961656172232869

`Δ[A023610(n+1)]+2-a(n-1)` with `a(0)=4`
-/

namespace A291916.P12905961656172232869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  f1 (n + 1) - f1 n + 2 - a (n - 1)

end

end A291916.P12905961656172232869

namespace A291916

/-- `Δ[A023610(n+1)]+2-a(n-1)` -/
def P12905961656172232869.Spec : Prop :=
  ∀ n, P12905961656172232869.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P336702912443907754

`Δ[Δ[A067331(n)]]-A000071(n+1)`
-/

namespace A291916.P336702912443907754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000071 (n + 1)

end

end A291916.P336702912443907754

namespace A291916

/-- `Δ[Δ[A067331(n)]]-A000071(n+1)` -/
def P336702912443907754.Spec : Prop :=
  ∀ n, P336702912443907754.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P8093485099770197383

`A000045(n+1)+A000051(n+1)-A235996(n+1)`
-/

namespace A291916.P8093485099770197383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000051 (n + 1) - A235996 (n + 1))

end

end A291916.P8093485099770197383

namespace A291916

/-- `A000045(n+1)+A000051(n+1)-A235996(n+1)` -/
def P8093485099770197383.Spec : Prop :=
  ∀ n, P8093485099770197383.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P5311667491659036917

`A067418(A000217(n))+A048577(n)`
-/

namespace A291916.P5311667491659036917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000217 n).toNat + A048577 n

end

end A291916.P5311667491659036917

namespace A291916

/-- `A067418(A000217(n))+A048577(n)` -/
def P5311667491659036917.Spec : Prop :=
  ∀ n, P5311667491659036917.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P11242153630086910364

`A067330(A000096(n))+A048577(n)`
-/

namespace A291916.P11242153630086910364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000096 n).toNat + A048577 n

end

end A291916.P11242153630086910364

namespace A291916

/-- `A067330(A000096(n))+A048577(n)` -/
def P11242153630086910364.Spec : Prop :=
  ∀ n, P11242153630086910364.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P16772681520954467757

`A210552(A000096(n+2))+1`
-/

namespace A291916.P16772681520954467757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210552 (A000096 (n + 2)).toNat + 1

end

end A291916.P16772681520954467757

namespace A291916

/-- `A210552(A000096(n+2))+1` -/
def P16772681520954467757.Spec : Prop :=
  ∀ n, P16772681520954467757.a n = A291916 (n + 1)

end A291916

/-! ## A291916.P6803412413572208612

`A053538(A000124(n+3))+1`
-/

namespace A291916.P6803412413572208612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A000124 (n + 3)).toNat + 1

end

end A291916.P6803412413572208612

namespace A291916

/-- `A053538(A000124(n+3))+1` -/
def P6803412413572208612.Spec : Prop :=
  ∀ n, P6803412413572208612.a n = A291916 (n + 1)

end A291916

/-!
# A291917: Number of (undirected) cycles in the n-Fibonacci cube graph.

The programs for A291917, there is no canonical definition to state claims against.
-/

/-! ## A291917.P15917901498294161678

`∏{digits}[(n-1)*3^a(n-1), #]` with `a(0)=0`
-/

namespace A291917.P15917901498294161678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1 : ℝ) * (3 : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A291917.P15917901498294161678

/-!
# A291918: Detour index of the n-Fibonacci cube graph.

The programs for A291918, there is no canonical definition to state claims against.
-/

/-! ## A291918.P9404772310655913557

`A260717(A323254(n+1))-1`
-/

namespace A291918.P9404772310655913557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A323254 (n + 1)).toNat - 1

end

end A291918.P9404772310655913557

/-!
# A291919: Number of (undirected) paths in the n-wheel graph.

The programs for A291919, the canonical program `A291919.P11031057447772834914` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291919 has offset 1).

The definition of A291919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291919.P1114730310485491174

`n*(2*(n+1)^3-12*(n+1)²+43*(n+1)-48)/6`
-/

namespace A291919.P1114730310485491174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((2 * (n + 1) ^ 3 : ℤ) - (12 * (n + 1) ^ 2 : ℤ) + (43 * (n + 1) : ℤ) - 48) : ℚ) / 6

end

end A291919.P1114730310485491174

namespace A291919

/-- `n*(2*(n+1)^3-12*(n+1)²+43*(n+1)-48)/6` -/
def P1114730310485491174.Spec : Prop :=
  ∀ n, P1114730310485491174.a n = (A291919 (n + 1) : ℚ)

theorem P1114730310485491174.correct : P1114730310485491174.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A291919, Nat.add_sub_cancel, A291919.P1114730310485491174.a, A291919.P11031057447772834914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A291919, Nat.add_sub_cancel, A291919.P1114730310485491174.a, A291919.P11031057447772834914.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291919

/-! ## A291919.P11031057447772834914

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=30, a(4)=78`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291919

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11031057447772834914.Spec : Prop :=
  ∀ n, P11031057447772834914.a n = A291919 (n + 1)

theorem P11031057447772834914.correct : P11031057447772834914.Spec := by
  intro n
  simp only [A291919, Nat.add_sub_cancel]

end A291919

/-! ## A291919.P15737378859992668830

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=0, a(1)=1, a(2)=6, a(3)=6`
-/

namespace A291919.P15737378859992668830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6, 6] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291919.P15737378859992668830

namespace A291919

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P15737378859992668830.Spec : Prop :=
  ∀ n, (P15737378859992668830.a n : ℤ) = A291919 (n + 1)

end A291919

/-! ## A291919.P4570934572516273958

`A307621(n+1)-A321124(n)`
-/

namespace A291919.P4570934572516273958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307621 (n + 1) - A321124 n

end

end A291919.P4570934572516273958

namespace A291919

/-- `A307621(n+1)-A321124(n)` -/
def P4570934572516273958.Spec : Prop :=
  ∀ n, P4570934572516273958.a n = A291919 (n + 1)

end A291919

/-! ## A291919.P17419901527652686520

`A071238(n)-4*A007290(n)`
-/

namespace A291919.P17419901527652686520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - 4 * A007290 n

end

end A291919.P17419901527652686520

namespace A291919

/-- `A071238(n)-4*A007290(n)` -/
def P17419901527652686520.Spec : Prop :=
  ∀ n, P17419901527652686520.a n = A291919 (n + 1)

end A291919

/-! ## A291919.P12337209904057571299

`A001106(n)+n*A007290(n)`
-/

namespace A291919.P12337209904057571299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (n : ℤ) * A007290 n

end

end A291919.P12337209904057571299

namespace A291919

/-- `A001106(n)+n*A007290(n)` -/
def P12337209904057571299.Spec : Prop :=
  ∀ n, P12337209904057571299.a n = A291919 (n + 1)

end A291919

/-!
# A291921: Numbers that are the sum of (at least two) consecutive primes in exactly three ways.

The programs for A291921, there is no canonical definition to state claims against.
-/

/-! ## A291921.P18209588368390828294

`eq[3, A084143(A028310(n))]`
-/

namespace A291921.P18209588368390828294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291921.P18209588368390828294

/-! ## A291921.P6815630629950191775

`A020725(eq[3, A084143(n+1)])`
-/

namespace A291921.P6815630629950191775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291921.P6815630629950191775

/-! ## A291921.P14931944603378518727

`A067373(lt[A130528(n), A130528(3*n)])`
-/

namespace A291921.P14931944603378518727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291921.P14931944603378518727

/-! ## A291921.P18237780617517823946

`eq[3, A084143(A233583(n+1))]`
-/

namespace A291921.P18237780617517823946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291921.P18237780617517823946

/-!
# A291927: Records transform of A218320.

The programs for A291927, there is no canonical definition to state claims against.
-/

/-! ## A291927.P10610484940737370788

`record[A218320(n+1)]`
-/

namespace A291927.P10610484940737370788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291927.P10610484940737370788

/-! ## A291927.P5285864647073485048

`A218320(A291928(n+1))`
-/

namespace A291927.P5285864647073485048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (A291928 (n + 1)).toNat

end

end A291927.P5285864647073485048

/-! ## A291927.P6693147113279148992

`record[A321379(n+1)+A034836(n+1)]`
-/

namespace A291927.P6693147113279148992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (n + 1) + A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291927.P6693147113279148992

/-! ## A291927.P3316594407440466087

`record[A033999(n)*A218320(A004277(n))]`
-/

namespace A291927.P3316594407440466087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A218320 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291927.P3316594407440466087

/-! ## A291927.P7761234248102729318

`record[A218320(A004277(n))%A140801(n)]`
-/

namespace A291927.P7761234248102729318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A004277 n).toNat) (A140801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291927.P7761234248102729318

/-!
# A291928: Positions of records in A218320.

The programs for A291928, there is no canonical definition to state claims against.
-/

/-! ## A291928.P3616887474558043208

`record[gcd(A291834(3*n+5), A291834(n+1))]`
-/

namespace A291928.P3616887474558043208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291834 (3 * n + 5)) (A291834 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291928.P3616887474558043208

/-! ## A291928.P6101480520765788990

`A291834(A072676(n+1))+A095201(A140513(n))`
-/

namespace A291928.P6101480520765788990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291834 (A072676 (n + 1)).toNat + A095201 (A140513 n).toNat

end

end A291928.P6101480520765788990

/-! ## A291928.P12534768206499238248

`A291834(A072676(n+1))%A016827(A000045(n))`
-/

namespace A291928.P12534768206499238248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291834 (A072676 (n + 1)).toNat) (A016827 (A000045 n).toNat)

end

end A291928.P12534768206499238248

/-!
# A291929: Triangle read by rows: T(n,k) = T(n-k,k-1) + 2*T(n-k,k) + T(n-k,k+1) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291929, there is no canonical definition to state claims against.
-/

/-! ## A291929.P17332230148058802676

`A276976(ceil(cosh(A291940(n))))`
-/

namespace A291929.P17332230148058802676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 ⌈Real.cosh (A291940 n : ℝ)⌉.toNat

end

end A291929.P17332230148058802676

/-! ## A291929.P9361759337073448059

`∑{d}[A291940(n), A067742(#!)]`
-/

namespace A291929.P9361759337073448059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A067742 (Nat.factorial d)

end

end A291929.P9361759337073448059

/-! ## A291929.P12381956143343716360

`A321878(n)+A014083(A322380(n))`
-/

namespace A291929.P12381956143343716360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 n + A014083 (A322380 n).toNat

end

end A291929.P12381956143343716360

/-!
# A291930: Row sums of A291929.

The programs for A291930, there is no canonical definition to state claims against.
-/

/-! ## A291930.P12107677360545641811

`A108141(A258898(n+1))`
-/

namespace A291930.P12107677360545641811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A258898 (n + 1)).toNat

end

end A291930.P12107677360545641811

/-! ## A291930.P15759093062032205976

`A001462(or(1, A335559(n)))`
-/

namespace A291930.P15759093062032205976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor 1 (A335559 n)).toNat

end

end A291930.P15759093062032205976

/-! ## A291930.P4791305941309872542

`A001462(A335559(n)+floor(1/(n+1)))`
-/

namespace A291930.P4791305941309872542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A335559 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A291930.P4791305941309872542

/-! ## A291930.P12792406387522183006

`A226762(A102866(n)+A001519(n))`
-/

namespace A291930.P12792406387522183006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A102866 n + A001519 n).toNat

end

end A291930.P12792406387522183006

/-!
# A291931: Primitive elements of A290002.

The programs for A291931, there is no canonical definition to state claims against.
-/

/-! ## A291931.P12024511671987111115

`filter[A290002(n+1), A359374(#)]`
-/

namespace A291931.P12024511671987111115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A291931.P12024511671987111115

/-! ## A291931.P8737489007330018062

`filter[A290002(n+1), A359820(#)]`
-/

namespace A291931.P8737489007330018062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A291931.P8737489007330018062

/-! ## A291931.P5038605761476603992

`filter[A290002(n+1), A166486(#)]`
-/

namespace A291931.P5038605761476603992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A291931.P5038605761476603992

/-! ## A291931.P6247122965433093870

`filter[A290002(n+1), A391844(#)]`
-/

namespace A291931.P6247122965433093870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A291931.P6247122965433093870

/-! ## A291931.P2387373913147836865

`∩[A290002(n+1), A113127(n)]`
-/

namespace A291931.P2387373913147836865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P2387373913147836865

/-! ## A291931.P2149106943371787561

`∩[A111284(n+1), A290002(n+1)]`
-/

namespace A291931.P2149106943371787561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P2149106943371787561

/-! ## A291931.P10280686522387437434

`∩[A133653(n+1), A290002(n+1)]`
-/

namespace A291931.P10280686522387437434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P10280686522387437434

/-! ## A291931.P17671859614834479481

`∩[A139544(n+1), A290002(n+1)]`
-/

namespace A291931.P17671859614834479481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P17671859614834479481

/-! ## A291931.P8045279175160701723

`∩[A290002(n+1), A385723(n+1)]`
-/

namespace A291931.P8045279175160701723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P8045279175160701723

/-! ## A291931.P7040253813825044157

`∩[A290002(n+1), A391845(n+1)]`
-/

namespace A291931.P7040253813825044157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P7040253813825044157

/-! ## A291931.P5190142369192872492

`∩[A047396(n+1), A290002(n+1)]`
-/

namespace A291931.P5190142369192872492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P5190142369192872492

/-! ## A291931.P6189542762151121444

`∩[A290002(n+1), A359821(n+1)]`
-/

namespace A291931.P6189542762151121444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P6189542762151121444

/-! ## A291931.P13104829355662206428

`∩[A290002(n+1), A053438(n)]`
-/

namespace A291931.P13104829355662206428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P13104829355662206428

/-! ## A291931.P13282535582741414942

`∩[A042963(n+1), A290002(n+1)]`
-/

namespace A291931.P13282535582741414942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P13282535582741414942

/-! ## A291931.P18125322904602555530

`∩[A047404(n+1), A290002(n+1)]`
-/

namespace A291931.P18125322904602555530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P18125322904602555530

/-! ## A291931.P4404995770629500697

`∩[A047554(n+1), A290002(n+1)]`
-/

namespace A291931.P4404995770629500697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P4404995770629500697

/-! ## A291931.P18427099224546032496

`∩[A290002(n+1), A359375(n+1)]`
-/

namespace A291931.P18427099224546032496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P18427099224546032496

/-! ## A291931.P12570080301098024182

`record[A009531(A290002(n+1))]`
-/

namespace A291931.P12570080301098024182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A290002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291931.P12570080301098024182

/-! ## A291931.P1647235652249037335

`∩[A047449(n+1), A290002(n+1)]`
-/

namespace A291931.P1647235652249037335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P1647235652249037335

/-! ## A291931.P15109960246339980446

`∩[A047561(n+1), A290002(n+1)]`
-/

namespace A291931.P15109960246339980446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291931.P15109960246339980446

/-!
# A291932: a(n) is the smallest k such that (n+1)*phi(k) = (n-1)*psi(k).

The programs for A291932, there is no canonical definition to state claims against.
-/

/-! ## A291932.P6502275473876104674

`A233583(A062011(n+1)*A097190(n))`
-/

namespace A291932.P6502275473876104674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A062011 (n + 1) * A097190 n).toNat

end

end A291932.P6502275473876104674

/-!
# A291933: a(1)=2; a(n) is the sum of prime(n) and the last digit of previous term.

The programs for A291933, the canonical program `A291933.P13043895663212954923` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291933 has offset 1).

The definition of A291933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291933.P13043895663212954923

`A000040(n+1)+a(n-1)%10` with `a(0)=2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291933

/-- `A000040(n+1)+a(n-1)%10` -/
def P13043895663212954923.Spec : Prop :=
  ∀ n, P13043895663212954923.a n = A291933 (n + 1)

theorem P13043895663212954923.correct : P13043895663212954923.Spec := by
  intro n
  simp only [A291933, Nat.add_sub_cancel]

end A291933

/-! ## A291933.P13416184020137640503

`A096319(n)+A000040(n+1)`
-/

namespace A291933.P13416184020137640503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096319 n + A000040 (n + 1)

end

end A291933.P13416184020137640503

namespace A291933

/-- `A096319(n)+A000040(n+1)` -/
def P13416184020137640503.Spec : Prop :=
  ∀ n, P13416184020137640503.a n = A291933 (n + 1)

end A291933

/-! ## A291933.P8295539914139117763

`Δ[A007504(n)]+A007504(n)%10`
-/

namespace A291933.P8295539914139117763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A007504 n) 10

end

end A291933.P8295539914139117763

namespace A291933

/-- `Δ[A007504(n)]+A007504(n)%10` -/
def P8295539914139117763.Spec : Prop :=
  ∀ n, P8295539914139117763.a n = A291933 (n + 1)

end A291933

/-! ## A291933.P17474874768003185812

`A010889(a(n-1))+A006093(n+1)` with `a(0)=2`
-/

namespace A291933.P17474874768003185812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010889 (a (n - 1)).toNat + A006093 (n + 1)

end

end A291933.P17474874768003185812

namespace A291933

/-- `A010889(a(n-1))+A006093(n+1)` -/
def P17474874768003185812.Spec : Prop :=
  ∀ n, P17474874768003185812.a n = A291933 (n + 1)

end A291933

/-! ## A291933.P7415269634299065777

`A007504(n+1)+A096319(n)-A007504(n)`
-/

namespace A291933.P7415269634299065777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A096319 n - A007504 n)

end

end A291933.P7415269634299065777

namespace A291933

/-- `A007504(n+1)+A096319(n)-A007504(n)` -/
def P7415269634299065777.Spec : Prop :=
  ∀ n, P7415269634299065777.a n = A291933 (n + 1)

end A291933

/-! ## A291933.P13017563593231257169

`A010889(a(n-1))+A000010(A008578(n+2))` with `a(0)=2`
-/

namespace A291933.P13017563593231257169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010889 (a (n - 1)).toNat + A000010 (A008578 (n + 2)).toNat

end

end A291933.P13017563593231257169

namespace A291933

/-- `A010889(a(n-1))+A000010(A008578(n+2))` -/
def P13017563593231257169.Spec : Prop :=
  ∀ n, P13017563593231257169.a n = A291933 (n + 1)

end A291933

/-! ## A291933.P8653510590335725056

`A010889(a(n-1))+A000010(A219606(2*(n+1)))` with `a(0)=2`
-/

namespace A291933.P8653510590335725056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010889 (a (n - 1)).toNat + A000010 (A219606 (2 * (n + 1))).toNat

end

end A291933.P8653510590335725056

namespace A291933

/-- `A010889(a(n-1))+A000010(A219606(2*(n+1)))` -/
def P8653510590335725056.Spec : Prop :=
  ∀ n, P8653510590335725056.a n = A291933 (n + 1)

end A291933

/-!
# A291935: Number of matchings in the n-Fibonacci cube graph.

The programs for A291935, there is no canonical definition to state claims against.
-/

/-! ## A291935.P12027243331459360339

`or(n, A258823(A136171(n)))`
-/

namespace A291935.P12027243331459360339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A258823 (A136171 n).toNat)

end

end A291935.P12027243331459360339

/-!
# A291936: Number of independent vertex sets and vertex covers in the n-Fibonacci cube graph.

The programs for A291936, there is no canonical definition to state claims against.
-/

/-! ## A291936.P12420267796688899055

`A105965(a(n-1))` with `a(0)=3, a(1)=5`
-/

namespace A291936.P12420267796688899055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A105965 (a (n - 1)).toNat

end

end A291936.P12420267796688899055

/-!
# A291938: a(n) = 2^(n - 1) (n - mod(n, 2)).

The programs for A291938, the canonical program `A291938.P4025716546915177949` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291938 has offset 1).

The definition of A291938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n+1-(n+1)%2)` (program `A291938.P4025716546915177949`, by `A291938.P4025716546915177949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291938.P4025716546915177949

`2^n*(n+1-(n+1)%2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291938

/-- `2^n*(n+1-(n+1)%2)` -/
def P4025716546915177949.Spec : Prop :=
  ∀ n, P4025716546915177949.a n = A291938 (n + 1)

theorem P4025716546915177949.correct : P4025716546915177949.Spec := by
  intro n
  simp only [A291938, Nat.add_sub_cancel]

end A291938

/-! ## A291938.P16191432678969778729

`2^(n+1)*A004526(n+1)`
-/

namespace A291938.P16191432678969778729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A004526 (n + 1)

end

end A291938.P16191432678969778729

namespace A291938

/-- `2^(n+1)*A004526(n+1)` -/
def P16191432678969778729.Spec : Prop :=
  ∀ n, P16191432678969778729.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P10982172241896464263

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=4, a(2)=8`
-/

namespace A291938.P10982172241896464263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 8] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 8 * a (n - 3)

end

end A291938.P10982172241896464263

namespace A291938

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P10982172241896464263.Spec : Prop :=
  ∀ n, P10982172241896464263.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P5433454549693194579

`(n%2+n)*2^n`
-/

namespace A291938.P5433454549693194579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + n) * 2 ^ n

end

end A291938.P5433454549693194579

namespace A291938

/-- `(n%2+n)*2^n` -/
def P5433454549693194579.Spec : Prop :=
  ∀ n, (P5433454549693194579.a n : ℤ) = A291938 (n + 1)

end A291938

/-! ## A291938.P130622138290751996

`2^n*(and(1, n)+n)`
-/

namespace A291938.P130622138290751996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (Nat.land 1 n + n)

end

end A291938.P130622138290751996

namespace A291938

/-- `2^n*(and(1, n)+n)` -/
def P130622138290751996.Spec : Prop :=
  ∀ n, (P130622138290751996.a n : ℤ) = A291938 (n + 1)

end A291938

/-! ## A291938.P4942477720395850425

`(1-or(1, -n))*2^n`
-/

namespace A291938.P4942477720395850425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.lor 1 (-(n : ℤ))) * (2 ^ n : ℤ)

end

end A291938.P4942477720395850425

namespace A291938

/-- `(1-or(1, -n))*2^n` -/
def P4942477720395850425.Spec : Prop :=
  ∀ n, P4942477720395850425.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P17357396362526809542

`2^(n+1)*ceil(n/2)`
-/

namespace A291938.P17357396362526809542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A291938.P17357396362526809542

namespace A291938

/-- `2^(n+1)*ceil(n/2)` -/
def P17357396362526809542.Spec : Prop :=
  ∀ n, P17357396362526809542.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P526883367040143398

`∑[2^n+4*a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A291938.P526883367040143398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  2 ^ n + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291938.P526883367040143398

namespace A291938

/-- `∑[2^n+4*a(n-2)]` -/
def P526883367040143398.Spec : Prop :=
  ∀ n, (P526883367040143398.a n : ℤ) = A291938 (n + 1)

end A291938

/-! ## A291938.P6113219103482403073

`floor(2^n*∑[2-a(n-1)])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A291938.P6113219103482403073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291938.P6113219103482403073

namespace A291938

/-- `floor(2^n*∑[2-a(n-1)])` -/
def P6113219103482403073.Spec : Prop :=
  ∀ n, P6113219103482403073.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P17268885764881457354

`2^(n+1)+4*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A291938.P17268885764881457354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 ^ (n + 1) + 4 * a (n - 2)

end

end A291938.P17268885764881457354

namespace A291938

/-- `2^(n+1)+4*a(n-2)` -/
def P17268885764881457354.Spec : Prop :=
  ∀ n, (P17268885764881457354.a n : ℤ) = A291938 (n + 1)

end A291938

/-! ## A291938.P1546068923944657607

`A134353(n+1)-2^(n+1)`
-/

namespace A291938.P1546068923944657607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134353 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A291938.P1546068923944657607

namespace A291938

/-- `A134353(n+1)-2^(n+1)` -/
def P1546068923944657607.Spec : Prop :=
  ∀ n, P1546068923944657607.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P17070815105997326162

`A001787(n+1)-A077957(n)²`
-/

namespace A291938.P17070815105997326162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A077957 n ^ 2

end

end A291938.P17070815105997326162

namespace A291938

/-- `A001787(n+1)-A077957(n)²` -/
def P17070815105997326162.Spec : Prop :=
  ∀ n, P17070815105997326162.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P9266560394777964465

`A274497(n+1)+A274497(n+1)`
-/

namespace A291938.P9266560394777964465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 (n + 1) + A274497 (n + 1)

end

end A291938.P9266560394777964465

namespace A291938

/-- `A274497(n+1)+A274497(n+1)` -/
def P9266560394777964465.Spec : Prop :=
  ∀ n, P9266560394777964465.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P16400762659817309809

`and(A099035(n+1), A157823(n+2))`
-/

namespace A291938.P16400762659817309809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A157823 (n + 2))

end

end A291938.P16400762659817309809

namespace A291938

/-- `and(A099035(n+1), A157823(n+2))` -/
def P16400762659817309809.Spec : Prop :=
  ∀ n, P16400762659817309809.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P4499584504470194816

`A127981(n+1)-A000975(xor(1, n))`
-/

namespace A291938.P4499584504470194816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127981 (n + 1) - A000975 (Nat.xor 1 n)

end

end A291938.P4499584504470194816

namespace A291938

/-- `A127981(n+1)-A000975(xor(1, n))` -/
def P4499584504470194816.Spec : Prop :=
  ∀ n, P4499584504470194816.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P17481617771312075509

`∑[A011782(n+1)*A028242(n+1)]`
-/

namespace A291938.P17481617771312075509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A028242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291938.P17481617771312075509

namespace A291938

/-- `∑[A011782(n+1)*A028242(n+1)]` -/
def P17481617771312075509.Spec : Prop :=
  ∀ n, P17481617771312075509.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P15660408012142381403

`and(2-A000217(2*n), A005985(n+1))`
-/

namespace A291938.P15660408012142381403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A000217 (2 * n)) (A005985 (n + 1))

end

end A291938.P15660408012142381403

namespace A291938

/-- `and(2-A000217(2*n), A005985(n+1))` -/
def P15660408012142381403.Spec : Prop :=
  ∀ n, P15660408012142381403.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P15462112994986246367

`A000079(n)*A109613(n+1)-A000079(n)`
-/

namespace A291938.P15462112994986246367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A109613 (n + 1) - A000079 n

end

end A291938.P15462112994986246367

namespace A291938

/-- `A000079(n)*A109613(n+1)-A000079(n)` -/
def P15462112994986246367.Spec : Prop :=
  ∀ n, P15462112994986246367.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P10856033273148107730

`A140787(n+1)+A140787(n)-A000079(n+1)`
-/

namespace A291938.P10856033273148107730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140787 (n + 1) + (A140787 n - A000079 (n + 1))

end

end A291938.P10856033273148107730

namespace A291938

/-- `A140787(n+1)+A140787(n)-A000079(n+1)` -/
def P10856033273148107730.Spec : Prop :=
  ∀ n, P10856033273148107730.a n = A291938 (n + 1)

end A291938

/-! ## A291938.P8162591862362376987

`A004526(n+1)+A000225(n+1)*A004526(n+1)`
-/

namespace A291938.P8162591862362376987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A000225 (n + 1) * A004526 (n + 1)

end

end A291938.P8162591862362376987

namespace A291938

/-- `A004526(n+1)+A000225(n+1)*A004526(n+1)` -/
def P8162591862362376987.Spec : Prop :=
  ∀ n, P8162591862362376987.a n = A291938 (n + 1)

end A291938

/-!
# A291941: Number of Carlitz compositions of n that either have length 1, or have length greater than or equal to 2 and are palindromic if we exclude the first part.

The programs for A291941, there is no canonical definition to state claims against.
-/

/-! ## A291941.P17803332995062205163

`2*A292200(n+1)-1`
-/

namespace A291941.P17803332995062205163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292200 (n + 1) - 1

end

end A291941.P17803332995062205163

/-! ## A291941.P1456992228150633962

`A134824(n+2)+2*A292200(n+1)`
-/

namespace A291941.P1456992228150633962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + 2 * A292200 (n + 1)

end

end A291941.P1456992228150633962

/-! ## A291941.P4707640671678223057

`A008683(A002146(n))+2*A292200(n+1)`
-/

namespace A291941.P4707640671678223057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat + 2 * A292200 (n + 1)

end

end A291941.P4707640671678223057

/-! ## A291941.P6690307064970696956

`A008683(A020483(n))+2*A292200(n+1)`
-/

namespace A291941.P6690307064970696956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A292200 (n + 1)

end

end A291941.P6690307064970696956

/-! ## A291941.P8190708836537992656

`A008683(A051698(n))+2*A292200(n+1)`
-/

namespace A291941.P8190708836537992656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat + 2 * A292200 (n + 1)

end

end A291941.P8190708836537992656

/-! ## A291941.P8177367576641474840

`A008683(A001097(n+1))+2*A292200(n+1)`
-/

namespace A291941.P8177367576641474840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat + 2 * A292200 (n + 1)

end

end A291941.P8177367576641474840

/-! ## A291941.P5617660047081832169

`A008683(A002313(n+1))+2*A292200(n+1)`
-/

namespace A291941.P5617660047081832169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002313 (n + 1)).toNat + 2 * A292200 (n + 1)

end

end A291941.P5617660047081832169

/-! ## A291941.P16424420307005967854

`A008683(A003629(n+1))+2*A292200(n+1)`
-/

namespace A291941.P16424420307005967854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003629 (n + 1)).toNat + 2 * A292200 (n + 1)

end

end A291941.P16424420307005967854

/-! ## A291941.P1632947703146631333

`A008683(A046028(n+1))+2*A292200(n+1)`
-/

namespace A291941.P1632947703146631333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A046028 (n + 1)).toNat + 2 * A292200 (n + 1)

end

end A291941.P1632947703146631333

/-!
# A291945: Powers of 1111.

The programs for A291945, the canonical program `A291945.P15300096953576282081` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291945 has offset 0).

The definition of A291945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291945.P15300096953576282081

`A001020(n)*A096884(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291945

/-- `A001020(n)*A096884(n)` -/
def P15300096953576282081.Spec : Prop :=
  ∀ n, P15300096953576282081.a n = A291945 n

theorem P15300096953576282081.correct : P15300096953576282081.Spec := by
  intro n
  simp only [A291945]

end A291945

/-! ## A291945.P13169459706127221070

`11^n*101^n`
-/

namespace A291945.P13169459706127221070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n * 101 ^ n

end

end A291945.P13169459706127221070

namespace A291945

/-- `11^n*101^n` -/
def P13169459706127221070.Spec : Prop :=
  ∀ n, (P13169459706127221070.a n : ℤ) = A291945 n

end A291945

/-! ## A291945.P6942251333109568554

`lcm(11^n, 101^n)`
-/

namespace A291945.P6942251333109568554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (11 ^ n) (101 ^ n)

end

end A291945.P6942251333109568554

namespace A291945

/-- `lcm(11^n, 101^n)` -/
def P6942251333109568554.Spec : Prop :=
  ∀ n, (P6942251333109568554.a n : ℤ) = A291945 n

end A291945

/-!
# A291946: 

The programs for A291946, there is no canonical definition to state claims against.
-/

/-! ## A291946.P12617750959474398084

`A069507(A326292(n)+5)^n`
-/

namespace A291946.P12617750959474398084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069507 (A326292 n + 5).toNat ^ n

end

end A291946.P12617750959474398084

/-! ## A291946.P2887571200385999784

`A280411(ratio[A000079(n)]+3)^n`
-/

namespace A291946.P2887571200385999784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 3)).toNat ^ n

end

end A291946.P2887571200385999784

/-!
# A291949: Number of maximal cliques in the n-polygon diagonal intersection graph.

The programs for A291949, there is no canonical definition to state claims against.
-/

/-! ## A291949.P5586746387731451205

`∑[∑[A071330(A279553(n+2))]]`
-/

namespace A291949.P5586746387731451205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A279553 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291949.P5586746387731451205

/-!
# A291952: Number of ordered pairs of edge-disjoint trees on n labeled vertices.

The programs for A291952, there is no canonical definition to state claims against.
-/

/-! ## A291952.P7587802993176011439

`gcd(2, A298026(n))*A291953(n+1)`
-/

namespace A291952.P7587802993176011439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A298026 n) : ℤ) * A291953 (n + 1)

end

end A291952.P7587802993176011439

/-! ## A291952.P1200960107109588700

`A014963(A011782(n))*A291953(n+1)`
-/

namespace A291952.P1200960107109588700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A011782 n).toNat * A291953 (n + 1)

end

end A291952.P1200960107109588700

/-! ## A291952.P10665530036801501591

`A014963(A016116(n))*A291953(n+1)`
-/

namespace A291952.P10665530036801501591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016116 n).toNat * A291953 (n + 1)

end

end A291952.P10665530036801501591

/-! ## A291952.P14483231633582658286

`A020639(A038210(n))*A291953(n+1)`
-/

namespace A291952.P14483231633582658286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038210 n).toNat * A291953 (n + 1)

end

end A291952.P14483231633582658286

/-! ## A291952.P1853476245767185002

`A000005(∑[A291955(n)])*A291953(n+1)`
-/

namespace A291952.P1853476245767185002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A291953 (n + 1)

end

end A291952.P1853476245767185002

/-!
# A291953: Number of unordered pairs of edge-disjoint trees on n labeled vertices.

The programs for A291953, there is no canonical definition to state claims against.
-/

/-! ## A291953.P3019692427406588181

`ceil(A291952(n+1)/2)`
-/

namespace A291953.P3019692427406588181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291952 (n + 1) : ℚ) / 2⌉

end

end A291953.P3019692427406588181

/-! ## A291953.P856352566783585836

`A291952(n+1)/A014963(A016116(n))`
-/

namespace A291953.P856352566783585836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291952 (n + 1) : ℚ) / (A014963 (A016116 n).toNat : ℚ)

end

end A291953.P856352566783585836

/-! ## A291953.P2614029596213718507

`A291952(n+1)/A020639(A038210(n))`
-/

namespace A291953.P2614029596213718507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291952 (n + 1) : ℚ) / (A020639 (A038210 n).toNat : ℚ)

end

end A291953.P2614029596213718507

/-! ## A291953.P8223582912508460411

`A291952(n+1)/A014963(A137688(n))`
-/

namespace A291953.P8223582912508460411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291952 (n + 1) : ℚ) / (A014963 (A137688 n).toNat : ℚ)

end

end A291953.P8223582912508460411

/-! ## A291953.P15859971523278885951

`A291952(n+1)/A020639(A000010(n+1))`
-/

namespace A291953.P15859971523278885951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291952 (n + 1) : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A291953.P15859971523278885951

/-!
# A291954: Triangle read by rows: T(n,k) = T(n-k,k-1) - T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291954, there is no canonical definition to state claims against.
-/

/-! ## A291954.P8716542379647102839

`A157658(xor(2, A163943(n)))`
-/

namespace A291954.P8716542379647102839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (Int.xor 2 (A163943 n)).toNat

end

end A291954.P8716542379647102839

/-! ## A291954.P2751722672068613662

`A008683(A244869(n)-A211362(n))`
-/

namespace A291954.P2751722672068613662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A244869 n - A211362 n).toNat

end

end A291954.P2751722672068613662

/-! ## A291954.P14384173575082898405

`A010054(A047993(3*(n+1)))-A353354(n+1)`
-/

namespace A291954.P14384173575082898405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A047993 (3 * (n + 1))).toNat - A353354 (n + 1)

end

end A291954.P14384173575082898405

/-! ## A291954.P1021613789053485229

`A373253(A158291(n+1)+A058317(2*n+5))`
-/

namespace A291954.P1021613789053485229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 (A158291 (n + 1) + A058317 (2 * n + 5)).toNat

end

end A291954.P1021613789053485229

/-! ## A291954.P5950865014995818764

`A023533(A086737(n))-A353354(n+1)`
-/

namespace A291954.P5950865014995818764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A086737 n).toNat - A353354 (n + 1)

end

end A291954.P5950865014995818764

/-!
# A291955: Triangle read by rows: T(n,k) = T(n-k,k-1) - T(n-k,k+1) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291955, there is no canonical definition to state claims against.
-/

/-! ## A291955.P37778619449839245

`A291940(n)%A181796(A031926(3*n+2))`
-/

namespace A291955.P37778619449839245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291940 n) (A181796 (A031926 (3 * n + 2)).toNat)

end

end A291955.P37778619449839245

/-! ## A291955.P7961805258871124189

`A291940(n)%A000005(A000230(n))`
-/

namespace A291955.P7961805258871124189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291940 n) (A000005 (A000230 n).toNat)

end

end A291955.P7961805258871124189

/-! ## A291955.P4764758967560678283

`A197870(lcm(55, A191129(n+1)))`
-/

namespace A291955.P4764758967560678283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (Int.lcm 55 (A191129 (n + 1)))

end

end A291955.P4764758967560678283

/-! ## A291955.P2317148187279677255

`A008683(A033429(A291929(n))+16)`
-/

namespace A291955.P2317148187279677255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A033429 (A291929 n).toNat + 16).toNat

end

end A291955.P2317148187279677255

/-! ## A291955.P362014582218829407

`A114986(A187120(n+3))-A159689(n)`
-/

namespace A291955.P362014582218829407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A187120 (n + 3)).toNat - A159689 n

end

end A291955.P362014582218829407

/-!
# A291956: Row sums of A291955.

The programs for A291956, there is no canonical definition to state claims against.
-/

/-! ## A291956.P7486322766363169016

`2-A349258((7*n+4)²)`
-/

namespace A291956.P7486322766363169016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A349258 ((7 * n + 4) ^ 2)

end

end A291956.P7486322766363169016

/-! ## A291956.P13898694548354973050

`A139632(n)*A330025(A026622(n))`
-/

namespace A291956.P13898694548354973050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139632 n * A330025 (A026622 n).toNat

end

end A291956.P13898694548354973050

/-! ## A291956.P8571577124234052265

`A087890(A179216(n))-A306346(n+1)`
-/

namespace A291956.P8571577124234052265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (A179216 n).toNat - A306346 (n + 1)

end

end A291956.P8571577124234052265

/-! ## A291956.P2022044589149574945

`A194681(A194583(n))-A194591(n+1)`
-/

namespace A291956.P2022044589149574945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194681 (A194583 n).toNat - A194591 (n + 1)

end

end A291956.P2022044589149574945

/-! ## A291956.P9309612376595464495

`A011646(A022837(n+1))-A085978(n+1)`
-/

namespace A291956.P9309612376595464495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A022837 (n + 1)).toNat - A085978 (n + 1)

end

end A291956.P9309612376595464495

/-!
# A291957: Triangle read by rows: T(n,k) = T(n-k,k-1) - T(n-k,k) + T(n-k,k+1) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291957, there is no canonical definition to state claims against.
-/

/-! ## A291957.P13591237465096830982

`A102283(A291929(n))^A147252(n+1)`
-/

namespace A291957.P13591237465096830982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102283 (A291929 n).toNat : ℚ) ^ (A147252 (n + 1) : ℤ)

end

end A291957.P13591237465096830982

/-! ## A291957.P527812145165612527

`A102283(A291929(n)%A332952(n+2))`
-/

namespace A291957.P527812145165612527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (Int.tmod (A291929 n) (A332952 (n + 2))).toNat

end

end A291957.P527812145165612527

/-! ## A291957.P3533537643266793556

`A102283(64*A291929(n))`
-/

namespace A291957.P3533537643266793556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (64 * A291929 n).toNat

end

end A291957.P3533537643266793556

/-! ## A291957.P2794226370843269724

`A102283(A291929(n)^A326057(n+1))`
-/

namespace A291957.P2794226370843269724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (SequenceMachineLib.roundAway ((A291929 n : ℚ) ^ (A326057 (n + 1) : ℤ))).toNat

end

end A291957.P2794226370843269724

/-! ## A291957.P16437601638836724589

`A102283(A292313(n+1)+A291929(n))`
-/

namespace A291957.P16437601638836724589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A292313 (n + 1) + A291929 n).toNat

end

end A291957.P16437601638836724589

/-!
# A291960: Triangle read by rows: T(n,k) = T(n-k,k-1) + k * T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291960, there is no canonical definition to state claims against.
-/

/-! ## A291960.P6141705382852798302

`A291969(n)/A237451(n+1)!`
-/

namespace A291960.P6141705382852798302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291969 n : ℚ) / (Nat.factorial (A237451 (n + 1)).toNat : ℚ)

end

end A291960.P6141705382852798302

/-! ## A291960.P2925256015789743511

`A000225(A382864(n)^A348963(n+1))`
-/

namespace A291960.P2925256015789743511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((A382864 n : ℚ) ^ (A348963 (n + 1) : ℤ))).toNat

end

end A291960.P2925256015789743511

/-! ## A291960.P15650098942126167506

`A276951(A351884(n))`
-/

namespace A291960.P15650098942126167506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 (A351884 n).toNat

end

end A291960.P15650098942126167506

/-! ## A291960.P1861343992075521621

`3%A293060(A244523(n+1))`
-/

namespace A291960.P1861343992075521621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A293060 (A244523 (n + 1)).toNat)

end

end A291960.P1861343992075521621

/-! ## A291960.P12188815483854253266

`A069010(A244523(n+1)²²)`
-/

namespace A291960.P12188815483854253266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((A244523 (n + 1) ^ 2) ^ 2).toNat

end

end A291960.P12188815483854253266

/-!
# A291961: Numbers n > 1 such that 2^lambda(n) == 1 (mod n^2), where lambda(n) is the Carmichael lambda function (A002322).

The programs for A291961, there is no canonical definition to state claims against.
-/

/-! ## A291961.P13525736670998706067

`A077816(lt[A261242(n+2), A296910(n)])`
-/

namespace A291961.P13525736670998706067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261242 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077816 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291961.P13525736670998706067

/-! ## A291961.P8400750757520001961

`A077816(lt[A143383(n), A005561(n+3)])`
-/

namespace A291961.P8400750757520001961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005561 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077816 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291961.P8400750757520001961

/-! ## A291961.P12206513626076600295

`A077816(lt[A077765(n+4), A077800(3*n+2)])`
-/

namespace A291961.P12206513626076600295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077765 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077816 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291961.P12206513626076600295

/-!
# A291962: Decimal repunits written in base 2.

The programs for A291962, the canonical program `A291962.P14369896121216324615` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291962 has offset 0).

The definition of A291962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291962.P14369896121216324615

`A007088(A002275(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A291962

/-- `A007088(A002275(n))` -/
def P14369896121216324615.Spec : Prop :=
  ∀ n, P14369896121216324615.a n = A291962 n

theorem P14369896121216324615.correct : P14369896121216324615.Spec := by
  intro n
  simp only [A291962]

end A291962

/-! ## A291962.P16662384770948938746

`A071998(2^n-1)`
-/

namespace A291962.P16662384770948938746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071998 (2 ^ n - 1)

end

end A291962.P16662384770948938746

namespace A291962

/-- `A071998(2^n-1)` -/
def P16662384770948938746.Spec : Prop :=
  ∀ n, P16662384770948938746.a n = A291962 n

end A291962

/-! ## A291962.P11935858587222244404

`A071998(A255047(n))%A072020(n+1)`
-/

namespace A291962.P11935858587222244404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071998 (A255047 n).toNat) (A072020 (n + 1))

end

end A291962.P11935858587222244404

namespace A291962

/-- `A071998(A255047(n))%A072020(n+1)` -/
def P11935858587222244404.Spec : Prop :=
  ∀ n, P11935858587222244404.a n = A291962 n

end A291962

/-!
# A291963: Number of irredundant sets in the n-Fibonacci cube graph.

The programs for A291963, there is no canonical definition to state claims against.
-/

/-! ## A291963.P3801843670075235954

`A246303(∑[∑[A255881(n)]])`
-/

namespace A291963.P3801843670075235954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255881 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291963.P3801843670075235954

/-!
# A291964: Number of (undirected) paths in the n-Fibonacci cube graph.

The programs for A291964, there is no canonical definition to state claims against.
-/

/-! ## A291964.P14849310015758231850

`or(A059893(A301581(n)), A099356(n))`
-/

namespace A291964.P14849310015758231850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059893 (A301581 n).toNat) (A099356 n)

end

end A291964.P14849310015758231850

/-!
# A291965: Denominators of fractions with anomalous cancellation property, where more than one digit can be cancelled.

The programs for A291965, there is no canonical definition to state claims against.
-/

/-! ## A291965.P7440363160643590041

`A291094(lt[n+1, A035019(n)])`
-/

namespace A291965.P7440363160643590041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A291965.P7440363160643590041

/-! ## A291965.P16934484307384504891

`A291094(lt[1, A035019(n)-n])`
-/

namespace A291965.P16934484307384504891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A291965.P16934484307384504891

/-! ## A291965.P14127909994646329393

`A291094(A120127(n+1)%A183186(n+1))`
-/

namespace A291965.P14127909994646329393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291094 (Int.tmod (A120127 (n + 1)) (A183186 (n + 1))).toNat

end

end A291965.P14127909994646329393

/-!
# A291968: Triangle read by rows: T(n,k) = (k+1) * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291968, there is no canonical definition to state claims against.
-/

/-! ## A291968.P4836330656244101234

`∑{e}[A286410(A291971(n)), #]`
-/

namespace A291968.P4836330656244101234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286410 (A291971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A291968.P4836330656244101234

/-! ## A291968.P14122596426029285412

`A053824(A000045(A291971(n)))`
-/

namespace A291968.P14122596426029285412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000045 (A291971 n).toNat).toNat

end

end A291968.P14122596426029285412

/-! ## A291968.P456660873229137428

`A004396(Δ[A024656(n)]*A291971(n))`
-/

namespace A291968.P456660873229137428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((f1 (n + 1) - f1 n) * A291971 n).toNat

end

end A291968.P456660873229137428

/-! ## A291968.P9855110457495431977

`A351637(A028310(n))+A256478(A219311(n)^4)`
-/

namespace A291968.P9855110457495431977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351637 (A028310 n).toNat + A256478 (A219311 n ^ 4).toNat

end

end A291968.P9855110457495431977

/-! ## A291968.P742576417746233734

`A081166(A291971(n)+1)`
-/

namespace A291968.P742576417746233734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081166 (A291971 n + 1).toNat

end

end A291968.P742576417746233734

/-!
# A291969: Triangle read by rows: T(n,k) = k * (T(n-k,k-1) + T(n-k,k)) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291969, there is no canonical definition to state claims against.
-/

/-! ## A291969.P4891885903454175310

`A237451(n+1)!*A291960(n)`
-/

namespace A291969.P4891885903454175310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A237451 (n + 1)).toNat : ℤ) * A291960 n

end

end A291969.P4891885903454175310

/-! ## A291969.P18253723868131704459

`A003056(A082861(A291970(n)²))`
-/

namespace A291969.P18253723868131704459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A082861 (A291970 n ^ 2).toNat).toNat

end

end A291969.P18253723868131704459

/-! ## A291969.P986057117663446007

`A328316(A351637(n))`
-/

namespace A291969.P986057117663446007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328316 (A351637 n).toNat

end

end A291969.P986057117663446007

/-! ## A291969.P7895358881043688360

`A302037(3^A219311(n))`
-/

namespace A291969.P7895358881043688360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A219311 n : ℤ))).toNat

end

end A291969.P7895358881043688360

/-! ## A291969.P75078624271103081

`A321434(A055647(n))`
-/

namespace A291969.P75078624271103081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321434 (A055647 n).toNat

end

end A291969.P75078624271103081

/-!
# A291970: Triangle read by rows: T(n,k) = 2 * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291970, there is no canonical definition to state claims against.
-/

/-! ## A291970.P15371332772742819481

`abs(A292129(n))`
-/

namespace A291970.P15371332772742819481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292129 n|

end

end A291970.P15371332772742819481

/-! ## A291970.P7054693958457011271

`gcd(A000038(n), A292129(n))`
-/

namespace A291970.P7054693958457011271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292129 n)

end

end A291970.P7054693958457011271

/-! ## A291970.P1325035747749748185

`lcm(A000034(n), A292129(n))`
-/

namespace A291970.P1325035747749748185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A292129 n)

end

end A291970.P1325035747749748185

/-! ## A291970.P4735558775456585045

`gcd(2*A292143(n), A292142(n))`
-/

namespace A291970.P4735558775456585045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A292143 n) (A292142 n)

end

end A291970.P4735558775456585045

/-! ## A291970.P9865609515023040039

`∑{d}[A292129(n), A000010(#)]`
-/

namespace A291970.P9865609515023040039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A291970.P9865609515023040039

/-! ## A291970.P9750715489915165667

`A000196(A292129(n)²)`
-/

namespace A291970.P9750715489915165667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A292129 n ^ 2).toNat

end

end A291970.P9750715489915165667

/-!
# A291971: Triangle read by rows: T(n,k) = 3 * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A291971, there is no canonical definition to state claims against.
-/

/-! ## A291971.P7270333582483107347

`abs(A292130(n))`
-/

namespace A291971.P7270333582483107347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292130 n|

end

end A291971.P7270333582483107347

/-! ## A291971.P18350524223583291967

`gcd(A000038(n), A292130(n))`
-/

namespace A291971.P18350524223583291967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292130 n)

end

end A291971.P18350524223583291967

/-! ## A291971.P12459181174378930559

`lcm(A010684(n), A292130(n))`
-/

namespace A291971.P12459181174378930559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A292130 n)

end

end A291971.P12459181174378930559

/-! ## A291971.P12268389308357444776

`sqrt(A292130(n)*A292130(n%(n+1)))`
-/

namespace A291971.P12268389308357444776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A292130 n * A292130 (n % (n + 1)) : ℝ)

end

end A291971.P12268389308357444776

/-! ## A291971.P8792304719800850208

`∑{d}[A292130(n), A000010(#)]`
-/

namespace A291971.P8792304719800850208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A291971.P8792304719800850208

/-!
# A291973: a(n) = (3*n)! * [z^(3*n)] exp(exp(z)/3 + 2*exp(-z/2)*cos(z*sqrt(3)/2)/3 - 1).

The programs for A291973, there is no canonical definition to state claims against.
-/

/-! ## A291973.P10786869024357502032

`A260876(∑[n+3]+n+3)`
-/

namespace A291973.P10786869024357502032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A291973.P10786869024357502032

/-! ## A291973.P13619451765433424842

`A018893(n)-A327002(n)`
-/

namespace A291973.P13619451765433424842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018893 n - A327002 n

end

end A291973.P13619451765433424842

/-! ## A291973.P9859401002720244965

`A327001(∑[n+4]+2)`
-/

namespace A291973.P9859401002720244965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327001 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A291973.P9859401002720244965

/-!
# A291974: a(n) = (3*n)! * [z^(3*n)] exp(-(exp(z)/3 + 2*exp(-z/2)*cos(z*sqrt(3)/2)/3 - 1)).

The programs for A291974, there is no canonical definition to state claims against.
-/

/-! ## A291974.P7249977007583151902

`A260875(∑[n+3]+n+4)`
-/

namespace A291974.P7249977007583151902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260875 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A291974.P7249977007583151902

/-! ## A291974.P16297223944019367433

`or(1, A260875(A141214(n+1)))`
-/

namespace A291974.P16297223944019367433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260875 (A141214 (n + 1)).toNat)

end

end A291974.P16297223944019367433

/-! ## A291974.P16002826208087215448

`A260875(A141214(n+1))*A293551(n)`
-/

namespace A291974.P16002826208087215448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260875 (A141214 (n + 1)).toNat * A293551 n

end

end A291974.P16002826208087215448

/-!
# A291975: a(n) = (4*n)! * [z^(4*n)] exp((cos(z) + cosh(z))/2 - 1).

The programs for A291975, there is no canonical definition to state claims against.
-/

/-! ## A291975.P13753428449031940565

`A260876(eq[4, A025581(n)])`
-/

namespace A291975.P13753428449031940565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291975.P13753428449031940565

/-! ## A291975.P6379417686287757146

`A260876(eq[5, A193739(n)])`
-/

namespace A291975.P6379417686287757146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291975.P6379417686287757146

/-! ## A291975.P6408463206839324282

`A260876(eq[9, A099375(n)])`
-/

namespace A291975.P6408463206839324282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291975.P6408463206839324282

/-! ## A291975.P4869226876903779066

`A260876(eq[5, A004736(n+1)])`
-/

namespace A291975.P4869226876903779066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291975.P4869226876903779066

/-! ## A291975.P2382994192827444589

`A260876(eq[8, A243060(n+1)])`
-/

namespace A291975.P2382994192827444589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291975.P2382994192827444589

/-!
# A291976: a(n) = (4*n)! * [z^(4*n)] exp(1 - (cos(z) + cosh(z))/2).

The programs for A291976, there is no canonical definition to state claims against.
-/

/-! ## A291976.P11322663470078062148

`A260875(∑[n+5]+6)`
-/

namespace A291976.P11322663470078062148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260875 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A291976.P11322663470078062148

/-!
# A291977: Triangle read by rows, T(n, k) = Sum_{j=0..n} (-1)^(k-j)*Eulerian1(n, j)* binomial(n-j, n-k) for 0 <= k <= n.

The programs for A291977, there is no canonical definition to state claims against.
-/

/-! ## A291977.P10935958840544622632

`Δ[A225678(n)]^floor(atan(n))`
-/

namespace A291977.P10935958840544622632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A291977.P10935958840544622632

/-! ## A291977.P15836498465343878959

`A000038(n)+Δ[A225678(n)]`
-/

namespace A291977.P15836498465343878959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A291977.P15836498465343878959

/-! ## A291977.P3856143629512428218

`Δ[A225678(n)+A040002(n)]`
-/

namespace A291977.P3856143629512428218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n + A040002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291977.P3856143629512428218

/-! ## A291977.P13897349901889019334

`Δ[A225678(n)+A122553(n)]`
-/

namespace A291977.P13897349901889019334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n + A122553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291977.P13897349901889019334

/-! ## A291977.P446166400406584069

`Δ[A225678(n)-A000038(3*n)]`
-/

namespace A291977.P446166400406584069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n - A000038 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291977.P446166400406584069

/-! ## A291977.P471091077904051238

`Δ[A225678(n)]^(A000040(n+1)%2)`
-/

namespace A291977.P471091077904051238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A291977.P471091077904051238

/-! ## A291977.P15818679599044115280

`Δ[A225678(n)]^A000032(ceil(n/(n+1)))`
-/

namespace A291977.P15818679599044115280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000032 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A291977.P15818679599044115280

/-! ## A291977.P15942591464340558495

`Δ[A225678(n)]^A014963(∑[n+2])`
-/

namespace A291977.P15942591464340558495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A291977.P15942591464340558495

/-!
# A291978: Triangle read by rows, T(n, k) = (-1)^(n-k)*n!*[t^k]([x^n] exp(x*t)/(1 + log(1+x))) for 0<=k<=n.

The programs for A291978, there is no canonical definition to state claims against.
-/

/-! ## A291978.P15159667988024009021

`A007318(n)*A007840(A025581(n))`
-/

namespace A291978.P15159667988024009021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007840 (A025581 n).toNat

end

end A291978.P15159667988024009021

/-! ## A291978.P253422673421797507

`sqrt(A008459(n))*A007840(A025581(n))`
-/

namespace A291978.P253422673421797507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A007840 (A025581 n).toNat : ℝ)

end

end A291978.P253422673421797507

/-! ## A291978.P13822270695616401173

`(A014473(n)+1)*A007840(A025581(n))`
-/

namespace A291978.P13822270695616401173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A007840 (A025581 n).toNat

end

end A291978.P13822270695616401173

/-! ## A291978.P7396428695326448318

`A007840(A025581(n))*A074909(A056943(n))`
-/

namespace A291978.P7396428695326448318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (A025581 n).toNat * A074909 (A056943 n).toNat

end

end A291978.P7396428695326448318

/-! ## A291978.P9781344887132594790

`(A034852(n)+A034851(n))*A007840(A025581(n))`
-/

namespace A291978.P9781344887132594790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034852 n + A034851 n) * A007840 (A025581 n).toNat

end

end A291978.P9781344887132594790

/-!
# A291979: a(n) = (-1)^n*n!*[x^n] exp(-x)/(1 + log(1+x)).

The programs for A291979, there is no canonical definition to state claims against.
-/

/-! ## A291979.P17978813020387943857

`A295517(∑[n])`
-/

namespace A291979.P17978813020387943857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291979.P17978813020387943857

/-! ## A291979.P14741148646528717126

`abs(A295517(C(n+1, 2)))`
-/

namespace A291979.P14741148646528717126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295517 (Nat.choose (n + 1) 2)|

end

end A291979.P14741148646528717126

/-! ## A291979.P7127153106292967316

`abs(A295517(floor((2*n+1)²/8)))`
-/

namespace A291979.P7127153106292967316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295517 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat|

end

end A291979.P7127153106292967316

/-! ## A291979.P10564142824890762534

`record[A295517(A049780(n))]`
-/

namespace A291979.P10564142824890762534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295517 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291979.P10564142824890762534

/-! ## A291979.P12572658617207210347

`record[A010054(n)*A295517(n)]`
-/

namespace A291979.P12572658617207210347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A295517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291979.P12572658617207210347

/-!
# A291980: Triangle read by rows, T(n, k) = n!*[t^k] ([x^n] exp(x*t)/(1 - log(1+x))) for 0<=k<=n.

The programs for A291980, there is no canonical definition to state claims against.
-/

/-! ## A291980.P6154844488990935835

`A007318(n)*A006252(A025581(n))`
-/

namespace A291980.P6154844488990935835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A006252 (A025581 n).toNat

end

end A291980.P6154844488990935835

/-! ## A291980.P6967858485478309028

`abs(A006252(A025581(n))*A108086(n))`
-/

namespace A291980.P6967858485478309028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006252 (A025581 n).toNat * A108086 n|

end

end A291980.P6967858485478309028

/-! ## A291980.P9962148814099736969

`Δ[A102363(n)]*A006252(A025581(n))`
-/

namespace A291980.P9962148814099736969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006252 (A025581 n).toNat

end

end A291980.P9962148814099736969

/-! ## A291980.P11237293196587121243

`A006252(A025581(n))/2*A028326(n)`
-/

namespace A291980.P11237293196587121243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006252 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A291980.P11237293196587121243

/-! ## A291980.P17415414464677890294

`A006252(A004736(n+1)-1)*A007318(n)`
-/

namespace A291980.P17415414464677890294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 (A004736 (n + 1) - 1).toNat * A007318 n

end

end A291980.P17415414464677890294

/-! ## A291980.P11267989106502204912

`abs(A108086(n))*A006252(A004736(n+1)-1)`
-/

namespace A291980.P11267989106502204912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A006252 (A004736 (n + 1) - 1).toNat

end

end A291980.P11267989106502204912

/-! ## A291980.P3171350219062948245

`Δ[A102363(n)]*A006252(A004736(n+1)-1)`
-/

namespace A291980.P3171350219062948245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006252 (A004736 (n + 1) - 1).toNat

end

end A291980.P3171350219062948245

/-! ## A291980.P30916092103161015

`A004525(A028326(n))*A006252(A025581(n))`
-/

namespace A291980.P30916092103161015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A006252 (A025581 n).toNat

end

end A291980.P30916092103161015

/-!
# A291981: a(n) = n! * [x^n] exp(x)/(1 - log(1+x)).

The programs for A291981, there is no canonical definition to state claims against.
-/

/-! ## A291981.P14111508949618290418

`floor(root(A197496(n+3), 6))`
-/

namespace A291981.P14111508949618290418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A197496 (n + 3) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A291981.P14111508949618290418

/-! ## A291981.P15292291216018381342

`∑[∑[A187108(a(n-1)+1)]]` with `a(0)=1, a(1)=0`
-/

namespace A291981.P15292291216018381342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A187108 (f2 (n - 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291981.P15292291216018381342

/-! ## A291981.P12204191511261902140

`∑[A297403(a(n-1)²)+n-1]` with `a(0)=1`
-/

namespace A291981.P12204191511261902140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A297403 (f1 (n - 1) ^ 2).toNat + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291981.P12204191511261902140

/-!
# A291982: a(n) = Euler(n, n+1) * 2^valuation(n+1, 2), where Euler(n, x) denotes the Euler polynomial.

The programs for A291982, there is no canonical definition to state claims against.
-/

/-! ## A291982.P1402264955592936423

`∑[∑[A102098(A015441(n))]]`
-/

namespace A291982.P1402264955592936423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102098 (A015441 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291982.P1402264955592936423

/-!
# A291983: Expansion of 1/((1+x)*(1+x^2)*(1+x^3)).

The programs for A291983, the canonical program `A291983.P7064816401112235619` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291983 has offset 0).

The definition of A291983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2+2x^3+x^4+x^5+x^6))` (program `A291983.P7064816401112235619`, by `A291983.P7064816401112235619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291983.P7064816401112235619

`ogf(1/(1+x+x^2+2x^3+x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291983

/-- `ogf(1/(1+x+x^2+2x^3+x^4+x^5+x^6))` -/
def P7064816401112235619.Spec : Prop :=
  ∀ n, P7064816401112235619.a n = A291983 n

theorem P7064816401112235619.correct : P7064816401112235619.Spec := by
  intro n
  simp only [A291983]

end A291983

/-! ## A291983.P6632227274945487146

`(-1)^n*A112689(n+1)`
-/

namespace A291983.P6632227274945487146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112689 (n + 1)

end

end A291983.P6632227274945487146

namespace A291983

/-- `(-1)^n*A112689(n+1)` -/
def P6632227274945487146.Spec : Prop :=
  ∀ n, P6632227274945487146.a n = A291983 n

end A291983

/-! ## A291983.P13565088542713515340

`A112689(n+1)/A033999(n)`
-/

namespace A291983.P13565088542713515340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112689 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A291983.P13565088542713515340

namespace A291983

/-- `A112689(n+1)/A033999(n)` -/
def P13565088542713515340.Spec : Prop :=
  ∀ n, P13565088542713515340.a n = (A291983 n : ℚ)

end A291983

/-! ## A291983.P10864854558138613239

`A112689(n+1)/A062157(n+1)`
-/

namespace A291983.P10864854558138613239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112689 (n + 1) : ℚ) / (A062157 (n + 1) : ℚ)

end

end A291983.P10864854558138613239

namespace A291983

/-- `A112689(n+1)/A062157(n+1)` -/
def P10864854558138613239.Spec : Prop :=
  ∀ n, P10864854558138613239.a n = (A291983 n : ℚ)

end A291983

/-! ## A291983.P11665208834877344871

`A026923(n+3)-A026927(n+3)`
-/

namespace A291983.P11665208834877344871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (n + 3) - A026927 (n + 3)

end

end A291983.P11665208834877344871

namespace A291983

/-- `A026923(n+3)-A026927(n+3)` -/
def P11665208834877344871.Spec : Prop :=
  ∀ n, P11665208834877344871.a n = A291983 n

end A291983

/-! ## A291983.P10957637245537232952

`Δ[Δ[A309687(n+1)-A309685(n+1)]]`
-/

namespace A291983.P10957637245537232952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 (n + 1) - A309685 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291983.P10957637245537232952

namespace A291983

/-- `Δ[Δ[A309687(n+1)-A309685(n+1)]]` -/
def P10957637245537232952.Spec : Prop :=
  ∀ n, P10957637245537232952.a n = A291983 n

end A291983

/-! ## A291983.P12433974361761252564

`A112689(n+1)*A195017(A000040(n+1))`
-/

namespace A291983.P12433974361761252564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (n + 1) * A195017 (A000040 (n + 1)).toNat

end

end A291983.P12433974361761252564

namespace A291983

/-- `A112689(n+1)*A195017(A000040(n+1))` -/
def P12433974361761252564.Spec : Prop :=
  ∀ n, P12433974361761252564.a n = A291983 n

end A291983

/-! ## A291983.P9980766781995042577

`A112689(n+1)/A057077(2*n)`
-/

namespace A291983.P9980766781995042577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112689 (n + 1) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A291983.P9980766781995042577

namespace A291983

/-- `A112689(n+1)/A057077(2*n)` -/
def P9980766781995042577.Spec : Prop :=
  ∀ n, P9980766781995042577.a n = (A291983 n : ℚ)

end A291983

/-! ## A291983.P15890856503992950006

`A112689(n+1)*A117569(2*n+1)`
-/

namespace A291983.P15890856503992950006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (n + 1) * A117569 (2 * n + 1)

end

end A291983.P15890856503992950006

namespace A291983

/-- `A112689(n+1)*A117569(2*n+1)` -/
def P15890856503992950006.Spec : Prop :=
  ∀ n, P15890856503992950006.a n = A291983 n

end A291983

/-! ## A291983.P4189177644499159751

`A062157(n+2)*A291984(2*n+1)`
-/

namespace A291983.P4189177644499159751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) * A291984 (2 * n + 1)

end

end A291983.P4189177644499159751

namespace A291983

/-- `A062157(n+2)*A291984(2*n+1)` -/
def P4189177644499159751.Spec : Prop :=
  ∀ n, P4189177644499159751.a n = A291983 n

end A291983

/-! ## A291983.P17718412009315886557

`A342708(A052905(n)+9)`
-/

namespace A291983.P17718412009315886557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A052905 n + 9).toNat

end

end A291983.P17718412009315886557

namespace A291983

/-- `A342708(A052905(n)+9)` -/
def P17718412009315886557.Spec : Prop :=
  ∀ n, P17718412009315886557.a n = A291983 n

end A291983

/-! ## A291983.P3389321993952824024

`A342708(A055999(n)+10)`
-/

namespace A291983.P3389321993952824024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A055999 n + 10).toNat

end

end A291983.P3389321993952824024

namespace A291983

/-- `A342708(A055999(n)+10)` -/
def P3389321993952824024.Spec : Prop :=
  ∀ n, P3389321993952824024.a n = A291983 n

end A291983

/-! ## A291983.P15503922826803052894

`A342708(Δ[A008778(n)]+6)`
-/

namespace A291983.P15503922826803052894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (f1 (n + 1) - f1 n + 6).toNat

end

end A291983.P15503922826803052894

namespace A291983

/-- `A342708(Δ[A008778(n)]+6)` -/
def P15503922826803052894.Spec : Prop :=
  ∀ n, P15503922826803052894.a n = A291983 n

end A291983

/-! ## A291983.P18211680699518269218

`A342708(A166136(n+2)-2)`
-/

namespace A291983.P18211680699518269218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A166136 (n + 2) - 2).toNat

end

end A291983.P18211680699518269218

namespace A291983

/-- `A342708(A166136(n+2)-2)` -/
def P18211680699518269218.Spec : Prop :=
  ∀ n, P18211680699518269218.a n = A291983 n

end A291983

/-! ## A291983.P12370482660800365960

`A342708(A000217(n+3)+4)`
-/

namespace A291983.P12370482660800365960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000217 (n + 3) + 4).toNat

end

end A291983.P12370482660800365960

namespace A291983

/-- `A342708(A000217(n+3)+4)` -/
def P12370482660800365960.Spec : Prop :=
  ∀ n, P12370482660800365960.a n = A291983 n

end A291983

/-! ## A291983.P13147921521320235505

`A342708(A034856(n+2)+6)`
-/

namespace A291983.P13147921521320235505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A034856 (n + 2) + 6).toNat

end

end A291983.P13147921521320235505

namespace A291983

/-- `A342708(A034856(n+2)+6)` -/
def P13147921521320235505.Spec : Prop :=
  ∀ n, P13147921521320235505.a n = A291983 n

end A291983

/-! ## A291983.P12722281498549967647

`A342708(A161680(n+4)+4)`
-/

namespace A291983.P12722281498549967647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A161680 (n + 4) + 4).toNat

end

end A291983.P12722281498549967647

namespace A291983

/-- `A342708(A161680(n+4)+4)` -/
def P12722281498549967647.Spec : Prop :=
  ∀ n, P12722281498549967647.a n = A291983 n

end A291983

/-! ## A291983.P3146961507317883415

`A342708(A166136(n+1)+1+n)`
-/

namespace A291983.P3146961507317883415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A291983.P3146961507317883415

namespace A291983

/-- `A342708(A166136(n+1)+1+n)` -/
def P3146961507317883415.Spec : Prop :=
  ∀ n, P3146961507317883415.a n = A291983 n

end A291983

/-! ## A291983.P6703542666915642435

`A342708(Δ[A023545(n+1)-n²])`
-/

namespace A291983.P6703542666915642435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (f1 (n + 1) - f1 n).toNat

end

end A291983.P6703542666915642435

namespace A291983

/-- `A342708(Δ[A023545(n+1)-n²])` -/
def P6703542666915642435.Spec : Prop :=
  ∀ n, P6703542666915642435.a n = A291983 n

end A291983

/-!
# A291984: Expansion of 1/((1+x)*(1+x^2)*(1+x^3)*(1+x^4)).

The programs for A291984, the canonical program `A291984.P12430224901573276892` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291984 has offset 0).

The definition of A291984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2+2x^3+2x^4+2x^5+2x^6+2x^7+x^8+x^9+x^10))` (program `A291984.P12430224901573276892`, by `A291984.P12430224901573276892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291984.P12430224901573276892

`ogf(1/(1+x+x^2+2x^3+2x^4+2x^5+2x^6+2x^7+x^8+x^9+x^10))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291984

/-- `ogf(1/(1+x+x^2+2x^3+2x^4+2x^5+2x^6+2x^7+x^8+x^9+x^10))` -/
def P12430224901573276892.Spec : Prop :=
  ∀ n, P12430224901573276892.a n = A291984 n

theorem P12430224901573276892.correct : P12430224901573276892.Spec := by
  intro n
  simp only [A291984]

end A291984

/-! ## A291984.P7493859318827843858

`A026924(n+4)-A026928(n+4)`
-/

namespace A291984.P7493859318827843858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026924 (n + 4) - A026928 (n + 4)

end

end A291984.P7493859318827843858

namespace A291984

/-- `A026924(n+4)-A026928(n+4)` -/
def P7493859318827843858.Spec : Prop :=
  ∀ n, P7493859318827843858.a n = A291984 n

end A291984

/-! ## A291984.P6382854093563126642

`A154958(n+2)-A004524(A004525(n+7))`
-/

namespace A291984.P6382854093563126642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (n + 2) - A004524 (A004525 (n + 7)).toNat

end

end A291984.P6382854093563126642

namespace A291984

/-- `A154958(n+2)-A004524(A004525(n+7))` -/
def P6382854093563126642.Spec : Prop :=
  ∀ n, P6382854093563126642.a n = A291984 n

end A291984

/-! ## A291984.P6026179867658199556

`A342708(A167499(n+3))`
-/

namespace A291984.P6026179867658199556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A167499 (n + 3)).toNat

end

end A291984.P6026179867658199556

namespace A291984

/-- `A342708(A167499(n+3))` -/
def P6026179867658199556.Spec : Prop :=
  ∀ n, P6026179867658199556.a n = A291984 n

end A291984

/-! ## A291984.P12245997685600640996

`A342708(A155212(n)+13)`
-/

namespace A291984.P12245997685600640996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A155212 n + 13).toNat

end

end A291984.P12245997685600640996

namespace A291984

/-- `A342708(A155212(n)+13)` -/
def P12245997685600640996.Spec : Prop :=
  ∀ n, P12245997685600640996.a n = A291984 n

end A291984

/-! ## A291984.P17378795861610695025

`A342708(A056000(n)+15)`
-/

namespace A291984.P17378795861610695025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A056000 n + 15).toNat

end

end A291984.P17378795861610695025

namespace A291984

/-- `A342708(A056000(n)+15)` -/
def P17378795861610695025.Spec : Prop :=
  ∀ n, P17378795861610695025.a n = A291984 n

end A291984

/-! ## A291984.P7952995236738037074

`A342708(A000124(n+4)+4)`
-/

namespace A291984.P7952995236738037074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000124 (n + 4) + 4).toNat

end

end A291984.P7952995236738037074

namespace A291984

/-- `A342708(A000124(n+4)+4)` -/
def P7952995236738037074.Spec : Prop :=
  ∀ n, P7952995236738037074.a n = A291984 n

end A291984

/-! ## A291984.P9597163657877816126

`A342708(A000217(n+4)+5)`
-/

namespace A291984.P9597163657877816126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000217 (n + 4) + 5).toNat

end

end A291984.P9597163657877816126

namespace A291984

/-- `A342708(A000217(n+4)+5)` -/
def P9597163657877816126.Spec : Prop :=
  ∀ n, P9597163657877816126.a n = A291984 n

end A291984

/-! ## A291984.P10628436663585094725

`A342708(A027379(n+2)+8)`
-/

namespace A291984.P10628436663585094725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A027379 (n + 2) + 8).toNat

end

end A291984.P10628436663585094725

namespace A291984

/-- `A342708(A027379(n+2)+8)` -/
def P10628436663585094725.Spec : Prop :=
  ∀ n, P10628436663585094725.a n = A291984 n

end A291984

/-! ## A291984.P5220051593741372172

`A342708(A161680(n+5)+5)`
-/

namespace A291984.P5220051593741372172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A161680 (n + 5) + 5).toNat

end

end A291984.P5220051593741372172

namespace A291984

/-- `A342708(A161680(n+5)+5)` -/
def P5220051593741372172.Spec : Prop :=
  ∀ n, P5220051593741372172.a n = A291984 n

end A291984

/-! ## A291984.P2534969287444629989

`A342708(A055999(n+3)-2*n)`
-/

namespace A291984.P2534969287444629989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A291984.P2534969287444629989

namespace A291984

/-- `A342708(A055999(n+3)-2*n)` -/
def P2534969287444629989.Spec : Prop :=
  ∀ n, P2534969287444629989.a n = A291984 n

end A291984

/-! ## A291984.P17667368134388788774

`A342708(A052905(n+3)-(2*n+1))`
-/

namespace A291984.P17667368134388788774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A291984.P17667368134388788774

namespace A291984

/-- `A342708(A052905(n+3)-(2*n+1))` -/
def P17667368134388788774.Spec : Prop :=
  ∀ n, P17667368134388788774.a n = A291984 n

end A291984

/-! ## A291984.P13336825345625372110

`A342708(A038722(Δ[A023545(n+1)]))`
-/

namespace A291984.P13336825345625372110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A291984.P13336825345625372110

namespace A291984

/-- `A342708(A038722(Δ[A023545(n+1)]))` -/
def P13336825345625372110.Spec : Prop :=
  ∀ n, P13336825345625372110.a n = A291984 n

end A291984

/-!
# A291985: Expansion of 1/((1+x)*(1+x^2)*(1+x^3)*(1+x^4)*(1+x^5)).

The programs for A291985, the canonical program `A291985.P10977080604052199504` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291985 has offset 0).

The definition of A291985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2+2x^3+2x^4+3x^5+3x^6+3x^7+3x^8+3x^9+3x^10+2x^11+2x^12+x^13+x^14+x^15))` (program `A291985.P10977080604052199504`, by `A291985.P10977080604052199504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291985.P10977080604052199504

`ogf(1/(1+x+x^2+2x^3+2x^4+3x^5+3x^6+3x^7+3x^8+3x^9+3x^10+2x^11+2x^12+x^13+x^14+x^15))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291985

/-- `ogf(1/(1+x+x^2+2x^3+2x^4+3x^5+3x^6+3x^7+3x^8+3x^9+3x^10+2x^11+2x^12+x^13+x^14+x^15))` -/
def P10977080604052199504.Spec : Prop :=
  ∀ n, P10977080604052199504.a n = A291985 n

theorem P10977080604052199504.correct : P10977080604052199504.Spec := by
  intro n
  simp only [A291985]

end A291985

/-! ## A291985.P3676115816211257122

`A342708(A166136(n+4))`
-/

namespace A291985.P3676115816211257122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A166136 (n + 4)).toNat

end

end A291985.P3676115816211257122

namespace A291985

/-- `A342708(A166136(n+4))` -/
def P3676115816211257122.Spec : Prop :=
  ∀ n, P3676115816211257122.a n = A291985 n

end A291985

/-! ## A291985.P1254638557124783516

`A342708(A056115(n)+21)`
-/

namespace A291985.P1254638557124783516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A056115 n + 21).toNat

end

end A291985.P1254638557124783516

namespace A291985

/-- `A342708(A056115(n)+21)` -/
def P1254638557124783516.Spec : Prop :=
  ∀ n, P1254638557124783516.a n = A291985 n

end A291985

/-! ## A291985.P13791954100647565482

`A342708(A000124(n+5)+5)`
-/

namespace A291985.P13791954100647565482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000124 (n + 5) + 5).toNat

end

end A291985.P13791954100647565482

namespace A291985

/-- `A342708(A000124(n+5)+5)` -/
def P13791954100647565482.Spec : Prop :=
  ∀ n, P13791954100647565482.a n = A291985 n

end A291985

/-! ## A291985.P10438328960627057325

`A342708(A000096(n+4)+7)`
-/

namespace A291985.P10438328960627057325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000096 (n + 4) + 7).toNat

end

end A291985.P10438328960627057325

namespace A291985

/-- `A342708(A000096(n+4)+7)` -/
def P10438328960627057325.Spec : Prop :=
  ∀ n, P10438328960627057325.a n = A291985 n

end A291985

/-! ## A291985.P7759718647559243982

`A342708(A000217(n+5)+6)`
-/

namespace A291985.P7759718647559243982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000217 (n + 5) + 6).toNat

end

end A291985.P7759718647559243982

namespace A291985

/-- `A342708(A000217(n+5)+6)` -/
def P7759718647559243982.Spec : Prop :=
  ∀ n, P7759718647559243982.a n = A291985 n

end A291985

/-! ## A291985.P17198835330718944286

`A342708(A055998(n+3)+9)`
-/

namespace A291985.P17198835330718944286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A055998 (n + 3) + 9).toNat

end

end A291985.P17198835330718944286

namespace A291985

/-- `A342708(A055998(n+3)+9)` -/
def P17198835330718944286.Spec : Prop :=
  ∀ n, P17198835330718944286.a n = A291985 n

end A291985

/-! ## A291985.P11336656163287070060

`A342708(A161680(n+6)+6)`
-/

namespace A291985.P11336656163287070060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A161680 (n + 6) + 6).toNat

end

end A291985.P11336656163287070060

namespace A291985

/-- `A342708(A161680(n+6)+6)` -/
def P11336656163287070060.Spec : Prop :=
  ∀ n, P11336656163287070060.a n = A291985 n

end A291985

/-! ## A291985.P14101461982266376625

`A342708(A046691(n+3)+10)`
-/

namespace A291985.P14101461982266376625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A046691 (n + 3) + 10).toNat

end

end A291985.P14101461982266376625

namespace A291985

/-- `A342708(A046691(n+3)+10)` -/
def P14101461982266376625.Spec : Prop :=
  ∀ n, P14101461982266376625.a n = A291985 n

end A291985

/-! ## A291985.P15735532303429684750

`A342708(A155212(n+1)+14)`
-/

namespace A291985.P15735532303429684750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A155212 (n + 1) + 14).toNat

end

end A291985.P15735532303429684750

namespace A291985

/-- `A342708(A155212(n+1)+14)` -/
def P15735532303429684750.Spec : Prop :=
  ∀ n, P15735532303429684750.a n = A291985 n

end A291985

/-! ## A291985.P7832416270732459392

`A342708(A133263(n+6)-(n+2))`
-/

namespace A291985.P7832416270732459392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A291985.P7832416270732459392

namespace A291985

/-- `A342708(A133263(n+6)-(n+2))` -/
def P7832416270732459392.Spec : Prop :=
  ∀ n, P7832416270732459392.a n = A291985 n

end A291985

/-! ## A291985.P4590767291986903909

`A342708(A055999(n+4)-(2*n+1))`
-/

namespace A291985.P4590767291986903909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A291985.P4590767291986903909

namespace A291985

/-- `A342708(A055999(n+4)-(2*n+1))` -/
def P4590767291986903909.Spec : Prop :=
  ∀ n, P4590767291986903909.a n = A291985 n

end A291985

/-!
# A291986: Expansion of 1/((1-x)*(1-2*x^2)*(1-3*x^3)).

The programs for A291986, the canonical program `A291986.P2896095891393016878` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291986 has offset 0).

The definition of A291986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-x^3+3x^4+6x^5-6x^6))` (program `A291986.P2896095891393016878`, by `A291986.P2896095891393016878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291986.P2896095891393016878

`ogf(1/(1-x-2x^2-x^3+3x^4+6x^5-6x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291986

/-- `ogf(1/(1-x-2x^2-x^3+3x^4+6x^5-6x^6))` -/
def P2896095891393016878.Spec : Prop :=
  ∀ n, P2896095891393016878.a n = A291986 n

theorem P2896095891393016878.correct : P2896095891393016878.Spec := by
  intro n
  simp only [A291986]

end A291986

/-! ## A291986.P2036328203005810278

`A052551(n)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A291986.P2036328203005810278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A052551 n + 3 * a (n - 3)

end

end A291986.P2036328203005810278

namespace A291986

/-- `A052551(n)+3*a(n-3)` -/
def P2036328203005810278.Spec : Prop :=
  ∀ n, P2036328203005810278.a n = A291986 n

end A291986

/-! ## A291986.P2698657335708985651

`A291960(eq[3, A237451(n+1)])`
-/

namespace A291986.P2698657335708985651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291986.P2698657335708985651

namespace A291986

/-- `A291960(eq[3, A237451(n+1)])` -/
def P2698657335708985651.Spec : Prop :=
  ∀ n, P2698657335708985651.a n = A291986 n

end A291986

/-! ## A291986.P2519884568974371837

`A259823(A001399(n)%A293842(n+1))`
-/

namespace A291986.P2519884568974371837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (Int.tmod (A001399 n) (A293842 (n + 1))).toNat

end

end A291986.P2519884568974371837

namespace A291986

/-- `A259823(A001399(n)%A293842(n+1))` -/
def P2519884568974371837.Spec : Prop :=
  ∀ n, P2519884568974371837.a n = A291986 n

end A291986

/-! ## A291986.P57975001197249359

`A259823(A001399(n))%A236645(3*n+5)`
-/

namespace A291986.P57975001197249359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259823 (A001399 n).toNat) (A236645 (3 * n + 5))

end

end A291986.P57975001197249359

namespace A291986

/-- `A259823(A001399(n))%A236645(3*n+5)` -/
def P57975001197249359.Spec : Prop :=
  ∀ n, P57975001197249359.a n = A291986 n

end A291986

/-!
# A291987: Expansion of 1/((1-x)*(1-2*x^2)*(1-3*x^3)*(1-4*x^4)).

The programs for A291987, the canonical program `A291987.P6279359388678067842` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291987 has offset 0).

The definition of A291987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-x^3-x^4+10x^5+2x^6+4x^7-12x^8-24x^9+24x^10))` (program `A291987.P6279359388678067842`, by `A291987.P6279359388678067842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291987.P6279359388678067842

`ogf(1/(1-x-2x^2-x^3-x^4+10x^5+2x^6+4x^7-12x^8-24x^9+24x^10))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291987

/-- `ogf(1/(1-x-2x^2-x^3-x^4+10x^5+2x^6+4x^7-12x^8-24x^9+24x^10))` -/
def P6279359388678067842.Spec : Prop :=
  ∀ n, P6279359388678067842.a n = A291987 n

theorem P6279359388678067842.correct : P6279359388678067842.Spec := by
  intro n
  simp only [A291987]

end A291987

/-! ## A291987.P9797582415724519347

`A291960(eq[4, A237451(n+1)])`
-/

namespace A291987.P9797582415724519347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291987.P9797582415724519347

namespace A291987

/-- `A291960(eq[4, A237451(n+1)])` -/
def P9797582415724519347.Spec : Prop :=
  ∀ n, P9797582415724519347.a n = A291987 n

end A291987

/-!
# A291988: Expansion of 1/((1-x)*(1-2*x^2)*(1-3*x^3)*(1-4*x^4)*(1-5*x^5)).

The programs for A291988, there is no canonical definition to state claims against.
-/

/-! ## A291988.P2648264745484674624

`A291960(eq[5, A237451(n+1)])`
-/

namespace A291988.P2648264745484674624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291988.P2648264745484674624

/-!
# A291989: Smallest number that exceeds n and is divisible by at least one prime factor of n and by at least one prime that does not divide n.

The programs for A291989, there is no canonical definition to state claims against.
-/

/-! ## A291989.P13571131286943615167

`A378372(A061228(n+2))`
-/

namespace A291989.P13571131286943615167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378372 (A061228 (n + 2)).toNat

end

end A291989.P13571131286943615167

/-! ## A291989.P202918069907350100

`A378372(A159475(n+2))`
-/

namespace A291989.P202918069907350100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378372 (A159475 (n + 2)).toNat

end

end A291989.P202918069907350100

/-!
# A291990: 

The programs for A291990, there is no canonical definition to state claims against.
-/

/-! ## A291990.P16556135338777972942

`A020509(A138920(n+1))`
-/

namespace A291990.P16556135338777972942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020509 (A138920 (n + 1)).toNat

end

end A291990.P16556135338777972942

/-! ## A291990.P4330912295816278647

`A019328(lcm(A085033(3*n+2), A138920(n+1)))`
-/

namespace A291990.P4330912295816278647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019328 (Int.lcm (A085033 (3 * n + 2)) (A138920 (n + 1)))

end

end A291990.P4330912295816278647

/-!
# A291991: Primes of the form Phi(k, -9), where Phi is the cyclotomic polynomial.

The programs for A291991, there is no canonical definition to state claims against.
-/

/-! ## A291991.P11034405417347375790

`A020508(A138921(n+1))`
-/

namespace A291991.P11034405417347375790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020508 (A138921 (n + 1)).toNat

end

end A291991.P11034405417347375790

/-!
# A291992: 

The programs for A291992, there is no canonical definition to state claims against.
-/

/-! ## A291992.P18246481793386263005

`A020507(A138922(n+1))`
-/

namespace A291992.P18246481793386263005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020507 (A138922 (n + 1)).toNat

end

end A291992.P18246481793386263005

/-!
# A291993: Primes of the form Phi(k, -7), where Phi is the cyclotomic polynomial.

The programs for A291993, there is no canonical definition to state claims against.
-/

/-! ## A291993.P1168270017508011242

`A020506(A138923(n+1))`
-/

namespace A291993.P1168270017508011242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020506 (A138923 (n + 1)).toNat

end

end A291993.P1168270017508011242

/-!
# A291994: Primes of the form Phi(k, -6), where Phi is the cyclotomic polynomial.

The programs for A291994, there is no canonical definition to state claims against.
-/

/-! ## A291994.P17724115462187896192

`A020505(A138924(n+1))`
-/

namespace A291994.P17724115462187896192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020505 (A138924 (n + 1)).toNat

end

end A291994.P17724115462187896192

/-!
# A291998: Primes of the form Phi(k, -5), where Phi is the cyclotomic polynomial.

The programs for A291998, there is no canonical definition to state claims against.
-/

/-! ## A291998.P10134191836508358206

`A020504(A138925(n+1))`
-/

namespace A291998.P10134191836508358206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020504 (A138925 (n + 1)).toNat

end

end A291998.P10134191836508358206

