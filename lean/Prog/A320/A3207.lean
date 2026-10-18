import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A320700: Odd numbers whose product of prime indices is a nonprime prime power (A246547).

The programs for A320700, there is no canonical definition to state claims against.
-/

/-! ## A320700.P963662772657687657

`eq[1, A056674(A003963(n^(n%2)))]`
-/

namespace A320700.P963662772657687657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A003963 (n ^ (n % 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320700.P963662772657687657

/-! ## A320700.P8461153760644858672

`eq[(-1)^n, A056674(A003963(n+1))]+1`
-/

namespace A320700.P8461153760644858672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320700.P8461153760644858672

/-! ## A320700.P6246332690718882298

`record[A000265(A320699(n+1))]`
-/

namespace A320700.P6246332690718882298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A320699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320700.P6246332690718882298

/-! ## A320700.P14400508445298027666

`filter[A320699(n+1), A000035(#)]`
-/

namespace A320700.P14400508445298027666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A320700.P14400508445298027666

/-!
# A320701: Indices of primes followed by a gap (distance to next larger prime) of 6.

The programs for A320701, the canonical program `A320701.P6478986865021011395` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320701 has offset 1).

The definition of A320701 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A031924, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320701.P6478986865021011395

`A000720(A031924(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A320701

/-- `A000720(A031924(n+1))` -/
def P6478986865021011395.Spec : Prop :=
  ∀ n, P6478986865021011395.a n = A320701 (n + 1)

theorem P6478986865021011395.correct : P6478986865021011395.Spec := by
  intro n
  simp only [A320701, Nat.add_sub_cancel]

end A320701

/-! ## A320701.P3749496357560130267

`eq[6, A001223(n+1)]+1`
-/

namespace A320701.P3749496357560130267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320701.P3749496357560130267

namespace A320701

/-- `eq[6, A001223(n+1)]+1` -/
def P3749496357560130267.Spec : Prop :=
  ∀ n, (P3749496357560130267.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P16394906963944602493

`∩[A098015(n+1), A270190(n+1)]`
-/

namespace A320701.P16394906963944602493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320701.P16394906963944602493

namespace A320701

/-- `∩[A098015(n+1), A270190(n+1)]` -/
def P16394906963944602493.Spec : Prop :=
  ∀ n, (P16394906963944602493.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P17281424045065107486

`eq[6, A075526(n)]`
-/

namespace A320701.P17281424045065107486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P17281424045065107486

namespace A320701

/-- `eq[6, A075526(n)]` -/
def P17281424045065107486.Spec : Prop :=
  ∀ n, (P17281424045065107486.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P5740089314858833449

`eq[6, Δ[A028815(n)]]`
-/

namespace A320701.P5740089314858833449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P5740089314858833449

namespace A320701

/-- `eq[6, Δ[A028815(n)]]` -/
def P5740089314858833449.Spec : Prop :=
  ∀ n, (P5740089314858833449.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P16059366928975142997

`eq[6, A054541(n+1)]`
-/

namespace A320701.P16059366928975142997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P16059366928975142997

namespace A320701

/-- `eq[6, A054541(n+1)]` -/
def P16059366928975142997.Spec : Prop :=
  ∀ n, (P16059366928975142997.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P17221187404131075250

`eq[6, A125266(n+1)]`
-/

namespace A320701.P17221187404131075250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P17221187404131075250

namespace A320701

/-- `eq[6, A125266(n+1)]` -/
def P17221187404131075250.Spec : Prop :=
  ∀ n, (P17221187404131075250.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P7850375158519671651

`eq[7, A076368(n+1)]`
-/

namespace A320701.P7850375158519671651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P7850375158519671651

namespace A320701

/-- `eq[7, A076368(n+1)]` -/
def P7850375158519671651.Spec : Prop :=
  ∀ n, (P7850375158519671651.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P10028650970649933083

`eq[7, A230846(n+1)]`
-/

namespace A320701.P10028650970649933083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P10028650970649933083

namespace A320701

/-- `eq[7, A230846(n+1)]` -/
def P10028650970649933083.Spec : Prop :=
  ∀ n, (P10028650970649933083.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P12363214483570767503

`eq[7, A230847(n+1)]`
-/

namespace A320701.P12363214483570767503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P12363214483570767503

namespace A320701

/-- `eq[7, A230847(n+1)]` -/
def P12363214483570767503.Spec : Prop :=
  ∀ n, (P12363214483570767503.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P14464234961426911924

`eq[6, A230849(2*n+1)]`
-/

namespace A320701.P14464234961426911924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P14464234961426911924

namespace A320701

/-- `eq[6, A230849(2*n+1)]` -/
def P14464234961426911924.Spec : Prop :=
  ∀ n, (P14464234961426911924.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P1967475400103684367

`eq[5, Δ[A014689(n+1)]]+1`
-/

namespace A320701.P1967475400103684367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320701.P1967475400103684367

namespace A320701

/-- `eq[5, Δ[A014689(n+1)]]+1` -/
def P1967475400103684367.Spec : Prop :=
  ∀ n, (P1967475400103684367.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P16105847650372898030

`eq[6, Δ[A000040(n+1)]]+1`
-/

namespace A320701.P16105847650372898030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320701.P16105847650372898030

namespace A320701

/-- `eq[6, Δ[A000040(n+1)]]+1` -/
def P16105847650372898030.Spec : Prop :=
  ∀ n, (P16105847650372898030.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P18153235008996040021

`eq[A048852(n), A064161(n+1)]`
-/

namespace A320701.P18153235008996040021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320701.P18153235008996040021

namespace A320701

/-- `eq[A048852(n), A064161(n+1)]` -/
def P18153235008996040021.Spec : Prop :=
  ∀ n, (P18153235008996040021.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P2164439148594543261

`eq[A048852(n), A138636(n+1)]`
-/

namespace A320701.P2164439148594543261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320701.P2164439148594543261

namespace A320701

/-- `eq[A048852(n), A138636(n+1)]` -/
def P2164439148594543261.Spec : Prop :=
  ∀ n, (P2164439148594543261.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P17506396314161993570

`eq[A227127(n), A230628(n+1)]`
-/

namespace A320701.P17506396314161993570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320701.P17506396314161993570

namespace A320701

/-- `eq[A227127(n), A230628(n+1)]` -/
def P17506396314161993570.Spec : Prop :=
  ∀ n, (P17506396314161993570.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P18179127360852315036

`A009056(eq[1, A028334(n+2)-2])`
-/

namespace A320701.P18179127360852315036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320701.P18179127360852315036

namespace A320701

/-- `A009056(eq[1, A028334(n+2)-2])` -/
def P18179127360852315036.Spec : Prop :=
  ∀ n, P18179127360852315036.a n = A320701 (n + 1)

end A320701

/-! ## A320701.P15655393708987405933

`eq[6, A000040(n+1)-A008578(n+1)]`
-/

namespace A320701.P15655393708987405933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P15655393708987405933

namespace A320701

/-- `eq[6, A000040(n+1)-A008578(n+1)]` -/
def P15655393708987405933.Spec : Prop :=
  ∀ n, (P15655393708987405933.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P6992848701325796382

`eq[6, A100484(n+1)-A011974(n+1)]`
-/

namespace A320701.P6992848701325796382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A011974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P6992848701325796382

namespace A320701

/-- `eq[6, A100484(n+1)-A011974(n+1)]` -/
def P6992848701325796382.Spec : Prop :=
  ∀ n, (P6992848701325796382.a n : ℤ) = A320701 (n + 1)

end A320701

/-! ## A320701.P16042516164104681937

`eq[7, A008864(n+1)-A008578(n+1)]`
-/

namespace A320701.P16042516164104681937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320701.P16042516164104681937

namespace A320701

/-- `eq[7, A008864(n+1)-A008578(n+1)]` -/
def P16042516164104681937.Spec : Prop :=
  ∀ n, (P16042516164104681937.a n : ℤ) = A320701 (n + 1)

end A320701

/-!
# A320702: Indices of primes followed by a gap (distance to next larger prime) of 8.

The programs for A320702, the canonical program `A320702.P16815329921572178151` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320702 has offset 1).

The definition of A320702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320702.P13226876770579937910

`A000720(A031926(n+1))`
-/

namespace A320702.P13226876770579937910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031926 (n + 1)).toNat

end

end A320702.P13226876770579937910

namespace A320702

/-- `A000720(A031926(n+1))` -/
def P13226876770579937910.Spec : Prop :=
  ∀ n, P13226876770579937910.a n = A320702 (n + 1)

end A320702

/-! ## A320702.P16815329921572178151

`eq[8, A001223(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320702

/-- `eq[8, A001223(n+1)]+1` -/
def P16815329921572178151.Spec : Prop :=
  ∀ n, (P16815329921572178151.a n : ℤ) = A320702 (n + 1)

theorem P16815329921572178151.correct : P16815329921572178151.Spec := by
  intro n
  simp only [A320702, Nat.add_sub_cancel]

end A320702

/-! ## A320702.P7350989840412765064

`eq[8, A075526(n)]`
-/

namespace A320702.P7350989840412765064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P7350989840412765064

namespace A320702

/-- `eq[8, A075526(n)]` -/
def P7350989840412765064.Spec : Prop :=
  ∀ n, (P7350989840412765064.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P6703956388172829372

`eq[8, A054541(n+1)]`
-/

namespace A320702.P6703956388172829372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P6703956388172829372

namespace A320702

/-- `eq[8, A054541(n+1)]` -/
def P6703956388172829372.Spec : Prop :=
  ∀ n, (P6703956388172829372.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P10980200391789606850

`eq[8, A125266(n+1)]`
-/

namespace A320702.P10980200391789606850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P10980200391789606850

namespace A320702

/-- `eq[8, A125266(n+1)]` -/
def P10980200391789606850.Spec : Prop :=
  ∀ n, (P10980200391789606850.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P14799680678573485982

`eq[8, A181346(n+1)]`
-/

namespace A320702.P14799680678573485982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P14799680678573485982

namespace A320702

/-- `eq[8, A181346(n+1)]` -/
def P14799680678573485982.Spec : Prop :=
  ∀ n, (P14799680678573485982.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P15939508620153799885

`eq[9, A076368(n+1)]`
-/

namespace A320702.P15939508620153799885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P15939508620153799885

namespace A320702

/-- `eq[9, A076368(n+1)]` -/
def P15939508620153799885.Spec : Prop :=
  ∀ n, (P15939508620153799885.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P3313501588293281403

`eq[9, A230846(n+1)]`
-/

namespace A320702.P3313501588293281403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P3313501588293281403

namespace A320702

/-- `eq[9, A230846(n+1)]` -/
def P3313501588293281403.Spec : Prop :=
  ∀ n, (P3313501588293281403.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P8544356973702459769

`eq[9, A230847(n+1)]`
-/

namespace A320702.P8544356973702459769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P8544356973702459769

namespace A320702

/-- `eq[9, A230847(n+1)]` -/
def P8544356973702459769.Spec : Prop :=
  ∀ n, (P8544356973702459769.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P12271265389339138565

`eq[7, A176246(n+1)]+2`
-/

namespace A320702.P12271265389339138565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A320702.P12271265389339138565

namespace A320702

/-- `eq[7, A176246(n+1)]+2` -/
def P12271265389339138565.Spec : Prop :=
  ∀ n, (P12271265389339138565.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P16566982720904074863

`eq[8, A230849(2*n+1)]`
-/

namespace A320702.P16566982720904074863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P16566982720904074863

namespace A320702

/-- `eq[8, A230849(2*n+1)]` -/
def P16566982720904074863.Spec : Prop :=
  ∀ n, (P16566982720904074863.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P3873873516107337882

`eq[8, A001223(A028310(n))]`
-/

namespace A320702.P3873873516107337882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320702.P3873873516107337882

namespace A320702

/-- `eq[8, A001223(A028310(n))]` -/
def P3873873516107337882.Spec : Prop :=
  ∀ n, (P3873873516107337882.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P17508822625737884739

`eq[A227127(n), A273315(n)]`
-/

namespace A320702.P17508822625737884739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320702.P17508822625737884739

namespace A320702

/-- `eq[A227127(n), A273315(n)]` -/
def P17508822625737884739.Spec : Prop :=
  ∀ n, (P17508822625737884739.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P8533503670338041002

`eq[A227127(n), A273481(n)]`
-/

namespace A320702.P8533503670338041002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320702.P8533503670338041002

namespace A320702

/-- `eq[A227127(n), A273481(n)]` -/
def P8533503670338041002.Spec : Prop :=
  ∀ n, (P8533503670338041002.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P12442550749123612147

`eq[A048852(n), A120700(n+1)]`
-/

namespace A320702.P12442550749123612147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320702.P12442550749123612147

namespace A320702

/-- `eq[A048852(n), A120700(n+1)]` -/
def P12442550749123612147.Spec : Prop :=
  ∀ n, (P12442550749123612147.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P9851977496682450337

`A009056(eq[2, A028334(n+2)-2])`
-/

namespace A320702.P9851977496682450337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320702.P9851977496682450337

namespace A320702

/-- `A009056(eq[2, A028334(n+2)-2])` -/
def P9851977496682450337.Spec : Prop :=
  ∀ n, P9851977496682450337.a n = A320702 (n + 1)

end A320702

/-! ## A320702.P5449995484391301509

`A009056(eq[2, A028334(n+2)/2])`
-/

namespace A320702.P5449995484391301509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028334 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320702.P5449995484391301509

namespace A320702

/-- `A009056(eq[2, A028334(n+2)/2])` -/
def P5449995484391301509.Spec : Prop :=
  ∀ n, P5449995484391301509.a n = A320702 (n + 1)

end A320702

/-! ## A320702.P15327678591264555892

`eq[2*A001749(n+1), A048852(n)]`
-/

namespace A320702.P15327678591264555892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320702.P15327678591264555892

namespace A320702

/-- `eq[2*A001749(n+1), A048852(n)]` -/
def P15327678591264555892.Spec : Prop :=
  ∀ n, (P15327678591264555892.a n : ℤ) = A320702 (n + 1)

end A320702

/-! ## A320702.P8745572793383717122

`eq[2*A062876(n+1), A048852(n)]`
-/

namespace A320702.P8745572793383717122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320702.P8745572793383717122

namespace A320702

/-- `eq[2*A062876(n+1), A048852(n)]` -/
def P8745572793383717122.Spec : Prop :=
  ∀ n, (P8745572793383717122.a n : ℤ) = A320702 (n + 1)

end A320702

/-!
# A320703: Indices of primes followed by a gap (distance to next larger prime) of 10.

The programs for A320703, the canonical program `A320703.P14247558582401174259` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320703 has offset 1).

The definition of A320703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320703.P10061416235881455939

`A000720(A031928(n+1))`
-/

namespace A320703.P10061416235881455939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031928 (n + 1)).toNat

end

end A320703.P10061416235881455939

namespace A320703

/-- `A000720(A031928(n+1))` -/
def P10061416235881455939.Spec : Prop :=
  ∀ n, P10061416235881455939.a n = A320703 (n + 1)

end A320703

/-! ## A320703.P14247558582401174259

`eq[10, A001223(n+10)]+10`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320703

/-- `eq[10, A001223(n+10)]+10` -/
def P14247558582401174259.Spec : Prop :=
  ∀ n, (P14247558582401174259.a n : ℤ) = A320703 (n + 1)

theorem P14247558582401174259.correct : P14247558582401174259.Spec := by
  intro n
  simp only [A320703, Nat.add_sub_cancel]

end A320703

/-! ## A320703.P10517188022371368303

`∩[A098015(n+1), A107730(n+1)]`
-/

namespace A320703.P10517188022371368303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320703.P10517188022371368303

namespace A320703

/-- `∩[A098015(n+1), A107730(n+1)]` -/
def P10517188022371368303.Spec : Prop :=
  ∀ n, (P10517188022371368303.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P3297448258005762938

`eq[10, A075526(n)]`
-/

namespace A320703.P3297448258005762938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320703.P3297448258005762938

namespace A320703

/-- `eq[10, A075526(n)]` -/
def P3297448258005762938.Spec : Prop :=
  ∀ n, (P3297448258005762938.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P2921351565502487910

`eq[10, A054541(n+1)]`
-/

namespace A320703.P2921351565502487910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320703.P2921351565502487910

namespace A320703

/-- `eq[10, A054541(n+1)]` -/
def P2921351565502487910.Spec : Prop :=
  ∀ n, (P2921351565502487910.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P16498027498107793546

`eq[5, A028334(n+2)]+2`
-/

namespace A320703.P16498027498107793546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A320703.P16498027498107793546

namespace A320703

/-- `eq[5, A028334(n+2)]+2` -/
def P16498027498107793546.Spec : Prop :=
  ∀ n, (P16498027498107793546.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P18127382498010798770

`eq[10, A001223(A028310(n))]`
-/

namespace A320703.P18127382498010798770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320703.P18127382498010798770

namespace A320703

/-- `eq[10, A001223(A028310(n))]` -/
def P18127382498010798770.Spec : Prop :=
  ∀ n, (P18127382498010798770.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P10349826645070572815

`eq[10, A000010(A230847(n+1))]`
-/

namespace A320703.P10349826645070572815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A230847 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320703.P10349826645070572815

namespace A320703

/-- `eq[10, A000010(A230847(n+1))]` -/
def P10349826645070572815.Spec : Prop :=
  ∀ n, (P10349826645070572815.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P16008358402790505825

`eq[A040020(n), A125266(n+1)]`
-/

namespace A320703.P16008358402790505825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P16008358402790505825

namespace A320703

/-- `eq[A040020(n), A125266(n+1)]` -/
def P16008358402790505825.Spec : Prop :=
  ∀ n, (P16008358402790505825.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P15266874452934073832

`eq[A048852(n), A142342(n+1)]`
-/

namespace A320703.P15266874452934073832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P15266874452934073832

namespace A320703

/-- `eq[A048852(n), A142342(n+1)]` -/
def P15266874452934073832.Spec : Prop :=
  ∀ n, (P15266874452934073832.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P4609237340641312744

`eq[A076368(n+1), A168095(n)]`
-/

namespace A320703.P4609237340641312744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P4609237340641312744

namespace A320703

/-- `eq[A076368(n+1), A168095(n)]` -/
def P4609237340641312744.Spec : Prop :=
  ∀ n, (P4609237340641312744.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P2424894616288524295

`eq[A030696(n+1), A227127(n)]`
-/

namespace A320703.P2424894616288524295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P2424894616288524295

namespace A320703

/-- `eq[A030696(n+1), A227127(n)]` -/
def P2424894616288524295.Spec : Prop :=
  ∀ n, (P2424894616288524295.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P6798260759197457451

`eq[A168095(n), A230846(n+1)]`
-/

namespace A320703.P6798260759197457451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P6798260759197457451

namespace A320703

/-- `eq[A168095(n), A230846(n+1)]` -/
def P6798260759197457451.Spec : Prop :=
  ∀ n, (P6798260759197457451.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P10492155838041157427

`eq[A168095(n), A230847(n+1)]`
-/

namespace A320703.P10492155838041157427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P10492155838041157427

namespace A320703

/-- `eq[A168095(n), A230847(n+1)]` -/
def P10492155838041157427.Spec : Prop :=
  ∀ n, (P10492155838041157427.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P11145639050435262535

`eq[A125266(n+1), A329503(n)]`
-/

namespace A320703.P11145639050435262535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P11145639050435262535

namespace A320703

/-- `eq[A125266(n+1), A329503(n)]` -/
def P11145639050435262535.Spec : Prop :=
  ∀ n, (P11145639050435262535.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P6007348482173297123

`eq[A125266(n+1), A329517(n)]`
-/

namespace A320703.P6007348482173297123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P6007348482173297123

namespace A320703

/-- `eq[A125266(n+1), A329517(n)]` -/
def P6007348482173297123.Spec : Prop :=
  ∀ n, (P6007348482173297123.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P12473527883888418838

`lt[A022837(A054541(n+1)+2), 1]`
-/

namespace A320703.P12473527883888418838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 (A054541 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320703.P12473527883888418838

namespace A320703

/-- `lt[A022837(A054541(n+1)+2), 1]` -/
def P12473527883888418838.Spec : Prop :=
  ∀ n, (P12473527883888418838.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P6606376682702946940

`eq[A217789(n+1), A230846(n+1)]`
-/

namespace A320703.P6606376682702946940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P6606376682702946940

namespace A320703

/-- `eq[A217789(n+1), A230846(n+1)]` -/
def P6606376682702946940.Spec : Prop :=
  ∀ n, (P6606376682702946940.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P933282078330441971

`eq[A217789(n+1), A230847(n+1)]`
-/

namespace A320703.P933282078330441971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P933282078330441971

namespace A320703

/-- `eq[A217789(n+1), A230847(n+1)]` -/
def P933282078330441971.Spec : Prop :=
  ∀ n, (P933282078330441971.a n : ℤ) = A320703 (n + 1)

end A320703

/-! ## A320703.P3653451595301999763

`eq[A125266(n+1)+2, A040030(n)]`
-/

namespace A320703.P3653451595301999763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320703.P3653451595301999763

namespace A320703

/-- `eq[A125266(n+1)+2, A040030(n)]` -/
def P3653451595301999763.Spec : Prop :=
  ∀ n, (P3653451595301999763.a n : ℤ) = A320703 (n + 1)

end A320703

/-!
# A320704: Indices of primes followed by a gap (distance to next larger prime) of 12.

The programs for A320704, the canonical program `A320704.P1487663062350906858` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320704 has offset 1).

The definition of A320704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320704.P2856127522608709787

`A000720(A031930(n+1))`
-/

namespace A320704.P2856127522608709787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031930 (n + 1)).toNat

end

end A320704.P2856127522608709787

namespace A320704

/-- `A000720(A031930(n+1))` -/
def P2856127522608709787.Spec : Prop :=
  ∀ n, P2856127522608709787.a n = A320704 (n + 1)

end A320704

/-! ## A320704.P1487663062350906858

`eq[12, A001223(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320704

/-- `eq[12, A001223(n+1)]+1` -/
def P1487663062350906858.Spec : Prop :=
  ∀ n, (P1487663062350906858.a n : ℤ) = A320704 (n + 1)

theorem P1487663062350906858.correct : P1487663062350906858.Spec := by
  intro n
  simp only [A320704, Nat.add_sub_cancel]

end A320704

/-! ## A320704.P946622761572172690

`eq[12, A075526(n)]`
-/

namespace A320704.P946622761572172690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320704.P946622761572172690

namespace A320704

/-- `eq[12, A075526(n)]` -/
def P946622761572172690.Spec : Prop :=
  ∀ n, (P946622761572172690.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P5636268567558655248

`eq[12, A054541(n+1)]`
-/

namespace A320704.P5636268567558655248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320704.P5636268567558655248

namespace A320704

/-- `eq[12, A054541(n+1)]` -/
def P5636268567558655248.Spec : Prop :=
  ∀ n, (P5636268567558655248.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P6033024472694035665

`eq[11, A176246(n+1)]+2`
-/

namespace A320704.P6033024472694035665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A320704.P6033024472694035665

namespace A320704

/-- `eq[11, A176246(n+1)]+2` -/
def P6033024472694035665.Spec : Prop :=
  ∀ n, (P6033024472694035665.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P11509821982652461872

`eq[A040030(n), A125266(n+1)]`
-/

namespace A320704.P11509821982652461872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P11509821982652461872

namespace A320704

/-- `eq[A040030(n), A125266(n+1)]` -/
def P11509821982652461872.Spec : Prop :=
  ∀ n, (P11509821982652461872.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P18399931543671438865

`eq[A076368(n+1), A168096(n)]`
-/

namespace A320704.P18399931543671438865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P18399931543671438865

namespace A320704

/-- `eq[A076368(n+1), A168096(n)]` -/
def P18399931543671438865.Spec : Prop :=
  ∀ n, (P18399931543671438865.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P1362622475708752284

`eq[A168096(n), A230846(n+1)]`
-/

namespace A320704.P1362622475708752284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P1362622475708752284

namespace A320704

/-- `eq[A168096(n), A230846(n+1)]` -/
def P1362622475708752284.Spec : Prop :=
  ∀ n, (P1362622475708752284.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P4704242106019725232

`eq[A168096(n), A230847(n+1)]`
-/

namespace A320704.P4704242106019725232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P4704242106019725232

namespace A320704

/-- `eq[A168096(n), A230847(n+1)]` -/
def P4704242106019725232.Spec : Prop :=
  ∀ n, (P4704242106019725232.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P3244783136761048519

`eq[A125266(n+1), A329514(n)]`
-/

namespace A320704.P3244783136761048519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P3244783136761048519

namespace A320704

/-- `eq[A125266(n+1), A329514(n)]` -/
def P3244783136761048519.Spec : Prop :=
  ∀ n, (P3244783136761048519.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P7054493010997360083

`eq[A040020(n)+2, A125266(n+1)]`
-/

namespace A320704.P7054493010997360083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P7054493010997360083

namespace A320704

/-- `eq[A040020(n)+2, A125266(n+1)]` -/
def P7054493010997360083.Spec : Prop :=
  ∀ n, (P7054493010997360083.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P15684203494839152169

`eq[A125266(n+1)+2, A040042(n)]`
-/

namespace A320704.P15684203494839152169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P15684203494839152169

namespace A320704

/-- `eq[A125266(n+1)+2, A040042(n)]` -/
def P15684203494839152169.Spec : Prop :=
  ∀ n, (P15684203494839152169.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P16248842206862290693

`eq[A076368(n+1)+2, A168097(n)]`
-/

namespace A320704.P16248842206862290693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P16248842206862290693

namespace A320704

/-- `eq[A076368(n+1)+2, A168097(n)]` -/
def P16248842206862290693.Spec : Prop :=
  ∀ n, (P16248842206862290693.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P8688943556175394766

`eq[A168095(n)+2, A076368(n+1)]`
-/

namespace A320704.P8688943556175394766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P8688943556175394766

namespace A320704

/-- `eq[A168095(n)+2, A076368(n+1)]` -/
def P8688943556175394766.Spec : Prop :=
  ∀ n, (P8688943556175394766.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P5348556863860589057

`eq[A230846(n+1)+2, A168097(n)]`
-/

namespace A320704.P5348556863860589057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P5348556863860589057

namespace A320704

/-- `eq[A230846(n+1)+2, A168097(n)]` -/
def P5348556863860589057.Spec : Prop :=
  ∀ n, (P5348556863860589057.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P10027400007275648773

`eq[A230847(n+1)+2, A168097(n)]`
-/

namespace A320704.P10027400007275648773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P10027400007275648773

namespace A320704

/-- `eq[A230847(n+1)+2, A168097(n)]` -/
def P10027400007275648773.Spec : Prop :=
  ∀ n, (P10027400007275648773.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P713424050391381706

`eq[A168095(n)+2, A230846(n+1)]`
-/

namespace A320704.P713424050391381706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P713424050391381706

namespace A320704

/-- `eq[A168095(n)+2, A230846(n+1)]` -/
def P713424050391381706.Spec : Prop :=
  ∀ n, (P713424050391381706.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P8236767004671515315

`eq[A168095(n)+2, A230847(n+1)]`
-/

namespace A320704.P8236767004671515315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P8236767004671515315

namespace A320704

/-- `eq[A168095(n)+2, A230847(n+1)]` -/
def P8236767004671515315.Spec : Prop :=
  ∀ n, (P8236767004671515315.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P9283056977618794481

`eq[2*A064161(n+1), A048852(n)]`
-/

namespace A320704.P9283056977618794481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P9283056977618794481

namespace A320704

/-- `eq[2*A064161(n+1), A048852(n)]` -/
def P9283056977618794481.Spec : Prop :=
  ∀ n, (P9283056977618794481.a n : ℤ) = A320704 (n + 1)

end A320704

/-! ## A320704.P15506301960261766654

`eq[2*A138636(n+1), A048852(n)]`
-/

namespace A320704.P15506301960261766654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320704.P15506301960261766654

namespace A320704

/-- `eq[2*A138636(n+1), A048852(n)]` -/
def P15506301960261766654.Spec : Prop :=
  ∀ n, (P15506301960261766654.a n : ℤ) = A320704 (n + 1)

end A320704

/-!
# A320705: Indices of primes followed by a gap (distance to next larger prime) of 14.

The programs for A320705, there is no canonical definition to state claims against.
-/

/-! ## A320705.P5864653580452794127

`A000720(A031932(n+1))`
-/

namespace A320705.P5864653580452794127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031932 (n + 1)).toNat

end

end A320705.P5864653580452794127

/-! ## A320705.P17371076868524834606

`eq[5, A344970(A001223(n+1)+1)]+1`
-/

namespace A320705.P17371076868524834606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (A001223 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320705.P17371076868524834606

/-! ## A320705.P9080642672821173659

`eq[14, A054541(n+1)]`
-/

namespace A320705.P9080642672821173659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320705.P9080642672821173659

/-! ## A320705.P16905923746508543073

`eq[A040042(n), A075526(n)]`
-/

namespace A320705.P16905923746508543073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P16905923746508543073

/-! ## A320705.P4030705095289759536

`eq[A040042(n), A125266(n+1)]`
-/

namespace A320705.P4030705095289759536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P4030705095289759536

/-! ## A320705.P6193702921666928543

`eq[A076368(n+1), A168097(n)]`
-/

namespace A320705.P6193702921666928543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P6193702921666928543

/-! ## A320705.P18243650557891122319

`eq[A168097(n), A230846(n+1)]`
-/

namespace A320705.P18243650557891122319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P18243650557891122319

/-! ## A320705.P9463973181556282240

`eq[A168097(n), A230847(n+1)]`
-/

namespace A320705.P9463973181556282240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P9463973181556282240

/-! ## A320705.P6233989068866326049

`eq[A125266(n+1), A329771(n)]`
-/

namespace A320705.P6233989068866326049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P6233989068866326049

/-! ## A320705.P7690954867485252882

`eq[A076368(n+1), A181404(n+1)]`
-/

namespace A320705.P7690954867485252882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P7690954867485252882

/-! ## A320705.P8953002473879902252

`eq[A125266(n+1), A134202(n+1)]`
-/

namespace A320705.P8953002473879902252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P8953002473879902252

/-! ## A320705.P10037780015624643208

`eq[A181404(n+1), A230846(n+1)]`
-/

namespace A320705.P10037780015624643208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P10037780015624643208

/-! ## A320705.P14205310824839463774

`eq[A181404(n+1), A230847(n+1)]`
-/

namespace A320705.P14205310824839463774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P14205310824839463774

/-! ## A320705.P1809253951626525374

`eq[A040030(n)+2, A125266(n+1)]`
-/

namespace A320705.P1809253951626525374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P1809253951626525374

/-! ## A320705.P11389844253916400470

`eq[A168096(n)+2, A076368(n+1)]`
-/

namespace A320705.P11389844253916400470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P11389844253916400470

/-! ## A320705.P7630899396979536726

`eq[A168096(n)+2, A230846(n+1)]`
-/

namespace A320705.P7630899396979536726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P7630899396979536726

/-! ## A320705.P5037372953710134960

`eq[A168096(n)+2, A230847(n+1)]`
-/

namespace A320705.P5037372953710134960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P5037372953710134960

/-! ## A320705.P1500120053880831708

`eq[A076368(n+1), A154031(n+4)]`
-/

namespace A320705.P1500120053880831708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154031 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P1500120053880831708

/-! ## A320705.P1417844702812320014

`eq[A154031(n+4), A230846(n+1)]`
-/

namespace A320705.P1417844702812320014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154031 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P1417844702812320014

/-! ## A320705.P6055704631236060876

`eq[A154031(n+4), A230847(n+1)]`
-/

namespace A320705.P6055704631236060876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154031 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320705.P6055704631236060876

/-!
# A320706: Indices of primes followed by a gap (distance to next larger prime) of 16.

The programs for A320706, there is no canonical definition to state claims against.
-/

/-! ## A320706.P12833830321806957507

`A000720(A031934(n+1))`
-/

namespace A320706.P12833830321806957507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031934 (n + 1)).toNat

end

end A320706.P12833830321806957507

/-! ## A320706.P8427786690551907816

`A000720(A031935(n)-1)`
-/

namespace A320706.P8427786690551907816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031935 n - 1).toNat

end

end A320706.P8427786690551907816

/-! ## A320706.P7541696479904432745

`A061395(p?[A031934(n+1)])`
-/

namespace A320706.P7541696479904432745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320706.P7541696479904432745

/-! ## A320706.P1152781614602356394

`∑{d}[A031934(n+1), A061395(#)]`
-/

namespace A320706.P1152781614602356394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320706.P1152781614602356394

/-! ## A320706.P11836051824626758264

`A061395(lcm(2, A031934(n+1))/2)`
-/

namespace A320706.P11836051824626758264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((Int.lcm 2 (A031934 (n + 1)) : ℚ) / 2)).toNat

end

end A320706.P11836051824626758264

/-! ## A320706.P320712348266684954

`A061395(A031934(n+1))%A033181(n+1)`
-/

namespace A320706.P320712348266684954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A031934 (n + 1)).toNat) (A033181 (n + 1))

end

end A320706.P320712348266684954

/-! ## A320706.P10970365735738798056

`A066328(p?[A031934(n+1)])`
-/

namespace A320706.P10970365735738798056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320706.P10970365735738798056

/-! ## A320706.P16917686486299041584

`∑{d}[A031934(n+1), A066328(#)]`
-/

namespace A320706.P16917686486299041584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A320706.P16917686486299041584

/-! ## A320706.P14041774643537902264

`A066328(2*A031934(n+1)-A031934(n+1))`
-/

namespace A320706.P14041774643537902264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A031934 (n + 1) - A031934 (n + 1)).toNat

end

end A320706.P14041774643537902264

/-! ## A320706.P15142987066722452396

`A061395(2*A031934(n+1))`
-/

namespace A320706.P15142987066722452396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A031934 (n + 1)).toNat

end

end A320706.P15142987066722452396

/-! ## A320706.P8028013872416619249

`A061395(lcm(2, A031934(n+1)))`
-/

namespace A320706.P8028013872416619249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A031934 (n + 1)))

end

end A320706.P8028013872416619249

/-! ## A320706.P8807952636066026305

`A066328(2*A031934(n+1))-1`
-/

namespace A320706.P8807952636066026305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A031934 (n + 1)).toNat - 1

end

end A320706.P8807952636066026305

/-!
# A320707: Indices of primes followed by a gap (distance to next larger prime) of 18.

The programs for A320707, there is no canonical definition to state claims against.
-/

/-! ## A320707.P14155137377338050476

`A000720(A031936(n+1))`
-/

namespace A320707.P14155137377338050476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031936 (n + 1)).toNat

end

end A320707.P14155137377338050476

/-! ## A320707.P2453823784161715736

`A000720(A031937(n)-1)`
-/

namespace A320707.P2453823784161715736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031937 n - 1).toNat

end

end A320707.P2453823784161715736

/-! ## A320707.P13119907108703794126

`A000720(xor(1, A031937(n)))`
-/

namespace A320707.P13119907108703794126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A031937 n)).toNat

end

end A320707.P13119907108703794126

/-! ## A320707.P13101111536109756959

`A061395(p?[A031936(n+1)])`
-/

namespace A320707.P13101111536109756959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320707.P13101111536109756959

/-! ## A320707.P12132010228618309524

`A304106(A031937(n)+1)`
-/

namespace A320707.P12132010228618309524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A031937 n + 1).toNat

end

end A320707.P12132010228618309524

/-! ## A320707.P15380220971404687447

`A061395(2*A031936(n+1))`
-/

namespace A320707.P15380220971404687447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A031936 (n + 1)).toNat

end

end A320707.P15380220971404687447

/-! ## A320707.P6317048755540954522

`A079067(A031937(n))`
-/

namespace A320707.P6317048755540954522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A031937 n).toNat

end

end A320707.P6317048755540954522

/-!
# A320708: Indices of primes followed by a gap (distance to next larger prime) of 20.

The programs for A320708, there is no canonical definition to state claims against.
-/

/-! ## A320708.P14647751305289490760

`A000720(A031938(n+1))`
-/

namespace A320708.P14647751305289490760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031938 (n + 1)).toNat

end

end A320708.P14647751305289490760

/-! ## A320708.P4694963555425091847

`A061395(p?[A031938(n+1)])`
-/

namespace A320708.P4694963555425091847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320708.P4694963555425091847

/-! ## A320708.P14053679712791154492

`A000720(A031939(n+1)-1)`
-/

namespace A320708.P14053679712791154492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031939 (n + 1) - 1).toNat

end

end A320708.P14053679712791154492

/-! ## A320708.P18065523591844479287

`A061395(or(1, A031938(n+1)))`
-/

namespace A320708.P18065523591844479287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A031938 (n + 1))).toNat

end

end A320708.P18065523591844479287

/-! ## A320708.P305506734865521314

`A061395(A031939(n+1)-20)`
-/

namespace A320708.P305506734865521314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A031939 (n + 1) - 20).toNat

end

end A320708.P305506734865521314

/-! ## A320708.P5582051238441805051

`A000720(xor(1, A031939(n+1)))`
-/

namespace A320708.P5582051238441805051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A031939 (n + 1))).toNat

end

end A320708.P5582051238441805051

/-! ## A320708.P313819532552809436

`∑{d}[A031938(n+1), A061395(#)]`
-/

namespace A320708.P313819532552809436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320708.P313819532552809436

/-! ## A320708.P8879950737910322040

`A061395(∏{d}[A031938(n+1), #])`
-/

namespace A320708.P8879950737910322040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A320708.P8879950737910322040

/-! ## A320708.P4319800358912658883

`A000720(∑{p}[A031939(n+1), A000010(#)])`
-/

namespace A320708.P4319800358912658883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p).toNat

end

end A320708.P4319800358912658883

/-! ## A320708.P15814615986281060223

`A061395(A031938(n+1))%A047825(n+1)`
-/

namespace A320708.P15814615986281060223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A031938 (n + 1)).toNat) (A047825 (n + 1))

end

end A320708.P15814615986281060223

/-! ## A320708.P10465349454131246593

`A066328(p?[A031938(n+1)])`
-/

namespace A320708.P10465349454131246593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320708.P10465349454131246593

/-! ## A320708.P8789402371391572079

`∑{d}[A031938(n+1), A066328(#)]`
-/

namespace A320708.P8789402371391572079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A320708.P8789402371391572079

/-! ## A320708.P10471540033707341824

`A066328(A031938(n+1)%A045937(n+1))`
-/

namespace A320708.P10471540033707341824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.tmod (A031938 (n + 1)) (A045937 (n + 1))).toNat

end

end A320708.P10471540033707341824

/-! ## A320708.P2821668817087252359

`A061395(A001285(n)*A031938(n+1))`
-/

namespace A320708.P2821668817087252359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001285 n * A031938 (n + 1)).toNat

end

end A320708.P2821668817087252359

/-! ## A320708.P5611428084143324084

`A061395(lcm(A001285(n), A031938(n+1)))`
-/

namespace A320708.P5611428084143324084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A001285 n) (A031938 (n + 1)))

end

end A320708.P5611428084143324084

/-! ## A320708.P5833966194691743088

`A061395(A031938(n+1)*A100429(n+1))`
-/

namespace A320708.P5833966194691743088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A031938 (n + 1) * A100429 (n + 1)).toNat

end

end A320708.P5833966194691743088

/-!
# A320709: Indices of primes followed by a gap (distance to next larger prime) of 22.

The programs for A320709, there is no canonical definition to state claims against.
-/

/-! ## A320709.P9436049275316814736

`A000720(A061779(n+1))`
-/

namespace A320709.P9436049275316814736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061779 (n + 1)).toNat

end

end A320709.P9436049275316814736

/-! ## A320709.P6013856531183356592

`A061395(p?[A061779(n+1)])`
-/

namespace A320709.P6013856531183356592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320709.P6013856531183356592

/-! ## A320709.P5943115071082824841

`A000720(A098976(n+1)-1)`
-/

namespace A320709.P5943115071082824841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098976 (n + 1) - 1).toNat

end

end A320709.P5943115071082824841

/-! ## A320709.P4457042423422801900

`A061395(or(1, A061779(n+1)))`
-/

namespace A320709.P4457042423422801900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A061779 (n + 1))).toNat

end

end A320709.P4457042423422801900

/-! ## A320709.P6007792282050668203

`A000720(xor(1, A098976(n+1)))`
-/

namespace A320709.P6007792282050668203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A098976 (n + 1))).toNat

end

end A320709.P6007792282050668203

/-! ## A320709.P1685828385209992711

`A061395(A098976(n+1)-22)`
-/

namespace A320709.P1685828385209992711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A098976 (n + 1) - 22).toNat

end

end A320709.P1685828385209992711

/-! ## A320709.P15412797986906106941

`∑{d}[A061779(n+1), A061395(#)]`
-/

namespace A320709.P15412797986906106941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320709.P15412797986906106941

/-! ## A320709.P8891813656697765458

`A304106(A098976(n+1)+1)`
-/

namespace A320709.P8891813656697765458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A098976 (n + 1) + 1).toNat

end

end A320709.P8891813656697765458

/-! ## A320709.P12777270027791011975

`A061395(2*A061779(n+1))`
-/

namespace A320709.P12777270027791011975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A061779 (n + 1)).toNat

end

end A320709.P12777270027791011975

/-!
# A320710: Indices of primes followed by a gap (distance to next larger prime) of 24.

The programs for A320710, there is no canonical definition to state claims against.
-/

/-! ## A320710.P14815145611393551896

`A000720(A098974(n+1))`
-/

namespace A320710.P14815145611393551896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098974 (n + 1)).toNat

end

end A320710.P14815145611393551896

/-! ## A320710.P2480956783185568436

`A061395(p?[A098974(n+1)])`
-/

namespace A320710.P2480956783185568436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320710.P2480956783185568436

/-! ## A320710.P15210236926248356250

`A000720(A126720(n+1)-1)`
-/

namespace A320710.P15210236926248356250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126720 (n + 1) - 1).toNat

end

end A320710.P15210236926248356250

/-! ## A320710.P10918520495444761640

`A061395(or(1, A098974(n+1)))`
-/

namespace A320710.P10918520495444761640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A098974 (n + 1))).toNat

end

end A320710.P10918520495444761640

/-! ## A320710.P9131551367357252126

`A000720(xor(1, A126720(n+1)))`
-/

namespace A320710.P9131551367357252126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A126720 (n + 1))).toNat

end

end A320710.P9131551367357252126

/-! ## A320710.P7905689710838698153

`∑{d}[A098974(n+1), A061395(#)]`
-/

namespace A320710.P7905689710838698153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320710.P7905689710838698153

/-! ## A320710.P5576845484849214882

`A000720(A000010(A126720(n+1)))`
-/

namespace A320710.P5576845484849214882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A126720 (n + 1)).toNat).toNat

end

end A320710.P5576845484849214882

/-! ## A320710.P12658442730265027032

`A329622(A126720(n+1))`
-/

namespace A320710.P12658442730265027032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A126720 (n + 1)).toNat

end

end A320710.P12658442730265027032

/-! ## A320710.P10183192785235346912

`A304106(A126720(n+1)+1)`
-/

namespace A320710.P10183192785235346912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A126720 (n + 1) + 1).toNat

end

end A320710.P10183192785235346912

/-!
# A320711: Indices of primes followed by a gap (distance to next larger prime) of 26.

The programs for A320711, there is no canonical definition to state claims against.
-/

/-! ## A320711.P4438329222799656469

`A000720(A124594(n+1))`
-/

namespace A320711.P4438329222799656469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124594 (n + 1)).toNat

end

end A320711.P4438329222799656469

/-! ## A320711.P8646641989855020840

`A061395(p?[A124594(n+1)])`
-/

namespace A320711.P8646641989855020840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320711.P8646641989855020840

/-! ## A320711.P15204325544842486132

`A061395(or(1, A124594(n+1)))`
-/

namespace A320711.P15204325544842486132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A124594 (n + 1))).toNat

end

end A320711.P15204325544842486132

/-! ## A320711.P8104050836879974716

`∑{d}[A124594(n+1), A061395(#)]`
-/

namespace A320711.P8104050836879974716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320711.P8104050836879974716

/-! ## A320711.P10449349550671953707

`A061395(∏{d}[A124594(n+1), #])`
-/

namespace A320711.P10449349550671953707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A320711.P10449349550671953707

/-! ## A320711.P16782156844774476139

`A061395(∑{p}[A124594(n+1), #])`
-/

namespace A320711.P16782156844774476139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A320711.P16782156844774476139

/-! ## A320711.P11926043067110351163

`A061395(∏{p}[A124594(n+1), #])`
-/

namespace A320711.P11926043067110351163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A320711.P11926043067110351163

/-! ## A320711.P4683075754408791115

`A061395(A124594(ceil(1/(n+1)+n)))`
-/

namespace A320711.P4683075754408791115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A124594 ⌈1 / (n + 1 : ℚ) + (n : ℚ)⌉.toNat).toNat

end

end A320711.P4683075754408791115

/-! ## A320711.P5989794286572688669

`A061395(A124594(n+1))%A031935(n)`
-/

namespace A320711.P5989794286572688669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A124594 (n + 1)).toNat) (A031935 n)

end

end A320711.P5989794286572688669

/-!
# A320712: Indices of primes followed by a gap (distance to next larger prime) of 28.

The programs for A320712, there is no canonical definition to state claims against.
-/

/-! ## A320712.P13671791042668934097

`A000720(A124595(n+1))`
-/

namespace A320712.P13671791042668934097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124595 (n + 1)).toNat

end

end A320712.P13671791042668934097

/-! ## A320712.P6609763072532361788

`A061395(p?[A124595(n+1)])`
-/

namespace A320712.P6609763072532361788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320712.P6609763072532361788

/-! ## A320712.P5376456761725986806

`A061395(or(1, A124595(n+1)))`
-/

namespace A320712.P5376456761725986806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A124595 (n + 1))).toNat

end

end A320712.P5376456761725986806

/-! ## A320712.P9415617577794659595

`∑{d}[A124595(n+1), A061395(#)]`
-/

namespace A320712.P9415617577794659595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320712.P9415617577794659595

/-! ## A320712.P11293119096971957883

`A061395(∏{d}[A124595(n+1), #])`
-/

namespace A320712.P11293119096971957883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A320712.P11293119096971957883

/-! ## A320712.P16545557866507570790

`A061395(A124595(n+1))%A031934(n+1)`
-/

namespace A320712.P16545557866507570790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A124595 (n + 1)).toNat) (A031934 (n + 1))

end

end A320712.P16545557866507570790

/-! ## A320712.P15476101408241591450

`A061395(A124595(n+1)%A134120(n+1))`
-/

namespace A320712.P15476101408241591450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A124595 (n + 1)) (A134120 (n + 1))).toNat

end

end A320712.P15476101408241591450

/-! ## A320712.P3311658131943778704

`A061395(A124595(n+1))+C(2, A000203(n+2))`
-/

namespace A320712.P3311658131943778704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A124595 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A320712.P3311658131943778704

/-! ## A320712.P5548301716597944421

`A001221(A140513(n))*A061395(A124595(n+1))`
-/

namespace A320712.P5548301716597944421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140513 n).toNat * A061395 (A124595 (n + 1)).toNat

end

end A320712.P5548301716597944421

/-!
# A320713: Indices of primes followed by a gap (distance to next larger prime) of 30.

The programs for A320713, there is no canonical definition to state claims against.
-/

/-! ## A320713.P10776538922949516249

`A000720(A124596(n+1))`
-/

namespace A320713.P10776538922949516249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124596 (n + 1)).toNat

end

end A320713.P10776538922949516249

/-! ## A320713.P5388674273302671135

`A061395(p?[A124596(n+1)])`
-/

namespace A320713.P5388674273302671135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320713.P5388674273302671135

/-! ## A320713.P13481593739008092613

`A061395(or(1, A124596(n+1)))`
-/

namespace A320713.P13481593739008092613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A124596 (n + 1))).toNat

end

end A320713.P13481593739008092613

/-! ## A320713.P17498805499089957597

`∑{d}[A124596(n+1), A061395(#)]`
-/

namespace A320713.P17498805499089957597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320713.P17498805499089957597

/-! ## A320713.P15815509041522884146

`A061395(∏{d}[A124596(n+1), #])`
-/

namespace A320713.P15815509041522884146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A320713.P15815509041522884146

/-! ## A320713.P16884624767091628683

`A061395(lcm(A033999(n), A124596(n+1)))`
-/

namespace A320713.P16884624767091628683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A033999 n) (A124596 (n + 1)))

end

end A320713.P16884624767091628683

/-! ## A320713.P4914073785619827109

`A061395(A124596(n+1)%A052189(n+1))`
-/

namespace A320713.P4914073785619827109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A124596 (n + 1)) (A052189 (n + 1))).toNat

end

end A320713.P4914073785619827109

/-! ## A320713.P6017055446316834342

`A061395(A124596(n+1))%A052190(n+1)`
-/

namespace A320713.P6017055446316834342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A124596 (n + 1)).toNat) (A052190 (n + 1))

end

end A320713.P6017055446316834342

/-! ## A320713.P4115098948858730335

`A061395(2*A124596(n+1))`
-/

namespace A320713.P4115098948858730335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A124596 (n + 1)).toNat

end

end A320713.P4115098948858730335

/-!
# A320714: Indices of primes followed by a gap (distance to next larger prime) of 32.

The programs for A320714, there is no canonical definition to state claims against.
-/

/-! ## A320714.P3437389406073387934

`A000720(A126784(n+1))`
-/

namespace A320714.P3437389406073387934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126784 (n + 1)).toNat

end

end A320714.P3437389406073387934

/-! ## A320714.P15590167422567655288

`A061395(p?[A126784(n+1)])`
-/

namespace A320714.P15590167422567655288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320714.P15590167422567655288

/-! ## A320714.P4539405144595689635

`A061395(or(1, A126784(n+1)))`
-/

namespace A320714.P4539405144595689635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A126784 (n + 1))).toNat

end

end A320714.P4539405144595689635

/-! ## A320714.P3801288352821528526

`∑{d}[A126784(n+1), A061395(#)]`
-/

namespace A320714.P3801288352821528526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320714.P3801288352821528526

/-!
# A320715: Indices of primes followed by a gap (distance to next larger prime) of 34.

The programs for A320715, there is no canonical definition to state claims against.
-/

/-! ## A320715.P13138544198382996104

`A000720(A134116(n+1))`
-/

namespace A320715.P13138544198382996104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134116 (n + 1)).toNat

end

end A320715.P13138544198382996104

/-! ## A320715.P11709328239882655902

`A174349(A000217(n+17)-n)`
-/

namespace A320715.P11709328239882655902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A000217 (n + 17) - (n : ℤ)).toNat

end

end A320715.P11709328239882655902

/-! ## A320715.P11211409166638977234

`A061395(p?[A134116(n+1)])`
-/

namespace A320715.P11211409166638977234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320715.P11211409166638977234

/-! ## A320715.P11798664513054047075

`A061395(or(1, A134116(n+1)))`
-/

namespace A320715.P11798664513054047075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A134116 (n + 1))).toNat

end

end A320715.P11798664513054047075

/-!
# A320716: Indices of primes followed by a gap (distance to next larger prime) of 36.

The programs for A320716, there is no canonical definition to state claims against.
-/

/-! ## A320716.P18445246256630832597

`A000720(A134117(n+1))`
-/

namespace A320716.P18445246256630832597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134117 (n + 1)).toNat

end

end A320716.P18445246256630832597

/-! ## A320716.P17787572070330500767

`A061395(p?[A134117(n+1)])`
-/

namespace A320716.P17787572070330500767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320716.P17787572070330500767

/-! ## A320716.P16556293555199245788

`A061395(or(1, A134117(n+1)))`
-/

namespace A320716.P16556293555199245788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A134117 (n + 1))).toNat

end

end A320716.P16556293555199245788

/-! ## A320716.P1553936355991771502

`∑{d}[A134117(n+1), A061395(#)]`
-/

namespace A320716.P1553936355991771502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320716.P1553936355991771502

/-! ## A320716.P2387937691368388596

`A061395(∏{d}[A134117(n+1), #])`
-/

namespace A320716.P2387937691368388596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A320716.P2387937691368388596

/-! ## A320716.P9189203577229900863

`A061395(lcm(A033999(n), A134117(n+1)))`
-/

namespace A320716.P9189203577229900863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A033999 n) (A134117 (n + 1)))

end

end A320716.P9189203577229900863

/-! ## A320716.P6852099659167701007

`A061395((A000007(n)+1)*A134117(n+1))`
-/

namespace A320716.P6852099659167701007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((A000007 n + 1) * A134117 (n + 1)).toNat

end

end A320716.P6852099659167701007

/-!
# A320717: Indices of primes followed by a gap (distance to next larger prime) of 38.

The programs for A320717, there is no canonical definition to state claims against.
-/

/-! ## A320717.P6312285284322471978

`A000720(A134118(n+1))`
-/

namespace A320717.P6312285284322471978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134118 (n + 1)).toNat

end

end A320717.P6312285284322471978

/-! ## A320717.P2035569404192376995

`A061395(p?[A134118(n+1)])`
-/

namespace A320717.P2035569404192376995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320717.P2035569404192376995

/-! ## A320717.P6335128271711797496

`A061395(or(1, A134118(n+1)))`
-/

namespace A320717.P6335128271711797496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A134118 (n + 1))).toNat

end

end A320717.P6335128271711797496

/-! ## A320717.P15334325889210254212

`∑{d}[A134118(n+1), A061395(#)]`
-/

namespace A320717.P15334325889210254212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320717.P15334325889210254212

/-!
# A320718: Indices of primes followed by a gap (distance to next larger prime) of 40.

The programs for A320718, there is no canonical definition to state claims against.
-/

/-! ## A320718.P13316132628040397981

`A000720(A126721(n+1))`
-/

namespace A320718.P13316132628040397981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126721 (n + 1)).toNat

end

end A320718.P13316132628040397981

/-! ## A320718.P1538319854071948811

`A061395(p?[A126721(n+1)])`
-/

namespace A320718.P1538319854071948811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320718.P1538319854071948811

/-! ## A320718.P4334112691804363345

`A061395(or(1, A126721(n+1)))`
-/

namespace A320718.P4334112691804363345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A126721 (n + 1))).toNat

end

end A320718.P4334112691804363345

/-! ## A320718.P17495608465897736703

`∑{d}[A126721(n+1), A061395(#)]`
-/

namespace A320718.P17495608465897736703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320718.P17495608465897736703

/-!
# A320719: Indices of primes followed by a gap (distance to next larger prime) of 42.

The programs for A320719, there is no canonical definition to state claims against.
-/

/-! ## A320719.P17669067888656303746

`A000720(A134120(n+1))`
-/

namespace A320719.P17669067888656303746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134120 (n + 1)).toNat

end

end A320719.P17669067888656303746

/-! ## A320719.P3307719046547485338

`A061395(p?[A134120(n+1)])`
-/

namespace A320719.P3307719046547485338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320719.P3307719046547485338

/-! ## A320719.P99352745338422465

`A061395(or(1, A134120(n+1)))`
-/

namespace A320719.P99352745338422465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A134120 (n + 1))).toNat

end

end A320719.P99352745338422465

/-! ## A320719.P5846104405855603848

`∑{d}[A134120(n+1), A061395(#)]`
-/

namespace A320719.P5846104405855603848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A320719.P5846104405855603848

/-!
# A320720: Indices of primes followed by a gap (distance to next larger prime) of 44.

The programs for A320720, there is no canonical definition to state claims against.
-/

/-! ## A320720.P11476962160041732935

`A000720(A134121(n+1))`
-/

namespace A320720.P11476962160041732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134121 (n + 1)).toNat

end

end A320720.P11476962160041732935

/-! ## A320720.P1636536129249845778

`A174349(eq[23, A131818(n+1)])`
-/

namespace A320720.P1636536129249845778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320720.P1636536129249845778

/-!
# A320724: Numbers k such that 401*2^k+1 is prime.

The programs for A320724, there is no canonical definition to state claims against.
-/

/-! ## A320724.P5881078247171636293

`A008619(A185396(n+1))+A000108(n)`
-/

namespace A320724.P5881078247171636293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A185396 (n + 1)).toNat + A000108 n

end

end A320724.P5881078247171636293

/-!
# A320725: Prime numbers such that all other numbers obtained from all permutations of all subsets of the digits are nonprime.

The programs for A320725, there is no canonical definition to state claims against.
-/

/-! ## A320725.P3950089483007894909

`p?[eq[1, A075053(n)]]`
-/

namespace A320725.P3950089483007894909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A320725.P3950089483007894909

/-! ## A320725.P15701216339113936433

`A071062(comp[n^4-n])`
-/

namespace A320725.P15701216339113936433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071062 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A320725.P15701216339113936433

/-! ## A320725.P5165268971455794010

`p?[(n+1)*A039993(n+1)]`
-/

namespace A320725.P5165268971455794010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320725.P5165268971455794010

/-! ## A320725.P6961229742970617176

`eq[A075053(n), A236937(n)]`
-/

namespace A320725.P6961229742970617176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320725.P6961229742970617176

/-! ## A320725.P15839845161302163887

`eq[A075053(n), A236938(n)]`
-/

namespace A320725.P15839845161302163887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320725.P15839845161302163887

/-!
# A320726: Composite numbers such that all other numbers obtained from all permutations of all subsets of the digits are noncomposite.

The programs for A320726, there is no canonical definition to state claims against.
-/

/-! ## A320726.P11670520133365818782

`A071070(eq[A088439(n), A140670(n+1)])`
-/

namespace A320726.P11670520133365818782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071070 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A320726.P11670520133365818782

/-! ## A320726.P15002817683255744562

`A002808(∑[A191390(n+1)!])`
-/

namespace A320726.P15002817683255744562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A191390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320726.P15002817683255744562

/-! ## A320726.P17550018138533977399

`lt[A033865(A033865(n)), ∑{d}[n, #%#²]]`
-/

namespace A320726.P17550018138533977399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A033865 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d % d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320726.P17550018138533977399

/-! ## A320726.P4836545187895578659

`lt[A033865(A033865(n)), A039653(n)]`
-/

namespace A320726.P4836545187895578659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A033865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320726.P4836545187895578659

/-! ## A320726.P7846690437409112808

`A372308(n+1)+A083919(A005425(n))`
-/

namespace A320726.P7846690437409112808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1) + A083919 (A005425 n).toNat

end

end A320726.P7846690437409112808

/-!
# A320730: Integers k such that A086747(k) = 0, where A086747 is the Baum-Sweet sequence.

The programs for A320730, the canonical program `A320730.P6795154469310199716` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320730 has offset 1).

The definition of A320730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320730.P6795154469310199716

`lt[0, (n-2*a(floor(n/2)))%or(1, n)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A320730

/-- `lt[0, (n-2*a(floor(n/2)))%or(1, n)]` -/
def P6795154469310199716.Spec : Prop :=
  ∀ n, (P6795154469310199716.a n : ℤ) = A320730 (n + 1)

theorem P6795154469310199716.correct : P6795154469310199716.Spec := by
  intro n
  simp only [A320730, Nat.add_sub_cancel]

end A320730

/-! ## A320730.P11066721821015024865

`comp[xor(n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n, 3^(n%2))]` with `a(0)=0`
-/

namespace A320730.P11066721821015024865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor (((n % 2 : ℕ) : ℤ) + ((3 - (-1) ^ n) * f1 ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n))) (3 ^ (n % 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320730.P11066721821015024865

namespace A320730

/-- `comp[xor(n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n, 3^(n%2))]` -/
def P11066721821015024865.Spec : Prop :=
  ∀ n, (P11066721821015024865.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P10381144776220964216

`comp[A060142(n)]`
-/

namespace A320730.P10381144776220964216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320730.P10381144776220964216

namespace A320730

/-- `comp[A060142(n)]` -/
def P10381144776220964216.Spec : Prop :=
  ∀ n, (P10381144776220964216.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P3606364260751715385

`lt[1, A316831(n)]`
-/

namespace A320730.P3606364260751715385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A320730.P3606364260751715385

namespace A320730

/-- `lt[1, A316831(n)]` -/
def P3606364260751715385.Spec : Prop :=
  ∀ n, (P3606364260751715385.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P9483995263666217502

`lt[n*A086747(n), n]`
-/

namespace A320730.P9483995263666217502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086747 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320730.P9483995263666217502

namespace A320730

/-- `lt[n*A086747(n), n]` -/
def P9483995263666217502.Spec : Prop :=
  ∀ n, (P9483995263666217502.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P6227124975603444380

`eq[A000038(n), A086747(n)]`
-/

namespace A320730.P6227124975603444380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P6227124975603444380

namespace A320730

/-- `eq[A000038(n), A086747(n)]` -/
def P6227124975603444380.Spec : Prop :=
  ∀ n, (P6227124975603444380.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P782223699497392808

`eq[A086747(n), A127802(n)]`
-/

namespace A320730.P782223699497392808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P782223699497392808

namespace A320730

/-- `eq[A086747(n), A127802(n)]` -/
def P782223699497392808.Spec : Prop :=
  ∀ n, (P782223699497392808.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P16079438311075571689

`eq[A069517(n+1), A086747(n)]`
-/

namespace A320730.P16079438311075571689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P16079438311075571689

namespace A320730

/-- `eq[A069517(n+1), A086747(n)]` -/
def P16079438311075571689.Spec : Prop :=
  ∀ n, (P16079438311075571689.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P17116182138954978382

`lt[0, A343030(n)]`
-/

namespace A320730.P17116182138954978382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A320730.P17116182138954978382

namespace A320730

/-- `lt[0, A343030(n)]` -/
def P17116182138954978382.Spec : Prop :=
  ∀ n, (P17116182138954978382.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P8483110813197305547

`eq[A000007(n), A086747(n)]`
-/

namespace A320730.P8483110813197305547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P8483110813197305547

namespace A320730

/-- `eq[A000007(n), A086747(n)]` -/
def P8483110813197305547.Spec : Prop :=
  ∀ n, (P8483110813197305547.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P11889687046777305915

`eq[A086747(n), A099894(n)]`
-/

namespace A320730.P11889687046777305915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P11889687046777305915

namespace A320730

/-- `eq[A086747(n), A099894(n)]` -/
def P11889687046777305915.Spec : Prop :=
  ∀ n, (P11889687046777305915.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P15123063453797550943

`eq[A086747(n), A130706(n)]`
-/

namespace A320730.P15123063453797550943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P15123063453797550943

namespace A320730

/-- `eq[A086747(n), A130706(n)]` -/
def P15123063453797550943.Spec : Prop :=
  ∀ n, (P15123063453797550943.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P13055719445814231312

`eq[A086747(n), A169585(n)]`
-/

namespace A320730.P13055719445814231312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P13055719445814231312

namespace A320730

/-- `eq[A086747(n), A169585(n)]` -/
def P13055719445814231312.Spec : Prop :=
  ∀ n, (P13055719445814231312.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P9456155955121118218

`eq[A086747(n), A104117(n+1)]`
-/

namespace A320730.P9456155955121118218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P9456155955121118218

namespace A320730

/-- `eq[A086747(n), A104117(n+1)]` -/
def P9456155955121118218.Spec : Prop :=
  ∀ n, (P9456155955121118218.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P7821450102377486379

`eq[A086747(n), A129502(n+1)]`
-/

namespace A320730.P7821450102377486379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P7821450102377486379

namespace A320730

/-- `eq[A086747(n), A129502(n+1)]` -/
def P7821450102377486379.Spec : Prop :=
  ∀ n, (P7821450102377486379.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P11562620775114928918

`eq[A086747(n), A154955(n+1)]`
-/

namespace A320730.P11562620775114928918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P11562620775114928918

namespace A320730

/-- `eq[A086747(n), A154955(n+1)]` -/
def P11562620775114928918.Spec : Prop :=
  ∀ n, (P11562620775114928918.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P10868763442819503623

`eq[A086747(n), A259346(n+1)]`
-/

namespace A320730.P10868763442819503623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P10868763442819503623

namespace A320730

/-- `eq[A086747(n), A259346(n+1)]` -/
def P10868763442819503623.Spec : Prop :=
  ∀ n, (P10868763442819503623.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P740081043749171333

`eq[A086747(n), A285476(n)]`
-/

namespace A320730.P740081043749171333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320730.P740081043749171333

namespace A320730

/-- `eq[A086747(n), A285476(n)]` -/
def P740081043749171333.Spec : Prop :=
  ∀ n, (P740081043749171333.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P9781057613626952051

`eq[0, A086747(2*n+1)]`
-/

namespace A320730.P9781057613626952051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320730.P9781057613626952051

namespace A320730

/-- `eq[0, A086747(2*n+1)]` -/
def P9781057613626952051.Spec : Prop :=
  ∀ n, (P9781057613626952051.a n : ℤ) = A320730 (n + 1)

end A320730

/-! ## A320730.P8773077562883065016

`eq[3, A316831(2*n+1)]`
-/

namespace A320730.P8773077562883065016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320730.P8773077562883065016

namespace A320730

/-- `eq[3, A316831(2*n+1)]` -/
def P8773077562883065016.Spec : Prop :=
  ∀ n, (P8773077562883065016.a n : ℤ) = A320730 (n + 1)

end A320730

/-!
# A320731: Number of possible states when placing n tokens of 2 alternating types on 3 piles.

The programs for A320731, there is no canonical definition to state claims against.
-/

/-! ## A320731.P6337972638105124247

`A352493(A045691(n))+A264685(n)`
-/

namespace A320731.P6337972638105124247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A045691 n).toNat + A264685 n

end

end A320731.P6337972638105124247

/-! ## A320731.P14658962135891890494

`∑[∑[A069623(A229813(n+1))]]`
-/

namespace A320731.P14658962135891890494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A229813 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320731.P14658962135891890494

/-! ## A320731.P7518034571296447976

`A248227(A112527(n+1)+A036289(n))`
-/

namespace A320731.P7518034571296447976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A112527 (n + 1) + A036289 n).toNat

end

end A320731.P7518034571296447976

/-!
# A320732: Number of factorizations of n into primes or semiprimes.

The programs for A320732, there is no canonical definition to state claims against.
-/

/-! ## A320732.P5334274289476955164

`∑{d}[n+1, A320655(#)]`
-/

namespace A320732.P5334274289476955164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320655 d

end

end A320732.P5334274289476955164

/-! ## A320732.P15292336556645556918

`A326668(∏{e}[n+1, #+1])`
-/

namespace A320732.P15292336556645556918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326668 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A320732.P15292336556645556918

/-! ## A320732.P11435706221312942412

`A325691(∏{e}[n+1, #+1]+3)`
-/

namespace A320732.P11435706221312942412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 3)

end

end A320732.P11435706221312942412

/-! ## A320732.P9525806063492343820

`ceil(sqrt(A335357(∏{e}[n+1, #+1])))`
-/

namespace A320732.P9525806063492343820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A335357 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ)⌉

end

end A320732.P9525806063492343820

/-! ## A320732.P14102142683962715306

`A322437(n+1)+ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A320732.P14102142683962715306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (n + 1) + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A320732.P14102142683962715306

/-! ## A320732.P7952650563537775660

`A103827(∏{e}[n+1, #+1]-∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A320732.P7952650563537775660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103827 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2 : ℤ))).toNat

end

end A320732.P7952650563537775660

/-! ## A320732.P13216665883455474359

`A326668(Δ[A006218(n)])`
-/

namespace A320732.P13216665883455474359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326668 (f1 (n + 1) - f1 n).toNat

end

end A320732.P13216665883455474359

/-! ## A320732.P2374681393365107281

`A326668(Δ[A054519(n)])`
-/

namespace A320732.P2374681393365107281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326668 (f1 (n + 1) - f1 n).toNat

end

end A320732.P2374681393365107281

/-! ## A320732.P17760797500706512545

`A326668(A000005(n+1))`
-/

namespace A320732.P17760797500706512545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326668 (A000005 (n + 1)).toNat

end

end A320732.P17760797500706512545

/-! ## A320732.P2826783422047811126

`A344150(A272209(n+1))`
-/

namespace A320732.P2826783422047811126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344150 (A272209 (n + 1)).toNat

end

end A320732.P2826783422047811126

/-!
# A320733: Number of partitions of n with two sorts of part 1 which are introduced in ascending order.

The programs for A320733, there is no canonical definition to state claims against.
-/

/-! ## A320733.P10155608332403049924

`abs(Δ[A090764(abs(1-n))])`
-/

namespace A320733.P10155608332403049924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090764 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A320733.P10155608332403049924

/-! ## A320733.P12057671691661390617

`(A090764(n)+A002865(n))/2`
-/

namespace A320733.P12057671691661390617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090764 n + A002865 n : ℚ) / 2

end

end A320733.P12057671691661390617

/-! ## A320733.P3456209846104903598

`A292745(∑[n+3])`
-/

namespace A320733.P3456209846104903598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320733.P3456209846104903598

/-! ## A320733.P12808914031569172979

`or(char[1], A292745(A055998(n+1)))`
-/

namespace A320733.P12808914031569172979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A292745 (A055998 (n + 1)).toNat)

end

end A320733.P12808914031569172979

/-! ## A320733.P6854267138686227771

`abs(A033999(n)*A292745(A055998(n+1)))`
-/

namespace A320733.P6854267138686227771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A292745 (A055998 (n + 1)).toNat|

end

end A320733.P6854267138686227771

/-! ## A320733.P13709843747322143677

`A292745(A055998(n+1))%A007578(n+2)`
-/

namespace A320733.P13709843747322143677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A055998 (n + 1)).toNat) (A007578 (n + 2))

end

end A320733.P13709843747322143677

/-! ## A320733.P13020638761929401365

`A292745(A055998(n+1))+val(A055664(n+1), 10)`
-/

namespace A320733.P13020638761929401365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055998 (n + 1)).toNat + (SequenceMachineLib.valuation (A055664 (n + 1)).toNat 10 : ℤ)

end

end A320733.P13020638761929401365

/-! ## A320733.P16936486311033539039

`A292745(A055998(n+1))+A055029(A135462(n))`
-/

namespace A320733.P16936486311033539039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055998 (n + 1)).toNat + A055029 (A135462 n).toNat

end

end A320733.P16936486311033539039

/-!
# A320734: Number of partitions of n with three sorts of part 1 which are introduced in ascending order.

The programs for A320734, there is no canonical definition to state claims against.
-/

/-! ## A320734.P2851379171621894048

`A292745(∑[n+3]+n+3)`
-/

namespace A320734.P2851379171621894048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A320734.P2851379171621894048

/-! ## A320734.P15686900153611153266

`or(char[2], A292745(A046691(n+2)))`
-/

namespace A320734.P15686900153611153266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A292745 (A046691 (n + 2)).toNat)

end

end A320734.P15686900153611153266

/-! ## A320734.P13248173900881252487

`char[A002262(n)]*A292745(A046691(n+2))`
-/

namespace A320734.P13248173900881252487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292745 (A046691 (n + 2)).toNat

end

end A320734.P13248173900881252487

/-! ## A320734.P7372458878728750392

`A292745(A046691(n+2))%(2*A005504(n))`
-/

namespace A320734.P7372458878728750392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A046691 (n + 2)).toNat) (2 * A005504 n)

end

end A320734.P7372458878728750392

/-! ## A320734.P15238244818928507068

`A292745(A046691(n+2))^gcd(2, A000040(n+1))`
-/

namespace A320734.P15238244818928507068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A046691 (n + 2)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A320734.P15238244818928507068

/-! ## A320734.P17656067570751304471

`char[A025480(2*n+1)]*A292745(A046691(n+2))`
-/

namespace A320734.P17656067570751304471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292745 (A046691 (n + 2)).toNat

end

end A320734.P17656067570751304471

/-! ## A320734.P10766198818268058854

`A033999(A135462(n))*A292745(A046691(n+2))`
-/

namespace A320734.P10766198818268058854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A135462 n).toNat * A292745 (A046691 (n + 2)).toNat

end

end A320734.P10766198818268058854

/-! ## A320734.P11565273052988049438

`A292745(A046691(n+2))%A011545(n)`
-/

namespace A320734.P11565273052988049438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A046691 (n + 2)).toNat) (A011545 n)

end

end A320734.P11565273052988049438

/-!
# A320735: Number of partitions of n with four sorts of part 1 which are introduced in ascending order.

The programs for A320735, there is no canonical definition to state claims against.
-/

/-! ## A320735.P8285906203087379541

`A292745(∑[n+5]+5)`
-/

namespace A320735.P8285906203087379541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A320735.P8285906203087379541

/-! ## A320735.P4855678491467535702

`xor(C(n, n+2), A292745(A000217(n+5)-5))`
-/

namespace A320735.P4855678491467535702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n (n + 2) : ℤ) (A292745 (A000217 (n + 5) - 5).toNat)

end

end A320735.P4855678491467535702

/-! ## A320735.P2344423000770177394

`A292745(A000217(n+5)-5)%A041048(n)`
-/

namespace A320735.P2344423000770177394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A000217 (n + 5) - 5).toNat) (A041048 n)

end

end A320735.P2344423000770177394

/-! ## A320735.P5017523396857795877

`or(A000007(n), A292745(A000217(n+5)-5))`
-/

namespace A320735.P5017523396857795877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292745 (A000217 (n + 5) - 5).toNat)

end

end A320735.P5017523396857795877

/-! ## A320735.P12890164342227955071

`A292745(A000217(n+4)+n)*A296082(A079848(n+1))`
-/

namespace A320735.P12890164342227955071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000217 (n + 4) + (n : ℤ)).toNat * A296082 (A079848 (n + 1)).toNat

end

end A320735.P12890164342227955071

/-!
# A320736: Number of partitions of n with five sorts of part 1 which are introduced in ascending order.

The programs for A320736, there is no canonical definition to state claims against.
-/

/-! ## A320736.P2599723886458318386

`A292745(A055999(n+3))`
-/

namespace A320736.P2599723886458318386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055999 (n + 3)).toNat

end

end A320736.P2599723886458318386

/-! ## A320736.P9592164553424412323

`A292745(Δ[A026054(n+3)])`
-/

namespace A320736.P9592164553424412323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (f1 (n + 1) - f1 n).toNat

end

end A320736.P9592164553424412323

/-! ## A320736.P615283211981688130

`A292745(A052905(n+3)-1)`
-/

namespace A320736.P615283211981688130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A052905 (n + 3) - 1).toNat

end

end A320736.P615283211981688130

/-! ## A320736.P13784367703145326491

`A292745(A046691(n+4)-2)`
-/

namespace A320736.P13784367703145326491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A046691 (n + 4) - 2).toNat

end

end A320736.P13784367703145326491

/-! ## A320736.P10840542447056171961

`A292745(A000217(n+6)-6)`
-/

namespace A320736.P10840542447056171961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000217 (n + 6) - 6).toNat

end

end A320736.P10840542447056171961

/-! ## A320736.P17003349145271273686

`A292745(record[A038722(n+11)]+n)`
-/

namespace A320736.P17003349145271273686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A320736.P17003349145271273686

/-! ## A320736.P5679685384688214183

`A292745(A145018(n+1)+6*n+11)`
-/

namespace A320736.P5679685384688214183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A145018 (n + 1) + (6 * n + 11 : ℤ)).toNat

end

end A320736.P5679685384688214183

/-!
# A320737: Number of partitions of n with six sorts of part 1 which are introduced in ascending order.

The programs for A320737, there is no canonical definition to state claims against.
-/

/-! ## A320737.P13424090127631749562

`A292745(A052905(n+4)-2)`
-/

namespace A320737.P13424090127631749562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A052905 (n + 4) - 2).toNat

end

end A320737.P13424090127631749562

/-! ## A320737.P6101561486986740706

`A292745(A055998(n+5)-4)`
-/

namespace A320737.P6101561486986740706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055998 (n + 5) - 4).toNat

end

end A320737.P6101561486986740706

/-! ## A320737.P1238596195098544471

`A292745(A000217(n+7)-7)`
-/

namespace A320737.P1238596195098544471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000217 (n + 7) - 7).toNat

end

end A320737.P1238596195098544471

/-! ## A320737.P9511003487011671121

`A292745(A161680(n+8)-7)`
-/

namespace A320737.P9511003487011671121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A161680 (n + 8) - 7).toNat

end

end A320737.P9511003487011671121

/-! ## A320737.P10287995822215716319

`A292745(Δ[A026054(n+4)]-1)`
-/

namespace A320737.P10287995822215716319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (f1 (n + 1) - f1 n - 1).toNat

end

end A320737.P10287995822215716319

/-! ## A320737.P3863095772130568349

`A292745(A167614(n+4)+A005408(n+1))`
-/

namespace A320737.P3863095772130568349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A167614 (n + 4) + A005408 (n + 1)).toNat

end

end A320737.P3863095772130568349

/-!
# A320738: Number of partitions of n with seven sorts of part 1 which are introduced in ascending order.

The programs for A320738, there is no canonical definition to state claims against.
-/

/-! ## A320738.P240870302842752715

`A292745(A052905(n+5)-3)`
-/

namespace A320738.P240870302842752715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A052905 (n + 5) - 3).toNat

end

end A320738.P240870302842752715

/-! ## A320738.P10324403842818887728

`A292745(A055998(n+6)-5)`
-/

namespace A320738.P10324403842818887728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055998 (n + 6) - 5).toNat

end

end A320738.P10324403842818887728

/-! ## A320738.P16021421047410897703

`A292745(A000217(n+8)-8)`
-/

namespace A320738.P16021421047410897703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000217 (n + 8) - 8).toNat

end

end A320738.P16021421047410897703

/-! ## A320738.P7666765001584483714

`A292745(2*n+A167499(n+5)+2)`
-/

namespace A320738.P7666765001584483714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 ((2 * n : ℤ) + (A167499 (n + 5) + 2)).toNat

end

end A320738.P7666765001584483714

/-! ## A320738.P2437250527125758727

`A292745(2*n+A055998(n+4)+10)`
-/

namespace A320738.P2437250527125758727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 ((2 * n : ℤ) + (A055998 (n + 4) + 10)).toNat

end

end A320738.P2437250527125758727

/-!
# A320739: Number of partitions of n with eight sorts of part 1 which are introduced in ascending order.

The programs for A320739, there is no canonical definition to state claims against.
-/

/-! ## A320739.P5088545973791533130

`A292745(A052905(n+6)-4)`
-/

namespace A320739.P5088545973791533130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A052905 (n + 6) - 4).toNat

end

end A320739.P5088545973791533130

/-! ## A320739.P14341546865130420981

`A292745(A055998(n+7)-6)`
-/

namespace A320739.P14341546865130420981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A055998 (n + 7) - 6).toNat

end

end A320739.P14341546865130420981

/-! ## A320739.P405990704181097474

`A292745(A000217(n+9)-9)`
-/

namespace A320739.P405990704181097474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000217 (n + 9) - 9).toNat

end

end A320739.P405990704181097474

/-! ## A320739.P16506027628917249454

`A292745(A161680(n+10)-9)`
-/

namespace A320739.P16506027628917249454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A161680 (n + 10) - 9).toNat

end

end A320739.P16506027628917249454

/-! ## A320739.P16414449363964772633

`A292745(A000096(n+7)+n+1)`
-/

namespace A320739.P16414449363964772633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A320739.P16414449363964772633

/-! ## A320739.P17410572131204798713

`A292745(A133263(n+8)+n-2)`
-/

namespace A320739.P17410572131204798713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A133263 (n + 8) + ((n : ℤ) - 2)).toNat

end

end A320739.P17410572131204798713

/-! ## A320739.P15797336490953152778

`A292745(A167614(n+6)+A005408(n+2))`
-/

namespace A320739.P15797336490953152778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A167614 (n + 6) + A005408 (n + 2)).toNat

end

end A320739.P15797336490953152778

/-!
# A320740: Number of partitions of n with nine sorts of part 1 which are introduced in ascending order.

The programs for A320740, there is no canonical definition to state claims against.
-/

/-! ## A320740.P1524440816697417572

`A292745(A056115(n+5)+5)`
-/

namespace A320740.P1524440816697417572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A056115 (n + 5) + 5).toNat

end

end A320740.P1524440816697417572

/-! ## A320740.P14199549548290184640

`A292745(A052905(n+7)-5)`
-/

namespace A320740.P14199549548290184640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A052905 (n + 7) - 5).toNat

end

end A320740.P14199549548290184640

/-! ## A320740.P7250112474395670427

`A292745(A000217(n+10)-10)`
-/

namespace A320740.P7250112474395670427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000217 (n + 10) - 10).toNat

end

end A320740.P7250112474395670427

/-! ## A320740.P18222589550456304364

`A292745(A167499(n+7)+A005843(n+2))`
-/

namespace A320740.P18222589550456304364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A320740.P18222589550456304364

/-! ## A320740.P13590570633347515456

`A292745(A005843(n+5)+A000096(n+7))`
-/

namespace A320740.P13590570633347515456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A005843 (n + 5) + A000096 (n + 7)).toNat

end

end A320740.P13590570633347515456

/-! ## A320740.P15247404013733041374

`A292745(A008585(n+6)+A000096(n+6))`
-/

namespace A320740.P15247404013733041374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A008585 (n + 6) + A000096 (n + 6)).toNat

end

end A320740.P15247404013733041374

/-! ## A320740.P10766468821108365335

`A292745(A133263(n+7)+A008585(n+5))`
-/

namespace A320740.P10766468821108365335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A133263 (n + 7) + A008585 (n + 5)).toNat

end

end A320740.P10766468821108365335

/-!
# A320741: Number of partitions of n with ten sorts of part 1 which are introduced in ascending order.

The programs for A320741, there is no canonical definition to state claims against.
-/

/-! ## A320741.P9747897343663744811

`A292745(A056115(n+6)+4)`
-/

namespace A320741.P9747897343663744811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A056115 (n + 6) + 4).toNat

end

end A320741.P9747897343663744811

/-! ## A320741.P6730768488784719051

`A292745(A000096(n+9)+n+1)`
-/

namespace A320741.P6730768488784719051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A320741.P6730768488784719051

/-! ## A320741.P5814557123823028350

`A292745(A167614(n+8)+A005408(n+3))`
-/

namespace A320741.P5814557123823028350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A167614 (n + 8) + A005408 (n + 3)).toNat

end

end A320741.P5814557123823028350

/-! ## A320741.P14544737102164954853

`A292745(A052905(n+5)+A008486(n+8))`
-/

namespace A320741.P14544737102164954853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A052905 (n + 5) + A008486 (n + 8)).toNat

end

end A320741.P14544737102164954853

/-! ## A320741.P15848679948173645869

`A292745(A034856(n+8)+A005843(n+6))`
-/

namespace A320741.P15848679948173645869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (A034856 (n + 8) + A005843 (n + 6)).toNat

end

end A320741.P15848679948173645869

/-!
# A320742: Array read by antidiagonals: T(n,k) is the number of chiral pairs of color patterns (set partitions) in a cycle of length n using k or fewer colors (subsets).

The programs for A320742, there is no canonical definition to state claims against.
-/

/-! ## A320742.P8515454904836471202

`A320747(n+1)-A320748(n+1)`
-/

namespace A320742.P8515454904836471202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (n + 1) - A320748 (n + 1)

end

end A320742.P8515454904836471202

/-! ## A320742.P12872386757791803482

`A320747(floor((2*n+3)/2))%A320748(n+1)`
-/

namespace A320742.P12872386757791803482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320747 ⌊(2 * n + 3 : ℚ) / 2⌋.toNat) (A320748 (n + 1))

end

end A320742.P12872386757791803482

/-! ## A320742.P3525114464330509526

`(A320747(n+1)%A320748(n+1))%A320753(n)`
-/

namespace A320742.P3525114464330509526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A320747 (n + 1)) (A320748 (n + 1))) (A320753 n)

end

end A320742.P3525114464330509526

/-! ## A320742.P9710402266399606674

`A320748(n+1)-A305749(n+1)`
-/

namespace A320742.P9710402266399606674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (n + 1) - A305749 (n + 1)

end

end A320742.P9710402266399606674

/-! ## A320742.P4193750496610617409

`(A320747(n+1)-A305749(n+1))/2`
-/

namespace A320742.P4193750496610617409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320747 (n + 1) - A305749 (n + 1) : ℚ) / 2

end

end A320742.P4193750496610617409

/-! ## A320742.P10820227002196053397

`A014682(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P10820227002196053397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P10820227002196053397

/-! ## A320742.P5899952625778784019

`A001281(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P5899952625778784019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P5899952625778784019

/-! ## A320742.P2232725417026394936

`A004525(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P2232725417026394936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P2232725417026394936

/-! ## A320742.P15325220579854756951

`A004526(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P15325220579854756951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P15325220579854756951

/-! ## A320742.P11097713499283979091

`A006370(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P11097713499283979091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P11097713499283979091

/-! ## A320742.P12088268132117218702

`A025480(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P12088268132117218702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P12088268132117218702

/-! ## A320742.P7263518896539275318

`A026741(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P7263518896539275318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P7263518896539275318

/-! ## A320742.P14937686982272690374

`A110654(A320747(n+1)-A305749(n+1))`
-/

namespace A320742.P14937686982272690374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A320747 (n + 1) - A305749 (n + 1)).toNat

end

end A320742.P14937686982272690374

/-!
# A320743: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using 3 or fewer colors (subsets).

The programs for A320743, there is no canonical definition to state claims against.
-/

/-! ## A320743.P2332778218343847987

`A059053(n+1)+A320643(n+1)`
-/

namespace A320743.P2332778218343847987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + A320643 (n + 1)

end

end A320743.P2332778218343847987

/-! ## A320743.P17679034477084350374

`A002076(n+1)-A056353(n+1)`
-/

namespace A320743.P17679034477084350374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002076 (n + 1) - A056353 (n + 1)

end

end A320743.P17679034477084350374

/-! ## A320743.P2491679731293636444

`A056353(n+1)-A182522(n+1)`
-/

namespace A320743.P2491679731293636444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056353 (n + 1) - A182522 (n + 1)

end

end A320743.P2491679731293636444

/-! ## A320743.P5955871307342083736

`(A002076(n+1)-A182522(n+1))/2`
-/

namespace A320743.P5955871307342083736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002076 (n + 1) - A182522 (n + 1) : ℚ) / 2

end

end A320743.P5955871307342083736

/-! ## A320743.P18393812199411658047

`A056353(n+1)-A038754(n)`
-/

namespace A320743.P18393812199411658047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056353 (n + 1) - A038754 n

end

end A320743.P18393812199411658047

/-! ## A320743.P14513671850345801382

`A320744(n+1)-A320644(n+1)`
-/

namespace A320743.P14513671850345801382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (n + 1) - A320644 (n + 1)

end

end A320743.P14513671850345801382

/-!
# A320744: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using 4 or fewer colors (subsets).

The programs for A320744, there is no canonical definition to state claims against.
-/

/-! ## A320744.P10238360184511444253

`A056292(n+1)-A056354(n+1)`
-/

namespace A320744.P10238360184511444253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056292 (n + 1) - A056354 (n + 1)

end

end A320744.P10238360184511444253

/-! ## A320744.P3103079940090798926

`A056354(n+1)-A305750(n+1)`
-/

namespace A320744.P3103079940090798926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056354 (n + 1) - A305750 (n + 1)

end

end A320744.P3103079940090798926

/-! ## A320744.P144558755303715920

`(A056292(n+1)-A305750(n+1))/2`
-/

namespace A320744.P144558755303715920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056292 (n + 1) - A305750 (n + 1) : ℚ) / 2

end

end A320744.P144558755303715920

/-! ## A320744.P2190179481749271737

`A059053(n+1)+A320643(n+1)+A320644(n+1)`
-/

namespace A320744.P2190179481749271737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + A320643 (n + 1) + A320644 (n + 1)

end

end A320744.P2190179481749271737

/-! ## A320744.P3332247958008445198

`A320743(n+1)+A320644(n+1)`
-/

namespace A320744.P3332247958008445198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320743 (n + 1) + A320644 (n + 1)

end

end A320744.P3332247958008445198

/-! ## A320744.P1808460919120331124

`A320745(n+1)-A320645(n+1)`
-/

namespace A320744.P1808460919120331124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320745 (n + 1) - A320645 (n + 1)

end

end A320744.P1808460919120331124

/-! ## A320744.P5708873158817994010

`A056355(n+1)-(A320645(n+1)+A305751(n+1))`
-/

namespace A320744.P5708873158817994010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056355 (n + 1) - (A320645 (n + 1) + A305751 (n + 1))

end

end A320744.P5708873158817994010

/-!
# A320745: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using 5 or fewer colors (subsets).

The programs for A320745, there is no canonical definition to state claims against.
-/

/-! ## A320745.P16823846524891336779

`A056293(n+1)-A056355(n+1)`
-/

namespace A320745.P16823846524891336779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056293 (n + 1) - A056355 (n + 1)

end

end A320745.P16823846524891336779

/-! ## A320745.P13392108804078690960

`A056355(n+1)-A305751(n+1)`
-/

namespace A320745.P13392108804078690960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056355 (n + 1) - A305751 (n + 1)

end

end A320745.P13392108804078690960

/-! ## A320745.P3063808950578772174

`(A056293(n+1)-A305751(n+1))/2`
-/

namespace A320745.P3063808950578772174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056293 (n + 1) - A305751 (n + 1) : ℚ) / 2

end

end A320745.P3063808950578772174

/-! ## A320745.P1796304902298718795

`A059053(n+1)+A320643(n+1)+A320644(n+1)+A320645(n+1)`
-/

namespace A320745.P1796304902298718795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + A320643 (n + 1) + A320644 (n + 1) + A320645 (n + 1)

end

end A320745.P1796304902298718795

/-! ## A320745.P14540275182288930071

`A320744(n+1)+A320645(n+1)`
-/

namespace A320745.P14540275182288930071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (n + 1) + A320645 (n + 1)

end

end A320745.P14540275182288930071

/-! ## A320745.P16597192777180399659

`A320746(n+1)-A320646(n+1)`
-/

namespace A320745.P16597192777180399659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320746 (n + 1) - A320646 (n + 1)

end

end A320745.P16597192777180399659

/-! ## A320745.P1155786780989330223

`A304976(n+1)+A320746(n+1)-A056361(n+1)`
-/

namespace A320745.P1155786780989330223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304976 (n + 1) + (A320746 (n + 1) - A056361 (n + 1))

end

end A320745.P1155786780989330223

/-! ## A320745.P7683328813958725659

`A056361(n+1)+A320746(n+1)-A056299(n+1)`
-/

namespace A320745.P7683328813958725659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (n + 1) + (A320746 (n + 1) - A056299 (n + 1))

end

end A320745.P7683328813958725659

/-!
# A320746: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using 6 or fewer colors (subsets).

The programs for A320746, there is no canonical definition to state claims against.
-/

/-! ## A320746.P3328264031894607911

`A056356(n+1)-A305752(n+1)`
-/

namespace A320746.P3328264031894607911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056356 (n + 1) - A305752 (n + 1)

end

end A320746.P3328264031894607911

/-! ## A320746.P3041094841230829995

`A059053(n+1)+A320643(n+1)+A320644(n+1)+A320645(n+1)+A320646(n+1)`
-/

namespace A320746.P3041094841230829995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + A320643 (n + 1) + A320644 (n + 1) + A320645 (n + 1) + A320646 (n + 1)

end

end A320746.P3041094841230829995

/-! ## A320746.P2858258430803140273

`A056294(n+1)-A056356(n+1)`
-/

namespace A320746.P2858258430803140273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056294 (n + 1) - A056356 (n + 1)

end

end A320746.P2858258430803140273

/-! ## A320746.P15109491085889556544

`(A056294(n+1)-A305752(n+1))/2`
-/

namespace A320746.P15109491085889556544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056294 (n + 1) - A305752 (n + 1) : ℚ) / 2

end

end A320746.P15109491085889556544

/-! ## A320746.P12910225212095678317

`A320745(n+1)+A320646(n+1)`
-/

namespace A320746.P12910225212095678317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320745 (n + 1) + A320646 (n + 1)

end

end A320746.P12910225212095678317

/-!
# A320747: Array read by antidiagonals: T(n,k) is the number of color patterns (set partitions) in an oriented cycle of length n using k or fewer colors (subsets).

The programs for A320747, there is no canonical definition to state claims against.
-/

/-! ## A320747.P17976085373879075792

`A320748(n+1)+A320742(n+1)`
-/

namespace A320747.P17976085373879075792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (n + 1) + A320742 (n + 1)

end

end A320747.P17976085373879075792

/-! ## A320747.P5763161799596036891

`A305749(n+1)+2*A320742(n+1)`
-/

namespace A320747.P5763161799596036891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (n + 1) + 2 * A320742 (n + 1)

end

end A320747.P5763161799596036891

/-! ## A320747.P6549011158689262304

`2*A320748(n+1)-A305749(n+1)`
-/

namespace A320747.P6549011158689262304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320748 (n + 1) - A305749 (n + 1)

end

end A320747.P6549011158689262304

/-! ## A320747.P2649593590306835867

`A305749(n+1)+A005843(A320742(n+1))`
-/

namespace A320747.P2649593590306835867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (n + 1) + A005843 (A320742 (n + 1)).toNat

end

end A320747.P2649593590306835867

/-! ## A320747.P7975945185431740951

`A004277(A320748(n+1))-A305749(n+1)`
-/

namespace A320747.P7975945185431740951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A320748 (n + 1)).toNat - A305749 (n + 1)

end

end A320747.P7975945185431740951

/-!
# A320748: Array read by antidiagonals: T(n,k) is the number of color patterns (set partitions) in an unoriented cycle of length n using k or fewer colors (subsets).

The programs for A320748, there is no canonical definition to state claims against.
-/

/-! ## A320748.P9322790116295652514

`A320747(n+1)-A320742(n+1)`
-/

namespace A320748.P9322790116295652514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (n + 1) - A320742 (n + 1)

end

end A320748.P9322790116295652514

/-! ## A320748.P8575929321429169909

`A320742(n+1)+A305749(n+1)`
-/

namespace A320748.P8575929321429169909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A305749 (n + 1)

end

end A320748.P8575929321429169909

/-! ## A320748.P16956835316601226982

`(A320747(n+1)+A305749(n+1))/2`
-/

namespace A320748.P16956835316601226982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320747 (n + 1) + A305749 (n + 1) : ℚ) / 2

end

end A320748.P16956835316601226982

/-! ## A320748.P267912762955180822

`A014682(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P267912762955180822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P267912762955180822

/-! ## A320748.P6805112278334967069

`A001281(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P6805112278334967069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P6805112278334967069

/-! ## A320748.P9692678078607527119

`A004525(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P9692678078607527119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P9692678078607527119

/-! ## A320748.P12839663140747658632

`A004526(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P12839663140747658632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P12839663140747658632

/-! ## A320748.P17696044361674491698

`A006370(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P17696044361674491698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P17696044361674491698

/-! ## A320748.P8355521648742190151

`A025480(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P8355521648742190151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P8355521648742190151

/-! ## A320748.P18378542896429771078

`A026741(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P18378542896429771078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P18378542896429771078

/-! ## A320748.P7057821073052212685

`A110654(A320747(n+1)+A305749(n+1))`
-/

namespace A320748.P7057821073052212685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A320747 (n + 1) + A305749 (n + 1)).toNat

end

end A320748.P7057821073052212685

/-!
# A320749: Number of chiral pairs of color patterns (set partitions) in a cycle of length n.

The programs for A320749, there is no canonical definition to state claims against.
-/

/-! ## A320749.P6813862445067049158

`A084708(n+1)-A080107(n+1)`
-/

namespace A320749.P6813862445067049158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084708 (n + 1) - A080107 (n + 1)

end

end A320749.P6813862445067049158

/-! ## A320749.P15678046222829803190

`A084423(n+1)-A084708(n+1)`
-/

namespace A320749.P15678046222829803190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084423 (n + 1) - A084708 (n + 1)

end

end A320749.P15678046222829803190

/-! ## A320749.P9941109982604629127

`(A084423(n+1)-A080107(n+1))/2`
-/

namespace A320749.P9941109982604629127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084423 (n + 1) - A080107 (n + 1) : ℚ) / 2

end

end A320749.P9941109982604629127

/-! ## A320749.P4919553679215405824

`A320742(A051890(n))`
-/

namespace A320749.P4919553679215405824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (A051890 n).toNat

end

end A320749.P4919553679215405824

/-! ## A320749.P4317918347896057114

`A320742(A058331(n))`
-/

namespace A320749.P4317918347896057114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (A058331 n).toNat

end

end A320749.P4317918347896057114

/-!
# A320750: Array read by antidiagonals: T(n,k) is the number of color patterns (set partitions) in an unoriented row of length n using k or fewer colors (subsets).

The programs for A320750, there is no canonical definition to state claims against.
-/

/-! ## A320750.P1082828413804242663

`A320751(n+1)+A305749(n+1)`
-/

namespace A320750.P1082828413804242663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320751 (n + 1) + A305749 (n + 1)

end

end A320750.P1082828413804242663

/-! ## A320750.P4426397572137202582

`A137855(n+1)-A320751(n+1)`
-/

namespace A320750.P4426397572137202582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (n + 1) - A320751 (n + 1)

end

end A320750.P4426397572137202582

/-! ## A320750.P2051651639846932749

`(A305749(n+1)+A137855(n+1))/2`
-/

namespace A320750.P2051651639846932749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305749 (n + 1) + A137855 (n + 1) : ℚ) / 2

end

end A320750.P2051651639846932749

/-! ## A320750.P196268603929838610

`A278984(∑[char[∑[n]]]²-n)-A320751(n+1)`
-/

namespace A320750.P196268603929838610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - A320751 (n + 1)

end

end A320750.P196268603929838610

/-! ## A320750.P16200531947900057926

`A004525(A305749(n+1)+A137855(n+1))`
-/

namespace A320750.P16200531947900057926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A305749 (n + 1) + A137855 (n + 1)).toNat

end

end A320750.P16200531947900057926

/-! ## A320750.P4905340680292772654

`A004526(A305749(n+1)+A137855(n+1))`
-/

namespace A320750.P4905340680292772654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305749 (n + 1) + A137855 (n + 1)).toNat

end

end A320750.P4905340680292772654

/-! ## A320750.P6287380258574277799

`A014682(A305749(n+1)+A137855(n+1))`
-/

namespace A320750.P6287380258574277799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A305749 (n + 1) + A137855 (n + 1)).toNat

end

end A320750.P6287380258574277799

/-! ## A320750.P3715233385511984448

`A025480(A305749(n+1)+A137855(n+1))`
-/

namespace A320750.P3715233385511984448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A305749 (n + 1) + A137855 (n + 1)).toNat

end

end A320750.P3715233385511984448

/-! ## A320750.P2564167874455863355

`A026741(A305749(n+1)+A137855(n+1))`
-/

namespace A320750.P2564167874455863355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A305749 (n + 1) + A137855 (n + 1)).toNat

end

end A320750.P2564167874455863355

/-! ## A320750.P12701466748374211002

`A029578(A305749(n+1)+A137855(n+1))`
-/

namespace A320750.P12701466748374211002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A305749 (n + 1) + A137855 (n + 1)).toNat

end

end A320750.P12701466748374211002

/-!
# A320751: Array read by antidiagonals: T(n,k) is the number of chiral pairs of color patterns (set partitions) in a row of length n using k or fewer colors (subsets).

The programs for A320751, there is no canonical definition to state claims against.
-/

/-! ## A320751.P7115802141288459849

`(A137855(n+1)-A305749(n+1))/2`
-/

namespace A320751.P7115802141288459849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137855 (n + 1) - A305749 (n + 1) : ℚ) / 2

end

end A320751.P7115802141288459849

/-! ## A320751.P11272371019605547549

`A014682(A137855(n+1)-A305749(n+1))`
-/

namespace A320751.P11272371019605547549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A137855 (n + 1) - A305749 (n + 1)).toNat

end

end A320751.P11272371019605547549

/-! ## A320751.P7434296630416858012

`A014682(A137855(n+1)+A320742(n+1)-A320748(n+1))`
-/

namespace A320751.P7434296630416858012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A137855 (n + 1) + (A320742 (n + 1) - A320748 (n + 1))).toNat

end

end A320751.P7434296630416858012

/-! ## A320751.P38116717420900170

`A320742(n+1)+A014682(A137855(n+1)-A320747(n+1))`
-/

namespace A320751.P38116717420900170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A014682 (A137855 (n + 1) - A320747 (n + 1)).toNat

end

end A320751.P38116717420900170

/-! ## A320751.P7606756466624539782

`A014682(A320747(n+1)+A137855(n+1))-A320748(n+1)`
-/

namespace A320751.P7606756466624539782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A320747 (n + 1) + A137855 (n + 1)).toNat - A320748 (n + 1)

end

end A320751.P7606756466624539782

/-! ## A320751.P16762896646848433095

`A137855(n+1)%A014682(A305749(n+1)+A137855(n+1))`
-/

namespace A320751.P16762896646848433095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137855 (n + 1)) (A014682 (A305749 (n + 1) + A137855 (n + 1)).toNat)

end

end A320751.P16762896646848433095

/-! ## A320751.P1002453129138642524

`A004525(A137855(n+1)-A305749(n+1))`
-/

namespace A320751.P1002453129138642524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A137855 (n + 1) - A305749 (n + 1)).toNat

end

end A320751.P1002453129138642524

/-! ## A320751.P2724494158204283169

`A004526(A137855(n+1)-A305749(n+1))`
-/

namespace A320751.P2724494158204283169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137855 (n + 1) - A305749 (n + 1)).toNat

end

end A320751.P2724494158204283169

/-! ## A320751.P7331072115680621756

`A025480(A137855(n+1)-A305749(n+1))`
-/

namespace A320751.P7331072115680621756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A137855 (n + 1) - A305749 (n + 1)).toNat

end

end A320751.P7331072115680621756

/-! ## A320751.P1110119282975561213

`A026741(A137855(n+1)-A305749(n+1))`
-/

namespace A320751.P1110119282975561213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A137855 (n + 1) - A305749 (n + 1)).toNat

end

end A320751.P1110119282975561213

/-!
# A320752: Primes of the form 5*n^2 - 5*n + 13.

The programs for A320752, the canonical program `A320752.P6769832532502820649` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320752 has offset 1).

The definition of A320752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320752.P6769832532502820649

`p?[∑[10*n]+13]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A320752

/-- `p?[∑[10*n]+13]` -/
def P6769832532502820649.Spec : Prop :=
  ∀ n, (P6769832532502820649.a n : ℤ) = A320752 (n + 1)

theorem P6769832532502820649.correct : P6769832532502820649.Spec := by
  intro n
  simp only [A320752, Nat.add_sub_cancel]

end A320752

/-! ## A320752.P9090839447907882560

`or(1, p?[A124080(n)+13])`
-/

namespace A320752.P9090839447907882560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A320752.P9090839447907882560

namespace A320752

/-- `or(1, p?[A124080(n)+13])` -/
def P9090839447907882560.Spec : Prop :=
  ∀ n, P9090839447907882560.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P7096769166942325938

`or(1, p?[A062786(n+1)+12])`
-/

namespace A320752.P7096769166942325938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A320752.P7096769166942325938

namespace A320752

/-- `or(1, p?[A062786(n+1)+12])` -/
def P7096769166942325938.Spec : Prop :=
  ∀ n, P7096769166942325938.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P13279227596380728504

`p?[A124080(n)+13]%A017463(n)`
-/

namespace A320752.P13279227596380728504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017463 n)

end

end A320752.P13279227596380728504

namespace A320752

/-- `p?[A124080(n)+13]%A017463(n)` -/
def P13279227596380728504.Spec : Prop :=
  ∀ n, P13279227596380728504.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P121536514561184021

`lcm(p?[A124080(n)+13], A020985(n))`
-/

namespace A320752.P121536514561184021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020985 n)

end

end A320752.P121536514561184021

namespace A320752

/-- `lcm(p?[A124080(n)+13], A020985(n))` -/
def P121536514561184021.Spec : Prop :=
  ∀ n, (P121536514561184021.a n : ℤ) = A320752 (n + 1)

end A320752

/-! ## A320752.P552355566874888567

`A000007(n+1)+p?[A124080(n)+13]`
-/

namespace A320752.P552355566874888567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P552355566874888567

namespace A320752

/-- `A000007(n+1)+p?[A124080(n)+13]` -/
def P552355566874888567.Spec : Prop :=
  ∀ n, P552355566874888567.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P2654509618710508885

`A000038(n+1)+p?[A124080(n)+13]`
-/

namespace A320752.P2654509618710508885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P2654509618710508885

namespace A320752

/-- `A000038(n+1)+p?[A124080(n)+13]` -/
def P2654509618710508885.Spec : Prop :=
  ∀ n, P2654509618710508885.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P1041239274113518573

`A007318(C(2, n))*p?[A124080(n)+13]`
-/

namespace A320752.P1041239274113518573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P1041239274113518573

namespace A320752

/-- `A007318(C(2, n))*p?[A124080(n)+13]` -/
def P1041239274113518573.Spec : Prop :=
  ∀ n, P1041239274113518573.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P14315584570665377192

`A033999(n)²*p?[A062786(n+1)+12]`
-/

namespace A320752.P14315584570665377192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P14315584570665377192

namespace A320752

/-- `A033999(n)²*p?[A062786(n+1)+12]` -/
def P14315584570665377192.Spec : Prop :=
  ∀ n, P14315584570665377192.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P5543987001731058343

`A014963(9*n+6)*p?[A124080(n)+13]`
-/

namespace A320752.P5543987001731058343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P5543987001731058343

namespace A320752

/-- `A014963(9*n+6)*p?[A124080(n)+13]` -/
def P5543987001731058343.Spec : Prop :=
  ∀ n, P5543987001731058343.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P3789364271355639147

`A007318(C(2, n))*p?[A062786(n+1)+12]`
-/

namespace A320752.P3789364271355639147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P3789364271355639147

namespace A320752

/-- `A007318(C(2, n))*p?[A062786(n+1)+12]` -/
def P3789364271355639147.Spec : Prop :=
  ∀ n, P3789364271355639147.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P7965174194873532585

`A000108(C(2, n+2))*p?[A124080(n)+13]`
-/

namespace A320752.P7965174194873532585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P7965174194873532585

namespace A320752

/-- `A000108(C(2, n+2))*p?[A124080(n)+13]` -/
def P7965174194873532585.Spec : Prop :=
  ∀ n, P7965174194873532585.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P17559369952945218903

`p?[A062786(n+1)+12]%A000040(n+3)²`
-/

namespace A320752.P17559369952945218903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000040 (n + 3) ^ 2)

end

end A320752.P17559369952945218903

namespace A320752

/-- `p?[A062786(n+1)+12]%A000040(n+3)²` -/
def P17559369952945218903.Spec : Prop :=
  ∀ n, P17559369952945218903.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P10304505311263372184

`p?[A124080(n)+13]/A000108(n²%(n+1))`
-/

namespace A320752.P10304505311263372184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000108 (n ^ 2 % (n + 1)) : ℚ)

end

end A320752.P10304505311263372184

namespace A320752

/-- `p?[A124080(n)+13]/A000108(n²%(n+1))` -/
def P10304505311263372184.Spec : Prop :=
  ∀ n, P10304505311263372184.a n = (A320752 (n + 1) : ℚ)

end A320752

/-! ## A320752.P7558411978166761253

`A000041(gcd(n, n+1))*p?[A062786(n+1)+12]`
-/

namespace A320752.P7558411978166761253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P7558411978166761253

namespace A320752

/-- `A000041(gcd(n, n+1))*p?[A062786(n+1)+12]` -/
def P7558411978166761253.Spec : Prop :=
  ∀ n, P7558411978166761253.a n = A320752 (n + 1)

end A320752

/-! ## A320752.P15551627211127237579

`p?[A124080(n)+13]/A006530(∑[n+1])²%2`
-/

namespace A320752.P15551627211127237579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + 13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A006530 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) 2 : ℚ)

end

end A320752.P15551627211127237579

namespace A320752

/-- `p?[A124080(n)+13]/A006530(∑[n+1])²%2` -/
def P15551627211127237579.Spec : Prop :=
  ∀ n, P15551627211127237579.a n = (A320752 (n + 1) : ℚ)

end A320752

/-! ## A320752.P6128262801350688536

`(A000040(n+1)%2)!*p?[A062786(n+1)+12]`
-/

namespace A320752.P6128262801350688536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320752.P6128262801350688536

namespace A320752

/-- `(A000040(n+1)%2)!*p?[A062786(n+1)+12]` -/
def P6128262801350688536.Spec : Prop :=
  ∀ n, P6128262801350688536.a n = A320752 (n + 1)

end A320752

/-!
# A320753: Number of partitions of n with seven kinds of 1.

The programs for A320753, there is no canonical definition to state claims against.
-/

/-! ## A320753.P5403378412484844102

`∑[A120477(n)]`
-/

namespace A320753.P5403378412484844102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320753.P5403378412484844102

/-! ## A320753.P10473590631251930400

`∑[∑[A014161(n)]]`
-/

namespace A320753.P10473590631251930400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320753.P10473590631251930400

/-! ## A320753.P17725016626958581866

`∑[∑[∑[A014160(n)]]]`
-/

namespace A320753.P17725016626958581866
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320753.P17725016626958581866

/-! ## A320753.P4711339463107727619

`∑[∑[∑[∑[A014153(n)]]]]`
-/

namespace A320753.P4711339463107727619
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320753.P4711339463107727619

/-! ## A320753.P5292451817989829445

`∑[∑[∑[∑[∑[A000070(n)]]]]]`
-/

namespace A320753.P5292451817989829445
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320753.P5292451817989829445

/-! ## A320753.P3239992544537960363

`∑[∑[∑[∑[∑[∑[A000041(n)]]]]]]`
-/

namespace A320753.P3239992544537960363
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320753.P3239992544537960363

/-!
# A320754: Number of partitions of n with eight kinds of 1.

The programs for A320754, there is no canonical definition to state claims against.
-/

/-! ## A320754.P5841191349614913846

`∑[A320753(n)]`
-/

namespace A320754.P5841191349614913846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320754.P5841191349614913846

/-! ## A320754.P5284353677629828014

`∑[∑[A120477(n)]]`
-/

namespace A320754.P5284353677629828014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120477 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320754.P5284353677629828014

/-! ## A320754.P145964525475190694

`∑[∑[∑[A014161(n)]]]`
-/

namespace A320754.P145964525475190694
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320754.P145964525475190694

/-! ## A320754.P14865334916708633075

`∑[∑[∑[∑[∑[A014153(n)]]]]]`
-/

namespace A320754.P14865334916708633075
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320754.P14865334916708633075

/-! ## A320754.P6919423570525711398

`∑[∑[∑[∑[∑[∑[∑[A000041(n)]]]]]]]`
-/

namespace A320754.P6919423570525711398
noncomputable section

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320754.P6919423570525711398

/-! ## A320754.P15904258000552533050

`∑[∑[∑[A014160(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A320754.P15904258000552533050
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A014160 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320754.P15904258000552533050

/-! ## A320754.P10108415094134736990

`A320755(n+1)-(A320755(n)+A320753(n+1))`
-/

namespace A320754.P10108415094134736990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320755 (n + 1) - (A320755 n + A320753 (n + 1))

end

end A320754.P10108415094134736990

/-!
# A320755: Number of partitions of n with nine kinds of 1.

The programs for A320755, there is no canonical definition to state claims against.
-/

/-! ## A320755.P12950754734310295749

`∑[A320754(n)]`
-/

namespace A320755.P12950754734310295749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320755.P12950754734310295749

/-! ## A320755.P16026853803285420294

`∑[∑[A320753(n)]]`
-/

namespace A320755.P16026853803285420294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320755.P16026853803285420294

/-! ## A320755.P11204489194409270119

`∑[∑[∑[A120477(n)]]]`
-/

namespace A320755.P11204489194409270119
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320755.P11204489194409270119

/-! ## A320755.P9298470397294691419

`∑[∑[∑[∑[A014161(n)]]]]`
-/

namespace A320755.P9298470397294691419
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014161 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320755.P9298470397294691419

/-! ## A320755.P16411371487168668102

`∑[∑[∑[∑[∑[∑[∑[∑[A000041(n)]]]]]]]]`
-/

namespace A320755.P16411371487168668102
noncomputable section

def f8 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320755.P16411371487168668102

/-! ## A320755.P3628583104436783492

`∑[∑[∑[∑[∑[A014153(n)+a(n-1)]]]]]` with `a(0)=1`
-/

namespace A320755.P3628583104436783492
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f5 =>
  A014153 n + f5 (n - 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320755.P3628583104436783492

/-! ## A320755.P8333675233729862120

`A292508(eq[8, A116598(n)])`
-/

namespace A320755.P8333675233729862120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320755.P8333675233729862120

/-!
# A320756: Number of partitions of n with ten kinds of 1.

The programs for A320756, there is no canonical definition to state claims against.
-/

/-! ## A320756.P14085086671450186301

`∑[A320755(n)]`
-/

namespace A320756.P14085086671450186301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320756.P14085086671450186301

/-! ## A320756.P16898674438355578360

`∑[∑[A320754(n)]]`
-/

namespace A320756.P16898674438355578360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320756.P16898674438355578360

/-! ## A320756.P2600622048378090511

`∑[∑[∑[A320753(n)]]]`
-/

namespace A320756.P2600622048378090511
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320756.P2600622048378090511

/-! ## A320756.P15109869716590082155

`∑[∑[∑[∑[A120477(n)]]]]`
-/

namespace A320756.P15109869716590082155
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120477 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320756.P15109869716590082155

/-! ## A320756.P17243381354178907333

`∑[∑[∑[∑[∑[A014161(n)]]]]]`
-/

namespace A320756.P17243381354178907333
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014161 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320756.P17243381354178907333

/-!
# A320757: For p the n-th prime congruent to 1 (mod 4), a(n) is the clique number of the quadratic residue (Paley) graph over F_p, the field of order p.

The programs for A320757, there is no canonical definition to state claims against.
-/

/-! ## A320757.P1167517225645682031

`A320837(n+1)+1`
-/

namespace A320757.P1167517225645682031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320837 (n + 1) + 1

end

end A320757.P1167517225645682031

/-! ## A320757.P13782408275404638384

`A005496(A320837(n+1))`
-/

namespace A320757.P13782408275404638384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A320837 (n + 1)).toNat

end

end A320757.P13782408275404638384

/-! ## A320757.P16137467290212865907

`A293715(A320837(Δ[n²]-n))`
-/

namespace A320757.P16137467290212865907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (A320837 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A320757.P16137467290212865907

/-! ## A320757.P3248853646473367212

`A325678(2*n+1)-A003849(A257011(3*n+5))+1`
-/

namespace A320757.P3248853646473367212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (2 * n + 1) - A003849 (A257011 (3 * n + 5)).toNat + 1

end

end A320757.P3248853646473367212

/-!
# A320758: Number of ordered set partitions of [n] where the maximal block size equals two.

The programs for A320758, the canonical program `A320758.P14389415916150682477` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320758 has offset 2).

The definition of A320758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320758.P14389415916150682477

`A080599(n+2)-A000142(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A320758

/-- `A080599(n+2)-A000142(n+2)` -/
def P14389415916150682477.Spec : Prop :=
  ∀ n, P14389415916150682477.a n = A320758 (n + 2)

theorem P14389415916150682477.correct : P14389415916150682477.Spec := by
  intro n
  simp only [A320758, Nat.add_sub_cancel]

end A320758

/-! ## A320758.P17999576363986777786

`A276922(∑[n+2]+3)`
-/

namespace A320758.P17999576363986777786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320758.P17999576363986777786

namespace A320758

/-- `A276922(∑[n+2]+3)` -/
def P17999576363986777786.Spec : Prop :=
  ∀ n, P17999576363986777786.a n = A320758 (n + 2)

end A320758

/-! ## A320758.P2576172485891110067

`record[A276922(A000217(n)+2)]`
-/

namespace A320758.P2576172485891110067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320758.P2576172485891110067

namespace A320758

/-- `record[A276922(A000217(n)+2)]` -/
def P2576172485891110067.Spec : Prop :=
  ∀ n, P2576172485891110067.a n = A320758 (n + 2)

end A320758

/-! ## A320758.P8560678284977586309

`record[A276922(A008619(A014206(n)))]`
-/

namespace A320758.P8560678284977586309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A008619 (A014206 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320758.P8560678284977586309

namespace A320758

/-- `record[A276922(A008619(A014206(n)))]` -/
def P8560678284977586309.Spec : Prop :=
  ∀ n, P8560678284977586309.a n = A320758 (n + 2)

end A320758

/-! ## A320758.P663884922551784815

`record[A276922(A061925(n)+A008619(n))]`
-/

namespace A320758.P663884922551784815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A061925 n + A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320758.P663884922551784815

namespace A320758

/-- `record[A276922(A061925(n)+A008619(n))]` -/
def P663884922551784815.Spec : Prop :=
  ∀ n, P663884922551784815.a n = A320758 (n + 2)

end A320758

/-!
# A320759: Number of ordered set partitions of [n] where the maximal block size equals three.

The programs for A320759, there is no canonical definition to state claims against.
-/

/-! ## A320759.P12658994170345590420

`A189886(n+3)-A080599(n+3)`
-/

namespace A320759.P12658994170345590420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189886 (n + 3) - A080599 (n + 3)

end

end A320759.P12658994170345590420

/-! ## A320759.P15334077920749219029

`A276922(A167614(n+2))`
-/

namespace A320759.P15334077920749219029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A167614 (n + 2)).toNat

end

end A320759.P15334077920749219029

/-! ## A320759.P8950166545863263877

`A276922(A052905(n)+8)`
-/

namespace A320759.P8950166545863263877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A052905 n + 8).toNat

end

end A320759.P8950166545863263877

/-! ## A320759.P5382932874321571847

`A276922(A055999(n)+9)`
-/

namespace A320759.P5382932874321571847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A055999 n + 9).toNat

end

end A320759.P5382932874321571847

/-! ## A320759.P7449051210997911852

`A276922(eq[2, A141169(n)])`
-/

namespace A320759.P7449051210997911852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320759.P7449051210997911852

/-! ## A320759.P956234593402896045

`A276922(eq[3, A002262(n)])`
-/

namespace A320759.P956234593402896045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320759.P956234593402896045

/-! ## A320759.P6224793419967331343

`A276922(eq[4, A002260(n+1)])`
-/

namespace A320759.P6224793419967331343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320759.P6224793419967331343

/-! ## A320759.P10105811732601751264

`A276922(eq[1, A144328(n+1)-2])`
-/

namespace A320759.P10105811732601751264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320759.P10105811732601751264

/-! ## A320759.P16832919716809754545

`A276922(eq[2, A134868(n+1)-2])`
-/

namespace A320759.P16832919716809754545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320759.P16832919716809754545

/-! ## A320759.P10867186540392162612

`A276922(eq[2, A134868(n+1)/2])`
-/

namespace A320759.P10867186540392162612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320759.P10867186540392162612

/-!
# A320760: Number of ordered set partitions of [n] where the maximal block size equals four.

The programs for A320760, there is no canonical definition to state claims against.
-/

/-! ## A320760.P7170916127272119188

`A276924(n+4)-A189886(n+4)`
-/

namespace A320760.P7170916127272119188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276924 (n + 4) - A189886 (n + 4)

end

end A320760.P7170916127272119188

/-! ## A320760.P13395167434120051542

`A276922(A155212(n)+12)`
-/

namespace A320760.P13395167434120051542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A155212 n + 12).toNat

end

end A320760.P13395167434120051542

/-! ## A320760.P11125417812516323281

`A276922(eq[3, A141169(n)])`
-/

namespace A320760.P11125417812516323281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320760.P11125417812516323281

/-! ## A320760.P5239205678231085925

`A276922(eq[4, A002262(n)])`
-/

namespace A320760.P5239205678231085925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320760.P5239205678231085925

/-! ## A320760.P18156083590444197566

`A276922(eq[4, A144328(n+1)])`
-/

namespace A320760.P18156083590444197566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320760.P18156083590444197566

/-! ## A320760.P18014811907595777947

`A276922(eq[5, A002260(n+1)])`
-/

namespace A320760.P18014811907595777947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320760.P18014811907595777947

/-! ## A320760.P4151463073565145385

`A276922(eq[6, A308690(n+1)])`
-/

namespace A320760.P4151463073565145385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320760.P4151463073565145385

/-!
# A320761: Number of ordered set partitions of [n] where the maximal block size equals five.

The programs for A320761, there is no canonical definition to state claims against.
-/

/-! ## A320761.P17790759130015003566

`A276925(n+5)-A276924(n+5)`
-/

namespace A320761.P17790759130015003566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276925 (n + 5) - A276924 (n + 5)

end

end A320761.P17790759130015003566

/-! ## A320761.P17085580049315123701

`A276922(eq[5, A002262(n)])`
-/

namespace A320761.P17085580049315123701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320761.P17085580049315123701

/-! ## A320761.P2795012164170504177

`A276922(eq[5, A141169(n)])`
-/

namespace A320761.P2795012164170504177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320761.P2795012164170504177

/-! ## A320761.P6640119475029443732

`A276922(eq[5, A144328(n+1)])`
-/

namespace A320761.P6640119475029443732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320761.P6640119475029443732

/-! ## A320761.P12789975415302412439

`A276922(eq[6, A002260(n+1)])`
-/

namespace A320761.P12789975415302412439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320761.P12789975415302412439

/-! ## A320761.P17067623154519298844

`A276922(eq[6, A134868(n+1)])`
-/

namespace A320761.P17067623154519298844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320761.P17067623154519298844

/-!
# A320762: Number of ordered set partitions of [n] where the maximal block size equals six.

The programs for A320762, there is no canonical definition to state claims against.
-/

/-! ## A320762.P15062855814863176001

`A276926(n+6)-A276925(n+6)`
-/

namespace A320762.P15062855814863176001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 (n + 6) - A276925 (n + 6)

end

end A320762.P15062855814863176001

/-! ## A320762.P8007071807306074802

`A276922(eq[6, A002262(n)])`
-/

namespace A320762.P8007071807306074802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320762.P8007071807306074802

/-! ## A320762.P6364276756655363076

`A276922(eq[8, A141169(n)])`
-/

namespace A320762.P6364276756655363076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320762.P6364276756655363076

/-! ## A320762.P8007186441433902452

`A276922(eq[64, A059268(n)])`
-/

namespace A320762.P8007186441433902452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320762.P8007186441433902452

/-! ## A320762.P18179009900297845246

`A276922(A167499(n+5)+1)`
-/

namespace A320762.P18179009900297845246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A167499 (n + 5) + 1).toNat

end

end A320762.P18179009900297845246

/-! ## A320762.P12646893637684454055

`A276922(eq[6, A144328(n+1)])`
-/

namespace A320762.P12646893637684454055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320762.P12646893637684454055

/-! ## A320762.P10900666077969630142

`A276922(eq[7, A002260(n+1)])`
-/

namespace A320762.P10900666077969630142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320762.P10900666077969630142

/-!
# A320763: Number of ordered set partitions of [n] where the maximal block size equals seven.

The programs for A320763, there is no canonical definition to state claims against.
-/

/-! ## A320763.P5809643134601327517

`A276927(n+7)-A276926(n+7)`
-/

namespace A320763.P5809643134601327517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276927 (n + 7) - A276926 (n + 7)

end

end A320763.P5809643134601327517

/-! ## A320763.P145924728008277562

`A276922(eq[7, A002262(n)])`
-/

namespace A320763.P145924728008277562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320763.P145924728008277562

/-! ## A320763.P15255638800587157994

`A276922(A000124(n+7)+6)`
-/

namespace A320763.P15255638800587157994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A000124 (n + 7) + 6).toNat

end

end A320763.P15255638800587157994

/-! ## A320763.P2703526733302910998

`A276922(eq[7, A144328(n+1)])`
-/

namespace A320763.P2703526733302910998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320763.P2703526733302910998

/-! ## A320763.P7494661820371690733

`A276922(eq[8, A002260(n+1)])`
-/

namespace A320763.P7494661820371690733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320763.P7494661820371690733

/-! ## A320763.P10596589295501905873

`A276922(eq[8, A134868(n+1)])`
-/

namespace A320763.P10596589295501905873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320763.P10596589295501905873

/-!
# A320764: Number of ordered set partitions of [n] where the maximal block size equals eight.

The programs for A320764, there is no canonical definition to state claims against.
-/

/-! ## A320764.P2602099858822896867

`A276928(n+8)-A276927(n+8)`
-/

namespace A320764.P2602099858822896867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276928 (n + 8) - A276927 (n + 8)

end

end A320764.P2602099858822896867

/-! ## A320764.P5239724324404024822

`A276922(eq[8, A002262(n)])`
-/

namespace A320764.P5239724324404024822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320764.P5239724324404024822

/-! ## A320764.P11948064864565869716

`A276922(eq[8, A144328(n+1)])`
-/

namespace A320764.P11948064864565869716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320764.P11948064864565869716

/-! ## A320764.P78999210525676668

`A276922(eq[9, A002260(n+1)])`
-/

namespace A320764.P78999210525676668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320764.P78999210525676668

/-! ## A320764.P6758039910633289897

`A276922(eq[9, A134868(n+1)])`
-/

namespace A320764.P6758039910633289897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320764.P6758039910633289897

/-! ## A320764.P2461401220189268429

`A276922(eq[13, A245093(n+1)])`
-/

namespace A320764.P2461401220189268429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320764.P2461401220189268429

/-!
# A320765: Number of ordered set partitions of [n] where the maximal block size equals nine.

The programs for A320765, there is no canonical definition to state claims against.
-/

/-! ## A320765.P6117726926393845849

`A276929(n+9)-A276928(n+9)`
-/

namespace A320765.P6117726926393845849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276929 (n + 9) - A276928 (n + 9)

end

end A320765.P6117726926393845849

/-! ## A320765.P9551741519082347528

`A276922(eq[9, A002262(n)])`
-/

namespace A320765.P9551741519082347528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320765.P9551741519082347528

/-! ## A320765.P16965747053636183671

`A276922(A000096(n+8)+10)`
-/

namespace A320765.P16965747053636183671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A000096 (n + 8) + 10).toNat

end

end A320765.P16965747053636183671

/-! ## A320765.P9003340702586963762

`A276922(eq[9, A144328(n+1)])`
-/

namespace A320765.P9003340702586963762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320765.P9003340702586963762

/-! ## A320765.P4751750753905461141

`A276922(eq[10, A002260(n+1)])`
-/

namespace A320765.P4751750753905461141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320765.P4751750753905461141

/-! ## A320765.P18021594705043815760

`A276922(eq[10, A134868(n+1)])`
-/

namespace A320765.P18021594705043815760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320765.P18021594705043815760

/-!
# A320766: Number of ordered set partitions of [n] where the maximal block size equals ten.

The programs for A320766, there is no canonical definition to state claims against.
-/

/-! ## A320766.P7958593580317813432

`A276930(n+10)-A276929(n+10)`
-/

namespace A320766.P7958593580317813432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276930 (n + 10) - A276929 (n + 10)

end

end A320766.P7958593580317813432

/-! ## A320766.P8574092321209417977

`A276922(eq[10, A002262(n)])`
-/

namespace A320766.P8574092321209417977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320766.P8574092321209417977

/-! ## A320766.P1046663335636382590

`A276922(eq[10, A144328(n+1)])`
-/

namespace A320766.P1046663335636382590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320766.P1046663335636382590

/-! ## A320766.P6607863757517106592

`A276922(eq[11, A002260(n+1)])`
-/

namespace A320766.P6607863757517106592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320766.P6607863757517106592

/-! ## A320766.P13166295982044136287

`A276922(eq[11, A134868(n+1)])`
-/

namespace A320766.P13166295982044136287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320766.P13166295982044136287

/-!
# A320768: Number of set partitions of the set of nonempty subsets of {1,...,n} where each block's elements are pairwise disjoint sets.

The programs for A320768, there is no canonical definition to state claims against.
-/

/-! ## A320768.P17471799240896746595

`n*A029456(a(n-1))` with `a(0)=1`
-/

namespace A320768.P17471799240896746595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A029456 (a (n - 1)).toNat

end

end A320768.P17471799240896746595

/-!
# A320770: a(n) = (-1)^floor(n/4) * 2^floor(n/2).

The programs for A320770, the canonical program `A320770.P15024448226605239346` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320770 has offset 0).

The definition of A320770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320770.P15024448226605239346

`(-1)^floor(n/4)*2^floor(n/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A320770

/-- `(-1)^floor(n/4)*2^floor(n/2)` -/
def P15024448226605239346.Spec : Prop :=
  ∀ n, P15024448226605239346.a n = (A320770 n : ℚ)

end A320770

/-! ## A320770.P4891737130887951289

`-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A320770.P4891737130887951289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  -(4 * a (n - 4))

end

end A320770.P4891737130887951289

namespace A320770

/-- `-4*a(n-4)` -/
def P4891737130887951289.Spec : Prop :=
  ∀ n, P4891737130887951289.a n = A320770 n

end A320770

/-! ## A320770.P6113635454758219596

`4-4*(a(n-4)+1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A320770.P6113635454758219596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  4 - 4 * (a (n - 4) + 1)

end

end A320770.P6113635454758219596

namespace A320770

/-- `4-4*(a(n-4)+1)` -/
def P6113635454758219596.Spec : Prop :=
  ∀ n, P6113635454758219596.a n = A320770 n

end A320770

/-! ## A320770.P12797864211948019886

`A009545(or(1, n))`
-/

namespace A320770.P12797864211948019886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (Nat.lor 1 n)

end

end A320770.P12797864211948019886

namespace A320770

/-- `A009545(or(1, n))` -/
def P12797864211948019886.Spec : Prop :=
  ∀ n, P12797864211948019886.a n = A320770 n

end A320770

/-! ## A320770.P17496824584351406502

`A138377(or(1, n))`
-/

namespace A320770.P17496824584351406502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (Nat.lor 1 n)

end

end A320770.P17496824584351406502

namespace A320770

/-- `A138377(or(1, n))` -/
def P17496824584351406502.Spec : Prop :=
  ∀ n, P17496824584351406502.a n = A320770 n

end A320770

/-! ## A320770.P8976145542986400810

`A099087(or(1, n)-1)`
-/

namespace A320770.P8976145542986400810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (Nat.lor 1 n - 1)

end

end A320770.P8976145542986400810

namespace A320770

/-- `A099087(or(1, n)-1)` -/
def P8976145542986400810.Spec : Prop :=
  ∀ n, P8976145542986400810.a n = A320770 n

end A320770

/-! ## A320770.P8844693992504377402

`A099087(n-and(1, n))`
-/

namespace A320770.P8844693992504377402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n - Nat.land 1 n)

end

end A320770.P8844693992504377402

namespace A320770

/-- `A099087(n-and(1, n))` -/
def P8844693992504377402.Spec : Prop :=
  ∀ n, P8844693992504377402.a n = A320770 n

end A320770

/-! ## A320770.P8892928838313620843

`∏[2-A098178(n)²]`
-/

namespace A320770.P8892928838313620843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A098178 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A320770.P8892928838313620843

namespace A320770

/-- `∏[2-A098178(n)²]` -/
def P8892928838313620843.Spec : Prop :=
  ∀ n, P8892928838313620843.a n = A320770 n

end A320770

/-! ## A320770.P213414540575194727

`A009545(A109613(n))`
-/

namespace A320770.P213414540575194727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A109613 n).toNat

end

end A320770.P213414540575194727

namespace A320770

/-- `A009545(A109613(n))` -/
def P213414540575194727.Spec : Prop :=
  ∀ n, P213414540575194727.a n = A320770 n

end A320770

/-! ## A320770.P12152708952135441541

`A099087(A052928(n))`
-/

namespace A320770.P12152708952135441541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (A052928 n).toNat

end

end A320770.P12152708952135441541

namespace A320770

/-- `A099087(A052928(n))` -/
def P12152708952135441541.Spec : Prop :=
  ∀ n, P12152708952135441541.a n = A320770 n

end A320770

/-! ## A320770.P2457329471601418176

`A009545(A052928(n)+1)`
-/

namespace A320770.P2457329471601418176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A052928 n + 1).toNat

end

end A320770.P2457329471601418176

namespace A320770

/-- `A009545(A052928(n)+1)` -/
def P2457329471601418176.Spec : Prop :=
  ∀ n, P2457329471601418176.a n = A320770 n

end A320770

/-! ## A320770.P350201515228867247

`A363524(A351782(n+1))`
-/

namespace A320770.P350201515228867247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363524 (A351782 (n + 1)).toNat

end

end A320770.P350201515228867247

namespace A320770

/-- `A363524(A351782(n+1))` -/
def P350201515228867247.Spec : Prop :=
  ∀ n, P350201515228867247.a n = A320770 n

end A320770

/-! ## A320770.P14656828506360252589

`A099087(A004524(2*n))`
-/

namespace A320770.P14656828506360252589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (A004524 (2 * n)).toNat

end

end A320770.P14656828506360252589

namespace A320770

/-- `A099087(A004524(2*n))` -/
def P14656828506360252589.Spec : Prop :=
  ∀ n, P14656828506360252589.a n = A320770 n

end A320770

/-! ## A320770.P13556400961304093175

`A009545(A215495(2*n))`
-/

namespace A320770.P13556400961304093175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A215495 (2 * n)).toNat

end

end A320770.P13556400961304093175

namespace A320770

/-- `A009545(A215495(2*n))` -/
def P13556400961304093175.Spec : Prop :=
  ∀ n, P13556400961304093175.a n = A320770 n

end A320770

/-! ## A320770.P1517404050267452384

`A009545(A059841(n)+n)`
-/

namespace A320770.P1517404050267452384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A059841 n + (n : ℤ)).toNat

end

end A320770.P1517404050267452384

namespace A320770

/-- `A009545(A059841(n)+n)` -/
def P1517404050267452384.Spec : Prop :=
  ∀ n, P1517404050267452384.a n = A320770 n

end A320770

/-! ## A320770.P6261577558317377279

`A099087(n-A000035(n))`
-/

namespace A320770.P6261577558317377279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 ((n : ℤ) - A000035 n).toNat

end

end A320770.P6261577558317377279

namespace A320770

/-- `A099087(n-A000035(n))` -/
def P6261577558317377279.Spec : Prop :=
  ∀ n, P6261577558317377279.a n = A320770 n

end A320770

/-! ## A320770.P17898726859579236386

`A108520(n-A000035(n))`
-/

namespace A320770.P17898726859579236386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 ((n : ℤ) - A000035 n).toNat

end

end A320770.P17898726859579236386

namespace A320770

/-- `A108520(n-A000035(n))` -/
def P17898726859579236386.Spec : Prop :=
  ∀ n, P17898726859579236386.a n = A320770 n

end A320770

/-! ## A320770.P14006335573484401517

`A009545(xor(n, A059841(n)))`
-/

namespace A320770.P14006335573484401517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (Int.xor (n : ℤ) (A059841 n)).toNat

end

end A320770.P14006335573484401517

namespace A320770

/-- `A009545(xor(n, A059841(n)))` -/
def P14006335573484401517.Spec : Prop :=
  ∀ n, P14006335573484401517.a n = A320770 n

end A320770

/-! ## A320770.P13171663703110064357

`A009545(A056594(n)²+n)`
-/

namespace A320770.P13171663703110064357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A056594 n ^ 2 + (n : ℤ)).toNat

end

end A320770.P13171663703110064357

namespace A320770

/-- `A009545(A056594(n)²+n)` -/
def P13171663703110064357.Spec : Prop :=
  ∀ n, P13171663703110064357.a n = A320770 n

end A320770

/-! ## A320770.P14896899621342292156

`A009545(A004524(2*n)+1)`
-/

namespace A320770.P14896899621342292156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A004524 (2 * n) + 1).toNat

end

end A320770.P14896899621342292156

namespace A320770

/-- `A009545(A004524(2*n)+1)` -/
def P14896899621342292156.Spec : Prop :=
  ∀ n, P14896899621342292156.a n = A320770 n

end A320770

/-!
# A320771: Primes p for which p-1 and p+1 are Niven numbers.

The programs for A320771, there is no canonical definition to state claims against.
-/

/-! ## A320771.P10103568103572227565

`record[p?[A283437(n+1)+A191530(n)]]`
-/

namespace A320771.P10103568103572227565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283437 (n + 1) + A191530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320771.P10103568103572227565

/-! ## A320771.P5213557760656013851

`A008578(lt[A321121(n), A326178(n)])`
-/

namespace A320771.P5213557760656013851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320771.P5213557760656013851

/-! ## A320771.P15055769894735710440

`A067526(n+2)-A124771(A003415(n+2))`
-/

namespace A320771.P15055769894735710440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067526 (n + 2) - A124771 (A003415 (n + 2)).toNat

end

end A320771.P15055769894735710440

/-! ## A320771.P17915619024918308211

`A040049(lt[A232023(2*n+1), A035008(n)])`
-/

namespace A320771.P17915619024918308211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232023 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320771.P17915619024918308211

/-!
# A320772: Prime generating polynomial: a(n) = (4*n - 29)^2 + 58.

The programs for A320772, the canonical program `A320772.P16628904008307611518` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320772 has offset 1).

The definition of A320772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)-29)²+58` (program `A320772.P16628904008307611518`, by `A320772.P16628904008307611518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320772.P16628904008307611518

`(4*(n+1)-29)²+58`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A320772

/-- `(4*(n+1)-29)²+58` -/
def P16628904008307611518.Spec : Prop :=
  ∀ n, P16628904008307611518.a n = A320772 (n + 1)

theorem P16628904008307611518.correct : P16628904008307611518.Spec := by
  intro n
  simp only [A320772, Nat.add_sub_cancel]

end A320772

/-!
# A320773: Numbers (excluding squares) whose square root has a continued fraction with a period < 3.

The programs for A320773, there is no canonical definition to state claims against.
-/

/-! ## A320773.P13372138251873590606

`record[n/a(A003285(n))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A320773.P13372138251873590606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  (n : ℚ) / f1 (A003285 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320773.P13372138251873590606

/-! ## A320773.P12410193444512201163

`lt[xor(2, A067280(n+1)), 2]+1`
-/

namespace A320773.P12410193444512201163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A067280 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320773.P12410193444512201163

/-! ## A320773.P16848610342463320812

`∪[(n+1)²+1, A013642(n+1)]`
-/

namespace A320773.P16848610342463320812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320773.P16848610342463320812

/-! ## A320773.P6934822541541423502

`eq[2, A097853(A266298(n)+n)]`
-/

namespace A320773.P6934822541541423502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A266298 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320773.P6934822541541423502

/-! ## A320773.P16396916946185241849

`eq[1, ceil(A003285(A028310(n))/2)]`
-/

namespace A320773.P16396916946185241849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003285 (A028310 n).toNat : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320773.P16396916946185241849

/-! ## A320773.P17364939813850684223

`eq[1, A000045(A003285(n+1))]+1`
-/

namespace A320773.P17364939813850684223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320773.P17364939813850684223

/-! ## A320773.P11024927679503796021

`eq[2, A179291(A067280(n+1))]+1`
-/

namespace A320773.P11024927679503796021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (A067280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320773.P11024927679503796021

/-! ## A320773.P4549700282397332712

`eq[1, A218543(A003285(n+2))]+2`
-/

namespace A320773.P4549700282397332712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218543 (A003285 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A320773.P4549700282397332712

/-! ## A320773.P10265763573136860127

`eq[A003285(n+1), A169695(n)]+1`
-/

namespace A320773.P10265763573136860127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320773.P10265763573136860127

/-! ## A320773.P16403681473860643291

`eq[1, A032190(A003285(n+1)+1)]+1`
-/

namespace A320773.P16403681473860643291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (A003285 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320773.P16403681473860643291

/-!
# A320774: Primes p for which there is a prime q < p such that 5*q == 1 (mod p).

The programs for A320774, there is no canonical definition to state claims against.
-/

/-! ## A320774.P2223581424157609384

`p?[A047221(record[A020483(n)])]`
-/

namespace A320774.P2223581424157609384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320774.P2223581424157609384

/-! ## A320774.P4354283215981843477

`p?[A047221(p?[A118759(n)])]`
-/

namespace A320774.P4354283215981843477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320774.P4354283215981843477

/-!
# A320775: a(n) is the least exponent k greater than 1 such that prime(n)^k starts and ends in prime(n).

The programs for A320775, there is no canonical definition to state claims against.
-/

/-! ## A320775.P11479950074565538148

`A378857(A390240(n))`
-/

namespace A320775.P11479950074565538148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378857 (A390240 n).toNat

end

end A320775.P11479950074565538148

/-! ## A320775.P8802190081836380295

`A378857(A000040(n+1))`
-/

namespace A320775.P8802190081836380295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378857 (A000040 (n + 1)).toNat

end

end A320775.P8802190081836380295

/-! ## A320775.P9937626327081397797

`A378857(A030291(n+1))`
-/

namespace A320775.P9937626327081397797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378857 (A030291 (n + 1)).toNat

end

end A320775.P9937626327081397797

/-! ## A320775.P2531771796802697613

`A378857(A030475(n+1))`
-/

namespace A320775.P2531771796802697613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378857 (A030475 (n + 1)).toNat

end

end A320775.P2531771796802697613

/-! ## A320775.P2813323343570573465

`A378857(A038614(n+1))`
-/

namespace A320775.P2813323343570573465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378857 (A038614 (n + 1)).toNat

end

end A320775.P2813323343570573465

/-!
# A320777: Inverse Euler transform of the number of distinct prime factors (without multiplicity) function A001221.

The programs for A320777, there is no canonical definition to state claims against.
-/

/-! ## A320777.P4920226873901046676

`A016341(and(A000096(n), A165831(n+1)))`
-/

namespace A320777.P4920226873901046676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 (Int.land (A000096 n) (A165831 (n + 1))).toNat

end

end A320777.P4920226873901046676

/-! ## A320777.P17457696638514754945

`A330025(and(A026378(n+1), A239554(n)))`
-/

namespace A320777.P17457696638514754945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (Int.land (A026378 (n + 1)) (A239554 n)).toNat

end

end A320777.P17457696638514754945

/-! ## A320777.P11752403068791547913

`A016341(and(A132337(n+1), A165831(n+1)))`
-/

namespace A320777.P11752403068791547913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 (Int.land (A132337 (n + 1)) (A165831 (n + 1))).toNat

end

end A320777.P11752403068791547913

/-! ## A320777.P7005026419654335858

`A029883(A265399(n+1))^dr(4*n)`
-/

namespace A320777.P7005026419654335858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A265399 (n + 1)).toNat ^ SequenceMachineLib.digitalRoot (4 * n : ℤ)

end

end A320777.P7005026419654335858

/-! ## A320777.P15899756584776885694

`A029883(A265399(n+1))^A001222(n+4)`
-/

namespace A320777.P15899756584776885694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029883 (A265399 (n + 1)).toNat : ℚ) ^ (A001222 (n + 4) : ℤ)

end

end A320777.P15899756584776885694

/-!
# A320779: Inverse Euler transform of the number of divisors function A000005.

The programs for A320779, there is no canonical definition to state claims against.
-/

/-! ## A320779.P9713793605219134365

`∑{d}[n+1, A154955(#)*A328775((n+1)/#)]`
-/

namespace A320779.P9713793605219134365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A328775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320779.P9713793605219134365

/-! ## A320779.P17603496383292406229

`A353945(n+1)+A049320(A353963(n))`
-/

namespace A320779.P17603496383292406229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353945 (n + 1) + A049320 (A353963 n).toNat

end

end A320779.P17603496383292406229

/-! ## A320779.P4954099599133710529

`A353945(n+1)/A118914(A083477(n+1))`
-/

namespace A320779.P4954099599133710529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353945 (n + 1) : ℚ) / (A118914 (A083477 (n + 1)).toNat : ℚ)

end

end A320779.P4954099599133710529

/-! ## A320779.P416190518416827310

`A353945(n+1)/A362852(A276085(2*(n+1)))`
-/

namespace A320779.P416190518416827310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353945 (n + 1) : ℚ) / (A362852 (A276085 (2 * (n + 1))).toNat : ℚ)

end

end A320779.P416190518416827310

/-! ## A320779.P5811710597981438761

`A049347(or(9, A026094(n)))`
-/

namespace A320779.P5811710597981438761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Int.lor 9 (A026094 n)).toNat

end

end A320779.P5811710597981438761

/-!
# A320780: Inverse Euler transform of the sum-of-divisors or sigma function A000203.

The programs for A320780, there is no canonical definition to state claims against.
-/

/-! ## A320780.P17880512796977281510

`∑{d}[n+1, A154955(#)*A328776((n+1)/#)]`
-/

namespace A320780.P17880512796977281510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A328776 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320780.P17880512796977281510

/-!
# A320782: Inverse Euler transform of the unsigned Moebius function A008966.

The programs for A320782, there is no canonical definition to state claims against.
-/

/-! ## A320782.P1691041600765498116

`A014019(A078008(n))*A208970(n+1)`
-/

namespace A320782.P1691041600765498116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A078008 n).toNat * A208970 (n + 1)

end

end A320782.P1691041600765498116

/-! ## A320782.P4058173459975892708

`A014019(A078008(n))*A322286(n+1)`
-/

namespace A320782.P4058173459975892708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A078008 n).toNat * A322286 (n + 1)

end

end A320782.P4058173459975892708

/-! ## A320782.P1339911115384681317

`A014019(2^n-1)*A173911(n)`
-/

namespace A320782.P1339911115384681317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (2 ^ n - 1) * A173911 n

end

end A320782.P1339911115384681317

/-! ## A320782.P5912837756747846842

`A014019(A000225(n))*A208970(n+1)`
-/

namespace A320782.P5912837756747846842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A000225 n).toNat * A208970 (n + 1)

end

end A320782.P5912837756747846842

/-! ## A320782.P186609298820393002

`A014019(A000225(n))*A322286(n+1)`
-/

namespace A320782.P186609298820393002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A000225 n).toNat * A322286 (n + 1)

end

end A320782.P186609298820393002

/-!
# A320783: Inverse Euler transform of (-1)^(n - 1).

The programs for A320783, there is no canonical definition to state claims against.
-/

/-! ## A320783.P7249671049044109688

`A038063(A028310(n))-A154269(A059966(n+1))`
-/

namespace A320783.P7249671049044109688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038063 (A028310 n).toNat - A154269 (A059966 (n + 1)).toNat

end

end A320783.P7249671049044109688

/-!
# A320785: Inverse Euler transform of the number of factorizations function A001055.

The programs for A320785, there is no canonical definition to state claims against.
-/

/-! ## A320785.P1516896735037345929

`A112200(A240883(∑[A004918(n+1)]))`
-/

namespace A320785.P1516896735037345929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112200 (A240883 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A320785.P1516896735037345929

/-! ## A320785.P1949304951524371703

`A238468((n+5)*A242924(n+1))`
-/

namespace A320785.P1949304951524371703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 ((n + 5 : ℤ) * A242924 (n + 1)).toNat

end

end A320785.P1949304951524371703

/-! ## A320785.P11948106764392438261

`Δ[A235875(record[A103406(n)])]`
-/

namespace A320785.P11948106764392438261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320785.P11948106764392438261

/-! ## A320785.P5782138343070459119

`A010892(A026010(n)-A138011(n+1))`
-/

namespace A320785.P5782138343070459119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A026010 n - A138011 (n + 1)).toNat

end

end A320785.P5782138343070459119

/-! ## A320785.P16331737811312131647

`A010892(A090002(n)^A333976(n+1))`
-/

namespace A320785.P16331737811312131647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (SequenceMachineLib.roundAway ((A090002 n : ℚ) ^ (A333976 (n + 1) : ℤ))).toNat

end

end A320785.P16331737811312131647

/-!
# A320787: Number of multisets of exactly two partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320787, there is no canonical definition to state claims against.
-/

/-! ## A320787.P10040701260759750007

`A285229(∑[n+2]+3)`
-/

namespace A320787.P10040701260759750007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320787.P10040701260759750007

/-! ## A320787.P12666028855111241882

`(A285229(A340266(n+1))^(1/2))²`
-/

namespace A320787.P12666028855111241882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A285229 (A340266 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A320787.P12666028855111241882

/-! ## A320787.P10692997148241332240

`A285229(A340266(n+1))%A014210(n)`
-/

namespace A320787.P10692997148241332240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285229 (A340266 (n + 1)).toNat) (A014210 n)

end

end A320787.P10692997148241332240

/-! ## A320787.P3384361628047249359

`A285229(A238531(n+3))%A013655(n)`
-/

namespace A320787.P3384361628047249359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285229 (A238531 (n + 3)).toNat) (A013655 n)

end

end A320787.P3384361628047249359

/-! ## A320787.P3949901998106445399

`or(A000007(n), A285229(A340266(n+1)))`
-/

namespace A320787.P3949901998106445399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285229 (A340266 (n + 1)).toNat)

end

end A320787.P3949901998106445399

/-! ## A320787.P16873934570456668422

`or(A036987(2*n), A285229(A238531(n+3)))`
-/

namespace A320787.P16873934570456668422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (2 * n)) (A285229 (A238531 (n + 3)).toNat)

end

end A320787.P16873934570456668422

/-! ## A320787.P15351636531931256228

`A285229(A340266(n+1))+A004514(A004514(n))`
-/

namespace A320787.P15351636531931256228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A340266 (n + 1)).toNat + A004514 (A004514 n).toNat

end

end A320787.P15351636531931256228

/-! ## A320787.P16014570578393024359

`and(A060160(n+1), A285229(A167614(n+1)-1))`
-/

namespace A320787.P16014570578393024359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A285229 (A167614 (n + 1) - 1).toNat)

end

end A320787.P16014570578393024359

/-!
# A320788: Number of multisets of exactly three partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320788, there is no canonical definition to state claims against.
-/

/-! ## A320788.P17630039832854699506

`A285229(∑[n+3]+6)`
-/

namespace A320788.P17630039832854699506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A320788.P17630039832854699506

/-! ## A320788.P12766125534163394500

`or(char[1], A285229(A167614(n+2)))`
-/

namespace A320788.P12766125534163394500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A285229 (A167614 (n + 2)).toNat)

end

end A320788.P12766125534163394500

/-! ## A320788.P1986074354603954183

`gcd(A000038(n), A285229(A167614(n+2)))`
-/

namespace A320788.P1986074354603954183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285229 (A167614 (n + 2)).toNat)

end

end A320788.P1986074354603954183

/-! ## A320788.P5251258259838910468

`A285229(A167614(n+2))+A000038(n+1)`
-/

namespace A320788.P5251258259838910468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167614 (n + 2)).toNat + A000038 (n + 1)

end

end A320788.P5251258259838910468

/-! ## A320788.P5381982982298593174

`A285229(A167614(n+2))+A000035(2*n)`
-/

namespace A320788.P5381982982298593174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167614 (n + 2)).toNat + A000035 (2 * n)

end

end A320788.P5381982982298593174

/-! ## A320788.P16198024626395991507

`A000034(2*n)*A285229(A167614(n+2))`
-/

namespace A320788.P16198024626395991507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A285229 (A167614 (n + 2)).toNat

end

end A320788.P16198024626395991507

/-! ## A320788.P5800526769896565981

`A010685(2*n)*A285229(A167614(n+2))`
-/

namespace A320788.P5800526769896565981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A285229 (A167614 (n + 2)).toNat

end

end A320788.P5800526769896565981

/-! ## A320788.P16538607316433963256

`gcd(3, A000124(n))*A285229(A167614(n+2))`
-/

namespace A320788.P16538607316433963256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A000124 n) : ℤ) * A285229 (A167614 (n + 2)).toNat

end

end A320788.P16538607316433963256

/-! ## A320788.P11794745190644116987

`A001222(A076605(n+2))*A285229(A167614(n+2))`
-/

namespace A320788.P11794745190644116987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076605 (n + 2)).toNat * A285229 (A167614 (n + 2)).toNat

end

end A320788.P11794745190644116987

/-! ## A320788.P4767070920602586762

`A285229(A167614(n+2))^A000034(A006093(n+1))`
-/

namespace A320788.P4767070920602586762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285229 (A167614 (n + 2)).toNat : ℚ) ^ (A000034 (A006093 (n + 1)).toNat : ℤ)

end

end A320788.P4767070920602586762

/-! ## A320788.P7914263920490221964

`A285229(A167614(n+2))^A001221(A136548(n+1))`
-/

namespace A320788.P7914263920490221964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285229 (A167614 (n + 2)).toNat : ℚ) ^ (A001221 (A136548 (n + 1)).toNat : ℤ)

end

end A320788.P7914263920490221964

/-! ## A320788.P11730106800978462916

`and(A060160(n+1), A285229(A167614(n+2)))`
-/

namespace A320788.P11730106800978462916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A285229 (A167614 (n + 2)).toNat)

end

end A320788.P11730106800978462916

/-! ## A320788.P8581674854543291570

`A285229(A167614(n+2))+A055672(A066260(n+1))`
-/

namespace A320788.P8581674854543291570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167614 (n + 2)).toNat + A055672 (A066260 (n + 1)).toNat

end

end A320788.P8581674854543291570

/-!
# A320789: Number of multisets of exactly four partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320789, there is no canonical definition to state claims against.
-/

/-! ## A320789.P13354322254237506858

`A285229(A167614(n+3)+1)`
-/

namespace A320789.P13354322254237506858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167614 (n + 3) + 1).toNat

end

end A320789.P13354322254237506858

/-! ## A320789.P9970868249882907999

`A285229(A133263(n+4)+2)`
-/

namespace A320789.P9970868249882907999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A133263 (n + 4) + 2).toNat

end

end A320789.P9970868249882907999

/-! ## A320789.P17765160366987349408

`A285229(A000124(n+4)+3)`
-/

namespace A320789.P17765160366987349408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 (n + 4) + 3).toNat

end

end A320789.P17765160366987349408

/-! ## A320789.P11460038933612565649

`A285229(A000096(n+3)+5)`
-/

namespace A320789.P11460038933612565649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 3) + 5).toNat

end

end A320789.P11460038933612565649

/-! ## A320789.P4927330534085482300

`A285229(A034856(n+3)+6)`
-/

namespace A320789.P4927330534085482300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A034856 (n + 3) + 6).toNat

end

end A320789.P4927330534085482300

/-! ## A320789.P14785725776294162847

`A285229(n+8+A000217(n+3))`
-/

namespace A320789.P14785725776294162847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 ((n + 8 : ℤ) + A000217 (n + 3)).toNat

end

end A320789.P14785725776294162847

/-! ## A320789.P13435608497429912039

`A285229(eq[4, A002262(n)])`
-/

namespace A320789.P13435608497429912039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320789.P13435608497429912039

/-!
# A320790: Number of multisets of exactly five partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320790, there is no canonical definition to state claims against.
-/

/-! ## A320790.P17959078527960859192

`A285229(A167499(n+4))`
-/

namespace A320790.P17959078527960859192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167499 (n + 4)).toNat

end

end A320790.P17959078527960859192

/-! ## A320790.P15108022307483753466

`A285229(A000124(n+5)+4)`
-/

namespace A320790.P15108022307483753466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 (n + 5) + 4).toNat

end

end A320790.P15108022307483753466

/-! ## A320790.P1145880386250339066

`A285229(A000096(n+4)+6)`
-/

namespace A320790.P1145880386250339066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 4) + 6).toNat

end

end A320790.P1145880386250339066

/-! ## A320790.P8357367413226322734

`A285229(A000217(n+5)+5)`
-/

namespace A320790.P8357367413226322734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000217 (n + 5) + 5).toNat

end

end A320790.P8357367413226322734

/-! ## A320790.P9821384321771718486

`A285229(A052905(n+2)+10)`
-/

namespace A320790.P9821384321771718486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A052905 (n + 2) + 10).toNat

end

end A320790.P9821384321771718486

/-! ## A320790.P3029280917656592606

`A285229(A167614(A020705(n))+2)`
-/

namespace A320790.P3029280917656592606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167614 (A020705 n).toNat + 2).toNat

end

end A320790.P3029280917656592606

/-! ## A320790.P1078490481199301262

`A285229(A134227(n+5)-A005843(n+1))`
-/

namespace A320790.P1078490481199301262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A134227 (n + 5) - A005843 (n + 1)).toNat

end

end A320790.P1078490481199301262

/-!
# A320791: Number of multisets of exactly six partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320791, there is no canonical definition to state claims against.
-/

/-! ## A320791.P1933381776199754539

`A285229(A133263(n+6)+4)`
-/

namespace A320791.P1933381776199754539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A133263 (n + 6) + 4).toNat

end

end A320791.P1933381776199754539

/-! ## A320791.P18196639456819089458

`A285229(A000096(n+5)+7)`
-/

namespace A320791.P18196639456819089458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 5) + 7).toNat

end

end A320791.P18196639456819089458

/-! ## A320791.P9241491391882621987

`A285229(A000217(n+6)+6)`
-/

namespace A320791.P9241491391882621987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000217 (n + 6) + 6).toNat

end

end A320791.P9241491391882621987

/-! ## A320791.P9999425913078727951

`A285229(A034856(n+6)-(n-1))`
-/

namespace A320791.P9999425913078727951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A034856 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A320791.P9999425913078727951

/-! ## A320791.P11586188279658353612

`A285229(A055999(n+5)-A144396(n+1))`
-/

namespace A320791.P11586188279658353612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A055999 (n + 5) - A144396 (n + 1)).toNat

end

end A320791.P11586188279658353612

/-! ## A320791.P13622981707939632419

`A285229(A144396(n+11)+A055999(n+1))`
-/

namespace A320791.P13622981707939632419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A144396 (n + 11) + A055999 (n + 1)).toNat

end

end A320791.P13622981707939632419

/-!
# A320792: Number of multisets of exactly seven partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320792, there is no canonical definition to state claims against.
-/

/-! ## A320792.P13628140411631940878

`A285229(A167499(n+6)+2)`
-/

namespace A320792.P13628140411631940878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167499 (n + 6) + 2).toNat

end

end A320792.P13628140411631940878

/-! ## A320792.P2684372535285435140

`A285229(A000096(n+6)+8)`
-/

namespace A320792.P2684372535285435140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 6) + 8).toNat

end

end A320792.P2684372535285435140

/-! ## A320792.P16105688011795891676

`A285229(A055999(n+4)+13)`
-/

namespace A320792.P16105688011795891676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A055999 (n + 4) + 13).toNat

end

end A320792.P16105688011795891676

/-! ## A320792.P13352035593697266439

`A285229(A117950(n+6)-A134227(n+2))`
-/

namespace A320792.P13352035593697266439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A117950 (n + 6) - A134227 (n + 2)).toNat

end

end A320792.P13352035593697266439

/-! ## A320792.P11841998552525876583

`A285229(A134227(n+7)-A005843(n+2))`
-/

namespace A320792.P11841998552525876583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A134227 (n + 7) - A005843 (n + 2)).toNat

end

end A320792.P11841998552525876583

/-! ## A320792.P4465596637377894401

`A285229(A004273(n+10)+A000124(n+5))`
-/

namespace A320792.P4465596637377894401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A004273 (n + 10) + A000124 (n + 5)).toNat

end

end A320792.P4465596637377894401

/-! ## A320792.P4807366320456620578

`A285229(A171463(n+12)+A000217(n+6))`
-/

namespace A320792.P4807366320456620578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A171463 (n + 12) + A000217 (n + 6)).toNat

end

end A320792.P4807366320456620578

/-! ## A320792.P10000089665159487816

`A285229(A117950(n+9)%A134227(n+8))`
-/

namespace A320792.P10000089665159487816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (Int.tmod (A117950 (n + 9)) (A134227 (n + 8))).toNat

end

end A320792.P10000089665159487816

/-!
# A320793: Number of multisets of exactly eight partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320793, there is no canonical definition to state claims against.
-/

/-! ## A320793.P538834525988396934

`A285229(A000096(n+7)+9)`
-/

namespace A320793.P538834525988396934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 7) + 9).toNat

end

end A320793.P538834525988396934

/-! ## A320793.P16769196103282453190

`A285229(A055999(n+7)-A144396(n+2))`
-/

namespace A320793.P16769196103282453190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A055999 (n + 7) - A144396 (n + 2)).toNat

end

end A320793.P16769196103282453190

/-! ## A320793.P6704130359873415679

`A285229(A016825(n+8)+A000217(n+4))`
-/

namespace A320793.P6704130359873415679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A016825 (n + 8) + A000217 (n + 4)).toNat

end

end A320793.P6704130359873415679

/-! ## A320793.P17890440167182701150

`A285229(A005408(n+11)+A000217(n+6))`
-/

namespace A320793.P17890440167182701150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A005408 (n + 11) + A000217 (n + 6)).toNat

end

end A320793.P17890440167182701150

/-! ## A320793.P6425005838707294193

`A285229(A144396(n+14)+A055999(n+3))`
-/

namespace A320793.P6425005838707294193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A144396 (n + 14) + A055999 (n + 3)).toNat

end

end A320793.P6425005838707294193

/-! ## A320793.P7877336608573565271

`A285229(A171463(n+14)+A000217(n+7))`
-/

namespace A320793.P7877336608573565271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A171463 (n + 14) + A000217 (n + 7)).toNat

end

end A320793.P7877336608573565271

/-!
# A320794: Number of multisets of exactly nine partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320794, there is no canonical definition to state claims against.
-/

/-! ## A320794.P13388266100123881584

`A285229(A000096(n+8)+10)`
-/

namespace A320794.P13388266100123881584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 8) + 10).toNat

end

end A320794.P13388266100123881584

/-! ## A320794.P5334906690111599767

`A285229(A134227(n+9)-A005843(n+3))`
-/

namespace A320794.P5334906690111599767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A134227 (n + 9) - A005843 (n + 3)).toNat

end

end A320794.P5334906690111599767

/-! ## A320794.P9504922438255646079

`A285229(A117950(n+9)-A134227(n+6))`
-/

namespace A320794.P9504922438255646079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A117950 (n + 9) - A134227 (n + 6)).toNat

end

end A320794.P9504922438255646079

/-! ## A320794.P11567677745957612009

`A285229(A000124(n+11)-A004273(n+7))`
-/

namespace A320794.P11567677745957612009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 (n + 11) - A004273 (n + 7)).toNat

end

end A320794.P11567677745957612009

/-! ## A320794.P8072821634400737104

`A285229(A004273(n+13)+A000124(n+7))`
-/

namespace A320794.P8072821634400737104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A004273 (n + 13) + A000124 (n + 7)).toNat

end

end A320794.P8072821634400737104

/-! ## A320794.P6944981723941221209

`A285229(A171463(n+16)+A000217(n+8))`
-/

namespace A320794.P6944981723941221209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A171463 (n + 16) + A000217 (n + 8)).toNat

end

end A320794.P6944981723941221209

/-!
# A320795: Number of multisets of exactly ten partitions of positive integers into distinct parts with total sum of parts equal to n.

The programs for A320795, there is no canonical definition to state claims against.
-/

/-! ## A320795.P7305843810308553133

`A285229(A167499(n+9)+5)`
-/

namespace A320795.P7305843810308553133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A167499 (n + 9) + 5).toNat

end

end A320795.P7305843810308553133

/-! ## A320795.P13404520851775702540

`A285229(A000096(n+9)+11)`
-/

namespace A320795.P13404520851775702540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000096 (n + 9) + 11).toNat

end

end A320795.P13404520851775702540

/-! ## A320795.P169267598289103971

`A285229(A000217(n+10)+10)`
-/

namespace A320795.P169267598289103971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000217 (n + 10) + 10).toNat

end

end A320795.P169267598289103971

/-! ## A320795.P14208391994543334595

`A285229(A055999(n+9)-A144396(n+3))`
-/

namespace A320795.P14208391994543334595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A055999 (n + 9) - A144396 (n + 3)).toNat

end

end A320795.P14208391994543334595

/-! ## A320795.P10374341949393171489

`A285229(eq[11, A002260(n+1)])`
-/

namespace A320795.P10374341949393171489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320795.P10374341949393171489

/-! ## A320795.P13720125182997153238

`A285229(eq[10, A002262(n)])`
-/

namespace A320795.P13720125182997153238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320795.P13720125182997153238

/-! ## A320795.P1439562647309252606

`A285229(eq[11, A134868(n+1)])`
-/

namespace A320795.P1439562647309252606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320795.P1439562647309252606

/-!
# A320796: Regular triangle where T(n,k) is the number of non-isomorphic self-dual multiset partitions of weight n with k parts.

The programs for A320796, there is no canonical definition to state claims against.
-/

/-! ## A320796.P17335290547366721826

`A319951(A141905(n))-char[A001986(n+1)]`
-/

namespace A320796.P17335290547366721826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A141905 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320796.P17335290547366721826

/-! ## A320796.P5751881988064832675

`A319951(A141905(n))^Δ[A087051(n)]`
-/

namespace A320796.P5751881988064832675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319951 (A141905 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A320796.P5751881988064832675

/-! ## A320796.P6477404660407642766

`A319951(A141905(n)%A282767(n+1))`
-/

namespace A320796.P6477404660407642766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (Int.tmod (A141905 n) (A282767 (n + 1))).toNat

end

end A320796.P6477404660407642766

/-! ## A320796.P8065583626310907116

`A319951(A141905(n))^A007318(A001498(n))`
-/

namespace A320796.P8065583626310907116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319951 (A141905 n).toNat : ℚ) ^ (A007318 (A001498 n).toNat : ℤ)

end

end A320796.P8065583626310907116

/-! ## A320796.P11564921643055431399

`A221671(A368487(n))`
-/

namespace A320796.P11564921643055431399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (A368487 n).toNat

end

end A320796.P11564921643055431399

/-!
# A320797: Number of non-isomorphic self-dual multiset partitions of weight n with no singletons.

The programs for A320797, there is no canonical definition to state claims against.
-/

/-! ## A320797.P11295580081529683854

`A109054(A320268(n+1)+1)`
-/

namespace A320797.P11295580081529683854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A320268 (n + 1) + 1).toNat

end

end A320797.P11295580081529683854

/-! ## A320797.P1291819341239513542

`Δ[A001678(n+3)-A275062(n)]`
-/

namespace A320797.P1291819341239513542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (n + 3) - A275062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320797.P1291819341239513542

/-! ## A320797.P14005458663842410246

`Δ[A001678(n+3)-A306684(n)]`
-/

namespace A320797.P14005458663842410246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (n + 3) - A306684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320797.P14005458663842410246

/-! ## A320797.P5039750280249445613

`A316983(n)+A321413(n)-A321409(n)`
-/

namespace A320797.P5039750280249445613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316983 n + (A321413 n - A321409 n)

end

end A320797.P5039750280249445613

/-! ## A320797.P11973162135559444512

`A325280(A317101(2*(n+2)))+A251712(n+4)`
-/

namespace A320797.P11973162135559444512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A317101 (2 * (n + 2))).toNat + A251712 (n + 4)

end

end A320797.P11973162135559444512

/-!
# A320798: Number of non-isomorphic weight-n connected antichains of non-constant multisets with multiset density -1.

The programs for A320798, there is no canonical definition to state claims against.
-/

/-! ## A320798.P3444276000934375070

`A276669(record[A152877(n)])`
-/

namespace A320798.P3444276000934375070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320798.P3444276000934375070

/-! ## A320798.P7864925791047501973

`∑[or(A086826(n+1), A086842(n+1))]`
-/

namespace A320798.P7864925791047501973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086826 (n + 1)) (A086842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320798.P7864925791047501973

/-! ## A320798.P3487364128981054437

`A001462(A197159(n+1))-A393352(n)`
-/

namespace A320798.P3487364128981054437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A197159 (n + 1)).toNat - A393352 n

end

end A320798.P3487364128981054437

/-! ## A320798.P453835368871928912

`A003056(A057730(n+1)*A084624(n))`
-/

namespace A320798.P453835368871928912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A057730 (n + 1) * A084624 n).toNat

end

end A320798.P453835368871928912

