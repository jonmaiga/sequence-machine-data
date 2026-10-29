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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A322200: L.g.f.: L(x,y) = log( Product_{n>=1} 1/(1 - (x^n + y^n)) ), where L(x,y) = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^n*y^k / (n+k) such that L(0,0) = 0, as a symmetric square table of coefficients T(n,k) read by antidiagonals starting with T(0,0) = 0.

The programs for A322200, there is no canonical definition to state claims against.
-/

/-! ## A322200.P12641863021477662200

`A077070(n)-A178686(A007318(n)²)`
-/

namespace A322200.P12641863021477662200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 n - A178686 (A007318 n ^ 2).toNat

end

end A322200.P12641863021477662200

/-! ## A322200.P8898075716302912023

`A000120(A212508(n))-A049639(n+1)`
-/

namespace A322200.P8898075716302912023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A212508 n).toNat - A049639 (n + 1)

end

end A322200.P8898075716302912023

/-! ## A322200.P2734280280874107425

`A001222(xor(A227298(n+1), A239632(n)))`
-/

namespace A322200.P2734280280874107425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A227298 (n + 1)) (A239632 n)).toNat

end

end A322200.P2734280280874107425

/-! ## A322200.P4359935288698366658

`A001222(A314940(n)+A279327(∑[n]+1))`
-/

namespace A322200.P4359935288698366658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A314940 n + A279327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A322200.P4359935288698366658

/-! ## A322200.P441953359791197193

`A001222(A314940(n)+A279805(∑[n]+1))`
-/

namespace A322200.P441953359791197193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A314940 n + A279805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A322200.P441953359791197193

/-!
# A322201: Main diagonal of square table A322200.

The programs for A322201, the canonical program `A322201.P14556813389480413780` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322201 has offset 0).

The definition of A322201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322201.P14556813389480413780

`2*∑{d}[n, A081875(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A322201

/-- `2*∑{d}[n, A081875(#)]` -/
def P14556813389480413780.Spec : Prop :=
  ∀ n, P14556813389480413780.a n = A322201 n

theorem P14556813389480413780.correct : P14556813389480413780.Spec := by
  intro n
  simp only [A322201]

end A322201

/-! ## A322201.P2572708358006509904

`∑{d}[n, n/#*A000984(#)]`
-/

namespace A322201.P2572708358006509904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A000984 d : ℚ)

end

end A322201.P2572708358006509904

namespace A322201

/-- `∑{d}[n, n/#*A000984(#)]` -/
def P2572708358006509904.Spec : Prop :=
  ∀ n, P2572708358006509904.a n = (A322201 n : ℚ)

end A322201

/-! ## A322201.P6029943691812407723

`record[A322203(n+1)-A322187(n+1)]`
-/

namespace A322201.P6029943691812407723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322203 (n + 1) - A322187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322201.P6029943691812407723

namespace A322201

/-- `record[A322203(n+1)-A322187(n+1)]` -/
def P6029943691812407723.Spec : Prop :=
  ∀ n, P6029943691812407723.a n = A322201 n

end A322201

/-! ## A322201.P3159104961891582493

`A322200(∑[4*n])`
-/

namespace A322201.P3159104961891582493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322200 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322201.P3159104961891582493

namespace A322201

/-- `A322200(∑[4*n])` -/
def P3159104961891582493.Spec : Prop :=
  ∀ n, P3159104961891582493.a n = A322201 n

end A322201

/-! ## A322201.P6220174120935755524

`lcm(2, A322200(2*(n²+n)))`
-/

namespace A322201.P6220174120935755524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322200 (2 * (n ^ 2 + n)))

end

end A322201.P6220174120935755524

namespace A322201

/-- `lcm(2, A322200(2*(n²+n)))` -/
def P6220174120935755524.Spec : Prop :=
  ∀ n, (P6220174120935755524.a n : ℤ) = A322201 n

end A322201

/-!
# A322202: G.f.: exp( Sum_{n>=1} A322201(n)*x^n/n ), where A322201(n) is the coefficient of x^n*y^n/(2*n) in Sum_{n>=1} -log(1 - (x^n + y^n)).

The programs for A322202, there is no canonical definition to state claims against.
-/

/-! ## A322202.P14150781400575732564

`A383048(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A322202.P14150781400575732564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A383048 (a (n - 1)).toNat + (n : ℤ)

end

end A322202.P14150781400575732564

/-! ## A322202.P7224486842313039128

`A096135(A141495(n))`
-/

namespace A322202.P7224486842313039128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A141495 n).toNat

end

end A322202.P7224486842313039128

/-!
# A322203: a(n) = coefficient of x^n*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)), for n >= 1.

The programs for A322203, the canonical program `A322203.P6177819774650873781` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322203 has offset 1).

The definition of A322203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322203.P5965370736788024033

`A322201(n+1)/2`
-/

namespace A322203.P5965370736788024033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322201 (n + 1) : ℚ) / 2

end

end A322203.P5965370736788024033

namespace A322203

/-- `A322201(n+1)/2` -/
def P5965370736788024033.Spec : Prop :=
  ∀ n, P5965370736788024033.a n = (A322203 (n + 1) : ℚ)

end A322203

/-! ## A322203.P765799856835340916

`∑{d}[n+1, A081875(#)]`
-/

namespace A322203.P765799856835340916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A081875 d

end

end A322203.P765799856835340916

namespace A322203

/-- `∑{d}[n+1, A081875(#)]` -/
def P765799856835340916.Spec : Prop :=
  ∀ n, P765799856835340916.a n = A322203 (n + 1)

end A322203

/-! ## A322203.P4663552149488938760

`∑{d}[n+1, #*A003239(#)]`
-/

namespace A322203.P4663552149488938760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003239 d

end

end A322203.P4663552149488938760

namespace A322203

/-- `∑{d}[n+1, #*A003239(#)]` -/
def P4663552149488938760.Spec : Prop :=
  ∀ n, P4663552149488938760.a n = A322203 (n + 1)

end A322203

/-! ## A322203.P16242101597989749989

`∑{d}[n+1, #*A088218((n+1)/#)]`
-/

namespace A322203.P16242101597989749989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A088218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322203.P16242101597989749989

namespace A322203

/-- `∑{d}[n+1, #*A088218((n+1)/#)]` -/
def P16242101597989749989.Spec : Prop :=
  ∀ n, P16242101597989749989.a n = A322203 (n + 1)

end A322203

/-! ## A322203.P6177819774650873781

`∑{d}[n+1, #*A001700((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322203

/-- `∑{d}[n+1, #*A001700((n+1)/#-1)]` -/
def P6177819774650873781.Spec : Prop :=
  ∀ n, P6177819774650873781.a n = A322203 (n + 1)

theorem P6177819774650873781.correct : P6177819774650873781.Spec := by
  intro n
  simp only [A322203, Nat.add_sub_cancel]

end A322203

/-! ## A322203.P15388843994996105829

`∑{d}[n+1, A000010(#)*A382503((n+1)/#)]`
-/

namespace A322203.P15388843994996105829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A382503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322203.P15388843994996105829

namespace A322203

/-- `∑{d}[n+1, A000010(#)*A382503((n+1)/#)]` -/
def P15388843994996105829.Spec : Prop :=
  ∀ n, P15388843994996105829.a n = A322203 (n + 1)

end A322203

/-! ## A322203.P5447754586965736095

`∑{d}[n+1, A099894(#-1)*A322187((n+1)/#)]`
-/

namespace A322203.P5447754586965736095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A322187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322203.P5447754586965736095

namespace A322203

/-- `∑{d}[n+1, A099894(#-1)*A322187((n+1)/#)]` -/
def P5447754586965736095.Spec : Prop :=
  ∀ n, P5447754586965736095.a n = A322203 (n + 1)

end A322203

/-!
# A322204: G.f.: exp( Sum_{n>=1} A322203(n)*x^n/n ), where A322203(n) is the coefficient of x^n*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)).

The programs for A322204, there is no canonical definition to state claims against.
-/

/-! ## A322204.P16609120292380336159

`∑[A060810(2*(n+1))]-3*n`
-/

namespace A322204.P16609120292380336159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)

end

end A322204.P16609120292380336159

/-! ## A322204.P15476465924532489261

`A024417(A150036(n))`
-/

namespace A322204.P15476465924532489261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A150036 n).toNat

end

end A322204.P15476465924532489261

/-! ## A322204.P6688588774145891414

`A194806(A149311(n))`
-/

namespace A322204.P6688588774145891414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (A149311 n).toNat

end

end A322204.P6688588774145891414

/-!
# A322205: a(n) = coefficient of x^(2*n)*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)) for n >= 1.

The programs for A322205, there is no canonical definition to state claims against.
-/

/-! ## A322205.P5817745418738050379

`∑{d}[n+1, #*A082936(#)]`
-/

namespace A322205.P5817745418738050379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082936 d

end

end A322205.P5817745418738050379

/-! ## A322205.P9296950484431599269

`∑{d}[n+1, #*A025174((n+1)/#)]`
-/

namespace A322205.P9296950484431599269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A025174 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322205.P9296950484431599269

/-!
# A322206: G.f.: exp( Sum_{n>=1} A322205(n)*x^n/n ), where A322205(n) is the coefficient of x^(2*n)*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)).

The programs for A322206, there is no canonical definition to state claims against.
-/

/-! ## A322206.P6963110335313356275

`A325354(2^n)-floor(sqrt(n%4))`
-/

namespace A322206.P6963110335313356275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325354 (2 ^ n) - (Nat.sqrt (n % 4) : ℤ)

end

end A322206.P6963110335313356275

/-! ## A322206.P12742857781459846769

`A265650(A150406(n))`
-/

namespace A322206.P12742857781459846769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265650 (A150406 n).toNat

end

end A322206.P12742857781459846769

/-!
# A322207: a(n) = coefficient of x^(3*n)*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)).

The programs for A322207, there is no canonical definition to state claims against.
-/

/-! ## A322207.P6699466399922624517

`∑{d}[n+1, #*A261497(#)]`
-/

namespace A322207.P6699466399922624517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A261497 d

end

end A322207.P6699466399922624517

/-! ## A322207.P17826875474433819860

`∑{d}[n+1, #*A224274((n+1)/#)]`
-/

namespace A322207.P17826875474433819860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A224274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322207.P17826875474433819860

/-!
# A322208: G.f.: exp( Sum_{n>=1} A322207(n)*x^n/n ), where A322207(n) is the coefficient of x^(3*n)*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)).

The programs for A322208, there is no canonical definition to state claims against.
-/

/-! ## A322208.P6736488182869773269

`A302706(A302699(n))+n!`
-/

namespace A322208.P6736488182869773269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302706 (A302699 n).toNat + (Nat.factorial n : ℤ)

end

end A322208.P6736488182869773269

/-! ## A322208.P2335272212630472645

`A302706(A302699(n))+A000142(n)`
-/

namespace A322208.P2335272212630472645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302706 (A302699 n).toNat + A000142 n

end

end A322208.P2335272212630472645

/-!
# A322209: L.g.f.: log( Product_{n>=1} 1/(1 - (2^n+1)*x^n) ).

The programs for A322209, there is no canonical definition to state claims against.
-/

/-! ## A322209.P10750220436480214364

`(10^n-1)%A000267(10^n)`
-/

namespace A322209.P10750220436480214364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((10 ^ n : ℤ) - 1) (A000267 (10 ^ n))

end

end A322209.P10750220436480214364

/-!
# A322210: G.f.: P(x,y) = Product_{n>=1} 1/(1 - (x^n + y^n)), where P(x,y) = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^n*y^k, as a square table of coefficients T(n,k) read by antidiagonals.

The programs for A322210, there is no canonical definition to state claims against.
-/

/-! ## A322210.P856152014172858301

`A186034(A022167(n))+A054225(n)`
-/

namespace A322210.P856152014172858301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 (A022167 n).toNat + A054225 n

end

end A322210.P856152014172858301

/-! ## A322210.P8389477638291377086

`A065339(A316960(n+1))+A054225(n)`
-/

namespace A322210.P8389477638291377086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A316960 (n + 1)).toNat + A054225 n

end

end A322210.P8389477638291377086

/-! ## A322210.P5405776463891539822

`A344739(A132789(n+1))+A054225(n)`
-/

namespace A322210.P5405776463891539822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A132789 (n + 1)).toNat + A054225 n

end

end A322210.P5405776463891539822

/-! ## A322210.P3165091243533824992

`A054225(n)+A037824(A022173(n))`
-/

namespace A322210.P3165091243533824992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 n + A037824 (A022173 n).toNat

end

end A322210.P3165091243533824992

/-! ## A322210.P8846926289101334316

`A054225(n)+A038144(A303864(n))`
-/

namespace A322210.P8846926289101334316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 n + A038144 (A303864 n).toNat

end

end A322210.P8846926289101334316

/-!
# A322211: a(n) = coefficient of x^n*y^n in Product_{n>=1} 1/(1 - (x^n + y^n)).

The programs for A322211, there is no canonical definition to state claims against.
-/

/-! ## A322211.P2486165372654604276

`A322210(∑[4*n])`
-/

namespace A322211.P2486165372654604276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322211.P2486165372654604276

/-! ## A322211.P56167144015950706

`record[A003982(n)*A322210(n)]`
-/

namespace A322211.P56167144015950706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A322210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322211.P56167144015950706

/-! ## A322211.P7908674211921388284

`lcm(log2(1/2), A322210(A046092(n)))`
-/

namespace A322211.P7908674211921388284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A322210 (A046092 n).toNat)

end

end A322211.P7908674211921388284

/-! ## A322211.P2682315610539274534

`record[A322210((n+1)*A133622(n+1))]`
-/

namespace A322211.P2682315610539274534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322210 ((n + 1 : ℤ) * A133622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322211.P2682315610539274534

/-! ## A322211.P17104269825176474317

`A033999(n)²*A322210(A046092(n))`
-/

namespace A322211.P17104269825176474317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A322210 (A046092 n).toNat

end

end A322211.P17104269825176474317

/-! ## A322211.P3594222959684346415

`A155865(A000096(n))*A322210(A046092(n))`
-/

namespace A322211.P3594222959684346415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 (A000096 n).toNat * A322210 (A046092 n).toNat

end

end A322211.P3594222959684346415

/-!
# A322212: G.f.: P(x,y) = Product_{n>=1} (1 - (x^n + y^n)), where P(x,y) = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^n*y^k, as a square table of coefficients T(n,k) read by antidiagonals.

The programs for A322212, there is no canonical definition to state claims against.
-/

/-! ## A322212.P1527074800103269624

`A011647(A304704(n+1))^A099594(n)`
-/

namespace A322212.P1527074800103269624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011647 (A304704 (n + 1)).toNat : ℚ) ^ (A099594 n : ℤ)

end

end A322212.P1527074800103269624

/-! ## A322212.P3024458426207667664

`A016336(A305452(n+1))^A099594(n)`
-/

namespace A322212.P3024458426207667664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016336 (A305452 (n + 1)).toNat : ℚ) ^ (A099594 n : ℤ)

end

end A322212.P3024458426207667664

/-! ## A322212.P12776654734326570018

`A011647(A304704(n+1))^A174545(n)`
-/

namespace A322212.P12776654734326570018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011647 (A304704 (n + 1)).toNat : ℚ) ^ (A174545 n : ℤ)

end

end A322212.P12776654734326570018

/-! ## A322212.P12496565337170250510

`A016336(A305452(n+1))^A174545(n)`
-/

namespace A322212.P12496565337170250510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016336 (A305452 (n + 1)).toNat : ℚ) ^ (A174545 n : ℤ)

end

end A322212.P12496565337170250510

/-! ## A322212.P5051219413286571442

`A011647(A304704(n+1))^A329428(n)`
-/

namespace A322212.P5051219413286571442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011647 (A304704 (n + 1)).toNat : ℚ) ^ (A329428 n : ℤ)

end

end A322212.P5051219413286571442

/-!
# A322213: a(n) = coefficient of x^n*y^n in Product_{n>=1} (1 - (x^n + y^n)).

The programs for A322213, there is no canonical definition to state claims against.
-/

/-! ## A322213.P12957365689009055568

`A322212(∑[4*n])`
-/

namespace A322213.P12957365689009055568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322213.P12957365689009055568

/-! ## A322213.P4069172372517048024

`A322212(A046092(n))%(n²+2)`
-/

namespace A322213.P4069172372517048024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322212 (A046092 n).toNat) (n ^ 2 + 2 : ℤ)

end

end A322213.P4069172372517048024

/-! ## A322213.P17491716418733126288

`or(A000007(n), A322212(A046092(n)))`
-/

namespace A322213.P17491716418733126288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322212 (A046092 n).toNat)

end

end A322213.P17491716418733126288

/-! ## A322213.P11809186032895113493

`A322212(A046092(n))+A156660(n²)`
-/

namespace A322213.P11809186032895113493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322212 (A046092 n).toNat + A156660 (n ^ 2)

end

end A322213.P11809186032895113493

/-! ## A322213.P17959354246643659829

`A033999(n)²*A322212(A046092(n))`
-/

namespace A322213.P17959354246643659829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A322212 (A046092 n).toNat

end

end A322213.P17959354246643659829

/-! ## A322213.P6730259514480707629

`A322212(A046092(n))/A177704(n²)`
-/

namespace A322213.P6730259514480707629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322212 (A046092 n).toNat : ℚ) / (A177704 (n ^ 2) : ℚ)

end

end A322213.P6730259514480707629

/-! ## A322213.P11468079033201166686

`A322212(A046092(n))-A000007(n+1)`
-/

namespace A322213.P11468079033201166686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322212 (A046092 n).toNat - A000007 (n + 1)

end

end A322213.P11468079033201166686

/-! ## A322213.P3783565756196686701

`A000041(C(2, n))*A322212(A046092(n))`
-/

namespace A322213.P3783565756196686701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A322212 (A046092 n).toNat

end

end A322213.P3783565756196686701

/-! ## A322213.P17128142789182627159

`A007318(C(2, n))*A322212(A046092(n))`
-/

namespace A322213.P17128142789182627159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A322212 (A046092 n).toNat

end

end A322213.P17128142789182627159

/-! ## A322213.P18445510019128907946

`A322212(A046092(n))+A000045(C(n, 64))`
-/

namespace A322213.P18445510019128907946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322212 (A046092 n).toNat + A000045 (Nat.choose n 64)

end

end A322213.P18445510019128907946

/-!
# A322214: a(n) = coefficient of x^n*y^n in Product_{n>=1} (1 - (x^n + y^n))^3.

The programs for A322214, there is no canonical definition to state claims against.
-/

/-! ## A322214.P14019963916886302988

`A322215(∑[4*n])`
-/

namespace A322214.P14019963916886302988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322214.P14019963916886302988

/-! ## A322214.P9072434056082848201

`log2(4/2)*A322215(A046092(n))`
-/

namespace A322214.P9072434056082848201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * (A322215 (A046092 n).toNat : ℝ)

end

end A322214.P9072434056082848201

/-! ## A322214.P3386732162592419028

`or(A000007(n), A322215(A046092(n)))`
-/

namespace A322214.P3386732162592419028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322215 (A046092 n).toNat)

end

end A322214.P3386732162592419028

/-! ## A322214.P10451557446186733470

`A322215(A046092(n))+A000007(n+1)`
-/

namespace A322214.P10451557446186733470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322215 (A046092 n).toNat + A000007 (n + 1)

end

end A322214.P10451557446186733470

/-! ## A322214.P14538709432127200499

`A322215(A046092(n))%A163276(n+1)`
-/

namespace A322214.P14538709432127200499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322215 (A046092 n).toNat) (A163276 (n + 1))

end

end A322214.P14538709432127200499

/-! ## A322214.P17089500949794558762

`A322215(A046092(n))^(A000045(n)%2)!`
-/

namespace A322214.P17089500949794558762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322215 (A046092 n).toNat ^ Nat.factorial (Int.tmod (A000045 n) 2).toNat

end

end A322214.P17089500949794558762

/-! ## A322214.P9309955435047820657

`A322215(A046092(n))+A008683(4*(n+1))`
-/

namespace A322214.P9309955435047820657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322215 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A322214.P9309955435047820657

/-! ## A322214.P10175024059638908506

`A322215(A046092(n))^(A000040(n+1)%2)`
-/

namespace A322214.P10175024059638908506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322215 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A322214.P10175024059638908506

/-!
# A322217: Expansion of the 2-adic integer sqrt(17) that ends in 01.

The programs for A322217, there is no canonical definition to state claims against.
-/

/-! ## A322217.P7795081013164275925

`(1-A341540(n))^n`
-/

namespace A322217.P7795081013164275925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341540 n) ^ n

end

end A322217.P7795081013164275925

/-! ## A322217.P15265662683706563132

`A054977(n)-A341540(n)`
-/

namespace A322217.P15265662683706563132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A341540 n

end

end A322217.P15265662683706563132

/-! ## A322217.P6335579513319692677

`A000007(n*A341540(n))`
-/

namespace A322217.P6335579513319692677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A341540 n).toNat

end

end A322217.P6335579513319692677

/-! ## A322217.P5430508759540912741

`xor(A057427(n), A341540(n))`
-/

namespace A322217.P5430508759540912741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A341540 n)

end

end A322217.P5430508759540912741

/-! ## A322217.P4222656000673822685

`(A341540(n)+A057428(n))²`
-/

namespace A322217.P4222656000673822685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341540 n + A057428 n) ^ 2

end

end A322217.P4222656000673822685

/-! ## A322217.P16907078602267290711

`A000007(n)+1-A341540(n)`
-/

namespace A322217.P16907078602267290711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A341540 n)

end

end A322217.P16907078602267290711

/-! ## A322217.P7658764857217368789

`A057428(n*A341540(n))+1`
-/

namespace A322217.P7658764857217368789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n : ℤ) * A341540 n).toNat + 1

end

end A322217.P7658764857217368789

/-! ## A322217.P1400570273368120679

`1-A057427(n*A341540(n))`
-/

namespace A322217.P1400570273368120679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A341540 n).toNat

end

end A322217.P1400570273368120679

/-! ## A322217.P15312814779367389274

`abs(abs(A062157(n))-A341540(n))`
-/

namespace A322217.P15312814779367389274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A062157 n| - A341540 n)|

end

end A322217.P15312814779367389274

/-! ## A322217.P5050554968369841602

`abs(A341540(n)+A062157(2*n))`
-/

namespace A322217.P5050554968369841602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341540 n + A062157 (2 * n)|

end

end A322217.P5050554968369841602

/-! ## A322217.P16499967259746888198

`A341540(a(n-1))-A341540(n)` with `a(0)=1`
-/

namespace A322217.P16499967259746888198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341540 (a (n - 1)).toNat - A341540 n

end

end A322217.P16499967259746888198

/-! ## A322217.P14689438332753797114

`A318962(n)+A318963(n)-A341540(n)`
-/

namespace A322217.P14689438332753797114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 n + (A318963 n - A341540 n)

end

end A322217.P14689438332753797114

/-! ## A322217.P4985589862620819231

`A341602(n)+A341603(n)-A341540(n)`
-/

namespace A322217.P4985589862620819231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 n + (A341603 n - A341540 n)

end

end A322217.P4985589862620819231

/-! ## A322217.P5519192149043295267

`A341753(n)+A341754(n)-A341540(n)`
-/

namespace A322217.P5519192149043295267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 n + (A341754 n - A341540 n)

end

end A322217.P5519192149043295267

/-!
# A322219: E.g.f.: S(x,q) = Integral C(x,q) * C(q*x,q) dx, such that C(x,q)^2 - S(x,q)^2 = 1, where S(x,q) = Sum_{n>=0} sum_{k=0..n*(n+1)/2} T(n,k)*x^n*y^k/n!, as an irregular triangle of coefficients T(n,k) read by rows.

The programs for A322219, there is no canonical definition to state claims against.
-/

/-! ## A322219.P11865635893863325524

`A322362(A369440(n))`
-/

namespace A322219.P11865635893863325524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A369440 n).toNat

end

end A322219.P11865635893863325524

/-! ## A322219.P11566140077023519542

`A220860(A084980(n+1))`
-/

namespace A322219.P11566140077023519542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220860 (A084980 (n + 1)).toNat

end

end A322219.P11566140077023519542

/-! ## A322219.P17035089462688082357

`A186368(A273317(n+1))`
-/

namespace A322219.P17035089462688082357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186368 (A273317 (n + 1)).toNat

end

end A322219.P17035089462688082357

/-! ## A322219.P9436836312764400423

`A181591(A173622(n+2))`
-/

namespace A322219.P9436836312764400423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A173622 (n + 2)).toNat

end

end A322219.P9436836312764400423

/-! ## A322219.P15900859199743448395

`C(A048793(A006190(n)), A389600(n))`
-/

namespace A322219.P15900859199743448395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048793 (A006190 n).toNat).toNat (A389600 n).toNat

end

end A322219.P15900859199743448395

/-!
# A322220: E.g.f. S(x,y) = Integral C(x,y)*C(y,x) dx such that C(x,y)^2 - S(x,y)^2 = 1 and C(y,x) = 1 + Integral S(y,x)*C(x,y) dy, where S(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n+1-2*k)*y^(2*k)/((2*n+1-2*k)!*(2*k)!), as a triangle of coefficients T(n,k) read by rows.

The programs for A322220, there is no canonical definition to state claims against.
-/

/-! ## A322220.P15143825477651690680

`abs(A367380(n))`
-/

namespace A322220.P15143825477651690680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A367380 n|

end

end A322220.P15143825477651690680

/-! ## A322220.P16901680553303536473

`gcd(A000038(n), A367380(n))`
-/

namespace A322220.P16901680553303536473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A367380 n)

end

end A322220.P16901680553303536473

/-! ## A322220.P17619087269054644450

`lcm(A020985(n), A367380(n))`
-/

namespace A322220.P17619087269054644450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A367380 n)

end

end A322220.P17619087269054644450

/-! ## A322220.P12931866119826451183

`A322730(n)/A091042(n)`
-/

namespace A322220.P12931866119826451183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322730 n : ℚ) / (A091042 n : ℚ)

end

end A322220.P12931866119826451183

/-! ## A322220.P13103104715083187599

`A322730(n)/gcd(A085840(n), A322730(n))`
-/

namespace A322220.P13103104715083187599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322730 n : ℚ) / (Int.gcd (A085840 n) (A322730 n) : ℚ)

end

end A322220.P13103104715083187599

/-!
# A322221: E.g.f. C(x,y) = 1 + Integral S(x,y)*C(y,x) dx such that C(x,y)^2 - S(x,y)^2 = 1 and C(y,x) = Integral S(y,x)*C(x,y) dy, where C(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k)*y^(2*k)/((2*n-2*k)!*(2*k)!), as a triangle of coefficients T(n,k) read by rows.

The programs for A322221, there is no canonical definition to state claims against.
-/

/-! ## A322221.P18273222757016528621

`A322222(A061579(n))`
-/

namespace A322221.P18273222757016528621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322222 (A061579 n).toNat

end

end A322221.P18273222757016528621

/-! ## A322221.P16564583795726328983

`A322222(∑[A198954(n)-1])`
-/

namespace A322221.P16564583795726328983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322221.P16564583795726328983

/-! ## A322221.P11604200212228691771

`A322222(A038722(n+1)-1)`
-/

namespace A322221.P11604200212228691771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322222 (A038722 (n + 1) - 1).toNat

end

end A322221.P11604200212228691771

/-! ## A322221.P15678509004536707372

`A322222(A002024(n+1)²-(n+1))`
-/

namespace A322221.P15678509004536707372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322222 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A322221.P15678509004536707372

/-! ## A322221.P13668462498448314523

`A322731(n)/A086645(n)`
-/

namespace A322221.P13668462498448314523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322731 n : ℚ) / (A086645 n : ℚ)

end

end A322221.P13668462498448314523

/-! ## A322221.P11016711445850797610

`abs(A367381(n))`
-/

namespace A322221.P11016711445850797610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A367381 n|

end

end A322221.P11016711445850797610

/-! ## A322221.P701756740925255539

`gcd(A000038(n), A367381(n))`
-/

namespace A322221.P701756740925255539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A367381 n)

end

end A322221.P701756740925255539

/-! ## A322221.P10682257108177594687

`lcm(A006466(n), A367381(n))`
-/

namespace A322221.P10682257108177594687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A367381 n)

end

end A322221.P10682257108177594687

/-! ## A322221.P5282839216104003093

`A322220(n)/A367380(n)*A367381(n)`
-/

namespace A322221.P5282839216104003093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322220 n : ℚ) / (A367380 n : ℚ) * (A367381 n : ℚ)

end

end A322221.P5282839216104003093

/-!
# A322222: E.g.f. C(y,x) = 1 + Integral S(y,x)*C(x,y) dy such that C(y,x)^2 - S(y,x)^2 = 1 and C(x,y) = Integral S(x,y)*C(y,x) dx, where C(y,x) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k)*y^(2*k)/((2*n-2*k)!*(2*k)!), as a triangle of coefficients T(n,k) read by rows.

The programs for A322222, there is no canonical definition to state claims against.
-/

/-! ## A322222.P14355844165207088297

`A322221(A061579(n))`
-/

namespace A322222.P14355844165207088297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322221 (A061579 n).toNat

end

end A322222.P14355844165207088297

/-! ## A322222.P4046651029097481025

`A322221(A038722(n+1)-1)`
-/

namespace A322222.P4046651029097481025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322221 (A038722 (n + 1) - 1).toNat

end

end A322222.P4046651029097481025

/-! ## A322222.P7580369831929259790

`A322221(A002024(n+1)²-(n+1))`
-/

namespace A322222.P7580369831929259790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322221 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A322222.P7580369831929259790

/-! ## A322222.P3523281971971618086

`A322221(A038722(n+2))`
-/

namespace A322222.P3523281971971618086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322221 (A038722 (n + 2)).toNat

end

end A322222.P3523281971971618086

/-! ## A322222.P13846204711002480647

`A322732(n)/A086645(n)`
-/

namespace A322222.P13846204711002480647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322732 n : ℚ) / (A086645 n : ℚ)

end

end A322222.P13846204711002480647

/-!
# A322223: Row sums of triangle A322220.

The programs for A322223, there is no canonical definition to state claims against.
-/

/-! ## A322223.P9396001095104080061

`A008619(A372179(n))`
-/

namespace A322223.P9396001095104080061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A372179 n).toNat

end

end A322223.P9396001095104080061

/-!
# A322224: Row sums of triangle A322221.

The programs for A322224, there is no canonical definition to state claims against.
-/

/-! ## A322224.P18341367395608531011

`or(A251573(n), A264560(A091808(n+1)))`
-/

namespace A322224.P18341367395608531011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A251573 n) (A264560 (A091808 (n + 1)).toNat)

end

end A322224.P18341367395608531011

/-!
# A322226: a(n) = A322227(n) / (n*(n+1)/2), where A322227(n) = [x^(n-1)] Product_{k=1..n} (k + x - k*x^2), for n >= 1.

The programs for A322226, there is no canonical definition to state claims against.
-/

/-! ## A322226.P9271713370000776663

`A322227(n+1)/((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322226.P9271713370000776663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322227 (n + 1) : ℚ) / (((n + 1) * (n + 2) : ℚ) / 2)

end

end A322226.P9271713370000776663

/-! ## A322226.P1874302671759436457

`floor(A322227(n+1)/A000217(n+1))`
-/

namespace A322226.P1874302671759436457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322227 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A322226.P1874302671759436457

/-! ## A322226.P15445906309513543487

`A322225(∑[A051755(n+2)])/∑[-(n+1)]`
-/

namespace A322226.P15445906309513543487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A322226.P15445906309513543487

/-!
# A322227: a(n) = [x^(n-1)] Product_{k=1..n} (k + x - k*x^2), for n >= 1.

The programs for A322227, there is no canonical definition to state claims against.
-/

/-! ## A322227.P2560476366404383380

`A322225((n+1)²+n)`
-/

namespace A322227.P2560476366404383380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 ((n + 1) ^ 2 + n)

end

end A322227.P2560476366404383380

/-! ## A322227.P2049333363785514155

`∑[n+1]*A322226(n+1)`
-/

namespace A322227.P2049333363785514155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A322226 (n + 1)

end

end A322227.P2049333363785514155

/-! ## A322227.P18288073098460565937

`-A322225(∑[A051755(n+2)])`
-/

namespace A322227.P18288073098460565937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A322225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322227.P18288073098460565937

/-! ## A322227.P13443127109294518020

`A322226(n+1)/A322236(n+1)*A322237(n+1)`
-/

namespace A322227.P13443127109294518020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322226 (n + 1) : ℚ) / (A322236 (n + 1) : ℚ) * (A322237 (n + 1) : ℚ)

end

end A322227.P13443127109294518020

/-! ## A322227.P14744906137867331102

`A322226(n+1)/A322894(n+1)*A322893(n+1)`
-/

namespace A322227.P14744906137867331102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322226 (n + 1) : ℚ) / (A322894 (n + 1) : ℚ) * (A322893 (n + 1) : ℚ)

end

end A322227.P14744906137867331102

/-!
# A322228: a(n) = [x^n] Product_{k=1..n} (k + x - k*x^2), for n >= 0.

The programs for A322228, there is no canonical definition to state claims against.
-/

/-! ## A322228.P15273730620297450646

`A322225(∑[2*n])`
-/

namespace A322228.P15273730620297450646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322228.P15273730620297450646

/-! ## A322228.P11341546849855883635

`or(1, A322225(n²+n))`
-/

namespace A322228.P11341546849855883635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322225 (n ^ 2 + n))

end

end A322228.P11341546849855883635

/-! ## A322228.P21251611012590709

`abs(A033999(n))*A322225(n*(n+1))`
-/

namespace A322228.P21251611012590709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A322225 (n * (n + 1))

end

end A322228.P21251611012590709

/-! ## A322228.P17340473672502449496

`A322225(n*(n+1))+char[A017237(n)]`
-/

namespace A322228.P17340473672502449496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017237 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 (n * (n + 1)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322228.P17340473672502449496

/-! ## A322228.P11441646775335433508

`A322225(n*(n+1))+A000038((n+1)²)`
-/

namespace A322228.P11441646775335433508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 (n * (n + 1)) + A000038 ((n + 1) ^ 2)

end

end A322228.P11441646775335433508

/-! ## A322228.P17895543760861555180

`A000045(Δ[A001951(n)])*A322225(n*(n+1))`
-/

namespace A322228.P17895543760861555180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat * A322225 (n * (n + 1))

end

end A322228.P17895543760861555180

/-! ## A322228.P14861244812652505153

`A322225(n*(n+1))/A001222(A008578(n+2))`
-/

namespace A322228.P14861244812652505153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322225 (n * (n + 1)) : ℚ) / (A001222 (A008578 (n + 2)).toNat : ℚ)

end

end A322228.P14861244812652505153

/-! ## A322228.P5842866730844019765

`abs(A008836(A020639(3*(n+1))))*A322225(n²+n)`
-/

namespace A322228.P5842866730844019765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008836 (A020639 (3 * (n + 1))).toNat| * A322225 (n ^ 2 + n)

end

end A322228.P5842866730844019765

/-!
# A322230: E.g.f.: S(x,k) = Integral C(x,k)*D(x,k)^2 dx, such that C(x,k)^2 - S(x,k)^2 = 1, and D(x,k)^2 - k^2*S(x,k)^2 = 1, as a triangle of coefficients read by rows.

The programs for A322230, there is no canonical definition to state claims against.
-/

/-! ## A322230.P13947714137962559163

`A325220(A002378(n)%A080036(n))`
-/

namespace A322230.P13947714137962559163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A322230.P13947714137962559163

/-! ## A322230.P13651470819827273072

`A325220(A061579(n))`
-/

namespace A322230.P13651470819827273072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (A061579 n).toNat

end

end A322230.P13651470819827273072

/-! ## A322230.P725725557310657638

`A325220(A114327(n)+n)`
-/

namespace A322230.P725725557310657638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (A114327 n + (n : ℤ)).toNat

end

end A322230.P725725557310657638

/-! ## A322230.P14278318238547298770

`A325220(A038722(n+1)-1)`
-/

namespace A322230.P14278318238547298770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (A038722 (n + 1) - 1).toNat

end

end A322230.P14278318238547298770

/-! ## A322230.P5952450015165956037

`A325220(A057944(n)+A025581(n))`
-/

namespace A322230.P5952450015165956037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (A057944 n + A025581 n).toNat

end

end A322230.P5952450015165956037

/-!
# A322231: E.g.f.: C(x,k) = 1 + Integral S(x,k)*D(x,k)^2 dx, such that C(x,k)^2 - S(x,k)^2 = 1, and D(x,k)^2 - k^2*S(x,k)^2 = 1, as a triangle of coefficients read by rows.

The programs for A322231, there is no canonical definition to state claims against.
-/

/-! ## A322231.P12986701769317033489

`A325222(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A322231.P12986701769317033489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325222 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A322231.P12986701769317033489

/-! ## A322231.P1470658000623759155

`A325222(char[A014132(n+1)]*A061579(n))`
-/

namespace A322231.P1470658000623759155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325222 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A322231.P1470658000623759155

/-! ## A322231.P7843277768388231882

`A325222(∑[char[∑[n]]]²-(n+1))`
-/

namespace A322231.P7843277768388231882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325222 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A322231.P7843277768388231882

/-! ## A322231.P15935335987061053009

`and(-1, A325222(A061579(n)))`
-/

namespace A322231.P15935335987061053009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A325222 (A061579 n).toNat)

end

end A322231.P15935335987061053009

/-! ## A322231.P7694857365189652361

`gcd(A151878(n), A325222(∑[2*n]%comp[∑[n]]))`
-/

namespace A322231.P7694857365189652361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A325222 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A322231.P7694857365189652361

/-! ## A322231.P15199697486332072676

`A325222(A061579(n))^A178334(n)`
-/

namespace A322231.P15199697486332072676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325222 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A322231.P15199697486332072676

/-! ## A322231.P9766163173231291911

`gcd(A000038(n), A325222(A061579(n)))`
-/

namespace A322231.P9766163173231291911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A325222 (A061579 n).toNat)

end

end A322231.P9766163173231291911

/-! ## A322231.P2894526134662638673

`lcm(A033999(n), A325222(A061579(n)))`
-/

namespace A322231.P2894526134662638673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A325222 (A061579 n).toNat)

end

end A322231.P2894526134662638673

/-! ## A322231.P3943108888236610001

`or(A000007(n), A325222(A061579(n)))`
-/

namespace A322231.P3943108888236610001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A325222 (A061579 n).toNat)

end

end A322231.P3943108888236610001

/-! ## A322231.P824567387488177180

`A325222(A061579(n))%A303521(n+1)`
-/

namespace A322231.P824567387488177180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325222 (A061579 n).toNat) (A303521 (n + 1))

end

end A322231.P824567387488177180

/-!
# A322232: E.g.f.: D(x,k) = 1 + k^2 * Integral S(x,k)*C(x,k)*D(x,k) dx, such that C(x,k)^2 - S(x,k)^2 = 1, and D(x,k)^2 - k^2*S(x,k)^2 = 1, as a triangle of coefficients read by rows.

The programs for A322232, there is no canonical definition to state claims against.
-/

/-! ## A322232.P3248950708994317616

`A325221(∑[2*n]%comp[∑[n]])`
-/

namespace A322232.P3248950708994317616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325221 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A322232.P3248950708994317616

/-! ## A322232.P10154795195521632901

`A325221(∑[char[∑[n]]]²-(n+1))`
-/

namespace A322232.P10154795195521632901
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325221 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A322232.P10154795195521632901

/-! ## A322232.P13809077588608059211

`and(-1, A325221(A061579(n)))`
-/

namespace A322232.P13809077588608059211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A325221 (A061579 n).toNat)

end

end A322232.P13809077588608059211

/-! ## A322232.P10725102342559308048

`(A325221(∑[A198954(n)-1])^(1/2))²`
-/

namespace A322232.P10725102342559308048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A325221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A322232.P10725102342559308048

/-! ## A322232.P15662946115616422347

`(A325221(A038722(n+1)-1)^(1/2))²`
-/

namespace A322232.P15662946115616422347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A325221 (A038722 (n + 1) - 1).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A322232.P15662946115616422347

/-! ## A322232.P5233315093238464047

`A325221(A061579(n))^A178334(n)`
-/

namespace A322232.P5233315093238464047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325221 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A322232.P5233315093238464047

/-! ## A322232.P17518205398560442552

`A325221(A061579(n))%A003499(n)`
-/

namespace A322232.P17518205398560442552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325221 (A061579 n).toNat) (A003499 n)

end

end A322232.P17518205398560442552

/-! ## A322232.P4365088832717460561

`gcd(A000038(n), A325221(A061579(n)))`
-/

namespace A322232.P4365088832717460561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A325221 (A061579 n).toNat)

end

end A322232.P4365088832717460561

/-! ## A322232.P8167817655592227152

`lcm(A057077(n), A325221(A061579(n)))`
-/

namespace A322232.P8167817655592227152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A325221 (A061579 n).toNat)

end

end A322232.P8167817655592227152

/-! ## A322232.P13630096788984670167

`A325221(A061579(n))/A007318(C(n, n²))`
-/

namespace A322232.P13630096788984670167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325221 (A061579 n).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A322232.P13630096788984670167

/-!
# A322233: Coefficient of x^n in Product_{k=1..n} (k + x + (n+1-k)*x^2), for n >= 0.

The programs for A322233, there is no canonical definition to state claims against.
-/

/-! ## A322233.P3393543558879555358

`A322229(∑[2*n])`
-/

namespace A322233.P3393543558879555358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322233.P3393543558879555358

/-! ## A322233.P3175074483075699499

`A322229(A002378(n))+A101455(2*n)`
-/

namespace A322233.P3175074483075699499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 (A002378 n).toNat + A101455 (2 * n)

end

end A322233.P3175074483075699499

/-! ## A322233.P1009720464720768946

`A322796(3*n)+A322229(A002378(n))`
-/

namespace A322233.P1009720464720768946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (3 * n) + A322229 (A002378 n).toNat

end

end A322233.P1009720464720768946

/-! ## A322233.P18263041041203161086

`A322229(A002378(n))%A030446(n+3)`
-/

namespace A322233.P18263041041203161086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322229 (A002378 n).toNat) (A030446 (n + 3))

end

end A322233.P18263041041203161086

/-!
# A322234: Coefficient of x^(n-1) in Product_{k=1..n} (k + x + (n+1-k)*x^2), for n >= 1.

The programs for A322234, there is no canonical definition to state claims against.
-/

/-! ## A322234.P11786105674095247707

`A322229((n+1)²+n)`
-/

namespace A322234.P11786105674095247707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 ((n + 1) ^ 2 + n)

end

end A322234.P11786105674095247707

/-! ## A322234.P10162564929661202739

`record[A322229(abs(ceil(((1-n)/2)²)-2))]`
-/

namespace A322234.P10162564929661202739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 |⌈((1 - (n : ℤ) : ℚ) / 2) ^ 2⌉ - 2|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322234.P10162564929661202739

/-! ## A322234.P18437150692754445328

`record[A322229(2*n+1)/A033842(n)]`
-/

namespace A322234.P18437150692754445328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322229 (2 * n + 1) : ℚ) / (A033842 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322234.P18437150692754445328

/-! ## A322234.P7838859241712143084

`record[A322229(2*n+1)/A322220(n)]`
-/

namespace A322234.P7838859241712143084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322229 (2 * n + 1) : ℚ) / (A322220 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322234.P7838859241712143084

/-! ## A322234.P14553384933100987345

`record[gcd(A322221(n), A322229(2*n+1))]`
-/

namespace A322234.P14553384933100987345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322221 n) (A322229 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322234.P14553384933100987345

/-!
# A322236: a(n) = A322237(n) / (n*(n+1)/2), where A322237(n) = [x^(n-1)] Product_{k=1..n} (k + x + k*x^2), for n >= 1.

The programs for A322236, there is no canonical definition to state claims against.
-/

/-! ## A322236.P13020280490188000403

`A322237(n+1)/((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322236.P13020280490188000403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322237 (n + 1) : ℚ) / (((n + 1) * (n + 2) : ℚ) / 2)

end

end A322236.P13020280490188000403

/-! ## A322236.P6363239474579151550

`floor(A322237(n+1)/A000217(n+1))`
-/

namespace A322236.P6363239474579151550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322237 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A322236.P6363239474579151550

/-! ## A322236.P10670837514914544765

`ceil(A322237(n+1)/(A000096(n)+1))`
-/

namespace A322236.P10670837514914544765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322237 (n + 1) : ℚ) / (A000096 n + 1 : ℚ)⌉

end

end A322236.P10670837514914544765

/-! ## A322236.P16795886067635384738

`floor(A322237(n+1)/record[A038722(n+1)])`
-/

namespace A322236.P16795886067635384738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322237 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A322236.P16795886067635384738

/-! ## A322236.P7994949328102805841

`floor(A322237(n+1)/record[A061579(n)+1])`
-/

namespace A322236.P7994949328102805841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322237 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A322236.P7994949328102805841

/-!
# A322237: a(n) = [x^(n-1)] Product_{k=1..n} (k + x + k*x^2), for n >= 1.

The programs for A322237, there is no canonical definition to state claims against.
-/

/-! ## A322237.P2215280844895798233

`A322235((n+1)²+n)`
-/

namespace A322237.P2215280844895798233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 ((n + 1) ^ 2 + n)

end

end A322237.P2215280844895798233

/-! ## A322237.P1528079382426455564

`∑[n+1]*A322236(n+1)`
-/

namespace A322237.P1528079382426455564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A322236 (n + 1)

end

end A322237.P1528079382426455564

/-! ## A322237.P98825006197850034

`record[A322235(A002061(A154958(n)))]`
-/

namespace A322237.P98825006197850034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (A002061 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322237.P98825006197850034

/-! ## A322237.P5800003738631204618

`A322236(n+1)/A322226(n+1)*A322227(n+1)`
-/

namespace A322237.P5800003738631204618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322236 (n + 1) : ℚ) / (A322226 (n + 1) : ℚ) * (A322227 (n + 1) : ℚ)

end

end A322237.P5800003738631204618

/-! ## A322237.P13876092905622672792

`A322236(n+1)/A322894(n+1)*A322893(n+1)`
-/

namespace A322237.P13876092905622672792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322236 (n + 1) : ℚ) / (A322894 (n + 1) : ℚ) * (A322893 (n + 1) : ℚ)

end

end A322237.P13876092905622672792

/-!
# A322238: a(n) = [x^n] Product_{k=1..n} (k + x + k*x^2), for n >= 0.

The programs for A322238, there is no canonical definition to state claims against.
-/

/-! ## A322238.P11355130616106559030

`A322235(∑[2*n])`
-/

namespace A322238.P11355130616106559030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322238.P11355130616106559030

/-! ## A322238.P1254367859170761567

`or(1, A322235(A002378(n)))`
-/

namespace A322238.P1254367859170761567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322235 (A002378 n).toNat)

end

end A322238.P1254367859170761567

/-! ## A322238.P383768822753732999

`A322235(A002378(n))+char[A031931(n+1)]`
-/

namespace A322238.P383768822753732999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (A002378 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322238.P383768822753732999

/-! ## A322238.P939885706370551657

`A322235(A002378(n))+char[A065213(n+1)]`
-/

namespace A322238.P939885706370551657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065213 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (A002378 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322238.P939885706370551657

/-! ## A322238.P13952564692815741958

`A322235(A002378(n))+char[A124169(n+1)]`
-/

namespace A322238.P13952564692815741958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124169 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (A002378 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322238.P13952564692815741958

/-! ## A322238.P8935536545129432183

`A322235(A002378(n))+char[A173071(n+1)]`
-/

namespace A322238.P8935536545129432183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (A002378 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322238.P8935536545129432183

/-! ## A322238.P912156179874332921

`A322235(A002378(n))^A014963(A016825(n))²`
-/

namespace A322238.P912156179874332921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322235 (A002378 n).toNat : ℚ) ^ (A014963 (A016825 n).toNat ^ 2 : ℤ)

end

end A322238.P912156179874332921

/-! ## A322238.P13907821953420320635

`A322235(A002378(n))+A192687(A007937(n+1))`
-/

namespace A322238.P13907821953420320635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (A002378 n).toNat + A192687 (A007937 (n + 1)).toNat

end

end A322238.P13907821953420320635

/-! ## A322238.P13874355021978571768

`A034380(A000040(n+1))*A322235(A002378(n))`
-/

namespace A322238.P13874355021978571768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A000040 (n + 1)).toNat * A322235 (A002378 n).toNat

end

end A322238.P13874355021978571768

/-! ## A322238.P8711353472508973092

`A034380(A034380(n+1))*A322235(A002378(n))`
-/

namespace A322238.P8711353472508973092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A034380 (n + 1)).toNat * A322235 (A002378 n).toNat

end

end A322238.P8711353472508973092

/-!
# A322239: a(n) = [x^n*y^n] 1/(1 - x - y - x^2 + x*y - y^2).

The programs for A322239, there is no canonical definition to state claims against.
-/

/-! ## A322239.P9866430100016740692

`A123603(∑[4*n])`
-/

namespace A322239.P9866430100016740692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123603 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322239.P9866430100016740692

/-! ## A322239.P16530949369303092827

`or(1, A123603(A046092(n)))`
-/

namespace A322239.P16530949369303092827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A123603 (A046092 n).toNat)

end

end A322239.P16530949369303092827

/-! ## A322239.P8168499795386591345

`gcd(A000038(n), A123603(A046092(n)))`
-/

namespace A322239.P8168499795386591345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123603 (A046092 n).toNat)

end

end A322239.P8168499795386591345

/-! ## A322239.P9433027379858349852

`A007318(C(2, n+2))*A123603(A046092(n))`
-/

namespace A322239.P9433027379858349852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A123603 (A046092 n).toNat

end

end A322239.P9433027379858349852

/-! ## A322239.P6031807905354596943

`A001222(A060308(n+1))*A123603(A046092(n))`
-/

namespace A322239.P6031807905354596943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060308 (n + 1)).toNat * A123603 (A046092 n).toNat

end

end A322239.P6031807905354596943

/-!
# A322240: a(n) = A084605(n)^2, the square of the central coefficient in (1 + x + 4*x^2)^n.

The programs for A322240, the canonical program `A322240.P13376538237752123828` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322240 has offset 0).

The definition of A322240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322240.P13376538237752123828

`A084605(n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322240

/-- `A084605(n)²` -/
def P13376538237752123828.Spec : Prop :=
  ∀ n, P13376538237752123828.a n = A322240 n

theorem P13376538237752123828.correct : P13376538237752123828.Spec := by
  intro n
  simp only [A322240]

end A322240

/-! ## A322240.P9045712145214487181

`A307847(∑[n+3])²`
-/

namespace A322240.P9045712145214487181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A322240.P9045712145214487181

namespace A322240

/-- `A307847(∑[n+3])²` -/
def P9045712145214487181.Spec : Prop :=
  ∀ n, P9045712145214487181.a n = A322240 n

end A322240

/-! ## A322240.P16286278539818360530

`A084604(∑[2*n])²`
-/

namespace A322240.P16286278539818360530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A322240.P16286278539818360530

namespace A322240

/-- `A084604(∑[2*n])²` -/
def P16286278539818360530.Spec : Prop :=
  ∀ n, P16286278539818360530.a n = A322240 n

end A322240

/-! ## A322240.P224202159706566403

`A307855(2*n+∑[n+3]+7)²`
-/

namespace A322240.P224202159706566403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7)) ^ 2

end

end A322240.P224202159706566403

namespace A322240

/-- `A307855(2*n+∑[n+3]+7)²` -/
def P224202159706566403.Spec : Prop :=
  ∀ n, P224202159706566403.a n = A322240 n

end A322240

/-! ## A322240.P3489952027473410128

`A084605(n)^(A000007(n)+2)`
-/

namespace A322240.P3489952027473410128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084605 n : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A322240.P3489952027473410128

namespace A322240

/-- `A084605(n)^(A000007(n)+2)` -/
def P3489952027473410128.Spec : Prop :=
  ∀ n, P3489952027473410128.a n = (A322240 n : ℚ)

end A322240

/-! ## A322240.P12218519734961293008

`(2*A098520(n)-A151318(n))²`
-/

namespace A322240.P12218519734961293008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A098520 n - A151318 n) ^ 2

end

end A322240.P12218519734961293008

namespace A322240

/-- `(2*A098520(n)-A151318(n))²` -/
def P12218519734961293008.Spec : Prop :=
  ∀ n, P12218519734961293008.a n = A322240 n

theorem P12218519734961293008.correct : P12218519734961293008.Spec := by
  intro n
  simp only [A322240, Nat.add_sub_cancel, A322240.P12218519734961293008.a, A322240.P13376538237752123828.a, A084605, A084605.P13591536285658371434.f1, A084605.P13591536285658371434.a, A098520, A098520.P16337515405510406230.f1, A098520.P16337515405510406230.a, A151318, A151318.P3693881019179690856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322240

/-! ## A322240.P613868247175911858

`A084605(A005843(n)/2)*A084605(n)`
-/

namespace A322240.P613868247175911858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084605 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat * A084605 n

end

end A322240.P613868247175911858

namespace A322240

/-- `A084605(A005843(n)/2)*A084605(n)` -/
def P613868247175911858.Spec : Prop :=
  ∀ n, P613868247175911858.a n = A322240 n

end A322240

/-! ## A322240.P2534150635294066153

`A084605(n)^A000005(A001359(n+1))`
-/

namespace A322240.P2534150635294066153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084605 n : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A322240.P2534150635294066153

namespace A322240

/-- `A084605(n)^A000005(A001359(n+1))` -/
def P2534150635294066153.Spec : Prop :=
  ∀ n, P2534150635294066153.a n = (A322240 n : ℚ)

end A322240

/-! ## A322240.P10003109193755212476

`A084605(n)^A000005(A023209(n+1))`
-/

namespace A322240.P10003109193755212476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084605 n : ℚ) ^ (A000005 (A023209 (n + 1)).toNat : ℤ)

end

end A322240.P10003109193755212476

namespace A322240

/-- `A084605(n)^A000005(A023209(n+1))` -/
def P10003109193755212476.Spec : Prop :=
  ∀ n, P10003109193755212476.a n = (A322240 n : ℚ)

end A322240

/-! ## A322240.P15827415554332431520

`A084605(A000007(n)+n)*A084605(n)`
-/

namespace A322240.P15827415554332431520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084605 (A000007 n + (n : ℤ)).toNat * A084605 n

end

end A322240.P15827415554332431520

namespace A322240

/-- `A084605(A000007(n)+n)*A084605(n)` -/
def P15827415554332431520.Spec : Prop :=
  ∀ n, P15827415554332431520.a n = A322240 n

end A322240

/-!
# A322242: Expansion of g.f. 1/sqrt(1 - 6*x - 7*x^2).

The programs for A322242, the canonical program `A322242.P17746611047576697019` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322242 has offset 0).

The definition of A322242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322242.P17746611047576697019

`∑{#}[n, (-1)^(n-#)*2^#*C(n, #)*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322242

/-- `∑{#}[n, (-1)^(n-#)*2^#*C(n, #)*C(2*#, #)]` -/
def P17746611047576697019.Spec : Prop :=
  ∀ n, P17746611047576697019.a n = (A322242 n : ℚ)

end A322242

/-! ## A322242.P18294241139147668970

`abs(∑[A085456(n)])`
-/

namespace A322242.P18294241139147668970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A322242.P18294241139147668970

namespace A322242

/-- `abs(∑[A085456(n)])` -/
def P18294241139147668970.Spec : Prop :=
  ∀ n, P18294241139147668970.a n = A322242 n

end A322242

/-! ## A322242.P6696871137535228596

`A085458(n)-a(n-1)` with `a(0)=1`
-/

namespace A322242.P6696871137535228596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085458 n - a (n - 1)

end

end A322242.P6696871137535228596

namespace A322242

/-- `A085458(n)-a(n-1)` -/
def P6696871137535228596.Spec : Prop :=
  ∀ n, P6696871137535228596.a n = A322242 n

end A322242

/-! ## A322242.P17793851877289702028

`gcd(∑[A085456(n)], A000038(n))`
-/

namespace A322242.P17793851877289702028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A322242.P17793851877289702028

namespace A322242

/-- `gcd(∑[A085456(n)], A000038(n))` -/
def P17793851877289702028.Spec : Prop :=
  ∀ n, (P17793851877289702028.a n : ℤ) = A322242 n

end A322242

/-! ## A322242.P10139344880020141892

`lcm(∑[A085456(n)], A020985(n))`
-/

namespace A322242.P10139344880020141892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A322242.P10139344880020141892

namespace A322242

/-- `lcm(∑[A085456(n)], A020985(n))` -/
def P10139344880020141892.Spec : Prop :=
  ∀ n, (P10139344880020141892.a n : ℤ) = A322242 n

end A322242

/-! ## A322242.P13481792649465464558

`sqrt(A322243(n))`
-/

namespace A322242.P13481792649465464558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322243 n : ℝ)

end

end A322242.P13481792649465464558

namespace A322242

/-- `sqrt(A322243(n))` -/
def P13481792649465464558.Spec : Prop :=
  ∀ n, P13481792649465464558.a n = (A322242 n : ℝ)

end A322242

/-!
# A322243: a(n) = A322242(n)^2, the square of the central coefficient in (1 + 3*x + 4x^2)^n.

The programs for A322243, the canonical program `A322243.P4035552024826739149` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322243 has offset 0).

The definition of A322243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322243.P4035552024826739149

`A322242(n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322243

/-- `A322242(n)²` -/
def P4035552024826739149.Spec : Prop :=
  ∀ n, P4035552024826739149.a n = A322243 n

theorem P4035552024826739149.correct : P4035552024826739149.Spec := by
  intro n
  simp only [A322243]

end A322243

/-! ## A322243.P8744493631151433801

`∑[A085456(n)]²`
-/

namespace A322243.P8744493631151433801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A322243.P8744493631151433801

namespace A322243

/-- `∑[A085456(n)]²` -/
def P8744493631151433801.Spec : Prop :=
  ∀ n, P8744493631151433801.a n = A322243 n

end A322243

/-! ## A322243.P5375199064900669964

`abs(∑[A085456(n)]*A322242(n))`
-/

namespace A322243.P5375199064900669964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A322242 n|

end

end A322243.P5375199064900669964

namespace A322243

/-- `abs(∑[A085456(n)]*A322242(n))` -/
def P5375199064900669964.Spec : Prop :=
  ∀ n, P5375199064900669964.a n = A322243 n

end A322243

/-! ## A322243.P1456268897203705707

`A322242(n)^A001316(A001316(n))`
-/

namespace A322243.P1456268897203705707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322242 n : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A322243.P1456268897203705707

namespace A322243

/-- `A322242(n)^A001316(A001316(n))` -/
def P1456268897203705707.Spec : Prop :=
  ∀ n, P1456268897203705707.a n = (A322243 n : ℚ)

end A322243

/-! ## A322243.P6721814621562923727

`A322242(n)^A061142(A006530(n+1))`
-/

namespace A322243.P6721814621562923727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322242 n : ℚ) ^ (A061142 (A006530 (n + 1)).toNat : ℤ)

end

end A322243.P6721814621562923727

namespace A322243

/-- `A322242(n)^A061142(A006530(n+1))` -/
def P6721814621562923727.Spec : Prop :=
  ∀ n, P6721814621562923727.a n = (A322243 n : ℚ)

end A322243

/-! ## A322243.P11922609357959189774

`A322242(n)^A020639(A089241(n+1))`
-/

namespace A322243.P11922609357959189774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322242 n : ℚ) ^ (A020639 (A089241 (n + 1)).toNat : ℤ)

end

end A322243.P11922609357959189774

namespace A322243

/-- `A322242(n)^A020639(A089241(n+1))` -/
def P11922609357959189774.Spec : Prop :=
  ∀ n, P11922609357959189774.a n = (A322243 n : ℚ)

end A322243

/-! ## A322243.P14339338283238603663

`∑[A085456(n)]^A061142(A006530(n+1))`
-/

namespace A322243.P14339338283238603663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A061142 (A006530 (n + 1)).toNat : ℤ)

end

end A322243.P14339338283238603663

namespace A322243

/-- `∑[A085456(n)]^A061142(A006530(n+1))` -/
def P14339338283238603663.Spec : Prop :=
  ∀ n, P14339338283238603663.a n = (A322243 n : ℚ)

end A322243

/-! ## A322243.P10610696270229485882

`A045840(A028928(n))+A322242(n)*A322242(n)`
-/

namespace A322243.P10610696270229485882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 (A028928 n).toNat + A322242 n * A322242 n

end

end A322243.P10610696270229485882

namespace A322243

/-- `A045840(A028928(n))+A322242(n)*A322242(n)` -/
def P10610696270229485882.Spec : Prop :=
  ∀ n, P10610696270229485882.a n = A322243 n

end A322243

/-!
# A322244: G.f.: 1/sqrt(1 - 6*x - 55*x^2).

The programs for A322244, the canonical program `A322244.P14148200195406700102` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322244 has offset 0).

The definition of A322244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322244.P14148200195406700102

`∑{#}[n, (-5)^(n-#)*4^#*C(n, #)*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322244

/-- `∑{#}[n, (-5)^(n-#)*4^#*C(n, #)*C(2*#, #)]` -/
def P14148200195406700102.Spec : Prop :=
  ∀ n, P14148200195406700102.a n = (A322244 n : ℚ)

end A322244

/-! ## A322244.P17568902400028004752

`sqrt(A322245(n))`
-/

namespace A322244.P17568902400028004752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322245 n : ℝ)

end

end A322244.P17568902400028004752

namespace A322244

/-- `sqrt(A322245(n))` -/
def P17568902400028004752.Spec : Prop :=
  ∀ n, P17568902400028004752.a n = (A322244 n : ℝ)

end A322244

/-! ## A322244.P15610421992179038048

`root(A322245(n), A036453(n+1))`
-/

namespace A322244.P15610421992179038048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322245 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A322244.P15610421992179038048

namespace A322244

/-- `root(A322245(n), A036453(n+1))` -/
def P15610421992179038048.Spec : Prop :=
  ∀ n, P15610421992179038048.a n = (A322244 n : ℝ)

end A322244

/-! ## A322244.P16423490947724026785

`root(A322245(n), A001316(A001316(n)))`
-/

namespace A322244.P16423490947724026785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322245 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A322244.P16423490947724026785

namespace A322244

/-- `root(A322245(n), A001316(A001316(n)))` -/
def P16423490947724026785.Spec : Prop :=
  ∀ n, P16423490947724026785.a n = (A322244 n : ℝ)

end A322244

/-! ## A322244.P4367008647278560572

`root(A322245(n), A105560(A105560(n+1)))`
-/

namespace A322244.P4367008647278560572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322245 n : ℝ) ^ (1 / (A105560 (A105560 (n + 1)).toNat : ℝ))

end

end A322244.P4367008647278560572

namespace A322244

/-- `root(A322245(n), A105560(A105560(n+1)))` -/
def P4367008647278560572.Spec : Prop :=
  ∀ n, P4367008647278560572.a n = (A322244 n : ℝ)

end A322244

/-!
# A322245: a(n) = A322244(n)^2, the square of the central coefficient in (1 + 3*x + 16x^2)^n.

The programs for A322245, the canonical program `A322245.P445531593623967521` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322245 has offset 0).

The definition of A322245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322245.P445531593623967521

`A322244(n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322245

/-- `A322244(n)²` -/
def P445531593623967521.Spec : Prop :=
  ∀ n, P445531593623967521.a n = A322245 n

theorem P445531593623967521.correct : P445531593623967521.Spec := by
  intro n
  simp only [A322245]

end A322245

/-! ## A322245.P2958751328190131937

`A322244(n)^(A178334(n)+1)`
-/

namespace A322245.P2958751328190131937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322244 n : ℚ) ^ (A178334 n + 1 : ℤ)

end

end A322245.P2958751328190131937

namespace A322245

/-- `A322244(n)^(A178334(n)+1)` -/
def P2958751328190131937.Spec : Prop :=
  ∀ n, P2958751328190131937.a n = (A322245 n : ℚ)

end A322245

/-! ## A322245.P17054270503548976978

`A322244(n)^A001316(A001316(n))`
-/

namespace A322245.P17054270503548976978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322244 n : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A322245.P17054270503548976978

namespace A322245

/-- `A322244(n)^A001316(A001316(n))` -/
def P17054270503548976978.Spec : Prop :=
  ∀ n, P17054270503548976978.a n = (A322245 n : ℚ)

end A322245

/-! ## A322245.P10501433439270359117

`A322244(n)^A010673(A005408(n))`
-/

namespace A322245.P10501433439270359117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322244 n : ℚ) ^ (A010673 (A005408 n).toNat : ℤ)

end

end A322245.P10501433439270359117

namespace A322245

/-- `A322244(n)^A010673(A005408(n))` -/
def P10501433439270359117.Spec : Prop :=
  ∀ n, P10501433439270359117.a n = (A322245 n : ℚ)

end A322245

/-! ## A322245.P17779574737316095740

`A322244(n)^A001285(A059268(n))`
-/

namespace A322245.P17779574737316095740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322244 n : ℚ) ^ (A001285 (A059268 n).toNat : ℤ)

end

end A322245.P17779574737316095740

namespace A322245

/-- `A322244(n)^A001285(A059268(n))` -/
def P17779574737316095740.Spec : Prop :=
  ∀ n, P17779574737316095740.a n = (A322245 n : ℚ)

end A322245

/-! ## A322245.P7576458245467251080

`A322244(n)^A107279(A005843(n))`
-/

namespace A322245.P7576458245467251080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322244 n : ℚ) ^ (A107279 (A005843 n).toNat : ℤ)

end

end A322245.P7576458245467251080

namespace A322245

/-- `A322244(n)^A107279(A005843(n))` -/
def P7576458245467251080.Spec : Prop :=
  ∀ n, P7576458245467251080.a n = (A322245 n : ℚ)

end A322245

/-! ## A322245.P3217374471514093988

`A322244(n)^A006530(A140513(n))`
-/

namespace A322245.P3217374471514093988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322244 n : ℚ) ^ (A006530 (A140513 n).toNat : ℤ)

end

end A322245.P3217374471514093988

namespace A322245

/-- `A322244(n)^A006530(A140513(n))` -/
def P3217374471514093988.Spec : Prop :=
  ∀ n, P3217374471514093988.a n = (A322245 n : ℚ)

end A322245

/-!
# A322246: Expansion of g.f. 1/sqrt(1 - 10*x - 11*x^2).

The programs for A322246, the canonical program `A322246.P9670673958241319882` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322246 has offset 0).

The definition of A322246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322246.P9670673958241319882

`∑{#}[n, (-1)^(n-#)*3^#*C(n, #)*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322246

/-- `∑{#}[n, (-1)^(n-#)*3^#*C(n, #)*C(2*#, #)]` -/
def P9670673958241319882.Spec : Prop :=
  ∀ n, P9670673958241319882.a n = (A322246 n : ℚ)

end A322246

/-! ## A322246.P14752397695172412694

`abs(∑[A085457(n)])`
-/

namespace A322246.P14752397695172412694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A322246.P14752397695172412694

namespace A322246

/-- `abs(∑[A085457(n)])` -/
def P14752397695172412694.Spec : Prop :=
  ∀ n, P14752397695172412694.a n = A322246 n

end A322246

/-! ## A322246.P11808656483554067924

`∑[A085457(n)]*A033999(n)`
-/

namespace A322246.P11808656483554067924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A322246.P11808656483554067924

namespace A322246

/-- `∑[A085457(n)]*A033999(n)` -/
def P11808656483554067924.Spec : Prop :=
  ∀ n, P11808656483554067924.a n = A322246 n

end A322246

/-! ## A322246.P12857362587728458316

`gcd(∑[A085457(n)], A000038(n))`
-/

namespace A322246.P12857362587728458316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A322246.P12857362587728458316

namespace A322246

/-- `gcd(∑[A085457(n)], A000038(n))` -/
def P12857362587728458316.Spec : Prop :=
  ∀ n, (P12857362587728458316.a n : ℤ) = A322246 n

end A322246

/-! ## A322246.P1927153584317694447

`lcm(∑[A085457(n)], A087960(n))`
-/

namespace A322246.P1927153584317694447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A087960 n)

end

end A322246.P1927153584317694447

namespace A322246

/-- `lcm(∑[A085457(n)], A087960(n))` -/
def P1927153584317694447.Spec : Prop :=
  ∀ n, (P1927153584317694447.a n : ℤ) = A322246 n

end A322246

/-! ## A322246.P109268391246689365

`sqrt(A322247(n))`
-/

namespace A322246.P109268391246689365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322247 n : ℝ)

end

end A322246.P109268391246689365

namespace A322246

/-- `sqrt(A322247(n))` -/
def P109268391246689365.Spec : Prop :=
  ∀ n, P109268391246689365.a n = (A322246 n : ℝ)

end A322246

/-! ## A322246.P15244558549960136194

`root(A322247(n), A001316(A001316(n)))`
-/

namespace A322246.P15244558549960136194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322247 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A322246.P15244558549960136194

namespace A322246

/-- `root(A322247(n), A001316(A001316(n)))` -/
def P15244558549960136194.Spec : Prop :=
  ∀ n, P15244558549960136194.a n = (A322246 n : ℝ)

end A322246

/-!
# A322247: a(n) = A322246(n)^2, the square of the central coefficient in (1 + 5*x + 9*x^2)^n.

The programs for A322247, the canonical program `A322247.P4341437232239793529` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322247 has offset 0).

The definition of A322247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322247.P4341437232239793529

`A322246(n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322247

/-- `A322246(n)²` -/
def P4341437232239793529.Spec : Prop :=
  ∀ n, P4341437232239793529.a n = A322247 n

theorem P4341437232239793529.correct : P4341437232239793529.Spec := by
  intro n
  simp only [A322247]

end A322247

/-! ## A322247.P11585246242888574196

`∑[A085457(n)]²`
-/

namespace A322247.P11585246242888574196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A322247.P11585246242888574196

namespace A322247

/-- `∑[A085457(n)]²` -/
def P11585246242888574196.Spec : Prop :=
  ∀ n, P11585246242888574196.a n = A322247 n

end A322247

/-! ## A322247.P3380241878546928566

`abs(∑[A085457(n)]*A322246(n))`
-/

namespace A322247.P3380241878546928566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A322246 n|

end

end A322247.P3380241878546928566

namespace A322247

/-- `abs(∑[A085457(n)]*A322246(n))` -/
def P3380241878546928566.Spec : Prop :=
  ∀ n, P3380241878546928566.a n = A322247 n

end A322247

/-! ## A322247.P7029488730304917103

`A322246(A118759(n))*A322246(n)`
-/

namespace A322247.P7029488730304917103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322246 (A118759 n).toNat * A322246 n

end

end A322247.P7029488730304917103

namespace A322247

/-- `A322246(A118759(n))*A322246(n)` -/
def P7029488730304917103.Spec : Prop :=
  ∀ n, P7029488730304917103.a n = A322247 n

end A322247

/-! ## A322247.P3115496762672022545

`A322246(n)^A001316(A001316(n))`
-/

namespace A322247.P3115496762672022545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322246 n : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A322247.P3115496762672022545

namespace A322247

/-- `A322246(n)^A001316(A001316(n))` -/
def P3115496762672022545.Spec : Prop :=
  ∀ n, P3115496762672022545.a n = (A322247 n : ℚ)

end A322247

/-! ## A322247.P4195736671745391991

`A322246(n)^A014963(A062383(n))`
-/

namespace A322247.P4195736671745391991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322246 n : ℚ) ^ (A014963 (A062383 n).toNat : ℤ)

end

end A322247.P4195736671745391991

namespace A322247

/-- `A322246(n)^A014963(A062383(n))` -/
def P4195736671745391991.Spec : Prop :=
  ∀ n, P4195736671745391991.a n = (A322247 n : ℚ)

end A322247

/-! ## A322247.P2754739965581794945

`A322246(n)^A000005(A005383(n+1))`
-/

namespace A322247.P2754739965581794945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322246 n : ℚ) ^ (A000005 (A005383 (n + 1)).toNat : ℤ)

end

end A322247.P2754739965581794945

namespace A322247

/-- `A322246(n)^A000005(A005383(n+1))` -/
def P2754739965581794945.Spec : Prop :=
  ∀ n, P2754739965581794945.a n = (A322247 n : ℚ)

end A322247

/-! ## A322247.P9357762650074287541

`A322246(n)^A000005(A008578(n+1))`
-/

namespace A322247.P9357762650074287541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322246 n : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A322247.P9357762650074287541

namespace A322247

/-- `A322246(n)^A000005(A008578(n+1))` -/
def P9357762650074287541.Spec : Prop :=
  ∀ n, P9357762650074287541.a n = (A322247 n : ℚ)

end A322247

/-! ## A322247.P17701498184070555770

`A322246(n)^A000005(A141924(n+1))`
-/

namespace A322247.P17701498184070555770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322246 n : ℚ) ^ (A000005 (A141924 (n + 1)).toNat : ℤ)

end

end A322247.P17701498184070555770

namespace A322247

/-- `A322246(n)^A000005(A141924(n+1))` -/
def P17701498184070555770.Spec : Prop :=
  ∀ n, P17701498184070555770.a n = (A322247 n : ℚ)

end A322247

/-!
# A322248: G.f.: 1/sqrt( (1 + 3*x)*(1 - 13*x) ).

The programs for A322248, the canonical program `A322248.P8045593625518455771` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322248 has offset 0).

The definition of A322248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322248.P8045593625518455771

`∑{#}[n, (-3)^(n-#)*4^#*C(n, #)*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322248

/-- `∑{#}[n, (-3)^(n-#)*4^#*C(n, #)*C(2*#, #)]` -/
def P8045593625518455771.Spec : Prop :=
  ∀ n, P8045593625518455771.a n = (A322248 n : ℚ)

end A322248

/-! ## A322248.P6334387664266253988

`sqrt(A322249(n))`
-/

namespace A322248.P6334387664266253988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322249 n : ℝ)

end

end A322248.P6334387664266253988

namespace A322248

/-- `sqrt(A322249(n))` -/
def P6334387664266253988.Spec : Prop :=
  ∀ n, P6334387664266253988.a n = (A322248 n : ℝ)

end A322248

/-! ## A322248.P2900509821146319614

`root(A322249(n), A036453(n+1))`
-/

namespace A322248.P2900509821146319614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322249 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A322248.P2900509821146319614

namespace A322248

/-- `root(A322249(n), A036453(n+1))` -/
def P2900509821146319614.Spec : Prop :=
  ∀ n, P2900509821146319614.a n = (A322248 n : ℝ)

end A322248

/-! ## A322248.P976581814321893349

`root(A322249(n), dr(A280187(n+1)))`
-/

namespace A322248.P976581814321893349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322249 n : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A280187 (n + 1)) : ℝ))

end

end A322248.P976581814321893349

namespace A322248

/-- `root(A322249(n), dr(A280187(n+1)))` -/
def P976581814321893349.Spec : Prop :=
  ∀ n, P976581814321893349.a n = (A322248 n : ℝ)

end A322248

/-! ## A322248.P2762435605324985483

`root(A322249(n), A133265(A133265(n)))`
-/

namespace A322248.P2762435605324985483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322249 n : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A322248.P2762435605324985483

namespace A322248

/-- `root(A322249(n), A133265(A133265(n)))` -/
def P2762435605324985483.Spec : Prop :=
  ∀ n, P2762435605324985483.a n = (A322248 n : ℝ)

end A322248

/-!
# A322249: a(n) = A322248(n)^2, the square of the central coefficient in (1 + 5*x + 16*x^2)^n.

The programs for A322249, the canonical program `A322249.P6670257932910732475` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322249 has offset 0).

The definition of A322249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322249.P6670257932910732475

`A322248(n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322249

/-- `A322248(n)²` -/
def P6670257932910732475.Spec : Prop :=
  ∀ n, P6670257932910732475.a n = A322249 n

theorem P6670257932910732475.correct : P6670257932910732475.Spec := by
  intro n
  simp only [A322249]

end A322249

/-! ## A322249.P3648784068266272968

`A322248(n)^A020639(A001316(n))`
-/

namespace A322249.P3648784068266272968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322248 n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A322249.P3648784068266272968

namespace A322249

/-- `A322248(n)^A020639(A001316(n))` -/
def P3648784068266272968.Spec : Prop :=
  ∀ n, P3648784068266272968.a n = (A322249 n : ℚ)

end A322249

/-! ## A322249.P13957027488360953591

`A322248(n)^A020639(A013598(n))`
-/

namespace A322249.P13957027488360953591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322248 n : ℚ) ^ (A020639 (A013598 n).toNat : ℤ)

end

end A322249.P13957027488360953591

namespace A322249

/-- `A322248(n)^A020639(A013598(n))` -/
def P13957027488360953591.Spec : Prop :=
  ∀ n, P13957027488360953591.a n = (A322249 n : ℚ)

end A322249

/-! ## A322249.P2749421871131726981

`A322248(n)^A036453(A000124(n))`
-/

namespace A322249.P2749421871131726981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322248 n : ℚ) ^ (A036453 (A000124 n).toNat : ℤ)

end

end A322249.P2749421871131726981

namespace A322249

/-- `A322248(n)^A036453(A000124(n))` -/
def P2749421871131726981.Spec : Prop :=
  ∀ n, P2749421871131726981.a n = (A322249 n : ℚ)

end A322249

/-!
# A322250: Take binary expansion of 2n-1 and delete the trailing block of 1's, except if the number is 11...1, leave a single 1.

The programs for A322250, the canonical program `A322250.P12289583211115368098` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322250 has offset 1).

The definition of A322250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322250.P12289583211115368098

`floor(n*a(floor((n-1)/2))/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322250

/-- `floor(n*a(floor((n-1)/2))/a(n-1))` -/
def P12289583211115368098.Spec : Prop :=
  ∀ n, P12289583211115368098.a n = A322250 (n + 1)

theorem P12289583211115368098.correct : P12289583211115368098.Spec := by
  intro n
  simp only [A322250, Nat.add_sub_cancel]

end A322250

/-! ## A322250.P12414088929998935145

`(n-1)%((n+1)/2^val(n+1, 2))+1`
-/

namespace A322250.P12414088929998935145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) + 1

end

end A322250.P12414088929998935145

namespace A322250

/-- `(n-1)%((n+1)/2^val(n+1, 2))+1` -/
def P12414088929998935145.Spec : Prop :=
  ∀ n, P12414088929998935145.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P1704266414951478323

`char[2^n-1]+floor(n/2^val(n+1, 2))`
-/

namespace A322250.P1704266414951478323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

end

end A322250.P1704266414951478323

namespace A322250

/-- `char[2^n-1]+floor(n/2^val(n+1, 2))` -/
def P1704266414951478323.Spec : Prop :=
  ∀ n, P1704266414951478323.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P679246852848702765

`(n+1)/2^val(n+1, 2)-char[comp[2^n-1]]`
-/

namespace A322250.P679246852848702765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A322250.P679246852848702765

namespace A322250

/-- `(n+1)/2^val(n+1, 2)-char[comp[2^n-1]]` -/
def P679246852848702765.Spec : Prop :=
  ∀ n, P679246852848702765.a n = (A322250 (n + 1) : ℚ)

end A322250

/-! ## A322250.P3652094690203177854

`(char[2^n-1]+floor(n/(xor(n, n+1)+1)))*(2-char[2^n-1])`
-/

namespace A322250.P3652094690203177854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋) * (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A322250.P3652094690203177854

namespace A322250

/-- `(char[2^n-1]+floor(n/(xor(n, n+1)+1)))*(2-char[2^n-1])` -/
def P3652094690203177854.Spec : Prop :=
  ∀ n, P3652094690203177854.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P1941939132295238393

`(n-1)%A000265(n+1)+1`
-/

namespace A322250.P1941939132295238393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (A000265 (n + 1)) + 1

end

end A322250.P1941939132295238393

namespace A322250

/-- `(n-1)%A000265(n+1)+1` -/
def P1941939132295238393.Spec : Prop :=
  ∀ n, P1941939132295238393.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P1958169393922435416

`∏{d}[floor(n/2^val(n+1, 2)), A014963(#)]`
-/

namespace A322250.P1958169393922435416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A322250.P1958169393922435416

namespace A322250

/-- `∏{d}[floor(n/2^val(n+1, 2)), A014963(#)]` -/
def P1958169393922435416.Spec : Prop :=
  ∀ n, P1958169393922435416.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P5928915634930397289

`A004277(A025480(n))`
-/

namespace A322250.P5928915634930397289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025480 n).toNat

end

end A322250.P5928915634930397289

namespace A322250

/-- `A004277(A025480(n))` -/
def P5928915634930397289.Spec : Prop :=
  ∀ n, P5928915634930397289.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P8776768234520504445

`A028310(A153733(n))`
-/

namespace A322250.P8776768234520504445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153733 n).toNat

end

end A322250.P8776768234520504445

namespace A322250

/-- `A028310(A153733(n))` -/
def P8776768234520504445.Spec : Prop :=
  ∀ n, P8776768234520504445.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P288528809241463927

`A004275(A003602(n+1))`
-/

namespace A322250.P288528809241463927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A003602 (n + 1)).toNat

end

end A322250.P288528809241463927

namespace A322250

/-- `A004275(A003602(n+1))` -/
def P288528809241463927.Spec : Prop :=
  ∀ n, P288528809241463927.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P11482275754483330771

`A004275(A025480(n)+1)`
-/

namespace A322250.P11482275754483330771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A025480 n + 1).toNat

end

end A322250.P11482275754483330771

namespace A322250

/-- `A004275(A025480(n)+1)` -/
def P11482275754483330771.Spec : Prop :=
  ∀ n, P11482275754483330771.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P90865747493521243

`A055456(A000265(n+1))`
-/

namespace A322250.P90865747493521243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A000265 (n + 1)).toNat

end

end A322250.P90865747493521243

namespace A322250

/-- `A055456(A000265(n+1))` -/
def P90865747493521243.Spec : Prop :=
  ∀ n, P90865747493521243.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P223684023631165800

`A185048(A065883(n+1))`
-/

namespace A322250.P223684023631165800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A065883 (n + 1)).toNat

end

end A322250.P223684023631165800

namespace A322250

/-- `A185048(A065883(n+1))` -/
def P223684023631165800.Spec : Prop :=
  ∀ n, P223684023631165800.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P3187589104534465984

`A007843(A274716(n+1))`
-/

namespace A322250.P3187589104534465984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A274716 (n + 1)).toNat

end

end A322250.P3187589104534465984

namespace A322250

/-- `A007843(A274716(n+1))` -/
def P3187589104534465984.Spec : Prop :=
  ∀ n, P3187589104534465984.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P10492477686790655502

`A185048(A259445(n+1))`
-/

namespace A322250.P10492477686790655502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A259445 (n + 1)).toNat

end

end A322250.P10492477686790655502

namespace A322250

/-- `A185048(A259445(n+1))` -/
def P10492477686790655502.Spec : Prop :=
  ∀ n, P10492477686790655502.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P2676508327935086652

`A028310(2*A025480(n))`
-/

namespace A322250.P2676508327935086652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A025480 n).toNat

end

end A322250.P2676508327935086652

namespace A322250

/-- `A028310(2*A025480(n))` -/
def P2676508327935086652.Spec : Prop :=
  ∀ n, P2676508327935086652.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P4528126643164315223

`A153733(n)+A036987(n)`
-/

namespace A322250.P4528126643164315223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + A036987 n

end

end A322250.P4528126643164315223

namespace A322250

/-- `A153733(n)+A036987(n)` -/
def P4528126643164315223.Spec : Prop :=
  ∀ n, P4528126643164315223.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P2718184942939038443

`∏{d}[A153733(n), A014963(#)]`
-/

namespace A322250.P2718184942939038443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A322250.P2718184942939038443

namespace A322250

/-- `∏{d}[A153733(n), A014963(#)]` -/
def P2718184942939038443.Spec : Prop :=
  ∀ n, P2718184942939038443.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P3814740624667650822

`A153733(n)+char[A000225(n)]`
-/

namespace A322250.P3814740624667650822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322250.P3814740624667650822

namespace A322250

/-- `A153733(n)+char[A000225(n)]` -/
def P3814740624667650822.Spec : Prop :=
  ∀ n, P3814740624667650822.a n = A322250 (n + 1)

end A322250

/-! ## A322250.P15701885577453179328

`A004277(A003602(n+1)-1)`
-/

namespace A322250.P15701885577453179328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003602 (n + 1) - 1).toNat

end

end A322250.P15701885577453179328

namespace A322250

/-- `A004277(A003602(n+1)-1)` -/
def P15701885577453179328.Spec : Prop :=
  ∀ n, P15701885577453179328.a n = A322250 (n + 1)

end A322250

/-!
# A322251: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 3).

The programs for A322251, there is no canonical definition to state claims against.
-/

/-! ## A322251.P16286728431788080600

`A049093(A097597(n)+1)-1`
-/

namespace A322251.P16286728431788080600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A097597 n + 1).toNat - 1

end

end A322251.P16286728431788080600

/-! ## A322251.P16662249843990514919

`A147146(n+1)+A032634(A185998(n))`
-/

namespace A322251.P16662249843990514919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147146 (n + 1) + A032634 (A185998 n).toNat

end

end A322251.P16662249843990514919

/-! ## A322251.P16198645069456929829

`A183991(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A322251.P16198645069456929829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A183991 (a (n - 1)).toNat

end

end A322251.P16198645069456929829

/-!
# A322252: a(0) = 1 and a(n) = (5*n)!/(5!*n!^5) for n > 0.

The programs for A322252, there is no canonical definition to state claims against.
-/

/-! ## A322252.P6484222282274769155

`A060540(A052905(n)+10)`
-/

namespace A322252.P6484222282274769155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (A052905 n + 10).toNat

end

end A322252.P6484222282274769155

/-!
# A322254: Greater members of dihedral amicable pairs: numbers (m, k) such that t(m) = t(k) = m + k, where t(k) = sigma(k) + d(k).

The programs for A322254, there is no canonical definition to state claims against.
-/

/-! ## A322254.P17020715750850359548

`A163163(A320457(n+1))`
-/

namespace A322254.P17020715750850359548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (A320457 (n + 1)).toNat

end

end A322254.P17020715750850359548

/-!
# A322255: Irregular triangle T(n,k), n >= 2, 1 <= k <= floor(n/2), read by rows, where T(n,k) is the number of permutations p of [n] such that |p(i)-p(i-1)| >= k for all i = 2..n.

The programs for A322255, there is no canonical definition to state claims against.
-/

/-! ## A322255.P12915952768663998799

`dr(A258357(n+3))!`
-/

namespace A322255.P12915952768663998799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (A258357 (n + 3)))

end

end A322255.P12915952768663998799

/-!
# A322257: The number of practical numbers not exceeding 10^n.

The programs for A322257, there is no canonical definition to state claims against.
-/

/-! ## A322257.P10428826404109548639

`A072000(xor(4, A048440(n+1)))`
-/

namespace A322257.P10428826404109548639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.xor 4 (A048440 (n + 1))).toNat

end

end A322257.P10428826404109548639

/-!
# A322260: Numbers k such that the poset of multiset partitions of a multiset whose multiplicities are the prime indices of k is a lattice.

The programs for A322260, there is no canonical definition to state claims against.
-/

/-! ## A322260.P176028152831347713

`lt[and(n, n-1), dr(n)]`
-/

namespace A322260.P176028152831347713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322260.P176028152831347713

/-! ## A322260.P4368255539004900711

`record[∏{digits}[n, gcd(n, #^#)]]`
-/

namespace A322260.P4368255539004900711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.gcd n (x ^ x)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322260.P4368255539004900711

/-! ## A322260.P11766223930558960141

`lt[and(n, n-1), n%10]`
-/

namespace A322260.P11766223930558960141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322260.P11766223930558960141

/-! ## A322260.P18354847258174541014

`lt[and(n, n-1), ∑{digits}[n, #]]`
-/

namespace A322260.P18354847258174541014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322260.P18354847258174541014

/-! ## A322260.P10593094719783809615

`lt[and(n, n-1), ∏{digits}[n, #]]`
-/

namespace A322260.P10593094719783809615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322260.P10593094719783809615

/-!
# A322261: Square array T(n, k) (n >= 0, k >= 0) read by antidiagonals upwards: the lengths of runs in binary expansion of T(n, k) correspond to the lengths of runs in binary expansion of n followed by the lengths of runs in binary expansion of k.

The programs for A322261, there is no canonical definition to state claims against.
-/

/-! ## A322261.P16645095071929759896

`A113326(A286101(n+1))%(n+1)`
-/

namespace A322261.P16645095071929759896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113326 (A286101 (n + 1)).toNat) (n + 1 : ℤ)

end

end A322261.P16645095071929759896

/-! ## A322261.P15201265044210398946

`∑[A010054(n)]-A294587(A113092(n))`
-/

namespace A322261.P15201265044210398946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294587 (A113092 n).toNat

end

end A322261.P15201265044210398946

/-!
# A322262: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 6).

The programs for A322262, there is no canonical definition to state claims against.
-/

/-! ## A322262.P9493227291734060244

`A322297(n+1)+A239229(A322297(n))`
-/

namespace A322262.P9493227291734060244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322297 (n + 1) + A239229 (A322297 n).toNat

end

end A322262.P9493227291734060244

/-! ## A322262.P5645055631818736624

`A166097(C(n, 6)+1)`
-/

namespace A322262.P5645055631818736624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166097 (Nat.choose n 6 + 1)

end

end A322262.P5645055631818736624

/-! ## A322262.P7886517668074158471

`∏[A165105(floor(4*n/7)!)]`
-/

namespace A322262.P7886517668074158471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165105 (Nat.factorial ⌊4 * ((n : ℚ) / 7)⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322262.P7886517668074158471

/-! ## A322262.P8963386765761538345

`∏[A269400((floor(n/3)*ceil(n/3))!)]`
-/

namespace A322262.P8963386765761538345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269400 (Nat.factorial (⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322262.P8963386765761538345

/-! ## A322262.P9692125163962338981

`A158031(A010750(n))`
-/

namespace A322262.P9692125163962338981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158031 (A010750 n).toNat

end

end A322262.P9692125163962338981

/-!
# A322263: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = numerator of Sum_{d|n} 1/d^k.

The programs for A322263, there is no canonical definition to state claims against.
-/

/-! ## A322263.P9480400155764683216

`A279394(n+1)/gcd(A009998(n), A279394(n+1))`
-/

namespace A322263.P9480400155764683216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279394 (n + 1) : ℚ) / (Int.gcd (A009998 n) (A279394 (n + 1)) : ℚ)

end

end A322263.P9480400155764683216

/-! ## A322263.P4259030971778125075

`gcd(A122295(A067156(n+9)), A279394(n+1))`
-/

namespace A322263.P4259030971778125075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122295 (A067156 (n + 9)).toNat) (A279394 (n + 1))

end

end A322263.P4259030971778125075

/-! ## A322263.P11000452556539185440

`A279394(n+1)%A153271(A051129(n+1))`
-/

namespace A322263.P11000452556539185440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279394 (n + 1)) (A153271 (A051129 (n + 1)).toNat)

end

end A322263.P11000452556539185440

/-!
# A322264: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = denominator of Sum_{d|n} 1/d^k.

The programs for A322264, there is no canonical definition to state claims against.
-/

/-! ## A322264.P15039066957787690658

`A009998(n)/gcd(A009998(n), A279394(n+1))`
-/

namespace A322264.P15039066957787690658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (Int.gcd (A009998 n) (A279394 (n + 1)) : ℚ)

end

end A322264.P15039066957787690658

/-! ## A322264.P1863241490812044211

`A332883(A009998(n))`
-/

namespace A322264.P1863241490812044211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (A009998 n).toNat

end

end A322264.P1863241490812044211

/-! ## A322264.P14660764950222042885

`A332883(A002260(n+1)^A025581(n))`
-/

namespace A322264.P14660764950222042885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A322264.P14660764950222042885

/-! ## A322264.P4538305587839531316

`A332883(A048151(n+1)^A025581(n))`
-/

namespace A322264.P4538305587839531316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (SequenceMachineLib.roundAway ((A048151 (n + 1) : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A322264.P4538305587839531316

/-! ## A322264.P6612118912827967452

`A332883(A279394(n+1)-A321258(n+1))`
-/

namespace A322264.P6612118912827967452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (A279394 (n + 1) - A321258 (n + 1)).toNat

end

end A322264.P6612118912827967452

/-!
# A322265: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = numerator of Sum_{j=1..n} 1/j^k.

The programs for A322265, there is no canonical definition to state claims against.
-/

/-! ## A322265.P4406396013283530785

`A291556(A077168(n+1)+A003056(n))`
-/

namespace A322265.P4406396013283530785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (A077168 (n + 1) + A003056 n).toNat

end

end A322265.P4406396013283530785

/-! ## A322265.P16206698718355991654

`A291556(A117707(n)+A077168(n+1))`
-/

namespace A322265.P16206698718355991654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (A117707 n + A077168 (n + 1)).toNat

end

end A322265.P16206698718355991654

/-! ## A322265.P13279626835702599083

`A291556(A014132(n+1)%A305416(n+1))`
-/

namespace A322265.P13279626835702599083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (Int.tmod (A014132 (n + 1)) (A305416 (n + 1))).toNat

end

end A322265.P13279626835702599083

/-! ## A322265.P2371963533055672247

`A291556(A014132(n+1))%A143005(2*(n+2))`
-/

namespace A322265.P2371963533055672247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291556 (A014132 (n + 1)).toNat) (A143005 (2 * (n + 2)))

end

end A322265.P2371963533055672247

/-! ## A322265.P7203884631365762210

`A370461(A269505(n+1)+2)`
-/

namespace A322265.P7203884631365762210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A269505 (n + 1) + 2).toNat

end

end A322265.P7203884631365762210

/-!
# A322266: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = denominator of Sum_{j=1..n} 1/j^k.

The programs for A322266, there is no canonical definition to state claims against.
-/

/-! ## A322266.P5077745036944785977

`A257895(A038722(n+1))/A165022(A008574(n))`
-/

namespace A322266.P5077745036944785977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257895 (A038722 (n + 1)).toNat : ℚ) / (A165022 (A008574 n).toNat : ℚ)

end

end A322266.P5077745036944785977

/-! ## A322266.P14812282189778383151

`A257895(A038722(n+1)%A000978(n+1))`
-/

namespace A322266.P14812282189778383151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257895 (Int.tmod (A038722 (n + 1)) (A000978 (n + 1))).toNat

end

end A322266.P14812282189778383151

/-! ## A322266.P9474296046552181276

`A257895(A038722(n+1))+A000007(A013610(n))`
-/

namespace A322266.P9474296046552181276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257895 (A038722 (n + 1)).toNat + A000007 (A013610 n).toNat

end

end A322266.P9474296046552181276

/-! ## A322266.P6677898152182302543

`A257895(A038722(n+1))*A257895(A110566(n+1))`
-/

namespace A322266.P6677898152182302543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257895 (A038722 (n + 1)).toNat * A257895 (A110566 (n + 1)).toNat

end

end A322266.P6677898152182302543

/-! ## A322266.P2714542658766893402

`A257895(A038722(n+1))+A000007(A257895(n+1))`
-/

namespace A322266.P2714542658766893402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257895 (A038722 (n + 1)).toNat + A000007 (A257895 (n + 1)).toNat

end

end A322266.P2714542658766893402

/-!
# A322267: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. (sec(x) + tan(x))^k.

The programs for A322267, there is no canonical definition to state claims against.
-/

/-! ## A322267.P12663407308713760778

`A068063(A233543(n))*A213276(n)`
-/

namespace A322267.P12663407308713760778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A233543 n).toNat * A213276 n

end

end A322267.P12663407308713760778

/-! ## A322267.P5492396484505666154

`A124762(A351790(n))+A003992(n)`
-/

namespace A322267.P5492396484505666154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A351790 n).toNat + A003992 n

end

end A322267.P5492396484505666154

/-! ## A322267.P15837088159428234810

`A308813(n+1)-A001221(A344110(n))`
-/

namespace A322267.P15837088159428234810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (n + 1) - A001221 (A344110 n).toNat

end

end A322267.P15837088159428234810

/-!
# A322268: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x)*(sec(x) + tan(x))^k.

The programs for A322268, there is no canonical definition to state claims against.
-/

/-! ## A322268.P12885567506324122958

`A091150(A061579(n))*A309873(A000040(n+1)²)`
-/

namespace A322268.P12885567506324122958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A061579 n).toNat * A309873 (A000040 (n + 1) ^ 2).toNat

end

end A322268.P12885567506324122958

/-! ## A322268.P590591511445526100

`A098446(n)-A033483(A208673(n))`
-/

namespace A322268.P590591511445526100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 n - A033483 (A208673 n).toNat

end

end A322268.P590591511445526100

/-! ## A322268.P13947105687363445164

`A098446(n)-A033483(A238010(n))`
-/

namespace A322268.P13947105687363445164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 n - A033483 (A238010 n).toNat

end

end A322268.P13947105687363445164

/-! ## A322268.P11271601093739878089

`A098446(n)-A337380(A000032(n))`
-/

namespace A322268.P11271601093739878089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 n - A337380 (A000032 n).toNat

end

end A322268.P11271601093739878089

/-! ## A322268.P2386907426756711253

`A098446(n)-A335460(A005709(n))`
-/

namespace A322268.P2386907426756711253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 n - A335460 (A005709 n).toNat

end

end A322268.P2386907426756711253

/-!
# A322272: Smallest multiplication factors f, prime or 1, for all a (mod 120), coprime to 120, so that b*f is a nonzero square mod 8, mod 3, and mod 5.

The programs for A322272, there is no canonical definition to state claims against.
-/

/-! ## A322272.P16544629431172403508

`A000040(n+3)%A159016(A016921(n))`
-/

namespace A322272.P16544629431172403508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3)) (A159016 (A016921 n).toNat)

end

end A322272.P16544629431172403508

/-!
# A322273: Smallest multiplication factors f, prime or 1, for all b (mod 840), coprime to 840 (= 4*7#), so that b*f is a nonzero square mod 8, mod 3, mod 5, and mod 7.

The programs for A322273, there is no canonical definition to state claims against.
-/

/-! ## A322273.P17029932444503906522

`A008364(A246337(n+1))%A162699(3*n+5)`
-/

namespace A322273.P17029932444503906522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008364 (A246337 (n + 1)).toNat) (A162699 (3 * n + 5))

end

end A322273.P17029932444503906522

/-!
# A322276: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 5).

The programs for A322276, there is no canonical definition to state claims against.
-/

/-! ## A322276.P9547910575401885578

`A316794(A036421(n+1)+1)`
-/

namespace A322276.P9547910575401885578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316794 (A036421 (n + 1) + 1).toNat

end

end A322276.P9547910575401885578

/-!
# A322278: Triangle read by rows: T(n,k) is the number of k-colored connected graphs on n labeled nodes up to permutation of the colors.

The programs for A322278, there is no canonical definition to state claims against.
-/

/-! ## A322278.P1000163571532783898

`A246049(n)*A347739(A261227(n))`
-/

namespace A322278.P1000163571532783898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 n * A347739 (A261227 n).toNat

end

end A322278.P1000163571532783898

/-!
# A322279: Array read by antidiagonals: T(n,k) is the number of connected graphs on n labeled nodes, each node being colored with one of k colors, where no edge connects two nodes of the same color.

The programs for A322279, there is no canonical definition to state claims against.
-/

/-! ## A322279.P16662920805402232807

`A353434(n)+A256974(A284463(n))`
-/

namespace A322279.P16662920805402232807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A256974 (A284463 n).toNat

end

end A322279.P16662920805402232807

/-! ## A322279.P5994651787013245241

`A001511(A112492(n))*A350529(n)`
-/

namespace A322279.P5994651787013245241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A112492 n).toNat * A350529 n

end

end A322279.P5994651787013245241

/-! ## A322279.P7484359582354769840

`A001511(A112492(n))*A353434(n)`
-/

namespace A322279.P7484359582354769840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A112492 n).toNat * A353434 n

end

end A322279.P7484359582354769840

/-! ## A322279.P15563409073967343345

`A195644(A260876(n))*A350529(n)`
-/

namespace A322279.P15563409073967343345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A260876 n).toNat * A350529 n

end

end A322279.P15563409073967343345

/-! ## A322279.P6839210818916910577

`A350529(n)*A364350(A350532(3*(n+1)))`
-/

namespace A322279.P6839210818916910577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n * A364350 (A350532 (3 * (n + 1))).toNat

end

end A322279.P6839210818916910577

/-!
# A322280: Array read by antidiagonals: T(n,k) is the number of graphs on n labeled nodes, each node being colored with one of k colors, where no edge connects two nodes of the same color.

The programs for A322280, there is no canonical definition to state claims against.
-/

/-! ## A322280.P17533989906192270053

`A382019(A213028(n))`
-/

namespace A322280.P17533989906192270053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A213028 n).toNat

end

end A322280.P17533989906192270053

/-! ## A322280.P16997026024488997683

`or(A035203(A007749(n+1)), A361950(n))`
-/

namespace A322280.P16997026024488997683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035203 (A007749 (n + 1)).toNat) (A361950 n)

end

end A322280.P16997026024488997683

/-!
# A322281: Number of permutations sigma of [n] such that |sigma(i+j)-sigma(i)| >= 4 for 1 <= i <= n - j, 1 <= j <= 3.

The programs for A322281, there is no canonical definition to state claims against.
-/

/-! ## A322281.P7228714132871015182

`A087808(∑{d}[A179961(n), #])`
-/

namespace A322281.P7228714132871015182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A322281.P7228714132871015182

/-! ## A322281.P12391864454050496084

`A065369(and(∏[4-2/(n+1)]/2, A179961(n)))`
-/

namespace A322281.P12391864454050496084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (Int.land (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)) (A179961 n)).toNat

end

end A322281.P12391864454050496084

/-! ## A322281.P13999716785928036209

`A025581(A065648(n)*A179961(n))`
-/

namespace A322281.P13999716785928036209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A065648 n * A179961 n).toNat

end

end A322281.P13999716785928036209

/-! ## A322281.P3055223823689284969

`A051022(A179961(n))%A053741(n)`
-/

namespace A322281.P3055223823689284969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051022 (A179961 n).toNat) (A053741 n)

end

end A322281.P3055223823689284969

/-! ## A322281.P2372408671104185783

`∑{d}[A179961(n), A001511(A000010(#))]`
-/

namespace A322281.P2372408671104185783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001511 (A000010 d).toNat

end

end A322281.P2372408671104185783

/-!
# A322282: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 8).

The programs for A322282, there is no canonical definition to state claims against.
-/

/-! ## A322282.P3773913325339191981

`∏[dr(A107246(n)!)]`
-/

namespace A322282.P3773913325339191981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.factorial (A107246 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322282.P3773913325339191981

/-! ## A322282.P7584231192758850908

`∏[dr(A107247(n)!)]`
-/

namespace A322282.P7584231192758850908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.factorial (A107247 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322282.P7584231192758850908

/-! ## A322282.P5490751515367007355

`A199502(C(n, 8)+1)`
-/

namespace A322282.P5490751515367007355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199502 (Nat.choose n 8 + 1)

end

end A322282.P5490751515367007355

/-! ## A322282.P15046392160245644932

`A102825(A212387(n))`
-/

namespace A322282.P15046392160245644932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A212387 n).toNat

end

end A322282.P15046392160245644932

/-! ## A322282.P17305262374378916344

`A102825(A306859(n))`
-/

namespace A322282.P17305262374378916344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A306859 n).toNat

end

end A322282.P17305262374378916344

/-!
# A322283: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 10).

The programs for A322283, there is no canonical definition to state claims against.
-/

/-! ## A322283.P2961520992253400780

`A024780(2^∑{digits}[n, #%C(n, #)])-1`
-/

namespace A322283.P2961520992253400780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024780 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) - 1

end

end A322283.P2961520992253400780

/-! ## A322283.P17988223699199106771

`∏[A138262(A017899(n)!)]`
-/

namespace A322283.P17988223699199106771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138262 (Nat.factorial (A017899 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322283.P17988223699199106771

/-! ## A322283.P4010864348862002138

`A007732(∏[Δ[A010785(n)]])`
-/

namespace A322283.P4010864348862002138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322283.P4010864348862002138

/-! ## A322283.P2452328602775371923

`A009195(∏[Δ[A010785(n)]])`
-/

namespace A322283.P2452328602775371923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322283.P2452328602775371923

/-! ## A322283.P11451509335414390092

`A293482(∏[Δ[A010785(n)]])`
-/

namespace A322283.P11451509335414390092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293482 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322283.P11451509335414390092

/-!
# A322284: Number of nonequivalent ways to place n nonattacking kings on a 2 X 2n chessboard under all symmetry operations of the rectangle.

The programs for A322284, the canonical program `A322284.P18142658197256458487` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322284 has offset 1).

The definition of A322284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322284.P9043457671588129936

`ogf((1-6x^2+6x^3)/(1-4x+2x^2+8x^3-8x^4))`
-/

namespace A322284.P9043457671588129936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6, 6] [1, -4, 2, 8, -8] n

end

end A322284.P9043457671588129936

namespace A322284

/-- `ogf((1-6x^2+6x^3)/(1-4x+2x^2+8x^3-8x^4))` -/
def P9043457671588129936.Spec : Prop :=
  ∀ n, P9043457671588129936.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P18142658197256458487

`4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=22`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322284

/-- `4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P18142658197256458487.Spec : Prop :=
  ∀ n, P18142658197256458487.a n = A322284 (n + 1)

theorem P18142658197256458487.correct : P18142658197256458487.Spec := by
  intro n
  simp only [A322284, Nat.add_sub_cancel]

end A322284

/-! ## A322284.P11238174707507534405

`2*(A113980(n)+a(n-1))` with `a(0)=1`
-/

namespace A322284.P11238174707507534405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A113980 n + a (n - 1))

end

end A322284.P11238174707507534405

namespace A322284

/-- `2*(A113980(n)+a(n-1))` -/
def P11238174707507534405.Spec : Prop :=
  ∀ n, P11238174707507534405.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P16910073238574961877

`A051437(n)+A001787(n)`
-/

namespace A322284.P16910073238574961877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n + A001787 n

end

end A322284.P16910073238574961877

namespace A322284

/-- `A051437(n)+A001787(n)` -/
def P16910073238574961877.Spec : Prop :=
  ∀ n, P16910073238574961877.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P2301459560626829507

`A047859(n)-A274638(n)`
-/

namespace A322284.P2301459560626829507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n - A274638 n

end

end A322284.P2301459560626829507

namespace A322284

/-- `A047859(n)-A274638(n)` -/
def P2301459560626829507.Spec : Prop :=
  ∀ n, P2301459560626829507.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P7554169085084945601

`A001787(n)+Δ[A005418(n+2)]`
-/

namespace A322284.P7554169085084945601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A322284.P7554169085084945601

namespace A322284

/-- `A001787(n)+Δ[A005418(n+2)]` -/
def P7554169085084945601.Spec : Prop :=
  ∀ n, P7554169085084945601.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P15120806470332104897

`A001787(n)+Δ[A056326(n+2)]`
-/

namespace A322284.P15120806470332104897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A322284.P15120806470332104897

namespace A322284

/-- `A001787(n)+Δ[A056326(n+2)]` -/
def P15120806470332104897.Spec : Prop :=
  ∀ n, P15120806470332104897.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P17107647893211510105

`A045623(n+1)-A007179(n+1)`
-/

namespace A322284.P17107647893211510105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - A007179 (n + 1)

end

end A322284.P17107647893211510105

namespace A322284

/-- `A045623(n+1)-A007179(n+1)` -/
def P17107647893211510105.Spec : Prop :=
  ∀ n, P17107647893211510105.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P10339070086689531321

`Δ[A005418(n+2)]+n*A011782(n)`
-/

namespace A322284.P10339070086689531321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A011782 n

end

end A322284.P10339070086689531321

namespace A322284

/-- `Δ[A005418(n+2)]+n*A011782(n)` -/
def P10339070086689531321.Spec : Prop :=
  ∀ n, P10339070086689531321.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P12945213978696949854

`A016116(n+1)+A001792(n)-A016116(n)`
-/

namespace A322284.P12945213978696949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A001792 n - A016116 n)

end

end A322284.P12945213978696949854

namespace A322284

/-- `A016116(n+1)+A001792(n)-A016116(n)` -/
def P12945213978696949854.Spec : Prop :=
  ∀ n, P12945213978696949854.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P6820870196995665255

`A323936(n+2)+A323936(n+2)-A011782(n+1)`
-/

namespace A322284.P6820870196995665255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323936 (n + 2) + (A323936 (n + 2) - A011782 (n + 1))

end

end A322284.P6820870196995665255

namespace A322284

/-- `A323936(n+2)+A323936(n+2)-A011782(n+1)` -/
def P6820870196995665255.Spec : Prop :=
  ∀ n, P6820870196995665255.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P2428734372865081299

`Δ[A016116(n)+n*A011782(n)]`
-/

namespace A322284.P2428734372865081299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (n : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322284.P2428734372865081299

namespace A322284

/-- `Δ[A016116(n)+n*A011782(n)]` -/
def P2428734372865081299.Spec : Prop :=
  ∀ n, P2428734372865081299.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P15130420091607281827

`A178945(n+2)-(A001787(n)+A000079(n))`
-/

namespace A322284.P15130420091607281827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178945 (n + 2) - (A001787 n + A000079 n)

end

end A322284.P15130420091607281827

namespace A322284

/-- `A178945(n+2)-(A001787(n)+A000079(n))` -/
def P15130420091607281827.Spec : Prop :=
  ∀ n, P15130420091607281827.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P12311025765013672054

`A178945(n+2)+A001787(n)-A001787(n+1)`
-/

namespace A322284.P12311025765013672054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178945 (n + 2) + (A001787 n - A001787 (n + 1))

end

end A322284.P12311025765013672054

namespace A322284

/-- `A178945(n+2)+A001787(n)-A001787(n+1)` -/
def P12311025765013672054.Spec : Prop :=
  ∀ n, P12311025765013672054.a n = A322284 (n + 1)

end A322284

/-! ## A322284.P14458180574926485655

`Δ[A016116(n)+A036289(n)/2]`
-/

namespace A322284.P14458180574926485655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) + (A036289 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322284.P14458180574926485655

namespace A322284

/-- `Δ[A016116(n)+A036289(n)/2]` -/
def P14458180574926485655.Spec : Prop :=
  ∀ n, P14458180574926485655.a n = (A322284 (n + 1) : ℚ)

end A322284

/-!
# A322285: Triangle read by rows: T(n,k) is the Damerau-Levenshtein distance between n and k in binary representation, 0 <= k <= n.

The programs for A322285, there is no canonical definition to state claims against.
-/

/-! ## A322285.P13203845039089344398

`A152487(n)^A162298(A290318(n+2))`
-/

namespace A322285.P13203845039089344398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152487 n : ℚ) ^ (A162298 (A290318 (n + 2)).toNat : ℤ)

end

end A322285.P13203845039089344398

/-! ## A322285.P8607689580421903522

`A152487(n)-A000005(round(A290318(n+2)/ϕ)+10)%2`
-/

namespace A322285.P8607689580421903522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 n - Int.tmod (A000005 (SequenceMachineLib.roundAway ((A290318 (n + 2) : ℝ) / Real.goldenRatio) + 10).toNat) 2

end

end A322285.P8607689580421903522

/-! ## A322285.P2496100786929738836

`A152487(n)-A000005(∏{e}[A290318(n+2), #!]+10)%2`
-/

namespace A322285.P2496100786929738836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 n - Int.tmod (A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) + 10)) 2

end

end A322285.P2496100786929738836

/-! ## A322285.P17649800198311388921

`A152487(n-A304570(A000009(n)))`
-/

namespace A322285.P17649800198311388921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 ((n : ℤ) - A304570 (A000009 n).toNat).toNat

end

end A322285.P17649800198311388921

/-! ## A322285.P3315516563353026693

`A152487(n)-floor(A138618(3*n+1)/10)`
-/

namespace A322285.P3315516563353026693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 n - ⌊(A138618 (3 * n + 1) : ℚ) / 10⌋

end

end A322285.P3315516563353026693

/-!
# A322287: The number of odd abundant numbers below 10^n.

The programs for A322287, there is no canonical definition to state claims against.
-/

/-! ## A322287.P189541644254368719

`A151718(floor(n²/3)+1)`
-/

namespace A322287.P189541644254368719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151718 (⌊(n ^ 2 : ℚ) / 3⌋ + 1).toNat

end

end A322287.P189541644254368719

/-!
# A322291: Triangle T read by rows: T(n, k) = Sum_{i=1..k} binomial(n, floor((n-k)/2)+i).

The programs for A322291, there is no canonical definition to state claims against.
-/

/-! ## A322291.P1236243023114136165

`A375659(A007401(n+1))`
-/

namespace A322291.P1236243023114136165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375659 (A007401 (n + 1)).toNat

end

end A322291.P1236243023114136165

/-! ## A322291.P8546135762715320944

`A375659(lt[A375659(n), A375659(n+1)])`
-/

namespace A322291.P8546135762715320944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375659 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322291.P8546135762715320944

/-!
# A322292: a(n) = Max_{c composite, c < n} (c + least prime factor of c).

The programs for A322292, there is no canonical definition to state claims against.
-/

/-! ## A322292.P118892495144713809

`A102419((5*n)²-36*n+13)+A079578(n+1)`
-/

namespace A322292.P118892495144713809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (((5 * n) ^ 2 : ℤ) - (36 * n : ℤ) + 13).toNat + A079578 (n + 1)

end

end A322292.P118892495144713809

/-! ## A322292.P544186144531952604

`A155972(A140513(n))+A052928(A130481(n+6))`
-/

namespace A322292.P544186144531952604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155972 (A140513 n).toNat + A052928 (A130481 (n + 6)).toNat

end

end A322292.P544186144531952604

/-! ## A322292.P168146806770052438

`A176040(A000292(2*n+3))+A079578(n+1)`
-/

namespace A322292.P168146806770052438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A000292 (2 * n + 3)).toNat + A079578 (n + 1)

end

end A322292.P168146806770052438

/-!
# A322293: Integers k such that A322292(k) <= k.

The programs for A322293, there is no canonical definition to state claims against.
-/

/-! ## A322293.P4691047655747654327

`record[gcd(A000203(2*n+5), A322292(2*n+5))]`
-/

namespace A322293.P4691047655747654327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (2 * n + 5)) (A322292 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322293.P4691047655747654327

/-! ## A322293.P14264207673126923373

`record[A000040(n+3)%(A119715(2*n+5)+n)]+1`
-/

namespace A322293.P14264207673126923373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3)) (A119715 (2 * n + 5) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A322293.P14264207673126923373

/-! ## A322293.P4090226061797764282

`A098986(A299760(n+1))`
-/

namespace A322293.P4090226061797764282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098986 (A299760 (n + 1)).toNat

end

end A322293.P4090226061797764282

/-! ## A322293.P9238191561471527425

`A357126(A130101(n+1))+1`
-/

namespace A322293.P9238191561471527425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357126 (A130101 (n + 1)).toNat + 1

end

end A322293.P9238191561471527425

/-! ## A322293.P14463031883834962365

`A299912(A002182(n+3))+A299760(n+1)`
-/

namespace A322293.P14463031883834962365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299912 (A002182 (n + 3)).toNat + A299760 (n + 1)

end

end A322293.P14463031883834962365

/-!
# A322294: Number of permutations of [n] with exactly floor(n/2) rising or falling successions.

The programs for A322294, there is no canonical definition to state claims against.
-/

/-! ## A322294.P5826915998308862943

`A001100(floor((n²+2)/2))`
-/

namespace A322294.P5826915998308862943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001100 ⌊(n ^ 2 + 2 : ℚ) / 2⌋.toNat

end

end A322294.P5826915998308862943

/-! ## A322294.P2698806355771697569

`A111619(A291419(n))`
-/

namespace A322294.P2698806355771697569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111619 (A291419 n).toNat

end

end A322294.P2698806355771697569

/-! ## A322294.P5249604507499107164

`A136332(A189594(n+1))`
-/

namespace A322294.P5249604507499107164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136332 (A189594 (n + 1)).toNat

end

end A322294.P5249604507499107164

/-!
# A322295: Number of permutations of [2n] with exactly n rising or falling successions.

The programs for A322295, there is no canonical definition to state claims against.
-/

/-! ## A322295.P11613016223571487410

`A322294(2*n)`
-/

namespace A322295.P11613016223571487410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (2 * n)

end

end A322295.P11613016223571487410

/-! ## A322295.P1387375485799612014

`record[A322294(A014681(n))]`
-/

namespace A322295.P1387375485799612014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P1387375485799612014

/-! ## A322295.P6515929330253605629

`record[A322294(A124625(n))]`
-/

namespace A322295.P6515929330253605629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P6515929330253605629

/-! ## A322295.P11320345404918251963

`record[A322294(A186421(n))]`
-/

namespace A322295.P11320345404918251963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (A186421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P11320345404918251963

/-! ## A322295.P13397735864145420072

`record[A322294(A026741(n)+1)]`
-/

namespace A322295.P13397735864145420072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P13397735864145420072

/-! ## A322295.P7750935492602681590

`record[A322294(abs(A009001(n))-1)]`
-/

namespace A322295.P7750935492602681590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (|A009001 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P7750935492602681590

/-! ## A322295.P7077978585786171565

`record[A322294(abs(A030640(n))-1)]`
-/

namespace A322295.P7077978585786171565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (|A030640 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P7077978585786171565

/-! ## A322295.P15984793102409507880

`record[A322294(abs(n/A009001(n)))]`
-/

namespace A322295.P15984793102409507880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (SequenceMachineLib.roundAway |(n : ℚ) / (A009001 n : ℚ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P15984793102409507880

/-! ## A322295.P10299399887391370491

`record[A322294(n)/A009001(n²)]`
-/

namespace A322295.P10299399887391370491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322294 n : ℚ) / (A009001 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P10299399887391370491

/-! ## A322295.P17422828180733377839

`record[A322294(A004523(A006368(n)))]`
-/

namespace A322295.P17422828180733377839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (A004523 (A006368 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322295.P17422828180733377839

/-!
# A322296: Number of permutations of [2n+1] with exactly n rising or falling successions.

The programs for A322296, there is no canonical definition to state claims against.
-/

/-! ## A322296.P2248161081298984230

`A322294(Δ[n²])`
-/

namespace A322296.P2248161081298984230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322296.P2248161081298984230

/-! ## A322296.P7209659247435555736

`lcm(n+1, A322294(2*n+1))`
-/

namespace A322296.P7209659247435555736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A322294 (2 * n + 1))

end

end A322296.P7209659247435555736

/-! ## A322296.P11890071372776802816

`record[A322294(A026741(n))]`
-/

namespace A322296.P11890071372776802816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322296.P11890071372776802816

/-! ## A322296.P11441579703005063205

`record[A322294(abs(A009001(n)))]`
-/

namespace A322296.P11441579703005063205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322296.P11441579703005063205

/-! ## A322296.P5316803045279333839

`record[A322294(abs(A030640(n)))]`
-/

namespace A322296.P5316803045279333839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322294 |A030640 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322296.P5316803045279333839

/-!
# A322297: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 7).

The programs for A322297, there is no canonical definition to state claims against.
-/

/-! ## A322297.P2939239792529594259

`filter[A275074(n+1), A284490(#)]`
-/

namespace A322297.P2939239792529594259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284490 (f1 j).toNat = 1) n)

end

end A322297.P2939239792529594259

/-! ## A322297.P11179342342641455629

`A274496(C(n+2, 9))`
-/

namespace A322297.P11179342342641455629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274496 (Nat.choose (n + 2) 9)

end

end A322297.P11179342342641455629

/-! ## A322297.P16324112410881044475

`A001316(C(2*n+5, 19))`
-/

namespace A322297.P16324112410881044475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.choose (2 * n + 5) 19)

end

end A322297.P16324112410881044475

/-! ## A322297.P15679147253195353019

`A049107(∏[∑[char[6*n]]]^3)`
-/

namespace A322297.P15679147253195353019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 3)

end

end A322297.P15679147253195353019

/-! ## A322297.P13399387836691900845

`A144260(A006722(n))`
-/

namespace A322297.P13399387836691900845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144260 (A006722 n).toNat

end

end A322297.P13399387836691900845

/-!
# A322298: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 9).

The programs for A322298, there is no canonical definition to state claims against.
-/

/-! ## A322298.P14313578236665092456

`A322283(n+1)+A239229(A322283(n))`
-/

namespace A322298.P14313578236665092456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322283 (n + 1) + A239229 (A322283 n).toNat

end

end A322298.P14313578236665092456

/-! ## A322298.P14460622922070417558

`A136034(A011845(n))`
-/

namespace A322298.P14460622922070417558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136034 (A011845 n).toNat

end

end A322298.P14460622922070417558

/-! ## A322298.P7619135926203713590

`A325795(A036424(n)+1)`
-/

namespace A322298.P7619135926203713590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (A036424 n + 1).toNat

end

end A322298.P7619135926203713590

/-! ## A322298.P7742408332075649369

`∏[A094367(∏[A187489(n)])]`
-/

namespace A322298.P7742408332075649369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187489 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094367 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322298.P7742408332075649369

/-! ## A322298.P2485515903509541887

`∏[∏[A182937(A289094(n))]]`
-/

namespace A322298.P2485515903509541887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182937 (A289094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A322298.P2485515903509541887

/-!
# A322299: Number of distinct automorphism group sizes for binary self-dual codes of length 2n.

The programs for A322299, there is no canonical definition to state claims against.
-/

/-! ## A322299.P14869874993747636272

`A323358(n+1)+A323357(A077168(n))`
-/

namespace A322299.P14869874993747636272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323358 (n + 1) + A323357 (A077168 n).toNat

end

end A322299.P14869874993747636272

/-! ## A322299.P6703755054973692916

`A323358(A044916(n+1))+A323357(n+1)`
-/

namespace A322299.P6703755054973692916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323358 (A044916 (n + 1)).toNat + A323357 (n + 1)

end

end A322299.P6703755054973692916

/-! ## A322299.P392871712500865980

`A323357(n+1)+A089850(A323358(n+1))`
-/

namespace A322299.P392871712500865980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323357 (n + 1) + A089850 (A323358 (n + 1)).toNat

end

end A322299.P392871712500865980

/-! ## A322299.P13990491807334789495

`A323357(n+1)+∑[A062224(n+1)%A348290(n)]`
-/

namespace A322299.P13990491807334789495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062224 (n + 1)) (A348290 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323357 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322299.P13990491807334789495

/-! ## A322299.P16209488000601070610

`A323357(n+1)+A199413(n)%A199408(A322283(n))`
-/

namespace A322299.P16209488000601070610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323357 (n + 1) + Int.tmod (A199413 n) (A199408 (A322283 n).toNat)

end

end A322299.P16209488000601070610

