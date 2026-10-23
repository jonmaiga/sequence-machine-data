import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A342801: Primes p such that, if b is the sum of digits of p, y = p mod b and x = (p-y)/b, then p-x*y, p+x*y, x+y and x-y are all prime.

The programs for A342801, there is no canonical definition to state claims against.
-/

/-! ## A342801.P8170338564293000222

`A007918(A099832(n+1)^A173675(n+1))`
-/

namespace A342801.P8170338564293000222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((A099832 (n + 1) : ℚ) ^ (A173675 (n + 1) : ℤ))).toNat

end

end A342801.P8170338564293000222

/-!
# A342802: Replace 2^k with (-3)^k in binary expansion of n.

The programs for A342802, the canonical program `A342802.P11222380592318670996` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342802 has offset 0).

The definition of A342802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342802.P11222380592318670996

`n%2-a(floor(n/2))-2*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342802

/-- `n%2-a(floor(n/2))-2*a(floor(n/2))` -/
def P11222380592318670996.Spec : Prop :=
  ∀ n, P11222380592318670996.a n = A342802 n

theorem P11222380592318670996.correct : P11222380592318670996.Spec := by
  intro n
  simp only [A342802]

end A342802

/-! ## A342802.P2015230267451695203

`A065369(record[A117966(n)])`
-/

namespace A342802.P2015230267451695203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342802.P2015230267451695203

namespace A342802

/-- `A065369(record[A117966(n)])` -/
def P2015230267451695203.Spec : Prop :=
  ∀ n, P2015230267451695203.a n = A342802 n

end A342802

/-! ## A342802.P1631522798078555304

`A065369(A005836(n+1))`
-/

namespace A342802.P1631522798078555304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A005836 (n + 1)).toNat

end

end A342802.P1631522798078555304

namespace A342802

/-- `A065369(A005836(n+1))` -/
def P1631522798078555304.Spec : Prop :=
  ∀ n, P1631522798078555304.a n = A342802 n

end A342802

/-! ## A342802.P15407344458829693652

`A065369(eq[1, A117592(n)])`
-/

namespace A342802.P15407344458829693652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342802.P15407344458829693652

namespace A342802

/-- `A065369(eq[1, A117592(n)])` -/
def P15407344458829693652.Spec : Prop :=
  ∀ n, P15407344458829693652.a n = A342802 n

end A342802

/-! ## A342802.P15471684143206878898

`A065369(eq[n, A060374(n)])`
-/

namespace A342802.P15471684143206878898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342802.P15471684143206878898

namespace A342802

/-- `A065369(eq[n, A060374(n)])` -/
def P15471684143206878898.Spec : Prop :=
  ∀ n, P15471684143206878898.a n = A342802 n

end A342802

/-! ## A342802.P9520193406969882480

`A065369(eq[n, A117966(n)])`
-/

namespace A342802.P9520193406969882480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342802.P9520193406969882480

namespace A342802

/-- `A065369(eq[n, A117966(n)])` -/
def P9520193406969882480.Spec : Prop :=
  ∀ n, P9520193406969882480.a n = A342802 n

end A342802

/-! ## A342802.P14808162160016273476

`A065369(A003278(n+1)-1)`
-/

namespace A342802.P14808162160016273476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A003278 (n + 1) - 1).toNat

end

end A342802.P14808162160016273476

namespace A342802

/-- `A065369(A003278(n+1)-1)` -/
def P14808162160016273476.Spec : Prop :=
  ∀ n, P14808162160016273476.a n = A342802 n

end A342802

/-! ## A342802.P11387455781459260570

`A065369(eq[2*n, A004488(n)])`
-/

namespace A342802.P11387455781459260570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342802.P11387455781459260570

namespace A342802

/-- `A065369(eq[2*n, A004488(n)])` -/
def P11387455781459260570.Spec : Prop :=
  ∀ n, P11387455781459260570.a n = A342802 n

end A342802

/-! ## A342802.P15780307432091836

`A065369(eq[n, A004488(n)/2])`
-/

namespace A342802.P15780307432091836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004488 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A342802.P15780307432091836

namespace A342802

/-- `A065369(eq[n, A004488(n)/2])` -/
def P15780307432091836.Spec : Prop :=
  ∀ n, P15780307432091836.a n = A342802 n

end A342802

/-! ## A342802.P14880899369302545692

`A065369(eq[n, A004488(n)-n])`
-/

namespace A342802.P14880899369302545692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342802.P14880899369302545692

namespace A342802

/-- `A065369(eq[n, A004488(n)-n])` -/
def P14880899369302545692.Spec : Prop :=
  ∀ n, P14880899369302545692.a n = A342802 n

end A342802

/-! ## A342802.P7527131125006249726

`A065369(A186776(n+1)-A000035(n))`
-/

namespace A342802.P7527131125006249726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A186776 (n + 1) - A000035 n).toNat

end

end A342802.P7527131125006249726

namespace A342802

/-- `A065369(A186776(n+1)-A000035(n))` -/
def P7527131125006249726.Spec : Prop :=
  ∀ n, P7527131125006249726.a n = A342802 n

end A342802

/-! ## A342802.P15720135619921236771

`A105186(A005823(n+1))-A005836(n+1)`
-/

namespace A342802.P15720135619921236771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 (A005823 (n + 1)).toNat - A005836 (n + 1)

end

end A342802.P15720135619921236771

namespace A342802

/-- `A105186(A005823(n+1))-A005836(n+1)` -/
def P15720135619921236771.Spec : Prop :=
  ∀ n, P15720135619921236771.a n = A342802 n

end A342802

/-! ## A342802.P8090381784144847459

`A105186(2*A005836(n+1))-A005836(n+1)`
-/

namespace A342802.P8090381784144847459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 (2 * A005836 (n + 1)).toNat - A005836 (n + 1)

end

end A342802.P8090381784144847459

namespace A342802

/-- `A105186(2*A005836(n+1))-A005836(n+1)` -/
def P8090381784144847459.Spec : Prop :=
  ∀ n, P8090381784144847459.a n = A342802 n

end A342802

/-! ## A342802.P15868916740921896299

`A005823(n+1)-A105186(2*A005823(n+1))`
-/

namespace A342802.P15868916740921896299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) - A105186 (2 * A005823 (n + 1)).toNat

end

end A342802.P15868916740921896299

namespace A342802

/-- `A005823(n+1)-A105186(2*A005823(n+1))` -/
def P15868916740921896299.Spec : Prop :=
  ∀ n, P15868916740921896299.a n = A342802 n

end A342802

/-!
# A342804: Number of solutions to 1 +-*/ 2 +-*/ 3 +-*/ ... +-*/ n = 0.

The programs for A342804, there is no canonical definition to state claims against.
-/

/-! ## A342804.P9950513890525153506

`A053616(or(n, A052891(n)))`
-/

namespace A342804.P9950513890525153506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (Int.lor (n : ℤ) (A052891 n)).toNat

end

end A342804.P9950513890525153506

/-! ## A342804.P5601146260460229540

`A220845(or(n, A321410(n)))`
-/

namespace A342804.P5601146260460229540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (Int.lor (n : ℤ) (A321410 n)).toNat

end

end A342804.P5601146260460229540

/-! ## A342804.P15833099296784946660

`A307828(C(A069571(n+1), ceil(n/2)))`
-/

namespace A342804.P15833099296784946660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307828 (Nat.choose (A069571 (n + 1)).toNat ⌈(n : ℚ) / 2⌉.toNat)

end

end A342804.P15833099296784946660

/-! ## A342804.P14514029120032831929

`A242753(A148509(n)+A148470(n))`
-/

namespace A342804.P14514029120032831929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242753 (A148509 n + A148470 n).toNat

end

end A342804.P14514029120032831929

/-! ## A342804.P8295775005470178562

`A335464(n)+A063725(A325790(n))`
-/

namespace A342804.P8295775005470178562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335464 n + A063725 (A325790 n).toNat

end

end A342804.P8295775005470178562

/-!
# A342806: Integers m such that A342805(m) = m+3.

The programs for A342806, there is no canonical definition to state claims against.
-/

/-! ## A342806.P14724683668022043505

`∩[A117748(n+1), A195527(n+1)]`
-/

namespace A342806.P14724683668022043505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342806.P14724683668022043505

/-!
# A342807: Number of self-avoiding walks on a 3-dimensional cubic lattice where the walk consists of steps with incrementing length from 1 to n.

The programs for A342807, there is no canonical definition to state claims against.
-/

/-! ## A342807.P4069366648756047849

`A167897(n)-A000384(A058343(3*(n+1)))`
-/

namespace A342807.P4069366648756047849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167897 n - A000384 (A058343 (3 * (n + 1))).toNat

end

end A342807.P4069366648756047849

/-!
# A342810: Numbers k that divide the smallest number whose sum of digits is k.

The programs for A342810, there is no canonical definition to state claims against.
-/

/-! ## A342810.P7411681793735458265

`eq[A002998(n+1), A051885(n+1)]+1`
-/

namespace A342810.P7411681793735458265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342810.P7411681793735458265

/-! ## A342810.P10507435312241070725

`eq[A002998(n), A051885(A028310(n))]`
-/

namespace A342810.P10507435312241070725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342810.P10507435312241070725

/-! ## A342810.P1668729461045518268

`A247945(A287336(n+1))`
-/

namespace A342810.P1668729461045518268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247945 (A287336 (n + 1)).toNat

end

end A342810.P1668729461045518268

/-! ## A342810.P4175242970282435136

`record[gcd(n+1, A081926(A000124(n)))]`
-/

namespace A342810.P4175242970282435136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A081926 (A000124 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342810.P4175242970282435136

/-! ## A342810.P11823292400924129312

`∩[A097518(n+1), A325328(n+1)]`
-/

namespace A342810.P11823292400924129312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342810.P11823292400924129312

/-!
# A342812: Volume of the (n-1)-dimensional associahedron in the Loday realization, multiplied by (n-1)!.

The programs for A342812, there is no canonical definition to state claims against.
-/

/-! ## A342812.P8971758847153645254

`A006122(n)-A238766(A006121(n))`
-/

namespace A342812.P8971758847153645254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006122 n - A238766 (A006121 n).toNat

end

end A342812.P8971758847153645254

/-!
# A342815: Numbers of the form (2^(2*j + 6*k + 5) - 2^(2*j + 1) - 3)/9, with j,k >= 0.

The programs for A342815, there is no canonical definition to state claims against.
-/

/-! ## A342815.P14675691920262474868

`A172143(A184410(n+1)%A228872(2*(n+1)))`
-/

namespace A342815.P14675691920262474868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172143 (Int.tmod (A184410 (n + 1)) (A228872 (2 * (n + 1)))).toNat

end

end A342815.P14675691920262474868

/-! ## A342815.P1040513457767418615

`∩[A031449(n+1), A062053(n+1)]`
-/

namespace A342815.P1040513457767418615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342815.P1040513457767418615

/-! ## A342815.P1877395647344595609

`∩[A031449(n+1), A172143(n+1)]`
-/

namespace A342815.P1877395647344595609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342815.P1877395647344595609

/-! ## A342815.P17642074740217621621

`∩[A031449(n+1), A198584(n+1)]`
-/

namespace A342815.P17642074740217621621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342815.P17642074740217621621

/-! ## A342815.P4062115565472713417

`A172143(A184410(n+1))%A342816(2*n+1)`
-/

namespace A342815.P4062115565472713417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172143 (A184410 (n + 1)).toNat) (A342816 (2 * n + 1))

end

end A342815.P4062115565472713417

/-!
# A342816: Numbers of the form (2^(2*j + 6*k + 10) - 2^(2*j + 2) - 3)/9, with j,k >= 0.

The programs for A342816, there is no canonical definition to state claims against.
-/

/-! ## A342816.P16201266687673942152

`A228872(A184410(n+1))`
-/

namespace A342816.P16201266687673942152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228872 (A184410 (n + 1)).toNat

end

end A342816.P16201266687673942152

/-!
# A342817: Power series expansion of AQM(1,1-8x) where AQM denotes the arithmetic-quadratic mean.

The programs for A342817, there is no canonical definition to state claims against.
-/

/-! ## A342817.P3336283028171011203

`A328596(A189911(n))-A036044(n+3)`
-/

namespace A342817.P3336283028171011203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A189911 n).toNat - A036044 (n + 3)

end

end A342817.P3336283028171011203

/-!
# A342819: Table read by ascending antidiagonals: T(k, n) is the number of distinct values of the magic constant in a perimeter-magic k-gon of order n.

The programs for A342819, there is no canonical definition to state claims against.
-/

/-! ## A342819.P2095064225437963239

`A342758(n+3)+1-A342757(n+3)`
-/

namespace A342819.P2095064225437963239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342758 (n + 3) + (1 - A342757 (n + 3))

end

end A342819.P2095064225437963239

/-! ## A342819.P14669995685498982599

`A342758(n+3)+A024000(A342757(n+3))`
-/

namespace A342819.P14669995685498982599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342758 (n + 3) + A024000 (A342757 (n + 3)).toNat

end

end A342819.P14669995685498982599

/-! ## A342819.P12138565315889407519

`A020725(A342758(n+3)-A342757(n+3))`
-/

namespace A342819.P12138565315889407519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A342758 (n + 3) - A342757 (n + 3)).toNat

end

end A342819.P12138565315889407519

/-! ## A342819.P7084531931123345140

`A065475(A342758(n+3)-A342757(n+3))`
-/

namespace A342819.P7084531931123345140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A342758 (n + 3) - A342757 (n + 3)).toNat

end

end A342819.P7084531931123345140

/-! ## A342819.P16716804454945308253

`A020725(A342758(n+3)%A342757(n+3))`
-/

namespace A342819.P16716804454945308253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Int.tmod (A342758 (n + 3)) (A342757 (n + 3))).toNat

end

end A342819.P16716804454945308253

/-!
# A342820: Frobenius number of the triangular numbers (A000217) starting with the n-th term.

The programs for A342820, there is no canonical definition to state claims against.
-/

/-! ## A342820.P15736813260680188282

`A249112(A041226(n))+A023551(n+1)`
-/

namespace A342820.P15736813260680188282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249112 (A041226 n).toNat + A023551 (n + 1)

end

end A342820.P15736813260680188282

/-!
# A342821: a(n) is the least prime p such that p*n+(n-1) and p*n-(n-1) are both prime, or 0 if there is no such p.

The programs for A342821, there is no canonical definition to state claims against.
-/

/-! ## A342821.P11025170085423850319

`p?[A050412(∑[A058529(n+1)])]`
-/

namespace A342821.P11025170085423850319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342821.P11025170085423850319

/-!
# A342822: a(n) is the least k such that A342821(k) = prime(n).

The programs for A342822, there is no canonical definition to state claims against.
-/

/-! ## A342822.P14021306304127652945

`A212295(A077947(n))+A027379(n)`
-/

namespace A342822.P14021306304127652945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212295 (A077947 n).toNat + A027379 n

end

end A342822.P14021306304127652945

/-! ## A342822.P2972516894167298780

`or(A006156(n), A108652(A012248(n)))`
-/

namespace A342822.P2972516894167298780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006156 n) (A108652 (A012248 n).toNat)

end

end A342822.P2972516894167298780

/-! ## A342822.P14018107445025442497

`or(A007318(A066304(n)), A278484(n))`
-/

namespace A342822.P14018107445025442497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A066304 n).toNat) (A278484 n)

end

end A342822.P14018107445025442497

/-!
# A342823: Primes p such that A001414(p+1) = A001414(p-1) - 1.

The programs for A342823, there is no canonical definition to state claims against.
-/

/-! ## A342823.P15680032063480412154

`p?[2*A020700(n+1)+1]`
-/

namespace A342823.P15680032063480412154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020700 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342823.P15680032063480412154

/-! ## A342823.P1697367592888638661

`A045344(eq[A210934(n+1)+1, A210936(n+1)])`
-/

namespace A342823.P1697367592888638661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342823.P1697367592888638661

/-! ## A342823.P5997950154843238067

`p?[A005408(A020700(n+1))]`
-/

namespace A342823.P5997950154843238067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A020700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342823.P5997950154843238067

/-!
# A342824: Number of ways n appears as a cross-polytope number (A142978).

The programs for A342824, there is no canonical definition to state claims against.
-/

/-! ## A342824.P18125901444788980558

`A001221(A118088(3*n+2)+A005940(2*(n+1)))`
-/

namespace A342824.P18125901444788980558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A118088 (3 * n + 2) + A005940 (2 * (n + 1))).toNat

end

end A342824.P18125901444788980558

/-! ## A342824.P16103461779626743809

`A061395(A029744(n+1)*A188550(2*(n+3)))`
-/

namespace A342824.P16103461779626743809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A029744 (n + 1) * A188550 (2 * (n + 3))).toNat

end

end A342824.P16103461779626743809

/-! ## A342824.P12556436737352839707

`A001221(A360738(3*n+5)+A360737(3*n+4))`
-/

namespace A342824.P12556436737352839707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A360738 (3 * n + 5) + A360737 (3 * n + 4)).toNat

end

end A342824.P12556436737352839707

/-! ## A342824.P16039950478400165263

`A072410(A066729(n+1)+1)`
-/

namespace A342824.P16039950478400165263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072410 (A066729 (n + 1) + 1).toNat

end

end A342824.P16039950478400165263

/-!
# A342828: a(n) = Sum_{d|n} (-1)^(n/d+1) * d^(n-d).

The programs for A342828, the canonical program `A342828.P16877716919780074245` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342828 has offset 1).

The definition of A342828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342828.P16877716919780074245

`∑{d}[n+1, (-1)^((n+1)/#+1)*#^(n+1-#)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342828

/-- `∑{d}[n+1, (-1)^((n+1)/#+1)*#^(n+1-#)]` -/
def P16877716919780074245.Spec : Prop :=
  ∀ n, P16877716919780074245.a n = (A342828 (n + 1) : ℝ)

end A342828

/-!
# A342829: a(n) is the smallest number whose sum of digits is equal to the sum of digits of n.

The programs for A342829, the canonical program `A342829.P12614251947176065874` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342829 has offset 1).

The definition of A342829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342829.P12614251947176065874

`A051885(A007953(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342829

/-- `A051885(A007953(n+1))` -/
def P12614251947176065874.Spec : Prop :=
  ∀ n, P12614251947176065874.a n = A342829 (n + 1)

theorem P12614251947176065874.correct : P12614251947176065874.Spec := by
  intro n
  simp only [A342829, Nat.add_sub_cancel]

end A342829

/-! ## A342829.P12276101899624756662

`A051885(∑{digits}[n+1, #])`
-/

namespace A342829.P12276101899624756662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A342829.P12276101899624756662

namespace A342829

/-- `A051885(∑{digits}[n+1, #])` -/
def P12276101899624756662.Spec : Prop :=
  ∀ n, P12276101899624756662.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P11094344824814966686

`A051885(Δ[A037123(n)])`
-/

namespace A342829.P11094344824814966686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (n + 1) - f1 n).toNat

end

end A342829.P11094344824814966686

namespace A342829

/-- `A051885(Δ[A037123(n)])` -/
def P11094344824814966686.Spec : Prop :=
  ∀ n, P11094344824814966686.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P15338176421356724713

`A037124(A007953(n+1)+1)-1`
-/

namespace A342829.P15338176421356724713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A007953 (n + 1) + 1).toNat - 1

end

end A342829.P15338176421356724713

namespace A342829

/-- `A037124(A007953(n+1)+1)-1` -/
def P15338176421356724713.Spec : Prop :=
  ∀ n, P15338176421356724713.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P16946703090268570025

`A051885(A062028(n+1)-(n+1))`
-/

namespace A342829.P16946703090268570025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A062028 (n + 1) - (n + 1 : ℤ)).toNat

end

end A342829.P16946703090268570025

namespace A342829

/-- `A051885(A062028(n+1)-(n+1))` -/
def P16946703090268570025.Spec : Prop :=
  ∀ n, P16946703090268570025.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P5641205920995377964

`A051885(A037123(n+1)-A037123(n))`
-/

namespace A342829.P5641205920995377964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A037123 (n + 1) - A037123 n).toNat

end

end A342829.P5641205920995377964

namespace A342829

/-- `A051885(A037123(n+1)-A037123(n))` -/
def P5641205920995377964.Spec : Prop :=
  ∀ n, P5641205920995377964.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P387320526929158152

`A051885(A179987(A179977(n+1)))`
-/

namespace A342829.P387320526929158152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A179987 (A179977 (n + 1)).toNat).toNat

end

end A342829.P387320526929158152

namespace A342829

/-- `A051885(A179987(A179977(n+1)))` -/
def P387320526929158152.Spec : Prop :=
  ∀ n, P387320526929158152.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P13293428353513175059

`A108971(A179988(A007953(A179977(A108971(n+1)))))`
-/

namespace A342829.P13293428353513175059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (A179988 (A007953 (A179977 (A108971 (n + 1)).toNat).toNat).toNat).toNat

end

end A342829.P13293428353513175059

namespace A342829

/-- `A108971(A179988(A007953(A179977(A108971(n+1)))))` -/
def P13293428353513175059.Spec : Prop :=
  ∀ n, P13293428353513175059.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P4349212108901238488

`A051885(A001222(A069877(n+1)))`
-/

namespace A342829.P4349212108901238488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A001222 (A069877 (n + 1)).toNat).toNat

end

end A342829.P4349212108901238488

namespace A342829

/-- `A051885(A001222(A069877(n+1)))` -/
def P4349212108901238488.Spec : Prop :=
  ∀ n, P4349212108901238488.a n = A342829 (n + 1)

end A342829

/-! ## A342829.P16957110915473506488

`A051885(A000120(A305493(n+1)))`
-/

namespace A342829.P16957110915473506488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000120 (A305493 (n + 1)).toNat).toNat

end

end A342829.P16957110915473506488

namespace A342829

/-- `A051885(A000120(A305493(n+1)))` -/
def P16957110915473506488.Spec : Prop :=
  ∀ n, P16957110915473506488.a n = A342829 (n + 1)

end A342829

/-!
# A342831: a(n) is the smallest positive integer k such that the n-dimensional cube [0,k]^n contains at least as many internal lattice points as external lattice points.

The programs for A342831, the canonical program `A342831.P12803060676768052576` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342831 has offset 1).

The definition of A342831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342831.P12803060676768052576

`A078608(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342831

/-- `A078608(n+1)+1` -/
def P12803060676768052576.Spec : Prop :=
  ∀ n, P12803060676768052576.a n = A342831 (n + 1)

theorem P12803060676768052576.correct : P12803060676768052576.Spec := by
  intro n
  simp only [A342831, Nat.add_sub_cancel]

end A342831

/-! ## A342831.P17329421945344791882

`ceil((n+1)/log(sqrt(2)))`
-/

namespace A342831.P17329421945344791882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.log (Real.sqrt (2 : ℝ))⌉

end

end A342831.P17329421945344791882

namespace A342831

/-- `ceil((n+1)/log(sqrt(2)))` -/
def P17329421945344791882.Spec : Prop :=
  ∀ n, P17329421945344791882.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P10603549666052402361

`floor(A008574(n+1)/log(4))+1`
-/

namespace A342831.P10603549666052402361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008574 (n + 1) : ℝ) / Real.log (4 : ℝ)⌋ + 1

end

end A342831.P10603549666052402361

namespace A342831

/-- `floor(A008574(n+1)/log(4))+1` -/
def P10603549666052402361.Spec : Prop :=
  ∀ n, P10603549666052402361.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P1584324827544751947

`A307513(2*(n+1))+1`
-/

namespace A342831.P1584324827544751947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (2 * (n + 1)) + 1

end

end A342831.P1584324827544751947

namespace A342831

/-- `A307513(2*(n+1))+1` -/
def P1584324827544751947.Spec : Prop :=
  ∀ n, P1584324827544751947.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P4047686399910968814

`A059542(2*(n+1))-Δ[n²]`
-/

namespace A342831.P4047686399910968814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A342831.P4047686399910968814

namespace A342831

/-- `A059542(2*(n+1))-Δ[n²]` -/
def P4047686399910968814.Spec : Prop :=
  ∀ n, P4047686399910968814.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P9065608043227309279

`A059542(2*(n+1))+2-A005408(n+1)`
-/

namespace A342831.P9065608043227309279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (2 * (n + 1)) + 2 - A005408 (n + 1)

end

end A342831.P9065608043227309279

namespace A342831

/-- `A059542(2*(n+1))+2-A005408(n+1)` -/
def P9065608043227309279.Spec : Prop :=
  ∀ n, P9065608043227309279.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P10748575978601198260

`A020725(A078608(n+1))`
-/

namespace A342831.P10748575978601198260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A078608 (n + 1)).toNat

end

end A342831.P10748575978601198260

namespace A342831

/-- `A020725(A078608(n+1))` -/
def P10748575978601198260.Spec : Prop :=
  ∀ n, P10748575978601198260.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P3234854484364513600

`A020725(A307513(2*(n+1)))`
-/

namespace A342831.P3234854484364513600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A307513 (2 * (n + 1))).toNat

end

end A342831.P3234854484364513600

namespace A342831

/-- `A020725(A307513(2*(n+1)))` -/
def P3234854484364513600.Spec : Prop :=
  ∀ n, P3234854484364513600.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P17350327165284176014

`A373112(2*(n+1))`
-/

namespace A342831.P17350327165284176014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373112 (2 * (n + 1))

end

end A342831.P17350327165284176014

namespace A342831

/-- `A373112(2*(n+1))` -/
def P17350327165284176014.Spec : Prop :=
  ∀ n, P17350327165284176014.a n = A342831 (n + 1)

end A342831

/-! ## A342831.P3026653205214855482

`A008619(floor(4*(n+1)/log(2)))`
-/

namespace A342831.P3026653205214855482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊4 * ((n + 1 : ℝ) / Real.log (2 : ℝ))⌋.toNat

end

end A342831.P3026653205214855482

namespace A342831

/-- `A008619(floor(4*(n+1)/log(2)))` -/
def P3026653205214855482.Spec : Prop :=
  ∀ n, P3026653205214855482.a n = A342831 (n + 1)

end A342831

/-!
# A342832: Sums of two distinct odd fourth powers.

The programs for A342832, there is no canonical definition to state claims against.
-/

/-! ## A342832.P9929936551779163381

`∩[A088687(n+1), A343588(n+1)]`
-/

namespace A342832.P9929936551779163381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342832.P9929936551779163381

/-! ## A342832.P12326580392947425755

`filter[A343588(n+1), A361023(#)]`
-/

namespace A342832.P12326580392947425755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A342832.P12326580392947425755

/-! ## A342832.P4789877303466441418

`filter[A088687(n+1), A391844(#)]`
-/

namespace A342832.P4789877303466441418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A342832.P4789877303466441418

/-! ## A342832.P14632473662639107883

`filter[A343588(n+2), A348737(#)]`
-/

namespace A342832.P14632473662639107883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A342832.P14632473662639107883

/-! ## A342832.P15381084098030187616

`A343588(comp[∑[n]]%A253319(n+1))`
-/

namespace A342832.P15381084098030187616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343588 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A253319 (n + 1))).toNat

end

end A342832.P15381084098030187616

/-!
# A342833: Integers m such that the number of divisors whose last digit equals the last digit of m sets a new record.

The programs for A342833, there is no canonical definition to state claims against.
-/

/-! ## A342833.P14763450761663773972

`A335491(A002183(n+1))`
-/

namespace A342833.P14763450761663773972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335491 (A002183 (n + 1)).toNat

end

end A342833.P14763450761663773972

/-! ## A342833.P11806868620265240602

`A335491(A349607(n+1))`
-/

namespace A342833.P11806868620265240602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335491 (A349607 (n + 1)).toNat

end

end A342833.P11806868620265240602

/-! ## A342833.P10356007502488534520

`A335491(record[A000005(n+1)])`
-/

namespace A342833.P10356007502488534520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342833.P10356007502488534520

/-! ## A342833.P113753817644263634

`A335491(record[A053212(n+1)])`
-/

namespace A342833.P113753817644263634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342833.P113753817644263634

/-! ## A342833.P12200539499132966025

`A335491(A000005(A002182(n+1)))`
-/

namespace A342833.P12200539499132966025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335491 (A000005 (A002182 (n + 1)).toNat).toNat

end

end A342833.P12200539499132966025

/-!
# A342835: a(n) is the number of divisors of A342834(n).

The programs for A342835, there is no canonical definition to state claims against.
-/

/-! ## A342835.P15340088460946512946

`A080100(A124123(2*n+1)+A081537(n+1))`
-/

namespace A342835.P15340088460946512946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A124123 (2 * n + 1) + A081537 (n + 1)).toNat

end

end A342835.P15340088460946512946

/-! ## A342835.P17359888474373235946

`A330772(A003381(n+1)%A250174(3*(n+1)))`
-/

namespace A342835.P17359888474373235946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330772 (Int.tmod (A003381 (n + 1)) (A250174 (3 * (n + 1)))).toNat

end

end A342835.P17359888474373235946

/-!
# A342840: Irregular triangle: T(n,k) is the number of permutations in S_n that have exactly k occurrences of the pattern 4213. 0 <= k <= A342646(n).

The programs for A342840, there is no canonical definition to state claims against.
-/

/-! ## A342840.P11003121166474557063

`A342861(n)-A286561(A075253(n))`
-/

namespace A342840.P11003121166474557063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342861 n - A286561 (A075253 n).toNat

end

end A342840.P11003121166474557063

/-! ## A342840.P6030681416543711169

`A342861(A351870(n))-A037817(n+1)`
-/

namespace A342840.P6030681416543711169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342861 (A351870 n).toNat - A037817 (n + 1)

end

end A342840.P6030681416543711169

/-! ## A342840.P9778784266745267216

`A342861(n)-A185284(A326535(2*(n+1)))`
-/

namespace A342840.P9778784266745267216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342861 n - A185284 (A326535 (2 * (n + 1))).toNat

end

end A342840.P9778784266745267216

/-!
# A342841: Number of ordered triples (x, y, z) with gcd(x, y, z) = 1 and 1 <= {x, y, z} <= 10^n.

The programs for A342841, the canonical program `A342841.P13510655320763711264` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342841 has offset 0).

The definition of A342841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342841.P13510655320763711264

`A071778(10^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342841

/-- `A071778(10^n)` -/
def P13510655320763711264.Spec : Prop :=
  ∀ n, P13510655320763711264.a n = A342841 n

theorem P13510655320763711264.correct : P13510655320763711264.Spec := by
  intro n
  simp only [A342841]

end A342841

/-!
# A342844: Composite numbers not divisible by any of their nonzero digits.

The programs for A342844, there is no canonical definition to state claims against.
-/

/-! ## A342844.P16643324054672033622

`filter[A038772(n+1), A005171(#)]`
-/

namespace A342844.P16643324054672033622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A342844.P16643324054672033622

/-! ## A342844.P5006727113861874472

`filter[A038772(n+1), A066247(#)]`
-/

namespace A342844.P5006727113861874472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A342844.P5006727113861874472

/-! ## A342844.P11854344399546881862

`filter[A038772(n+1), A202238(#)]`
-/

namespace A342844.P11854344399546881862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A342844.P11854344399546881862

/-! ## A342844.P3342077143093806749

`record[A191558(Δ[A176660(n+1)])]`
-/

namespace A342844.P3342077143093806749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176660 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342844.P3342077143093806749

/-! ## A342844.P16277455114275611648

`∩[A002808(n+1), A038772(n+1)]`
-/

namespace A342844.P16277455114275611648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P16277455114275611648

/-! ## A342844.P3106217370394813717

`∩[A018252(n+1), A038772(n+1)]`
-/

namespace A342844.P3106217370394813717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P3106217370394813717

/-! ## A342844.P17688724037509593298

`∩[A038772(n+1), A056653(n+1)]`
-/

namespace A342844.P17688724037509593298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P17688724037509593298

/-! ## A342844.P14289677838523566856

`∩[A038772(n+1), A062973(n+1)]`
-/

namespace A342844.P14289677838523566856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P14289677838523566856

/-! ## A342844.P8065102283989515857

`∩[A038772(n+1), A065090(n+1)]`
-/

namespace A342844.P8065102283989515857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P8065102283989515857

/-! ## A342844.P26388899736294294

`∩[A038772(n+1), A138592(n+1)]`
-/

namespace A342844.P26388899736294294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P26388899736294294

/-! ## A342844.P8731815046842065824

`∩[A038772(n+1), A141468(n+1)]`
-/

namespace A342844.P8731815046842065824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P8731815046842065824

/-! ## A342844.P6892244647558182408

`∩[A038772(n+1), A171581(n+1)]`
-/

namespace A342844.P6892244647558182408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P6892244647558182408

/-! ## A342844.P1614163498043851293

`∩[A038772(n+1), A173905(n+1)]`
-/

namespace A342844.P1614163498043851293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P1614163498043851293

/-! ## A342844.P6935642870984976924

`∩[A038772(n+1), A176423(n+1)]`
-/

namespace A342844.P6935642870984976924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P6935642870984976924

/-! ## A342844.P5054264146144118705

`∩[A038772(n+1), A343311(n+1)]`
-/

namespace A342844.P5054264146144118705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P5054264146144118705

/-! ## A342844.P3145858421369379879

`∩[A038772(n+1), A387319(n+1)]`
-/

namespace A342844.P3145858421369379879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P3145858421369379879

/-! ## A342844.P8307414545658603251

`∩[A038772(n+1), A391939(n+1)]`
-/

namespace A342844.P8307414545658603251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P8307414545658603251

/-! ## A342844.P2012662141263317924

`∩[A038772(n+1), A111774(n+1)]`
-/

namespace A342844.P2012662141263317924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342844.P2012662141263317924

/-! ## A342844.P15816045101933722692

`A026239(p?[A026239(A038772(n+1))])`
-/

namespace A342844.P15816045101933722692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A038772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342844.P15816045101933722692

/-!
# A342845: Number of distinct even numbers visible as proper substrings of n.

The programs for A342845, there is no canonical definition to state claims against.
-/

/-! ## A342845.P14497866476925699050

`A061420(A045887(n))%A351005(floor(n/2))`
-/

namespace A342845.P14497866476925699050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061420 (A045887 n).toNat) (A351005 ⌊(n : ℚ) / 2⌋.toNat)

end

end A342845.P14497866476925699050

/-! ## A342845.P10536182424333699758

`A061420(A045887(n))%A001845(A000695(n))`
-/

namespace A342845.P10536182424333699758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061420 (A045887 n).toNat) (A001845 (A000695 n).toNat)

end

end A342845.P10536182424333699758

/-! ## A342845.P10113981316023189390

`A124757(A102376(n)+A045887(n))`
-/

namespace A342845.P10113981316023189390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A102376 n + A045887 n).toNat

end

end A342845.P10113981316023189390

/-! ## A342845.P15707046937145280513

`A124757(or(A045887(n), A102376(n)))`
-/

namespace A342845.P15707046937145280513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (Int.lor (A045887 n) (A102376 n)).toNat

end

end A342845.P15707046937145280513

/-! ## A342845.P4174291312626265819

`A124757(xor(A045887(n), A102376(n)))`
-/

namespace A342845.P4174291312626265819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (Int.xor (A045887 n) (A102376 n)).toNat

end

end A342845.P4174291312626265819

/-! ## A342845.P8475020140252428050

`gcd(A061420(A045887(n)), A217156((n+1)/∏{p}[n+1, #]))`
-/

namespace A342845.P8475020140252428050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061420 (A045887 n).toNat) (A217156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A342845.P8475020140252428050

/-! ## A342845.P2078798607944202438

`A057192(5^A045887(n))`
-/

namespace A342845.P2078798607944202438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057192 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A045887 n : ℤ))).toNat

end

end A342845.P2078798607944202438

/-! ## A342845.P1977323451991250505

`A033264(9^A045887(n))`
-/

namespace A342845.P1977323451991250505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A045887 n : ℤ))).toNat

end

end A342845.P1977323451991250505

/-! ## A342845.P6758024410607914934

`A008611(A036236(A045887(n)))`
-/

namespace A342845.P6758024410607914934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A036236 (A045887 n).toNat).toNat

end

end A342845.P6758024410607914934

/-! ## A342845.P10256033842483304724

`A001221(A001937(A045887(n)²))`
-/

namespace A342845.P10256033842483304724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001937 (A045887 n ^ 2).toNat).toNat

end

end A342845.P10256033842483304724

/-! ## A342845.P7756135059972221844

`A001222(A002512(A045887(n)²))`
-/

namespace A342845.P7756135059972221844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002512 (A045887 n ^ 2).toNat).toNat

end

end A342845.P7756135059972221844

/-! ## A342845.P15240822165142423297

`A001221(A006127(A045887(n)²))`
-/

namespace A342845.P15240822165142423297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006127 (A045887 n ^ 2).toNat).toNat

end

end A342845.P15240822165142423297

/-! ## A342845.P13453867463523634446

`A001222(A057721(A045887(n)²))`
-/

namespace A342845.P13453867463523634446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A057721 (A045887 n ^ 2).toNat).toNat

end

end A342845.P13453867463523634446

/-! ## A342845.P13962440057751623699

`A001221(A068060(A045887(n)²))`
-/

namespace A342845.P13962440057751623699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A068060 (A045887 n ^ 2).toNat).toNat

end

end A342845.P13962440057751623699

/-! ## A342845.P17290006390709656675

`A001222(A084239(A045887(n)²))`
-/

namespace A342845.P17290006390709656675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084239 (A045887 n ^ 2).toNat).toNat

end

end A342845.P17290006390709656675

/-! ## A342845.P610915965731251465

`A001221(A036561(A045887(n))!)`
-/

namespace A342845.P610915965731251465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A036561 (A045887 n).toNat).toNat)

end

end A342845.P610915965731251465

/-!
# A342847: Value of r in best integer approximation r^s to n! with s >= r.

The programs for A342847, there is no canonical definition to state claims against.
-/

/-! ## A342847.P11644883000996430180

`ceil(root(A001710(n), A342848(n)))`
-/

namespace A342847.P11644883000996430180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001710 n : ℝ) ^ (1 / (A342848 n : ℝ))⌉

end

end A342847.P11644883000996430180

/-! ## A342847.P6722377626591515438

`ceil(root(A076901(n), A342848(n)))`
-/

namespace A342847.P6722377626591515438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076901 n : ℝ) ^ (1 / (A342848 n : ℝ))⌉

end

end A342847.P6722377626591515438

/-! ## A342847.P2362121936879542057

`round(root(A000142(n), A342848(n)))`
-/

namespace A342847.P2362121936879542057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000142 n : ℝ) ^ (1 / (A342848 n : ℝ)))

end

end A342847.P2362121936879542057

/-! ## A342847.P7258989061653297234

`root(A000142(n)-A342849(n), A342848(n))`
-/

namespace A342847.P7258989061653297234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000142 n - A342849 n : ℝ) ^ (1 / (A342848 n : ℝ))

end

end A342847.P7258989061653297234

/-!
# A342849: Value of n!-r^s in best integer approximation r^s to n! with s >= r.

The programs for A342849, there is no canonical definition to state claims against.
-/

/-! ## A342849.P13248230743196597110

`n!-A342847(n)^A342848(n)`
-/

namespace A342849.P13248230743196597110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (A342847 n : ℚ) ^ (A342848 n : ℤ)

end

end A342849.P13248230743196597110

/-! ## A342849.P15244189653245836805

`A000142(n)-A342847(n)^A342848(n)`
-/

namespace A342849.P15244189653245836805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) - (A342847 n : ℚ) ^ (A342848 n : ℤ)

end

end A342849.P15244189653245836805

/-! ## A342849.P12129747710151558982

`A033312(n)+1-A342847(n)^A342848(n)`
-/

namespace A342849.P12129747710151558982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033312 n + 1 : ℚ) - (A342847 n : ℚ) ^ (A342848 n : ℤ)

end

end A342849.P12129747710151558982

/-!
# A342850: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 3-point set and none of the removed edges are incident to the same vertex in the other set.

The programs for A342850, the canonical program `A342850.P5662466502594165249` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342850 has offset 4).

The definition of A342850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342850.P5662466502594165249

`27*7^(n+1)-3^(n+3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342850

/-- `27*7^(n+1)-3^(n+3)` -/
def P5662466502594165249.Spec : Prop :=
  ∀ n, P5662466502594165249.a n = A342850 (n + 4)

theorem P5662466502594165249.correct : P5662466502594165249.Spec := by
  intro n
  simp only [A342850, Nat.add_sub_cancel]

end A342850

/-! ## A342850.P10848618601111341918

`Δ[ogf(18/(1-10x+21x^2))]`
-/

namespace A342850.P10848618601111341918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [18] [1, -10, 21] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342850.P10848618601111341918

namespace A342850

/-- `Δ[ogf(18/(1-10x+21x^2))]` -/
def P10848618601111341918.Spec : Prop :=
  ∀ n, P10848618601111341918.a n = A342850 (n + 4)

end A342850

/-! ## A342850.P11868217381544955676

`Δ[18*A016138(n)]`
-/

namespace A342850.P11868217381544955676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A016138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342850.P11868217381544955676

namespace A342850

/-- `Δ[18*A016138(n)]` -/
def P11868217381544955676.Spec : Prop :=
  ∀ n, P11868217381544955676.a n = A342850 (n + 4)

end A342850

/-! ## A342850.P4142800050149117658

`18*A165147(n+1)`
-/

namespace A342850.P4142800050149117658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A165147 (n + 1)

end

end A342850.P4142800050149117658

namespace A342850

/-- `18*A165147(n+1)` -/
def P4142800050149117658.Spec : Prop :=
  ∀ n, P4142800050149117658.a n = A342850 (n + 4)

end A342850

/-! ## A342850.P9510450033023062999

`Δ[Δ[9*A346796(n+1)]]`
-/

namespace A342850.P9510450033023062999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A346796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342850.P9510450033023062999

namespace A342850

/-- `Δ[Δ[9*A346796(n+1)]]` -/
def P9510450033023062999.Spec : Prop :=
  ∀ n, P9510450033023062999.a n = A342850 (n + 4)

end A342850

/-! ## A342850.P1667146320360396659

`18*(A016138(n+1)-A016138(n))`
-/

namespace A342850.P1667146320360396659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (A016138 (n + 1) - A016138 n)

end

end A342850.P1667146320360396659

namespace A342850

/-- `18*(A016138(n+1)-A016138(n))` -/
def P1667146320360396659.Spec : Prop :=
  ∀ n, P1667146320360396659.a n = A342850 (n + 4)

end A342850

/-!
# A342851: Remove duplicates in the decimal digit-reversal of n.

The programs for A342851, the canonical program `A342851.P3299205121731091990` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342851 has offset 1).

The definition of A342851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342851.P12632091263932421923

`comp[10*(n+1)]`
-/

namespace A342851.P12632091263932421923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342851.P12632091263932421923

namespace A342851

/-- `comp[10*(n+1)]` -/
def P12632091263932421923.Spec : Prop :=
  ∀ n, (P12632091263932421923.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P3299205121731091990

`lt[gcd(n, n%10), 10]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342851

/-- `lt[gcd(n, n%10), 10]` -/
def P3299205121731091990.Spec : Prop :=
  ∀ n, (P3299205121731091990.a n : ℤ) = A342851 (n + 1)

theorem P3299205121731091990.correct : P3299205121731091990.Spec := by
  intro n
  simp only [A342851, Nat.add_sub_cancel]

end A342851

/-! ## A342851.P5499546334354838553

`lt[2*n, lcm(10, n)+1]`
-/

namespace A342851.P5499546334354838553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342851.P5499546334354838553

namespace A342851

/-- `lt[2*n, lcm(10, n)+1]` -/
def P5499546334354838553.Spec : Prop :=
  ∀ n, (P5499546334354838553.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P17803950652157639213

`∪[A047201(n+1), A004273(n)]`
-/

namespace A342851.P17803950652157639213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P17803950652157639213

namespace A342851

/-- `∪[A047201(n+1), A004273(n)]` -/
def P17803950652157639213.Spec : Prop :=
  ∀ n, (P17803950652157639213.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P9367574228643605221

`∪[A047201(n+1), A004274(n)]`
-/

namespace A342851.P9367574228643605221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P9367574228643605221

namespace A342851

/-- `∪[A047201(n+1), A004274(n)]` -/
def P9367574228643605221.Spec : Prop :=
  ∀ n, (P9367574228643605221.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P14850199750853967876

`∪[A047201(n+1), A004276(n)]`
-/

namespace A342851.P14850199750853967876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P14850199750853967876

namespace A342851

/-- `∪[A047201(n+1), A004276(n)]` -/
def P14850199750853967876.Spec : Prop :=
  ∀ n, (P14850199750853967876.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P17373878179063121844

`∪[A000538(n), A067251(n+1)]`
-/

namespace A342851.P17373878179063121844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P17373878179063121844

namespace A342851

/-- `∪[A000538(n), A067251(n+1)]` -/
def P17373878179063121844.Spec : Prop :=
  ∀ n, (P17373878179063121844.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P6899703551866556718

`∪[A000542(n), A067251(n+1)]`
-/

namespace A342851.P6899703551866556718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P6899703551866556718

namespace A342851

/-- `∪[A000542(n), A067251(n+1)]` -/
def P6899703551866556718.Spec : Prop :=
  ∀ n, (P6899703551866556718.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P6156423754627613809

`∪[A000543(n), A067251(n+1)]`
-/

namespace A342851.P6156423754627613809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P6156423754627613809

namespace A342851

/-- `∪[A000543(n), A067251(n+1)]` -/
def P6156423754627613809.Spec : Prop :=
  ∀ n, (P6156423754627613809.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P15810193171944627171

`∪[A001095(n), A067251(n+1)]`
-/

namespace A342851.P15810193171944627171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P15810193171944627171

namespace A342851

/-- `∪[A001095(n), A067251(n+1)]` -/
def P15810193171944627171.Spec : Prop :=
  ∀ n, (P15810193171944627171.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P8839238532022390755

`∪[A004933(n), A067251(n+1)]`
-/

namespace A342851.P8839238532022390755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P8839238532022390755

namespace A342851

/-- `∪[A004933(n), A067251(n+1)]` -/
def P8839238532022390755.Spec : Prop :=
  ∀ n, (P8839238532022390755.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P2308913007651240051

`∪[A016770(n), A067251(n+1)]`
-/

namespace A342851.P2308913007651240051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342851.P2308913007651240051

namespace A342851

/-- `∪[A016770(n), A067251(n+1)]` -/
def P2308913007651240051.Spec : Prop :=
  ∀ n, (P2308913007651240051.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P404851706079577266

`A004086(A076641(n))`
-/

namespace A342851.P404851706079577266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A076641 n).toNat

end

end A342851.P404851706079577266

namespace A342851

/-- `A004086(A076641(n))` -/
def P404851706079577266.Spec : Prop :=
  ∀ n, P404851706079577266.a n = A342851 (n + 1)

end A342851

/-! ## A342851.P1128452220295543226

`record[A004086(A004086(n))]`
-/

namespace A342851.P1128452220295543226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342851.P1128452220295543226

namespace A342851

/-- `record[A004086(A004086(n))]` -/
def P1128452220295543226.Spec : Prop :=
  ∀ n, P1128452220295543226.a n = A342851 (n + 1)

end A342851

/-! ## A342851.P11869246255691671671

`record[n*A168184(n)]`
-/

namespace A342851.P11869246255691671671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342851.P11869246255691671671

namespace A342851

/-- `record[n*A168184(n)]` -/
def P11869246255691671671.Spec : Prop :=
  ∀ n, P11869246255691671671.a n = A342851 (n + 1)

end A342851

/-! ## A342851.P9176629397787448038

`lt[n, A020485(n)+1]`
-/

namespace A342851.P9176629397787448038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342851.P9176629397787448038

namespace A342851

/-- `lt[n, A020485(n)+1]` -/
def P9176629397787448038.Spec : Prop :=
  ∀ n, (P9176629397787448038.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P7369744640013426992

`lt[n, A063462(n)+1]`
-/

namespace A342851.P7369744640013426992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063462 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342851.P7369744640013426992

namespace A342851

/-- `lt[n, A063462(n)+1]` -/
def P7369744640013426992.Spec : Prop :=
  ∀ n, (P7369744640013426992.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P15127100905503766420

`lt[n, A067079(n)+1]`
-/

namespace A342851.P15127100905503766420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067079 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342851.P15127100905503766420

namespace A342851

/-- `lt[n, A067079(n)+1]` -/
def P15127100905503766420.Spec : Prop :=
  ∀ n, (P15127100905503766420.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P7301826016287341527

`eq[n, n*A040790(n)]`
-/

namespace A342851.P7301826016287341527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342851.P7301826016287341527

namespace A342851

/-- `eq[n, n*A040790(n)]` -/
def P7301826016287341527.Spec : Prop :=
  ∀ n, (P7301826016287341527.a n : ℤ) = A342851 (n + 1)

end A342851

/-! ## A342851.P3908225489075969087

`A059169(A315172(n))`
-/

namespace A342851.P3908225489075969087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A315172 n).toNat

end

end A342851.P3908225489075969087

namespace A342851

/-- `A059169(A315172(n))` -/
def P3908225489075969087.Spec : Prop :=
  ∀ n, P3908225489075969087.a n = A342851 (n + 1)

end A342851

/-!
# A342853: Maximal number of 1324 patterns in a permutation of 1,2,...,n.

The programs for A342853, there is no canonical definition to state claims against.
-/

/-! ## A342853.P18153768262846856428

`∑[∑[lt[A025892(n), 1]-(n+1)]]`
-/

namespace A342853.P18153768262846856428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342853.P18153768262846856428

/-! ## A342853.P9262103770043264333

`floor(∑[∏{e}[A000142(n), #+1]]/9)`
-/

namespace A342853.P9262103770043264333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9⌋

end

end A342853.P9262103770043264333

/-! ## A342853.P49301367467846480

`A319413(A018140(n))`
-/

namespace A342853.P49301367467846480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A018140 n).toNat

end

end A342853.P49301367467846480

/-! ## A342853.P14941259192654869996

`A003002(A393175(n))`
-/

namespace A342853.P14941259192654869996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A393175 n).toNat

end

end A342853.P14941259192654869996

/-! ## A342853.P10893681446067207587

`∑[A119466(A000628(n))]`
-/

namespace A342853.P10893681446067207587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (A000628 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342853.P10893681446067207587

/-!
# A342854: Maximal number of 2413 patterns in a permutation of 1,2,...,n.

The programs for A342854, there is no canonical definition to state claims against.
-/

/-! ## A342854.P11914568564558424617

`∑[A239958(A004906(n+1))]-A000124(n)`
-/

namespace A342854.P11914568564558424617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 (A004906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 n

end

end A342854.P11914568564558424617

/-! ## A342854.P1935322517652224852

`∑[A239958(A004906(n+1))-A028310(n)]`
-/

namespace A342854.P1935322517652224852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 (A004906 (n + 1)).toNat - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342854.P1935322517652224852

/-! ## A342854.P18208556085918491516

`∑[A239958(A004906(n+1))-A065033(2*n)]`
-/

namespace A342854.P18208556085918491516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 (A004906 (n + 1)).toNat - A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342854.P18208556085918491516

/-! ## A342854.P13818650409804005077

`A308760(n)+A091822(A118888(n+1))`
-/

namespace A342854.P13818650409804005077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308760 n + A091822 (A118888 (n + 1)).toNat

end

end A342854.P13818650409804005077

/-!
# A342855: Numbers that contain a digit 0 (A011540) and that are divisible by their nonzero digits (A002796).

The programs for A342855, there is no canonical definition to state claims against.
-/

/-! ## A342855.P17455720027737586637

`∩[A002796(n+1), A330562(n+1)]`
-/

namespace A342855.P17455720027737586637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342855.P17455720027737586637

/-! ## A342855.P10928532972774820855

`∩[A002796(n+1), A011540(n+1)]`
-/

namespace A342855.P10928532972774820855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342855.P10928532972774820855

/-! ## A342855.P4953944861162896244

`∩[A002796(n+1), A087140(n+1)]`
-/

namespace A342855.P4953944861162896244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342855.P4953944861162896244

/-! ## A342855.P1998158541979980487

`eq[A321243(n+1), A347323(n+1)]+1`
-/

namespace A342855.P1998158541979980487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342855.P1998158541979980487

/-! ## A342855.P6704973234373421022

`eq[A347323(n)+A007954(n), A000038(n)]`
-/

namespace A342855.P6704973234373421022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342855.P6704973234373421022

/-! ## A342855.P14635127055323198465

`eq[A347323(n)+A054054(n), A000038(n)]`
-/

namespace A342855.P14635127055323198465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342855.P14635127055323198465

/-! ## A342855.P9212067829076336166

`filter[A002796(n+1), A217096(#)]`
-/

namespace A342855.P9212067829076336166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A342855.P9212067829076336166

/-! ## A342855.P6439117952688122719

`eq[A347323(n)+A007954(n), A000007(n)]`
-/

namespace A342855.P6439117952688122719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342855.P6439117952688122719

/-! ## A342855.P5473118874319781884

`eq[A347323(n)+A054054(n), A000007(n)]`
-/

namespace A342855.P5473118874319781884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342855.P5473118874319781884

/-! ## A342855.P3218319851775847772

`eq[A347323(n)+A168046(n), A000007(n)]`
-/

namespace A342855.P3218319851775847772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342855.P3218319851775847772

/-!
# A342856: Factorial numbers n that are sqrt(n)-smooth.

The programs for A342856, there is no canonical definition to state claims against.
-/

/-! ## A342856.P13591755770490918984

`record[and(n!, -7)]`
-/

namespace A342856.P13591755770490918984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (-7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342856.P13591755770490918984

/-! ## A342856.P7017927303501231033

`record[or(6, n!)-6]`
-/

namespace A342856.P7017927303501231033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 (Nat.factorial n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342856.P7017927303501231033

/-! ## A342856.P14560001086988516745

`record[xor(6, n!)-6]`
-/

namespace A342856.P14560001086988516745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 (Nat.factorial n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342856.P14560001086988516745

/-! ## A342856.P10686895763512078981

`record[(C(3, n)+n)!]`
-/

namespace A342856.P10686895763512078981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 3 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342856.P10686895763512078981

/-! ## A342856.P5558901865925575243

`(3%(n+3)+n)!`
-/

namespace A342856.P5558901865925575243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 % (n + 3) + n)

end

end A342856.P5558901865925575243

/-! ## A342856.P1481764163536312335

`record[and(-7, ∏[n+1])]`
-/

namespace A342856.P1481764163536312335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342856.P1481764163536312335

/-! ## A342856.P4986018578762712083

`record[n!/C(4, n)!]`
-/

namespace A342856.P4986018578762712083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial (Nat.choose 4 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342856.P4986018578762712083

/-! ## A342856.P1280049808692691319

`ceil((n+3)*tanh(n))!`
-/

namespace A342856.P1280049808692691319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(n + 3 : ℝ) * Real.tanh (n : ℝ)⌉.toNat

end

end A342856.P1280049808692691319

/-! ## A342856.P2547692435612504155

`((n+3)*round(tanh(n)))!`
-/

namespace A342856.P2547692435612504155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 3 : ℤ) * SequenceMachineLib.roundAway (Real.tanh (n : ℝ))).toNat

end

end A342856.P2547692435612504155

/-! ## A342856.P3285671343323354171

`((n+3)^ceil(tanh(n)))!`
-/

namespace A342856.P3285671343323354171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ))).toNat

end

end A342856.P3285671343323354171

/-!
# A342859: Table read by antidiagonals: T(n,k) = max(n,k) if n < 2 or k < 2; T(n,k) = T(n-1,k-1) + T(n-1,k-2) + T(n-2,k-1) otherwise.

The programs for A342859, there is no canonical definition to state claims against.
-/

/-! ## A342859.P14784175186229314535

`A000120(A300811(n+1)-A154986(n))`
-/

namespace A342859.P14784175186229314535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A300811 (n + 1) - A154986 n).toNat

end

end A342859.P14784175186229314535

/-! ## A342859.P15476125972743169421

`A287272(A299905(n))+A003984(n)`
-/

namespace A342859.P15476125972743169421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A299905 n).toNat + A003984 n

end

end A342859.P15476125972743169421

/-! ## A342859.P16624271588514207988

`A287272(A299905(n))+A087061(n)`
-/

namespace A342859.P16624271588514207988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A299905 n).toNat + A087061 n

end

end A342859.P16624271588514207988

/-! ## A342859.P11586516034018121554

`A344838(n)+A287272(A299905(n))`
-/

namespace A342859.P11586516034018121554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n + A287272 (A299905 n).toNat

end

end A342859.P11586516034018121554

/-! ## A342859.P1936776594246885624

`A230403(A091441(n+1))`
-/

namespace A342859.P1936776594246885624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A091441 (n + 1)).toNat

end

end A342859.P1936776594246885624

/-!
# A342861: Irregular table read by rows: T(n,k) is the number of permutations in S_n that have exactly k occurrences of the pattern 1324. 0 <= k <= A342853(n).

The programs for A342861, there is no canonical definition to state claims against.
-/

/-! ## A342861.P18167213145663599402

`A342840(n)+A137579(A000078(n))`
-/

namespace A342861.P18167213145663599402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342840 n + A137579 (A000078 n).toNat

end

end A342861.P18167213145663599402

/-! ## A342861.P18435512614020151447

`or(A342840(n), A342845(A046029(n+3)))`
-/

namespace A342861.P18435512614020151447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A342840 n) (A342845 (A046029 (n + 3)).toNat)

end

end A342861.P18435512614020151447

/-! ## A342861.P1575914853130621731

`A342840(n)+A185246(A131799(3*n+1))`
-/

namespace A342861.P1575914853130621731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342840 n + A185246 (A131799 (3 * n + 1)).toNat

end

end A342861.P1575914853130621731

/-! ## A342861.P3846352294738329197

`A342840(n)+A091225(A092269(3*n+5))`
-/

namespace A342861.P3846352294738329197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342840 n + A091225 (A092269 (3 * n + 5)).toNat

end

end A342861.P3846352294738329197

/-! ## A342861.P6954280196611905415

`or(A079944(A047967(3*n+2)), A342840(n))`
-/

namespace A342861.P6954280196611905415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079944 (A047967 (3 * n + 2)).toNat) (A342840 n)

end

end A342861.P6954280196611905415

/-!
# A342862: Irregular table read by rows: T(n,k) is the number of permutations in S_n that have exactly k occurrences of the pattern 2143. 0 <= k <= A028723(n + 1).

The programs for A342862, there is no canonical definition to state claims against.
-/

/-! ## A342862.P12921968718288074319

`A342863(A342859(∑[n]))`
-/

namespace A342862.P12921968718288074319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 (A342859 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342862.P12921968718288074319

/-! ## A342862.P1794234226425822867

`A342863(A004906(n+1))`
-/

namespace A342862.P1794234226425822867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 (A004906 (n + 1)).toNat

end

end A342862.P1794234226425822867

/-! ## A342862.P452518380780364898

`A342863(A004917(n+1))`
-/

namespace A342862.P452518380780364898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 (A004917 (n + 1)).toNat

end

end A342862.P452518380780364898

/-! ## A342862.P17197697145613947624

`A342863(A348798(n)+n)`
-/

namespace A342862.P17197697145613947624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 (A348798 n + (n : ℤ)).toNat

end

end A342862.P17197697145613947624

/-! ## A342862.P10157610712490125447

`A342863(abs(n-A348798(n)))`
-/

namespace A342862.P10157610712490125447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 |(n : ℤ) - A348798 n|.toNat

end

end A342862.P10157610712490125447

/-!
# A342866: The number of elements in the continued fraction for phi(n)/n, where phi is the Euler totient function (A000010).

The programs for A342866, there is no canonical definition to state claims against.
-/

/-! ## A342866.P9822406476124597687

`A001222(A164186(∏{p}[n+1, A020639(5*#)]))`
-/

namespace A342866.P9822406476124597687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A164186 (∏ p ∈ Nat.primeFactors (f1 n), A020639 (5 * p)).toNat).toNat

end

end A342866.P9822406476124597687

/-! ## A342866.P7149359339846916395

`A137921(A066048(n+1))%A200311(3*n+4)`
-/

namespace A342866.P7149359339846916395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137921 (A066048 (n + 1)).toNat) (A200311 (3 * n + 4))

end

end A342866.P7149359339846916395

/-! ## A342866.P17228516846450189503

`A320015(n+1)+A064989(A072946(n))`
-/

namespace A342866.P17228516846450189503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (n + 1) + A064989 (A072946 n).toNat

end

end A342866.P17228516846450189503

/-! ## A342866.P11410373426678041059

`A001221(∏{d}[n+1, #]*A040936(3*n))`
-/

namespace A342866.P11410373426678041059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A040936 (3 * n)).toNat

end

end A342866.P11410373426678041059

/-! ## A342866.P64616786070241758

`A356229(A006450(2*n+1)*A064988(n+1))`
-/

namespace A342866.P64616786070241758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356229 (A006450 (2 * n + 1) * A064988 (n + 1)).toNat

end

end A342866.P64616786070241758

/-!
# A342868: Positions of records in A116489.

The programs for A342868, there is no canonical definition to state claims against.
-/

/-! ## A342868.P2256248794209120347

`∩[A360070(n+1), A029746(n)]`
-/

namespace A342868.P2256248794209120347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342868.P2256248794209120347

/-! ## A342868.P13543365063367500490

`∩[A048168(n+1), A327478(n+1)]`
-/

namespace A342868.P13543365063367500490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342868.P13543365063367500490

/-! ## A342868.P16000664719897329077

`∩[A062846(n+1), A360070(n+1)]`
-/

namespace A342868.P16000664719897329077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342868.P16000664719897329077

/-! ## A342868.P500072622264515732

`∩[A308267(n+1), A360070(n+1)]`
-/

namespace A342868.P500072622264515732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342868.P500072622264515732

/-! ## A342868.P662144234249690207

`∩[A331683(n+1), A360070(n+1)]`
-/

namespace A342868.P662144234249690207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342868.P662144234249690207

/-!
# A342869: Positions of records in A116488.

The programs for A342869, there is no canonical definition to state claims against.
-/

/-! ## A342869.P410751844669261617

`A226602(∑[A084903(n)])`
-/

namespace A342869.P410751844669261617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342869.P410751844669261617

/-! ## A342869.P610082284595663338

`A226602(A058645(n+1))`
-/

namespace A342869.P610082284595663338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A058645 (n + 1)).toNat

end

end A342869.P610082284595663338

/-! ## A342869.P1877651085846329122

`A226602((n+1)*A001793(n+1))`
-/

namespace A342869.P1877651085846329122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 ((n + 1 : ℤ) * A001793 (n + 1)).toNat

end

end A342869.P1877651085846329122

/-!
# A342870: a(n) is the number of twin primes between A001359(n)^2 and A001359(n)*(A001359(n)+1).

The programs for A342870, there is no canonical definition to state claims against.
-/

/-! ## A342870.P17053679707584590342

`A148732(n)%A366982(A086893(n+3))`
-/

namespace A342870.P17053679707584590342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148732 n) (A366982 (A086893 (n + 3)).toNat)

end

end A342870.P17053679707584590342

/-! ## A342870.P11289112439891475404

`A102677(A090302(n+2)*A090311(n+1))`
-/

namespace A342870.P11289112439891475404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A090302 (n + 2) * A090311 (n + 1)).toNat

end

end A342870.P11289112439891475404

/-!
# A342871: a(n) = Sum_{k=1..n} floor(n^(1/k)), n >= 1.

The programs for A342871, the canonical program `A342871.P1608004404490224182` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342871 has offset 1).

The definition of A342871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255165, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342871.P1608004404490224182

`A255165(n+1)+n+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342871

/-- `A255165(n+1)+n+1` -/
def P1608004404490224182.Spec : Prop :=
  ∀ n, P1608004404490224182.a n = A342871 (n + 1)

theorem P1608004404490224182.correct : P1608004404490224182.Spec := by
  intro n
  simp only [A342871, Nat.add_sub_cancel]

end A342871

/-! ## A342871.P17881827214813497765

`A089361(n+1)+2*(n+1)-1`
-/

namespace A342871.P17881827214813497765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (n + 1) + (2 * (n + 1) : ℤ) - 1

end

end A342871.P17881827214813497765

namespace A342871

/-- `A089361(n+1)+2*(n+1)-1` -/
def P17881827214813497765.Spec : Prop :=
  ∀ n, P17881827214813497765.a n = A342871 (n + 1)

end A342871

/-! ## A342871.P15329391652110087506

`A327737(n+1)-n`
-/

namespace A342871.P15329391652110087506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327737 (n + 1) - (n : ℤ)

end

end A342871.P15329391652110087506

namespace A342871

/-- `A327737(n+1)-n` -/
def P15329391652110087506.Spec : Prop :=
  ∀ n, P15329391652110087506.a n = A342871 (n + 1)

end A342871

/-! ## A342871.P6787145147783538192

`∑[A089723(n+1)]+n`
-/

namespace A342871.P6787145147783538192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A342871.P6787145147783538192

namespace A342871

/-- `∑[A089723(n+1)]+n` -/
def P6787145147783538192.Spec : Prop :=
  ∀ n, P6787145147783538192.a n = A342871 (n + 1)

end A342871

/-! ## A342871.P14857486260767827864

`A089361(n+1)+Δ[n²]`
-/

namespace A342871.P14857486260767827864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A342871.P14857486260767827864

namespace A342871

/-- `A089361(n+1)+Δ[n²]` -/
def P14857486260767827864.Spec : Prop :=
  ∀ n, P14857486260767827864.a n = A342871 (n + 1)

end A342871

/-! ## A342871.P11887000027315745374

`A043000(n+2)-A089723(n+2)`
-/

namespace A342871.P11887000027315745374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043000 (n + 2) - A089723 (n + 2)

end

end A342871.P11887000027315745374

namespace A342871

/-- `A043000(n+2)-A089723(n+2)` -/
def P11887000027315745374.Spec : Prop :=
  ∀ n, P11887000027315745374.a n = A342871 (n + 1)

end A342871

/-! ## A342871.P7749107290421114421

`A383265(n+1)-(n+1)²`
-/

namespace A342871.P7749107290421114421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383265 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A342871.P7749107290421114421

namespace A342871

/-- `A383265(n+1)-(n+1)²` -/
def P7749107290421114421.Spec : Prop :=
  ∀ n, P7749107290421114421.a n = A342871 (n + 1)

end A342871

/-!
# A342872: Distance to nearest product of 3 consecutive numbers (three-dimensional promic number, A007531).

The programs for A342872, the canonical program `A342872.P241975970429368378` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342872 has offset 0).

The definition of A342872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342872.P241975970429368378

`A074989(comp[A081435(n)])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342872

/-- `A074989(comp[A081435(n)])` -/
def P241975970429368378.Spec : Prop :=
  ∀ n, P241975970429368378.a n = A342872 n

theorem P241975970429368378.correct : P241975970429368378.Spec := by
  intro n
  simp only [A342872]

end A342872

/-! ## A342872.P11644554871517720003

`A074989(comp[∑[A056107(n)]])`
-/

namespace A342872.P11644554871517720003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342872.P11644554871517720003

namespace A342872

/-- `A074989(comp[∑[A056107(n)]])` -/
def P11644554871517720003.Spec : Prop :=
  ∀ n, P11644554871517720003.a n = A342872 n

end A342872

/-! ## A342872.P18258888055661571425

`A074989(eq[0, Δ[A201053(n)]])`
-/

namespace A342872.P18258888055661571425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342872.P18258888055661571425

namespace A342872

/-- `A074989(eq[0, Δ[A201053(n)]])` -/
def P18258888055661571425.Spec : Prop :=
  ∀ n, P18258888055661571425.a n = A342872 n

end A342872

/-! ## A342872.P6630969087308095995

`A074989(eq[1, Δ[A074989(n)]²])`
-/

namespace A342872.P6630969087308095995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342872.P6630969087308095995

namespace A342872

/-- `A074989(eq[1, Δ[A074989(n)]²])` -/
def P6630969087308095995.Spec : Prop :=
  ∀ n, P6630969087308095995.a n = A342872 n

end A342872

/-! ## A342872.P17683597632413698687

`A074989(eq[1, A201053(n)/A201053(n+1)])`
-/

namespace A342872.P17683597632413698687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201053 n : ℚ) / (A201053 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A342872.P17683597632413698687

namespace A342872

/-- `A074989(eq[1, A201053(n)/A201053(n+1)])` -/
def P17683597632413698687.Spec : Prop :=
  ∀ n, P17683597632413698687.a n = A342872 n

end A342872

/-!
# A342873: Numbers whose distance to the nearest cube equals the distance to the nearest product of 3 consecutive integers (three-dimensional oblong).

The programs for A342873, there is no canonical definition to state claims against.
-/

/-! ## A342873.P12926987648656113859

`n^3+(lcm(2, n)+n%2)*comp[3*n]`
-/

namespace A342873.P12926987648656113859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (Nat.lcm 2 n + n % 2) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342873.P12926987648656113859

/-! ## A342873.P5311986589016658315

`A033430(ceil(n/2))+∑[∑[3*n]]`
-/

namespace A342873.P5311986589016658315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 ⌈(n : ℚ) / 2⌉.toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342873.P5311986589016658315

/-! ## A342873.P18394870271832011725

`∑[n%2]*A185869(A053439(n))`
-/

namespace A342873.P18394870271832011725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A185869 (A053439 n).toNat

end

end A342873.P18394870271832011725

/-! ## A342873.P3841739027487241533

`A109900(A014601(n))-A001057(n)`
-/

namespace A342873.P3841739027487241533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (A014601 n).toNat - A001057 n

end

end A342873.P3841739027487241533

/-! ## A342873.P12649156204300060296

`A110654(n)*A185869(A053439(n))`
-/

namespace A342873.P12649156204300060296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n * A185869 (A053439 n).toNat

end

end A342873.P12649156204300060296

/-!
# A342874: Numbers k such that the k-th and (k+1)-st primes have the same digits.

The programs for A342874, there is no canonical definition to state claims against.
-/

/-! ## A342874.P1324930672212001245

`A000720(A069567(n+1))`
-/

namespace A342874.P1324930672212001245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069567 (n + 1)).toNat

end

end A342874.P1324930672212001245

/-! ## A342874.P646371908450684772

`A000720(A072274(Δ[n²]))`
-/

namespace A342874.P646371908450684772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072274 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A342874.P646371908450684772

/-! ## A342874.P10405891942288124651

`A061395(p?[A069567(n+1)])`
-/

namespace A342874.P10405891942288124651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342874.P10405891942288124651

/-! ## A342874.P13040403901869056947

`A061395(A072274(2*n+1))`
-/

namespace A342874.P13040403901869056947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A072274 (2 * n + 1)).toNat

end

end A342874.P13040403901869056947

/-! ## A342874.P14830132364333971803

`A061395(or(1, A069567(n+1)))`
-/

namespace A342874.P14830132364333971803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A069567 (n + 1))).toNat

end

end A342874.P14830132364333971803

/-!
# A342876: Numbers that can be written as a product of k consecutive composite numbers and also of k+1 consecutive composite numbers, for some k>1.

The programs for A342876, there is no canonical definition to state claims against.
-/

/-! ## A342876.P14462482132126686729

`gcd(A175340(n+1), A228913(A209007(3*n+4)))`
-/

namespace A342876.P14462482132126686729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175340 (n + 1)) (A228913 (A209007 (3 * n + 4)).toNat)

end

end A342876.P14462482132126686729

/-!
# A342877: a(n) = 1 if the average distance between consecutive first n primes is greater than that of the first n-1 primes, otherwise a(n) = 0, for n > 2.

The programs for A342877, the canonical program `A342877.P14079789452323574556` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342877 has offset 3).

The definition of A342877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342877.P14079789452323574556

`ceil(Δ[p?[2*n+1]/(n+2)])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342877

/-- `ceil(Δ[p?[2*n+1]/(n+2)])` -/
def P14079789452323574556.Spec : Prop :=
  ∀ n, P14079789452323574556.a n = A342877 (n + 3)

theorem P14079789452323574556.correct : P14079789452323574556.Spec := by
  intro n
  simp only [A342877, Nat.add_sub_cancel]

end A342877

/-! ## A342877.P1985637860470671787

`floor(ratio[p?[2*n+1]/(n+2)])`
-/

namespace A342877.P1985637860470671787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A342877.P1985637860470671787

namespace A342877

/-- `floor(ratio[p?[2*n+1]/(n+2)])` -/
def P1985637860470671787.Spec : Prop :=
  ∀ n, P1985637860470671787.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P17292494947572881502

`ceil(acot(A062357(n+2)))`
-/

namespace A342877.P17292494947572881502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A062357 (n + 2) : ℝ)⌉

end

end A342877.P17292494947572881502

namespace A342877

/-- `ceil(acot(A062357(n+2)))` -/
def P17292494947572881502.Spec : Prop :=
  ∀ n, P17292494947572881502.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P10654158483970716702

`1-char[A079418(n+1)-3]`
-/

namespace A342877.P10654158483970716702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079418 (n + 1) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A342877.P10654158483970716702

namespace A342877

/-- `1-char[A079418(n+1)-3]` -/
def P10654158483970716702.Spec : Prop :=
  ∀ n, P10654158483970716702.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P13306529760797775673

`ceil(Δ[A154115(n+1)/(n+1)])`
-/

namespace A342877.P13306529760797775673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A342877.P13306529760797775673

namespace A342877

/-- `ceil(Δ[A154115(n+1)/(n+1)])` -/
def P13306529760797775673.Spec : Prop :=
  ∀ n, P13306529760797775673.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P11449457618982692964

`ceil(Δ[A005097(n+1)/(n+2)])`
-/

namespace A342877.P11449457618982692964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A342877.P11449457618982692964

namespace A342877

/-- `ceil(Δ[A005097(n+1)/(n+2)])` -/
def P11449457618982692964.Spec : Prop :=
  ∀ n, P11449457618982692964.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P5550681969226897699

`ceil(Δ[A065091(n+1)/(n+2)])`
-/

namespace A342877.P5550681969226897699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A342877.P5550681969226897699

namespace A342877

/-- `ceil(Δ[A065091(n+1)/(n+2)])` -/
def P5550681969226897699.Spec : Prop :=
  ∀ n, P5550681969226897699.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P17693718009339843868

`ceil(Δ[A000040(n+2)/(n+2)])`
-/

namespace A342877.P17693718009339843868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A342877.P17693718009339843868

namespace A342877

/-- `ceil(Δ[A000040(n+2)/(n+2)])` -/
def P17693718009339843868.Spec : Prop :=
  ∀ n, P17693718009339843868.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P8246860527394361433

`ceil(Δ[A006093(n+2)/(n+2)])`
-/

namespace A342877.P8246860527394361433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A342877.P8246860527394361433

namespace A342877

/-- `ceil(Δ[A006093(n+2)/(n+2)])` -/
def P8246860527394361433.Spec : Prop :=
  ∀ n, P8246860527394361433.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P1834487318722903413

`ceil(acot(∑[(n+1)*A036263(n+1)]))`
-/

namespace A342877.P1834487318722903413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A342877.P1834487318722903413

namespace A342877

/-- `ceil(acot(∑[(n+1)*A036263(n+1)]))` -/
def P1834487318722903413.Spec : Prop :=
  ∀ n, P1834487318722903413.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P8025270155567579157

`ceil(A062357(n+2)/A000132(n))`
-/

namespace A342877.P8025270155567579157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062357 (n + 2) : ℚ) / (A000132 n : ℚ)⌉

end

end A342877.P8025270155567579157

namespace A342877

/-- `ceil(A062357(n+2)/A000132(n))` -/
def P8025270155567579157.Spec : Prop :=
  ∀ n, P8025270155567579157.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P17726099387446164037

`ceil(A062357(n+2)/A000328(n))`
-/

namespace A342877.P17726099387446164037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062357 (n + 2) : ℚ) / (A000328 n : ℚ)⌉

end

end A342877.P17726099387446164037

namespace A342877

/-- `ceil(A062357(n+2)/A000328(n))` -/
def P17726099387446164037.Spec : Prop :=
  ∀ n, P17726099387446164037.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P8985184693853176481

`ceil(A062357(n+2)/A016778(n))`
-/

namespace A342877.P8985184693853176481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062357 (n + 2) : ℚ) / (A016778 n : ℚ)⌉

end

end A342877.P8985184693853176481

namespace A342877

/-- `ceil(A062357(n+2)/A016778(n))` -/
def P8985184693853176481.Spec : Prop :=
  ∀ n, P8985184693853176481.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P15124411447706795669

`ceil(A062357(n+2)/A027691(n))`
-/

namespace A342877.P15124411447706795669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062357 (n + 2) : ℚ) / (A027691 n : ℚ)⌉

end

end A342877.P15124411447706795669

namespace A342877

/-- `ceil(A062357(n+2)/A027691(n))` -/
def P15124411447706795669.Spec : Prop :=
  ∀ n, P15124411447706795669.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P8203207153543635386

`ceil(A062357(n+2)/A052905(n))`
-/

namespace A342877.P8203207153543635386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062357 (n + 2) : ℚ) / (A052905 n : ℚ)⌉

end

end A342877.P8203207153543635386

namespace A342877

/-- `ceil(A062357(n+2)/A052905(n))` -/
def P8203207153543635386.Spec : Prop :=
  ∀ n, P8203207153543635386.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P15927209636035608351

`ceil(A062357(n+2)/A160833(n))`
-/

namespace A342877.P15927209636035608351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062357 (n + 2) : ℚ) / (A160833 n : ℚ)⌉

end

end A342877.P15927209636035608351

namespace A342877

/-- `ceil(A062357(n+2)/A160833(n))` -/
def P15927209636035608351.Spec : Prop :=
  ∀ n, P15927209636035608351.a n = A342877 (n + 3)

end A342877

/-! ## A342877.P10376931261872102227

`ceil(Δ[A067076(n+1)/A017509(n)])`
-/

namespace A342877.P10376931261872102227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067076 (n + 1) : ℚ) / (A017509 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A342877.P10376931261872102227

namespace A342877

/-- `ceil(Δ[A067076(n+1)/A017509(n)])` -/
def P10376931261872102227.Spec : Prop :=
  ∀ n, P10376931261872102227.a n = A342877 (n + 3)

end A342877

/-!
# A342878: Array read by antidiagonals: T(n,k) = the length of the longest word over [1,...,n] having the property that there are no two disjoint occurrences of the same length-k word.

The programs for A342878, there is no canonical definition to state claims against.
-/

/-! ## A342878.P11567467189719014932

`A347823(n)-A346697(A168293(n))`
-/

namespace A342878.P11567467189719014932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 n - A346697 (A168293 n).toNat

end

end A342878.P11567467189719014932

/-! ## A342878.P892203396505303001

`A003506(n+1)+A002262(n)^A245225(A202906(n+1))`
-/

namespace A342878.P892203396505303001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) + (A002262 n : ℚ) ^ (A245225 (A202906 (n + 1)).toNat : ℤ)

end

end A342878.P892203396505303001

/-!
# A342879: Array read by antidiagonals: T(n,k) = the length of the longest word over [1,...,n] containing no occurrences of split k-overlaps.

The programs for A342879, there is no canonical definition to state claims against.
-/

/-! ## A342879.P8288719090944744698

`∑{d}[n+1, A127160(#-1)*A225281((n+1)/#)]`
-/

namespace A342879.P8288719090944744698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127160 (d - 1) * A225281 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342879.P8288719090944744698

/-!
# A342881: Array read by antidiagonals: Sprague Grundy values for two-dimensional Misère Nim game Gamma(P_{Mis}, C_[1]).

The programs for A342881, there is no canonical definition to state claims against.
-/

/-! ## A342881.P7814464842087463963

`A052146(n+1)*A225654(A324507(n+1))`
-/

namespace A342881.P7814464842087463963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 1) * A225654 (A324507 (n + 1)).toNat

end

end A342881.P7814464842087463963

/-! ## A342881.P16112230648256957098

`A052146(n+1)*A285596(A140675(3*n+4))`
-/

namespace A342881.P16112230648256957098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 1) * A285596 (A140675 (3 * n + 4)).toNat

end

end A342881.P16112230648256957098

/-!
# A342882: Array read by antidiagonals: Sprague Grundy values for two-dimensional Misère Nim game Gamma(P_{Mis}, C^2).

The programs for A342882, the canonical program `A342882.P14357648193117281886` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342882 has offset 0).

The definition of A342882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342882.P17475110030044418199

`xor(A103823(n+1)-1, A103822(n+1))`
-/

namespace A342882.P17475110030044418199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103823 (n + 1) - 1) (A103822 (n + 1))

end

end A342882.P17475110030044418199

namespace A342882

/-- `xor(A103823(n+1)-1, A103822(n+1))` -/
def P17475110030044418199.Spec : Prop :=
  ∀ n, P17475110030044418199.a n = A342882 n

end A342882

/-! ## A342882.P14357648193117281886

`A003987(A286098(n+1)-A003056(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342882

/-- `A003987(A286098(n+1)-A003056(n+1))` -/
def P14357648193117281886.Spec : Prop :=
  ∀ n, P14357648193117281886.a n = A342882 n

theorem P14357648193117281886.correct : P14357648193117281886.Spec := by
  intro n
  simp only [A342882]

end A342882

/-! ## A342882.P3028514321035592606

`xor(A003986(n+1)-1, A004198(n+1))`
-/

namespace A342882.P3028514321035592606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003986 (n + 1) - 1) (A004198 (n + 1))

end

end A342882.P3028514321035592606

namespace A342882

/-- `xor(A003986(n+1)-1, A004198(n+1))` -/
def P3028514321035592606.Spec : Prop :=
  ∀ n, P3028514321035592606.a n = A342882 n

end A342882

/-! ## A342882.P1775404693793124860

`A003987(A057944(n+1)-A003986(n+1))`
-/

namespace A342882.P1775404693793124860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A057944 (n + 1) - A003986 (n + 1)).toNat

end

end A342882.P1775404693793124860

namespace A342882

/-- `A003987(A057944(n+1)-A003986(n+1))` -/
def P1775404693793124860.Spec : Prop :=
  ∀ n, P1775404693793124860.a n = A342882 n

end A342882

/-! ## A342882.P4555992389986888299

`A003987(A057944(n+1)-A103823(n+1))`
-/

namespace A342882.P4555992389986888299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A057944 (n + 1) - A103823 (n + 1)).toNat

end

end A342882.P4555992389986888299

namespace A342882

/-- `A003987(A057944(n+1)-A103823(n+1))` -/
def P4555992389986888299.Spec : Prop :=
  ∀ n, P4555992389986888299.a n = A342882 n

end A342882

/-! ## A342882.P12747602538630966339

`A003987(A286099(n+1)-A002024(n+2))`
-/

namespace A342882.P12747602538630966339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286099 (n + 1) - A002024 (n + 2)).toNat

end

end A342882.P12747602538630966339

namespace A342882

/-- `A003987(A286099(n+1)-A002024(n+2))` -/
def P12747602538630966339.Spec : Prop :=
  ∀ n, P12747602538630966339.a n = A342882 n

end A342882

/-! ## A342882.P2960441681947949904

`xor(A003987(n+1), A038712(A003986(n+1)))`
-/

namespace A342882.P2960441681947949904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 (n + 1)) (A038712 (A003986 (n + 1)).toNat)

end

end A342882.P2960441681947949904

namespace A342882

/-- `xor(A003987(n+1), A038712(A003986(n+1)))` -/
def P2960441681947949904.Spec : Prop :=
  ∀ n, P2960441681947949904.a n = A342882 n

end A342882

/-! ## A342882.P3815701918458875486

`A003987(n-(A004198(n+1)+A002262(n+1)))`
-/

namespace A342882.P3815701918458875486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 ((n : ℤ) - (A004198 (n + 1) + A002262 (n + 1))).toNat

end

end A342882.P3815701918458875486

namespace A342882

/-- `A003987(n-(A004198(n+1)+A002262(n+1)))` -/
def P3815701918458875486.Spec : Prop :=
  ∀ n, P3815701918458875486.a n = A342882 n

end A342882

/-! ## A342882.P1158753936509316579

`A003987(n+1-(A004198(n+1)+A002260(n+2)))`
-/

namespace A342882.P1158753936509316579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 ((n + 1 : ℤ) - (A004198 (n + 1) + A002260 (n + 2))).toNat

end

end A342882.P1158753936509316579

namespace A342882

/-- `A003987(n+1-(A004198(n+1)+A002260(n+2)))` -/
def P1158753936509316579.Spec : Prop :=
  ∀ n, P1158753936509316579.a n = A342882 n

end A342882

/-!
# A342883: Number of n-step self-avoiding walks on 7-D cubic lattice.

The programs for A342883, there is no canonical definition to state claims against.
-/

/-! ## A342883.P18156024957966245063

`A030008(n^gcd(C(n, 2), xor(1, n)))`
-/

namespace A342883.P18156024957966245063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030008 (n ^ Nat.gcd (Nat.choose n 2) (Nat.xor 1 n))

end

end A342883.P18156024957966245063

/-!
# A342884: Number of n-step self-avoiding walks on 8-D cubic lattice.

The programs for A342884, there is no canonical definition to state claims against.
-/

/-! ## A342884.P14366631710829438493

`A163964(n)-A061858(A163948(n+1))`
-/

namespace A342884.P14366631710829438493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163964 n - A061858 (A163948 (n + 1)).toNat

end

end A342884.P14366631710829438493

/-!
# A342886: Number of n-step self-avoiding walks on 10-D cubic lattice.

The programs for A342886, there is no canonical definition to state claims against.
-/

/-! ## A342886.P14414074837133011656

`20*A109613(a(n-1)-a(n-2))` with `a(0)=1, a(1)=20`
-/

namespace A342886.P14414074837133011656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  20 * A109613 (a (n - 1) - a (n - 2)).toNat

end

end A342886.P14414074837133011656

/-!
# A342888: Number of n-step self-avoiding walks on 12-D cubic lattice.

The programs for A342888, there is no canonical definition to state claims against.
-/

/-! ## A342888.P739773247503245023

`24*(a(n-1)-A080782(a(n-2)))` with `a(0)=1, a(1)=24`
-/

namespace A342888.P739773247503245023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  24 * (a (n - 1) - A080782 (a (n - 2)).toNat)

end

end A342888.P739773247503245023

/-!
# A342889: Triangle read by rows: T(n,k) = generalized binomial coefficients (n,k)_10 (n >= 0, 0 <= k <= n).

The programs for A342889, there is no canonical definition to state claims against.
-/

/-! ## A342889.P17651405089087254015

`A111221(A156581(n))`
-/

namespace A342889.P17651405089087254015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111221 (A156581 n).toNat

end

end A342889.P17651405089087254015

/-! ## A342889.P10735419649683645622

`A334454(A157177(n))+1`
-/

namespace A342889.P10735419649683645622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (A157177 n).toNat + 1

end

end A342889.P10735419649683645622

/-! ## A342889.P17299475135518833935

`A111221(5^A343046(n))`
-/

namespace A342889.P17299475135518833935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111221 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A343046 n : ℤ))).toNat

end

end A342889.P17299475135518833935

/-! ## A342889.P12183707687753078158

`A111221(7^A014473(n))`
-/

namespace A342889.P12183707687753078158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111221 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A342889.P12183707687753078158

/-! ## A342889.P7286667735807325796

`A111221(7^A226545(n))`
-/

namespace A342889.P7286667735807325796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111221 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A226545 n : ℤ))).toNat

end

end A342889.P7286667735807325796

/-!
# A342890: Triangle read by rows: T(n,k) = generalized binomial coefficients (n,k)_11 (n >= 0, 0 <= k <= n).

The programs for A342890, there is no canonical definition to state claims against.
-/

/-! ## A342890.P18011438353215167743

`A111306(A156581(n))`
-/

namespace A342890.P18011438353215167743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111306 (A156581 n).toNat

end

end A342890.P18011438353215167743

/-! ## A342890.P514993568379583752

`A170892(A157177(n))`
-/

namespace A342890.P514993568379583752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A157177 n).toNat

end

end A342890.P514993568379583752

/-! ## A342890.P10482082004378132220

`A170892(A176487(n))`
-/

namespace A342890.P10482082004378132220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A176487 n).toNat

end

end A342890.P10482082004378132220

/-! ## A342890.P1343049984684759664

`A213172(A176560(n))`
-/

namespace A342890.P1343049984684759664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 (A176560 n).toNat

end

end A342890.P1343049984684759664

/-! ## A342890.P16194447870740354434

`A170892(A382674(n))`
-/

namespace A342890.P16194447870740354434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A382674 n).toNat

end

end A342890.P16194447870740354434

/-!
# A342891: Triangle read by rows: T(n,k) = generalized binomial coefficients (n,k)_12 (n >= 0, 0 <= k <= n).

The programs for A342891, there is no canonical definition to state claims against.
-/

/-! ## A342891.P3174780772973007546

`A214468(A329228(n+1))`
-/

namespace A342891.P3174780772973007546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214468 (A329228 (n + 1)).toNat

end

end A342891.P3174780772973007546

/-! ## A342891.P15629040095179579789

`A247611(A014473(n)^A010125(n))`
-/

namespace A342891.P15629040095179579789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247611 (SequenceMachineLib.roundAway ((A014473 n : ℚ) ^ (A010125 n : ℤ))).toNat

end

end A342891.P15629040095179579789

/-! ## A342891.P959408948415002284

`A247611(A128337(n+1)%A007318(n))`
-/

namespace A342891.P959408948415002284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247611 (Int.tmod (A128337 (n + 1)) (A007318 n)).toNat

end

end A342891.P959408948415002284

/-! ## A342891.P9415515092051838551

`A247611(A010125(n)²²*A014473(n))`
-/

namespace A342891.P9415515092051838551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247611 ((A010125 n ^ 2) ^ 2 * A014473 n).toNat

end

end A342891.P9415515092051838551

/-! ## A342891.P13224290499458662582

`A010965(A059801(2*(n+1))%A007318(n))`
-/

namespace A342891.P13224290499458662582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 ((Int.tmod (A059801 (2 * (n + 1))) (A007318 n)).toNat + 12)

end

end A342891.P13224290499458662582

/-!
# A342892: a(n) is the complement of the bit two places to the left of the least significant "1" in the binary expansion of n.

The programs for A342892, the canonical program `A342892.P15545724852766789726` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342892 has offset 0).

The definition of A342892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342892.P15545724852766789726

`1-A086483(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342892

/-- `1-A086483(n)` -/
def P15545724852766789726.Spec : Prop :=
  ∀ n, P15545724852766789726.a n = A342892 n

theorem P15545724852766789726.correct : P15545724852766789726.Spec := by
  intro n
  simp only [A342892]

end A342892

/-! ## A342892.P9788981398505869868

`1-A038189(A072650(n))`
-/

namespace A342892.P9788981398505869868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038189 (A072650 n).toNat

end

end A342892.P9788981398505869868

namespace A342892

/-- `1-A038189(A072650(n))` -/
def P9788981398505869868.Spec : Prop :=
  ∀ n, P9788981398505869868.a n = A342892 n

end A342892

/-! ## A342892.P4801369983058973563

`∏{d}[n*A086483(n), A001222(#)]`
-/

namespace A342892.P4801369983058973563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A342892.P4801369983058973563

namespace A342892

/-- `∏{d}[n*A086483(n), A001222(#)]` -/
def P4801369983058973563.Spec : Prop :=
  ∀ n, P4801369983058973563.a n = A342892 n

end A342892

/-! ## A342892.P11605876178813920310

`∏{d}[n*A086483(n), A086483(#)]`
-/

namespace A342892.P11605876178813920310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A086483 d

end

end A342892.P11605876178813920310

namespace A342892

/-- `∏{d}[n*A086483(n), A086483(#)]` -/
def P11605876178813920310.Spec : Prop :=
  ∀ n, P11605876178813920310.a n = A342892 n

end A342892

/-! ## A342892.P13697418455162344570

`A079978(and(2, ∑[A298414(n)-1]))`
-/

namespace A342892.P13697418455162344570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298414 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342892.P13697418455162344570

namespace A342892

/-- `A079978(and(2, ∑[A298414(n)-1]))` -/
def P13697418455162344570.Spec : Prop :=
  ∀ n, P13697418455162344570.a n = A342892 n

end A342892

/-! ## A342892.P9707281554316897977

`A182700(and(2, n-∑[A298414(n)]))`
-/

namespace A342892.P9707281554316897977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (Int.land 2 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342892.P9707281554316897977

namespace A342892

/-- `A182700(and(2, n-∑[A298414(n)]))` -/
def P9707281554316897977.Spec : Prop :=
  ∀ n, P9707281554316897977.a n = A342892 n

end A342892

/-! ## A342892.P14726161281145564575

`A027379(A103391(n+1)-1)%2`
-/

namespace A342892.P14726161281145564575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027379 (A103391 (n + 1) - 1).toNat) 2

end

end A342892.P14726161281145564575

namespace A342892

/-- `A027379(A103391(n+1)-1)%2` -/
def P14726161281145564575.Spec : Prop :=
  ∀ n, P14726161281145564575.a n = A342892 n

end A342892

/-! ## A342892.P14678494428414169879

`and(1, A121387(n+1)+A086483(n))`
-/

namespace A342892.P14678494428414169879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A121387 (n + 1) + A086483 n)

end

end A342892.P14678494428414169879

namespace A342892

/-- `and(1, A121387(n+1)+A086483(n))` -/
def P14678494428414169879.Spec : Prop :=
  ∀ n, P14678494428414169879.a n = A342892 n

end A342892

/-! ## A342892.P14701697139490665113

`A167614(A003602(abs(1-n)+1)+1)%2`
-/

namespace A342892.P14701697139490665113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (A003602 (|1 - (n : ℤ)| + 1).toNat + 1).toNat) 2

end

end A342892.P14701697139490665113

namespace A342892

/-- `A167614(A003602(abs(1-n)+1)+1)%2` -/
def P14701697139490665113.Spec : Prop :=
  ∀ n, P14701697139490665113.a n = A342892 n

end A342892

/-! ## A342892.P12269265503555312258

`A289025(A289027(n+1)+A086483(n))`
-/

namespace A342892.P12269265503555312258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A289027 (n + 1) + A086483 n).toNat

end

end A342892.P12269265503555312258

namespace A342892

/-- `A289025(A289027(n+1)+A086483(n))` -/
def P12269265503555312258.Spec : Prop :=
  ∀ n, P12269265503555312258.a n = A342892 n

end A342892

/-! ## A342892.P11846360581402146414

`A089806(A086483(n)+n*A089806(n))`
-/

namespace A342892.P11846360581402146414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (A086483 n + (n : ℤ) * A089806 n).toNat

end

end A342892.P11846360581402146414

namespace A342892

/-- `A089806(A086483(n)+n*A089806(n))` -/
def P11846360581402146414.Spec : Prop :=
  ∀ n, P11846360581402146414.a n = A342892 n

end A342892

/-! ## A342892.P15379397820445132186

`1-A038189(A171942(n+1)+n)`
-/

namespace A342892.P15379397820445132186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038189 (A171942 (n + 1) + (n : ℤ)).toNat

end

end A342892.P15379397820445132186

namespace A342892

/-- `1-A038189(A171942(n+1)+n)` -/
def P15379397820445132186.Spec : Prop :=
  ∀ n, P15379397820445132186.a n = A342892 n

end A342892

/-! ## A342892.P15353137336665333821

`A159782(A086483(n)*A129822(n+2))`
-/

namespace A342892.P15353137336665333821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 (A086483 n * A129822 (n + 2)).toNat

end

end A342892.P15353137336665333821

namespace A342892

/-- `A159782(A086483(n)*A129822(n+2))` -/
def P15353137336665333821.Spec : Prop :=
  ∀ n, P15353137336665333821.a n = A342892 n

end A342892

/-! ## A342892.P12104335518120999713

`xor(A086483(n), A099545(A091072(n+1)))`
-/

namespace A342892.P12104335518120999713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086483 n) (A099545 (A091072 (n + 1)).toNat)

end

end A342892.P12104335518120999713

namespace A342892

/-- `xor(A086483(n), A099545(A091072(n+1)))` -/
def P12104335518120999713.Spec : Prop :=
  ∀ n, P12104335518120999713.a n = A342892 n

end A342892

/-! ## A342892.P5895445562951425461

`char[(n+1)*A035608(A003602(n+1))%2]`
-/

namespace A342892.P5895445562951425461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A035608 (A003602 (n + 1)).toNat) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342892.P5895445562951425461

namespace A342892

/-- `char[(n+1)*A035608(A003602(n+1))%2]` -/
def P5895445562951425461.Spec : Prop :=
  ∀ n, (P5895445562951425461.a n : ℤ) = A342892 n

end A342892

/-! ## A342892.P17778957116859079684

`xor(1, A086483(2*n))`
-/

namespace A342892.P17778957116859079684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A086483 (2 * n))

end

end A342892.P17778957116859079684

namespace A342892

/-- `xor(1, A086483(2*n))` -/
def P17778957116859079684.Spec : Prop :=
  ∀ n, P17778957116859079684.a n = A342892 n

end A342892

/-! ## A342892.P1162869598081967366

`A014707(A086483(n)*A164677(2*n+3)+2)`
-/

namespace A342892.P1162869598081967366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A086483 n * A164677 (2 * n + 3) + 2).toNat

end

end A342892.P1162869598081967366

namespace A342892

/-- `A014707(A086483(n)*A164677(2*n+3)+2)` -/
def P1162869598081967366.Spec : Prop :=
  ∀ n, P1162869598081967366.a n = A342892 n

end A342892

/-! ## A342892.P7808460733732599442

`A059125(A086483(n)*A164677(2*n+3)+2)`
-/

namespace A342892.P7808460733732599442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 (A086483 n * A164677 (2 * n + 3) + 2).toNat

end

end A342892.P7808460733732599442

namespace A342892

/-- `A059125(A086483(n)*A164677(2*n+3)+2)` -/
def P7808460733732599442.Spec : Prop :=
  ∀ n, P7808460733732599442.a n = A342892 n

end A342892

/-! ## A342892.P8743589246728378783

`char[A243109(A243109(2*n))]`
-/

namespace A342892.P8743589246728378783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A243109 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342892.P8743589246728378783

namespace A342892

/-- `char[A243109(A243109(2*n))]` -/
def P8743589246728378783.Spec : Prop :=
  ∀ n, (P8743589246728378783.a n : ℤ) = A342892 n

end A342892

/-! ## A342892.P17453724522428739871

`A159782(A086483(n)*A091113(n+1))`
-/

namespace A342892.P17453724522428739871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 (A086483 n * A091113 (n + 1)).toNat

end

end A342892.P17453724522428739871

namespace A342892

/-- `A159782(A086483(n)*A091113(n+1))` -/
def P17453724522428739871.Spec : Prop :=
  ∀ n, P17453724522428739871.a n = A342892 n

end A342892

