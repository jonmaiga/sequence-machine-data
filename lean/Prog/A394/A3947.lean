import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

/-!
# A394703: a(n) is the least prime factor of (3^(2^n)+1)/2.

The programs for A394703, there is no canonical definition to state claims against.
-/

/-! ## A394703.P13389817481171835560

`A235365(2^(n+1))`
-/

namespace A394703.P13389817481171835560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235365 (2 ^ (n + 1))

end

end A394703.P13389817481171835560

/-! ## A394703.P265736199530942822

`A189241(2^(n+1))`
-/

namespace A394703.P265736199530942822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189241 (2 ^ (n + 1))

end

end A394703.P265736199530942822

/-!
# A394704: Triangle read by rows: coefficients of reciprocal polynomials refining A013499.

The programs for A394704, there is no canonical definition to state claims against.
-/

/-! ## A394704.P7038229032814323368

`A121208(A056941(n+1))`
-/

namespace A394704.P7038229032814323368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A056941 (n + 1)).toNat

end

end A394704.P7038229032814323368

/-! ## A394704.P1399255110440382996

`A172262(A045912(n+1))`
-/

namespace A394704.P1399255110440382996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172262 (A045912 (n + 1)).toNat

end

end A394704.P1399255110440382996

/-! ## A394704.P17765782062816579384

`A096182(A157221(n+1))`
-/

namespace A394704.P17765782062816579384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A157221 (n + 1)).toNat

end

end A394704.P17765782062816579384

/-! ## A394704.P2651540961239241416

`A096182(A168287(n+1))`
-/

namespace A394704.P2651540961239241416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A168287 (n + 1)).toNat

end

end A394704.P2651540961239241416

/-! ## A394704.P9847175458697766077

`A096182(A174036(n+1))`
-/

namespace A394704.P9847175458697766077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A174036 (n + 1)).toNat

end

end A394704.P9847175458697766077

/-!
# A394707: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x^2) )^n.

The programs for A394707, the canonical program `A394707.P10635381308533172003` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394707 has offset 0).

The definition of A394707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394707.P10635381308533172003

`∑{#}[floor(n/2), C(n, #)*C(2*n, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394707

/-- `∑{#}[floor(n/2), C(n, #)*C(2*n, n-2*#)]` -/
def P10635381308533172003.Spec : Prop :=
  ∀ n, (P10635381308533172003.a n : ℤ) = A394707 n

theorem P10635381308533172003.correct : P10635381308533172003.Spec := by
  intro n
  simp only [A394707]

end A394707

/-!
# A394708: Primes that are the greatest prime factor of some Fibonacci number.

The programs for A394708, there is no canonical definition to state claims against.
-/

/-! ## A394708.P17058845942435776770

`A178762(A094270(n+1))`
-/

namespace A394708.P17058845942435776770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (A094270 (n + 1)).toNat

end

end A394708.P17058845942435776770

/-! ## A394708.P14926691215923864618

`∩[A028812(n+1), A178762(n+1)]`
-/

namespace A394708.P14926691215923864618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394708.P14926691215923864618

/-! ## A394708.P5502265195063321788

`∩[A123068(n+1), A178762(n+1)]`
-/

namespace A394708.P5502265195063321788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394708.P5502265195063321788

/-! ## A394708.P10321153349194259478

`∩[A178762(n+1), A246786(n+1)]`
-/

namespace A394708.P10321153349194259478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394708.P10321153349194259478

/-! ## A394708.P13323160088429942177

`∩[A178762(n+1), A376268(n+1)]`
-/

namespace A394708.P13323160088429942177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394708.P13323160088429942177

/-!
# A394709: Coefficient of x^(2*n) in the expansion of ( (1+x)^3 * (1+x^2) )^n.

The programs for A394709, the canonical program `A394709.P12601448949882021901` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394709 has offset 0).

The definition of A394709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394709.P12601448949882021901

`∑{#}[n, C(n, #)*C(3*n, n+2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394709

/-- `∑{#}[n, C(n, #)*C(3*n, n+2*#)]` -/
def P12601448949882021901.Spec : Prop :=
  ∀ n, (P12601448949882021901.a n : ℤ) = A394709 n

theorem P12601448949882021901.correct : P12601448949882021901.Spec := by
  intro n
  simp only [A394709]

end A394709

/-!
# A394716: a(n) = Sum_{1 <= i < j <= n} ( n!/(i*j) )^3.

The programs for A394716, the canonical program `A394716.P80698359387520326` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394716 has offset 0).

The definition of A394716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394716.P80698359387520326

`(n^3+(n-1)^3)*a(n-1)-(n-1)^6*a(n-2)+(n-2)!^3` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394716

/-- `(n^3+(n-1)^3)*a(n-1)-(n-1)^6*a(n-2)+(n-2)!^3` -/
def P80698359387520326.Spec : Prop :=
  ∀ n, P80698359387520326.a n = A394716 n

theorem P80698359387520326.correct : P80698359387520326.Spec := by
  intro n
  simp only [A394716]

end A394716

/-!
# A394719: Numbers k such that |s(k) - 2*k|, where s(k) is the aliquot sum A001065(k), is a perfect number.

The programs for A394719, there is no canonical definition to state claims against.
-/

/-! ## A394719.P12613210297840304240

`∑[xor(A025052(3*n+4), A277275(2*n+3))]`
-/

namespace A394719.P12613210297840304240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025052 (3 * n + 4)) (A277275 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394719.P12613210297840304240

/-!
# A394720: a(1)=2, a(2)=3; for n>=3, a(n) = prime nearest to a(n-1) + a(n-2), with ties broken by taking the smaller prime.

The programs for A394720, there is no canonical definition to state claims against.
-/

/-! ## A394720.P17565645484927341502

`A000040(A396176(n+1))`
-/

namespace A394720.P17565645484927341502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A396176 (n + 1)).toNat

end

end A394720.P17565645484927341502

/-! ## A394720.P5950519873388667431

`A051697(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A394720.P5950519873388667431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A051697 (a (n - 1) + a (n - 2)).toNat

end

end A394720.P5950519873388667431

/-! ## A394720.P11984904114401504158

`record[A051698(2-(4/2-a(n-1)-a(n-2)))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A394720.P11984904114401504158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  A051698 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (f1 (n - 1) : ℚ) - (f1 (n - 2) : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394720.P11984904114401504158

/-! ## A394720.P12557213101788711414

`A212300(A316528(n+1))`
-/

namespace A394720.P12557213101788711414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A316528 (n + 1)).toNat

end

end A394720.P12557213101788711414

/-!
# A394722: Number of transitive relations on an n-set with at most four ordered pairs.

The programs for A394722, there is no canonical definition to state claims against.
-/

/-! ## A394722.P4839914741171785107

`A393295(n)+A349849(n)`
-/

namespace A394722.P4839914741171785107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393295 n + A349849 n

end

end A394722.P4839914741171785107

/-! ## A394722.P8642801328181606378

`1+A000290(n)+A349919(n)+A349927(n)+A349849(n)`
-/

namespace A394722.P8642801328181606378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000290 n + A349919 n + A349927 n + A349849 n

end

end A394722.P8642801328181606378

/-! ## A394722.P6848557665114652677

`A394732(n)-A348634(n)`
-/

namespace A394722.P6848557665114652677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394732 n - A348634 n

end

end A394722.P6848557665114652677

/-! ## A394722.P3335177163288730808

`A349849(n)+A393238(n)+A349927(n)`
-/

namespace A394722.P3335177163288730808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349849 n + (A393238 n + A349927 n)

end

end A394722.P3335177163288730808

/-! ## A394722.P522125259010074258

`A394769(n)-(A393216(n)+A348634(n))`
-/

namespace A394722.P522125259010074258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394769 n - (A393216 n + A348634 n)

end

end A394722.P522125259010074258

/-! ## A394722.P10543035392115148787

`n²+1+A349919(n)+A349927(n)+A349849(n)`
-/

namespace A394722.P10543035392115148787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) + A349919 n + A349927 n + A349849 n

end

end A394722.P10543035392115148787

/-!
# A394723: a(n) is the number of ways to assign signs +- to 1, 2, ..., A042948(n) such that the signed sum equals A042948(n).

The programs for A394723, there is no canonical definition to state claims against.
-/

/-! ## A394723.P7986007635648573406

`A063890(A042948(n))`
-/

namespace A394723.P7986007635648573406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 (A042948 n).toNat

end

end A394723.P7986007635648573406

/-! ## A394723.P3723393792462554085

`A063890(lt[0, A063890(n)])`
-/

namespace A394723.P3723393792462554085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A394723.P3723393792462554085

/-! ## A394723.P4933258242685546638

`filter[A063890(n), A011558(#)]`
-/

namespace A394723.P4933258242685546638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A394723.P4933258242685546638

/-! ## A394723.P3025300249162969029

`filter[A063890(n), A368916(#)]`
-/

namespace A394723.P3025300249162969029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A394723.P3025300249162969029

/-! ## A394723.P8876919381225203078

`filter[A063890(n), A168181(#)]`
-/

namespace A394723.P8876919381225203078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A394723.P8876919381225203078

/-!
# A394724: a(n) = (7*n)!/((4*n)!*(n!)^3).

The programs for A394724, the canonical program `A394724.P2376370618956943717` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394724 has offset 0).

The definition of A394724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394724.P2376370618956943717

`C(7*n, n)*C(6*n, n)*C(5*n, n)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394724

/-- `C(7*n, n)*C(6*n, n)*C(5*n, n)` -/
def P2376370618956943717.Spec : Prop :=
  ∀ n, (P2376370618956943717.a n : ℤ) = A394724 n

theorem P2376370618956943717.correct : P2376370618956943717.Spec := by
  intro n
  simp only [A394724]

end A394724

/-! ## A394724.P14311358396681370541

`A000984(n)*A391889(n)`
-/

namespace A394724.P14311358396681370541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A391889 n

end

end A394724.P14311358396681370541

namespace A394724

/-- `A000984(n)*A391889(n)` -/
def P14311358396681370541.Spec : Prop :=
  ∀ n, P14311358396681370541.a n = A394724 n

end A394724

/-!
# A394727: Expansion of e.g.f. exp( sqrt(1-x^2) - 1 + x*(1 + arcsin(x)) ).

The programs for A394727, there is no canonical definition to state claims against.
-/

/-! ## A394727.P8864852087848926267

`A284837(A124501(n))`
-/

namespace A394727.P8864852087848926267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (A124501 n).toNat

end

end A394727.P8864852087848926267

/-! ## A394727.P14262370141853345833

`A316465(A104431(n))`
-/

namespace A394727.P14262370141853345833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A104431 n).toNat

end

end A394727.P14262370141853345833

/-! ## A394727.P8135841475414786466

`A284837(A191768(n))`
-/

namespace A394727.P8135841475414786466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (A191768 n).toNat

end

end A394727.P8135841475414786466

/-!
# A394728: Expansion of e.g.f. exp( sqrt(1-x^2) - 1 + x*arcsin(x) ) (even powers only).

The programs for A394728, there is no canonical definition to state claims against.
-/

/-! ## A394728.P6163541332010185834

`A184618(A092985(n))`
-/

namespace A394728.P6163541332010185834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 (A092985 n).toNat

end

end A394728.P6163541332010185834

/-!
# A394732: Number of transitive relations on an n-set with at most five ordered pairs.

The programs for A394732, there is no canonical definition to state claims against.
-/

/-! ## A394732.P6975854347300687387

`1+A000290(n)+A349919(n)+A349927(n)+A349849(n)+A348634(n)`
-/

namespace A394732.P6975854347300687387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000290 n + A349919 n + A349927 n + A349849 n + A348634 n

end

end A394732.P6975854347300687387

/-! ## A394732.P5308879592035156602

`A394722(n)+A348634(n)`
-/

namespace A394732.P5308879592035156602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394722 n + A348634 n

end

end A394732.P5308879592035156602

/-! ## A394732.P13526173398604106155

`A394769(n)-A393216(n)`
-/

namespace A394732.P13526173398604106155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394769 n - A393216 n

end

end A394732.P13526173398604106155

/-! ## A394732.P501261735626361035

`A348634(n)+A393295(n)+A349849(n)`
-/

namespace A394732.P501261735626361035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348634 n + (A393295 n + A349849 n)

end

end A394732.P501261735626361035

/-! ## A394732.P3169129550190049722

`A395093(n)-(A393216(n)+A392460(n))`
-/

namespace A394732.P3169129550190049722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395093 n - (A393216 n + A392460 n)

end

end A394732.P3169129550190049722

/-! ## A394732.P3904749384855689823

`n²+1+A349919(n)+A349927(n)+A349849(n)+A348634(n)`
-/

namespace A394732.P3904749384855689823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) + A349919 n + A349927 n + A349849 n + A348634 n

end

end A394732.P3904749384855689823

/-!
# A394734: a(n) is the number of subsets of proper divisors of A023196(n) that add to A023196(n).

The programs for A394734, there is no canonical definition to state claims against.
-/

/-! ## A394734.P5526333096870509612

`A065205(A023196(n+1))`
-/

namespace A394734.P5526333096870509612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A023196 (n + 1)).toNat

end

end A394734.P5526333096870509612

/-!
# A394735: Primes prime(k) such that prime(k+1) - prime(k) is a perfect power.

The programs for A394735, the canonical program `A394735.P16571742548927410350` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394735 has offset 1).

The definition of A394735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113451, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394735.P16571742548927410350

`A000040(A113451(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A394735

/-- `A000040(A113451(n+1))` -/
def P16571742548927410350.Spec : Prop :=
  ∀ n, P16571742548927410350.a n = A394735 (n + 1)

theorem P16571742548927410350.correct : P16571742548927410350.Spec := by
  intro n
  simp only [A394735, Nat.add_sub_cancel]

end A394735

/-! ## A394735.P15703229262363083146

`lt[A007920(n), A300717(A013632(n))]`
-/

namespace A394735.P15703229262363083146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A013632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394735.P15703229262363083146

namespace A394735

/-- `lt[A007920(n), A300717(A013632(n))]` -/
def P15703229262363083146.Spec : Prop :=
  ∀ n, (P15703229262363083146.a n : ℤ) = A394735 (n + 1)

end A394735

/-! ## A394735.P9771225605498915982

`∩[A061771(n+1), A260581(n+1)]`
-/

namespace A394735.P9771225605498915982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394735.P9771225605498915982

namespace A394735

/-- `∩[A061771(n+1), A260581(n+1)]` -/
def P9771225605498915982.Spec : Prop :=
  ∀ n, (P9771225605498915982.a n : ℤ) = A394735 (n + 1)

end A394735

/-!
# A394740: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are distinct primes and y < z.

The programs for A394740, there is no canonical definition to state claims against.
-/

/-! ## A394740.P10349307045092369529

`and(A056594(A392406(n+1)), A329747(n+2))`
-/

namespace A394740.P10349307045092369529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056594 (A392406 (n + 1)).toNat) (A329747 (n + 2))

end

end A394740.P10349307045092369529

/-! ## A394740.P3209752120749910725

`and(A092423(n), A394741(n))`
-/

namespace A394740.P3209752120749910725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092423 n) (A394741 n)

end

end A394740.P3209752120749910725

/-! ## A394740.P17913049881760869614

`A080843(A102480(n)+3)`
-/

namespace A394740.P17913049881760869614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A102480 n + 3).toNat

end

end A394740.P17913049881760869614

/-! ## A394740.P15655496727958642552

`and(A087890(A323553(n+1)), A101606(n+5))`
-/

namespace A394740.P15655496727958642552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087890 (A323553 (n + 1)).toNat) (A101606 (n + 5))

end

end A394740.P15655496727958642552

/-! ## A394740.P8990681310230236221

`and(A006368(A007149(3*n+2)), A101606(n+5))`
-/

namespace A394740.P8990681310230236221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006368 (A007149 (3 * n + 2)).toNat) (A101606 (n + 5))

end

end A394740.P8990681310230236221

/-!
# A394742: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x < y < z are primes.

The programs for A394742, there is no canonical definition to state claims against.
-/

/-! ## A394742.P11320642911056359780

`char[A005360(A068553(n+1)+A062584(n))]`
-/

namespace A394742.P11320642911056359780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (A068553 (n + 1) + A062584 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A394742.P11320642911056359780

/-! ## A394742.P7292449685852896773

`A080995(A237984(n+4)+A157454(3*n+1))`
-/

namespace A394742.P7292449685852896773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A237984 (n + 4) + A157454 (3 * n + 1)).toNat

end

end A394742.P7292449685852896773

/-! ## A394742.P11498008542293721379

`and(A011733(n), A036575(n+1))`
-/

namespace A394742.P11498008542293721379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011733 n) (A036575 (n + 1))

end

end A394742.P11498008542293721379

/-! ## A394742.P3425803709426457565

`A381033(A113452(n+1)-A083912(n+1))`
-/

namespace A394742.P3425803709426457565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 (A113452 (n + 1) - A083912 (n + 1)).toNat

end

end A394742.P3425803709426457565

/-! ## A394742.P3670320131103527650

`val(A079085(n+3), A000005(A000578(n+4)))`
-/

namespace A394742.P3670320131103527650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079085 (n + 3)).toNat (A000005 (A000578 (n + 4)).toNat).toNat

end

end A394742.P3670320131103527650

/-!
# A394743: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive Fibonacci numbers.

The programs for A394743, there is no canonical definition to state claims against.
-/

/-! ## A394743.P7431115027140536987

`A395226(n)-A395227(n)`
-/

namespace A394743.P7431115027140536987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395226 n - A395227 n

end

end A394743.P7431115027140536987

/-!
# A394744: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are distinct nonzero Fibonacci numbers and y < z.

The programs for A394744, there is no canonical definition to state claims against.
-/

/-! ## A394744.P10496666951654808850

`row(A394092(col(A219555(2*n+3))))`
-/

namespace A394744.P10496666951654808850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A394092 (SequenceMachineLib.triCol (A219555 (2 * n + 3)).toNat)).toNat

end

end A394744.P10496666951654808850

/-! ## A394744.P13395409984448153232

`A303975(A060957(n)^A344649(n))`
-/

namespace A394744.P13395409984448153232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (SequenceMachineLib.roundAway ((A060957 n : ℚ) ^ (A344649 n : ℤ))).toNat

end

end A394744.P13395409984448153232

/-! ## A394744.P1960511771597937705

`A131625(n+1)%A184848(A000203(n+1))`
-/

namespace A394744.P1960511771597937705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131625 (n + 1)) (A184848 (A000203 (n + 1)).toNat)

end

end A394744.P1960511771597937705

/-! ## A394744.P6976184378472608735

`A131157(n+4)%A096309(A058843(n+1))`
-/

namespace A394744.P6976184378472608735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131157 (n + 4)) (A096309 (A058843 (n + 1)).toNat)

end

end A394744.P6976184378472608735

/-! ## A394744.P126137413122338254

`A255124(A141214(2*n+1)%A141214(n))`
-/

namespace A394744.P126137413122338254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255124 (Int.tmod (A141214 (2 * n + 1)) (A141214 n)).toNat

end

end A394744.P126137413122338254

/-!
# A394745: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x > max(y,z).

The programs for A394745, there is no canonical definition to state claims against.
-/

/-! ## A394745.P18086869082272547825

`A124785(A124785(n+2))%A124772(n)`
-/

namespace A394745.P18086869082272547825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124785 (A124785 (n + 2)).toNat) (A124772 n)

end

end A394745.P18086869082272547825

/-! ## A394745.P5042941590991833780

`val(A103887(n+1), 3)`
-/

namespace A394745.P5042941590991833780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A103887 (n + 1)).toNat 3

end

end A394745.P5042941590991833780

/-! ## A394745.P11680287011188887393

`A329313(A083207(n+5)%A324960(n))`
-/

namespace A394745.P11680287011188887393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (Int.tmod (A083207 (n + 5)) (A324960 n)).toNat

end

end A394745.P11680287011188887393

/-! ## A394745.P15699602360176108858

`A125237(n+5)%A124768(A165773(n+1))`
-/

namespace A394745.P15699602360176108858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125237 (n + 5)) (A124768 (A165773 (n + 1)).toNat)

end

end A394745.P15699602360176108858

/-!
# A394746: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x <= y <= z.

The programs for A394746, there is no canonical definition to state claims against.
-/

/-! ## A394746.P12198304304353465287

`A393711(n)+A025426(n)`
-/

namespace A394746.P12198304304353465287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393711 n + A025426 n

end

end A394746.P12198304304353465287

/-!
# A394747: Numbers k such that k-4 and k+4 are prime and gcd(k, sigma(k)) is prime.

The programs for A394747, the canonical program `A394747.P2470656169310210325` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394747 has offset 1).

The definition of A394747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394747.P2470656169310210325

`∩[A087680(n+1), A392199(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394747

/-- `∩[A087680(n+1), A392199(n+1)]` -/
def P2470656169310210325.Spec : Prop :=
  ∀ n, (P2470656169310210325.a n : ℤ) = A394747 (n + 1)

theorem P2470656169310210325.correct : P2470656169310210325.Spec := by
  intro n
  simp only [A394747, Nat.add_sub_cancel]

end A394747

/-! ## A394747.P445453122380608471

`∩[A164385(n+1), A392199(n+1)]`
-/

namespace A394747.P445453122380608471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394747.P445453122380608471

namespace A394747

/-- `∩[A164385(n+1), A392199(n+1)]` -/
def P445453122380608471.Spec : Prop :=
  ∀ n, (P445453122380608471.a n : ℤ) = A394747 (n + 1)

end A394747

/-!
# A394749: Largest GCD of the digits of n in any base b < n, considering only cases where all digits are nonzero.

The programs for A394749, there is no canonical definition to state claims against.
-/

/-! ## A394749.P11059392651689964688

`A319661(A294364(n+1))`
-/

namespace A394749.P11059392651689964688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319661 (A294364 (n + 1)).toNat

end

end A394749.P11059392651689964688

/-! ## A394749.P18057224975918499041

`A353745(A011782(n)+2*n)`
-/

namespace A394749.P18057224975918499041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A011782 n + (2 * n : ℤ)).toNat

end

end A394749.P18057224975918499041

/-! ## A394749.P4480993505927472814

`A353745(or(2*n, A011782(n)))`
-/

namespace A394749.P4480993505927472814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (Int.lor (2 * n : ℤ) (A011782 n)).toNat

end

end A394749.P4480993505927472814

/-! ## A394749.P17501740909887426322

`A353745(A005843(n)+round(2^(n-1)))`
-/

namespace A394749.P17501740909887426322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A005843 n + SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A394749.P17501740909887426322

/-! ## A394749.P6712935544035670312

`A322028(A241523(n))`
-/

namespace A394749.P6712935544035670312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (A241523 n).toNat

end

end A394749.P6712935544035670312

/-!
# A394752: Indices of zeros (P-positions) in the Sprague-Grundy sequence for the octal game .404.

The programs for A394752, there is no canonical definition to state claims against.
-/

/-! ## A394752.P3522109592944624813

`lcm(A006789(n), A126712(n+1))`
-/

namespace A394752.P3522109592944624813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006789 n) (A126712 (n + 1))

end

end A394752.P3522109592944624813

/-!
# A394753: Number of k <= m such that rad(k) | m, where rad = A007947 and m = A055932(n).

The programs for A394753, there is no canonical definition to state claims against.
-/

/-! ## A394753.P1837962828027382376

`A010846(A055932(n+1))`
-/

namespace A394753.P1837962828027382376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A055932 (n + 1)).toNat

end

end A394753.P1837962828027382376

/-! ## A394753.P11326683703872208766

`A010846(record[A071364(n+1)])`
-/

namespace A394753.P11326683703872208766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394753.P11326683703872208766

/-!
# A394754: Number of semi-bipartite structures on n unlabeled vertices.

The programs for A394754, there is no canonical definition to state claims against.
-/

/-! ## A394754.P2911261346622206714

`A391394(A280275(n))`
-/

namespace A394754.P2911261346622206714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391394 (A280275 n).toNat

end

end A394754.P2911261346622206714

/-! ## A394754.P7846228618759039993

`∑[A338938(A000108(n))]`
-/

namespace A394754.P7846228618759039993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338938 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394754.P7846228618759039993

/-!
# A394755: Number of connected semi-bipartite structures on n unlabeled vertices.

The programs for A394755, there is no canonical definition to state claims against.
-/

/-! ## A394755.P16787562779559083801

`A124905(A066411(n))`
-/

namespace A394755.P16787562779559083801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124905 (A066411 n).toNat

end

end A394755.P16787562779559083801

/-! ## A394755.P14047279627891870844

`Δ[A335380(A276746(n))]`
-/

namespace A394755.P14047279627891870844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A276746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394755.P14047279627891870844

/-!
# A394757: Numbers k in A014574 (averages of twin prime pairs) such that gcd(k, sigma(k)) is prime.

The programs for A394757, there is no canonical definition to state claims against.
-/

/-! ## A394757.P4695499318249521116

`∪[A394399(n+1), A394815(n+1)]`
-/

namespace A394757.P4695499318249521116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394757.P4695499318249521116

/-!
# A394762: Minimum number of draws without replacement from an urn with n white and n black balls to ensure the probability of drawing at least one ball of each color is >= n/(n+1).

The programs for A394762, there is no canonical definition to state claims against.
-/

/-! ## A394762.P6635149581238603567

`A130249(A291166(n+1)-A130249(n))`
-/

namespace A394762.P6635149581238603567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A291166 (n + 1) - A130249 n).toNat

end

end A394762.P6635149581238603567

/-! ## A394762.P13469060975625823248

`A070939(A101886(n+1)+1)`
-/

namespace A394762.P13469060975625823248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A101886 (n + 1) + 1).toNat

end

end A394762.P13469060975625823248

/-! ## A394762.P1081479774882823070

`A029837(A101886(n+1)+2)`
-/

namespace A394762.P1081479774882823070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A101886 (n + 1) + 2).toNat

end

end A394762.P1081479774882823070

/-! ## A394762.P5283647533362381622

`A130249(A333228(n+1)-A130249(n))`
-/

namespace A394762.P5283647533362381622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A333228 (n + 1) - A130249 n).toNat

end

end A394762.P5283647533362381622

/-! ## A394762.P1422283622664493669

`A070939(A324885(3*n+2)+A324845(n+1))`
-/

namespace A394762.P1422283622664493669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A324885 (3 * n + 2) + A324845 (n + 1)).toNat

end

end A394762.P1422283622664493669

/-! ## A394762.P1413000105731303220

`A070939(A320456(n+1)+A138902(n))`
-/

namespace A394762.P1413000105731303220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A320456 (n + 1) + A138902 n).toNat

end

end A394762.P1413000105731303220

/-! ## A394762.P13222902966689421507

`A070939(A367861(n+1)+A347441(3*n+2))`
-/

namespace A394762.P13222902966689421507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A367861 (n + 1) + A347441 (3 * n + 2)).toNat

end

end A394762.P13222902966689421507

/-! ## A394762.P13769483778372682694

`A070939(A320456(n+1)+A001222(2*n+5))`
-/

namespace A394762.P13769483778372682694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A320456 (n + 1) + A001222 (2 * n + 5)).toNat

end

end A394762.P13769483778372682694

/-! ## A394762.P5005994122543749466

`ceil(log2(A305504(n+3)))`
-/

namespace A394762.P5005994122543749466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A305504 (n + 3) : ℝ)⌉

end

end A394762.P5005994122543749466

/-!
# A394763: Main diagonal of A394582.

The programs for A394763, the canonical program `A394763.P8265231268044761690` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394763 has offset 1).

The definition of A394763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394763.P8265231268044761690

`A394582(C(n+1+n+1-1, 2)+n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394763

/-- `A394582(C(n+1+n+1-1, 2)+n+1)` -/
def P8265231268044761690.Spec : Prop :=
  ∀ n, P8265231268044761690.a n = A394763 (n + 1)

theorem P8265231268044761690.correct : P8265231268044761690.Spec := by
  intro n
  simp only [A394763, Nat.add_sub_cancel]

end A394763

/-! ## A394763.P13033778403139289979

`A394582((n+1)²+n²)`
-/

namespace A394763.P13033778403139289979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 ((n + 1) ^ 2 + n ^ 2)

end

end A394763.P13033778403139289979

namespace A394763

/-- `A394582((n+1)²+n²)` -/
def P13033778403139289979.Spec : Prop :=
  ∀ n, P13033778403139289979.a n = A394763 (n + 1)

end A394763

/-!
# A394766: Number of squarefree composite k <= 2^n.

The programs for A394766, there is no canonical definition to state claims against.
-/

/-! ## A394766.P11371265998178521931

`A143658(n)-A007053(n)-1`
-/

namespace A394766.P11371265998178521931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n - A007053 n - 1

end

end A394766.P11371265998178521931

/-! ## A394766.P16547051516598547563

`A387944(2^n)`
-/

namespace A394766.P16547051516598547563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (2 ^ n)

end

end A394766.P16547051516598547563

/-! ## A394766.P11100493674408520174

`A209628(2^n)-1`
-/

namespace A394766.P11100493674408520174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209628 (2 ^ n) - 1

end

end A394766.P11100493674408520174

/-!
# A394767: Number of numbers k <= 2^n such that k is neither squareful nor squarefree.

The programs for A394767, there is no canonical definition to state claims against.
-/

/-! ## A394767.P14875625444628913111

`A000079(n)-A062762(n)-A143658(n)+1`
-/

namespace A394767.P14875625444628913111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A062762 n - A143658 n + 1

end

end A394767.P14875625444628913111

/-! ## A394767.P13291799823624380654

`A127902(n+1)-A095345(A127902(n+1))`
-/

namespace A394767.P13291799823624380654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127902 (n + 1) - A095345 (A127902 (n + 1)).toNat

end

end A394767.P13291799823624380654

/-! ## A394767.P875818986251515661

`A157136(n)-A066099(A000045(2*(n+2)))`
-/

namespace A394767.P875818986251515661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157136 n - A066099 (A000045 (2 * (n + 2))).toNat

end

end A394767.P875818986251515661

/-!
# A394768: Number of Achilles numbers that do not exceed 2^n.

The programs for A394768, there is no canonical definition to state claims against.
-/

/-! ## A394768.P15443775913153961130

`A062762(n)-A070228(n)`
-/

namespace A394768.P15443775913153961130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062762 n - A070228 n

end

end A394768.P15443775913153961130

/-!
# A394769: Number of transitive relations on an n-set with at most six ordered pairs.

The programs for A394769, there is no canonical definition to state claims against.
-/

/-! ## A394769.P10074182074614643405

`1+A000290(n)+A349919(n)+A349927(n)+A349849(n)+A348634(n)+A393216(n)`
-/

namespace A394769.P10074182074614643405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000290 n + A349919 n + A349927 n + A349849 n + A348634 n + A393216 n

end

end A394769.P10074182074614643405

/-! ## A394769.P15114418817014426010

`A394732(n)+A393216(n)`
-/

namespace A394769.P15114418817014426010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394732 n + A393216 n

end

end A394769.P15114418817014426010

/-! ## A394769.P16837883378626554622

`A395093(n)-A392460(n)`
-/

namespace A394769.P16837883378626554622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395093 n - A392460 n

end

end A394769.P16837883378626554622

/-! ## A394769.P12562890696498516333

`A395544(n)-(A393925(n)+A392460(n))`
-/

namespace A394769.P12562890696498516333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395544 n - (A393925 n + A392460 n)

end

end A394769.P12562890696498516333

/-! ## A394769.P6490918460390332012

`n²+1+A349919(n)+A349927(n)+A349849(n)+A348634(n)+A393216(n)`
-/

namespace A394769.P6490918460390332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) + A349919 n + A349927 n + A349849 n + A348634 n + A393216 n

end

end A394769.P6490918460390332012

/-!
# A394772: G.f. A(x) satisfies A(x) = 1 - x * d/dx log(1 - x*A(x)^2).

The programs for A394772, there is no canonical definition to state claims against.
-/

/-! ## A394772.P14756500795595000459

`A337721(A278451(n+1))+A278453(A245307(n))`
-/

namespace A394772.P14756500795595000459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337721 (A278451 (n + 1)).toNat + A278453 (A245307 n).toNat

end

end A394772.P14756500795595000459

/-!
# A394775: Numbers that have a base 10 representation in which, for any digit d (1 <= d <= 9), the number of occurrences of d-1 is not less than the number of occurrences of d.

The programs for A394775, there is no canonical definition to state claims against.
-/

/-! ## A394775.P15476857709761487996

`A375243(A370418(n+1))`
-/

namespace A394775.P15476857709761487996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375243 (A370418 (n + 1)).toNat

end

end A394775.P15476857709761487996

/-! ## A394775.P5851717773756319832

`∩[A014419(n), A107411(n)]`
-/

namespace A394775.P5851717773756319832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394775.P5851717773756319832

/-!
# A394776: Optimal strategy in the game Risk or Safety.

The programs for A394776, there is no canonical definition to state claims against.
-/

/-! ## A394776.P13512621344444597552

`A052409(n+1)+A050289(A007588(n)+1)%2`
-/

namespace A394776.P13512621344444597552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) + Int.tmod (A050289 (A007588 n + 1).toNat) 2

end

end A394776.P13512621344444597552

/-!
# A394777: Triangle read by rows: T(n,k) is the number of n-color compositions of n with k parts all in standard order.

The programs for A394777, there is no canonical definition to state claims against.
-/

/-! ## A394777.P17305152092745292473

`A134810(2^(row(n)-col(n)))*A383713(n)`
-/

namespace A394777.P17305152092745292473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134810 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat * A383713 n

end

end A394777.P17305152092745292473

/-! ## A394777.P16562761683467662494

`A270929(2^(row(n)-col(n)))*A383713(n)`
-/

namespace A394777.P16562761683467662494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270929 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat * A383713 n

end

end A394777.P16562761683467662494

/-! ## A394777.P11797299541026052420

`A047998(n)*A179175(A209434(n))`
-/

namespace A394777.P11797299541026052420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n * A179175 (A209434 n).toNat

end

end A394777.P11797299541026052420

/-! ## A394777.P7661862466591000553

`A216326(A125177(n))*A383713(n)`
-/

namespace A394777.P7661862466591000553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216326 (A125177 n).toNat * A383713 n

end

end A394777.P7661862466591000553

/-! ## A394777.P7357374904327211321

`A143589(A328134(n+1))*A227819(n+1)`
-/

namespace A394777.P7357374904327211321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (A328134 (n + 1)).toNat * A227819 (n + 1)

end

end A394777.P7357374904327211321

/-!
# A394778: G.f. A(x) satisfies A(x) = 1 - 2*x * d/dx log(1 - x*A(x)^2).

The programs for A394778, there is no canonical definition to state claims against.
-/

/-! ## A394778.P13015104779261084228

`A310354(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A394778.P13015104779261084228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310354 ((n : ℤ) * a (n - 1)).toNat

end

end A394778.P13015104779261084228

/-!
# A394780: G.f. A(x) satisfies A(x) = 1 - x/2 * d/dx log(1 - 2*x*A(x)^2).

The programs for A394780, there is no canonical definition to state claims against.
-/

/-! ## A394780.P7070195544813508099

`A356988(1+n^(n+1))`
-/

namespace A394780.P7070195544813508099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (1 + n ^ (n + 1))

end

end A394780.P7070195544813508099

/-!
# A394781: G.f. A(x) satisfies A(x) = 1 - x/3 * d/dx log(1 - 3*x*A(x)^2).

The programs for A394781, there is no canonical definition to state claims against.
-/

/-! ## A394781.P12178032132737818871

`A004526(A385914(2*n+1)+1)`
-/

namespace A394781.P12178032132737818871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A385914 (2 * n + 1) + 1).toNat

end

end A394781.P12178032132737818871

/-!
# A394782: a(n) is the largest prime of the form prime(n)#/d + d where p# denotes the product of all primes <= p and d divides prime(n)#.

The programs for A394782, there is no canonical definition to state claims against.
-/

/-! ## A394782.P17145545641744024564

`A295741(n+1)+A002110(n+1)/A295741(n+1)`
-/

namespace A394782.P17145545641744024564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295741 (n + 1) : ℚ) + (A002110 (n + 1) : ℚ) / (A295741 (n + 1) : ℚ)

end

end A394782.P17145545641744024564

/-!
# A394783: Triangle read by rows: T(n,k) = n^(k-1)*(k - 1)! with 1 <= k <= n.

The programs for A394783, the canonical program `A394783.P15713723112550969364` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394783 has offset 1).

The definition of A394783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)^col(n)*col(n)!` (program `A394783.P15713723112550969364`, by `A394783.P15713723112550969364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394783.P15713723112550969364

`(row(n)+1)^col(n)*col(n)!`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394783

/-- `(row(n)+1)^col(n)*col(n)!` -/
def P15713723112550969364.Spec : Prop :=
  ∀ n, (P15713723112550969364.a n : ℤ) = A394783 (n + 1)

theorem P15713723112550969364.correct : P15713723112550969364.Spec := by
  intro n
  simp only [A394783, Nat.add_sub_cancel]

end A394783

/-! ## A394783.P5687938633812973995

`A076112(n+1)*A233543(n)`
-/

namespace A394783.P5687938633812973995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A233543 n

end

end A394783.P5687938633812973995

namespace A394783

/-- `A076112(n+1)*A233543(n)` -/
def P5687938633812973995.Spec : Prop :=
  ∀ n, P5687938633812973995.a n = A394783 (n + 1)

end A394783

/-! ## A394783.P17742238876580547455

`A002262(n)!*A076112(n+1)`
-/

namespace A394783.P17742238876580547455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A076112 (n + 1)

end

end A394783.P17742238876580547455

namespace A394783

/-- `A002262(n)!*A076112(n+1)` -/
def P17742238876580547455.Spec : Prop :=
  ∀ n, P17742238876580547455.a n = A394783 (n + 1)

end A394783

/-! ## A394783.P16820973935271952613

`A153188(A007401(n+1))`
-/

namespace A394783.P16820973935271952613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153188 (A007401 (n + 1)).toNat

end

end A394783.P16820973935271952613

namespace A394783

/-- `A153188(A007401(n+1))` -/
def P16820973935271952613.Spec : Prop :=
  ∀ n, P16820973935271952613.a n = A394783 (n + 1)

end A394783

/-! ## A394783.P14208225450328156029

`A091951(A132950(n))`
-/

namespace A394783.P14208225450328156029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A132950 n).toNat

end

end A394783.P14208225450328156029

namespace A394783

/-- `A091951(A132950(n))` -/
def P14208225450328156029.Spec : Prop :=
  ∀ n, P14208225450328156029.a n = A394783 (n + 1)

end A394783

/-!
# A394784: Row sums of A394783.

The programs for A394784, there is no canonical definition to state claims against.
-/

/-! ## A394784.P5072485233395980799

`A368561(n+1)-A061711(n+1)`
-/

namespace A394784.P5072485233395980799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368561 (n + 1) - A061711 (n + 1)

end

end A394784.P5072485233395980799

/-!
# A394785: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x^2 <= y*z.

The programs for A394785, the canonical program `A394785.P5729035615530729007` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394785 has offset 0).

The definition of A394785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394785.P5729035615530729007

`∑{#}[floor(sqrt(n/2))-1, A000005(n-(#+1)²)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A394785

/-- `∑{#}[floor(sqrt(n/2))-1, A000005(n-(#+1)²)]` -/
def P5729035615530729007.Spec : Prop :=
  ∀ n, P5729035615530729007.a n = A394785 n

theorem P5729035615530729007.correct : P5729035615530729007.Spec := by
  intro n
  simp only [A394785]

end A394785

/-!
# A394786: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x^2 < y*z.

The programs for A394786, there is no canonical definition to state claims against.
-/

/-! ## A394786.P17102705550065252846

`A211508(n)-A394787(n)`
-/

namespace A394786.P17102705550065252846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211508 n - A394787 n

end

end A394786.P17102705550065252846

/-!
# A394787: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x^2 >= y*z.

The programs for A394787, there is no canonical definition to state claims against.
-/

/-! ## A394787.P1903106079925215786

`A211508(n)-A394786(n)`
-/

namespace A394787.P1903106079925215786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211508 n - A394786 n

end

end A394787.P1903106079925215786

/-!
# A394788: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying x <= y < z.

The programs for A394788, there is no canonical definition to state claims against.
-/

/-! ## A394788.P5272415262947052896

`A394038(n)+A338732(n)`
-/

namespace A394788.P5272415262947052896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394038 n + A338732 n

end

end A394788.P5272415262947052896

/-! ## A394788.P7854104240683558837

`A196049(A017914(n+1))`
-/

namespace A394788.P7854104240683558837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A017914 (n + 1)).toNat

end

end A394788.P7854104240683558837

/-! ## A394788.P8831368398740829203

`A338653(∪[A051890(2*(n+2)), A133675(n+1)])`
-/

namespace A394788.P8831368398740829203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A394788.P8831368398740829203

/-!
# A394789: Number of positive integers <= n with exactly two odd divisors.

The programs for A394789, the canonical program `A394789.P12924523429814917951` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394789 has offset 1).

The definition of A394789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394789.P629297749360041493

`∑[round(1/∑{d}[n+1, #%2])%((n+1)/2^val(n+1, 2))]`
-/

namespace A394789.P629297749360041493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (1 / ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P629297749360041493

namespace A394789

/-- `∑[round(1/∑{d}[n+1, #%2])%((n+1)/2^val(n+1, 2))]` -/
def P629297749360041493.Spec : Prop :=
  ∀ n, P629297749360041493.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P12924523429814917951

`∑[A353670(1+n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A394789

/-- `∑[A353670(1+n)]` -/
def P12924523429814917951.Spec : Prop :=
  ∀ n, P12924523429814917951.a n = A394789 (n + 1)

theorem P12924523429814917951.correct : P12924523429814917951.Spec := by
  intro n
  simp only [A394789, Nat.add_sub_cancel]

end A394789

/-! ## A394789.P17596902053622048887

`∑[A353671(2*(n+1))]`
-/

namespace A394789.P17596902053622048887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353671 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P17596902053622048887

namespace A394789

/-- `∑[A353671(2*(n+1))]` -/
def P17596902053622048887.Spec : Prop :=
  ∀ n, P17596902053622048887.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P6964589900390213785

`∑[char[A038550(n+1)-1]]`
-/

namespace A394789.P6964589900390213785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P6964589900390213785

namespace A394789

/-- `∑[char[A038550(n+1)-1]]` -/
def P6964589900390213785.Spec : Prop :=
  ∀ n, (P6964589900390213785.a n : ℤ) = A394789 (n + 1)

end A394789

/-! ## A394789.P17833870605579207126

`∑[char[eq[2, A318450(n+1)]]]`
-/

namespace A394789.P17833870605579207126
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318450 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P17833870605579207126

namespace A394789

/-- `∑[char[eq[2, A318450(n+1)]]]` -/
def P17833870605579207126.Spec : Prop :=
  ∀ n, (P17833870605579207126.a n : ℤ) = A394789 (n + 1)

end A394789

/-! ## A394789.P5668207908058210279

`∑[C(2, A001227(n+1))%2]`
-/

namespace A394789.P5668207908058210279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001227 (n + 1)).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P5668207908058210279

namespace A394789

/-- `∑[C(2, A001227(n+1))%2]` -/
def P5668207908058210279.Spec : Prop :=
  ∀ n, (P5668207908058210279.a n : ℤ) = A394789 (n + 1)

end A394789

/-! ## A394789.P7691148958802578800

`∑[A010051((n+1)/2^val(n+1, 2))]`
-/

namespace A394789.P7691148958802578800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P7691148958802578800

namespace A394789

/-- `∑[A010051((n+1)/2^val(n+1, 2))]` -/
def P7691148958802578800.Spec : Prop :=
  ∀ n, P7691148958802578800.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P7558838211358025217

`∑[A010051(A000265(n+1))]`
-/

namespace A394789.P7558838211358025217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P7558838211358025217

namespace A394789

/-- `∑[A010051(A000265(n+1))]` -/
def P7558838211358025217.Spec : Prop :=
  ∀ n, P7558838211358025217.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P9550294466164685208

`∑[A010051(A064989(n+1))]`
-/

namespace A394789.P9550294466164685208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A064989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P9550294466164685208

namespace A394789

/-- `∑[A010051(A064989(n+1))]` -/
def P9550294466164685208.Spec : Prop :=
  ∀ n, P9550294466164685208.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P6751057764665434366

`∑[A010051(A000217(∑{d}[n+1, #%2]))]`
-/

namespace A394789.P6751057764665434366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000217 (∑ d ∈ Nat.divisors (f2 n), d % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P6751057764665434366

namespace A394789

/-- `∑[A010051(A000217(∑{d}[n+1, #%2]))]` -/
def P6751057764665434366.Spec : Prop :=
  ∀ n, P6751057764665434366.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P5438259782464522979

`∑[val(A276086(A301957(n+1)²)+1, 10)]`
-/

namespace A394789.P5438259782464522979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A301957 (n + 1) ^ 2).toNat + 1).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P5438259782464522979

namespace A394789

/-- `∑[val(A276086(A301957(n+1)²)+1, 10)]` -/
def P5438259782464522979.Spec : Prop :=
  ∀ n, (P5438259782464522979.a n : ℤ) = A394789 (n + 1)

end A394789

/-! ## A394789.P13151045742784236932

`∑[A257994(A000040((n+1)/2^val(n+1, 2)))]`
-/

namespace A394789.P13151045742784236932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P13151045742784236932

namespace A394789

/-- `∑[A257994(A000040((n+1)/2^val(n+1, 2)))]` -/
def P13151045742784236932.Spec : Prop :=
  ∀ n, P13151045742784236932.a n = A394789 (n + 1)

end A394789

/-! ## A394789.P16535584266670223968

`∑[A010051(A001227(n+1)!)]`
-/

namespace A394789.P16535584266670223968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.factorial (A001227 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P16535584266670223968

namespace A394789

/-- `∑[A010051(A001227(n+1)!)]` -/
def P16535584266670223968.Spec : Prop :=
  ∀ n, P16535584266670223968.a n = A394789 (n + 1)

end A394789

/-!
# A394790: Product of the sum of divisors of n with the exponent of the highest power of 2 dividing 2n: a(n) = A000203(n)*A001511(n).

The programs for A394790, the canonical program `A394790.P4967719223950179716` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394790 has offset 1).

The definition of A394790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001511(n+1)` (program `A394790.P4967719223950179716`, by `A394790.P4967719223950179716.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394790.P11794970116887747689

`A000203(n+1)*(1+val(n+1, 2))`
-/

namespace A394790.P11794970116887747689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (1 + SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A394790.P11794970116887747689

namespace A394790

/-- `A000203(n+1)*(1+val(n+1, 2))` -/
def P11794970116887747689.Spec : Prop :=
  ∀ n, P11794970116887747689.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P4967719223950179716

`A000203(n+1)*A001511(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A394790

/-- `A000203(n+1)*A001511(n+1)` -/
def P4967719223950179716.Spec : Prop :=
  ∀ n, P4967719223950179716.a n = A394790 (n + 1)

theorem P4967719223950179716.correct : P4967719223950179716.Spec := by
  intro n
  simp only [A394790, Nat.add_sub_cancel]

end A394790

/-! ## A394790.P17405711150655297350

`(val(n+1, 2)+1)*∑{d}[n+1, #]`
-/

namespace A394790.P17405711150655297350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A394790.P17405711150655297350

namespace A394790

/-- `(val(n+1, 2)+1)*∑{d}[n+1, #]` -/
def P17405711150655297350.Spec : Prop :=
  ∀ n, (P17405711150655297350.a n : ℤ) = A394790 (n + 1)

end A394790

/-! ## A394790.P3077643438185872560

`∑{d}[n+1, #]*∏{e}[n+1, #+1]/∑{d}[n+1, #%2]`
-/

namespace A394790.P3077643438185872560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f3 n), d % 2 : ℕ) : ℚ)

end

end A394790.P3077643438185872560

namespace A394790

/-- `∑{d}[n+1, #]*∏{e}[n+1, #+1]/∑{d}[n+1, #%2]` -/
def P3077643438185872560.Spec : Prop :=
  ∀ n, P3077643438185872560.a n = (A394790 (n + 1) : ℚ)

end A394790

/-! ## A394790.P3109320862349659527

`Δ[A005187(n)]*∑{d}[n+1, #]`
-/

namespace A394790.P3109320862349659527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A394790.P3109320862349659527

namespace A394790

/-- `Δ[A005187(n)]*∑{d}[n+1, #]` -/
def P3109320862349659527.Spec : Prop :=
  ∀ n, P3109320862349659527.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P3322382814893913604

`∑{d}[n+1, #]*A001511(n+1)`
-/

namespace A394790.P3322382814893913604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A001511 (n + 1)

end

end A394790.P3322382814893913604

namespace A394790

/-- `∑{d}[n+1, #]*A001511(n+1)` -/
def P3322382814893913604.Spec : Prop :=
  ∀ n, P3322382814893913604.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P5491916867601364893

`∑{d}[n+1, #]*col(A286162(n+1))`
-/

namespace A394790.P5491916867601364893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * SequenceMachineLib.triCol (A286162 (n + 1)).toNat

end

end A394790.P5491916867601364893

namespace A394790

/-- `∑{d}[n+1, #]*col(A286162(n+1))` -/
def P5491916867601364893.Spec : Prop :=
  ∀ n, (P5491916867601364893.a n : ℤ) = A394790 (n + 1)

end A394790

/-! ## A394790.P16209029612442164974

`(val(n+1, 2)+1)*A000203(n+1)`
-/

namespace A394790.P16209029612442164974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A000203 (n + 1)

end

end A394790.P16209029612442164974

namespace A394790

/-- `(val(n+1, 2)+1)*A000203(n+1)` -/
def P16209029612442164974.Spec : Prop :=
  ∀ n, P16209029612442164974.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P13410285768786786911

`Δ[A005187(n)]*A000203(n+1)`
-/

namespace A394790.P13410285768786786911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000203 (n + 1)

end

end A394790.P13410285768786786911

namespace A394790

/-- `Δ[A005187(n)]*A000203(n+1)` -/
def P13410285768786786911.Spec : Prop :=
  ∀ n, P13410285768786786911.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P15839745124181103923

`A038712(n+1)*A264740(n+1)`
-/

namespace A394790.P15839745124181103923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A264740 (n + 1)

end

end A394790.P15839745124181103923

namespace A394790

/-- `A038712(n+1)*A264740(n+1)` -/
def P15839745124181103923.Spec : Prop :=
  ∀ n, P15839745124181103923.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P11446110874016933749

`A064840(n+1)/A001227(n+1)`
-/

namespace A394790.P11446110874016933749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A394790.P11446110874016933749

namespace A394790

/-- `A064840(n+1)/A001227(n+1)` -/
def P11446110874016933749.Spec : Prop :=
  ∀ n, P11446110874016933749.a n = (A394790 (n + 1) : ℚ)

end A394790

/-! ## A394790.P16945045382392332505

`∑{d}[n+1, A038712(#)*A399739((n+1)/#)]`
-/

namespace A394790.P16945045382392332505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A399739 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A394790.P16945045382392332505

namespace A394790

/-- `∑{d}[n+1, A038712(#)*A399739((n+1)/#)]` -/
def P16945045382392332505.Spec : Prop :=
  ∀ n, P16945045382392332505.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P1283985194875492635

`A000005(A006519(n+1))*A000203(n+1)`
-/

namespace A394790.P1283985194875492635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A000203 (n + 1)

end

end A394790.P1283985194875492635

namespace A394790

/-- `A000005(A006519(n+1))*A000203(n+1)` -/
def P1283985194875492635.Spec : Prop :=
  ∀ n, P1283985194875492635.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P6817747230012229685

`(A005187(n+1)-A005187(n))*A000203(n+1)`
-/

namespace A394790.P6817747230012229685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A005187 n) * A000203 (n + 1)

end

end A394790.P6817747230012229685

namespace A394790

/-- `(A005187(n+1)-A005187(n))*A000203(n+1)` -/
def P6817747230012229685.Spec : Prop :=
  ∀ n, P6817747230012229685.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P3932222686181912254

`A000203(n+1)/A000593(n+1)*A264740(n+1)`
-/

namespace A394790.P3932222686181912254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ) * (A264740 (n + 1) : ℚ)

end

end A394790.P3932222686181912254

namespace A394790

/-- `A000203(n+1)/A000593(n+1)*A264740(n+1)` -/
def P3932222686181912254.Spec : Prop :=
  ∀ n, P3932222686181912254.a n = (A394790 (n + 1) : ℚ)

end A394790

/-! ## A394790.P16632474628395175476

`A000203(n+1)*A038040(n+1)/A245579(n+1)`
-/

namespace A394790.P16632474628395175476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A038040 (n + 1) : ℚ) / (A245579 (n + 1) : ℚ)

end

end A394790.P16632474628395175476

namespace A394790

/-- `A000203(n+1)*A038040(n+1)/A245579(n+1)` -/
def P16632474628395175476.Spec : Prop :=
  ∀ n, P16632474628395175476.a n = (A394790 (n + 1) : ℚ)

end A394790

/-! ## A394790.P234924739360812202

`Δ[A101925(n)]*∑{d}[n+1, #]`
-/

namespace A394790.P234924739360812202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A394790.P234924739360812202

namespace A394790

/-- `Δ[A101925(n)]*∑{d}[n+1, #]` -/
def P234924739360812202.Spec : Prop :=
  ∀ n, P234924739360812202.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P14557014235850772814

`A000203(n+1)*A094267(2*n)`
-/

namespace A394790.P14557014235850772814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A094267 (2 * n)

end

end A394790.P14557014235850772814

namespace A394790

/-- `A000203(n+1)*A094267(2*n)` -/
def P14557014235850772814.Spec : Prop :=
  ∀ n, P14557014235850772814.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P15153430029360917693

`∑{d}[n+1, #]*A007814(2*(n+1))`
-/

namespace A394790.P15153430029360917693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A007814 (2 * (n + 1))

end

end A394790.P15153430029360917693

namespace A394790

/-- `∑{d}[n+1, #]*A007814(2*(n+1))` -/
def P15153430029360917693.Spec : Prop :=
  ∀ n, P15153430029360917693.a n = A394790 (n + 1)

end A394790

/-! ## A394790.P2909539676948415338

`A000203(n+1)*A007814(2*(n+1))`
-/

namespace A394790.P2909539676948415338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A007814 (2 * (n + 1))

end

end A394790.P2909539676948415338

namespace A394790

/-- `A000203(n+1)*A007814(2*(n+1))` -/
def P2909539676948415338.Spec : Prop :=
  ∀ n, P2909539676948415338.a n = A394790 (n + 1)

end A394790

/-!
# A394791: Smallest number k such that the symmetric representation of sigma(k) has 2*n parts and two parts meet at the center of the Dyck paths.

The programs for A394791, there is no canonical definition to state claims against.
-/

/-! ## A394791.P14245806098181348656

`A395156(∑[n+1])`
-/

namespace A394791.P14245806098181348656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394791.P14245806098181348656

/-!
# A394792: Number of positive integers <= n with exactly three odd divisors.

The programs for A394792, the canonical program `A394792.P15853201692661085382` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394792 has offset 1).

The definition of A394792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394792.P16654796668690023441

`∑[A316864(∑{d}[n+1, #%2])]`
-/

namespace A394792.P16654796668690023441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (∑ d ∈ Nat.divisors (f2 n), d % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P16654796668690023441

namespace A394792

/-- `∑[A316864(∑{d}[n+1, #%2])]` -/
def P16654796668690023441.Spec : Prop :=
  ∀ n, P16654796668690023441.a n = A394792 (n + 1)

end A394792

/-! ## A394792.P2626715896412899641

`∑[A008437(A001227(n+1))]`
-/

namespace A394792.P2626715896412899641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A001227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P2626715896412899641

namespace A394792

/-- `∑[A008437(A001227(n+1))]` -/
def P2626715896412899641.Spec : Prop :=
  ∀ n, P2626715896412899641.a n = A394792 (n + 1)

end A394792

/-! ## A394792.P15853201692661085382

`∑[A010054(A054844(n+1)²)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A394792

/-- `∑[A010054(A054844(n+1)²)]` -/
def P15853201692661085382.Spec : Prop :=
  ∀ n, P15853201692661085382.a n = A394792 (n + 1)

theorem P15853201692661085382.correct : P15853201692661085382.Spec := by
  intro n
  simp only [A394792, Nat.add_sub_cancel]

end A394792

/-! ## A394792.P5466766480889928898

`∑[A069846(A001227(n+1)²)]`
-/

namespace A394792.P5466766480889928898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069846 (A001227 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P5466766480889928898

namespace A394792

/-- `∑[A069846(A001227(n+1)²)]` -/
def P5466766480889928898.Spec : Prop :=
  ∀ n, P5466766480889928898.a n = A394792 (n + 1)

end A394792

/-! ## A394792.P1381594817322258373

`∑[A400260(A001227(n+1)²)]`
-/

namespace A394792.P1381594817322258373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400260 (A001227 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P1381594817322258373

namespace A394792

/-- `∑[A400260(A001227(n+1)²)]` -/
def P1381594817322258373.Spec : Prop :=
  ∀ n, P1381594817322258373.a n = A394792 (n + 1)

end A394792

/-! ## A394792.P7219943749002444621

`∑[val(A276086(A301957(n+1)+1)+1, 10)]`
-/

namespace A394792.P7219943749002444621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 (A301957 (n + 1) + 1).toNat + 1).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P7219943749002444621

namespace A394792

/-- `∑[val(A276086(A301957(n+1)+1)+1, 10)]` -/
def P7219943749002444621.Spec : Prop :=
  ∀ n, (P7219943749002444621.a n : ℤ) = A394792 (n + 1)

end A394792

/-! ## A394792.P13605749746343674224

`∑[val(A125010(A301957(n+1)+2)+1, 10)]`
-/

namespace A394792.P13605749746343674224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A125010 (A301957 (n + 1) + 2).toNat + 1).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P13605749746343674224

namespace A394792

/-- `∑[val(A125010(A301957(n+1)+2)+1, 10)]` -/
def P13605749746343674224.Spec : Prop :=
  ∀ n, (P13605749746343674224.a n : ℤ) = A394792 (n + 1)

end A394792

/-! ## A394792.P114159031798003316

`∑[A127253(A001227(n+1)²)]`
-/

namespace A394792.P114159031798003316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127253 (A001227 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P114159031798003316

namespace A394792

/-- `∑[A127253(A001227(n+1)²)]` -/
def P114159031798003316.Spec : Prop :=
  ∀ n, P114159031798003316.a n = A394792 (n + 1)

end A394792

/-! ## A394792.P2990453225346076393

`∑[A373979(A050999(n+1))]`
-/

namespace A394792.P2990453225346076393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373979 (A050999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P2990453225346076393

namespace A394792

/-- `∑[A373979(A050999(n+1))]` -/
def P2990453225346076393.Spec : Prop :=
  ∀ n, P2990453225346076393.a n = A394792 (n + 1)

end A394792

/-! ## A394792.P10605287516889021332

`∑[A323170(A348029(n+1)+A047969(n))]`
-/

namespace A394792.P10605287516889021332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (A348029 (n + 1) + A047969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P10605287516889021332

namespace A394792

/-- `∑[A323170(A348029(n+1)+A047969(n))]` -/
def P10605287516889021332.Spec : Prop :=
  ∀ n, P10605287516889021332.a n = A394792 (n + 1)

end A394792

/-!
# A394799: a(0) = a(1) = a(2) = 1; a(n) = a(n-1) + (n-2)*a(n-3).

The programs for A394799, the canonical program `A394799.P17718767721472478372` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394799 has offset 0).

The definition of A394799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-2)*a(n-3)` (program `A394799.P17718767721472478372`, by `A394799.P17718767721472478372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394799.P17718767721472478372

`a(n-1)+(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394799

/-- `a(n-1)+(n-2)*a(n-3)` -/
def P17718767721472478372.Spec : Prop :=
  ∀ n, P17718767721472478372.a n = A394799 n

theorem P17718767721472478372.correct : P17718767721472478372.Spec := by
  intro n
  simp only [A394799]

end A394799

/-! ## A394799.P5577050355485407568

`A325457(A023431(n))`
-/

namespace A394799.P5577050355485407568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (A023431 n).toNat

end

end A394799.P5577050355485407568

namespace A394799

/-- `A325457(A023431(n))` -/
def P5577050355485407568.Spec : Prop :=
  ∀ n, P5577050355485407568.a n = A394799 n

end A394799

/-! ## A394799.P11653627311584527570

`A316495(A202850(n))`
-/

namespace A394799.P11653627311584527570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A202850 n).toNat

end

end A394799.P11653627311584527570

namespace A394799

/-- `A316495(A202850(n))` -/
def P11653627311584527570.Spec : Prop :=
  ∀ n, P11653627311584527570.a n = A394799 n

end A394799

/-! ## A394799.P11701958151142409450

`A317492(A202842(n))`
-/

namespace A394799.P11701958151142409450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A202842 n).toNat

end

end A394799.P11701958151142409450

namespace A394799

/-- `A317492(A202842(n))` -/
def P11701958151142409450.Spec : Prop :=
  ∀ n, P11701958151142409450.a n = A394799 n

end A394799

/-! ## A394799.P13943904299393470596

`A317492(A202849(n))`
-/

namespace A394799.P13943904299393470596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A202849 n).toNat

end

end A394799.P13943904299393470596

namespace A394799

/-- `A317492(A202849(n))` -/
def P13943904299393470596.Spec : Prop :=
  ∀ n, P13943904299393470596.a n = A394799 n

end A394799

