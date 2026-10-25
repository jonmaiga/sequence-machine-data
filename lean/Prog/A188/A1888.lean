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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A188800: Expansion of Weierstrass sigma function where g2 = 2, g3 = 0.

The programs for A188800, there is no canonical definition to state claims against.
-/

/-! ## A188800.P11984252811561830690

`A188797(∑[n])`
-/

namespace A188800.P11984252811561830690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188800.P11984252811561830690

/-! ## A188800.P15156323095464605742

`A188797(A000217(n))+A010673(A005843(n))`
-/

namespace A188800.P15156323095464605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (A000217 n).toNat + A010673 (A005843 n).toNat

end

end A188800.P15156323095464605742

/-! ## A188800.P8590016905115211713

`A188797(A000217(n))+A016286(A103214(n))`
-/

namespace A188800.P8590016905115211713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (A000217 n).toNat + A016286 (A103214 n).toNat

end

end A188800.P8590016905115211713

/-! ## A188800.P2573231842465100875

`A188797(A000217(n))+A016286(A107030(n))`
-/

namespace A188800.P2573231842465100875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (A000217 n).toNat + A016286 (A107030 n).toNat

end

end A188800.P2573231842465100875

/-! ## A188800.P12043345054996724567

`A188797(A000217(n))+A023531(A261422(n))`
-/

namespace A188800.P12043345054996724567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (A000217 n).toNat + A023531 (A261422 n).toNat

end

end A188800.P12043345054996724567

/-!
# A188801: Column 1 of array in A188797.

The programs for A188801, there is no canonical definition to state claims against.
-/

/-! ## A188801.P7760823115265354614

`A188797(∑[n+1]+1)`
-/

namespace A188801.P7760823115265354614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188801.P7760823115265354614

/-!
# A188802: Expansion of (x^2+1)/(x^4+2*x^3-2*x+1).

The programs for A188802, the canonical program `A188802.P2374655761755554989` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188802 has offset 0).

The definition of A188802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x+2x^3+x^4))` (program `A188802.P2374655761755554989`, by `A188802.P2374655761755554989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188802.P2374655761755554989

`ogf((1+x^2)/(1-2x+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188802

/-- `ogf((1+x^2)/(1-2x+2x^3+x^4))` -/
def P2374655761755554989.Spec : Prop :=
  ∀ n, P2374655761755554989.a n = A188802 n

theorem P2374655761755554989.correct : P2374655761755554989.Spec := by
  intro n
  simp only [A188802]

end A188802

/-! ## A188802.P4892562344809786416

`A101497(n)-Δ[Δ[A101497(n)]]`
-/

namespace A188802.P4892562344809786416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101497 n - (f1 (n + 1) - f1 n)

end

end A188802.P4892562344809786416

namespace A188802

/-- `A101497(n)-Δ[Δ[A101497(n)]]` -/
def P4892562344809786416.Spec : Prop :=
  ∀ n, P4892562344809786416.a n = A188802 n

end A188802

/-! ## A188802.P16701987642729162338

`A272665(n+1)+A272665(n+3)`
-/

namespace A188802.P16701987642729162338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 1) + A272665 (n + 3)

end

end A188802.P16701987642729162338

namespace A188802

/-- `A272665(n+1)+A272665(n+3)` -/
def P16701987642729162338.Spec : Prop :=
  ∀ n, P16701987642729162338.a n = A188802 n

end A188802

/-! ## A188802.P1088871457393750673

`2*A101497(n+1)-A101497(n+2)`
-/

namespace A188802.P1088871457393750673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101497 (n + 1) - A101497 (n + 2)

end

end A188802.P1088871457393750673

namespace A188802

/-- `2*A101497(n+1)-A101497(n+2)` -/
def P1088871457393750673.Spec : Prop :=
  ∀ n, P1088871457393750673.a n = A188802 n

end A188802

/-!
# A188803: Primes that divide 2^(2^100) - 1 and 10^(10^100) - 1.

The programs for A188803, there is no canonical definition to state claims against.
-/

/-! ## A188803.P8057601917376313238

`∩[A023394(n+1), A072982(n+1)]`
-/

namespace A188803.P8057601917376313238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188803.P8057601917376313238

/-! ## A188803.P13298027677054638539

`∩[A023394(n+1), A273946(n+1)]`
-/

namespace A188803.P13298027677054638539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188803.P13298027677054638539

/-! ## A188803.P15012325147760317557

`∩[A072982(n+1), A273946(n+1)]`
-/

namespace A188803.P15012325147760317557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188803.P15012325147760317557

/-! ## A188803.P7552983281981230791

`∩[A072982(n+1), A307843(n+1)]`
-/

namespace A188803.P7552983281981230791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188803.P7552983281981230791

/-!
# A188804: Continued fraction for (Pi - sqrt(-4 + Pi^2))/2.

The programs for A188804, there is no canonical definition to state claims against.
-/

/-! ## A188804.P8067273301570304234

`gcd(a(n-1)+a(n-2), A050855(3*n+1))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A188804.P8067273301570304234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  Int.gcd (a (n - 1) + a (n - 2) : ℤ) (A050855 (3 * n + 1))

end

end A188804.P8067273301570304234

/-! ## A188804.P14206094359697086308

`A285097(lcm(A056000(n), A174410(n)))`
-/

namespace A188804.P14206094359697086308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (Int.lcm (A056000 n) (A174410 n))

end

end A188804.P14206094359697086308

/-! ## A188804.P1003214552110492763

`A023570(lcm(A110317(n), A192736(n+1)))`
-/

namespace A188804.P1003214552110492763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023570 (Int.lcm (A110317 n) (A192736 (n + 1)))

end

end A188804.P1003214552110492763

/-! ## A188804.P10273020014393037121

`and(A036459(n+3), A115915(A052940(n)))`
-/

namespace A188804.P10273020014393037121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036459 (n + 3)) (A115915 (A052940 n).toNat)

end

end A188804.P10273020014393037121

/-!
# A188805: The n-th derivative of 1/(1-x-x^2), evaluated at x=1.

The programs for A188805, the canonical program `A188805.P8005763696363257235` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188805 has offset 0).

The definition of A188805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188805.P8005763696363257235

`(-1)^(n+1)*n!*A001906(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188805

/-- `(-1)^(n+1)*n!*A001906(n+1)` -/
def P8005763696363257235.Spec : Prop :=
  ∀ n, P8005763696363257235.a n = A188805 n

theorem P8005763696363257235.correct : P8005763696363257235.Spec := by
  intro n
  simp only [A188805]

end A188805

/-! ## A188805.P6090575002033086103

`-(A005442(n)*A075193(n))`
-/

namespace A188805.P6090575002033086103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A005442 n * A075193 n)

end

end A188805.P6090575002033086103

namespace A188805

/-- `-(A005442(n)*A075193(n))` -/
def P6090575002033086103.Spec : Prop :=
  ∀ n, P6090575002033086103.a n = A188805 n

end A188805

/-! ## A188805.P15046250128722129064

`-(A000045(2*(n+1))*A133942(n))`
-/

namespace A188805.P15046250128722129064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000045 (2 * (n + 1)) * A133942 n)

end

end A188805.P15046250128722129064

namespace A188805

/-- `-(A000045(2*(n+1))*A133942(n))` -/
def P15046250128722129064.Spec : Prop :=
  ∀ n, P15046250128722129064.a n = A188805 n

end A188805

/-! ## A188805.P7746912574222144090

`(A099496(n+1)+A099496(n))*n!`
-/

namespace A188805.P7746912574222144090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099496 (n + 1) + A099496 n) * (Nat.factorial n : ℤ)

end

end A188805.P7746912574222144090

namespace A188805

/-- `(A099496(n+1)+A099496(n))*n!` -/
def P7746912574222144090.Spec : Prop :=
  ∀ n, P7746912574222144090.a n = A188805 n

end A188805

/-! ## A188805.P15267292332431350201

`∑[A000045(2*n+1)]*∏[-A028310(n)]`
-/

namespace A188805.P15267292332431350201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A188805.P15267292332431350201

namespace A188805

/-- `∑[A000045(2*n+1)]*∏[-A028310(n)]` -/
def P15267292332431350201.Spec : Prop :=
  ∀ n, P15267292332431350201.a n = A188805 n

end A188805

/-! ## A188805.P2106986429972968197

`(A099496(n+1)+A099496(n))*Δ[A003422(n)]`
-/

namespace A188805.P2106986429972968197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099496 (n + 1) + A099496 n) * (f1 (n + 1) - f1 n)

end

end A188805.P2106986429972968197

namespace A188805

/-- `(A099496(n+1)+A099496(n))*Δ[A003422(n)]` -/
def P2106986429972968197.Spec : Prop :=
  ∀ n, P2106986429972968197.a n = A188805 n

end A188805

/-! ## A188805.P13574004302904658380

`A000035(A082075(n+1))-A005442(n)*A075193(n)`
-/

namespace A188805.P13574004302904658380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A082075 (n + 1)).toNat - A005442 n * A075193 n

end

end A188805.P13574004302904658380

namespace A188805

/-- `A000035(A082075(n+1))-A005442(n)*A075193(n)` -/
def P13574004302904658380.Spec : Prop :=
  ∀ n, P13574004302904658380.a n = A188805 n

end A188805

/-!
# A188806: Number of nX3 array permutations with each element remaining in its original row or its original column.

The programs for A188806, there is no canonical definition to state claims against.
-/

/-! ## A188806.P17886706016285296858

`A188808(∑[n+2]+4)`
-/

namespace A188806.P17886706016285296858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188808 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188806.P17886706016285296858

/-! ## A188806.P5781826809867561884

`lcm(2, A188808(A167614(n+1)))`
-/

namespace A188806.P5781826809867561884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188808 (A167614 (n + 1)).toNat)

end

end A188806.P5781826809867561884

/-! ## A188806.P9741827409306917954

`record[root(A188808(n+4), A108084(n))]`
-/

namespace A188806.P9741827409306917954
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188808 (n + 4) : ℝ) ^ (1 / (A108084 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188806.P9741827409306917954

/-!
# A188807: Number of nX4 array permutations with each element remaining in its original row or its original column.

The programs for A188807, there is no canonical definition to state claims against.
-/

/-! ## A188807.P2301842592173415451

`A188808(A020752(n+1))`
-/

namespace A188807.P2301842592173415451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188808 (A020752 (n + 1)).toNat

end

end A188807.P2301842592173415451

/-!
# A188808: T(n,k)=Number of nXk array permutations with each element remaining in its original row or its original column.

The programs for A188808, there is no canonical definition to state claims against.
-/

/-! ## A188808.P6789094108392201097

`A334518(n+1)+A182386(A129455(n))`
-/

namespace A188808.P6789094108392201097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334518 (n + 1) + A182386 (A129455 n).toNat

end

end A188808.P6789094108392201097

/-!
# A188809: Rigidly-deletable primes under the rule that leading zeros are disallowed.

The programs for A188809, there is no canonical definition to state claims against.
-/

/-! ## A188809.P17687818302797421627

`or(A092621(n+1), A185284(2*n))`
-/

namespace A188809.P17687818302797421627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092621 (n + 1)) (A185284 (2 * n))

end

end A188809.P17687818302797421627

/-! ## A188809.P11978875986216699399

`or(A092621(n+1), A362379(A362379(2*n)))`
-/

namespace A188809.P11978875986216699399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092621 (n + 1)) (A362379 (A362379 (2 * n)).toNat)

end

end A188809.P11978875986216699399

/-!
# A188810: Number of nX2 array permutations with each element moved but remaining in its original row or its original column.

The programs for A188810, there is no canonical definition to state claims against.
-/

/-! ## A188810.P9682818078543047834

`A188813(∑[n+1]+2)`
-/

namespace A188810.P9682818078543047834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188813 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188810.P9682818078543047834

/-! ## A188810.P10349228647404509330

`record[A188813(A008795(n)+2)]`
-/

namespace A188810.P10349228647404509330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188813 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188810.P10349228647404509330

/-! ## A188810.P7789158738286164907

`record[gcd(A098825(n), A188813(n+1))]`
-/

namespace A188810.P7789158738286164907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A188813 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188810.P7789158738286164907

/-! ## A188810.P9878248814491867987

`record[A188813(n+3)/A345462(n+1)]`
-/

namespace A188810.P9878248814491867987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188813 (n + 3) : ℚ) / (A345462 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188810.P9878248814491867987

/-!
# A188811: Number of nX3 array permutations with each element moved but remaining in its original row or its original column.

The programs for A188811, there is no canonical definition to state claims against.
-/

/-! ## A188811.P11004521262896772038

`A188813(∑[n+2]+4)`
-/

namespace A188811.P11004521262896772038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188813 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188811.P11004521262896772038

/-! ## A188811.P17920480990215886795

`lcm(2, A188813(A167614(n+1)))`
-/

namespace A188811.P17920480990215886795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188813 (A167614 (n + 1)).toNat)

end

end A188811.P17920480990215886795

/-! ## A188811.P17907599834258150824

`A325955(n)+A188813(A167614(n+1))`
-/

namespace A188811.P17907599834258150824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325955 n + A188813 (A167614 (n + 1)).toNat

end

end A188811.P17907599834258150824

/-!
# A188812: Number of nX4 array permutations with each element moved but remaining in its original row or its original column.

The programs for A188812, there is no canonical definition to state claims against.
-/

/-! ## A188812.P14075232501880985744

`A188813(A020752(n+1))`
-/

namespace A188812.P14075232501880985744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188813 (A020752 (n + 1)).toNat

end

end A188812.P14075232501880985744

/-!
# A188814: Sum of the "complements" of the integer partitions of n.

The programs for A188814, there is no canonical definition to state claims against.
-/

/-! ## A188814.P1209992795976063608

`A182094(n)-A066186(n)`
-/

namespace A188814.P1209992795976063608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - A066186 n

end

end A188814.P1209992795976063608

/-! ## A188814.P452802131188145397

`A182094(n)-A220909(n)/2`
-/

namespace A188814.P452802131188145397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182094 n : ℚ) - (A220909 n : ℚ) / 2

end

end A188814.P452802131188145397

/-! ## A188814.P4806742801443436034

`A182094(n)-n*A000041(n)`
-/

namespace A188814.P4806742801443436034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - (n : ℤ) * A000041 n

end

end A188814.P4806742801443436034

/-! ## A188814.P9083720907903592062

`A182094(n)-n*A035363(2*n)`
-/

namespace A188814.P9083720907903592062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - (n : ℤ) * A035363 (2 * n)

end

end A188814.P9083720907903592062

/-! ## A188814.P18287337278900108372

`A066185(n)+A182094(n)-A066184(n)`
-/

namespace A188814.P18287337278900108372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n + (A182094 n - A066184 n)

end

end A188814.P18287337278900108372

/-! ## A188814.P15368662851673177037

`A182709(n+1)+A182094(n)-A182707(n+1)`
-/

namespace A188814.P15368662851673177037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + (A182094 n - A182707 (n + 1))

end

end A188814.P15368662851673177037

/-! ## A188814.P1995540936472239583

`A182094(n)-record[A182700(n)]`
-/

namespace A188814.P1995540936472239583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188814.P1995540936472239583

/-! ## A188814.P15617784796547273800

`A182094(n)-A182700(A000217(n))`
-/

namespace A188814.P15617784796547273800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - A182700 (A000217 n).toNat

end

end A188814.P15617784796547273800

/-! ## A188814.P6934093184185111706

`A182094(n)-A213191(A034856(n+1))`
-/

namespace A188814.P6934093184185111706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - A213191 (A034856 (n + 1)).toNat

end

end A188814.P6934093184185111706

/-!
# A188815: Least prime p such that prime(n) divides p + nextprime(p).

The programs for A188815, there is no canonical definition to state claims against.
-/

/-! ## A188815.P3910464805624000431

`A254862(p?[comp[n²]])`
-/

namespace A188815.P3910464805624000431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A188815.P3910464805624000431

/-! ## A188815.P8964936230797734845

`A254862(A000040(n+1))`
-/

namespace A188815.P8964936230797734845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (A000040 (n + 1)).toNat

end

end A188815.P8964936230797734845

/-! ## A188815.P4532234436189507979

`A254862(A161847(n+1))`
-/

namespace A188815.P4532234436189507979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (A161847 (n + 1)).toNat

end

end A188815.P4532234436189507979

/-! ## A188815.P2417791688476139718

`A254862(A008578(n+2))`
-/

namespace A188815.P2417791688476139718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (A008578 (n + 2)).toNat

end

end A188815.P2417791688476139718

/-! ## A188815.P1508310859094236725

`A254862(A182986(n+2))`
-/

namespace A188815.P1508310859094236725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (A182986 (n + 2)).toNat

end

end A188815.P1508310859094236725

/-! ## A188815.P6605773044838872566

`A254862(record[A006530(n+2)])`
-/

namespace A188815.P6605773044838872566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188815.P6605773044838872566

/-! ## A188815.P3712937263685433830

`A254862(record[A014963(n+2)])`
-/

namespace A188815.P3712937263685433830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188815.P3712937263685433830

/-! ## A188815.P13118733390000141896

`A254862(record[A020639(n+2)])`
-/

namespace A188815.P13118733390000141896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188815.P13118733390000141896

/-! ## A188815.P6416953274749749142

`A254862(A100484(n+1)/2)`
-/

namespace A188815.P6416953274749749142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A188815.P6416953274749749142

/-! ## A188815.P12429427242663979549

`A254862(A134204(A162846(n+1)))`
-/

namespace A188815.P12429427242663979549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (A134204 (A162846 (n + 1)).toNat).toNat

end

end A188815.P12429427242663979549

/-! ## A188815.P2165290915302251988

`A000040(A202063(n+1))`
-/

namespace A188815.P2165290915302251988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A202063 (n + 1)).toNat

end

end A188815.P2165290915302251988

/-! ## A188815.P14292002509716909824

`p?[(A151800(n)-n)*A254862(n+1)]`
-/

namespace A188815.P14292002509716909824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151800 n - (n : ℤ)) * A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188815.P14292002509716909824

/-!
# A188817: Number of primes between n-sqrt(n) and n+sqrt(n), inclusive.

The programs for A188817, there is no canonical definition to state claims against.
-/

/-! ## A188817.P2421475691925826981

`A080847(A002128(n+6)+A074941(2*n+1)*A291649(n))`
-/

namespace A188817.P2421475691925826981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (A002128 (n + 6) + A074941 (2 * n + 1) * A291649 n).toNat

end

end A188817.P2421475691925826981

/-! ## A188817.P17593512087662684501

`A170823(record[A062707(n)])`
-/

namespace A188817.P17593512087662684501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188817.P17593512087662684501

/-! ## A188817.P11270469628931800198

`A305391(record[Δ[A339417(n)]])`
-/

namespace A188817.P11270469628931800198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188817.P11270469628931800198

/-! ## A188817.P8711974345523136138

`A316112(A008619(p?[A003151(n+1)]))`
-/

namespace A188817.P8711974345523136138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A188817.P8711974345523136138

/-! ## A188817.P4671341516413409828

`A036582(A004538(n+4)*A056239(n+2))`
-/

namespace A188817.P4671341516413409828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 (A004538 (n + 4) * A056239 (n + 2)).toNat

end

end A188817.P4671341516413409828

/-!
# A188818: Number of n X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188818, there is no canonical definition to state claims against.
-/

/-! ## A188818.P12735188132966045501

`record[gcd(A003987(n+1), A188824(n+2))]`
-/

namespace A188818.P12735188132966045501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 (n + 1)) (A188824 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188818.P12735188132966045501

/-! ## A188818.P12404047943447854407

`A110654(A301417(n+1)-n)`
-/

namespace A188818.P12404047943447854407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A301417 (n + 1) - (n : ℤ)).toNat

end

end A188818.P12404047943447854407

/-!
# A188819: Number of n X 3 binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188819, the canonical program `A188819.P2417814013756188553` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188819 has offset 1).

The definition of A188819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188819.P2417814013756188553

`∑[8*(n+1)]+n%2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188819

/-- `∑[8*(n+1)]+n%2` -/
def P2417814013756188553.Spec : Prop :=
  ∀ n, (P2417814013756188553.a n : ℤ) = A188819 (n + 1)

theorem P2417814013756188553.correct : P2417814013756188553.Spec := by
  intro n
  simp only [A188819, Nat.add_sub_cancel]

end A188819

/-! ## A188819.P8013333527922917368

`and(1, n)+∑[8*(n+1)]`
-/

namespace A188819.P8013333527922917368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188819.P8013333527922917368

namespace A188819

/-- `and(1, n)+∑[8*(n+1)]` -/
def P8013333527922917368.Spec : Prop :=
  ∀ n, (P8013333527922917368.a n : ℤ) = A188819 (n + 1)

theorem P8013333527922917368.correct : P8013333527922917368.Spec := by
  intro n
  simp only [A188819, Nat.add_sub_cancel, A188819.P8013333527922917368.f1, A188819.P8013333527922917368.a, A188819.P2417814013756188553.f1, A188819.P2417814013756188553.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A188819

/-! ## A188819.P17695896034318240398

`∑[8*n+9]-or(1, n)`
-/

namespace A188819.P17695896034318240398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

end

end A188819.P17695896034318240398

namespace A188819

/-- `∑[8*n+9]-or(1, n)` -/
def P17695896034318240398.Spec : Prop :=
  ∀ n, P17695896034318240398.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P13245544742666539603

`∑[∑[floor(a(n-2))]]` with `a(0)=8, a(1)=9, a(2)=6, a(3)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A188819.P13245544742666539603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 9, 6, 10] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188819.P13245544742666539603

namespace A188819

/-- `∑[∑[floor(a(n-2))]]` -/
def P13245544742666539603.Spec : Prop :=
  ∀ n, (P13245544742666539603.a n : ℤ) = A188819 (n + 1)

end A188819

/-! ## A188819.P1164974330045677779

`(2*n+3)²-log2(gcd(2, n))`
-/

namespace A188819.P1164974330045677779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A188819.P1164974330045677779

namespace A188819

/-- `(2*n+3)²-log2(gcd(2, n))` -/
def P1164974330045677779.Spec : Prop :=
  ∀ n, P1164974330045677779.a n = (A188819 (n + 1) : ℝ)

end A188819

/-! ## A188819.P11118997580214652792

`and((2*n+3)², or(n, -2))`
-/

namespace A188819.P11118997580214652792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 3) ^ 2 : ℤ) (Int.lor (n : ℤ) (-2))

end

end A188819.P11118997580214652792

namespace A188819

/-- `and((2*n+3)², or(n, -2))` -/
def P11118997580214652792.Spec : Prop :=
  ∀ n, P11118997580214652792.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P12459677255154329068

`(2*n+3)²-char[2*n]`
-/

namespace A188819.P12459677255154329068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188819.P12459677255154329068

namespace A188819

/-- `(2*n+3)²-char[2*n]` -/
def P12459677255154329068.Spec : Prop :=
  ∀ n, P12459677255154329068.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P4916420346559464999

`xor((2*n+3)², char[2*n])`
-/

namespace A188819.P4916420346559464999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((2 * n + 3) ^ 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A188819.P4916420346559464999

namespace A188819

/-- `xor((2*n+3)², char[2*n])` -/
def P4916420346559464999.Spec : Prop :=
  ∀ n, (P4916420346559464999.a n : ℤ) = A188819 (n + 1)

end A188819

/-! ## A188819.P7325604400432643324

`record[(n+2)*(2*n-xor(3, n-1))]`
-/

namespace A188819.P7325604400432643324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((2 * n : ℤ) - Int.xor 3 ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188819.P7325604400432643324

namespace A188819

/-- `record[(n+2)*(2*n-xor(3, n-1))]` -/
def P7325604400432643324.Spec : Prop :=
  ∀ n, P7325604400432643324.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P15278270730216788144

`and(-A129203(n), (2*n+3)²)`
-/

namespace A188819.P15278270730216788144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A129203 n) ((2 * n + 3) ^ 2 : ℤ)

end

end A188819.P15278270730216788144

namespace A188819

/-- `and(-A129203(n), (2*n+3)²)` -/
def P15278270730216788144.Spec : Prop :=
  ∀ n, P15278270730216788144.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P7212977806644472557

`and(A118827(n+2)-2, A016754(n+1))`
-/

namespace A188819.P7212977806644472557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118827 (n + 2) - 2) (A016754 (n + 1))

end

end A188819.P7212977806644472557

namespace A188819

/-- `and(A118827(n+2)-2, A016754(n+1))` -/
def P7212977806644472557.Spec : Prop :=
  ∀ n, P7212977806644472557.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P18348654910206624062

`A042948(n+2)*A042963(n+2)`
-/

namespace A188819.P18348654910206624062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 2) * A042963 (n + 2)

end

end A188819.P18348654910206624062

namespace A188819

/-- `A042948(n+2)*A042963(n+2)` -/
def P18348654910206624062.Spec : Prop :=
  ∀ n, P18348654910206624062.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P10809720892813429532

`Δ[A035608(n+1)]*A042963(n+2)`
-/

namespace A188819.P10809720892813429532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042963 (n + 2)

end

end A188819.P10809720892813429532

namespace A188819

/-- `Δ[A035608(n+1)]*A042963(n+2)` -/
def P10809720892813429532.Spec : Prop :=
  ∀ n, P10809720892813429532.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P2533203623410208592

`(A014601(n+1)+1)*A042963(n+2)`
-/

namespace A188819.P2533203623410208592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014601 (n + 1) + 1) * A042963 (n + 2)

end

end A188819.P2533203623410208592

namespace A188819

/-- `(A014601(n+1)+1)*A042963(n+2)` -/
def P2533203623410208592.Spec : Prop :=
  ∀ n, P2533203623410208592.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P17939085712561165512

`(A114753(n+2)+A114752(n+1))*A114752(n+2)`
-/

namespace A188819.P17939085712561165512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114753 (n + 2) + A114752 (n + 1)) * A114752 (n + 2)

end

end A188819.P17939085712561165512

namespace A188819

/-- `(A114753(n+2)+A114752(n+1))*A114752(n+2)` -/
def P17939085712561165512.Spec : Prop :=
  ∀ n, P17939085712561165512.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P6283846421486716599

`(A004767(n+1)-A047578(n+2))*A047431(n+2)`
-/

namespace A188819.P6283846421486716599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 (n + 1) - A047578 (n + 2)) * A047431 (n + 2)

end

end A188819.P6283846421486716599

namespace A188819

/-- `(A004767(n+1)-A047578(n+2))*A047431(n+2)` -/
def P6283846421486716599.Spec : Prop :=
  ∀ n, P6283846421486716599.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P4031028082514759953

`A047431(n+2)*A047620(n+3)`
-/

namespace A188819.P4031028082514759953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047431 (n + 2) * A047620 (n + 3)

end

end A188819.P4031028082514759953

namespace A188819

/-- `A047431(n+2)*A047620(n+3)` -/
def P4031028082514759953.Spec : Prop :=
  ∀ n, P4031028082514759953.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P3936597455938588274

`A081351(A042948(n+1))`
-/

namespace A188819.P3936597455938588274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 (A042948 (n + 1)).toNat

end

end A188819.P3936597455938588274

namespace A188819

/-- `A081351(A042948(n+1))` -/
def P3936597455938588274.Spec : Prop :=
  ∀ n, P3936597455938588274.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P15985941267188156181

`A081351(A109613(n+1)+n)`
-/

namespace A188819.P15985941267188156181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 (A109613 (n + 1) + (n : ℤ)).toNat

end

end A188819.P15985941267188156181

namespace A188819

/-- `A081351(A109613(n+1)+n)` -/
def P15985941267188156181.Spec : Prop :=
  ∀ n, P15985941267188156181.a n = A188819 (n + 1)

end A188819

/-! ## A188819.P7920972963893150395

`A042963(n+2)*A090964(2*n+1)`
-/

namespace A188819.P7920972963893150395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 2) * A090964 (2 * n + 1)

end

end A188819.P7920972963893150395

namespace A188819

/-- `A042963(n+2)*A090964(2*n+1)` -/
def P7920972963893150395.Spec : Prop :=
  ∀ n, P7920972963893150395.a n = A188819 (n + 1)

end A188819

/-!
# A188820: Number of n X 5 binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188820, there is no canonical definition to state claims against.
-/

/-! ## A188820.P10042093682968475601

`A188824(A046691(n+3))`
-/

namespace A188820.P10042093682968475601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A046691 (n + 3)).toNat

end

end A188820.P10042093682968475601

/-! ## A188820.P17724192808463485403

`A188824(A056115(n)+11)`
-/

namespace A188820.P17724192808463485403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A056115 n + 11).toNat

end

end A188820.P17724192808463485403

/-! ## A188820.P8319697110222565664

`A188824(Δ[A023545(n+1)])`
-/

namespace A188820.P8319697110222565664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (f1 (n + 1) - f1 n).toNat

end

end A188820.P8319697110222565664

/-! ## A188820.P1495808474722589485

`A188824(A000124(n+5)-5)`
-/

namespace A188820.P1495808474722589485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000124 (n + 5) - 5).toNat

end

end A188820.P1495808474722589485

/-! ## A188820.P17986116355831390932

`A188824(A152947(n+5)+2*(n+2))`
-/

namespace A188820.P17986116355831390932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A152947 (n + 5) + (2 * (n + 2) : ℤ)).toNat

end

end A188820.P17986116355831390932

/-! ## A188820.P18406658631818765155

`A188824(A167614(n+2)+A005843(n+1))`
-/

namespace A188820.P18406658631818765155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A188820.P18406658631818765155

/-!
# A188821: Number of n X 6 binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188821, the canonical program `A188821.P16295408872994340486` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188821 has offset 1).

The definition of A188821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188821.P16295408872994340486

`(A270545(n)+10*n+7)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188821

/-- `(A270545(n)+10*n+7)²` -/
def P16295408872994340486.Spec : Prop :=
  ∀ n, P16295408872994340486.a n = A188821 (n + 1)

theorem P16295408872994340486.correct : P16295408872994340486.Spec := by
  intro n
  simp only [A188821, Nat.add_sub_cancel]

end A188821

/-! ## A188821.P11077320274129353013

`(A113127(n)+Δ[A005897(n)])²`
-/

namespace A188821.P11077320274129353013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113127 n + (f1 (n + 1) - f1 n)) ^ 2

end

end A188821.P11077320274129353013

namespace A188821

/-- `(A113127(n)+Δ[A005897(n)])²` -/
def P11077320274129353013.Spec : Prop :=
  ∀ n, P11077320274129353013.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P14087300397094385543

`(A017617(n)+record[A022998(n)])²`
-/

namespace A188821.P14087300397094385543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017617 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A188821.P14087300397094385543

namespace A188821

/-- `(A017617(n)+record[A022998(n)])²` -/
def P14087300397094385543.Spec : Prop :=
  ∀ n, P14087300397094385543.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P2571955999786928878

`(A008574(A008574(n)+1)+char[1])²`
-/

namespace A188821.P2571955999786928878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 (A008574 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A188821.P2571955999786928878

namespace A188821

/-- `(A008574(A008574(n)+1)+char[1])²` -/
def P2571955999786928878.Spec : Prop :=
  ∀ n, P2571955999786928878.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P18386704781884780734

`A000290(A270545(n)+A017353(n))`
-/

namespace A188821.P18386704781884780734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A270545 n + A017353 n).toNat

end

end A188821.P18386704781884780734

namespace A188821

/-- `A000290(A270545(n)+A017353(n))` -/
def P18386704781884780734.Spec : Prop :=
  ∀ n, P18386704781884780734.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P8422530331166072277

`A000290(A113127(n)+Δ[A005897(n)])`
-/

namespace A188821.P8422530331166072277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A113127 n + (f1 (n + 1) - f1 n)).toNat

end

end A188821.P8422530331166072277

namespace A188821

/-- `A000290(A113127(n)+Δ[A005897(n)])` -/
def P8422530331166072277.Spec : Prop :=
  ∀ n, P8422530331166072277.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P4645955918728431096

`A000290(A017617(n)+record[A022998(n)])`
-/

namespace A188821.P4645955918728431096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A017617 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188821.P4645955918728431096

namespace A188821

/-- `A000290(A017617(n)+record[A022998(n)])` -/
def P4645955918728431096.Spec : Prop :=
  ∀ n, P4645955918728431096.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P16232746079099224673

`(A233583(A233583(2*n+1))+A019430(2*n+1))²`
-/

namespace A188821.P16232746079099224673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233583 (A233583 (2 * n + 1)).toNat + A019430 (2 * n + 1)) ^ 2

end

end A188821.P16232746079099224673

namespace A188821

/-- `(A233583(A233583(2*n+1))+A019430(2*n+1))²` -/
def P16232746079099224673.Spec : Prop :=
  ∀ n, P16232746079099224673.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P7763930902207639680

`A188824(A052905(n+3))`
-/

namespace A188821.P7763930902207639680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A052905 (n + 3)).toNat

end

end A188821.P7763930902207639680

namespace A188821

/-- `A188824(A052905(n+3))` -/
def P7763930902207639680.Spec : Prop :=
  ∀ n, P7763930902207639680.a n = A188821 (n + 1)

end A188821

/-! ## A188821.P5514930257742898199

`A188824(Δ[A023545(n+2)]-1)`
-/

namespace A188821.P5514930257742898199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (f1 (n + 1) - f1 n - 1).toNat

end

end A188821.P5514930257742898199

namespace A188821

/-- `A188824(Δ[A023545(n+2)]-1)` -/
def P5514930257742898199.Spec : Prop :=
  ∀ n, P5514930257742898199.a n = A188821 (n + 1)

end A188821

/-!
# A188822: Number of n X 7 binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188822, there is no canonical definition to state claims against.
-/

/-! ## A188822.P16246965729788964297

`A188824(A055999(n+4))`
-/

namespace A188822.P16246965729788964297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A055999 (n + 4)).toNat

end

end A188822.P16246965729788964297

/-! ## A188822.P3981061393600820680

`A188824(A052905(n+4)-1)`
-/

namespace A188822.P3981061393600820680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A052905 (n + 4) - 1).toNat

end

end A188822.P3981061393600820680

/-! ## A188822.P17596345627047327037

`A188824(A000124(n+7)-7)`
-/

namespace A188822.P17596345627047327037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000124 (n + 7) - 7).toNat

end

end A188822.P17596345627047327037

/-! ## A188822.P13275922235528977488

`A188824(A000217(n+6)+n+1)`
-/

namespace A188822.P13275922235528977488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A188822.P13275922235528977488

/-! ## A188822.P6758946079180095392

`A188824(A167614(n+4)+A005843(n+2))`
-/

namespace A188822.P6758946079180095392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A188822.P6758946079180095392

/-!
# A188823: Number of n X 8 binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188823, there is no canonical definition to state claims against.
-/

/-! ## A188823.P408156626012455821

`A188824(A055999(n+5)-1)`
-/

namespace A188823.P408156626012455821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A055999 (n + 5) - 1).toNat

end

end A188823.P408156626012455821

/-! ## A188823.P5633262141327081196

`A188824(A000124(n+8)-8)`
-/

namespace A188823.P5633262141327081196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000124 (n + 8) - 8).toNat

end

end A188823.P5633262141327081196

/-! ## A188823.P2744425264944364512

`A188824(A167614(n+7)-10)`
-/

namespace A188823.P2744425264944364512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 7) - 10).toNat

end

end A188823.P2744425264944364512

/-! ## A188823.P1142455363747692457

`A188824(Δ[A023545(n+4)]-3)`
-/

namespace A188823.P1142455363747692457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (f1 (n + 1) - f1 n - 3).toNat

end

end A188823.P1142455363747692457

/-! ## A188823.P17705343178509445519

`A188824(A167487(n+5)+2*n+1)`
-/

namespace A188823.P17705343178509445519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167487 (n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A188823.P17705343178509445519

/-!
# A188824: T(n,k) = number of n X k binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188824, there is no canonical definition to state claims against.
-/

/-! ## A188824.P5297030592307255955

`A181212(A351870(n)+A331562(n))`
-/

namespace A188824.P5297030592307255955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (A351870 n + A331562 n).toNat

end

end A188824.P5297030592307255955

/-! ## A188824.P6347303644328367889

`A140513(n)+A109076(A008307(n+1))`
-/

namespace A188824.P6347303644328367889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A109076 (A008307 (n + 1)).toNat

end

end A188824.P6347303644328367889

/-! ## A188824.P17185279323419082423

`A181212(A351870(n)+A105224(n+1))`
-/

namespace A188824.P17185279323419082423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (A351870 n + A105224 (n + 1)).toNat

end

end A188824.P17185279323419082423

/-!
# A188825: Number of 3Xn binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188825, the canonical program `A188825.P8711453944251999547` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188825 has offset 1).

The definition of A188825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188825.P6692014298578734123

`ogf((8-8x)/(1-3x))`
-/

namespace A188825.P6692014298578734123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -8] [1, -3] n

end

end A188825.P6692014298578734123

namespace A188825

/-- `ogf((8-8x)/(1-3x))` -/
def P6692014298578734123.Spec : Prop :=
  ∀ n, P6692014298578734123.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P8711453944251999547

`3*a(n-1)` with `a(0)=8, a(1)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188825

/-- `3*a(n-1)` -/
def P8711453944251999547.Spec : Prop :=
  ∀ n, (P8711453944251999547.a n : ℤ) = A188825 (n + 1)

theorem P8711453944251999547.correct : P8711453944251999547.Spec := by
  intro n
  simp only [A188825, Nat.add_sub_cancel]

end A188825

/-! ## A188825.P1347566980342796779

`8*Δ[floor(3^(n-1))]`
-/

namespace A188825.P1347566980342796779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f1 (n + 1) - f1 n)

end

end A188825.P1347566980342796779

namespace A188825

/-- `8*Δ[floor(3^(n-1))]` -/
def P1347566980342796779.Spec : Prop :=
  ∀ n, P1347566980342796779.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P1604698975611465413

`abs(∏[-a(n-1)])` with `a(0)=8, a(1)=2, a(2)=3`
-/

namespace A188825.P1604698975611465413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A188825.P1604698975611465413

namespace A188825

/-- `abs(∏[-a(n-1)])` -/
def P1604698975611465413.Spec : Prop :=
  ∀ n, P1604698975611465413.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P12329519555798104212

`lcm(2, 8*Δ[round(3^(n-1))])`
-/

namespace A188825.P12329519555798104212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (8 * (f1 (n + 1) - f1 n))

end

end A188825.P12329519555798104212

namespace A188825

/-- `lcm(2, 8*Δ[round(3^(n-1))])` -/
def P12329519555798104212.Spec : Prop :=
  ∀ n, (P12329519555798104212.a n : ℤ) = A188825 (n + 1)

end A188825

/-! ## A188825.P5415879540721110092

`a(n-1)/(1-2/3)` with `a(0)=8, a(1)=16`
-/

namespace A188825.P5415879540721110092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8, 16] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A188825.P5415879540721110092

namespace A188825

/-- `a(n-1)/(1-2/3)` -/
def P5415879540721110092.Spec : Prop :=
  ∀ n, P5415879540721110092.a n = (A188825 (n + 1) : ℚ)

end A188825

/-! ## A188825.P10421962257840266750

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=8, a(1)=16`
-/

namespace A188825.P10421962257840266750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 16] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A188825.P10421962257840266750

namespace A188825

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P10421962257840266750.Spec : Prop :=
  ∀ n, (P10421962257840266750.a n : ℤ) = A188825 (n + 1)

theorem P10421962257840266750.correct : P10421962257840266750.Spec := by
  intro n
  simp only [A188825, Nat.add_sub_cancel, A188825.P10421962257840266750.a, A188825.P8711453944251999547.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188825

/-! ## A188825.P2268440675971551365

`A155734(n)+A005030(n)`
-/

namespace A188825.P2268440675971551365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 n + A005030 n

end

end A188825.P2268440675971551365

namespace A188825

/-- `A155734(n)+A005030(n)` -/
def P2268440675971551365.Spec : Prop :=
  ∀ n, P2268440675971551365.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P11710752588068341680

`A202337(n+3)+A025579(n+2)`
-/

namespace A188825.P11710752588068341680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202337 (n + 3) + A025579 (n + 2)

end

end A188825.P11710752588068341680

namespace A188825

/-- `A202337(n+3)+A025579(n+2)` -/
def P11710752588068341680.Spec : Prop :=
  ∀ n, P11710752588068341680.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P16581374731532836032

`A003946(n+1)+A003946(A028310(n))`
-/

namespace A188825.P16581374731532836032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (n + 1) + A003946 (A028310 n).toNat

end

end A188825.P16581374731532836032

namespace A188825

/-- `A003946(n+1)+A003946(A028310(n))` -/
def P16581374731532836032.Spec : Prop :=
  ∀ n, P16581374731532836032.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P11642345592851352812

`abs(Δ[lcm(8, floor(3^(n-1)))])`
-/

namespace A188825.P11642345592851352812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A188825.P11642345592851352812

namespace A188825

/-- `abs(Δ[lcm(8, floor(3^(n-1)))])` -/
def P11642345592851352812.Spec : Prop :=
  ∀ n, P11642345592851352812.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P15594257092024577606

`Δ[4*A100702(n)]`
-/

namespace A188825.P15594257092024577606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A100702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188825.P15594257092024577606

namespace A188825

/-- `Δ[4*A100702(n)]` -/
def P15594257092024577606.Spec : Prop :=
  ∀ n, P15594257092024577606.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P980773918699234193

`A384853(n+3)-A384853(n+1)`
-/

namespace A188825.P980773918699234193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384853 (n + 3) - A384853 (n + 1)

end

end A188825.P980773918699234193

namespace A188825

/-- `A384853(n+3)-A384853(n+1)` -/
def P980773918699234193.Spec : Prop :=
  ∀ n, P980773918699234193.a n = A188825 (n + 1)

end A188825

/-! ## A188825.P7900945644304972962

`8*8*A003946(n)/A040056(n)`
-/

namespace A188825.P7900945644304972962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * (8 * A003946 n) : ℚ) / (A040056 n : ℚ)

end

end A188825.P7900945644304972962

namespace A188825

/-- `8*8*A003946(n)/A040056(n)` -/
def P7900945644304972962.Spec : Prop :=
  ∀ n, P7900945644304972962.a n = (A188825 (n + 1) : ℚ)

end A188825

/-! ## A188825.P3000834571218803556

`A003946(n+1)*A025579(n+2)/A000244(n)`
-/

namespace A188825.P3000834571218803556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 (n + 1) * A025579 (n + 2) : ℚ) / (A000244 n : ℚ)

end

end A188825.P3000834571218803556

namespace A188825

/-- `A003946(n+1)*A025579(n+2)/A000244(n)` -/
def P3000834571218803556.Spec : Prop :=
  ∀ n, P3000834571218803556.a n = (A188825 (n + 1) : ℚ)

end A188825

/-! ## A188825.P17754622750416812842

`Δ[Δ[A133494(n)²]/A133494(n)]`
-/

namespace A188825.P17754622750416812842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A133494 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188825.P17754622750416812842

namespace A188825

/-- `Δ[Δ[A133494(n)²]/A133494(n)]` -/
def P17754622750416812842.Spec : Prop :=
  ∀ n, P17754622750416812842.a n = (A188825 (n + 1) : ℚ)

end A188825

/-! ## A188825.P5828114731158540634

`Δ[Δ[A155734(2*n)]/A155734(n+1)]`
-/

namespace A188825.P5828114731158540634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A155734 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188825.P5828114731158540634

namespace A188825

/-- `Δ[Δ[A155734(2*n)]/A155734(n+1)]` -/
def P5828114731158540634.Spec : Prop :=
  ∀ n, P5828114731158540634.a n = (A188825 (n + 1) : ℚ)

end A188825

/-! ## A188825.P9968605511132714939

`A082541(n)+A270472(n+1)/A082541(n)`
-/

namespace A188825.P9968605511132714939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082541 n : ℚ) + (A270472 (n + 1) : ℚ) / (A082541 n : ℚ)

end

end A188825.P9968605511132714939

namespace A188825

/-- `A082541(n)+A270472(n+1)/A082541(n)` -/
def P9968605511132714939.Spec : Prop :=
  ∀ n, P9968605511132714939.a n = (A188825 (n + 1) : ℚ)

end A188825

/-!
# A188826: Number of 4 X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188826, there is no canonical definition to state claims against.
-/

/-! ## A188826.P17073290227212611099

`A188824(A052905(n)+9)`
-/

namespace A188826.P17073290227212611099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A052905 n + 9).toNat

end

end A188826.P17073290227212611099

/-! ## A188826.P5468312359846595732

`A188824(A055999(n)+10)`
-/

namespace A188826.P5468312359846595732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A055999 n + 10).toNat

end

end A188826.P5468312359846595732

/-! ## A188826.P5637175537787331892

`A188824(A167614(n+2)+1)`
-/

namespace A188826.P5637175537787331892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 2) + 1).toNat

end

end A188826.P5637175537787331892

/-! ## A188826.P6530734567467830581

`A188824(A133263(n+3)+2)`
-/

namespace A188826.P6530734567467830581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A133263 (n + 3) + 2).toNat

end

end A188826.P6530734567467830581

/-! ## A188826.P2455088903451798112

`A188824(A166136(n+2)-2)`
-/

namespace A188826.P2455088903451798112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A166136 (n + 2) - 2).toNat

end

end A188826.P2455088903451798112

/-! ## A188826.P8100319967357286416

`A188824(A167487(n+2)-3)`
-/

namespace A188826.P8100319967357286416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167487 (n + 2) - 3).toNat

end

end A188826.P8100319967357286416

/-! ## A188826.P1625808498807757400

`A188824(A166136(n+1)+1+n)`
-/

namespace A188826.P1625808498807757400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188826.P1625808498807757400

/-! ## A188826.P16689850897516665399

`A188824(Δ[A023545(n+1)-n²])`
-/

namespace A188826.P16689850897516665399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (f1 (n + 1) - f1 n).toNat

end

end A188826.P16689850897516665399

/-!
# A188827: Number of 5 X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188827, there is no canonical definition to state claims against.
-/

/-! ## A188827.P15351915528244332710

`A188824(A167499(n+3))`
-/

namespace A188827.P15351915528244332710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167499 (n + 3)).toNat

end

end A188827.P15351915528244332710

/-! ## A188827.P15024766690304087638

`A188824(A133263(n+4)+3)`
-/

namespace A188827.P15024766690304087638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A133263 (n + 4) + 3).toNat

end

end A188827.P15024766690304087638

/-! ## A188827.P15605363877397783190

`A188824(A000217(n+4)+5)`
-/

namespace A188827.P15605363877397783190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000217 (n + 4) + 5).toNat

end

end A188827.P15605363877397783190

/-! ## A188827.P7820216457462020901

`A188824(A027379(n+2)+8)`
-/

namespace A188827.P7820216457462020901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A027379 (n + 2) + 8).toNat

end

end A188827.P7820216457462020901

/-! ## A188827.P11818969589910829378

`A188824(A000124(n+5)-(n+1))`
-/

namespace A188827.P11818969589910829378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A188827.P11818969589910829378

/-! ## A188827.P4376831122539672411

`A188824(A167614(n+4)-(n+3))`
-/

namespace A188827.P4376831122539672411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A188827.P4376831122539672411

/-! ## A188827.P12010188569087613605

`A188824(eq[8, A258709(n)]-(2*n+1))`
-/

namespace A188827.P12010188569087613605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A188827.P12010188569087613605

/-! ## A188827.P14135110825867821789

`A188824(A038722(Δ[A023545(n+1)]))`
-/

namespace A188827.P14135110825867821789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A188827.P14135110825867821789

/-! ## A188827.P15158769779799922129

`A188824(A003602(Δ[A026046(n+6)]))`
-/

namespace A188827.P15158769779799922129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A003602 (f1 (n + 1) - f1 n).toNat).toNat

end

end A188827.P15158769779799922129

/-! ## A188827.P9267021426433316810

`A188824(Δ[A023545(n+2)]-A005843(n+1))`
-/

namespace A188827.P9267021426433316810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (f1 (n + 1) - f1 n - A005843 (n + 1)).toNat

end

end A188827.P9267021426433316810

/-!
# A188828: Number of 6 X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188828, there is no canonical definition to state claims against.
-/

/-! ## A188828.P1136456214102880186

`(A153340(n+1)/A074828(A008458(n)))²`
-/

namespace A188828.P1136456214102880186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153340 (n + 1) : ℚ) / (A074828 (A008458 n).toNat : ℚ)) ^ 2

end

end A188828.P1136456214102880186

/-! ## A188828.P3200560028140781145

`(A153340(n+1)/A137502(A020639(n+1)))²`
-/

namespace A188828.P3200560028140781145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153340 (n + 1) : ℚ) / (A137502 (A020639 (n + 1)).toNat : ℚ)) ^ 2

end

end A188828.P3200560028140781145

/-! ## A188828.P7425772025972249650

`A188824(A167614(n+4)+3)`
-/

namespace A188828.P7425772025972249650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 4) + 3).toNat

end

end A188828.P7425772025972249650

/-! ## A188828.P16997517906139273451

`A188824(A133263(n+5)+4)`
-/

namespace A188828.P16997517906139273451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A133263 (n + 5) + 4).toNat

end

end A188828.P16997517906139273451

/-!
# A188829: Number of 7 X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188829, there is no canonical definition to state claims against.
-/

/-! ## A188829.P7951599421127068965

`A188824(A167614(n+5)+4)`
-/

namespace A188829.P7951599421127068965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 5) + 4).toNat

end

end A188829.P7951599421127068965

/-! ## A188829.P16339193358046394771

`A188824(A000124(n+6)+6)`
-/

namespace A188829.P16339193358046394771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000124 (n + 6) + 6).toNat

end

end A188829.P16339193358046394771

/-! ## A188829.P9033611665746130721

`A188824(A133263(n+7)-(n+2))`
-/

namespace A188829.P9033611665746130721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A188829.P9033611665746130721

/-! ## A188829.P17605440333043845802

`A188824(A055999(n+5)-A005843(n+1))`
-/

namespace A188829.P17605440333043845802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A055999 (n + 5) - A005843 (n + 1)).toNat

end

end A188829.P17605440333043845802

/-! ## A188829.P5446661776253227037

`A188824(Δ[A023545(n+4)]-A005843(n+2))`
-/

namespace A188829.P5446661776253227037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (f1 (n + 1) - f1 n - A005843 (n + 2)).toNat

end

end A188829.P5446661776253227037

/-!
# A188830: Number of 8Xn binary arrays without the pattern 0 1 diagonally or antidiagonally.

The programs for A188830, there is no canonical definition to state claims against.
-/

/-! ## A188830.P418335022255529436

`A188824(A167614(n+6)+5)`
-/

namespace A188830.P418335022255529436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A167614 (n + 6) + 5).toNat

end

end A188830.P418335022255529436

/-! ## A188830.P548904118026581974

`A188824(A000124(n+7)+7)`
-/

namespace A188830.P548904118026581974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000124 (n + 7) + 7).toNat

end

end A188830.P548904118026581974

/-! ## A188830.P3964711249479455317

`A188824(A000217(n+7)+8)`
-/

namespace A188830.P3964711249479455317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A000217 (n + 7) + 8).toNat

end

end A188830.P3964711249479455317

/-! ## A188830.P13433096460427910107

`A188824(A055999(n+4)+14)`
-/

namespace A188830.P13433096460427910107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A055999 (n + 4) + 14).toNat

end

end A188830.P13433096460427910107

/-! ## A188830.P12345915046196991749

`A188824(A133263(n+8)-(n+2))`
-/

namespace A188830.P12345915046196991749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A188830.P12345915046196991749

/-!
# A188831: Primes of the form k^2 - prime(k).

The programs for A188831, there is no canonical definition to state claims against.
-/

/-! ## A188831.P2755997636907471423

`A073497(A064712(n+1))`
-/

namespace A188831.P2755997636907471423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073497 (A064712 (n + 1)).toNat

end

end A188831.P2755997636907471423

/-! ## A188831.P3676066986221216791

`p?[(n+2)²-p?[2*n+1]]`
-/

namespace A188831.P3676066986221216791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P3676066986221216791

/-! ## A188831.P14043225427748956527

`p?[A073497(n+1)]`
-/

namespace A188831.P14043225427748956527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P14043225427748956527

/-! ## A188831.P13030033608846036677

`p?[Δ[A108753(n+1)]]`
-/

namespace A188831.P13030033608846036677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108753 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P13030033608846036677

/-! ## A188831.P16786848215470877282

`p?[n²-record[A047814(n)]]`
-/

namespace A188831.P16786848215470877282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P16786848215470877282

/-! ## A188831.P11778104837929568742

`p?[n²-A008578(n+1)]`
-/

namespace A188831.P11778104837929568742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P11778104837929568742

/-! ## A188831.P17159295106390159509

`p?[n²-A131733(n+1)]`
-/

namespace A188831.P17159295106390159509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A131733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P17159295106390159509

/-! ## A188831.P16647174929111169551

`p?[n²-A175787(n+1)]`
-/

namespace A188831.P16647174929111169551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A175787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P16647174929111169551

/-! ## A188831.P16446797300424599195

`p?[n²-A182986(n+1)]`
-/

namespace A188831.P16446797300424599195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P16446797300424599195

/-! ## A188831.P10894830979561501557

`p?[n²-record[A006530(n+1)]]`
-/

namespace A188831.P10894830979561501557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188831.P10894830979561501557

/-!
# A188832: Triangle T(n,k) = coefficient of x^n/n! in expansion of (x/cos x)^k/k!.

The programs for A188832, there is no canonical definition to state claims against.
-/

/-! ## A188832.P11174801108414447167

`A274231(A059419(n+1)+1)`
-/

namespace A188832.P11174801108414447167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (A059419 (n + 1) + 1).toNat

end

end A188832.P11174801108414447167

/-! ## A188832.P5540990134701966061

`A185951(n+1)^A186430(n+3)`
-/

namespace A188832.P5540990134701966061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185951 (n + 1) : ℚ) ^ (A186430 (n + 3) : ℤ)

end

end A188832.P5540990134701966061

/-! ## A188832.P4184634890556219728

`A185951(n+1)^A122857(3*n+2)!`
-/

namespace A188832.P4184634890556219728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185951 (n + 1) ^ Nat.factorial (A122857 (3 * n + 2)).toNat

end

end A188832.P4184634890556219728

/-! ## A188832.P1436608176234016333

`A170818(A136467(n))*A185951(n+1)`
-/

namespace A188832.P1436608176234016333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A136467 n).toNat * A185951 (n + 1)

end

end A188832.P1436608176234016333

/-! ## A188832.P17993994698089231405

`A351870(A004736(n+1)*A147309(n))`
-/

namespace A188832.P17993994698089231405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A004736 (n + 1) * A147309 n).toNat

end

end A188832.P17993994698089231405

/-!
# A188833: Primes p such that p^2 is not in A188836.

The programs for A188833, there is no canonical definition to state claims against.
-/

/-! ## A188833.P8490186823433474761

`p?[A353443(A158942(n+1))]`
-/

namespace A188833.P8490186823433474761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353443 (A158942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188833.P8490186823433474761

/-! ## A188833.P4245324637697865485

`A128824(eq[4, A293444(n+1)])`
-/

namespace A188833.P4245324637697865485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188833.P4245324637697865485

/-!
# A188836: Numbers n for which A188794(n)^2 = n.

The programs for A188836, there is no canonical definition to state claims against.
-/

/-! ## A188836.P18287931585477501676

`record[A188794((n+2)²)²]`
-/

namespace A188836.P18287931585477501676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188794 ((n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188836.P18287931585477501676

/-! ## A188836.P3155870638347176425

`(A117929(A326180(n+4))+A000040(n+1))²`
-/

namespace A188836.P3155870638347176425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117929 (A326180 (n + 4)).toNat + A000040 (n + 1)) ^ 2

end

end A188836.P3155870638347176425

/-! ## A188836.P10524867783025142229

`(A000122(A197988(3*(n+1)))+A000040(n+1))²`
-/

namespace A188836.P10524867783025142229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000122 (A197988 (3 * (n + 1))).toNat + A000040 (n + 1)) ^ 2

end

end A188836.P10524867783025142229

/-! ## A188836.P3396015293319107370

`A166010(n+1)+A001736(A326476(n+4))`
-/

namespace A188836.P3396015293319107370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + A001736 (A326476 (n + 4)).toNat

end

end A188836.P3396015293319107370

/-! ## A188836.P9311581560455210372

`∩[A104021(n+1), A242800(n+1)]`
-/

namespace A188836.P9311581560455210372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188836.P9311581560455210372

/-!
# A188838: Number of n X 4 binary arrays without the pattern 0 1 diagonally or vertically.

The programs for A188838, there is no canonical definition to state claims against.
-/

/-! ## A188838.P12108447103561916062

`A137741(n+2)+n`
-/

namespace A188838.P12108447103561916062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137741 (n + 2) + (n : ℤ)

end

end A188838.P12108447103561916062

/-! ## A188838.P6995662017556127774

`A188843(A027379(n+2))`
-/

namespace A188838.P6995662017556127774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A027379 (n + 2)).toNat

end

end A188838.P6995662017556127774

/-! ## A188838.P16268001653537155319

`A188843(A055998(n+2))`
-/

namespace A188838.P16268001653537155319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A055998 (n + 2)).toNat

end

end A188838.P16268001653537155319

/-! ## A188838.P6142411689344860445

`A188843(A155212(n)+5)`
-/

namespace A188838.P6142411689344860445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A155212 n + 5).toNat

end

end A188838.P6142411689344860445

/-! ## A188838.P6609939372966338497

`A188843(A056000(n)+7)`
-/

namespace A188838.P6609939372966338497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A056000 n + 7).toNat

end

end A188838.P6609939372966338497

/-! ## A188838.P8564148851047693845

`A188843(eq[3, A193592(n)])`
-/

namespace A188838.P8564148851047693845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188838.P8564148851047693845

/-! ## A188838.P13737483253422154694

`A188843(A052905(n+1)+2)`
-/

namespace A188838.P13737483253422154694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A052905 (n + 1) + 2).toNat

end

end A188838.P13737483253422154694

/-! ## A188838.P3244876639537449752

`A188843(A034856(n+3)-1)`
-/

namespace A188838.P3244876639537449752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A034856 (n + 3) - 1).toNat

end

end A188838.P3244876639537449752

/-! ## A188838.P2785760773757536166

`A188843(A167614(n+1)+A005408(n))`
-/

namespace A188838.P2785760773757536166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A167614 (n + 1) + A005408 n).toNat

end

end A188838.P2785760773757536166

/-! ## A188838.P2816906340473209874

`A188843(A167614(n+1)+A005843(n)+1)`
-/

namespace A188838.P2816906340473209874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A167614 (n + 1) + (A005843 n + 1)).toNat

end

end A188838.P2816906340473209874

/-!
# A188839: Number of n X 5 binary arrays without the pattern 0 1 diagonally or vertically.

The programs for A188839, there is no canonical definition to state claims against.
-/

/-! ## A188839.P12853693614015340909

`A188843(A046691(n+3))`
-/

namespace A188839.P12853693614015340909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A046691 (n + 3)).toNat

end

end A188839.P12853693614015340909

/-! ## A188839.P18061298024153339505

`A188843(A056115(n)+11)`
-/

namespace A188839.P18061298024153339505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A056115 n + 11).toNat

end

end A188839.P18061298024153339505

/-! ## A188839.P17227405039065201058

`A188843(eq[4, A193592(n)])`
-/

namespace A188839.P17227405039065201058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188839.P17227405039065201058

/-! ## A188839.P16443779253620546780

`A188843(Δ[A023545(n+1)])`
-/

namespace A188839.P16443779253620546780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (f1 (n + 1) - f1 n).toNat

end

end A188839.P16443779253620546780

/-! ## A188839.P16412812716170905647

`A188843(A055998(n+3)-1)`
-/

namespace A188839.P16412812716170905647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A055998 (n + 3) - 1).toNat

end

end A188839.P16412812716170905647

/-! ## A188839.P9218209640922793667

`A188843(A034856(n+4)-2)`
-/

namespace A188839.P9218209640922793667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A034856 (n + 4) - 2).toNat

end

end A188839.P9218209640922793667

/-! ## A188839.P11275800545774474638

`A188843(A000217(n+5)-4)`
-/

namespace A188839.P11275800545774474638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A000217 (n + 5) - 4).toNat

end

end A188839.P11275800545774474638

/-! ## A188839.P10236002026234812397

`A188843(A000124(n+5)-5)`
-/

namespace A188839.P10236002026234812397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A000124 (n + 5) - 5).toNat

end

end A188839.P10236002026234812397

/-! ## A188839.P1943199910643802250

`A188843(eq[4, A025581(n)]+1)`
-/

namespace A188839.P1943199910643802250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188839.P1943199910643802250

/-! ## A188839.P9185338516719022753

`A188843(A167614(n+2)+A005843(n+1))`
-/

namespace A188839.P9185338516719022753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A188839.P9185338516719022753

/-!
# A188840: Number of n X 6 binary arrays without the pattern 0 1 diagonally or vertically.

The programs for A188840, there is no canonical definition to state claims against.
-/

/-! ## A188840.P13669548787658769486

`A259475(A133263(n+8)+4)`
-/

namespace A188840.P13669548787658769486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (A133263 (n + 8) + 4).toNat

end

end A188840.P13669548787658769486

/-! ## A188840.P10322095845175645654

`A259475(A000217(n+8)+6)`
-/

namespace A188840.P10322095845175645654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (A000217 (n + 8) + 6).toNat

end

end A188840.P10322095845175645654

/-! ## A188840.P16355787026489321486

`A188843((n+4)²-∑[n+1]+1)`
-/

namespace A188840.P16355787026489321486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A188840.P16355787026489321486

/-! ## A188840.P6789136357313138452

`lcm(or(n, -1), A188843(A052905(n+3)))`
-/

namespace A188840.P6789136357313138452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A188843 (A052905 (n + 3)).toNat)

end

end A188840.P6789136357313138452

/-! ## A188840.P9075342445809136354

`A188843(A052905(n+3))%A188841(n+1)`
-/

namespace A188840.P9075342445809136354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188843 (A052905 (n + 3)).toNat) (A188841 (n + 1))

end

end A188840.P9075342445809136354

/-! ## A188840.P10132477005952490068

`gcd(2, A200952(n+1))*A188843(A052905(n+3))`
-/

namespace A188840.P10132477005952490068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A200952 (n + 1)) : ℤ) * A188843 (A052905 (n + 3)).toNat

end

end A188840.P10132477005952490068

/-! ## A188840.P11244746535070770928

`gcd(n+1, A028310(n))*A188843(A052905(n+3))`
-/

namespace A188840.P11244746535070770928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A028310 n) : ℤ) * A188843 (A052905 (n + 3)).toNat

end

end A188840.P11244746535070770928

/-! ## A188840.P14897613185464596452

`A188843(A052905(n+3))+2*A000035(n+1)*n%2`
-/

namespace A188840.P14897613185464596452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A052905 (n + 3)).toNat + 2 * A000035 (n + 1) * ((n % 2 : ℕ) : ℤ)

end

end A188840.P14897613185464596452

/-! ## A188840.P1948237272563121720

`A188843(A052905(n+3))%A046324(A008486(n))`
-/

namespace A188840.P1948237272563121720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188843 (A052905 (n + 3)).toNat) (A046324 (A008486 n).toNat)

end

end A188840.P1948237272563121720

/-! ## A188840.P17312869502023469407

`A001222(A280872(n+1))*A188843(A052905(n+3))`
-/

namespace A188840.P17312869502023469407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A280872 (n + 1)).toNat * A188843 (A052905 (n + 3)).toNat

end

end A188840.P17312869502023469407

/-!
# A188841: Number of n X 7 binary arrays without the pattern 0 1 diagonally or vertically.

The programs for A188841, there is no canonical definition to state claims against.
-/

/-! ## A188841.P7883293822502798962

`A188843(A055999(n+4))`
-/

namespace A188841.P7883293822502798962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A055999 (n + 4)).toNat

end

end A188841.P7883293822502798962

/-! ## A188841.P14251263418766531245

`A188843(A034856(n+6)-4)`
-/

namespace A188841.P14251263418766531245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A034856 (n + 6) - 4).toNat

end

end A188841.P14251263418766531245

/-! ## A188841.P10908509103532282538

`A188843(A000124(n+7)-7)`
-/

namespace A188841.P10908509103532282538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A000124 (n + 7) - 7).toNat

end

end A188841.P10908509103532282538

/-! ## A188841.P4745981911396960606

`A188843(A052905(n+3)+n+6)`
-/

namespace A188841.P4745981911396960606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A052905 (n + 3) + (n + 6 : ℤ)).toNat

end

end A188841.P4745981911396960606

/-! ## A188841.P11145766312015456698

`A188843(A167614(n+4)+A005843(n+2))`
-/

namespace A188841.P11145766312015456698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A188841.P11145766312015456698

/-!
# A188842: Number of nX8 binary arrays without the pattern 0 1 diagonally or vertically.

The programs for A188842, there is no canonical definition to state claims against.
-/

/-! ## A188842.P2088781820665416845

`A188843(eq[7, A193592(n)])`
-/

namespace A188842.P2088781820665416845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188842.P2088781820665416845

/-! ## A188842.P11681423324171752841

`A188843(A034856(n+7)-5)`
-/

namespace A188842.P11681423324171752841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A034856 (n + 7) - 5).toNat

end

end A188842.P11681423324171752841

/-! ## A188842.P6915392325441486100

`A188843(A000124(n+8)-8)`
-/

namespace A188842.P6915392325441486100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A000124 (n + 8) - 8).toNat

end

end A188842.P6915392325441486100

/-! ## A188842.P8622300850781176458

`A188843(A000217(n+7)+n+1)`
-/

namespace A188842.P8622300850781176458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A188842.P8622300850781176458

/-! ## A188842.P3656753305752286996

`A188843(A005408(n+4)+A000096(n+5))`
-/

namespace A188842.P3656753305752286996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A005408 (n + 4) + A000096 (n + 5)).toNat

end

end A188842.P3656753305752286996

/-!
# A188843: T(n,k) is the number of n X k binary arrays without the pattern 0 1 diagonally or vertically.

The programs for A188843, there is no canonical definition to state claims against.
-/

/-! ## A188843.P2211138308211167509

`A224038(A038722(n+1)^A146671(n+1))`
-/

namespace A188843.P2211138308211167509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A146671 (n + 1) : ℤ))).toNat

end

end A188843.P2211138308211167509

/-! ## A188843.P12734255579209644205

`A224038(A038722(n+1)%A224063(n+1))`
-/

namespace A188843.P12734255579209644205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (Int.tmod (A038722 (n + 1)) (A224063 (n + 1))).toNat

end

end A188843.P12734255579209644205

/-! ## A188843.P18239434803009235837

`A224038(C(A038722(n+1), A146671(n+1)))`
-/

namespace A188843.P18239434803009235837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (Nat.choose (A038722 (n + 1)).toNat (A146671 (n + 1)).toNat)

end

end A188843.P18239434803009235837

/-! ## A188843.P6760996712895340540

`A224038(A146671(n+1)²²*A038722(n+1))`
-/

namespace A188843.P6760996712895340540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 ((A146671 (n + 1) ^ 2) ^ 2 * A038722 (n + 1)).toNat

end

end A188843.P6760996712895340540

/-! ## A188843.P18152049365396816405

`A224038(A038722(n+1))/A146671(A146671(n+1)²)`
-/

namespace A188843.P18152049365396816405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224038 (A038722 (n + 1)).toNat : ℚ) / (A146671 (A146671 (n + 1) ^ 2).toNat : ℚ)

end

end A188843.P18152049365396816405

/-!
# A188844: Number of n X n binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188844, there is no canonical definition to state claims against.
-/

/-! ## A188844.P13343221233412362413

`A188851((n+1)²+n²)`
-/

namespace A188844.P13343221233412362413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 ((n + 1) ^ 2 + n ^ 2)

end

end A188844.P13343221233412362413

/-! ## A188844.P13474355097035725231

`record[A003982(n)*A188851(n+1)]`
-/

namespace A188844.P13474355097035725231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188844.P13474355097035725231

/-! ## A188844.P3881475995599830368

`record[gcd(A037012(n), A188851(n+1))]`
-/

namespace A188844.P3881475995599830368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A188851 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188844.P3881475995599830368

/-! ## A188844.P6862118051013986614

`A188851(A001844(n))*A271837(n)`
-/

namespace A188844.P6862118051013986614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A001844 n).toNat * A271837 n

end

end A188844.P6862118051013986614

/-! ## A188844.P12992979455848946264

`A188851(A001844(n))+A072769(n+1)`
-/

namespace A188844.P12992979455848946264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A001844 n).toNat + A072769 (n + 1)

end

end A188844.P12992979455848946264

/-!
# A188845: Number of nX3 binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188845, there is no canonical definition to state claims against.
-/

/-! ## A188845.P17653959847630770551

`A188851(∑[n+3]+1)`
-/

namespace A188845.P17653959847630770551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188845.P17653959847630770551

/-!
# A188846: Number of nX4 binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188846, there is no canonical definition to state claims against.
-/

/-! ## A188846.P1480886509606811453

`A188851(A141214(n+1))`
-/

namespace A188846.P1480886509606811453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A141214 (n + 1)).toNat

end

end A188846.P1480886509606811453

/-! ## A188846.P92010951379862323

`A188851(A056000(n)+7)`
-/

namespace A188846.P92010951379862323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A056000 n + 7).toNat

end

end A188846.P92010951379862323

/-! ## A188846.P2437107381262752089

`A188851(eq[3, A193592(n)])`
-/

namespace A188846.P2437107381262752089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188846.P2437107381262752089

/-! ## A188846.P16785101786849005092

`A188851(Δ[A006416(n+2)])`
-/

namespace A188846.P16785101786849005092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (f1 (n + 1) - f1 n).toNat

end

end A188846.P16785101786849005092

/-! ## A188846.P3136562527530863846

`A188851(A052905(n+1)+2)`
-/

namespace A188846.P3136562527530863846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A052905 (n + 1) + 2).toNat

end

end A188846.P3136562527530863846

/-!
# A188847: Number of nX5 binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188847, there is no canonical definition to state claims against.
-/

/-! ## A188847.P3149873768019615758

`A188851(Δ[A264443(n)])`
-/

namespace A188847.P3149873768019615758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (f1 (n + 1) - f1 n).toNat

end

end A188847.P3149873768019615758

/-! ## A188847.P1312860717616236962

`A188851(A046691(n+3))`
-/

namespace A188847.P1312860717616236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A046691 (n + 3)).toNat

end

end A188847.P1312860717616236962

/-! ## A188847.P2010634656106653840

`A188851(A056115(n)+11)`
-/

namespace A188847.P2010634656106653840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A056115 n + 11).toNat

end

end A188847.P2010634656106653840

/-! ## A188847.P13551866714618289608

`A188851(eq[2, A092921(n)])`
-/

namespace A188847.P13551866714618289608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188847.P13551866714618289608

/-! ## A188847.P14601000997428308633

`A188851(eq[4, A193592(n)])`
-/

namespace A188847.P14601000997428308633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188847.P14601000997428308633

/-!
# A188848: Number of nX6 binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188848, there is no canonical definition to state claims against.
-/

/-! ## A188848.P4098353458002702351

`A188851(eq[3, A219347(n)])`
-/

namespace A188848.P4098353458002702351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188848.P4098353458002702351

/-! ## A188848.P14638066589949459550

`A188851(eq[5, A193592(n)])`
-/

namespace A188848.P14638066589949459550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188848.P14638066589949459550

/-! ## A188848.P5415415894270701816

`A188851(eq[8, A258709(n)])`
-/

namespace A188848.P5415415894270701816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188848.P5415415894270701816

/-! ## A188848.P3509767887041798815

`A188851(Δ[Δ[A006504(n+1)]])`
-/

namespace A188848.P3509767887041798815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (f1 (n + 1) - f1 n).toNat

end

end A188848.P3509767887041798815

/-! ## A188848.P2699829153498367389

`A188851(Δ[A264443(n+1)]-1)`
-/

namespace A188848.P2699829153498367389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (f1 (n + 1) - f1 n - 1).toNat

end

end A188848.P2699829153498367389

/-!
# A188849: Number of n X 7 binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188849, there is no canonical definition to state claims against.
-/

/-! ## A188849.P7803816758004571934

`A188851(A055999(n+4))`
-/

namespace A188849.P7803816758004571934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A055999 (n + 4)).toNat

end

end A188849.P7803816758004571934

/-! ## A188849.P3367155160949232245

`A188851(eq[4, A219347(n)])`
-/

namespace A188849.P3367155160949232245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188849.P3367155160949232245

/-! ## A188849.P18340607201501130050

`A188851(eq[6, A193592(n)])`
-/

namespace A188849.P18340607201501130050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188849.P18340607201501130050

/-! ## A188849.P15675767487043037699

`A188851(A000124(n+7)-7)`
-/

namespace A188849.P15675767487043037699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A000124 (n + 7) - 7).toNat

end

end A188849.P15675767487043037699

/-! ## A188849.P4263617200903416451

`A188851(eq[10, A185782(n+1)])`
-/

namespace A188849.P4263617200903416451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188849.P4263617200903416451

/-!
# A188850: Number of nX8 binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188850, there is no canonical definition to state claims against.
-/

/-! ## A188850.P823499198126278651

`A188851(eq[5, A219347(n)])`
-/

namespace A188850.P823499198126278651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188850.P823499198126278651

/-! ## A188850.P1176436439500763758

`A188851(eq[7, A193592(n)])`
-/

namespace A188850.P1176436439500763758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188850.P1176436439500763758

/-! ## A188850.P18032171540483621610

`A188851(A000124(n+8)-8)`
-/

namespace A188850.P18032171540483621610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A000124 (n + 8) - 8).toNat

end

end A188850.P18032171540483621610

/-! ## A188850.P17677089740827920913

`A188851(eq[12, A185782(n+1)])`
-/

namespace A188850.P17677089740827920913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188850.P17677089740827920913

/-! ## A188850.P3302698020262760822

`A188851(A005408(n)+A167614(n+5)+4)`
-/

namespace A188850.P3302698020262760822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A005408 n + (A167614 (n + 5) + 4)).toNat

end

end A188850.P3302698020262760822

/-!
# A188851: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188851, there is no canonical definition to state claims against.
-/

/-! ## A188851.P6502179209643373258

`A206785(n+1)-A185203(A131131(n))`
-/

namespace A188851.P6502179209643373258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (n + 1) - A185203 (A131131 n).toNat

end

end A188851.P6502179209643373258

/-! ## A188851.P6487776800090404712

`A206785(n+1)-A185203(A134066(n))`
-/

namespace A188851.P6487776800090404712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (n + 1) - A185203 (A134066 n).toNat

end

end A188851.P6487776800090404712

/-! ## A188851.P207415354659379207

`A188763(n+1)-A186747(A174545(n))`
-/

namespace A188851.P207415354659379207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (n + 1) - A186747 (A174545 n).toNat

end

end A188851.P207415354659379207

/-! ## A188851.P18211922528639687483

`A188523(n+1)-A268688(A135302(n))`
-/

namespace A188851.P18211922528639687483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) - A268688 (A135302 n).toNat

end

end A188851.P18211922528639687483

/-! ## A188851.P17138214845954953844

`or(A185203(A131131(n)), A188607(n+1))`
-/

namespace A188851.P17138214845954953844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185203 (A131131 n).toNat) (A188607 (n + 1))

end

end A188851.P17138214845954953844

/-!
# A188852: Number of 3Xn binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188852, there is no canonical definition to state claims against.
-/

/-! ## A188852.P8903020694844055222

`A188851(∑[n+2]+4)`
-/

namespace A188852.P8903020694844055222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188852.P8903020694844055222

/-! ## A188852.P11252983779851993795

`A016266(n)*A188851(A167614(n+1))`
-/

namespace A188852.P11252983779851993795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A188851 (A167614 (n + 1)).toNat

end

end A188852.P11252983779851993795

/-! ## A188852.P3552005444519350355

`A188851(A167614(n+1))%A072259(n)`
-/

namespace A188852.P3552005444519350355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188851 (A167614 (n + 1)).toNat) (A072259 n)

end

end A188852.P3552005444519350355

/-! ## A188852.P5823985631622833571

`or(A000007(n), A188851(A167614(n+1)))`
-/

namespace A188852.P5823985631622833571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A188851 (A167614 (n + 1)).toNat)

end

end A188852.P5823985631622833571

/-! ## A188852.P2377498704629748179

`lcm(A057077(n), A188851(A000124(n+2)+2))`
-/

namespace A188852.P2377498704629748179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A188851 (A000124 (n + 2) + 2).toNat)

end

end A188852.P2377498704629748179

/-!
# A188853: Number of 4Xn binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188853, there is no canonical definition to state claims against.
-/

/-! ## A188853.P18321948052498890564

`A188851(A141214(n)+7)`
-/

namespace A188853.P18321948052498890564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A141214 n + 7).toNat

end

end A188853.P18321948052498890564

/-! ## A188853.P124114058606968947

`A188851(A052905(n)+9)`
-/

namespace A188853.P124114058606968947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A052905 n + 9).toNat

end

end A188853.P124114058606968947

/-! ## A188853.P5931873805246136078

`A188851(A055999(n)+10)`
-/

namespace A188853.P5931873805246136078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A055999 n + 10).toNat

end

end A188853.P5931873805246136078

/-! ## A188853.P12807622227666579636

`A188851(A167614(n+2)+1)`
-/

namespace A188853.P12807622227666579636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A167614 (n + 2) + 1).toNat

end

end A188853.P12807622227666579636

/-! ## A188853.P13557114613358016106

`A188851(A112355(n+1)+4)`
-/

namespace A188853.P13557114613358016106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A112355 (n + 1) + 4).toNat

end

end A188853.P13557114613358016106

/-!
# A188854: Number of 5Xn binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188854, there is no canonical definition to state claims against.
-/

/-! ## A188854.P14408006060365848569

`A188851(A167499(n+3))`
-/

namespace A188854.P14408006060365848569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A167499 (n + 3)).toNat

end

end A188854.P14408006060365848569

/-! ## A188854.P17796396510996666123

`A188851(A155212(n)+13)`
-/

namespace A188854.P17796396510996666123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A155212 n + 13).toNat

end

end A188854.P17796396510996666123

/-! ## A188854.P16809632013648159939

`A188851(eq[6, A131818(n+1)])`
-/

namespace A188854.P16809632013648159939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188854.P16809632013648159939

/-! ## A188854.P6034878874702360686

`A188851(eq[7, A099375(n)]+9)`
-/

namespace A188854.P6034878874702360686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A188854.P6034878874702360686

/-! ## A188854.P6636716021289282080

`A188851(eq[5, A193592(n)]-(2*n+1))`
-/

namespace A188854.P6636716021289282080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A188854.P6636716021289282080

/-!
# A188855: Number of 6Xn binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188855, there is no canonical definition to state claims against.
-/

/-! ## A188855.P14933750369155240630

`A188851(A056115(n)+21)`
-/

namespace A188855.P14933750369155240630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A056115 n + 21).toNat

end

end A188855.P14933750369155240630

/-! ## A188855.P4309014020026411677

`A188851(A167499(n+4)+1)`
-/

namespace A188855.P4309014020026411677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A167499 (n + 4) + 1).toNat

end

end A188855.P4309014020026411677

/-! ## A188855.P15334410225317986105

`A188851(eq[7, A131818(n+1)])`
-/

namespace A188855.P15334410225317986105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188855.P15334410225317986105

/-! ## A188855.P7388522702309267299

`A188851(eq[5, A193592(n)]-(n-5))`
-/

namespace A188855.P7388522702309267299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n : ℤ) - 5)).toNat

end

end A188855.P7388522702309267299

/-! ## A188855.P11464512857162778171

`A188851(Δ[Δ[A006504(n+1)]]-(n-5))`
-/

namespace A188855.P11464512857162778171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (f1 (n + 1) - f1 n - ((n : ℤ) - 5)).toNat

end

end A188855.P11464512857162778171

/-!
# A188856: Number of 7Xn binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188856, there is no canonical definition to state claims against.
-/

/-! ## A188856.P4004702280434538511

`A188851(eq[11, A066657(n)])`
-/

namespace A188856.P4004702280434538511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188856.P4004702280434538511

/-! ## A188856.P5621362436183314006

`A188851(A167614(n+5)+4)`
-/

namespace A188856.P5621362436183314006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A167614 (n + 5) + 4).toNat

end

end A188856.P5621362436183314006

/-! ## A188856.P13449385335952795409

`A188851(A000217(n+6)+7)`
-/

namespace A188856.P13449385335952795409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A000217 (n + 6) + 7).toNat

end

end A188856.P13449385335952795409

/-! ## A188856.P11465586671020313333

`A188851(A141214(n+3)+10)`
-/

namespace A188856.P11465586671020313333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A141214 (n + 3) + 10).toNat

end

end A188856.P11465586671020313333

/-! ## A188856.P3959724348194679397

`A188851(A155212(n+2)+15)`
-/

namespace A188856.P3959724348194679397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A155212 (n + 2) + 15).toNat

end

end A188856.P3959724348194679397

/-!
# A188857: Number of 8Xn binary arrays without the pattern 0 0 1 vertically, antidiagonally or horizontally.

The programs for A188857, there is no canonical definition to state claims against.
-/

/-! ## A188857.P5537154927707931466

`A188851(eq[13, A066657(n)])`
-/

namespace A188857.P5537154927707931466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188857.P5537154927707931466

/-! ## A188857.P5266578368252706420

`A188851(A155212(n+3)+16)`
-/

namespace A188857.P5266578368252706420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A155212 (n + 3) + 16).toNat

end

end A188857.P5266578368252706420

/-! ## A188857.P4632959644434338591

`A188851(eq[9, A131818(n+1)])`
-/

namespace A188857.P4632959644434338591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188857.P4632959644434338591

/-! ## A188857.P12562029194386532254

`A188851(A167499(n+5)+n+10)`
-/

namespace A188857.P12562029194386532254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (A167499 (n + 5) + (n + 10 : ℤ)).toNat

end

end A188857.P12562029194386532254

/-!
# A188859: Decimal expansion of 2 - log(4).

The programs for A188859, there is no canonical definition to state claims against.
-/

/-! ## A188859.P6139813977075531049

`9-A016627(n+1)`
-/

namespace A188859.P6139813977075531049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A016627 (n + 1 + 1)

end

end A188859.P6139813977075531049

/-!
# A188860: Number of n X n binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

The programs for A188860, the canonical program `A188860.P1930130511050451117` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188860 has offset 0).

The definition of A188860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188860.P1930130511050451117

`A081113(round(sqrt(n²+1)))+floor(3^(n-1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188860

/-- `A081113(round(sqrt(n²+1)))+floor(3^(n-1))` -/
def P1930130511050451117.Spec : Prop :=
  ∀ n, P1930130511050451117.a n = A188860 n

theorem P1930130511050451117.correct : P1930130511050451117.Spec := by
  intro n
  simp only [A188860]

end A188860

/-! ## A188860.P4274185230622100183

`A296449(round(1/acot(∑[n]))+n)`
-/

namespace A188860.P4274185230622100183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296449 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) + (n : ℤ)).toNat

end

end A188860.P4274185230622100183

namespace A188860

/-- `A296449(round(1/acot(∑[n]))+n)` -/
def P4274185230622100183.Spec : Prop :=
  ∀ n, P4274185230622100183.a n = A188860 n

end A188860

/-! ## A188860.P13363781093547698242

`A296449(record[a(n-1)+n])` with `a(0)=1, a(1)=0`
-/

namespace A188860.P13363781093547698242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A188860.P13363781093547698242

namespace A188860

/-- `A296449(record[a(n-1)+n])` -/
def P13363781093547698242.Spec : Prop :=
  ∀ n, P13363781093547698242.a n = A188860 n

end A188860

/-! ## A188860.P9909873591054854697

`A296449(∑[n]+round(sqrt(n²+1)))`
-/

namespace A188860.P9909873591054854697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296449 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A188860.P9909873591054854697

namespace A188860

/-- `A296449(∑[n]+round(sqrt(n²+1)))` -/
def P9909873591054854697.Spec : Prop :=
  ∀ n, P9909873591054854697.a n = A188860 n

end A188860

/-! ## A188860.P11526186787274685498

`record[A129186(n)*A296449(n+1)]`
-/

namespace A188860.P11526186787274685498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A296449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188860.P11526186787274685498

namespace A188860

/-- `record[A129186(n)*A296449(n+1)]` -/
def P11526186787274685498.Spec : Prop :=
  ∀ n, P11526186787274685498.a n = A188860 n

end A188860

/-!
# A188861: Number of n X 4 binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

The programs for A188861, the canonical program `A188861.P13704352399721513352` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188861 has offset 1).

The definition of A188861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188861.P13704352399721513352

`a(n-1)+27` with `a(0)=16, a(1)=41`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188861

/-- `a(n-1)+27` -/
def P13704352399721513352.Spec : Prop :=
  ∀ n, (P13704352399721513352.a n : ℤ) = A188861 (n + 1)

theorem P13704352399721513352.correct : P13704352399721513352.Spec := by
  intro n
  simp only [A188861, Nat.add_sub_cancel]

end A188861

/-!
# A188862: Number of n X 5 binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

The programs for A188862, the canonical program `A188862.P12303154698272888448` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188862 has offset 1).

The definition of A188862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188862.P12303154698272888448

`A167179(A008574(n)+1)+A053742(n)+A017401(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188862

/-- `A167179(A008574(n)+1)+A053742(n)+A017401(n)` -/
def P12303154698272888448.Spec : Prop :=
  ∀ n, P12303154698272888448.a n = A188862 (n + 1)

theorem P12303154698272888448.correct : P12303154698272888448.Spec := by
  intro n
  simp only [A188862, Nat.add_sub_cancel]

end A188862

/-!
# A188863: Number of n X 6 binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

The programs for A188863, there is no canonical definition to state claims against.
-/

/-! ## A188863.P5853842363151154440

`A188866(A052905(n+3)%A235163(3*n+5))`
-/

namespace A188863.P5853842363151154440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (Int.tmod (A052905 (n + 3)) (A235163 (3 * n + 5))).toNat

end

end A188863.P5853842363151154440

/-!
# A188864: Number of n X 7 binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

The programs for A188864, there is no canonical definition to state claims against.
-/

/-! ## A188864.P383214295524684489

`A188866(eq[6, A193592(n)])`
-/

namespace A188864.P383214295524684489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188864.P383214295524684489

/-!
# A188865: Number of n X 8 binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

The programs for A188865, there is no canonical definition to state claims against.
-/

/-! ## A188865.P10009702529831466605

`A188866(eq[7, A193592(n)])`
-/

namespace A188865.P10009702529831466605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188865.P10009702529831466605

/-!
# A188867: Number of n X n binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188867, there is no canonical definition to state claims against.
-/

/-! ## A188867.P3054658327089761888

`A188874((n+1)²+n²)`
-/

namespace A188867.P3054658327089761888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 ((n + 1) ^ 2 + n ^ 2)

end

end A188867.P3054658327089761888

/-! ## A188867.P14535170462233212911

`record[gcd(A049581(n), A188874(n+1))]`
-/

namespace A188867.P14535170462233212911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A188874 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188867.P14535170462233212911

/-! ## A188867.P17859482214191289148

`A188874(A001844(n))+A025443(n)`
-/

namespace A188867.P17859482214191289148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A001844 n).toNat + A025443 n

end

end A188867.P17859482214191289148

/-! ## A188867.P6464387682057959475

`A188874(A001844(n))+A025469(n)`
-/

namespace A188867.P6464387682057959475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A001844 n).toNat + A025469 n

end

end A188867.P6464387682057959475

/-! ## A188867.P10301833143857132750

`gcd(A000038(n), A188874(A001844(n)))`
-/

namespace A188867.P10301833143857132750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A188874 (A001844 n).toNat)

end

end A188867.P10301833143857132750

/-!
# A188868: Number of nX3 binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188868, there is no canonical definition to state claims against.
-/

/-! ## A188868.P7939698628214359504

`A189196(∑[n+2]+4)`
-/

namespace A188868.P7939698628214359504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188868.P7939698628214359504

/-! ## A188868.P16257230938588292530

`A189196(A167614(n+1))+A025469(n)`
-/

namespace A188868.P16257230938588292530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A167614 (n + 1)).toNat + A025469 n

end

end A188868.P16257230938588292530

/-! ## A188868.P17863306500494004050

`A189196(A167614(n+1))%A223676(n+1)`
-/

namespace A188868.P17863306500494004050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189196 (A167614 (n + 1)).toNat) (A223676 (n + 1))

end

end A188868.P17863306500494004050

/-! ## A188868.P9867647811908549859

`A188874(∑[n+3]+1)`
-/

namespace A188868.P9867647811908549859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188868.P9867647811908549859

/-! ## A188868.P8994029706336351264

`A189064(∑[n+3]+1)`
-/

namespace A188868.P8994029706336351264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188868.P8994029706336351264

/-!
# A188869: Number of n X 4 binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188869, there is no canonical definition to state claims against.
-/

/-! ## A188869.P18169338469569381387

`A188874(A055998(n+2))`
-/

namespace A188869.P18169338469569381387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A055998 (n + 2)).toNat

end

end A188869.P18169338469569381387

/-! ## A188869.P14112906727786442880

`A188874(A155212(n)+5)`
-/

namespace A188869.P14112906727786442880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A155212 n + 5).toNat

end

end A188869.P14112906727786442880

/-! ## A188869.P17781458554336610820

`A188874(A056000(n)+7)`
-/

namespace A188869.P17781458554336610820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A056000 n + 7).toNat

end

end A188869.P17781458554336610820

/-! ## A188869.P17370539937468328882

`A188874(eq[3, A193592(n)])`
-/

namespace A188869.P17370539937468328882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188869.P17370539937468328882

/-! ## A188869.P16535632121086542343

`A188874(A052905(n+1)+2)`
-/

namespace A188869.P16535632121086542343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A052905 (n + 1) + 2).toNat

end

end A188869.P16535632121086542343

/-!
# A188870: Number of n X 5 binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188870, there is no canonical definition to state claims against.
-/

/-! ## A188870.P10770271079452255182

`A188874(Δ[A264443(n)])`
-/

namespace A188870.P10770271079452255182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (f1 (n + 1) - f1 n).toNat

end

end A188870.P10770271079452255182

/-! ## A188870.P14406245252994664607

`A188874(A046691(n+3))`
-/

namespace A188870.P14406245252994664607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A046691 (n + 3)).toNat

end

end A188870.P14406245252994664607

/-! ## A188870.P153031229786802864

`A188874(eq[4, A193592(n)])`
-/

namespace A188870.P153031229786802864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188870.P153031229786802864

/-! ## A188870.P10397365713693406251

`A188874(Δ[A023545(n+1)])`
-/

namespace A188870.P10397365713693406251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (f1 (n + 1) - f1 n).toNat

end

end A188870.P10397365713693406251

/-! ## A188870.P4997547341767694825

`A188874(eq[6, A185782(n+1)])`
-/

namespace A188870.P4997547341767694825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188870.P4997547341767694825

/-!
# A188871: Number of nX6 binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188871, there is no canonical definition to state claims against.
-/

/-! ## A188871.P10717298806725094430

`A188874(eq[3, A219347(n)])`
-/

namespace A188871.P10717298806725094430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188871.P10717298806725094430

/-! ## A188871.P16043984320819717687

`A188874(eq[5, A193592(n)])`
-/

namespace A188871.P16043984320819717687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188871.P16043984320819717687

/-! ## A188871.P11568825390123365046

`A188874(eq[8, A185782(n+1)])`
-/

namespace A188871.P11568825390123365046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188871.P11568825390123365046

/-! ## A188871.P16726591744982285754

`A188874(eq[16, A057728(n+1)])`
-/

namespace A188871.P16726591744982285754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188871.P16726591744982285754

/-! ## A188871.P466032920835867653

`A188874(Δ[Δ[A006504(n+1)]])`
-/

namespace A188871.P466032920835867653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (f1 (n + 1) - f1 n).toNat

end

end A188871.P466032920835867653

/-!
# A188872: Number of nX7 binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188872, there is no canonical definition to state claims against.
-/

/-! ## A188872.P8793714811038433069

`A188874(eq[4, A219347(n)])`
-/

namespace A188872.P8793714811038433069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188872.P8793714811038433069

/-! ## A188872.P17171356833705833663

`A188874(eq[6, A193592(n)])`
-/

namespace A188872.P17171356833705833663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188872.P17171356833705833663

/-! ## A188872.P9418615014462639552

`A188874(A000124(n+7)-7)`
-/

namespace A188872.P9418615014462639552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A000124 (n + 7) - 7).toNat

end

end A188872.P9418615014462639552

/-! ## A188872.P13791959715072440613

`A188874(eq[32, A057728(n+1)])`
-/

namespace A188872.P13791959715072440613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188872.P13791959715072440613

/-! ## A188872.P10798727010308231613

`A188874(eq[7, A200370(n+1)])`
-/

namespace A188872.P10798727010308231613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188872.P10798727010308231613

/-!
# A188873: Number of nX8 binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188873, there is no canonical definition to state claims against.
-/

/-! ## A188873.P1765570856237538232

`A188874(eq[5, A219347(n)])`
-/

namespace A188873.P1765570856237538232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188873.P1765570856237538232

/-! ## A188873.P309741386665009017

`A188874(eq[7, A193592(n)])`
-/

namespace A188873.P309741386665009017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188873.P309741386665009017

/-! ## A188873.P16635712289211137256

`A188874(A055999(n+5)-1)`
-/

namespace A188873.P16635712289211137256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A055999 (n + 5) - 1).toNat

end

end A188873.P16635712289211137256

/-! ## A188873.P16529780550402907486

`A188874(eq[12, A185782(n+1)])`
-/

namespace A188873.P16529780550402907486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188873.P16529780550402907486

/-! ## A188873.P16209530133954031810

`A188874(A167499(n+5)+2*n+3)`
-/

namespace A188873.P16209530133954031810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167499 (n + 5) + (2 * n + 3 : ℤ)).toNat

end

end A188873.P16209530133954031810

/-!
# A188874: T(n,k)=Number of nXk binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188874, there is no canonical definition to state claims against.
-/

/-! ## A188874.P1908062403371799816

`A188747(A038722(n+1)%A064592(n+1))`
-/

namespace A188874.P1908062403371799816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (Int.tmod (A038722 (n + 1)) (A064592 (n + 1))).toNat

end

end A188874.P1908062403371799816

/-! ## A188874.P12600636819470720853

`A188747(A038722(n+1))%A067381(n+1)`
-/

namespace A188874.P12600636819470720853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188747 (A038722 (n + 1)).toNat) (A067381 (n + 1))

end

end A188874.P12600636819470720853

/-! ## A188874.P2597399787749926859

`A188747(A038722(n+1))+A025469(A095505(n))`
-/

namespace A188874.P2597399787749926859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A038722 (n + 1)).toNat + A025469 (A095505 n).toNat

end

end A188874.P2597399787749926859

/-! ## A188874.P1970967881326465683

`A188747(A038722(n+1))%A006504(A051164(n))`
-/

namespace A188874.P1970967881326465683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188747 (A038722 (n + 1)).toNat) (A006504 (A051164 n).toNat)

end

end A188874.P1970967881326465683

/-! ## A188874.P5234754195192890015

`A189064(A032555(n+1))+char[6]`
-/

namespace A188874.P5234754195192890015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A032555 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188874.P5234754195192890015

/-!
# A188875: Number of 3Xn binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188875, there is no canonical definition to state claims against.
-/

/-! ## A188875.P8473516948232433732

`A188874(∑[n+2]+4)`
-/

namespace A188875.P8473516948232433732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188875.P8473516948232433732

/-! ## A188875.P7967960481538098347

`record[A188874(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A188875.P7967960481538098347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188875.P7967960481538098347

/-! ## A188875.P5689487462772452008

`A188874(A167614(n+1))+A025439(n)`
-/

namespace A188875.P5689487462772452008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167614 (n + 1)).toNat + A025439 n

end

end A188875.P5689487462772452008

/-! ## A188875.P15039680260434077455

`lcm(A033999(n), A188874(A167614(n+1)))`
-/

namespace A188875.P15039680260434077455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188874 (A167614 (n + 1)).toNat)

end

end A188875.P15039680260434077455

/-! ## A188875.P4802351870851852598

`A188874(A167614(n+1))%A189261(n+1)`
-/

namespace A188875.P4802351870851852598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188874 (A167614 (n + 1)).toNat) (A189261 (n + 1))

end

end A188875.P4802351870851852598

/-!
# A188876: Number of 4Xn binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188876, there is no canonical definition to state claims against.
-/

/-! ## A188876.P438839626212572771

`A188874(A052905(n)+9)`
-/

namespace A188876.P438839626212572771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A052905 n + 9).toNat

end

end A188876.P438839626212572771

/-! ## A188876.P7597539020405251259

`A188874(A055999(n)+10)`
-/

namespace A188876.P7597539020405251259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A055999 n + 10).toNat

end

end A188876.P7597539020405251259

/-! ## A188876.P2588945684593112938

`record[A188874(A167499(n)-1)]`
-/

namespace A188876.P2588945684593112938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188876.P2588945684593112938

/-! ## A188876.P14012470451557594653

`A188874(A167614(n+2)+1)`
-/

namespace A188876.P14012470451557594653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167614 (n + 2) + 1).toNat

end

end A188876.P14012470451557594653

/-! ## A188876.P179920520583541763

`A188874(eq[5, A131818(n+1)])`
-/

namespace A188876.P179920520583541763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188876.P179920520583541763

/-!
# A188877: Number of 5Xn binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188877, there is no canonical definition to state claims against.
-/

/-! ## A188877.P7242386999414615052

`A188874(A167499(n+3))`
-/

namespace A188877.P7242386999414615052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167499 (n + 3)).toNat

end

end A188877.P7242386999414615052

/-! ## A188877.P10852546816965635317

`A188874(A155212(n)+13)`
-/

namespace A188877.P10852546816965635317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A155212 n + 13).toNat

end

end A188877.P10852546816965635317

/-! ## A188877.P14796678394354310029

`A188874(A056000(n)+15)`
-/

namespace A188877.P14796678394354310029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A056000 n + 15).toNat

end

end A188877.P14796678394354310029

/-! ## A188877.P15083680899456011055

`A188874(A167487(n+3)-2)`
-/

namespace A188877.P15083680899456011055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167487 (n + 3) - 2).toNat

end

end A188877.P15083680899456011055

/-! ## A188877.P16160279894609600751

`A188874(eq[6, A131818(n+1)])`
-/

namespace A188877.P16160279894609600751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188877.P16160279894609600751

/-!
# A188878: Number of 6Xn binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188878, there is no canonical definition to state claims against.
-/

/-! ## A188878.P13572896641273782191

`A188874(A167614(n+4)+3)`
-/

namespace A188878.P13572896641273782191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167614 (n + 4) + 3).toNat

end

end A188878.P13572896641273782191

/-! ## A188878.P8061733436361414726

`A188874(A016028(n+8)+3)`
-/

namespace A188878.P8061733436361414726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A016028 (n + 8) + 3).toNat

end

end A188878.P8061733436361414726

/-! ## A188878.P14931045804131283130

`A188874(A246172(n+1)+20)`
-/

namespace A188878.P14931045804131283130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A246172 (n + 1) + 20).toNat

end

end A188878.P14931045804131283130

/-! ## A188878.P14314011415803021549

`A188874(eq[7, A131818(n+1)])`
-/

namespace A188878.P14314011415803021549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188878.P14314011415803021549

/-! ## A188878.P9265157249278306058

`A188874(A167499(n+5)-(n+5))`
-/

namespace A188878.P9265157249278306058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167499 (n + 5) - (n + 5 : ℤ)).toNat

end

end A188878.P9265157249278306058

/-!
# A188879: Number of 7Xn binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188879, there is no canonical definition to state claims against.
-/

/-! ## A188879.P10616128991098438934

`A188874(A056119(n)+28)`
-/

namespace A188879.P10616128991098438934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A056119 n + 28).toNat

end

end A188879.P10616128991098438934

/-! ## A188879.P12053837896306804247

`A188874(eq[11, A066657(n)])`
-/

namespace A188879.P12053837896306804247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188879.P12053837896306804247

/-! ## A188879.P1497194883089661422

`A188874(A167499(n+5)+2)`
-/

namespace A188879.P1497194883089661422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A167499 (n + 5) + 2).toNat

end

end A188879.P1497194883089661422

/-! ## A188879.P15706734439364867139

`A188874(A000124(n+6)+6)`
-/

namespace A188879.P15706734439364867139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A000124 (n + 6) + 6).toNat

end

end A188879.P15706734439364867139

/-! ## A188879.P3007116951997995964

`A188874(eq[8, A131818(n+1)])`
-/

namespace A188879.P3007116951997995964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188879.P3007116951997995964

/-!
# A188880: Number of 8Xn binary arrays without the pattern 0 0 0 antidiagonally or horizontally.

The programs for A188880, there is no canonical definition to state claims against.
-/

/-! ## A188880.P15709974148124076037

`A188874(eq[13, A066657(n)])`
-/

namespace A188880.P15709974148124076037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188880.P15709974148124076037

/-! ## A188880.P4054564022897045099

`A188874(A000217(n+7)+8)`
-/

namespace A188880.P4054564022897045099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A000217 (n + 7) + 8).toNat

end

end A188880.P4054564022897045099

/-! ## A188880.P9881518399774086984

`A188874(eq[7, A002262(n)]+1)`
-/

namespace A188880.P9881518399774086984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188880.P9881518399774086984

/-! ## A188880.P5589471308041065288

`A188874(eq[9, A131818(n+1)])`
-/

namespace A188880.P5589471308041065288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188880.P5589471308041065288

/-! ## A188880.P8760316045949606864

`A188874(A000124(n+8)-(n+1))`
-/

namespace A188880.P8760316045949606864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188874 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A188880.P8760316045949606864

/-!
# A188881: Triangle of coefficients arising from an expansion of Integral( exp(exp(exp(x))), dx).

The programs for A188881, there is no canonical definition to state claims against.
-/

/-! ## A188881.P6740668081924964708

`A130534(n)*A233543(n)`
-/

namespace A188881.P6740668081924964708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A233543 n

end

end A188881.P6740668081924964708

/-! ## A188881.P13327465500805475137

`A002262(n)!*A130534(n)`
-/

namespace A188881.P13327465500805475137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A130534 n

end

end A188881.P13327465500805475137

/-! ## A188881.P18031213882048542856

`abs(A008275(n+1))*A002262(n)!`
-/

namespace A188881.P18031213882048542856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1)| * (Nat.factorial (A002262 n).toNat : ℤ)

end

end A188881.P18031213882048542856

/-! ## A188881.P3634008902268294225

`A008279(n)/A007318(n)*A130534(n)`
-/

namespace A188881.P3634008902268294225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A130534 n : ℚ)

end

end A188881.P3634008902268294225

/-! ## A188881.P15802247411154197468

`A048594(n+1)/A140756(n+1)`
-/

namespace A188881.P15802247411154197468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A188881.P15802247411154197468

/-! ## A188881.P8852019585937337587

`abs(A048594(n+1)/A002260(n+1))`
-/

namespace A188881.P8852019585937337587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A048594 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)|

end

end A188881.P8852019585937337587

/-! ## A188881.P15762954146604813213

`A008275(n+1)/A039757(n)*A225475(n)`
-/

namespace A188881.P15762954146604813213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A039757 n : ℚ) * (A225475 n : ℚ)

end

end A188881.P15762954146604813213

/-! ## A188881.P8545061756176095222

`A073315(n+1)/A074909(n)`
-/

namespace A188881.P8545061756176095222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073315 (n + 1) : ℚ) / (A074909 n : ℚ)

end

end A188881.P8545061756176095222

/-!
# A188884: Continued fraction of (1 + sqrt(1 + Pi^2))/Pi.

The programs for A188884, there is no canonical definition to state claims against.
-/

/-! ## A188884.P10285773189260381260

`A029834(∑[A271955(3*n+4)]+1)+1`
-/

namespace A188884.P10285773189260381260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271955 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A188884.P10285773189260381260

/-! ## A188884.P206306931285468655

`A006530(gcd(A209004(n+1), A212565(n)))`
-/

namespace A188884.P206306931285468655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A209004 (n + 1)) (A212565 n))

end

end A188884.P206306931285468655

/-! ## A188884.P8675429944800684808

`gcd(A270890(n+4), A331532(A369495(n)))`
-/

namespace A188884.P8675429944800684808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270890 (n + 4)) (A331532 (A369495 n).toNat)

end

end A188884.P8675429944800684808

/-! ## A188884.P9604045165946197398

`A007913(A140436(n+3)^A331047(n+1))`
-/

namespace A188884.P9604045165946197398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A140436 (n + 3) : ℚ) ^ (A331047 (n + 1) : ℤ))).toNat

end

end A188884.P9604045165946197398

/-!
# A188890: 

The programs for A188890, there is no canonical definition to state claims against.
-/

/-! ## A188890.P379499299350296047

`(4^n)^n*A004003(n)`
-/

namespace A188890.P379499299350296047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n) ^ n : ℤ) * A004003 n

end

end A188890.P379499299350296047

/-!
# A188891: Least triangular n-gonal number greater than 1, or 0 if none exists.

The programs for A188891, there is no canonical definition to state claims against.
-/

/-! ## A188891.P3187400686043043112

`C(A188893(n+3)+1, 2)`
-/

namespace A188891.P3187400686043043112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A188893 (n + 3) + 1).toNat 2

end

end A188891.P3187400686043043112

/-! ## A188891.P18133058286918185837

`A000217(A188893(n+3))`
-/

namespace A188891.P18133058286918185837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A188893 (n + 3)).toNat

end

end A188891.P18133058286918185837

/-! ## A188891.P8359522414883472679

`A161680(A188893(n+3)+1)`
-/

namespace A188891.P8359522414883472679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A188893 (n + 3) + 1).toNat

end

end A188891.P8359522414883472679

/-! ## A188891.P13277538745326088814

`A000124(A188893(n+3))-A007318(∑[n])`
-/

namespace A188891.P13277538745326088814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188891.P13277538745326088814

/-! ## A188891.P4123039991625305551

`A000124(A188893(n+3))-A000041(and(1, -n))`
-/

namespace A188891.P4123039991625305551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - A000041 (Int.land 1 (-(n : ℤ))).toNat

end

end A188891.P4123039991625305551

/-! ## A188891.P15812488737638205732

`A000124(A188893(n+3))-A000040(n+2)%2`
-/

namespace A188891.P15812488737638205732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - Int.tmod (A000040 (n + 2)) 2

end

end A188891.P15812488737638205732

/-! ## A188891.P15462948110627208916

`A000124(A188893(n+3))-A014963(60*(n+1))`
-/

namespace A188891.P15462948110627208916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - A014963 (60 * (n + 1))

end

end A188891.P15462948110627208916

/-! ## A188891.P662180800975469367

`A000124(A188893(n+3))-A000108(gcd(n, n+1))`
-/

namespace A188891.P662180800975469367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - A000108 (Nat.gcd n (n + 1))

end

end A188891.P662180800975469367

/-! ## A188891.P7405332496470474143

`A000124(A188893(n+3))-A000045(ceil(1/(n+1)))`
-/

namespace A188891.P7405332496470474143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - A000045 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A188891.P7405332496470474143

/-! ## A188891.P13783911581173735842

`A000124(A188893(n+3))-A020639(ceil(1/(n+1)))`
-/

namespace A188891.P13783911581173735842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A188893 (n + 3)).toNat - A020639 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A188891.P13783911581173735842

/-!
# A188892: Numbers n such that there is no triangular n-gonal number greater than 1.

The programs for A188892, there is no canonical definition to state claims against.
-/

/-! ## A188892.P1268271287046695075

`(record[A192323(n)+1]+1)²+2`
-/

namespace A188892.P1268271287046695075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) ^ 2 + 2

end

end A188892.P1268271287046695075

/-! ## A188892.P9843845056910507591

`record[xor(2, xor(2, A256282(n))²)]`
-/

namespace A188892.P9843845056910507591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A256282 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188892.P9843845056910507591

/-! ## A188892.P5901876637003521461

`A059100(record[A329504(2*(n+1))+2])`
-/

namespace A188892.P5901876637003521461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329504 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188892.P5901876637003521461

/-!
# A188893: The index of the least triangular number greater than 1 that is also an n-gonal number, or 0 if none exists.

The programs for A188893, there is no canonical definition to state claims against.
-/

/-! ## A188893.P3834122943977633572

`floor(sqrt(2*A188891(n+3)))`
-/

namespace A188893.P3834122943977633572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A188891 (n + 3))

end

end A188893.P3834122943977633572

/-! ## A188893.P7575920953129246532

`round(sqrt(2*A188891(2*n-n+3)))`
-/

namespace A188893.P7575920953129246532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A188891 ((2 * n : ℤ) - (n : ℤ) + 3).toNat : ℝ))

end

end A188893.P7575920953129246532

/-! ## A188893.P9078178491585547694

`round(sqrt(2*A188891(n+3)-A000038(n)))`
-/

namespace A188893.P9078178491585547694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A188891 (n + 3) - A000038 n : ℝ))

end

end A188893.P9078178491585547694

/-! ## A188893.P13669485951242275633

`round(sqrt(2*A188891(n+3)))%A006960(n)`
-/

namespace A188893.P13669485951242275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A188891 (n + 3) : ℝ))) (A006960 n)

end

end A188893.P13669485951242275633

/-! ## A188893.P3699154958199649147

`A289207(round(sqrt(2*A188891(n+3)+1))+1)`
-/

namespace A188893.P3699154958199649147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (Real.sqrt (2 * A188891 (n + 3) + 1 : ℝ)) + 1).toNat

end

end A188893.P3699154958199649147

/-! ## A188893.P14785962756492969594

`round(A000007(n+1)+sqrt(2*A188891(n+3)))`
-/

namespace A188893.P14785962756492969594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A188891 (n + 3) : ℝ))

end

end A188893.P14785962756492969594

/-!
# A188894: The index of the least n-gonal number greater than 1 that is also triangular, or 0 if none exists.

The programs for A188894, there is no canonical definition to state claims against.
-/

/-! ## A188894.P7874970435981684874

`ceil(A188893(n+3)/sqrt(n+1))`
-/

namespace A188894.P7874970435981684874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188893 (n + 3) : ℝ) / Real.sqrt (n + 1 : ℝ)⌉

end

end A188894.P7874970435981684874

/-! ## A188894.P12103182141539052846

`A189218(A033444(n+1)+3)`
-/

namespace A188894.P12103182141539052846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189218 (A033444 (n + 1) + 3).toNat

end

end A188894.P12103182141539052846

/-! ## A188894.P2886699566334712598

`A189218(∑[n]+3)`
-/

namespace A188894.P2886699566334712598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189218 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188894.P2886699566334712598

/-!
# A188895: Number of n X n (real) {-1,1}-matrices having determinant A003433(n).

The programs for A188895, there is no canonical definition to state claims against.
-/

/-! ## A188895.P1344883621193719026

`lcm(4^n*n!, A347385(∏[abs(1-5*n)]))`
-/

namespace A188895.P1344883621193719026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (5 * n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n * Nat.factorial n : ℤ) (A347385 (∏ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A188895.P1344883621193719026

/-!
# A188896: Numbers n such that there is no square n-gonal number greater than 1.

The programs for A188896, there is no canonical definition to state claims against.
-/

/-! ## A188896.P6363386469483736686

`A005893(A124492(n+1)+∑[n])`
-/

namespace A188896.P6363386469483736686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A124492 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A188896.P6363386469483736686

/-!
# A188898: The index of the least n-gonal number greater than 1 that is also square, or 0 if none exists.

The programs for A188898, there is no canonical definition to state claims against.
-/

/-! ## A188898.P2477552657470340039

`ceil(sqrt((A100254(n+1)+1)²-1))`
-/

namespace A188898.P2477552657470340039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A100254 (n + 1) + 1) ^ 2 - 1 : ℝ)⌉

end

end A188898.P2477552657470340039

/-! ## A188898.P14867739179177985617

`abs(A131738(A100254(n+1)))`
-/

namespace A188898.P14867739179177985617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (A100254 (n + 1)).toNat|

end

end A188898.P14867739179177985617

/-! ## A188898.P9726636411257010964

`A087156(A100254(n+1)+1)`
-/

namespace A188898.P9726636411257010964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A100254 (n + 1) + 1).toNat

end

end A188898.P9726636411257010964

/-! ## A188898.P13392201843310660478

`A065475(A100254(n+1)+1)-1`
-/

namespace A188898.P13392201843310660478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A100254 (n + 1) + 1).toNat - 1

end

end A188898.P13392201843310660478

/-! ## A188898.P16301085935959461248

`lcm(A020985(n), A131738(A100254(n+1)))`
-/

namespace A188898.P16301085935959461248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A131738 (A100254 (n + 1)).toNat)

end

end A188898.P16301085935959461248

/-! ## A188898.P14896178844899515937

`∑{d}[A131738(A100254(n+1)), A000010(#)]`
-/

namespace A188898.P14896178844899515937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A100254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A188898.P14896178844899515937

/-! ## A188898.P8870713156315799455

`gcd(A000038(n+1), A131738(A100254(n+1)))`
-/

namespace A188898.P8870713156315799455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A131738 (A100254 (n + 1)).toNat)

end

end A188898.P8870713156315799455

/-! ## A188898.P6289319633040737254

`A131738(2*A100254(n+1))-A100254(n+1)`
-/

namespace A188898.P6289319633040737254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (2 * A100254 (n + 1)).toNat - A100254 (n + 1)

end

end A188898.P6289319633040737254

/-! ## A188898.P12973639569532192644

`(A100254(n+1)+1)%A000203(A100254(n+1)+1)`
-/

namespace A188898.P12973639569532192644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100254 (n + 1) + 1) (A000203 (A100254 (n + 1) + 1).toNat)

end

end A188898.P12973639569532192644

/-! ## A188898.P9258174731544073113

`A100254(n+1)+A000040(A100254(n+1)+1)%2`
-/

namespace A188898.P9258174731544073113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100254 (n + 1) + Int.tmod (A000040 (A100254 (n + 1) + 1).toNat) 2

end

end A188898.P9258174731544073113

/-!
# A188899: Third row of array in A187617.

The programs for A188899, the canonical program `A188899.P2617420717906096146` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188899 has offset 0).

The definition of A188899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188899.P2617420717906096146

`A005178(Δ[n²])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188899

/-- `A005178(Δ[n²])` -/
def P2617420717906096146.Spec : Prop :=
  ∀ n, P2617420717906096146.a n = A188899 n

theorem P2617420717906096146.correct : P2617420717906096146.Spec := by
  intro n
  simp only [A188899]

end A188899

/-! ## A188899.P15205777540149149561

`Δ[A129113(Δ[n²])]`
-/

namespace A188899.P15205777540149149561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129113 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188899.P15205777540149149561

namespace A188899

/-- `Δ[A129113(Δ[n²])]` -/
def P15205777540149149561.Spec : Prop :=
  ∀ n, P15205777540149149561.a n = A188899 n

end A188899

/-! ## A188899.P8945946894309100169

`record[A005178(n^(n%2))]`
-/

namespace A188899.P8945946894309100169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P8945946894309100169

namespace A188899

/-- `record[A005178(n^(n%2))]` -/
def P8945946894309100169.Spec : Prop :=
  ∀ n, P8945946894309100169.a n = A188899 n

end A188899

/-! ## A188899.P6682614470928662872

`record[A005178(n^and(1, n))]`
-/

namespace A188899.P6682614470928662872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P6682614470928662872

namespace A188899

/-- `record[A005178(n^and(1, n))]` -/
def P6682614470928662872.Spec : Prop :=
  ∀ n, P6682614470928662872.a n = A188899 n

end A188899

/-! ## A188899.P9135659161170348856

`or(2, A005178(2*n+1))-2`
-/

namespace A188899.P9135659161170348856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A005178 (2 * n + 1)) - 2

end

end A188899.P9135659161170348856

namespace A188899

/-- `or(2, A005178(2*n+1))-2` -/
def P9135659161170348856.Spec : Prop :=
  ∀ n, P9135659161170348856.a n = A188899 n

end A188899

/-! ## A188899.P15617871567599524128

`record[A005178(A004442(n))]`
-/

namespace A188899.P15617871567599524128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P15617871567599524128

namespace A188899

/-- `record[A005178(A004442(n))]` -/
def P15617871567599524128.Spec : Prop :=
  ∀ n, P15617871567599524128.a n = A188899 n

end A188899

/-! ## A188899.P5055757342565982706

`record[A005178(A000265(n+1))]`
-/

namespace A188899.P5055757342565982706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P5055757342565982706

namespace A188899

/-- `record[A005178(A000265(n+1))]` -/
def P5055757342565982706.Spec : Prop :=
  ∀ n, P5055757342565982706.a n = A188899 n

end A188899

/-! ## A188899.P1515465653030402900

`record[A005178(A158405(n+1))]`
-/

namespace A188899.P1515465653030402900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P1515465653030402900

namespace A188899

/-- `record[A005178(A158405(n+1))]` -/
def P1515465653030402900.Spec : Prop :=
  ∀ n, P1515465653030402900.a n = A188899 n

end A188899

/-! ## A188899.P5303093194213080833

`record[A005178(gcd(n, A035363(n)))]`
-/

namespace A188899.P5303093194213080833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (Int.gcd (n : ℤ) (A035363 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P5303093194213080833

namespace A188899

/-- `record[A005178(gcd(n, A035363(n)))]` -/
def P5303093194213080833.Spec : Prop :=
  ∀ n, P5303093194213080833.a n = A188899 n

end A188899

/-! ## A188899.P16061310101176095216

`gcd(A000038(n), A005178(2*n+1))`
-/

namespace A188899.P16061310101176095216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005178 (2 * n + 1))

end

end A188899.P16061310101176095216

namespace A188899

/-- `gcd(A000038(n), A005178(2*n+1))` -/
def P16061310101176095216.Spec : Prop :=
  ∀ n, (P16061310101176095216.a n : ℤ) = A188899 n

end A188899

/-! ## A188899.P15537807518665085290

`lcm(A005178(2*n+1), A057077(n))`
-/

namespace A188899.P15537807518665085290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005178 (2 * n + 1)) (A057077 n)

end

end A188899.P15537807518665085290

namespace A188899

/-- `lcm(A005178(2*n+1), A057077(n))` -/
def P15537807518665085290.Spec : Prop :=
  ∀ n, (P15537807518665085290.a n : ℤ) = A188899 n

end A188899

/-! ## A188899.P4170668793818789069

`record[A005178((n+1)/A028233(n+1))]`
-/

namespace A188899.P4170668793818789069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P4170668793818789069

namespace A188899

/-- `record[A005178((n+1)/A028233(n+1))]` -/
def P4170668793818789069.Spec : Prop :=
  ∀ n, P4170668793818789069.a n = A188899 n

end A188899

/-! ## A188899.P15387408092439823531

`record[A005178((n+1)/A034684(n+1))]`
-/

namespace A188899.P15387408092439823531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A034684 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188899.P15387408092439823531

namespace A188899

/-- `record[A005178((n+1)/A034684(n+1))]` -/
def P15387408092439823531.Spec : Prop :=
  ∀ n, P15387408092439823531.a n = A188899 n

end A188899

/-! ## A188899.P13412253566525537412

`or(char[A005178(n)], A005178(2*n+1))`
-/

namespace A188899.P13412253566525537412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005178 (2 * n + 1))

end

end A188899.P13412253566525537412

namespace A188899

/-- `or(char[A005178(n)], A005178(2*n+1))` -/
def P13412253566525537412.Spec : Prop :=
  ∀ n, P13412253566525537412.a n = A188899 n

end A188899

/-! ## A188899.P9584553708438548033

`A057077(n+1)²*A005178(2*n+1)`
-/

namespace A188899.P9584553708438548033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) ^ 2 * A005178 (2 * n + 1)

end

end A188899.P9584553708438548033

namespace A188899

/-- `A057077(n+1)²*A005178(2*n+1)` -/
def P9584553708438548033.Spec : Prop :=
  ∀ n, P9584553708438548033.a n = A188899 n

end A188899

/-! ## A188899.P14358872355226132262

`A035363(2*n+1)+A005178(2*n+1)`
-/

namespace A188899.P14358872355226132262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) + A005178 (2 * n + 1)

end

end A188899.P14358872355226132262

namespace A188899

/-- `A035363(2*n+1)+A005178(2*n+1)` -/
def P14358872355226132262.Spec : Prop :=
  ∀ n, P14358872355226132262.a n = A188899 n

end A188899

/-! ## A188899.P7724764824177915525

`A129113(2*n+3)-A129113(2*n+1)`
-/

namespace A188899.P7724764824177915525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129113 (2 * n + 3) - A129113 (2 * n + 1)

end

end A188899.P7724764824177915525

namespace A188899

/-- `A129113(2*n+3)-A129113(2*n+1)` -/
def P7724764824177915525.Spec : Prop :=
  ∀ n, P7724764824177915525.a n = A188899 n

end A188899

/-! ## A188899.P4570776097046210175

`A154955(A051755(n+3))+A005178(2*n+1)`
-/

namespace A188899.P4570776097046210175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A051755 (n + 3)).toNat + A005178 (2 * n + 1)

end

end A188899.P4570776097046210175

namespace A188899

/-- `A154955(A051755(n+3))+A005178(2*n+1)` -/
def P4570776097046210175.Spec : Prop :=
  ∀ n, P4570776097046210175.a n = A188899 n

end A188899

/-! ## A188899.P11449772479359502261

`A007318(A000217(n))*A005178(A005408(n))`
-/

namespace A188899.P11449772479359502261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A005178 (A005408 n).toNat

end

end A188899.P11449772479359502261

namespace A188899

/-- `A007318(A000217(n))*A005178(A005408(n))` -/
def P11449772479359502261.Spec : Prop :=
  ∀ n, P11449772479359502261.a n = A188899 n

end A188899

/-! ## A188899.P15434857779130585247

`A005178(2*n+1)*A057077(n²)`
-/

namespace A188899.P15434857779130585247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (2 * n + 1) * A057077 (n ^ 2)

end

end A188899.P15434857779130585247

namespace A188899

/-- `A005178(2*n+1)*A057077(n²)` -/
def P15434857779130585247.Spec : Prop :=
  ∀ n, P15434857779130585247.a n = A188899 n

end A188899

