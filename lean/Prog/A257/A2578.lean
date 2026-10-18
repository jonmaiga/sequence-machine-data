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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A257800: Sequence A233271 reduced modulo 2: a(n) = A000035(A233271(n)); the parity of each term in the infinite trunk of inverted binary beanstalk.

The programs for A257800, the canonical program `A257800.P8907689118794167458` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257800 has offset 0).

The definition of A257800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257800.P8907689118794167458

`A000035(A233271(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257800

/-- `A000035(A233271(n))` -/
def P8907689118794167458.Spec : Prop :=
  ∀ n, P8907689118794167458.a n = A257800 n

theorem P8907689118794167458.correct : P8907689118794167458.Spec := by
  intro n
  simp only [A257800]

end A257800

/-! ## A257800.P17466757502482582381

`char[comp[A257804(n)]]`
-/

namespace A257800.P17466757502482582381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257800.P17466757502482582381

namespace A257800

/-- `char[comp[A257804(n)]]` -/
def P17466757502482582381.Spec : Prop :=
  ∀ n, (P17466757502482582381.a n : ℤ) = A257800 n

end A257800

/-! ## A257800.P9054529170177932478

`char[A257803(n+1)]`
-/

namespace A257800.P9054529170177932478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257800.P9054529170177932478

namespace A257800

/-- `char[A257803(n+1)]` -/
def P9054529170177932478.Spec : Prop :=
  ∀ n, (P9054529170177932478.a n : ℤ) = A257800 n

end A257800

/-! ## A257800.P13507066445366862834

`and(A054977(n), A233271(n))`
-/

namespace A257800.P13507066445366862834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A233271 n)

end

end A257800.P13507066445366862834

namespace A257800

/-- `and(A054977(n), A233271(n))` -/
def P13507066445366862834.Spec : Prop :=
  ∀ n, P13507066445366862834.a n = A257800 n

end A257800

/-! ## A257800.P16377889675333468807

`and(A057427(n), A233271(n))`
-/

namespace A257800.P16377889675333468807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A233271 n)

end

end A257800.P16377889675333468807

namespace A257800

/-- `and(A057427(n), A233271(n))` -/
def P16377889675333468807.Spec : Prop :=
  ∀ n, P16377889675333468807.a n = A257800 n

end A257800

/-! ## A257800.P14378285462569646407

`and(A158388(n), A233271(n))`
-/

namespace A257800.P14378285462569646407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A233271 n)

end

end A257800.P14378285462569646407

namespace A257800

/-- `and(A158388(n), A233271(n))` -/
def P14378285462569646407.Spec : Prop :=
  ∀ n, P14378285462569646407.a n = A257800 n

end A257800

/-! ## A257800.P14111542929968666740

`(A233270(n)+A179016(n))%2`
-/

namespace A257800.P14111542929968666740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233270 n + A179016 n) 2

end

end A257800.P14111542929968666740

namespace A257800

/-- `(A233270(n)+A179016(n))%2` -/
def P14111542929968666740.Spec : Prop :=
  ∀ n, P14111542929968666740.a n = A257800 n

end A257800

/-! ## A257800.P12057927536101616458

`1-char[A257804(A117966(n+1)+n)]`
-/

namespace A257800.P12057927536101616458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 (A117966 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257800.P12057927536101616458

namespace A257800

/-- `1-char[A257804(A117966(n+1)+n)]` -/
def P12057927536101616458.Spec : Prop :=
  ∀ n, P12057927536101616458.a n = A257800 n

end A257800

/-! ## A257800.P3228664903586385293

`A257799(n-A257804(A257808(n)))`
-/

namespace A257800.P3228664903586385293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257799 ((n : ℤ) - A257804 (A257808 n).toNat).toNat

end

end A257800.P3228664903586385293

namespace A257800

/-- `A257799(n-A257804(A257808(n)))` -/
def P3228664903586385293.Spec : Prop :=
  ∀ n, P3228664903586385293.a n = A257800 n

end A257800

/-! ## A257800.P838591802343288135

`(A233270(n)+A218616(A218602(n)))%2`
-/

namespace A257800.P838591802343288135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233270 n + A218616 (A218602 n).toNat) 2

end

end A257800.P838591802343288135

namespace A257800

/-- `(A233270(n)+A218616(A218602(n)))%2` -/
def P838591802343288135.Spec : Prop :=
  ∀ n, P838591802343288135.a n = A257800 n

end A257800

/-! ## A257800.P6168853675996959857

`and(A233271(n), A287200(A287202(n+1)))`
-/

namespace A257800.P6168853675996959857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233271 n) (A287200 (A287202 (n + 1)).toNat)

end

end A257800.P6168853675996959857

namespace A257800

/-- `and(A233271(n), A287200(A287202(n+1)))` -/
def P6168853675996959857.Spec : Prop :=
  ∀ n, P6168853675996959857.a n = A257800 n

end A257800

/-! ## A257800.P2213593589918530067

`and(A176410(n), A233271(n))`
-/

namespace A257800.P2213593589918530067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A233271 n)

end

end A257800.P2213593589918530067

namespace A257800

/-- `and(A176410(n), A233271(n))` -/
def P2213593589918530067.Spec : Prop :=
  ∀ n, P2213593589918530067.a n = A257800 n

end A257800

/-! ## A257800.P3704584899596085029

`and(A176794(n), A233271(n))`
-/

namespace A257800.P3704584899596085029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A233271 n)

end

end A257800.P3704584899596085029

namespace A257800

/-- `and(A176794(n), A233271(n))` -/
def P3704584899596085029.Spec : Prop :=
  ∀ n, P3704584899596085029.a n = A257800 n

end A257800

/-! ## A257800.P8750538711577641539

`and(A000051(n), A233271(n))`
-/

namespace A257800.P8750538711577641539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A233271 n)

end

end A257800.P8750538711577641539

namespace A257800

/-- `and(A000051(n), A233271(n))` -/
def P8750538711577641539.Spec : Prop :=
  ∀ n, P8750538711577641539.a n = A257800 n

end A257800

/-! ## A257800.P18040465823249878228

`and(A083318(n), A233271(n))`
-/

namespace A257800.P18040465823249878228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A233271 n)

end

end A257800.P18040465823249878228

namespace A257800

/-- `and(A083318(n), A233271(n))` -/
def P18040465823249878228.Spec : Prop :=
  ∀ n, P18040465823249878228.a n = A257800 n

end A257800

/-! ## A257800.P1163705288255425405

`and(A048578(n), A233271(n))`
-/

namespace A257800.P1163705288255425405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A233271 n)

end

end A257800.P1163705288255425405

namespace A257800

/-- `and(A048578(n), A233271(n))` -/
def P1163705288255425405.Spec : Prop :=
  ∀ n, P1163705288255425405.a n = A257800 n

end A257800

/-! ## A257800.P4505318087597075670

`and(A114001(n), A233271(n))`
-/

namespace A257800.P4505318087597075670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A233271 n)

end

end A257800.P4505318087597075670

namespace A257800

/-- `and(A114001(n), A233271(n))` -/
def P4505318087597075670.Spec : Prop :=
  ∀ n, P4505318087597075670.a n = A257800 n

end A257800

/-! ## A257800.P3118079831463456511

`and(A157240(n), A233271(n))`
-/

namespace A257800.P3118079831463456511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157240 n) (A233271 n)

end

end A257800.P3118079831463456511

namespace A257800

/-- `and(A157240(n), A233271(n))` -/
def P3118079831463456511.Spec : Prop :=
  ∀ n, P3118079831463456511.a n = A257800 n

end A257800

/-! ## A257800.P15914644714548099363

`and(A020737(n), A233271(n))`
-/

namespace A257800.P15914644714548099363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A233271 n)

end

end A257800.P15914644714548099363

namespace A257800

/-- `and(A020737(n), A233271(n))` -/
def P15914644714548099363.Spec : Prop :=
  ∀ n, P15914644714548099363.a n = A257800 n

end A257800

/-!
# A257801: Permutation of natural numbers: a(1)=1; a(oddprime(n)) = lucky(1+a(n)), a(not_an_oddprime(n)) = unlucky(a(n-1)).

The programs for A257801, there is no canonical definition to state claims against.
-/

/-! ## A257801.P5849121907705963836

`A257731(A257730(n+1))`
-/

namespace A257801.P5849121907705963836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257731 (A257730 (n + 1)).toNat

end

end A257801.P5849121907705963836

/-! ## A257801.P4632030497503505176

`A257726(A257727(n+1))`
-/

namespace A257801.P4632030497503505176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A257727 (n + 1)).toNat

end

end A257801.P4632030497503505176

/-!
# A257802: Permutation of natural numbers: a(1) = 1, a(lucky(n)) = oddprime(a(n-1)), a(unlucky(n)) = not_an_oddprime(1+a(n)).

The programs for A257802, there is no canonical definition to state claims against.
-/

/-! ## A257802.P12657449191123498235

`A257729(A257732(n+1))`
-/

namespace A257802.P12657449191123498235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257729 (A257732 (n + 1)).toNat

end

end A257802.P12657449191123498235

/-! ## A257802.P6501145247161580382

`A257728(A257725(n+1))`
-/

namespace A257802.P6501145247161580382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257728 (A257725 (n + 1)).toNat

end

end A257802.P6501145247161580382

/-! ## A257802.P6590379211457200003

`A257728(A257690(A257737(n+1)))`
-/

namespace A257802.P6590379211457200003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257728 (A257690 (A257737 (n + 1)).toNat).toNat

end

end A257802.P6590379211457200003

/-! ## A257802.P4725765293042203723

`A257728(A257735(A257690(n+1)))`
-/

namespace A257802.P4725765293042203723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257728 (A257735 (A257690 (n + 1)).toNat).toNat

end

end A257802.P4725765293042203723

/-!
# A257803: Positions of odd numbers in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A257803, the canonical program `A257803.P5745170931242880120` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257803 has offset 1).

The definition of A257803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257803.P6309237175154435252

`comp[A257804(n)]`
-/

namespace A257803.P6309237175154435252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257803.P6309237175154435252

namespace A257803

/-- `comp[A257804(n)]` -/
def P6309237175154435252.Spec : Prop :=
  ∀ n, (P6309237175154435252.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P5745170931242880120

`record[gcd(n+1, A257808(n+1)-A257808(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257803

/-- `record[gcd(n+1, A257808(n+1)-A257808(n))]` -/
def P5745170931242880120.Spec : Prop :=
  ∀ n, (P5745170931242880120.a n : ℤ) = A257803 (n + 1)

theorem P5745170931242880120.correct : P5745170931242880120.Spec := by
  intro n
  simp only [A257803, Nat.add_sub_cancel]

end A257803

/-! ## A257803.P1649502342079603718

`eq[1, A257800(n)]`
-/

namespace A257803.P1649502342079603718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257803.P1649502342079603718

namespace A257803

/-- `eq[1, A257800(n)]` -/
def P1649502342079603718.Spec : Prop :=
  ∀ n, (P1649502342079603718.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P9350116140713246915

`eq[1, A233271(n)%2]`
-/

namespace A257803.P9350116140713246915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233271 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257803.P9350116140713246915

namespace A257803

/-- `eq[1, A233271(n)%2]` -/
def P9350116140713246915.Spec : Prop :=
  ∀ n, (P9350116140713246915.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P12655426401277583683

`filter[n+1, A257800(#)]`
-/

namespace A257803.P12655426401277583683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257800 (f1 j) = 1) n)

end

end A257803.P12655426401277583683

namespace A257803

/-- `filter[n+1, A257800(#)]` -/
def P12655426401277583683.Spec : Prop :=
  ∀ n, (P12655426401277583683.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P9409550562058371954

`record[(n+1)*A257800(n+1)]`
-/

namespace A257803.P9409550562058371954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A257800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257803.P9409550562058371954

namespace A257803

/-- `record[(n+1)*A257800(n+1)]` -/
def P9409550562058371954.Spec : Prop :=
  ∀ n, P9409550562058371954.a n = A257803 (n + 1)

end A257803

/-! ## A257803.P9393661923699003318

`lt[val(A233271(n+1)+2, 2), 1]+1`
-/

namespace A257803.P9393661923699003318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233271 (n + 1) + 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A257803.P9393661923699003318

namespace A257803

/-- `lt[val(A233271(n+1)+2, 2), 1]+1` -/
def P9393661923699003318.Spec : Prop :=
  ∀ n, (P9393661923699003318.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P16052575162918962200

`lt[1, A266258(n*A257800(n))]`
-/

namespace A257803.P16052575162918962200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 ((n : ℤ) * A257800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257803.P16052575162918962200

namespace A257803

/-- `lt[1, A266258(n*A257800(n))]` -/
def P16052575162918962200.Spec : Prop :=
  ∀ n, (P16052575162918962200.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P4876470403857027676

`lt[A000041(n)-A257800(n), A000041(n)]`
-/

namespace A257803.P4876470403857027676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A257800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257803.P4876470403857027676

namespace A257803

/-- `lt[A000041(n)-A257800(n), A000041(n)]` -/
def P4876470403857027676.Spec : Prop :=
  ∀ n, (P4876470403857027676.a n : ℤ) = A257803 (n + 1)

end A257803

/-! ## A257803.P1807351220847350508

`lt[0, A000035(A233271(n))]`
-/

namespace A257803.P1807351220847350508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257803.P1807351220847350508

namespace A257803

/-- `lt[0, A000035(A233271(n))]` -/
def P1807351220847350508.Spec : Prop :=
  ∀ n, (P1807351220847350508.a n : ℤ) = A257803 (n + 1)

end A257803

/-!
# A257804: Positions of even numbers in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A257804, the canonical program `A257804.P12788468420975431066` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257804 has offset 0).

The definition of A257804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257804.P12788468420975431066

`comp[A257803(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257804

/-- `comp[A257803(n+1)]` -/
def P12788468420975431066.Spec : Prop :=
  ∀ n, (P12788468420975431066.a n : ℤ) = A257804 n

theorem P12788468420975431066.correct : P12788468420975431066.Spec := by
  intro n
  simp only [A257804]

end A257804

/-! ## A257804.P3357940055643215454

`lt[char[A257803(n+1)]*A003961(n+1), 1]`
-/

namespace A257804.P3357940055643215454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003961 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A257804.P3357940055643215454

namespace A257804

/-- `lt[char[A257803(n+1)]*A003961(n+1), 1]` -/
def P3357940055643215454.Spec : Prop :=
  ∀ n, (P3357940055643215454.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P3863577451006030051

`lt[char[A257803(n+1)]*A146328(n+4), 1]`
-/

namespace A257804.P3863577451006030051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A146328 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A257804.P3863577451006030051

namespace A257804

/-- `lt[char[A257803(n+1)]*A146328(n+4), 1]` -/
def P3863577451006030051.Spec : Prop :=
  ∀ n, (P3863577451006030051.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P5605581906538210341

`eq[0, A257800(n)]`
-/

namespace A257804.P5605581906538210341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257804.P5605581906538210341

namespace A257804

/-- `eq[0, A257800(n)]` -/
def P5605581906538210341.Spec : Prop :=
  ∀ n, (P5605581906538210341.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P12137581621401934091

`eq[0, A233271(n)%2]`
-/

namespace A257804.P12137581621401934091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233271 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257804.P12137581621401934091

namespace A257804

/-- `eq[0, A233271(n)%2]` -/
def P12137581621401934091.Spec : Prop :=
  ∀ n, (P12137581621401934091.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P15298559464395828860

`lt[A257800(n*A257800(n)), 1]`
-/

namespace A257804.P15298559464395828860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 ((n : ℤ) * A257800 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A257804.P15298559464395828860

namespace A257804

/-- `lt[A257800(n*A257800(n)), 1]` -/
def P15298559464395828860.Spec : Prop :=
  ∀ n, (P15298559464395828860.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P7765486377961157926

`record[n-A233271(n*A257800(n))]`
-/

namespace A257804.P7765486377961157926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A233271 ((n : ℤ) * A257800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257804.P7765486377961157926

namespace A257804

/-- `record[n-A233271(n*A257800(n))]` -/
def P7765486377961157926.Spec : Prop :=
  ∀ n, P7765486377961157926.a n = A257804 n

end A257804

/-! ## A257804.P7899236921190986856

`lt[A257800(n), (1/A000041(n))²]`
-/

namespace A257804.P7899236921190986856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (A000041 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A257804.P7899236921190986856

namespace A257804

/-- `lt[A257800(n), (1/A000041(n))²]` -/
def P7899236921190986856.Spec : Prop :=
  ∀ n, (P7899236921190986856.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P16123739106600267650

`eq[A000035(n), A000035(A233271(n)-n)]`
-/

namespace A257804.P16123739106600267650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257804.P16123739106600267650

namespace A257804

/-- `eq[A000035(n), A000035(A233271(n)-n)]` -/
def P16123739106600267650.Spec : Prop :=
  ∀ n, (P16123739106600267650.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P6877991516877118723

`eq[0, A000035(A233271(n))]`
-/

namespace A257804.P6877991516877118723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257804.P6877991516877118723

namespace A257804

/-- `eq[0, A000035(A233271(n))]` -/
def P6877991516877118723.Spec : Prop :=
  ∀ n, (P6877991516877118723.a n : ℤ) = A257804 n

end A257804

/-! ## A257804.P3583665379235312807

`lt[char[A257803(n+1)]*A002878(n), 1]`
-/

namespace A257804.P3583665379235312807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002878 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A257804.P3583665379235312807

namespace A257804

/-- `lt[char[A257803(n+1)]*A002878(n), 1]` -/
def P3583665379235312807.Spec : Prop :=
  ∀ n, (P3583665379235312807.a n : ℤ) = A257804 n

end A257804

/-!
# A257805: Partial sums of A257259: a(0) = 1; for n >= 1, a(n) = A257259(n) + a(n-1).

The programs for A257805, there is no canonical definition to state claims against.
-/

/-! ## A257805.P4791957213407893404

`A257259(n)+a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257805.P4791957213407893404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257259 n + a (n - 1)

end

end A257805.P4791957213407893404

/-! ## A257805.P13411871008814524688

`-A257806(A218600(n+1))`
-/

namespace A257805.P13411871008814524688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A257806 (A218600 (n + 1)).toNat

end

end A257805.P13411871008814524688

/-! ## A257805.P1566351094415149131

`∑[A257259(n)]`
-/

namespace A257805.P1566351094415149131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257805.P1566351094415149131

/-! ## A257805.P6242433844509160824

`∑[A218542(n)-A218543(n)]`
-/

namespace A257805.P6242433844509160824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218542 n - A218543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257805.P6242433844509160824

/-! ## A257805.P3579254016830397852

`∑[2*A218542(n)-A213709(n)]`
-/

namespace A257805.P3579254016830397852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218542 n - A213709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257805.P3579254016830397852

/-!
# A257806: a(n) = A257808(n) - A257807(n).

The programs for A257806, the canonical program `A257806.P8895059565627793606` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257806 has offset 0).

The definition of A257806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257806.P3683707585828375555

`a(n-1)+(-1)^A233271(n)` with `a(0)=0, a(1)=-1, a(2)=0, a(3)=1`
-/

namespace A257806.P3683707585828375555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, -1, 0, 1] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ (A233271 n : ℤ)

end

end A257806.P3683707585828375555

namespace A257806

/-- `a(n-1)+(-1)^A233271(n)` -/
def P3683707585828375555.Spec : Prop :=
  ∀ n, P3683707585828375555.a n = (A257806 n : ℚ)

end A257806

/-! ## A257806.P8895059565627793606

`A257808(n)-A257807(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257806

/-- `A257808(n)-A257807(n)` -/
def P8895059565627793606.Spec : Prop :=
  ∀ n, P8895059565627793606.a n = A257806 n

theorem P8895059565627793606.correct : P8895059565627793606.Spec := by
  intro n
  simp only [A257806]

end A257806

/-! ## A257806.P1893801669279736017

`n-∑[2*A257800(n)]`
-/

namespace A257806.P1893801669279736017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257806.P1893801669279736017

namespace A257806

/-- `n-∑[2*A257800(n)]` -/
def P1893801669279736017.Spec : Prop :=
  ∀ n, P1893801669279736017.a n = A257806 n

end A257806

/-! ## A257806.P16699519987579102621

`n-A005843(∑[A257800(n)])`
-/

namespace A257806.P16699519987579102621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257806.P16699519987579102621

namespace A257806

/-- `n-A005843(∑[A257800(n)])` -/
def P16699519987579102621.Spec : Prop :=
  ∀ n, P16699519987579102621.a n = A257806 n

end A257806

/-! ## A257806.P6953964051236457588

`A257808(n)-∑[A257800(n)]`
-/

namespace A257806.P6953964051236457588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257806.P6953964051236457588

namespace A257806

/-- `A257808(n)-∑[A257800(n)]` -/
def P6953964051236457588.Spec : Prop :=
  ∀ n, P6953964051236457588.a n = A257806 n

end A257806

/-! ## A257806.P78623954275628617

`n-(A257807(n)+∑[A257800(n)])`
-/

namespace A257806.P78623954275628617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A257807 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257806.P78623954275628617

namespace A257806

/-- `n-(A257807(n)+∑[A257800(n)])` -/
def P78623954275628617.Spec : Prop :=
  ∀ n, P78623954275628617.a n = A257806 n

end A257806

/-! ## A257806.P11870078207715033945

`A257808(n)+A257808(n)-A257808(A257804(n))`
-/

namespace A257806.P11870078207715033945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 n + (A257808 n - A257808 (A257804 n).toNat)

end

end A257806.P11870078207715033945

namespace A257806

/-- `A257808(n)+A257808(n)-A257808(A257804(n))` -/
def P11870078207715033945.Spec : Prop :=
  ∀ n, P11870078207715033945.a n = A257806 n

end A257806

/-!
# A257807: a(n) = number of odd numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

The programs for A257807, the canonical program `A257807.P15241754971067141480` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257807 has offset 0).

The definition of A257807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257807.P15241754971067141480

`A257800(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257807

/-- `A257800(n)+a(n-1)` -/
def P15241754971067141480.Spec : Prop :=
  ∀ n, P15241754971067141480.a n = A257807 n

theorem P15241754971067141480.correct : P15241754971067141480.Spec := by
  intro n
  simp only [A257807]

end A257807

/-! ## A257807.P5026174369545745877

`A257808(n)-A257806(n)`
-/

namespace A257807.P5026174369545745877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 n - A257806 n

end

end A257807.P5026174369545745877

namespace A257807

/-- `A257808(n)-A257806(n)` -/
def P5026174369545745877.Spec : Prop :=
  ∀ n, P5026174369545745877.a n = A257807 n

end A257807

/-! ## A257807.P4654821473507072911

`n-A257808(n)`
-/

namespace A257807.P4654821473507072911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257808 n

end

end A257807.P4654821473507072911

namespace A257807

/-- `n-A257808(n)` -/
def P4654821473507072911.Spec : Prop :=
  ∀ n, P4654821473507072911.a n = A257807 n

end A257807

/-! ## A257807.P6363020777055221131

`∑[char[comp[A257804(n)]]]`
-/

namespace A257807.P6363020777055221131
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257807.P6363020777055221131

namespace A257807

/-- `∑[char[comp[A257804(n)]]]` -/
def P6363020777055221131.Spec : Prop :=
  ∀ n, (P6363020777055221131.a n : ℤ) = A257807 n

end A257807

/-! ## A257807.P8843937185063016363

`∑[char[A257803(n+1)]]`
-/

namespace A257807.P8843937185063016363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257807.P8843937185063016363

namespace A257807

/-- `∑[char[A257803(n+1)]]` -/
def P8843937185063016363.Spec : Prop :=
  ∀ n, (P8843937185063016363.a n : ℤ) = A257807 n

end A257807

/-! ## A257807.P10880093547333775302

`∑[A257800(n)]`
-/

namespace A257807.P10880093547333775302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257807.P10880093547333775302

namespace A257807

/-- `∑[A257800(n)]` -/
def P10880093547333775302.Spec : Prop :=
  ∀ n, P10880093547333775302.a n = A257807 n

end A257807

/-! ## A257807.P6359807090576158996

`∑[A233271(n)%2]`
-/

namespace A257807.P6359807090576158996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233271 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257807.P6359807090576158996

namespace A257807

/-- `∑[A233271(n)%2]` -/
def P6359807090576158996.Spec : Prop :=
  ∀ n, P6359807090576158996.a n = A257807 n

end A257807

/-! ## A257807.P11203352682153536878

`∑[A000035(A233271(n))]`
-/

namespace A257807.P11203352682153536878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257807.P11203352682153536878

namespace A257807

/-- `∑[A000035(A233271(n))]` -/
def P11203352682153536878.Spec : Prop :=
  ∀ n, P11203352682153536878.a n = A257807 n

end A257807

/-!
# A257808: a(n) = number of nonzero even numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

The programs for A257808, the canonical program `A257808.P5584975749564527316` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257808 has offset 0).

The definition of A257808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257808.P5584975749564527316

`1-A257800(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257808

/-- `1-A257800(n)+a(n-1)` -/
def P5584975749564527316.Spec : Prop :=
  ∀ n, P5584975749564527316.a n = A257808 n

theorem P5584975749564527316.correct : P5584975749564527316.Spec := by
  intro n
  simp only [A257808]

end A257808

/-! ## A257808.P8119430108614847208

`A257806(n)+A257807(n)`
-/

namespace A257808.P8119430108614847208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257806 n + A257807 n

end

end A257808.P8119430108614847208

namespace A257808

/-- `A257806(n)+A257807(n)` -/
def P8119430108614847208.Spec : Prop :=
  ∀ n, P8119430108614847208.a n = A257808 n

end A257808

/-! ## A257808.P14770852111178463461

`n-A257807(n)`
-/

namespace A257808.P14770852111178463461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257807 n

end

end A257808.P14770852111178463461

namespace A257808

/-- `n-A257807(n)` -/
def P14770852111178463461.Spec : Prop :=
  ∀ n, P14770852111178463461.a n = A257808 n

end A257808

/-! ## A257808.P11174539169193146929

`∑[char[A257804(n+1)]]`
-/

namespace A257808.P11174539169193146929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257808.P11174539169193146929

namespace A257808

/-- `∑[char[A257804(n+1)]]` -/
def P11174539169193146929.Spec : Prop :=
  ∀ n, (P11174539169193146929.a n : ℤ) = A257808 n

end A257808

/-! ## A257808.P2750168966515620232

`∑[char[A257804(n)]]-1`
-/

namespace A257808.P2750168966515620232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A257808.P2750168966515620232

namespace A257808

/-- `∑[char[A257804(n)]]-1` -/
def P2750168966515620232.Spec : Prop :=
  ∀ n, P2750168966515620232.a n = A257808 n

end A257808

/-! ## A257808.P16318169786329415150

`n-∑[char[A257803(n+1)]]`
-/

namespace A257808.P16318169786329415150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257808.P16318169786329415150

namespace A257808

/-- `n-∑[char[A257803(n+1)]]` -/
def P16318169786329415150.Spec : Prop :=
  ∀ n, P16318169786329415150.a n = A257808 n

end A257808

/-! ## A257808.P7276688215292302975

`abs(A257807(n)+A001489(n))`
-/

namespace A257808.P7276688215292302975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257807 n + A001489 n|

end

end A257808.P7276688215292302975

namespace A257808

/-- `abs(A257807(n)+A001489(n))` -/
def P7276688215292302975.Spec : Prop :=
  ∀ n, P7276688215292302975.a n = A257808 n

end A257808

/-! ## A257808.P1087746759208559529

`n-∑[A257800(n)]`
-/

namespace A257808.P1087746759208559529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257808.P1087746759208559529

namespace A257808

/-- `n-∑[A257800(n)]` -/
def P1087746759208559529.Spec : Prop :=
  ∀ n, P1087746759208559529.a n = A257808 n

end A257808

/-! ## A257808.P1922004471217357809

`n-∑[A233271(n)%2]`
-/

namespace A257808.P1922004471217357809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233271 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257808.P1922004471217357809

namespace A257808

/-- `n-∑[A233271(n)%2]` -/
def P1922004471217357809.Spec : Prop :=
  ∀ n, P1922004471217357809.a n = A257808 n

end A257808

/-! ## A257808.P11192532630504565090

`n-∑[A000035(A233271(n))]`
-/

namespace A257808.P11192532630504565090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257808.P11192532630504565090

namespace A257808

/-- `n-∑[A000035(A233271(n))]` -/
def P11192532630504565090.Spec : Prop :=
  ∀ n, P11192532630504565090.a n = A257808 n

end A257808

/-!
# A257811: Circle of fifths cycle (clockwise).

The programs for A257811, the canonical program `A257811.P17212748745103728157` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257811 has offset 1).

The definition of A257811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257811.P17212748745103728157

`(7*n)%12+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257811

/-- `(7*n)%12+1` -/
def P17212748745103728157.Spec : Prop :=
  ∀ n, (P17212748745103728157.a n : ℤ) = A257811 (n + 1)

theorem P17212748745103728157.correct : P17212748745103728157.Spec := by
  intro n
  simp only [A257811, Nat.add_sub_cancel]

end A257811

/-!
# A257813: G.f. satisfies: A(x,y) = 1-x + y*x + Series_Reversion( x/A(x,y)^2 ).

The programs for A257813, there is no canonical definition to state claims against.
-/

/-! ## A257813.P11305810181865636943

`A055401(A244120(n)^4)`
-/

namespace A257813.P11305810181865636943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A244120 n ^ 4).toNat

end

end A257813.P11305810181865636943

/-! ## A257813.P11574912506103401649

`A055401(A244120(n)²²)`
-/

namespace A257813.P11574912506103401649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 ((A244120 n ^ 2) ^ 2).toNat

end

end A257813.P11574912506103401649

/-! ## A257813.P17611138969431578054

`and(n-1, A373948(record[A344869(n)]))`
-/

namespace A257813.P17611138969431578054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A373948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A257813.P17611138969431578054

/-! ## A257813.P977906311172767457

`A106244(n)*A357180(A244121(n))`
-/

namespace A257813.P977906311172767457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 n * A357180 (A244121 n).toNat

end

end A257813.P977906311172767457

/-! ## A257813.P8351179942818794509

`A325188(n)*A333766(A245667(n))`
-/

namespace A257813.P8351179942818794509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325188 n * A333766 (A245667 n).toNat

end

end A257813.P8351179942818794509

/-!
# A257814: Numbers n such that k times the sum of the digits (d) to the power k equal n, so n=k*sum(d^k), for some positive integer k, where k is smaller than sum(d^k).

The programs for A257814, there is no canonical definition to state claims against.
-/

/-! ## A257814.P7620280820221906003

`A249517(n+3)%57`
-/

namespace A257814.P7620280820221906003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 3)) 57

end

end A257814.P7620280820221906003

/-! ## A257814.P13196928449462266757

`(n+2)*gcd(5, A114467(n))`
-/

namespace A257814.P13196928449462266757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Int.gcd 5 (A114467 n)

end

end A257814.P13196928449462266757

/-! ## A257814.P4392362296986871750

`n*A315183(C(n², 64))+2`
-/

namespace A257814.P4392362296986871750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A315183 (Nat.choose (n ^ 2) 64) + 2

end

end A257814.P4392362296986871750

/-! ## A257814.P5765472081112936857

`(n+2)*A316978(10*n+1)`
-/

namespace A257814.P5765472081112936857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A316978 (10 * n + 1)

end

end A257814.P5765472081112936857

/-! ## A257814.P2697725489344007966

`A113218(A083477(n+1))`
-/

namespace A257814.P2697725489344007966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A083477 (n + 1)).toNat

end

end A257814.P2697725489344007966

/-!
# A257815: Inverse permutation of A064364, when seen as flattened list.

The programs for A257815, there is no canonical definition to state claims against.
-/

/-! ## A257815.P13255966162560638185

`A366798(2^n+1)`
-/

namespace A257815.P13255966162560638185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366798 (2 ^ n + 1)

end

end A257815.P13255966162560638185

/-! ## A257815.P10929843509405836809

`A366798(A000051(n))%A000051(n)`
-/

namespace A257815.P10929843509405836809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366798 (A000051 n).toNat) (A000051 n)

end

end A257815.P10929843509405836809

/-! ## A257815.P16363926075467508110

`or(A107846(n), A366798(A000051(n)))`
-/

namespace A257815.P16363926075467508110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A366798 (A000051 n).toNat)

end

end A257815.P16363926075467508110

/-!
# A257816: Suppose A103739(n) = x^2 + y^2 with x < y. The sequence gives values of y.

The programs for A257816, there is no canonical definition to state claims against.
-/

/-! ## A257816.P13303170278735716564

`(A258653(n+1)+A258642(n+1))/2`
-/

namespace A257816.P13303170278735716564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258653 (n + 1) + A258642 (n + 1) : ℚ) / 2

end

end A257816.P13303170278735716564

/-! ## A257816.P12710523743714667361

`A064876(A103739(n+1))`
-/

namespace A257816.P12710523743714667361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A103739 (n + 1)).toNat

end

end A257816.P12710523743714667361

/-! ## A257816.P15839285311516632547

`A133388(p?[A143850(n+1)])`
-/

namespace A257816.P15839285311516632547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257816.P15839285311516632547

/-! ## A257816.P6060271238680228234

`A262689(p?[A103739(n+1)])`
-/

namespace A257816.P6060271238680228234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257816.P6060271238680228234

/-! ## A257816.P317806890348548537

`A262689(p?[A143850(n+1)])`
-/

namespace A257816.P317806890348548537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257816.P317806890348548537

/-! ## A257816.P4232108154929018865

`A262689(or(1, A103739(n+1)))`
-/

namespace A257816.P4232108154929018865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor 1 (A103739 (n + 1))).toNat

end

end A257816.P4232108154929018865

/-! ## A257816.P16790989898005327452

`A262689(∑{p}[A103739(n+1), #])`
-/

namespace A257816.P16790989898005327452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A257816.P16790989898005327452

/-! ## A257816.P16302969104660799814

`A258654(n+1)+A258642(n+1)`
-/

namespace A257816.P16302969104660799814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258654 (n + 1) + A258642 (n + 1)

end

end A257816.P16302969104660799814

/-! ## A257816.P2020842920124230533

`sqrt(A103739(n+1)-A258654(n+1)²)`
-/

namespace A257816.P2020842920124230533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103739 (n + 1) - A258654 (n + 1) ^ 2 : ℝ)

end

end A257816.P2020842920124230533

/-! ## A257816.P1579784486013390197

`A133388(A103739(n+1)-A258654(n+1)²)`
-/

namespace A257816.P1579784486013390197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A103739 (n + 1) - A258654 (n + 1) ^ 2).toNat

end

end A257816.P1579784486013390197

/-!
# A257829: The decimal representation of the average of the digits of n starts with the digits of n.

The programs for A257829, there is no canonical definition to state claims against.
-/

/-! ## A257829.P17308141617695558587

`eq[n, A257296(A028310(n))]`
-/

namespace A257829.P17308141617695558587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257296 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257829.P17308141617695558587

/-! ## A257829.P15480338450630495712

`eq[A112689(A008458(n)), A257296(n)]`
-/

namespace A257829.P15480338450630495712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257829.P15480338450630495712

/-! ## A257829.P14897706887974831136

`A257296((A087019(n)+1)*A154754(n²+1)²-A064834(n))`
-/

namespace A257829.P14897706887974831136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257296 ((A087019 n + 1) * A154754 (n ^ 2 + 1) ^ 2 - A064834 n).toNat

end

end A257829.P14897706887974831136

/-! ## A257829.P8695124057974128039

`A257296((A087019(n)+1)*A154754(n²+1)²-A151950(n))`
-/

namespace A257829.P8695124057974128039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257296 ((A087019 n + 1) * A154754 (n ^ 2 + 1) ^ 2 - A151950 n).toNat

end

end A257829.P8695124057974128039

/-! ## A257829.P13579368881292975902

`A257296((A087019(n)+1)*A154754(n²+1)²-A347689(n))`
-/

namespace A257829.P13579368881292975902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257296 ((A087019 n + 1) * A154754 (n ^ 2 + 1) ^ 2 - A347689 n).toNat

end

end A257829.P13579368881292975902

/-!
# A257830: The decimal representation of the geometric mean of the digits of n starts with the digits of n.

The programs for A257830, there is no canonical definition to state claims against.
-/

/-! ## A257830.P11076197203592984861

`A373722(A048334(n)+1)`
-/

namespace A257830.P11076197203592984861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373722 (A048334 n + 1).toNat

end

end A257830.P11076197203592984861

/-! ## A257830.P1094961767477889655

`A373722(A076641(n+1))`
-/

namespace A257830.P1094961767477889655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373722 (A076641 (n + 1)).toNat

end

end A257830.P1094961767477889655

/-! ## A257830.P7583109105973484983

`A373722(A076643(n+1))`
-/

namespace A257830.P7583109105973484983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373722 (A076643 (n + 1)).toNat

end

end A257830.P7583109105973484983

/-! ## A257830.P6552110141619749280

`A373722(A127204(n+1))`
-/

namespace A257830.P6552110141619749280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373722 (A127204 (n + 1)).toNat

end

end A257830.P6552110141619749280

/-! ## A257830.P6040394692090426881

`A373722(A326402(n+1))`
-/

namespace A257830.P6040394692090426881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373722 (A326402 (n + 1)).toNat

end

end A257830.P6040394692090426881

/-!
# A257831: In decimal representation of n: replace each digit with its binary representation.

The programs for A257831, there is no canonical definition to state claims against.
-/

/-! ## A257831.P1223565903377499195

`A007088(A080719(n))`
-/

namespace A257831.P1223565903377499195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A080719 n).toNat

end

end A257831.P1223565903377499195

/-! ## A257831.P7873559509368673591

`A169965(A080719(n)+1)/2`
-/

namespace A257831.P7873559509368673591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A080719 n + 1).toNat : ℚ) / 2

end

end A257831.P7873559509368673591

/-! ## A257831.P1341347428219183756

`2^A316441(A020639(n+1))*A169965(A080719(n)+1)`
-/

namespace A257831.P1341347428219183756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A316441 (A020639 (n + 1)).toNat : ℤ) * (A169965 (A080719 n + 1).toNat : ℚ)

end

end A257831.P1341347428219183756

/-! ## A257831.P12878910203206799032

`A185544(2*A080719(n))`
-/

namespace A257831.P12878910203206799032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A080719 n).toNat

end

end A257831.P12878910203206799032

/-! ## A257831.P10033647652100628447

`A185544(A080719(A008592(n)))`
-/

namespace A257831.P10033647652100628447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A080719 (A008592 n).toNat).toNat

end

end A257831.P10033647652100628447

/-!
# A257832: Squarefree numbers that are k*A005117(k) for some k.

The programs for A257832, the canonical program `A257832.P15250859016171194730` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257832 has offset 1).

The definition of A257832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257832.P15250859016171194730

`∩[(n+1)*A005117(n+1), A005117(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A257832

/-- `∩[(n+1)*A005117(n+1), A005117(n+1)]` -/
def P15250859016171194730.Spec : Prop :=
  ∀ n, (P15250859016171194730.a n : ℤ) = A257832 (n + 1)

theorem P15250859016171194730.correct : P15250859016171194730.Spec := by
  intro n
  simp only [A257832, Nat.add_sub_cancel]

end A257832

/-! ## A257832.P7250380678797398888

`record[abs(A055615((n+1)*A005117(n+1)))]`
-/

namespace A257832.P7250380678797398888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 ((n + 1 : ℤ) * A005117 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257832.P7250380678797398888

namespace A257832

/-- `record[abs(A055615((n+1)*A005117(n+1)))]` -/
def P7250380678797398888.Spec : Prop :=
  ∀ n, P7250380678797398888.a n = A257832 (n + 1)

end A257832

/-! ## A257832.P2039227854938297775

`∩[(A243348(n+1)+n+1)*(n+1), A243348(n+1)+n+1]`
-/

namespace A257832.P2039227854938297775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243348 (n + 1) + (n + 1 : ℤ)) * (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257832.P2039227854938297775

namespace A257832

/-- `∩[(A243348(n+1)+n+1)*(n+1), A243348(n+1)+n+1]` -/
def P2039227854938297775.Spec : Prop :=
  ∀ n, (P2039227854938297775.a n : ℤ) = A257832 (n + 1)

end A257832

/-! ## A257832.P6625873767022101385

`∩[(A161203(n+1)-(n+1)²)*(n+1), A161203(n+1)-(n+1)²]`
-/

namespace A257832.P6625873767022101385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161203 (n + 1) - ((n + 1) ^ 2 : ℤ)) * (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161203 (n + 1) - ((n + 1) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257832.P6625873767022101385

namespace A257832

/-- `∩[(A161203(n+1)-(n+1)²)*(n+1), A161203(n+1)-(n+1)²]` -/
def P6625873767022101385.Spec : Prop :=
  ∀ n, (P6625873767022101385.a n : ℤ) = A257832 (n + 1)

end A257832

/-!
# A257834: a(n) = 1 if n-th prime is == +1 or -1 mod 12; -1 if n-th prime is == 5 or 7 mod 12; and 0 if n-th prime is 2 or 3.

The programs for A257834, there is no canonical definition to state claims against.
-/

/-! ## A257834.P332849186736724451

`A110161(p?[xor(1, n)])`
-/

namespace A257834.P332849186736724451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A257834.P332849186736724451

/-! ## A257834.P1246758763067128511

`A110161(p?[comp[n²]])`
-/

namespace A257834.P1246758763067128511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A257834.P1246758763067128511

/-! ## A257834.P1593214530790251273

`A035194(p?[xor(1, n)+1])-1`
-/

namespace A257834.P1593214530790251273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035194 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A257834.P1593214530790251273

/-! ## A257834.P10717656846466699428

`A166446(p?[xor(1, n)+1]+2)`
-/

namespace A257834.P10717656846466699428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2)

end

end A257834.P10717656846466699428

/-! ## A257834.P11078284704985801035

`A014021(p?[abs(2*n-3)]+1)`
-/

namespace A257834.P11078284704985801035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A257834.P11078284704985801035

/-! ## A257834.P1529958926830348234

`1-round(A000040(n+1)/3)%4`
-/

namespace A257834.P1529958926830348234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 3)) 4

end

end A257834.P1529958926830348234

/-! ## A257834.P16905920774714880900

`A110161(Δ[A007504(n)])`
-/

namespace A257834.P16905920774714880900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (f1 (n + 1) - f1 n).toNat

end

end A257834.P16905920774714880900

/-! ## A257834.P12097574400433010643

`A014021(A008864(n+1))`
-/

namespace A257834.P12097574400433010643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (A008864 (n + 1)).toNat

end

end A257834.P12097574400433010643

/-! ## A257834.P8033162317321930048

`A014021(A028815(n+1))`
-/

namespace A257834.P8033162317321930048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (A028815 (n + 1)).toNat

end

end A257834.P8033162317321930048

/-! ## A257834.P11085801391484889942

`A014919(A039710(n+1))`
-/

namespace A257834.P11085801391484889942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014919 (A039710 (n + 1)).toNat

end

end A257834.P11085801391484889942

/-!
# A257836: Numbers which are the product of at least two consecutive odd numbers > 1.

The programs for A257836, there is no canonical definition to state claims against.
-/

/-! ## A257836.P10169334282215478747

`A264798(A126589(n+1))`
-/

namespace A257836.P10169334282215478747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264798 (A126589 (n + 1)).toNat

end

end A257836.P10169334282215478747

/-! ## A257836.P15101174225691381056

`A264798(A340585(n+1))`
-/

namespace A257836.P15101174225691381056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264798 (A340585 (n + 1)).toNat

end

end A257836.P15101174225691381056

/-! ## A257836.P11527321011983400862

`∩[A090196(n+1), A320773(n+1)]`
-/

namespace A257836.P11527321011983400862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257836.P11527321011983400862

/-!
# A257838: Main diagonal of iterated partial sums array of Fibonacci numbers (starting with the first partial sums).

The programs for A257838, there is no canonical definition to state claims against.
-/

/-! ## A257838.P12869915741381906356

`A010756(3*n+1)`
-/

namespace A257838.P12869915741381906356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (3 * n + 1)

end

end A257838.P12869915741381906356

/-! ## A257838.P7508631589231806805

`A010757(3*n+1)`
-/

namespace A257838.P7508631589231806805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010757 (3 * n + 1)

end

end A257838.P7508631589231806805

/-! ## A257838.P9432177341719237820

`A108081(n)-A081696(n)`
-/

namespace A257838.P9432177341719237820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 n - A081696 n

end

end A257838.P9432177341719237820

/-! ## A257838.P17513304015051270382

`A277287(n)-A000984(n)`
-/

namespace A257838.P17513304015051270382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A000984 n

end

end A257838.P17513304015051270382

/-! ## A257838.P675653209696293333

`A001700(n)-A109262(n+1)`
-/

namespace A257838.P675653209696293333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A109262 (n + 1)

end

end A257838.P675653209696293333

/-! ## A257838.P3222557609078401032

`A176085(n+1)-A108081(n)`
-/

namespace A257838.P3222557609078401032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) - A108081 n

end

end A257838.P3222557609078401032

/-! ## A257838.P17193144239638666609

`A382432(n+1)-A371870(n)`
-/

namespace A257838.P17193144239638666609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382432 (n + 1) - A371870 n

end

end A257838.P17193144239638666609

/-! ## A257838.P13684538110134941814

`2*A176085(n)-A109262(n)`
-/

namespace A257838.P13684538110134941814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176085 n - A109262 n

end

end A257838.P13684538110134941814

/-! ## A257838.P14239181343801698835

`A277287(n)-A081668(2*n)`
-/

namespace A257838.P14239181343801698835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A081668 (2 * n)

end

end A257838.P14239181343801698835

/-! ## A257838.P1557312558023269343

`A088218(n+1)-A109262(n+1)`
-/

namespace A257838.P1557312558023269343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - A109262 (n + 1)

end

end A257838.P1557312558023269343

/-! ## A257838.P13205213276755929477

`A000984(n+1)/2-A109262(n+1)`
-/

namespace A257838.P13205213276755929477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / 2 - (A109262 (n + 1) : ℚ)

end

end A257838.P13205213276755929477

/-! ## A257838.P17371975719039920023

`A000984(n)+A176085(n)-A268407(n)`
-/

namespace A257838.P17371975719039920023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A176085 n - A268407 n)

end

end A257838.P17371975719039920023

/-! ## A257838.P2085056904556972134

`A015448(n+1)-A026678(2*n)`
-/

namespace A257838.P2085056904556972134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) - A026678 (2 * n)

end

end A257838.P2085056904556972134

/-!
# A257839: Smallest possible x such that 4/n = 1/x + 1/y + 1/z with 0 < x < y < z all integers, or 0 if there is no such solution. Corresponding y and z values are in A257840 and A257841.

The programs for A257839, there is no canonical definition to state claims against.
-/

/-! ## A257839.P10741230487708305067

`A000523(∑[round(2^(floor(n/4)-1))])%(2*n²-1)`
-/

namespace A257839.P10741230487708305067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ((2 * n ^ 2 : ℤ) - 1)

end

end A257839.P10741230487708305067

/-! ## A257839.P10569132871240007182

`∑[A021913(∑[A298031(n)])]`
-/

namespace A257839.P10569132871240007182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257839.P10569132871240007182

/-! ## A257839.P6251557395283692122

`∑[A292077(∑[A298031(n)])]`
-/

namespace A257839.P6251557395283692122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257839.P6251557395283692122

/-! ## A257839.P9175161805416573602

`∑[A338824(∑[A298031(n)])]`
-/

namespace A257839.P9175161805416573602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257839.P9175161805416573602

/-! ## A257839.P15757502289818525665

`Δ[A001972(n)]%A019511(n)`
-/

namespace A257839.P15757502289818525665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019511 n)

end

end A257839.P15757502289818525665

/-!
# A257842: Semiprimes p*q such that R(p*q) = R(p)*R(q), where R = A004086 = reverse digits.

The programs for A257842, there is no canonical definition to state claims against.
-/

/-! ## A257842.P4259199841625813589

`filter[A072227(n+1), A064911(#)]`
-/

namespace A257842.P4259199841625813589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A257842.P4259199841625813589

/-! ## A257842.P9242805347137651422

`filter[A161597(n+1), A064911(#)]`
-/

namespace A257842.P9242805347137651422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A257842.P9242805347137651422

/-! ## A257842.P12969188430945864485

`filter[A161600(n+1), A064911(#)]`
-/

namespace A257842.P12969188430945864485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A257842.P12969188430945864485

/-! ## A257842.P18751468196246708

`filter[A161600(n+1), A101040(#)]`
-/

namespace A257842.P18751468196246708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A257842.P18751468196246708

/-! ## A257842.P12170537823795955533

`∩[A001358(n+1), A072227(n+1)]`
-/

namespace A257842.P12170537823795955533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257842.P12170537823795955533

/-! ## A257842.P712181309685589099

`∩[A001358(n+1), A161597(n+1)]`
-/

namespace A257842.P712181309685589099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257842.P712181309685589099

/-! ## A257842.P12655096902998100744

`∩[A001358(n+1), A161600(n+1)]`
-/

namespace A257842.P12655096902998100744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257842.P12655096902998100744

/-! ## A257842.P15155536350435408783

`∩[A072227(n+1), A339424(n+1)]`
-/

namespace A257842.P15155536350435408783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257842.P15155536350435408783

/-! ## A257842.P5450132549460749227

`∩[A161597(n+1), A339424(n+1)]`
-/

namespace A257842.P5450132549460749227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257842.P5450132549460749227

/-! ## A257842.P9138264696267614312

`∩[A161600(n+1), A339424(n+1)]`
-/

namespace A257842.P9138264696267614312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257842.P9138264696267614312

/-!
# A257843: Numbers k for which the lexicographically first integer solution (x,y,z) of 4/k = 1/x + 1/y + 1/z with 0 < x < y < z, is different from the solution having the largest z-value.

The programs for A257843, there is no canonical definition to state claims against.
-/

/-! ## A257843.P8332934391430261617

`∩[A353046(n+1), A211432(n)]`
-/

namespace A257843.P8332934391430261617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211432 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257843.P8332934391430261617

/-! ## A257843.P1806606880992549835

`∩[A263012(n+2), A002266(A263012(n+2))]`
-/

namespace A257843.P1806606880992549835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A263012 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257843.P1806606880992549835

/-!
# A257844: a(n) = floor(n/4) * (n mod 4).

The programs for A257844, the canonical program `A257844.P3403679388701863698` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257844 has offset 0).

The definition of A257844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257844.P3403679388701863698

`floor(n/4)*n%4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257844

/-- `floor(n/4)*n%4` -/
def P3403679388701863698.Spec : Prop :=
  ∀ n, P3403679388701863698.a n = A257844 n

theorem P3403679388701863698.correct : P3403679388701863698.Spec := by
  intro n
  simp only [A257844]

end A257844

/-! ## A257844.P13139920825107616926

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=2, a(7)=3`
-/

namespace A257844.P13139920825107616926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1, 2, 3] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A257844.P13139920825107616926

namespace A257844

/-- `2*a(n-4)-a(n-8)` -/
def P13139920825107616926.Spec : Prop :=
  ∀ n, P13139920825107616926.a n = A257844 n

end A257844

/-! ## A257844.P8893583537264033674

`and(3, n)*floor(n/4)`
-/

namespace A257844.P8893583537264033674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n : ℤ) * ⌊(n : ℚ) / 4⌋

end

end A257844.P8893583537264033674

namespace A257844

/-- `and(3, n)*floor(n/4)` -/
def P8893583537264033674.Spec : Prop :=
  ∀ n, P8893583537264033674.a n = A257844 n

end A257844

/-! ## A257844.P11773502448382795782

`floor(n/4)*A010873(n)`
-/

namespace A257844.P11773502448382795782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * A010873 n

end

end A257844.P11773502448382795782

namespace A257844

/-- `floor(n/4)*A010873(n)` -/
def P11773502448382795782.Spec : Prop :=
  ∀ n, P11773502448382795782.a n = A257844 n

end A257844

/-! ## A257844.P11510457557382693381

`(A010883(n)-1)*A002265(n)`
-/

namespace A257844.P11510457557382693381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010883 n - 1) * A002265 n

end

end A257844.P11510457557382693381

namespace A257844

/-- `(A010883(n)-1)*A002265(n)` -/
def P11510457557382693381.Spec : Prop :=
  ∀ n, P11510457557382693381.a n = A257844 n

end A257844

/-! ## A257844.P5098795112265349770

`(A083220(n)-n)*A002265(n)`
-/

namespace A257844.P5098795112265349770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083220 n - (n : ℤ)) * A002265 n

end

end A257844.P5098795112265349770

namespace A257844

/-- `(A083220(n)-n)*A002265(n)` -/
def P5098795112265349770.Spec : Prop :=
  ∀ n, P5098795112265349770.a n = A257844 n

end A257844

/-! ## A257844.P15568613708394016849

`A131806(n+1)/2*A002265(n)`
-/

namespace A257844.P15568613708394016849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131806 (n + 1) : ℚ) / 2 * (A002265 n : ℚ)

end

end A257844.P15568613708394016849

namespace A257844

/-- `A131806(n+1)/2*A002265(n)` -/
def P15568613708394016849.Spec : Prop :=
  ∀ n, P15568613708394016849.a n = (A257844 n : ℚ)

end A257844

/-! ## A257844.P17186915659971768317

`C(and(3, n), A177704(n))*A002265(n)`
-/

namespace A257844.P17186915659971768317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.land 3 n) (A177704 n).toNat : ℤ) * A002265 n

end

end A257844.P17186915659971768317

namespace A257844

/-- `C(and(3, n), A177704(n))*A002265(n)` -/
def P17186915659971768317.Spec : Prop :=
  ∀ n, P17186915659971768317.a n = A257844 n

end A257844

/-! ## A257844.P9443847221378251403

`A130519(n)-A000384(A002265(n))`
-/

namespace A257844.P9443847221378251403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n - A000384 (A002265 n).toNat

end

end A257844.P9443847221378251403

namespace A257844

/-- `A130519(n)-A000384(A002265(n))` -/
def P9443847221378251403.Spec : Prop :=
  ∀ n, P9443847221378251403.a n = A257844 n

end A257844

/-! ## A257844.P18024800463061210367

`(A083220(n)-n)*A004526(A004526(n))`
-/

namespace A257844.P18024800463061210367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083220 n - (n : ℤ)) * A004526 (A004526 n).toNat

end

end A257844.P18024800463061210367

namespace A257844

/-- `(A083220(n)-n)*A004526(A004526(n))` -/
def P18024800463061210367.Spec : Prop :=
  ∀ n, P18024800463061210367.a n = A257844 n

end A257844

/-! ## A257844.P15853644949130552495

`A131806(n+1)/2*A004526(A004526(n))`
-/

namespace A257844.P15853644949130552495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131806 (n + 1) : ℚ) / 2 * (A004526 (A004526 n).toNat : ℚ)

end

end A257844.P15853644949130552495

namespace A257844

/-- `A131806(n+1)/2*A004526(A004526(n))` -/
def P15853644949130552495.Spec : Prop :=
  ∀ n, P15853644949130552495.a n = (A257844 n : ℚ)

end A257844

/-! ## A257844.P12692927227108690337

`A257845(A001068(n))`
-/

namespace A257844.P12692927227108690337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257845 (A001068 n).toNat

end

end A257844.P12692927227108690337

namespace A257844

/-- `A257845(A001068(n))` -/
def P12692927227108690337.Spec : Prop :=
  ∀ n, P12692927227108690337.a n = A257844 n

end A257844

/-! ## A257844.P9350446655225958381

`A002265(n)*A010874(A002265(n)+n)`
-/

namespace A257844.P9350446655225958381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n * A010874 (A002265 n + (n : ℤ)).toNat

end

end A257844.P9350446655225958381

namespace A257844

/-- `A002265(n)*A010874(A002265(n)+n)` -/
def P9350446655225958381.Spec : Prop :=
  ∀ n, P9350446655225958381.a n = A257844 n

end A257844

/-! ## A257844.P14289979072457356544

`A004526(A002265(n)*A131806(n+1))`
-/

namespace A257844.P14289979072457356544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 n * A131806 (n + 1)).toNat

end

end A257844.P14289979072457356544

namespace A257844

/-- `A004526(A002265(n)*A131806(n+1))` -/
def P14289979072457356544.Spec : Prop :=
  ∀ n, P14289979072457356544.a n = A257844 n

end A257844

/-! ## A257844.P14761427765519019041

`A004526(A002265(n)*A010877(2*n))`
-/

namespace A257844.P14761427765519019041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 n * A010877 (2 * n)).toNat

end

end A257844.P14761427765519019041

namespace A257844

/-- `A004526(A002265(n)*A010877(2*n))` -/
def P14761427765519019041.Spec : Prop :=
  ∀ n, P14761427765519019041.a n = A257844 n

end A257844

/-! ## A257844.P3566684814931496873

`A257846(A047246(n+1))`
-/

namespace A257844.P3566684814931496873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257846 (A047246 (n + 1)).toNat

end

end A257844.P3566684814931496873

namespace A257844

/-- `A257846(A047246(n+1))` -/
def P3566684814931496873.Spec : Prop :=
  ∀ n, P3566684814931496873.a n = A257844 n

end A257844

/-! ## A257844.P13005234610200349471

`A257847(A047361(n+1))`
-/

namespace A257844.P13005234610200349471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A047361 (n + 1)).toNat

end

end A257844.P13005234610200349471

namespace A257844

/-- `A257847(A047361(n+1))` -/
def P13005234610200349471.Spec : Prop :=
  ∀ n, P13005234610200349471.a n = A257844 n

end A257844

/-! ## A257844.P5452638800134081378

`A257848(2*n)/2`
-/

namespace A257844.P5452638800134081378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257848 (2 * n) : ℚ) / 2

end

end A257844.P5452638800134081378

namespace A257844

/-- `A257848(2*n)/2` -/
def P5452638800134081378.Spec : Prop :=
  ∀ n, P5452638800134081378.a n = (A257844 n : ℚ)

end A257844

/-! ## A257844.P7764757023561084594

`A257848(A047476(n+1))`
-/

namespace A257844.P7764757023561084594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 (A047476 (n + 1)).toNat

end

end A257844.P7764757023561084594

namespace A257844

/-- `A257848(A047476(n+1))` -/
def P7764757023561084594.Spec : Prop :=
  ∀ n, P7764757023561084594.a n = A257844 n

end A257844

/-!
# A257845: a(n) = floor(n/5) * (n mod 5).

The programs for A257845, the canonical program `A257845.P11541487360243926770` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257845 has offset 0).

The definition of A257845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257845.P11541487360243926770

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=2, a(8)=3, a(9)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257845

/-- `2*a(n-5)-a(n-10)` -/
def P11541487360243926770.Spec : Prop :=
  ∀ n, P11541487360243926770.a n = A257845 n

theorem P11541487360243926770.correct : P11541487360243926770.Spec := by
  intro n
  simp only [A257845]

end A257845

/-! ## A257845.P8341386247030303400

`n%5*floor(n/5)`
-/

namespace A257845.P8341386247030303400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 5 : ℕ) : ℤ) * ⌊(n : ℚ) / 5⌋

end

end A257845.P8341386247030303400

namespace A257845

/-- `n%5*floor(n/5)` -/
def P8341386247030303400.Spec : Prop :=
  ∀ n, P8341386247030303400.a n = A257845 n

end A257845

/-! ## A257845.P3172872451222010498

`abs(5*floor(n/5)-n)*floor(n/5)`
-/

namespace A257845.P3172872451222010498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * ⌊(n : ℚ) / 5⌋ - (n : ℤ)| * ⌊(n : ℚ) / 5⌋

end

end A257845.P3172872451222010498

namespace A257845

/-- `abs(5*floor(n/5)-n)*floor(n/5)` -/
def P3172872451222010498.Spec : Prop :=
  ∀ n, P3172872451222010498.a n = A257845 n

end A257845

/-! ## A257845.P8218005188740105572

`A130520(n)-A000566(comp[6*n]-(n+1))`
-/

namespace A257845.P8218005188740105572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n - A000566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 1))

end

end A257845.P8218005188740105572

namespace A257845

/-- `A130520(n)-A000566(comp[6*n]-(n+1))` -/
def P8218005188740105572.Spec : Prop :=
  ∀ n, P8218005188740105572.a n = A257845 n

end A257845

/-! ## A257845.P3893119214971888889

`A002266(n)*A010884(n)-A002266(n)`
-/

namespace A257845.P3893119214971888889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n * A010884 n - A002266 n

end

end A257845.P3893119214971888889

namespace A257845

/-- `A002266(n)*A010884(n)-A002266(n)` -/
def P3893119214971888889.Spec : Prop :=
  ∀ n, P3893119214971888889.a n = A257845 n

end A257845

/-! ## A257845.P8303781965435087926

`A257846(A047226(n+1))`
-/

namespace A257845.P8303781965435087926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257846 (A047226 (n + 1)).toNat

end

end A257845.P8303781965435087926

namespace A257845

/-- `A257846(A047226(n+1))` -/
def P8303781965435087926.Spec : Prop :=
  ∀ n, P8303781965435087926.a n = A257845 n

end A257845

/-! ## A257845.P10867941541584257609

`A257847(A047337(n+1))`
-/

namespace A257845.P10867941541584257609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A047337 (n + 1)).toNat

end

end A257845.P10867941541584257609

namespace A257845

/-- `A257847(A047337(n+1))` -/
def P10867941541584257609.Spec : Prop :=
  ∀ n, P10867941541584257609.a n = A257845 n

end A257845

/-! ## A257845.P11149180390056714487

`A257848(A047453(n+1))`
-/

namespace A257845.P11149180390056714487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 (A047453 (n + 1)).toNat

end

end A257845.P11149180390056714487

namespace A257845

/-- `A257848(A047453(n+1))` -/
def P11149180390056714487.Spec : Prop :=
  ∀ n, P11149180390056714487.a n = A257845 n

end A257845

/-! ## A257845.P15425942002745285302

`A257850(2*n)/2`
-/

namespace A257845.P15425942002745285302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257850 (2 * n) : ℚ) / 2

end

end A257845.P15425942002745285302

namespace A257845

/-- `A257850(2*n)/2` -/
def P15425942002745285302.Spec : Prop :=
  ∀ n, P15425942002745285302.a n = (A257845 n : ℚ)

end A257845

/-! ## A257845.P16080386180771954773

`A142150(A257850(2*n))`
-/

namespace A257845.P16080386180771954773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A257850 (2 * n)).toNat

end

end A257845.P16080386180771954773

namespace A257845

/-- `A142150(A257850(2*n))` -/
def P16080386180771954773.Spec : Prop :=
  ∀ n, P16080386180771954773.a n = A257845 n

end A257845

/-! ## A257845.P6761320643672744147

`A002265(2*A257850(2*n))`
-/

namespace A257845.P6761320643672744147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A257850 (2 * n)).toNat

end

end A257845.P6761320643672744147

namespace A257845

/-- `A002265(2*A257850(2*n))` -/
def P6761320643672744147.Spec : Prop :=
  ∀ n, P6761320643672744147.a n = A257845 n

end A257845

/-!
# A257846: a(n) = floor(n/6) * (n mod 6).

The programs for A257846, the canonical program `A257846.P17166208419805466995` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257846 has offset 0).

The definition of A257846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257846.P17166208419805466995

`floor(n/6)*n%6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257846

/-- `floor(n/6)*n%6` -/
def P17166208419805466995.Spec : Prop :=
  ∀ n, P17166208419805466995.a n = A257846 n

theorem P17166208419805466995.correct : P17166208419805466995.Spec := by
  intro n
  simp only [A257846]

end A257846

/-! ## A257846.P11726917741164844160

`A010875(n)*A152467(n)`
-/

namespace A257846.P11726917741164844160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n * A152467 n

end

end A257846.P11726917741164844160

namespace A257846

/-- `A010875(n)*A152467(n)` -/
def P11726917741164844160.Spec : Prop :=
  ∀ n, P11726917741164844160.a n = A257846 n

end A257846

/-! ## A257846.P5141590578099374949

`A174709(n)-A000567(A152467(n))`
-/

namespace A257846.P5141590578099374949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 n - A000567 (A152467 n).toNat

end

end A257846.P5141590578099374949

namespace A257846

/-- `A174709(n)-A000567(A152467(n))` -/
def P5141590578099374949.Spec : Prop :=
  ∀ n, P5141590578099374949.a n = A257846 n

end A257846

/-! ## A257846.P15620156460940719766

`A002265(A004396(n))*A010875(n)`
-/

namespace A257846.P15620156460940719766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004396 n).toNat * A010875 n

end

end A257846.P15620156460940719766

namespace A257846

/-- `A002265(A004396(n))*A010875(n)` -/
def P15620156460940719766.Spec : Prop :=
  ∀ n, P15620156460940719766.a n = A257846 n

end A257846

/-! ## A257846.P15640893050097644642

`A004526(A002264(n))*A010875(n)`
-/

namespace A257846.P15640893050097644642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002264 n).toNat * A010875 n

end

end A257846.P15640893050097644642

namespace A257846

/-- `A004526(A002264(n))*A010875(n)` -/
def P15640893050097644642.Spec : Prop :=
  ∀ n, P15640893050097644642.a n = A257846 n

end A257846

/-! ## A257846.P12979897692293332127

`A002264(A123108(n))*A010875(n)`
-/

namespace A257846.P12979897692293332127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A123108 n).toNat * A010875 n

end

end A257846.P12979897692293332127

namespace A257846

/-- `A002264(A123108(n))*A010875(n)` -/
def P12979897692293332127.Spec : Prop :=
  ∀ n, P12979897692293332127.a n = A257846 n

end A257846

/-! ## A257846.P15936657579623757581

`A257847(A047368(n+1))`
-/

namespace A257846.P15936657579623757581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A047368 (n + 1)).toNat

end

end A257846.P15936657579623757581

namespace A257846

/-- `A257847(A047368(n+1))` -/
def P15936657579623757581.Spec : Prop :=
  ∀ n, P15936657579623757581.a n = A257846 n

end A257846

/-! ## A257846.P14602694851445432909

`A257848(A047602(n+1))`
-/

namespace A257846.P14602694851445432909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 (A047602 (n + 1)).toNat

end

end A257846.P14602694851445432909

namespace A257846

/-- `A257848(A047602(n+1))` -/
def P14602694851445432909.Spec : Prop :=
  ∀ n, P14602694851445432909.a n = A257846 n

end A257846

/-!
# A257847: a(n) = floor(n/7) * (n mod 7).

The programs for A257847, the canonical program `A257847.P10880837699423205845` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257847 has offset 0).

The definition of A257847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257847.P10880837699423205845

`floor(n/7)*n%7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257847

/-- `floor(n/7)*n%7` -/
def P10880837699423205845.Spec : Prop :=
  ∀ n, P10880837699423205845.a n = A257847 n

theorem P10880837699423205845.correct : P10880837699423205845.Spec := by
  intro n
  simp only [A257847]

end A257847

/-! ## A257847.P10752007537649735296

`A010876(n)*A132270(n+1)`
-/

namespace A257847.P10752007537649735296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n * A132270 (n + 1)

end

end A257847.P10752007537649735296

namespace A257847

/-- `A010876(n)*A132270(n+1)` -/
def P10752007537649735296.Spec : Prop :=
  ∀ n, P10752007537649735296.a n = A257847 n

end A257847

/-! ## A257847.P2356631648007387805

`(n-A145569(n))*A010876(n)`
-/

namespace A257847.P2356631648007387805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A145569 n) * A010876 n

end

end A257847.P2356631648007387805

namespace A257847

/-- `(n-A145569(n))*A010876(n)` -/
def P2356631648007387805.Spec : Prop :=
  ∀ n, P2356631648007387805.a n = A257847 n

end A257847

/-! ## A257847.P7331344561212410553

`A002265(A057358(n))*A010876(n)`
-/

namespace A257847.P7331344561212410553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057358 n).toNat * A010876 n

end

end A257847.P7331344561212410553

namespace A257847

/-- `A002265(A057358(n))*A010876(n)` -/
def P7331344561212410553.Spec : Prop :=
  ∀ n, P7331344561212410553.a n = A257847 n

end A257847

/-! ## A257847.P13112676670120549212

`A002266(A057359(n))*A010876(n)`
-/

namespace A257847.P13112676670120549212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A057359 n).toNat * A010876 n

end

end A257847.P13112676670120549212

namespace A257847

/-- `A002266(A057359(n))*A010876(n)` -/
def P13112676670120549212.Spec : Prop :=
  ∀ n, P13112676670120549212.a n = A257847 n

end A257847

/-! ## A257847.P7043144975762508992

`A002266(A057359(n))*A010877(A004777(n+1))`
-/

namespace A257847.P7043144975762508992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A057359 n).toNat * A010877 (A004777 (n + 1)).toNat

end

end A257847.P7043144975762508992

namespace A257847

/-- `A002266(A057359(n))*A010877(A004777(n+1))` -/
def P7043144975762508992.Spec : Prop :=
  ∀ n, P7043144975762508992.a n = A257847 n

end A257847

/-! ## A257847.P3857074404915686615

`A257848(A004777(n+1))`
-/

namespace A257847.P3857074404915686615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 (A004777 (n + 1)).toNat

end

end A257847.P3857074404915686615

namespace A257847

/-- `A257848(A004777(n+1))` -/
def P3857074404915686615.Spec : Prop :=
  ∀ n, P3857074404915686615.a n = A257847 n

end A257847

/-! ## A257847.P2357938911185396984

`A257848(A047592(n+1)-1)`
-/

namespace A257847.P2357938911185396984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 (A047592 (n + 1) - 1).toNat

end

end A257847.P2357938911185396984

namespace A257847

/-- `A257848(A047592(n+1)-1)` -/
def P2357938911185396984.Spec : Prop :=
  ∀ n, P2357938911185396984.a n = A257847 n

end A257847

/-! ## A257847.P1602713250689555015

`A257848(2*n-A145569(n))`
-/

namespace A257847.P1602713250689555015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 ((2 * n : ℤ) - A145569 n).toNat

end

end A257847.P1602713250689555015

namespace A257847

/-- `A257848(2*n-A145569(n))` -/
def P1602713250689555015.Spec : Prop :=
  ∀ n, P1602713250689555015.a n = A257847 n

end A257847

/-! ## A257847.P1442083721172815289

`A257848(n-A145569(n)+n)`
-/

namespace A257847.P1442083721172815289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 ((n : ℤ) - A145569 n + (n : ℤ)).toNat

end

end A257847.P1442083721172815289

namespace A257847

/-- `A257848(n-A145569(n)+n)` -/
def P1442083721172815289.Spec : Prop :=
  ∀ n, P1442083721172815289.a n = A257847 n

end A257847

/-! ## A257847.P8265277191935142826

`A257848(n-(A145569(n)-n))`
-/

namespace A257847.P8265277191935142826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 ((n : ℤ) - (A145569 n - (n : ℤ))).toNat

end

end A257847.P8265277191935142826

namespace A257847

/-- `A257848(n-(A145569(n)-n))` -/
def P8265277191935142826.Spec : Prop :=
  ∀ n, P8265277191935142826.a n = A257847 n

end A257847

/-! ## A257847.P10617364182029720168

`A257849(A272574(n))`
-/

namespace A257847.P10617364182029720168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (A272574 n).toNat

end

end A257847.P10617364182029720168

namespace A257847

/-- `A257849(A272574(n))` -/
def P10617364182029720168.Spec : Prop :=
  ∀ n, P10617364182029720168.a n = A257847 n

end A257847

/-!
# A257848: a(n) = floor(n/8) * (n mod 8).

The programs for A257848, the canonical program `A257848.P15300501251607381551` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257848 has offset 0).

The definition of A257848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257848.P15300501251607381551

`floor(n/8)*n%8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257848

/-- `floor(n/8)*n%8` -/
def P15300501251607381551.Spec : Prop :=
  ∀ n, P15300501251607381551.a n = A257848 n

theorem P15300501251607381551.correct : P15300501251607381551.Spec := by
  intro n
  simp only [A257848]

end A257848

/-! ## A257848.P2065486641990569835

`floor(n/8)*A010877(n)`
-/

namespace A257848.P2065486641990569835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋ * A010877 n

end

end A257848.P2065486641990569835

namespace A257848

/-- `floor(n/8)*A010877(n)` -/
def P2065486641990569835.Spec : Prop :=
  ∀ n, P2065486641990569835.a n = A257848 n

end A257848

/-! ## A257848.P11908041349856669677

`A010877(n)*A132292(n+1)`
-/

namespace A257848.P11908041349856669677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n * A132292 (n + 1)

end

end A257848.P11908041349856669677

namespace A257848

/-- `A010877(n)*A132292(n+1)` -/
def P11908041349856669677.Spec : Prop :=
  ∀ n, P11908041349856669677.a n = A257848 n

end A257848

/-! ## A257848.P9352730703993642910

`(A010887(n)-1)*A004526(A002265(n))`
-/

namespace A257848.P9352730703993642910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010887 n - 1) * A004526 (A002265 n).toNat

end

end A257848.P9352730703993642910

namespace A257848

/-- `(A010887(n)-1)*A004526(A002265(n))` -/
def P9352730703993642910.Spec : Prop :=
  ∀ n, P9352730703993642910.a n = A257848 n

end A257848

/-! ## A257848.P1734677204976201216

`A257849(A248375(n))`
-/

namespace A257848.P1734677204976201216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (A248375 n).toNat

end

end A257848.P1734677204976201216

namespace A257848

/-- `A257849(A248375(n))` -/
def P1734677204976201216.Spec : Prop :=
  ∀ n, P1734677204976201216.a n = A257848 n

end A257848

/-!
# A257849: a(n) = floor(n/9) * (n mod 9).

The programs for A257849, the canonical program `A257849.P7304013733198542973` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257849 has offset 0).

The definition of A257849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257849.P7304013733198542973

`floor(n/9)*n%9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257849

/-- `floor(n/9)*n%9` -/
def P7304013733198542973.Spec : Prop :=
  ∀ n, P7304013733198542973.a n = A257849 n

theorem P7304013733198542973.correct : P7304013733198542973.Spec := by
  intro n
  simp only [A257849]

end A257849

/-! ## A257849.P10249370588827247367

`A010878(n)*A343609(n)`
-/

namespace A257849.P10249370588827247367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n * A343609 n

end

end A257849.P10249370588827247367

namespace A257849

/-- `A010878(n)*A343609(n)` -/
def P10249370588827247367.Spec : Prop :=
  ∀ n, P10249370588827247367.a n = A257849 n

end A257849

/-! ## A257849.P15584502249597114393

`A218470(n)-A051682(A343609(n))`
-/

namespace A257849.P15584502249597114393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 n - A051682 (A343609 n).toNat

end

end A257849.P15584502249597114393

namespace A257849

/-- `A218470(n)-A051682(A343609(n))` -/
def P15584502249597114393.Spec : Prop :=
  ∀ n, P15584502249597114393.a n = A257849 n

end A257849

/-! ## A257849.P13787252430815856250

`A002264(A002264(n))*A010878(n)`
-/

namespace A257849.P13787252430815856250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 n).toNat * A010878 n

end

end A257849.P13787252430815856250

namespace A257849

/-- `A002264(A002264(n))*A010878(n)` -/
def P13787252430815856250.Spec : Prop :=
  ∀ n, P13787252430815856250.a n = A257849 n

end A257849

/-! ## A257849.P8620820085503904472

`A010878(n)*A152467(A004396(n))`
-/

namespace A257849.P8620820085503904472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n * A152467 (A004396 n).toNat

end

end A257849.P8620820085503904472

namespace A257849

/-- `A010878(n)*A152467(A004396(n))` -/
def P8620820085503904472.Spec : Prop :=
  ∀ n, P8620820085503904472.a n = A257849 n

end A257849

/-! ## A257849.P1313949999276849702

`A257850(eq[n+1, A004151(n+1)])`
-/

namespace A257849.P1313949999276849702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257849.P1313949999276849702

namespace A257849

/-- `A257850(eq[n+1, A004151(n+1)])` -/
def P1313949999276849702.Spec : Prop :=
  ∀ n, P1313949999276849702.a n = A257849 n

end A257849

/-! ## A257849.P14717030792206423771

`A257850(eq[A007953(n), A326746(n)])`
-/

namespace A257849.P14717030792206423771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257849.P14717030792206423771

namespace A257849

/-- `A257850(eq[A007953(n), A326746(n)])` -/
def P14717030792206423771.Spec : Prop :=
  ∀ n, P14717030792206423771.a n = A257849 n

end A257849

/-! ## A257849.P9188084143660818149

`val(A037124(n+1), 10)*A010878(n)`
-/

namespace A257849.P9188084143660818149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A037124 (n + 1)).toNat 10 : ℤ) * A010878 n

end

end A257849.P9188084143660818149

namespace A257849

/-- `val(A037124(n+1), 10)*A010878(n)` -/
def P9188084143660818149.Spec : Prop :=
  ∀ n, P9188084143660818149.a n = A257849 n

end A257849

/-! ## A257849.P13383118315065451444

`A309788(n)%A122055(n)`
-/

namespace A257849.P13383118315065451444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309788 n) (A122055 n)

end

end A257849.P13383118315065451444

namespace A257849

/-- `A309788(n)%A122055(n)` -/
def P13383118315065451444.Spec : Prop :=
  ∀ n, P13383118315065451444.a n = A257849 n

end A257849

/-!
# A257850: a(n) = floor(n/10) * (n mod 10).

The programs for A257850, the canonical program `A257850.P4170056654288422818` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257850 has offset 0).

The definition of A257850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257850.P4170056654288422818

`floor(n/10)*n%10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257850

/-- `floor(n/10)*n%10` -/
def P4170056654288422818.Spec : Prop :=
  ∀ n, P4170056654288422818.a n = A257850 n

theorem P4170056654288422818.correct : P4170056654288422818.Spec := by
  intro n
  simp only [A257850]

end A257850

/-! ## A257850.P14331202790309710507

`n%10*A059995(n)`
-/

namespace A257850.P14331202790309710507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℤ) * A059995 n

end

end A257850.P14331202790309710507

namespace A257850

/-- `n%10*A059995(n)` -/
def P14331202790309710507.Spec : Prop :=
  ∀ n, P14331202790309710507.a n = A257850 n

end A257850

/-! ## A257850.P9189183118724606679

`floor(n/10)*A010879(n)`
-/

namespace A257850.P9189183118724606679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋ * A010879 n

end

end A257850.P9189183118724606679

namespace A257850

/-- `floor(n/10)*A010879(n)` -/
def P9189183118724606679.Spec : Prop :=
  ∀ n, P9189183118724606679.a n = A257850 n

end A257850

/-! ## A257850.P14185522105526021412

`A010879(n)*A059995(n)`
-/

namespace A257850.P14185522105526021412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n * A059995 n

end

end A257850.P14185522105526021412

namespace A257850

/-- `A010879(n)*A059995(n)` -/
def P14185522105526021412.Spec : Prop :=
  ∀ n, P14185522105526021412.a n = A257850 n

end A257850

/-! ## A257850.P12722762523368142566

`A131242(n)-A051624(A059995(n))`
-/

namespace A257850.P12722762523368142566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 n - A051624 (A059995 n).toNat

end

end A257850.P12722762523368142566

namespace A257850

/-- `A131242(n)-A051624(A059995(n))` -/
def P12722762523368142566.Spec : Prop :=
  ∀ n, P12722762523368142566.a n = A257850 n

end A257850

/-! ## A257850.P15340639961751909722

`A131242(n)-A131242(10*A059995(n))`
-/

namespace A257850.P15340639961751909722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 n - A131242 (10 * A059995 n).toNat

end

end A257850.P15340639961751909722

namespace A257850

/-- `A131242(n)-A131242(10*A059995(n))` -/
def P15340639961751909722.Spec : Prop :=
  ∀ n, P15340639961751909722.a n = A257850 n

end A257850

/-! ## A257850.P18126299873873626826

`A008728(n)-(A051624(A059995(n))+n+1)`
-/

namespace A257850.P18126299873873626826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 n - (A051624 (A059995 n).toNat + (n + 1 : ℤ))

end

end A257850.P18126299873873626826

namespace A257850

/-- `A008728(n)-(A051624(A059995(n))+n+1)` -/
def P18126299873873626826.Spec : Prop :=
  ∀ n, P18126299873873626826.a n = A257850 n

end A257850

/-! ## A257850.P9731337282357620544

`A097462(A059995(n)+n)`
-/

namespace A257850.P9731337282357620544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097462 (A059995 n + (n : ℤ)).toNat

end

end A257850.P9731337282357620544

namespace A257850

/-- `A097462(A059995(n)+n)` -/
def P9731337282357620544.Spec : Prop :=
  ∀ n, P9731337282357620544.a n = A257850 n

end A257850

/-! ## A257850.P9245129837343551172

`A097462(A059995(11*n))`
-/

namespace A257850.P9245129837343551172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097462 (A059995 (11 * n)).toNat

end

end A257850.P9245129837343551172

namespace A257850

/-- `A097462(A059995(11*n))` -/
def P9245129837343551172.Spec : Prop :=
  ∀ n, P9245129837343551172.a n = A257850 n

end A257850

/-! ## A257850.P4138610712454725821

`lcm(Δ[A347470(n)], A347470(n))`
-/

namespace A257850.P4138610712454725821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A347470 n)

end

end A257850.P4138610712454725821

namespace A257850

/-- `lcm(Δ[A347470(n)], A347470(n))` -/
def P4138610712454725821.Spec : Prop :=
  ∀ n, (P4138610712454725821.a n : ℤ) = A257850 n

end A257850

/-! ## A257850.P9426135574839909605

`A347470(n)%p?[A002522(n)]`
-/

namespace A257850.P9426135574839909605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347470 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A257850.P9426135574839909605

namespace A257850

/-- `A347470(n)%p?[A002522(n)]` -/
def P9426135574839909605.Spec : Prop :=
  ∀ n, P9426135574839909605.a n = A257850 n

end A257850

/-! ## A257850.P2792937545681143605

`A347470(n+1)-Δ[A347470(n)]`
-/

namespace A257850.P2792937545681143605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (n + 1) - (f1 (n + 1) - f1 n)

end

end A257850.P2792937545681143605

namespace A257850

/-- `A347470(n+1)-Δ[A347470(n)]` -/
def P2792937545681143605.Spec : Prop :=
  ∀ n, P2792937545681143605.a n = A257850 n

end A257850

/-! ## A257850.P12870860885287494073

`A347470(char[1]*A347470(n+1)+n)`
-/

namespace A257850.P12870860885287494073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A347470 (n + 1) + (n : ℤ)).toNat

end

end A257850.P12870860885287494073

namespace A257850

/-- `A347470(char[1]*A347470(n+1)+n)` -/
def P12870860885287494073.Spec : Prop :=
  ∀ n, P12870860885287494073.a n = A257850 n

end A257850

/-!
# A257852: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n,k) = (2^n*(6*k - 3 - 2*(-1)^n) - 1)/3, n,k >= 1.

The programs for A257852, the canonical program `A257852.P9714662518285997073` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257852 has offset 1).

The definition of A257852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257852.P9714662518285997073

`A257791(n+1)-A257499(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A257852

/-- `A257791(n+1)-A257499(n+1)` -/
def P9714662518285997073.Spec : Prop :=
  ∀ n, P9714662518285997073.a n = A257852 (n + 1)

theorem P9714662518285997073.correct : P9714662518285997073.Spec := by
  intro n
  simp only [A257852, Nat.add_sub_cancel]

end A257852

/-! ## A257852.P14944972979223767619

`A257791(n+1)-(2*A258415(n+1)-1)`
-/

namespace A257852.P14944972979223767619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257791 (n + 1) - (2 * A258415 (n + 1) - 1)

end

end A257852.P14944972979223767619

namespace A257852

/-- `A257791(n+1)-(2*A258415(n+1)-1)` -/
def P14944972979223767619.Spec : Prop :=
  ∀ n, P14944972979223767619.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P8070059089604797815

`xor(A027383(A099375(n)), A257499(n+1))`
-/

namespace A257852.P8070059089604797815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027383 (A099375 n).toNat) (A257499 (n + 1))

end

end A257852.P8070059089604797815

namespace A257852

/-- `xor(A027383(A099375(n)), A257499(n+1))` -/
def P8070059089604797815.Spec : Prop :=
  ∀ n, P8070059089604797815.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P6885772462380686584

`A258415(comp[∑[n]])-1`
-/

namespace A257852.P6885772462380686584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A257852.P6885772462380686584

namespace A257852

/-- `A258415(comp[∑[n]])-1` -/
def P6885772462380686584.Spec : Prop :=
  ∀ n, P6885772462380686584.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P3356928955495901154

`floor(A257499(comp[∑[n]])/2)`
-/

namespace A257852.P3356928955495901154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257499 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌋

end

end A257852.P3356928955495901154

namespace A257852

/-- `floor(A257499(comp[∑[n]])/2)` -/
def P3356928955495901154.Spec : Prop :=
  ∀ n, P3356928955495901154.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P442229165811363241

`(A257499(comp[C(n, 2)])-1)/2`
-/

namespace A257852.P442229165811363241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257499 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1 : ℚ) / 2

end

end A257852.P442229165811363241

namespace A257852

/-- `(A257499(comp[C(n, 2)])-1)/2` -/
def P442229165811363241.Spec : Prop :=
  ∀ n, P442229165811363241.a n = (A257852 (n + 1) : ℚ)

end A257852

/-! ## A257852.P161178373714078928

`A308778(n²)+A258415(comp[∑[n]])`
-/

namespace A257852.P161178373714078928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A258415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A257852.P161178373714078928

namespace A257852

/-- `A308778(n²)+A258415(comp[∑[n]])` -/
def P161178373714078928.Spec : Prop :=
  ∀ n, P161178373714078928.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P8913836462341389461

`A008574(A054582(n))-A257499(n+1)`
-/

namespace A257852.P8913836462341389461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A054582 n).toNat - A257499 (n + 1)

end

end A257852.P8913836462341389461

namespace A257852

/-- `A008574(A054582(n))-A257499(n+1)` -/
def P8913836462341389461.Spec : Prop :=
  ∀ n, P8913836462341389461.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P14796025428540539195

`A014681(A258415(comp[∑[n]]))`
-/

namespace A257852.P14796025428540539195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A258415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A257852.P14796025428540539195

namespace A257852

/-- `A014681(A258415(comp[∑[n]]))` -/
def P14796025428540539195.Spec : Prop :=
  ∀ n, P14796025428540539195.a n = A257852 (n + 1)

end A257852

/-! ## A257852.P2638028545911350907

`A004526(A257499(comp[∑[n]]))`
-/

namespace A257852.P2638028545911350907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A257499 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A257852.P2638028545911350907

namespace A257852

/-- `A004526(A257499(comp[∑[n]]))` -/
def P2638028545911350907.Spec : Prop :=
  ∀ n, P2638028545911350907.a n = A257852 (n + 1)

end A257852

/-!
# A257853: a(n) = 2*n^3 - floor(2^(1/3)*n)^3.

The programs for A257853, the canonical program `A257853.P2885019231209744431` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257853 has offset 0).

The definition of A257853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257853.P2885019231209744431

`A033431(n)-A038129(n)^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A257853

/-- `A033431(n)-A038129(n)^3` -/
def P2885019231209744431.Spec : Prop :=
  ∀ n, P2885019231209744431.a n = A257853 n

theorem P2885019231209744431.correct : P2885019231209744431.Spec := by
  intro n
  simp only [A257853]

end A257853

/-! ## A257853.P7614688456605788736

`A033431(n)-A000578(A038129(n))`
-/

namespace A257853.P7614688456605788736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A000578 (A038129 n).toNat

end

end A257853.P7614688456605788736

namespace A257853

/-- `A033431(n)-A000578(A038129(n))` -/
def P7614688456605788736.Spec : Prop :=
  ∀ n, P7614688456605788736.a n = A257853 n

end A257853

/-! ## A257853.P13990908899662776132

`2*A000578(n)-A000578(A038129(n))`
-/

namespace A257853.P13990908899662776132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000578 n - A000578 (A038129 n).toNat

end

end A257853.P13990908899662776132

namespace A257853

/-- `2*A000578(n)-A000578(A038129(n))` -/
def P13990908899662776132.Spec : Prop :=
  ∀ n, P13990908899662776132.a n = A257853 n

end A257853

/-! ## A257853.P9937603853162561231

`A033431(n)+A000578(A038129(n))*A057428(n)`
-/

namespace A257853.P9937603853162561231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + A000578 (A038129 n).toNat * A057428 n

end

end A257853.P9937603853162561231

namespace A257853

/-- `A033431(n)+A000578(A038129(n))*A057428(n)` -/
def P9937603853162561231.Spec : Prop :=
  ∀ n, P9937603853162561231.a n = A257853 n

end A257853

/-! ## A257853.P10459773066602373316

`A005843(A000578(n))-A000578(A001068(n))`
-/

namespace A257853.P10459773066602373316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000578 n).toNat - A000578 (A001068 n).toNat

end

end A257853.P10459773066602373316

namespace A257853

/-- `A005843(A000578(n))-A000578(A001068(n))` -/
def P10459773066602373316.Spec : Prop :=
  ∀ n, P10459773066602373316.a n = A257853 n

end A257853

/-!
# A257854: a(n) = 2*n^4 - floor(2^(1/4)*n)^4.

The programs for A257854, there is no canonical definition to state claims against.
-/

/-! ## A257854.P15205009127955114758

`record[A198064(n)]%or(1, Δ[n²²])`
-/

namespace A257854.P15205009127955114758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198064 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (Int.lor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A257854.P15205009127955114758

/-! ## A257854.P254873307503705777

`record[A198064(n)]%Δ[A000583(n)]`
-/

namespace A257854.P254873307503705777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198064 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A257854.P254873307503705777

/-! ## A257854.P1189614842452286469

`A198064(∑[n])%A005917(n+1)`
-/

namespace A257854.P1189614842452286469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198064 (∑ j ∈ Finset.range (n + 1), f1 j)) (A005917 (n + 1))

end

end A257854.P1189614842452286469

/-! ## A257854.P487796344443522268

`A023443(A002523(n))%Δ[A002523(n)]`
-/

namespace A257854.P487796344443522268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A002523 n).toNat) (f1 (n + 1) - f1 n)

end

end A257854.P487796344443522268

/-! ## A257854.P13249232559206035180

`A022521(n)%A070920(A000244(n))`
-/

namespace A257854.P13249232559206035180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022521 n) (A070920 (A000244 n).toNat)

end

end A257854.P13249232559206035180

/-!
# A257855: a(n) = 2*n^5 - floor(2^(1/5)*n)^5.

The programs for A257855, there is no canonical definition to state claims against.
-/

/-! ## A257855.P4083155490430208973

`(n^5)%A000265(Δ[n^5])`
-/

namespace A257855.P4083155490430208973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 5 : ℤ) (A000265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A257855.P4083155490430208973

/-! ## A257855.P12073803567883196942

`(n^5)%A052410(A022521(n))`
-/

namespace A257855.P12073803567883196942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 5 : ℤ) (A052410 (A022521 n).toNat)

end

end A257855.P12073803567883196942

/-! ## A257855.P3376169564543624860

`A000584(n)%A017281(A110450(n))`
-/

namespace A257855.P3376169564543624860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 n) (A017281 (A110450 n).toNat)

end

end A257855.P3376169564543624860

/-! ## A257855.P15882447327002858904

`A000027(Δ[n^6])%Δ[n^5]`
-/

namespace A257855.P15882447327002858904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A257855.P15882447327002858904

/-! ## A257855.P15297634098767357040

`A198065(∑[n])%A022521(n)`
-/

namespace A257855.P15297634098767357040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198065 (∑ j ∈ Finset.range (n + 1), f1 j)) (A022521 n)

end

end A257855.P15297634098767357040

/-!
# A257856: Least positive integer k such that prime(k*n) - prime(k) is a square.

The programs for A257856, there is no canonical definition to state claims against.
-/

/-! ## A257856.P4188731265422075205

`A133515(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2, a(4)=1`
-/

namespace A257856.P4188731265422075205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 2, 1] fun n a =>
  A133515 (a (n - 1) + a (n - 2)).toNat

end

end A257856.P4188731265422075205

/-! ## A257856.P2939441208264820089

`A218349(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2, a(4)=1`
-/

namespace A257856.P2939441208264820089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 2, 1] fun n a =>
  A218349 (a (n - 1) + a (n - 2)).toNat

end

end A257856.P2939441208264820089

/-!
# A257857: Sequentially filled binary triangle rotated 180 degrees and then superimposed and added to the original triangle.

The programs for A257857, there is no canonical definition to state claims against.
-/

/-! ## A257857.P16846239933569944153

`gcd(2, n)-comp[∑[n]]%2`
-/

namespace A257857.P16846239933569944153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A257857.P16846239933569944153

/-! ## A257857.P14211257438344590104

`Δ[∑[round(sqrt(2*n))]%2]+1`
-/

namespace A257857.P14211257438344590104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A257857.P14211257438344590104

/-! ## A257857.P11552949489874667110

`2-(comp[∑[n]]²+n²)%4`
-/

namespace A257857.P11552949489874667110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + n ^ 2) % 4 : ℕ) : ℤ)

end

end A257857.P11552949489874667110

/-! ## A257857.P10850824127440811889

`and(3, 2-comp[∑[n]]²-n²)`
-/

namespace A257857.P10850824127440811889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - (n ^ 2 : ℤ))

end

end A257857.P10850824127440811889

/-! ## A257857.P10779145251389740387

`-comp[∑[n]]%2-or(n, -2)`
-/

namespace A257857.P10779145251389740387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 2 - Int.lor (n : ℤ) (-2)

end

end A257857.P10779145251389740387

/-! ## A257857.P1679403270891391903

`(-∑[char[∑[n]]]%2)^n+1`
-/

namespace A257857.P1679403270891391903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)) ^ n + 1

end

end A257857.P1679403270891391903

/-! ## A257857.P7429642369850832214

`(-and(1, ∑[char[∑[n]]]))^n+1`
-/

namespace A257857.P7429642369850832214
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)) ^ n + 1

end

end A257857.P7429642369850832214

/-! ## A257857.P6006168486073010643

`char[2*n]+and(1, comp[∑[n-1]])`
-/

namespace A257857.P6006168486073010643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

end

end A257857.P6006168486073010643

/-! ## A257857.P11610214044413972331

`((comp[∑[n]]-n)%2-1)^n+1`
-/

namespace A257857.P11610214044413972331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 2 - 1) ^ n + 1

end

end A257857.P11610214044413972331

/-! ## A257857.P11509199731196755417

`xor(n, ∑[char[C(n, 2)]]%2)+1-n`
-/

namespace A257857.P11509199731196755417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) : ℤ) + (1 - (n : ℤ))

end

end A257857.P11509199731196755417

/-!
# A257859: a(n) = (2*n-1)*a(n-1) - a(n-2) with a(0)=2, a(1)=1.

The programs for A257859, the canonical program `A257859.P9437791272915061005` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257859 has offset 0).

The definition of A257859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A257859.P9437791272915061005`, by `A257859.P9437791272915061005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257859.P9437791272915061005

`(2*n-1)*a(n-1)-a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257859

/-- `(2*n-1)*a(n-1)-a(n-2)` -/
def P9437791272915061005.Spec : Prop :=
  ∀ n, P9437791272915061005.a n = A257859 n

theorem P9437791272915061005.correct : P9437791272915061005.Spec := by
  intro n
  simp only [A257859]

end A257859

/-! ## A257859.P10653002653482103029

`2*A053983(n)-A053984(n)`
-/

namespace A257859.P10653002653482103029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053983 n - A053984 n

end

end A257859.P10653002653482103029

namespace A257859

/-- `2*A053983(n)-A053984(n)` -/
def P10653002653482103029.Spec : Prop :=
  ∀ n, P10653002653482103029.a n = A257859 n

end A257859

/-! ## A257859.P17821773854148297515

`a(n-1)*A004273(n)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A257859.P17821773854148297515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) * A004273 n - a (n - 2)

end

end A257859.P17821773854148297515

namespace A257859

/-- `a(n-1)*A004273(n)-a(n-2)` -/
def P17821773854148297515.Spec : Prop :=
  ∀ n, P17821773854148297515.a n = A257859 n

end A257859

/-! ## A257859.P12809797292167842692

`a(n-1)*A004280(n+1)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A257859.P12809797292167842692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) * A004280 (n + 1) - a (n - 2)

end

end A257859.P12809797292167842692

namespace A257859

/-- `a(n-1)*A004280(n+1)-a(n-2)` -/
def P12809797292167842692.Spec : Prop :=
  ∀ n, P12809797292167842692.a n = A257859 n

end A257859

/-! ## A257859.P11549147163366081258

`3*A053983(n)-A242227(n)`
-/

namespace A257859.P11549147163366081258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053983 n - A242227 n

end

end A257859.P11549147163366081258

namespace A257859

/-- `3*A053983(n)-A242227(n)` -/
def P11549147163366081258.Spec : Prop :=
  ∀ n, P11549147163366081258.a n = A257859 n

end A257859

/-!
# A257861: Numbers n such that d(m) - f(m) >= n/2^f(m), where m = 2^n - 1, d(m) is the number of distinct prime factors of m, and f(m) is the number of Fermat primes less than or equal to 65537 that divide m.

The programs for A257861, there is no canonical definition to state claims against.
-/

/-! ## A257861.P4498612675151305845

`record[and(A272598(n+1), A272635(2*n+3))]`
-/

namespace A257861.P4498612675151305845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A272598 (n + 1)) (A272635 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257861.P4498612675151305845

/-! ## A257861.P10442432616017220368

`lt[A286378(n), A265744(A028326(n))]`
-/

namespace A257861.P10442432616017220368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A028326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257861.P10442432616017220368

/-! ## A257861.P11591185950724418658

`lt[A286378(n), A048793(A007359(n+2))]`
-/

namespace A257861.P11591185950724418658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A007359 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257861.P11591185950724418658

/-!
# A257863: Expansion of 1/(1 - x - x^2 + x^5 - x^6).

The programs for A257863, the canonical program `A257863.P10338168559487240023` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257863 has offset 0).

The definition of A257863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^5-x^6))` (program `A257863.P10338168559487240023`, by `A257863.P10338168559487240023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257863.P10338168559487240023

`ogf(1/(1-x-x^2+x^5-x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257863

/-- `ogf(1/(1-x-x^2+x^5-x^6))` -/
def P10338168559487240023.Spec : Prop :=
  ∀ n, P10338168559487240023.a n = A257863 n

theorem P10338168559487240023.correct : P10338168559487240023.Spec := by
  intro n
  simp only [A257863]

end A257863

/-! ## A257863.P5271788775591093814

`a(n-1)+a(n-2)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7`
-/

namespace A257863.P5271788775591093814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 5) + a (n - 6)

end

end A257863.P5271788775591093814

namespace A257863

/-- `a(n-1)+a(n-2)-a(n-5)+a(n-6)` -/
def P5271788775591093814.Spec : Prop :=
  ∀ n, P5271788775591093814.a n = A257863 n

end A257863

/-! ## A257863.P5178446367947273751

`A073188(A003120(n+1))`
-/

namespace A257863.P5178446367947273751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A003120 (n + 1)).toNat

end

end A257863.P5178446367947273751

namespace A257863

/-- `A073188(A003120(n+1))` -/
def P5178446367947273751.Spec : Prop :=
  ∀ n, P5178446367947273751.a n = A257863 n

end A257863

/-! ## A257863.P8401578947616468778

`A055086(A222380(n)+A193530(n))`
-/

namespace A257863.P8401578947616468778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A222380 n + A193530 n).toNat

end

end A257863.P8401578947616468778

namespace A257863

/-- `A055086(A222380(n)+A193530(n))` -/
def P8401578947616468778.Spec : Prop :=
  ∀ n, P8401578947616468778.a n = A257863 n

end A257863

/-! ## A257863.P10958243223539863437

`A257639(or(n², A218481(n)))`
-/

namespace A257863.P10958243223539863437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (n ^ 2 : ℤ) (A218481 n)).toNat

end

end A257863.P10958243223539863437

namespace A257863

/-- `A257639(or(n², A218481(n)))` -/
def P10958243223539863437.Spec : Prop :=
  ∀ n, P10958243223539863437.a n = A257863 n

end A257863

/-!
# A257866: Number of tilings of a 5 X n rectangle using n pentominoes of shapes W, I, L.

The programs for A257866, there is no canonical definition to state claims against.
-/

/-! ## A257866.P8246032170153938809

`A251617(n)-A198318(A198324(n))`
-/

namespace A257866.P8246032170153938809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251617 n - A198318 (A198324 n).toNat

end

end A257866.P8246032170153938809

/-! ## A257866.P9765559584187354741

`A130922(or(A186767(n), A186768(n)))`
-/

namespace A257866.P9765559584187354741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (Int.lor (A186767 n) (A186768 n)).toNat

end

end A257866.P9765559584187354741

/-! ## A257866.P14766207280743676578

`A251617(n)-A010894(A282280(n+1))`
-/

namespace A257866.P14766207280743676578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251617 n - A010894 ((A282280 (n + 1)).toNat + 21)

end

end A257866.P14766207280743676578

/-!
# A257869: Nonnegative integers with an equal number of occurrences of all trits in balanced ternary representation.

The programs for A257869, there is no canonical definition to state claims against.
-/

/-! ## A257869.P18024162541147673670

`A002808(A016034(n+1))+2`
-/

namespace A257869.P18024162541147673670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A016034 (n + 1)).toNat + 2

end

end A257869.P18024162541147673670

/-!
# A257873: Expansion of f(-x)^2 * chi(-x^4) * psi(x^6) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

The programs for A257873, there is no canonical definition to state claims against.
-/

/-! ## A257873.P10375378557712980526

`A127786(3*n+2)/2`
-/

namespace A257873.P10375378557712980526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (3 * n + 2) : ℚ) / 2

end

end A257873.P10375378557712980526

/-! ## A257873.P10229422431040798867

`round(A127786(A016789(n))/2)`
-/

namespace A257873.P10229422431040798867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127786 (A016789 n).toNat : ℚ) / 2)

end

end A257873.P10229422431040798867

/-! ## A257873.P8036361500057937148

`(A127786(A016789(n))/2)%A017041(n)`
-/

namespace A257873.P8036361500057937148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A127786 (A016789 n).toNat : ℚ) / 2)) (A017041 n)

end

end A257873.P8036361500057937148

/-! ## A257873.P10514939331105611424

`A127786(A016789(n))/2*A033999(n)²`
-/

namespace A257873.P10514939331105611424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (A016789 n).toNat : ℚ) / 2 * (A033999 n ^ 2 : ℚ)

end

end A257873.P10514939331105611424

/-! ## A257873.P11268587965458036914

`A000007(n+1)+A127786(A016789(n))/2`
-/

namespace A257873.P11268587965458036914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A127786 (A016789 n).toNat : ℚ) / 2

end

end A257873.P11268587965458036914

/-! ## A257873.P5730679784302542857

`A072375(C(n, n²)+1)+A127786(A016789(n))/2`
-/

namespace A257873.P5730679784302542857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072375 (Nat.choose n (n ^ 2) + 1) : ℚ) + (A127786 (A016789 n).toNat : ℚ) / 2

end

end A257873.P5730679784302542857

/-! ## A257873.P7410761555332287007

`A080963(6*n+4)/2`
-/

namespace A257873.P7410761555332287007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 (6 * n + 4) : ℚ) / 2

end

end A257873.P7410761555332287007

/-!
# A257874: Numbers n such that the largest prime divisor of n^4 + n^2 + 1 is equal to the largest prime divisor of (n+1)^4 + (n+1)^2 + 1.

The programs for A257874, there is no canonical definition to state claims against.
-/

/-! ## A257874.P12491728840610624081

`∑[A001221(A227228(n+5))]`
-/

namespace A257874.P12491728840610624081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A227228 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257874.P12491728840610624081

/-! ## A257874.P3245953150317849807

`A167743(record[4*A029306(n)])`
-/

namespace A257874.P3245953150317849807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A029306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257874.P3245953150317849807

/-! ## A257874.P8711427806278249845

`A227177(∑[∑[A183845(n+1)]])`
-/

namespace A257874.P8711427806278249845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257874.P8711427806278249845

/-! ## A257874.P3763144630266634230

`∑[4-A329345(A160181(n))%3]`
-/

namespace A257874.P3763144630266634230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (A329345 (A160181 n).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257874.P3763144630266634230

/-! ## A257874.P10667811369013010855

`∑[A341524(∑[A207170(n+1)])+1]`
-/

namespace A257874.P10667811369013010855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207170 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341524 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257874.P10667811369013010855

/-!
# A257877: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 0 and d(1) = 3.

The programs for A257877, there is no canonical definition to state claims against.
-/

/-! ## A257877.P6557202152777074609

`∑[A257915(n+1)]-3`
-/

namespace A257877.P6557202152777074609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A257877.P6557202152777074609

/-! ## A257877.P479629702087515926

`∑[A057427(n)*A257915(n+1)]`
-/

namespace A257877.P479629702087515926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257877.P479629702087515926

/-! ## A257877.P15180624058924880516

`∑[A257915(n+1)%A016754(n)]`
-/

namespace A257877.P15180624058924880516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257915 (n + 1)) (A016754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257877.P15180624058924880516

/-! ## A257877.P10685612213338241541

`∑[and(A057428(n), A257915(n+1))]`
-/

namespace A257877.P10685612213338241541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A257915 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257877.P10685612213338241541

/-! ## A257877.P4801409852782681672

`∑[A043545(2*n)*A257915(n+1)]`
-/

namespace A257877.P4801409852782681672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n) * A257915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257877.P4801409852782681672

/-! ## A257877.P13047823353196825064

`∑[A073424(∑[n])*A257915(n+1)]`
-/

namespace A257877.P13047823353196825064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f2 j) * A257915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257877.P13047823353196825064

/-!
# A257878: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 1 and d(1) = 1.

The programs for A257878, there is no canonical definition to state claims against.
-/

/-! ## A257878.P8738279838530041633

`A257706(n+1)+1`
-/

namespace A257878.P8738279838530041633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257706 (n + 1) + 1

end

end A257878.P8738279838530041633

/-! ## A257878.P7026450437269405073

`A257705(n+2)`
-/

namespace A257878.P7026450437269405073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 2)

end

end A257878.P7026450437269405073

/-! ## A257878.P11153566422433770623

`∑[A131389(n+2)]`
-/

namespace A257878.P11153566422433770623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257878.P11153566422433770623

/-! ## A257878.P18342912244932571854

`A131388(n+2)-1`
-/

namespace A257878.P18342912244932571854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (n + 2) - 1

end

end A257878.P18342912244932571854

/-! ## A257878.P15294410127507678286

`∑[-Δ[-A131388(n+1)]]`
-/

namespace A257878.P15294410127507678286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131388 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257878.P15294410127507678286

/-! ## A257878.P7462121089788072793

`A284793(A020639(2*(n+1)))+A131388(n+2)`
-/

namespace A257878.P7462121089788072793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A020639 (2 * (n + 1))).toNat + A131388 (n + 2)

end

end A257878.P7462121089788072793

/-! ## A257878.P6440297421170101231

`A023443(A131388(n+2))`
-/

namespace A257878.P6440297421170101231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A131388 (n + 2)).toNat

end

end A257878.P6440297421170101231

/-! ## A257878.P11658720602701667992

`A023444(A131388(n+2)+1)`
-/

namespace A257878.P11658720602701667992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A131388 (n + 2) + 1).toNat

end

end A257878.P11658720602701667992

/-!
# A257879: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 2 and d(1) = 0.

The programs for A257879, there is no canonical definition to state claims against.
-/

/-! ## A257879.P1211569914915865700

`∑[A257880(n+1)]+2`
-/

namespace A257879.P1211569914915865700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A257879.P1211569914915865700

/-! ## A257879.P7860251018474533201

`A257880(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A257879.P7860251018474533201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A257880 (n + 1) + a (A023443 n).toNat

end

end A257879.P7860251018474533201

/-! ## A257879.P8406465351051224333

`a(n-1)+A257880(n+1)%A004277(n)` with `a(0)=2`
-/

namespace A257879.P8406465351051224333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.tmod (A257880 (n + 1)) (A004277 n)

end

end A257879.P8406465351051224333

/-! ## A257879.P10296612315321443308

`a(n-1)-A008683(A151800(n))*A257880(n+1)` with `a(0)=2`
-/

namespace A257879.P10296612315321443308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - A008683 (A151800 n).toNat * A257880 (n + 1)

end

end A257879.P10296612315321443308

/-! ## A257879.P860078065607289006

`a(n-1)+2-(gcd(2, A000079(n))-A257880(n+1))` with `a(0)=2`
-/

namespace A257879.P860078065607289006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 - ((Int.gcd 2 (A000079 n) : ℤ) - A257880 (n + 1))

end

end A257879.P860078065607289006

/-!
# A257880: Sequence (d(n)) generated by Rule 1 (in Comments) with a(1) = 2 and d(1) = 0.

The programs for A257880, there is no canonical definition to state claims against.
-/

/-! ## A257880.P15727278516914798277

`Δ[A257879(A028310(n))]`
-/

namespace A257880.P15727278516914798277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P15727278516914798277

/-! ## A257880.P4530994631080239814

`A257879(n+1)-A257879(A028310(n))`
-/

namespace A257880.P4530994631080239814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (n + 1) - A257879 (A028310 n).toNat

end

end A257880.P4530994631080239814

/-! ## A257880.P8626316857912447221

`A257879(n+1)-A257879(A000007(n)+n)`
-/

namespace A257880.P8626316857912447221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (n + 1) - A257879 (A000007 n + (n : ℤ)).toNat

end

end A257880.P8626316857912447221

/-! ## A257880.P8278809263168869176

`Δ[A257879(A000007(n)+n)]`
-/

namespace A257880.P8278809263168869176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P8278809263168869176

/-! ## A257880.P17275799000161222221

`Δ[A257879(A004275(n+1)-n)]`
-/

namespace A257880.P17275799000161222221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P17275799000161222221

/-! ## A257880.P841150471515568391

`Δ[A257879(A008619(A004275(n)))]`
-/

namespace A257880.P841150471515568391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P841150471515568391

/-! ## A257880.P691485621387880819

`Δ[A257879(A008619(A004273(n)))]`
-/

namespace A257880.P691485621387880819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P691485621387880819

/-! ## A257880.P133879317607217616

`Δ[A257879(A110654(A053438(n)))]`
-/

namespace A257880.P133879317607217616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A110654 (A053438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P133879317607217616

/-! ## A257880.P2223778911039131965

`Δ[A257879(A123108(2*n))]`
-/

namespace A257880.P2223778911039131965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P2223778911039131965

/-! ## A257880.P18331477750089725870

`Δ[A257879(A103627(A008486(n)))]`
-/

namespace A257880.P18331477750089725870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A103627 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P18331477750089725870

/-! ## A257880.P104638717390066665

`Δ[A257879(A003056(A000124(n)))]`
-/

namespace A257880.P104638717390066665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257879 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257880.P104638717390066665

/-!
# A257882: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 2 and d(1) = 2.

The programs for A257882, there is no canonical definition to state claims against.
-/

/-! ## A257882.P13644576246010244315

`∑[A257918(n+1)]`
-/

namespace A257882.P13644576246010244315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257882.P13644576246010244315

/-! ## A257882.P4396837358612720527

`abs(∑[A257918(A008619(2*n))])`
-/

namespace A257882.P4396837358612720527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257918 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A257882.P4396837358612720527

/-! ## A257882.P730473942491178105

`∑[A257918(A008619(2*n))]-A000038(n)%2`
-/

namespace A257882.P730473942491178105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257918 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A000038 n) 2

end

end A257882.P730473942491178105

/-! ## A257882.P402187522188625346

`∑[A257918(A008619(2*n))]%(3-A022280(n))`
-/

namespace A257882.P402187522188625346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257918 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (3 - A022280 n)

end

end A257882.P402187522188625346

/-! ## A257882.P13412569910364185678

`∑[A257918(A008619(2*n))]-n*A000007(n)`
-/

namespace A257882.P13412569910364185678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257918 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A000007 n

end

end A257882.P13412569910364185678

/-!
# A257883: Sequence (a(n)) generated by Algorithm (in Comments) with a(1) = 0 and d(1) = 0.

The programs for A257883, there is no canonical definition to state claims against.
-/

/-! ## A257883.P15987491847291693058

`A175498(n+1)-1`
-/

namespace A257883.P15987491847291693058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (n + 1) - 1

end

end A257883.P15987491847291693058

/-! ## A257883.P4208773622531482565

`A257884(A028310(n))+A057427(n)`
-/

namespace A257883.P4208773622531482565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257884 (A028310 n).toNat + A057427 n

end

end A257883.P4208773622531482565

/-! ## A257883.P10227315975158952036

`A257880(A257882(gcd(n, n+1)))+A175498(n+1)`
-/

namespace A257883.P10227315975158952036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257880 (A257882 (Nat.gcd n (n + 1))).toNat + A175498 (n + 1)

end

end A257883.P10227315975158952036

/-! ## A257883.P3385391752159940215

`A023443(A175498(n+1))`
-/

namespace A257883.P3385391752159940215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175498 (n + 1)).toNat

end

end A257883.P3385391752159940215

/-! ## A257883.P3894801890932545137

`A023444(A175498(n+1)+1)`
-/

namespace A257883.P3894801890932545137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A175498 (n + 1) + 1).toNat

end

end A257883.P3894801890932545137

/-! ## A257883.P16759592742181770652

`A175499(n)+a(n-1)` with `a(0)=0`
-/

namespace A257883.P16759592742181770652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A175499 n + a (n - 1)

end

end A257883.P16759592742181770652

/-! ## A257883.P1423088540970208594

`∑[A175499(n+1)]-A175499(n+1)`
-/

namespace A257883.P1423088540970208594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A175499 (n + 1)

end

end A257883.P1423088540970208594

/-! ## A257883.P5680976998457901208

`A257884(n+1)+1-A175499(n+1)`
-/

namespace A257883.P5680976998457901208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257884 (n + 1) + (1 - A175499 (n + 1))

end

end A257883.P5680976998457901208

/-! ## A257883.P13287053179574763360

`A327844(∑[n+1])-1`
-/

namespace A257883.P13287053179574763360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A257883.P13287053179574763360

/-!
# A257884: Sequence (a(n)) generated by Algorithm (in Comments) with a(1) = 0 and d(1) = 1.

The programs for A257884, there is no canonical definition to state claims against.
-/

/-! ## A257884.P9353762347564276402

`A257883(n+2)-1`
-/

namespace A257884.P9353762347564276402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257883 (n + 2) - 1

end

end A257884.P9353762347564276402

/-! ## A257884.P10129834941582627156

`A175498(n+2)-2`
-/

namespace A257884.P10129834941582627156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (n + 2) - 2

end

end A257884.P10129834941582627156

/-! ## A257884.P16390028110016533900

`A272693(A070633(2*n+5))+A175498(n+2)`
-/

namespace A257884.P16390028110016533900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272693 (A070633 (2 * n + 5)).toNat + A175498 (n + 2)

end

end A257884.P16390028110016533900

/-! ## A257884.P6727749984882280434

`A023444(A175498(n+2))`
-/

namespace A257884.P6727749984882280434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A175498 (n + 2)).toNat

end

end A257884.P6727749984882280434

/-! ## A257884.P2449891333507234759

`A023443(A257883(n+2))`
-/

namespace A257884.P2449891333507234759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257883 (n + 2)).toNat

end

end A257884.P2449891333507234759

/-! ## A257884.P5459611184540761594

`∑[A175499(n+1)]-1`
-/

namespace A257884.P5459611184540761594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A257884.P5459611184540761594

/-! ## A257884.P9979502817900637355

`∑[A175499(n+1)%A175527(n)]`
-/

namespace A257884.P9979502817900637355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175499 (n + 1)) (A175527 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257884.P9979502817900637355

/-! ## A257884.P9375516779120411026

`∑[n*A175499(n+1)/A028310(n)]`
-/

namespace A257884.P9375516779120411026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A175499 (n + 1) : ℚ) / (A028310 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257884.P9375516779120411026

/-!
# A257885: Sequence (a(n)) generated by Algorithm (in Comments) with a(1) = 0 and d(1) = 2.

The programs for A257885, there is no canonical definition to state claims against.
-/

/-! ## A257885.P13192736442501367845

`∑[A257902(n+1)]-2`
-/

namespace A257885.P13192736442501367845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A257885.P13192736442501367845

/-! ## A257885.P13998914515860027992

`∑[A057427(n)*A257902(n+1)]`
-/

namespace A257885.P13998914515860027992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257885.P13998914515860027992

/-! ## A257885.P14689708157157767343

`∑[A257902(n+1)%A025707(n)]`
-/

namespace A257885.P14689708157157767343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257902 (n + 1)) (A025707 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257885.P14689708157157767343

/-! ## A257885.P14793676130249708203

`∑[and(A057428(n), A257902(n+1))]`
-/

namespace A257885.P14793676130249708203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A257902 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257885.P14793676130249708203

/-! ## A257885.P11047231089890755399

`∑[A178334(A178334(n))*A257902(n+1)]`
-/

namespace A257885.P11047231089890755399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat * A257902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257885.P11047231089890755399

/-! ## A257885.P11853736050981084150

`A023444(∑[A257902(n+1)])`
-/

namespace A257885.P11853736050981084150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257885.P11853736050981084150

/-!
# A257887: Number of proper diagonals of the n-dimensional associahedron (i.e., diagonals that are not included in lower dimension faces).

The programs for A257887, there is no canonical definition to state claims against.
-/

/-! ## A257887.P7073679246115372718

`A349409(∑[n+2]+3)`
-/

namespace A257887.P7073679246115372718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349409 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A257887.P7073679246115372718

/-! ## A257887.P16283157174016438247

`record[gcd(A349409(n+1), A349409(n+2))]`
-/

namespace A257887.P16283157174016438247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A349409 (n + 1)) (A349409 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257887.P16283157174016438247

/-! ## A257887.P5793662111464049317

`A335729(n+2)/2`
-/

namespace A257887.P5793662111464049317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335729 (n + 2) : ℚ) / 2

end

end A257887.P5793662111464049317

/-! ## A257887.P9895442108675842290

`A371659(A112355(n+1))`
-/

namespace A257887.P9895442108675842290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371659 (A112355 (n + 1)).toNat

end

end A257887.P9895442108675842290

/-!
# A257888: Number of nonintersecting (or self-avoiding) rook paths of length 2n+2 joining opposite corners of an n X n grid.

The programs for A257888, the canonical program `A257888.P17485197680427452743` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257888 has offset 3).

The definition of A257888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257888.P17485197680427452743

`4*A002055(n+5)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257888

/-- `4*A002055(n+5)` -/
def P17485197680427452743.Spec : Prop :=
  ∀ n, P17485197680427452743.a n = A257888 (n + 3)

theorem P17485197680427452743.correct : P17485197680427452743.Spec := by
  intro n
  simp only [A257888, Nat.add_sub_cancel]

end A257888

/-! ## A257888.P6863241014470173038

`(n+2)²*A002057(n)`
-/

namespace A257888.P6863241014470173038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A002057 n

end

end A257888.P6863241014470173038

namespace A257888

/-- `(n+2)²*A002057(n)` -/
def P6863241014470173038.Spec : Prop :=
  ∀ n, P6863241014470173038.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P13165039961862422202

`(n+2)*A006659(n+1)`
-/

namespace A257888.P13165039961862422202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006659 (n + 1)

end

end A257888.P13165039961862422202

namespace A257888

/-- `(n+2)*A006659(n+1)` -/
def P13165039961862422202.Spec : Prop :=
  ∀ n, P13165039961862422202.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P9400549081977926610

`(n+2)²*A099376(n+1)`
-/

namespace A257888.P9400549081977926610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A099376 (n + 1)

end

end A257888.P9400549081977926610

namespace A257888

/-- `(n+2)²*A099376(n+1)` -/
def P9400549081977926610.Spec : Prop :=
  ∀ n, P9400549081977926610.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P16247876590415218407

`2*(n+2)*A002694(n+2)`
-/

namespace A257888.P16247876590415218407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) * A002694 (n + 2))

end

end A257888.P16247876590415218407

namespace A257888

/-- `2*(n+2)*A002694(n+2)` -/
def P16247876590415218407.Spec : Prop :=
  ∀ n, P16247876590415218407.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P4484301993277899013

`(n+2)²*∑[A026016(n+1)]`
-/

namespace A257888.P4484301993277899013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257888.P4484301993277899013

namespace A257888

/-- `(n+2)²*∑[A026016(n+1)]` -/
def P4484301993277899013.Spec : Prop :=
  ∀ n, P4484301993277899013.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P2729562948918120822

`(n+2)²*∑[A071725(n+1)]`
-/

namespace A257888.P2729562948918120822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257888.P2729562948918120822

namespace A257888

/-- `(n+2)²*∑[A071725(n+1)]` -/
def P2729562948918120822.Spec : Prop :=
  ∀ n, P2729562948918120822.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P2439535441648782403

`(n+2)²*Δ[A279557(n+1)]`
-/

namespace A257888.P2439535441648782403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A257888.P2439535441648782403

namespace A257888

/-- `(n+2)²*Δ[A279557(n+1)]` -/
def P2439535441648782403.Spec : Prop :=
  ∀ n, P2439535441648782403.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P8343420752236435688

`Δ[A028552(n)]*A002694(n+2)`
-/

namespace A257888.P8343420752236435688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002694 (n + 2)

end

end A257888.P8343420752236435688

namespace A257888

/-- `Δ[A028552(n)]*A002694(n+2)` -/
def P8343420752236435688.Spec : Prop :=
  ∀ n, P8343420752236435688.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P17863401781681144446

`A002694(n+2)*A103517(n+1)`
-/

namespace A257888.P17863401781681144446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A103517 (n + 1)

end

end A257888.P17863401781681144446

namespace A257888

/-- `A002694(n+2)*A103517(n+1)` -/
def P17863401781681144446.Spec : Prop :=
  ∀ n, P17863401781681144446.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P16011649057468133252

`A002694(n+2)*A005843(n+2)`
-/

namespace A257888.P16011649057468133252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A005843 (n + 2)

end

end A257888.P16011649057468133252

namespace A257888

/-- `A002694(n+2)*A005843(n+2)` -/
def P16011649057468133252.Spec : Prop :=
  ∀ n, P16011649057468133252.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P14425609139055441023

`(n+2)²*A050156(∑[n])`
-/

namespace A257888.P14425609139055441023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A050156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257888.P14425609139055441023

namespace A257888

/-- `(n+2)²*A050156(∑[n])` -/
def P14425609139055441023.Spec : Prop :=
  ∀ n, P14425609139055441023.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P7541529068839381314

`(n+2)²*A050164(∑[n])`
-/

namespace A257888.P7541529068839381314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A050164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257888.P7541529068839381314

namespace A257888

/-- `(n+2)²*A050164(∑[n])` -/
def P7541529068839381314.Spec : Prop :=
  ∀ n, P7541529068839381314.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P9994370196588451484

`(n+2)²*A050154(∑[n+1])`
-/

namespace A257888.P9994370196588451484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A050154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257888.P9994370196588451484

namespace A257888

/-- `(n+2)²*A050154(∑[n+1])` -/
def P9994370196588451484.Spec : Prop :=
  ∀ n, P9994370196588451484.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P3552583585647165752

`(n+2)²*A050162(∑[n+1])`
-/

namespace A257888.P3552583585647165752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A050162 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257888.P3552583585647165752

namespace A257888

/-- `(n+2)²*A050162(∑[n+1])` -/
def P3552583585647165752.Spec : Prop :=
  ∀ n, P3552583585647165752.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P13771497889456221256

`2*(n+2)*C(2*(n+2), n)`
-/

namespace A257888.P13771497889456221256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2) * Nat.choose (2 * (n + 2)) n)

end

end A257888.P13771497889456221256

namespace A257888

/-- `2*(n+2)*C(2*(n+2), n)` -/
def P13771497889456221256.Spec : Prop :=
  ∀ n, (P13771497889456221256.a n : ℤ) = A257888 (n + 3)

end A257888

/-! ## A257888.P17617723500581239889

`2*2*A126216(A167614(n+1))`
-/

namespace A257888.P17617723500581239889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A126216 (A167614 (n + 1)).toNat)

end

end A257888.P17617723500581239889

namespace A257888

/-- `2*2*A126216(A167614(n+1))` -/
def P17617723500581239889.Spec : Prop :=
  ∀ n, P17617723500581239889.a n = A257888 (n + 3)

end A257888

/-! ## A257888.P7089612168209315572

`C(A163300(n+2), n)*A163300(n+2)`
-/

namespace A257888.P7089612168209315572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A163300 (n + 2)).toNat n : ℤ) * A163300 (n + 2)

end

end A257888.P7089612168209315572

namespace A257888

/-- `C(A163300(n+2), n)*A163300(n+2)` -/
def P7089612168209315572.Spec : Prop :=
  ∀ n, P7089612168209315572.a n = A257888 (n + 3)

end A257888

/-!
# A257889: Terms satisfy: a(2*n) = a(n)*b(n) and a(2*n+1) = a(n)*b(n+1) for n>=0 with a(0)=1, where A(x)^2 = Sum_{n>=0} b(n)*x^n and g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A257889, there is no canonical definition to state claims against.
-/

/-! ## A257889.P3733583510244135277

`A369715(A024741(n+2))`
-/

namespace A257889.P3733583510244135277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A024741 (n + 2)).toNat

end

end A257889.P3733583510244135277

/-! ## A257889.P4150703349661409396

`A147292(A359338(n)+A147294(n+3))`
-/

namespace A257889.P4150703349661409396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147292 (A359338 n + A147294 (n + 3)).toNat

end

end A257889.P4150703349661409396

/-! ## A257889.P10769783608486154843

`A000669(n+1)-A233566(A059865(n+1))`
-/

namespace A257889.P10769783608486154843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) - A233566 (A059865 (n + 1)).toNat

end

end A257889.P10769783608486154843

/-!
# A257890: Expansion of the g.f. (x^2-x+1)*(x^2-3*x+3)/(x-1)^6.

The programs for A257890, the canonical program `A257890.P550370428997744836` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257890 has offset 0).

The definition of A257890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-6x+7x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A257890.P550370428997744836`, by `A257890.P550370428997744836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257890.P550370428997744836

`ogf((3-6x+7x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257890

/-- `ogf((3-6x+7x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P550370428997744836.Spec : Prop :=
  ∀ n, P550370428997744836.a n = A257890 n

theorem P550370428997744836.correct : P550370428997744836.Spec := by
  intro n
  simp only [A257890]

end A257890

/-! ## A257890.P16614353020512105769

`(n+1)*(n^4+14*n^3+91*n²+254*n+360)/120`
-/

namespace A257890.P16614353020512105769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n ^ 4 + 14 * n ^ 3 + 91 * n ^ 2 + 254 * n + 360 : ℚ) / 120)

end

end A257890.P16614353020512105769

namespace A257890

/-- `(n+1)*(n^4+14*n^3+91*n²+254*n+360)/120` -/
def P16614353020512105769.Spec : Prop :=
  ∀ n, P16614353020512105769.a n = (A257890 n : ℚ)

end A257890

/-! ## A257890.P10874301987277146911

`A000292(n+1)+n+1+A000389(n+5)`
-/

namespace A257890.P10874301987277146911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + ((n + 1 : ℤ) + A000389 (n + 5))

end

end A257890.P10874301987277146911

namespace A257890

/-- `A000292(n+1)+n+1+A000389(n+5)` -/
def P10874301987277146911.Spec : Prop :=
  ∀ n, P10874301987277146911.a n = A257890 n

end A257890

/-! ## A257890.P3960477360940121502

`Δ[A223659(n)]`
-/

namespace A257890.P3960477360940121502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257890.P3960477360940121502

namespace A257890

/-- `Δ[A223659(n)]` -/
def P3960477360940121502.Spec : Prop :=
  ∀ n, P3960477360940121502.a n = A257890 n

end A257890

/-! ## A257890.P8553277415232098351

`A051747(n+1)+1+n`
-/

namespace A257890.P8553277415232098351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) + 1 + (n : ℤ)

end

end A257890.P8553277415232098351

namespace A257890

/-- `A051747(n+1)+1+n` -/
def P8553277415232098351.Spec : Prop :=
  ∀ n, P8553277415232098351.a n = A257890 n

end A257890

/-! ## A257890.P17349897493692334935

`A223718(n+1)+a(n-1)` with `a(0)=3`
-/

namespace A257890.P17349897493692334935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A223718 (n + 1) + a (n - 1)

end

end A257890.P17349897493692334935

namespace A257890

/-- `A223718(n+1)+a(n-1)` -/
def P17349897493692334935.Spec : Prop :=
  ∀ n, P17349897493692334935.a n = A257890 n

end A257890

/-! ## A257890.P2689910818941887134

`A062988(n)-A051744(n+1)`
-/

namespace A257890.P2689910818941887134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - A051744 (n + 1)

end

end A257890.P2689910818941887134

namespace A257890

/-- `A062988(n)-A051744(n+1)` -/
def P2689910818941887134.Spec : Prop :=
  ∀ n, P2689910818941887134.a n = A257890 n

end A257890

/-! ## A257890.P16813278493216460857

`A223659(n+1)-A223659(n)`
-/

namespace A257890.P16813278493216460857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) - A223659 n

end

end A257890.P16813278493216460857

namespace A257890

/-- `A223659(n+1)-A223659(n)` -/
def P16813278493216460857.Spec : Prop :=
  ∀ n, P16813278493216460857.a n = A257890 n

end A257890

/-! ## A257890.P241289638243509103

`A051745(n+1)+A000292(n+1)`
-/

namespace A257890.P241289638243509103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) + A000292 (n + 1)

end

end A257890.P241289638243509103

namespace A257890

/-- `A051745(n+1)+A000292(n+1)` -/
def P241289638243509103.Spec : Prop :=
  ∀ n, P241289638243509103.a n = A257890 n

end A257890

/-! ## A257890.P11234929663565344367

`A257199(n+1)+A051743(n+1)`
-/

namespace A257890.P11234929663565344367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1) + A051743 (n + 1)

end

end A257890.P11234929663565344367

namespace A257890

/-- `A257199(n+1)+A051743(n+1)` -/
def P11234929663565344367.Spec : Prop :=
  ∀ n, P11234929663565344367.a n = A257890 n

end A257890

/-! ## A257890.P1477484192348316329

`∑[A024191(n+1)+1]-A005701(n)`
-/

namespace A257890.P1477484192348316329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005701 n

end

end A257890.P1477484192348316329

namespace A257890

/-- `∑[A024191(n+1)+1]-A005701(n)` -/
def P1477484192348316329.Spec : Prop :=
  ∀ n, P1477484192348316329.a n = A257890 n

end A257890

/-! ## A257890.P1856889901975806232

`∑[A223718(n+1)]%A223681(n+1)`
-/

namespace A257890.P1856889901975806232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A223681 (n + 1))

end

end A257890.P1856889901975806232

namespace A257890

/-- `∑[A223718(n+1)]%A223681(n+1)` -/
def P1856889901975806232.Spec : Prop :=
  ∀ n, P1856889901975806232.a n = A257890 n

end A257890

/-! ## A257890.P1010847848275655584

`∑[A327032(n+1)]-(n+1)²`
-/

namespace A257890.P1010847848275655584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A257890.P1010847848275655584

namespace A257890

/-- `∑[A327032(n+1)]-(n+1)²` -/
def P1010847848275655584.Spec : Prop :=
  ∀ n, P1010847848275655584.a n = A257890 n

end A257890

/-! ## A257890.P13531472202376723841

`A000292(n+1)+A145127(n+1)-1`
-/

namespace A257890.P13531472202376723841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A145127 (n + 1) - 1)

end

end A257890.P13531472202376723841

namespace A257890

/-- `A000292(n+1)+A145127(n+1)-1` -/
def P13531472202376723841.Spec : Prop :=
  ∀ n, P13531472202376723841.a n = A257890 n

end A257890

/-! ## A257890.P13377205286347184455

`A257199(n+2)-(A000217(n+1)+1)`
-/

namespace A257890.P13377205286347184455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 2) - (A000217 (n + 1) + 1)

end

end A257890.P13377205286347184455

namespace A257890

/-- `A257199(n+2)-(A000217(n+1)+1)` -/
def P13377205286347184455.Spec : Prop :=
  ∀ n, P13377205286347184455.a n = A257890 n

end A257890

/-! ## A257890.P6287034390043315047

`A114095(A017017(n))+1+n`
-/

namespace A257890.P6287034390043315047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (A017017 n).toNat + 1 + (n : ℤ)

end

end A257890.P6287034390043315047

namespace A257890

/-- `A114095(A017017(n))+1+n` -/
def P6287034390043315047.Spec : Prop :=
  ∀ n, P6287034390043315047.a n = A257890 n

end A257890

/-! ## A257890.P15941152536690402824

`A114095(A017029(n))+1+n`
-/

namespace A257890.P15941152536690402824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (A017029 n).toNat + 1 + (n : ℤ)

end

end A257890.P15941152536690402824

namespace A257890

/-- `A114095(A017029(n))+1+n` -/
def P15941152536690402824.Spec : Prop :=
  ∀ n, P15941152536690402824.a n = A257890 n

end A257890

/-! ## A257890.P3712246447540007226

`A114095(A063211(n+1))+1+n`
-/

namespace A257890.P3712246447540007226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (A063211 (n + 1)).toNat + 1 + (n : ℤ)

end

end A257890.P3712246447540007226

namespace A257890

/-- `A114095(A063211(n+1))+1+n` -/
def P3712246447540007226.Spec : Prop :=
  ∀ n, P3712246447540007226.a n = A257890 n

end A257890

/-! ## A257890.P211660327249746683

`A114095(A063237(n+1))+1+n`
-/

namespace A257890.P211660327249746683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (A063237 (n + 1)).toNat + 1 + (n : ℤ)

end

end A257890.P211660327249746683

namespace A257890

/-- `A114095(A063237(n+1))+1+n` -/
def P211660327249746683.Spec : Prop :=
  ∀ n, P211660327249746683.a n = A257890 n

end A257890

/-! ## A257890.P13628373109045868356

`A114095(A113803(n+1))+1+n`
-/

namespace A257890.P13628373109045868356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (A113803 (n + 1)).toNat + 1 + (n : ℤ)

end

end A257890.P13628373109045868356

namespace A257890

/-- `A114095(A113803(n+1))+1+n` -/
def P13628373109045868356.Spec : Prop :=
  ∀ n, P13628373109045868356.a n = A257890 n

end A257890

/-!
# A257891: Numbers that are products of at least three consecutive primes.

The programs for A257891, there is no canonical definition to state claims against.
-/

/-! ## A257891.P15286130792817623273

`∩[A097889(n+1), A378885(n+1)]`
-/

namespace A257891.P15286130792817623273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257891.P15286130792817623273

/-! ## A257891.P11881283080418986552

`filter[A097889(n+1), A354996(#)]`
-/

namespace A257891.P11881283080418986552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A257891.P11881283080418986552

/-! ## A257891.P9392648164539501579

`filter[A097889(n+1), A359835(#)]`
-/

namespace A257891.P9392648164539501579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359835 (f1 j).toNat = 1) n)

end

end A257891.P9392648164539501579

/-! ## A257891.P18322876430449063391

`∩[A097889(n+1), A295102(n+1)]`
-/

namespace A257891.P18322876430449063391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257891.P18322876430449063391

/-! ## A257891.P6120689775358388044

`∩[A164596(n+1), A260442(n)]`
-/

namespace A257891.P6120689775358388044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257891.P6120689775358388044

/-!
# A257892: Numbers n with property that A062234(n) = A062234(n+1) = A062234(n+2) = A062234(n+3).

The programs for A257892, there is no canonical definition to state claims against.
-/

/-! ## A257892.P6509266673724526493

`A000720(A372248(n+1))`
-/

namespace A257892.P6509266673724526493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A372248 (n + 1)).toNat

end

end A257892.P6509266673724526493

/-! ## A257892.P14845451620801195882

`filter[A392523(n+2), A132194(#)]`
-/

namespace A257892.P14845451620801195882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A257892.P14845451620801195882

/-!
# A257893: Pandigital numbers reordered so that the numbers A050278(n)/2^k, where 2^k||A050278(n), appear in nondecreasing order.

The programs for A257893, there is no canonical definition to state claims against.
-/

/-! ## A257893.P5730967077981019029

`A257914(A094556(n)+A094541(n))`
-/

namespace A257893.P5730967077981019029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257914 (A094556 n + A094541 n).toNat

end

end A257893.P5730967077981019029

/-!
# A257895: Square array read by ascending antidiagonals where T(n,k) is the mean number of maxima in a set of n random k-dimensional real vectors (denominators).

The programs for A257895, there is no canonical definition to state claims against.
-/

/-! ## A257895.P8788098635510113247

`A322266(A038722(n+1))%A284149(n+1)`
-/

namespace A257895.P8788098635510113247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322266 (A038722 (n + 1)).toNat) (A284149 (n + 1))

end

end A257895.P8788098635510113247

/-! ## A257895.P9752703101978351155

`A322266(A038722(n+1))^A014963(A025747(n))`
-/

namespace A257895.P9752703101978351155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322266 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (A025747 n).toNat : ℤ)

end

end A257895.P9752703101978351155

/-! ## A257895.P7663312882631557217

`A322266(A038722(n+1)%A226364(2*n+1))`
-/

namespace A257895.P7663312882631557217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (Int.tmod (A038722 (n + 1)) (A226364 (2 * n + 1))).toNat

end

end A257895.P7663312882631557217

/-! ## A257895.P848995317019409161

`A001222(A061275(n+1))*A322266(A038722(n+1))`
-/

namespace A257895.P848995317019409161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061275 (n + 1)).toNat * A322266 (A038722 (n + 1)).toNat

end

end A257895.P848995317019409161

/-! ## A257895.P10130236074729700080

`∏{e}[A079474(n+1), A002805(#)]`
-/

namespace A257895.P10130236074729700080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002805 (Nat.factorization (f1 n).natAbs p)

end

end A257895.P10130236074729700080

