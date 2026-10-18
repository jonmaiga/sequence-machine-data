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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A082800: Smallest multiple of 4 beginning with n.

The programs for A082800, the canonical program `A082800.P8950287159312383655` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082800 has offset 1).

The definition of A082800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082800.P8950287159312383655

`2*a(n-4)-a(n-8)` with `a(0)=12, a(1)=20, a(2)=32, a(3)=4, a(4)=52, a(5)=60, a(6)=72, a(7)=8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082800

/-- `2*a(n-4)-a(n-8)` -/
def P8950287159312383655.Spec : Prop :=
  ∀ n, P8950287159312383655.a n = A082800 (n + 1)

theorem P8950287159312383655.correct : P8950287159312383655.Spec := by
  intro n
  simp only [A082800, Nat.add_sub_cancel]

end A082800

/-! ## A082800.P15552076880071093661

`A082803(2*(n+1))/2`
-/

namespace A082800.P15552076880071093661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082803 (2 * (n + 1)) : ℚ) / 2

end

end A082800.P15552076880071093661

namespace A082800

/-- `A082803(2*(n+1))/2` -/
def P15552076880071093661.Spec : Prop :=
  ∀ n, P15552076880071093661.a n = (A082800 (n + 1) : ℚ)

end A082800

/-! ## A082800.P6104861188274005974

`A001281(A082803(2*(n+1)))`
-/

namespace A082800.P6104861188274005974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A082803 (2 * (n + 1))).toNat

end

end A082800.P6104861188274005974

namespace A082800

/-- `A001281(A082803(2*(n+1)))` -/
def P6104861188274005974.Spec : Prop :=
  ∀ n, P6104861188274005974.a n = A082800 (n + 1)

end A082800

/-! ## A082800.P15902598238511449375

`A018837(A082803(2*n+2))`
-/

namespace A082800.P15902598238511449375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A082803 (2 * n + 2)).toNat

end

end A082800.P15902598238511449375

namespace A082800

/-- `A018837(A082803(2*n+2))` -/
def P15902598238511449375.Spec : Prop :=
  ∀ n, P15902598238511449375.a n = A082800 (n + 1)

end A082800

/-! ## A082800.P7855382696005308263

`A057979(A082803(2*(n+1))+1)`
-/

namespace A082800.P7855382696005308263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A082803 (2 * (n + 1)) + 1).toNat

end

end A082800.P7855382696005308263

namespace A082800

/-- `A057979(A082803(2*(n+1))+1)` -/
def P7855382696005308263.Spec : Prop :=
  ∀ n, P7855382696005308263.a n = A082800 (n + 1)

end A082800

/-! ## A082800.P11125046268018106832

`A110654(A082803(2*(n+1))-1)`
-/

namespace A082800.P11125046268018106832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A082803 (2 * (n + 1)) - 1).toNat

end

end A082800.P11125046268018106832

namespace A082800

/-- `A110654(A082803(2*(n+1))-1)` -/
def P11125046268018106832.Spec : Prop :=
  ∀ n, P11125046268018106832.a n = A082800 (n + 1)

end A082800

/-! ## A082800.P6694243585801573674

`A004525(lcm(2, A082803(2*(n+1))))`
-/

namespace A082800.P6694243585801573674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A082803 (2 * (n + 1))))

end

end A082800.P6694243585801573674

namespace A082800

/-- `A004525(lcm(2, A082803(2*(n+1))))` -/
def P6694243585801573674.Spec : Prop :=
  ∀ n, P6694243585801573674.a n = A082800 (n + 1)

end A082800

/-!
# A082801: Smallest multiple of 6 beginning with n.

The programs for A082801, there is no canonical definition to state claims against.
-/

/-! ## A082801.P6872994317987988956

`gcd(A005928(A266759(2*(n+2))), A328587(n+1))`
-/

namespace A082801.P6872994317987988956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005928 (A266759 (2 * (n + 2))).toNat) (A328587 (n + 1))

end

end A082801.P6872994317987988956

/-!
# A082802: Smallest multiple of 7 beginning with n.

The programs for A082802, there is no canonical definition to state claims against.
-/

/-! ## A082802.P3273521539394189968

`A258217(n+1)%A008589(A106608(3*(n+1)))`
-/

namespace A082802.P3273521539394189968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258217 (n + 1)) (A008589 (A106608 (3 * (n + 1))).toNat)

end

end A082802.P3273521539394189968

/-! ## A082802.P10786704215456756285

`A008589(A258334(n+1)%A106608(3*(n+1)))`
-/

namespace A082802.P10786704215456756285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (Int.tmod (A258334 (n + 1)) (A106608 (3 * (n + 1)))).toNat

end

end A082802.P10786704215456756285

/-! ## A082802.P9690709135722761041

`gcd(A151933(A001043(n+1)), A258217(n+1))`
-/

namespace A082802.P9690709135722761041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 (A001043 (n + 1)).toNat) (A258217 (n + 1))

end

end A082802.P9690709135722761041

/-! ## A082802.P6947169397080566949

`A258217(∑[A287384(n)])`
-/

namespace A082802.P6947169397080566949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082802.P6947169397080566949

/-! ## A082802.P14244575573534996158

`A258217(A287384(n)+n)`
-/

namespace A082802.P14244575573534996158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258217 (A287384 n + (n : ℤ)).toNat

end

end A082802.P14244575573534996158

/-!
# A082804: Smallest multiple of 9 beginning with n.

The programs for A082804, there is no canonical definition to state claims against.
-/

/-! ## A082804.P1213672992541462232

`9*A004719(A052382(n+1)+1)%A026239(A063176(n+1))`
-/

namespace A082804.P1213672992541462232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * Int.tmod (A004719 (A052382 (n + 1) + 1).toNat) (A026239 (A063176 (n + 1)).toNat)

end

end A082804.P1213672992541462232

/-! ## A082804.P11625035021927083504

`A004719(A007095(n)+2)*A226602(A006094(n+1))`
-/

namespace A082804.P11625035021927083504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A007095 n + 2).toNat * A226602 (A006094 (n + 1)).toNat

end

end A082804.P11625035021927083504

/-! ## A082804.P1461204658472587371

`9*A020753(A004185(n+2))`
-/

namespace A082804.P1461204658472587371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A020753 (A004185 (n + 2)).toNat

end

end A082804.P1461204658472587371

/-! ## A082804.P10219530963710597710

`A052223(A004185(n+2)%A008713(n))`
-/

namespace A082804.P10219530963710597710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (Int.tmod (A004185 (n + 2)) (A008713 n)).toNat

end

end A082804.P10219530963710597710

/-! ## A082804.P14883267133481309510

`A248050(A004719(n+2)*A287384(n))`
-/

namespace A082804.P14883267133481309510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248050 (A004719 (n + 2) * A287384 n).toNat

end

end A082804.P14883267133481309510

/-!
# A082806: Palindromes which are prime and the sum of the digits is also prime.

The programs for A082806, there is no canonical definition to state claims against.
-/

/-! ## A082806.P3039685536646801430

`record[A002385(n+1)*A010051(A230199(n+1))]`
-/

namespace A082806.P3039685536646801430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1) * A010051 (A230199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082806.P3039685536646801430

/-! ## A082806.P13030895436913342501

`∩[A002385(n+1), A083393(n+1)]`
-/

namespace A082806.P13030895436913342501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P13030895436913342501

/-! ## A082806.P11425581133861323914

`∩[A062687(n+1), A083393(n+1)]`
-/

namespace A082806.P11425581133861323914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P11425581133861323914

/-! ## A082806.P18044814968484751058

`∩[A083393(n+1), A188650(n+1)]`
-/

namespace A082806.P18044814968484751058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P18044814968484751058

/-! ## A082806.P10528171228063088365

`∩[A083393(n+1), A340252(n+1)]`
-/

namespace A082806.P10528171228063088365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P10528171228063088365

/-! ## A082806.P9937420576508092592

`∩[A072299(n+1), A083393(n+1)]`
-/

namespace A082806.P9937420576508092592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P9937420576508092592

/-! ## A082806.P11650198804751369466

`∩[A083393(n+1), A232183(n+1)]`
-/

namespace A082806.P11650198804751369466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P11650198804751369466

/-! ## A082806.P9059157959345853204

`∩[A083393(n+1), A084092(n+1)]`
-/

namespace A082806.P9059157959345853204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P9059157959345853204

/-! ## A082806.P12370639241979441574

`∩[A083393(n+1), A350836(n+1)]`
-/

namespace A082806.P12370639241979441574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P12370639241979441574

/-! ## A082806.P561401831519637174

`∩[A083393(n+1), A192139(n+1)]`
-/

namespace A082806.P561401831519637174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P561401831519637174

/-! ## A082806.P17667520877391295958

`∩[A069217(n+1), A083393(n+1)]`
-/

namespace A082806.P17667520877391295958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P17667520877391295958

/-! ## A082806.P12111581974631167976

`∩[A083393(n+1), A180440(n+1)]`
-/

namespace A082806.P12111581974631167976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082806.P12111581974631167976

/-!
# A082807: Palindromic primes p with property that another palindromic prime with as many digits can be obtained by using all the digits of p with a different frequency >=1 (every digit is used at least once).

The programs for A082807, there is no canonical definition to state claims against.
-/

/-! ## A082807.P8840411054893562114

`A052035(A303600(n+2)%A303582(n+3))`
-/

namespace A082807.P8840411054893562114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052035 (Int.tmod (A303600 (n + 2)) (A303582 (n + 3))).toNat

end

end A082807.P8840411054893562114

/-!
# A082810: Palindromes in which every digit occurs with equal frequency.

The programs for A082810, there is no canonical definition to state claims against.
-/

/-! ## A082810.P3810641032156138138

`record[A047813(A296882(n+1))]`
-/

namespace A082810.P3810641032156138138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A296882 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082810.P3810641032156138138

/-! ## A082810.P18039961194049954224

`A028310(∪[A050785(n+1), A117228(n+1)])`
-/

namespace A082810.P18039961194049954224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117228 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A082810.P18039961194049954224

/-! ## A082810.P10152358291775268334

`A047813(∪[A050785(n+1), A117228(n+1)])`
-/

namespace A082810.P10152358291775268334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117228 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A082810.P10152358291775268334

/-!
# A082811: Smallest multiple of n beginning with 2.

The programs for A082811, there is no canonical definition to state claims against.
-/

/-! ## A082811.P5421695827933640612

`(n+1)*A082791(n+1)`
-/

namespace A082811.P5421695827933640612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082791 (n + 1)

end

end A082811.P5421695827933640612

/-!
# A082817: Triangle (with distinct entries) read by rows in which row n contains n numbers whose product == -1 (mod n).

The programs for A082817, there is no canonical definition to state claims against.
-/

/-! ## A082817.P7711445059086976968

`A085983(A317919(n+1))+A081964(n+1)`
-/

namespace A082817.P7711445059086976968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085983 (A317919 (n + 1)).toNat + A081964 (n + 1)

end

end A082817.P7711445059086976968

/-!
# A082818: Diagonal of A082817.

The programs for A082818, there is no canonical definition to state claims against.
-/

/-! ## A082818.P15158077767221877913

`A082817(∑[n+1])`
-/

namespace A082818.P15158077767221877913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082818.P15158077767221877913

/-!
# A082819: First column of A082817.

The programs for A082819, there is no canonical definition to state claims against.
-/

/-! ## A082819.P16275913668997826503

`A082817(∑[n]+1)`
-/

namespace A082819.P16275913668997826503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082817 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082819.P16275913668997826503

/-! ## A082819.P18256502252360664501

`∑{d}[A082817(A000124(n)), A000010(#)]`
-/

namespace A082819.P18256502252360664501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082817 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A082819.P18256502252360664501

/-! ## A082819.P12221214286427616096

`A349127(2*(n+2))+A082817(A000124(n))`
-/

namespace A082819.P12221214286427616096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * (n + 2)) + A082817 (A000124 n).toNat

end

end A082819.P12221214286427616096

/-! ## A082819.P14298571493795534683

`A000035(2*n+3)*A082817(A000124(n))`
-/

namespace A082819.P14298571493795534683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3) * A082817 (A000124 n).toNat

end

end A082819.P14298571493795534683

/-!
# A082820: Product of terms in row n of A082817.

The programs for A082820, there is no canonical definition to state claims against.
-/

/-! ## A082820.P13283203426215587345

`(n+1)*A082821(n+1)-1`
-/

namespace A082820.P13283203426215587345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082821 (n + 1) - 1

end

end A082820.P13283203426215587345

/-!
# A082821: {(Product of terms in row n of A082817) + 1} / n.

The programs for A082821, there is no canonical definition to state claims against.
-/

/-! ## A082821.P7695823076571748708

`(A082820(n+1)+1)/(n+1)`
-/

namespace A082821.P7695823076571748708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082820 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A082821.P7695823076571748708

/-!
# A082823: Diagonal of A082822.

The programs for A082823, there is no canonical definition to state claims against.
-/

/-! ## A082823.P2776055070299211476

`A082822(∑[n+1])`
-/

namespace A082823.P2776055070299211476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082823.P2776055070299211476

/-!
# A082824: First column of A082822.

The programs for A082824, there is no canonical definition to state claims against.
-/

/-! ## A082824.P6418392513118258447

`A082822(∑[n]+1)`
-/

namespace A082824.P6418392513118258447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082822 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082824.P6418392513118258447

/-! ## A082824.P18219094256992056686

`gcd(A000038(n), A082822(A000124(n)))`
-/

namespace A082824.P18219094256992056686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082822 (A000124 n).toNat)

end

end A082824.P18219094256992056686

/-! ## A082824.P3745128056185157486

`A082822(A000124(n))%record[A007054(n)]`
-/

namespace A082824.P3745128056185157486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082822 (A000124 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A082824.P3745128056185157486

/-! ## A082824.P14157234789843375198

`A082822(A000124(n))*A153881(n+2)*A153881(n+2)`
-/

namespace A082824.P14157234789843375198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082822 (A000124 n).toNat * A153881 (n + 2) * A153881 (n + 2)

end

end A082824.P14157234789843375198

/-!
# A082825: Product of terms in row n of A082822.

The programs for A082825, there is no canonical definition to state claims against.
-/

/-! ## A082825.P11113276339102329388

`(n+1)*A082826(n+1)+1`
-/

namespace A082825.P11113276339102329388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082826 (n + 1) + 1

end

end A082825.P11113276339102329388

/-!
# A082826: {(Product of terms in row n of A082817) - 1} / n.

The programs for A082826, there is no canonical definition to state claims against.
-/

/-! ## A082826.P11428369820937394383

`(A082825(n+1)-1)/(n+1)`
-/

namespace A082826.P11428369820937394383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082825 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A082826.P11428369820937394383

/-!
# A082829: Diagonal of A082827.

The programs for A082829, there is no canonical definition to state claims against.
-/

/-! ## A082829.P11887083576528200564

`A082827(∑[n+1])`
-/

namespace A082829.P11887083576528200564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082829.P11887083576528200564

/-! ## A082829.P7381075878316365644

`record[A082827(comp[∑[n-1]])]`
-/

namespace A082829.P7381075878316365644
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082827 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082829.P7381075878316365644

/-! ## A082829.P8849898558873644545

`record[A082827(n+1)-char[1]]`
-/

namespace A082829.P8849898558873644545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082827 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082829.P8849898558873644545

/-! ## A082829.P12586098563640792623

`record[A082827(n+2)]-floor(1/(n+1))`
-/

namespace A082829.P12586098563640792623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082827 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊1 / (n + 1 : ℚ)⌋

end

end A082829.P12586098563640792623

/-! ## A082829.P16311408064907352744

`record[A159075(n)+A082827(n+1)]`
-/

namespace A082829.P16311408064907352744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A082827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082829.P16311408064907352744

/-!
# A082840: a(n) = 4*a(n-1) - a(n-2) + 3, with a(0) = -1, a(1) = 1.

The programs for A082840, the canonical program `A082840.P18327822922524373484` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082840 has offset 0).

The definition of A082840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)+3` (program `A082840.P18327822922524373484`, by `A082840.P18327822922524373484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082840.P18327822922524373484

`4*a(n-1)-a(n-2)+3` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082840

/-- `4*a(n-1)-a(n-2)+3` -/
def P18327822922524373484.Spec : Prop :=
  ∀ n, P18327822922524373484.a n = A082840 n

theorem P18327822922524373484.correct : P18327822922524373484.Spec := by
  intro n
  simp only [A082840]

end A082840

/-! ## A082840.P12594006241237553760

`A001571(n)-1`
-/

namespace A082840.P12594006241237553760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n - 1

end

end A082840.P12594006241237553760

namespace A082840

/-- `A001571(n)-1` -/
def P12594006241237553760.Spec : Prop :=
  ∀ n, P12594006241237553760.a n = A082840 n

end A082840

/-! ## A082840.P10365867733598572132

`1/2*(A001834(n)-3)`
-/

namespace A082840.P10365867733598572132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001834 n - 3 : ℚ)

end

end A082840.P10365867733598572132

namespace A082840

/-- `1/2*(A001834(n)-3)` -/
def P10365867733598572132.Spec : Prop :=
  ∀ n, P10365867733598572132.a n = (A082840 n : ℚ)

end A082840

/-! ## A082840.P9936358874554555551

`ogf((1-6x+2x^2)/(-1+5x-5x^2+x^3))`
-/

namespace A082840.P9936358874554555551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6, -2] [1, -5, 5, -1] n

end

end A082840.P9936358874554555551

namespace A082840

/-- `ogf((1-6x+2x^2)/(-1+5x-5x^2+x^3))` -/
def P9936358874554555551.Spec : Prop :=
  ∀ n, P9936358874554555551.a n = A082840 n

end A082840

/-! ## A082840.P1166415104280161867

`floor((sqrt(3)+2)*a(n-1))+5` with `a(0)=-1`
-/

namespace A082840.P1166415104280161867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 5

end

end A082840.P1166415104280161867

namespace A082840

/-- `floor((sqrt(3)+2)*a(n-1))+5` -/
def P1166415104280161867.Spec : Prop :=
  ∀ n, P1166415104280161867.a n = A082840 n

end A082840

/-! ## A082840.P12850923917290588456

`∑[-round(a(n-1)/(sqrt(3)-2))]` with `a(0)=-1, a(1)=2`
-/

namespace A082840.P12850923917290588456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082840.P12850923917290588456

namespace A082840

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]` -/
def P12850923917290588456.Spec : Prop :=
  ∀ n, P12850923917290588456.a n = A082840 n

end A082840

/-! ## A082840.P5221850518066493444

`3-(a(n-2)-4*a(n-1))` with `a(0)=-1, a(1)=1`
-/

namespace A082840.P5221850518066493444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  3 - (a (n - 2) - 4 * a (n - 1))

end

end A082840.P5221850518066493444

namespace A082840

/-- `3-(a(n-2)-4*a(n-1))` -/
def P5221850518066493444.Spec : Prop :=
  ∀ n, P5221850518066493444.a n = A082840 n

end A082840

/-! ## A082840.P15509900038543474167

`A102871(n)-2`
-/

namespace A082840.P15509900038543474167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n - 2

end

end A082840.P15509900038543474167

namespace A082840

/-- `A102871(n)-2` -/
def P15509900038543474167.Spec : Prop :=
  ∀ n, P15509900038543474167.a n = A082840 n

end A082840

/-! ## A082840.P7942854130548846754

`∑[A001075(n)]-2`
-/

namespace A082840.P7942854130548846754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A082840.P7942854130548846754

namespace A082840

/-- `∑[A001075(n)]-2` -/
def P7942854130548846754.Spec : Prop :=
  ∀ n, P7942854130548846754.a n = A082840 n

end A082840

/-! ## A082840.P12664417483345982226

`A146983(n)-gcd(2, n)`
-/

namespace A082840.P12664417483345982226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146983 n - (Nat.gcd 2 n : ℤ)

end

end A082840.P12664417483345982226

namespace A082840

/-- `A146983(n)-gcd(2, n)` -/
def P12664417483345982226.Spec : Prop :=
  ∀ n, P12664417483345982226.a n = A082840 n

end A082840

/-! ## A082840.P5929157080315223031

`∑[A092184(n)+1]-2`
-/

namespace A082840.P5929157080315223031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A082840.P5929157080315223031

namespace A082840

/-- `∑[A092184(n)+1]-2` -/
def P5929157080315223031.Spec : Prop :=
  ∀ n, P5929157080315223031.a n = A082840 n

end A082840

/-! ## A082840.P11207758018185296158

`∑[A121401(n)-1]-2`
-/

namespace A082840.P11207758018185296158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A082840.P11207758018185296158

namespace A082840

/-- `∑[A121401(n)-1]-2` -/
def P11207758018185296158.Spec : Prop :=
  ∀ n, P11207758018185296158.a n = A082840 n

end A082840

/-! ## A082840.P7614638876121029619

`∑[A002531(2*n)]-2`
-/

namespace A082840.P7614638876121029619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A082840.P7614638876121029619

namespace A082840

/-- `∑[A002531(2*n)]-2` -/
def P7614638876121029619.Spec : Prop :=
  ∀ n, P7614638876121029619.a n = A082840 n

end A082840

/-! ## A082840.P1392371760745419140

`A107401(2*(n+1))-2`
-/

namespace A082840.P1392371760745419140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * (n + 1)) - 2

end

end A082840.P1392371760745419140

namespace A082840

/-- `A107401(2*(n+1))-2` -/
def P1392371760745419140.Spec : Prop :=
  ∀ n, P1392371760745419140.a n = A082840 n

end A082840

/-! ## A082840.P6178763505644454184

`∑[A005246(2*n+1)]-2`
-/

namespace A082840.P6178763505644454184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A082840.P6178763505644454184

namespace A082840

/-- `∑[A005246(2*n+1)]-2` -/
def P6178763505644454184.Spec : Prop :=
  ∀ n, P6178763505644454184.a n = A082840 n

end A082840

/-! ## A082840.P12089362408362503356

`∑[abs(A108413(2*n+1))]-2`
-/

namespace A082840.P12089362408362503356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A082840.P12089362408362503356

namespace A082840

/-- `∑[abs(A108413(2*n+1))]-2` -/
def P12089362408362503356.Spec : Prop :=
  ∀ n, P12089362408362503356.a n = A082840 n

end A082840

/-! ## A082840.P5163314567008138456

`A001353(n)+A061278(n)-1`
-/

namespace A082840.P5163314567008138456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + (A061278 n - 1)

end

end A082840.P5163314567008138456

namespace A082840

/-- `A001353(n)+A061278(n)-1` -/
def P5163314567008138456.Spec : Prop :=
  ∀ n, P5163314567008138456.a n = A082840 n

end A082840

/-! ## A082840.P2254016061882340987

`A146983(n)-A000034(n+1)`
-/

namespace A082840.P2254016061882340987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146983 n - A000034 (n + 1)

end

end A082840.P2254016061882340987

namespace A082840

/-- `A146983(n)-A000034(n+1)` -/
def P2254016061882340987.Spec : Prop :=
  ∀ n, P2254016061882340987.a n = A082840 n

end A082840

/-! ## A082840.P11344401111100628220

`A061278(n)-(A106707(n)+1)`
-/

namespace A082840.P11344401111100628220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n - (A106707 n + 1)

end

end A082840.P11344401111100628220

namespace A082840

/-- `A061278(n)-(A106707(n)+1)` -/
def P11344401111100628220.Spec : Prop :=
  ∀ n, P11344401111100628220.a n = A082840 n

end A082840

/-! ## A082840.P11308896768811060579

`A061278(n)+A072110(n)-2`
-/

namespace A082840.P11308896768811060579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + (A072110 n - 2)

end

end A082840.P11308896768811060579

namespace A082840

/-- `A061278(n)+A072110(n)-2` -/
def P11308896768811060579.Spec : Prop :=
  ∀ n, P11308896768811060579.a n = A082840 n

end A082840

/-!
# A082841: a(n) = 4*a(n-1) - a(n-2) for n>1, a(0)=3, a(1)=9.

The programs for A082841, the canonical program `A082841.P4312559891400620708` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082841 has offset 0).

The definition of A082841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A082841.P4312559891400620708`, by `A082841.P4312559891400620708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082841.P4312559891400620708

`4*a(n-1)-a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082841

/-- `4*a(n-1)-a(n-2)` -/
def P4312559891400620708.Spec : Prop :=
  ∀ n, P4312559891400620708.a n = A082841 n

theorem P4312559891400620708.correct : P4312559891400620708.Spec := by
  intro n
  simp only [A082841]

end A082841

/-! ## A082841.P314708467076313915

`3*A001835(n+1)`
-/

namespace A082841.P314708467076313915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001835 (n + 1)

end

end A082841.P314708467076313915

namespace A082841

/-- `3*A001835(n+1)` -/
def P314708467076313915.Spec : Prop :=
  ∀ n, P314708467076313915.a n = A082841 n

end A082841

/-! ## A082841.P12064015386062274470

`sqrt(3/2*(A003500(2*n+1)+2))`
-/

namespace A082841.P12064015386062274470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 : ℚ) / 2 * (A003500 (2 * n + 1) + 2 : ℚ) : ℝ)

end

end A082841.P12064015386062274470

namespace A082841

/-- `sqrt(3/2*(A003500(2*n+1)+2))` -/
def P12064015386062274470.Spec : Prop :=
  ∀ n, P12064015386062274470.a n = (A082841 n : ℝ)

end A082841

/-! ## A082841.P7274004679144055430

`ogf((3-3x)/(1-4x+x^2))`
-/

namespace A082841.P7274004679144055430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -4, 1] n

end

end A082841.P7274004679144055430

namespace A082841

/-- `ogf((3-3x)/(1-4x+x^2))` -/
def P7274004679144055430.Spec : Prop :=
  ∀ n, P7274004679144055430.a n = A082841 n

end A082841

/-! ## A082841.P8917496230517638387

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=3, a(1)=9`
-/

namespace A082841.P8917496230517638387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A082841.P8917496230517638387

namespace A082841

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P8917496230517638387.Spec : Prop :=
  ∀ n, P8917496230517638387.a n = A082841 n

end A082841

/-! ## A082841.P12859621418190330336

`lcm(4, a(n-1))-a(n-2)` with `a(0)=3, a(1)=9`
-/

namespace A082841.P12859621418190330336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - a (n - 2)

end

end A082841.P12859621418190330336

namespace A082841

/-- `lcm(4, a(n-1))-a(n-2)` -/
def P12859621418190330336.Spec : Prop :=
  ∀ n, P12859621418190330336.a n = A082841 n

end A082841

/-! ## A082841.P2159099762237459522

`A083336(2*n)`
-/

namespace A082841.P2159099762237459522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083336 (2 * n)

end

end A082841.P2159099762237459522

namespace A082841

/-- `A083336(2*n)` -/
def P2159099762237459522.Spec : Prop :=
  ∀ n, P2159099762237459522.a n = A082841 n

end A082841

/-! ## A082841.P15548325659404618627

`∑[A001352(n)]+2`
-/

namespace A082841.P15548325659404618627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A082841.P15548325659404618627

namespace A082841

/-- `∑[A001352(n)]+2` -/
def P15548325659404618627.Spec : Prop :=
  ∀ n, P15548325659404618627.a n = A082841 n

end A082841

/-! ## A082841.P15604771571843365900

`3*Δ[A001353(n)]`
-/

namespace A082841.P15604771571843365900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A082841.P15604771571843365900

namespace A082841

/-- `3*Δ[A001353(n)]` -/
def P15604771571843365900.Spec : Prop :=
  ∀ n, P15604771571843365900.a n = A082841 n

end A082841

/-! ## A082841.P6992842591063585904

`3*Δ[A072110(n)]`
-/

namespace A082841.P6992842591063585904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A082841.P6992842591063585904

namespace A082841

/-- `3*Δ[A072110(n)]` -/
def P6992842591063585904.Spec : Prop :=
  ∀ n, P6992842591063585904.a n = A082841 n

end A082841

/-! ## A082841.P17778531354693015607

`A350920(n+1)-2`
-/

namespace A082841.P17778531354693015607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350920 (n + 1) - 2

end

end A082841.P17778531354693015607

namespace A082841

/-- `A350920(n+1)-2` -/
def P17778531354693015607.Spec : Prop :=
  ∀ n, P17778531354693015607.a n = A082841 n

end A082841

/-! ## A082841.P6171884320888832670

`3*A079935(n+1)`
-/

namespace A082841.P6171884320888832670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A079935 (n + 1)

end

end A082841.P6171884320888832670

namespace A082841

/-- `3*A079935(n+1)` -/
def P6171884320888832670.Spec : Prop :=
  ∀ n, P6171884320888832670.a n = A082841 n

end A082841

/-! ## A082841.P17636006877987591458

`3*A140827(3*n)`
-/

namespace A082841.P17636006877987591458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140827 (3 * n)

end

end A082841.P17636006877987591458

namespace A082841

/-- `3*A140827(3*n)` -/
def P17636006877987591458.Spec : Prop :=
  ∀ n, P17636006877987591458.a n = A082841 n

end A082841

/-! ## A082841.P15550465731447632

`3*A002530(Δ[n²])`
-/

namespace A082841.P15550465731447632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082841.P15550465731447632

namespace A082841

/-- `3*A002530(Δ[n²])` -/
def P15550465731447632.Spec : Prop :=
  ∀ n, P15550465731447632.a n = A082841 n

end A082841

/-! ## A082841.P17930565843832241848

`3*A048788(Δ[n²])`
-/

namespace A082841.P17930565843832241848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048788 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082841.P17930565843832241848

namespace A082841

/-- `3*A048788(Δ[n²])` -/
def P17930565843832241848.Spec : Prop :=
  ∀ n, P17930565843832241848.a n = A082841 n

end A082841

/-! ## A082841.P14835031634497681525

`3*A305491(Δ[n²])`
-/

namespace A082841.P14835031634497681525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082841.P14835031634497681525

namespace A082841

/-- `3*A305491(Δ[n²])` -/
def P14835031634497681525.Spec : Prop :=
  ∀ n, P14835031634497681525.a n = A082841 n

end A082841

/-! ## A082841.P6517232977547611687

`abs(Δ[A108413(Δ[n²])])`
-/

namespace A082841.P6517232977547611687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108413 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A082841.P6517232977547611687

namespace A082841

/-- `abs(Δ[A108413(Δ[n²])])` -/
def P6517232977547611687.Spec : Prop :=
  ∀ n, P6517232977547611687.a n = A082841 n

end A082841

/-! ## A082841.P9992967833316715956

`2*A133161(n+1)+1`
-/

namespace A082841.P9992967833316715956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133161 (n + 1) + 1

end

end A082841.P9992967833316715956

namespace A082841

/-- `2*A133161(n+1)+1` -/
def P9992967833316715956.Spec : Prop :=
  ∀ n, P9992967833316715956.a n = A082841 n

end A082841

/-! ## A082841.P601153602988365828

`3*A005246(2*(n+1))`
-/

namespace A082841.P601153602988365828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005246 (2 * (n + 1))

end

end A082841.P601153602988365828

namespace A082841

/-- `3*A005246(2*(n+1))` -/
def P601153602988365828.Spec : Prop :=
  ∀ n, P601153602988365828.a n = A082841 n

end A082841

/-! ## A082841.P7627549932779577580

`3*A122573(2*(n+2))`
-/

namespace A082841.P7627549932779577580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122573 (2 * (n + 2))

end

end A082841.P7627549932779577580

namespace A082841

/-- `3*A122573(2*(n+2))` -/
def P7627549932779577580.Spec : Prop :=
  ∀ n, P7627549932779577580.a n = A082841 n

end A082841

/-!
# A082842: Numbers k such that k = x^2 + y^2 where x is the least primitive root of k. k is the first such number with x increasing in the sequence, x can be found in A082843.

The programs for A082842, there is no canonical definition to state claims against.
-/

/-! ## A082842.P10662096301172743389

`A348167(A018006(n)+1)`
-/

namespace A082842.P10662096301172743389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348167 (A018006 n + 1).toNat

end

end A082842.P10662096301172743389

/-!
# A082843: Primitive roots x of sequence A082842.

The programs for A082843, there is no canonical definition to state claims against.
-/

/-! ## A082843.P4695602163297091151

`∑[A102190(A058895(n)+1)]`
-/

namespace A082843.P4695602163297091151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102190 (A058895 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082843.P4695602163297091151

/-! ## A082843.P5594569352927383311

`∑[A328389(A328432(n)+n)]`
-/

namespace A082843.P5594569352927383311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A328432 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082843.P5594569352927383311

/-! ## A082843.P1088746425029532297

`A117563(A336130(n))+A018261(n+1)`
-/

namespace A082843.P1088746425029532297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (A336130 n).toNat + A018261 (n + 1)

end

end A082843.P1088746425029532297

/-! ## A082843.P1740876444474934830

`lt[A010064(A000010(n+1)), A133520(n+1)]`
-/

namespace A082843.P1740876444474934830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082843.P1740876444474934830

/-! ## A082843.P656453878247167249

`∑[A174714(A081172(n))]`
-/

namespace A082843.P656453878247167249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174714 (A081172 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082843.P656453878247167249

/-!
# A082844: Start with 3,2 and apply the rule a(a(1)+a(2)+...+a(n)) = a(n), fill in any undefined terms with a(t) = 2 if a(t-1) = 3 and a(t) = 3 if a(t-1) = 2.

The programs for A082844, the canonical program `A082844.P10727749006035731068` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082844 has offset 1).

The definition of A082844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082844.P10727749006035731068

`floor((1+sqrt(2))*(n+3))-floor((1+sqrt(2))*(n+2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082844

/-- `floor((1+sqrt(2))*(n+3))-floor((1+sqrt(2))*(n+2))` -/
def P10727749006035731068.Spec : Prop :=
  ∀ n, P10727749006035731068.a n = A082844 (n + 1)

theorem P10727749006035731068.correct : P10727749006035731068.Spec := by
  intro n
  simp only [A082844, Nat.add_sub_cancel]

end A082844

/-! ## A082844.P4456316869879481293

`dr(Δ[floor((n+2)/(sqrt(2)-1))])`
-/

namespace A082844.P4456316869879481293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A082844.P4456316869879481293

namespace A082844

/-- `dr(Δ[floor((n+2)/(sqrt(2)-1))])` -/
def P4456316869879481293.Spec : Prop :=
  ∀ n, (P4456316869879481293.a n : ℤ) = A082844 (n + 1)

end A082844

/-! ## A082844.P7653438882545002789

`p?[Δ[ceil((n+2)*sqrt(2))]+1]`
-/

namespace A082844.P7653438882545002789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082844.P7653438882545002789

namespace A082844

/-- `p?[Δ[ceil((n+2)*sqrt(2))]+1]` -/
def P7653438882545002789.Spec : Prop :=
  ∀ n, P7653438882545002789.a n = A082844 (n + 1)

end A082844

/-! ## A082844.P11305116898348927573

`11%Δ[ceil(2*n+(n+2)*sqrt(2))]`
-/

namespace A082844.P11305116898348927573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + (n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (f1 (n + 1) - f1 n)

end

end A082844.P11305116898348927573

namespace A082844

/-- `11%Δ[ceil(2*n+(n+2)*sqrt(2))]` -/
def P11305116898348927573.Spec : Prop :=
  ∀ n, P11305116898348927573.a n = A082844 (n + 1)

end A082844

/-! ## A082844.P5867567882174882229

`xor(A187967(n+1), A276862(n+1))`
-/

namespace A082844.P5867567882174882229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187967 (n + 1)) (A276862 (n + 1))

end

end A082844.P5867567882174882229

namespace A082844

/-- `xor(A187967(n+1), A276862(n+1))` -/
def P5867567882174882229.Spec : Prop :=
  ∀ n, P5867567882174882229.a n = A082844 (n + 1)

end A082844

/-! ## A082844.P6045156235182143661

`A097509(n+2)`
-/

namespace A082844.P6045156235182143661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (n + 2)

end

end A082844.P6045156235182143661

namespace A082844

/-- `A097509(n+2)` -/
def P6045156235182143661.Spec : Prop :=
  ∀ n, P6045156235182143661.a n = A082844 (n + 1)

end A082844

/-! ## A082844.P12334096881366411989

`A276862(n+2)`
-/

namespace A082844.P12334096881366411989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (n + 2)

end

end A082844.P12334096881366411989

namespace A082844

/-- `A276862(n+2)` -/
def P12334096881366411989.Spec : Prop :=
  ∀ n, P12334096881366411989.a n = A082844 (n + 1)

end A082844

/-!
# A082845: Partial sums of A082844.

The programs for A082845, the canonical program `A082845.P2139089894816097923` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082845 has offset 1).

The definition of A082845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082845.P2139089894816097923

`1+floor((1+sqrt(2))*(n+1)-(2-sqrt(2)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082845

/-- `1+floor((1+sqrt(2))*(n+1)-(2-sqrt(2)))` -/
def P2139089894816097923.Spec : Prop :=
  ∀ n, P2139089894816097923.a n = A082845 (n + 1)

theorem P2139089894816097923.correct : P2139089894816097923.Spec := by
  intro n
  simp only [A082845, Nat.add_sub_cancel]

end A082845

/-! ## A082845.P7658938213109233689

`∑[Δ[ceil((n+1)*sqrt(2))]!+1]`
-/

namespace A082845.P7658938213109233689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P7658938213109233689

namespace A082845

/-- `∑[Δ[ceil((n+1)*sqrt(2))]!+1]` -/
def P7658938213109233689.Spec : Prop :=
  ∀ n, (P7658938213109233689.a n : ℤ) = A082845 (n + 1)

end A082845

/-! ## A082845.P3688806731703820974

`∑[dr(Δ[ceil((n+1)*sqrt(2))])+1]`
-/

namespace A082845.P3688806731703820974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P3688806731703820974

namespace A082845

/-- `∑[dr(Δ[ceil((n+1)*sqrt(2))])+1]` -/
def P3688806731703820974.Spec : Prop :=
  ∀ n, (P3688806731703820974.a n : ℤ) = A082845 (n + 1)

end A082845

/-! ## A082845.P15607750496169962113

`comp[floor(n/sqrt(2))+floor(n-atan(n))]`
-/

namespace A082845.P15607750496169962113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082845.P15607750496169962113

namespace A082845

/-- `comp[floor(n/sqrt(2))+floor(n-atan(n))]` -/
def P15607750496169962113.Spec : Prop :=
  ∀ n, (P15607750496169962113.a n : ℤ) = A082845 (n + 1)

end A082845

/-! ## A082845.P3493831406630750870

`∑[Δ[ceil((sqrt(2)+1)*(n+1))]%4]`
-/

namespace A082845.P3493831406630750870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P3493831406630750870

namespace A082845

/-- `∑[Δ[ceil((sqrt(2)+1)*(n+1))]%4]` -/
def P3493831406630750870.Spec : Prop :=
  ∀ n, P3493831406630750870.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P7227906545655439543

`∑[A097509(n+1)]`
-/

namespace A082845.P7227906545655439543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P7227906545655439543

namespace A082845

/-- `∑[A097509(n+1)]` -/
def P7227906545655439543.Spec : Prop :=
  ∀ n, P7227906545655439543.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P8541578253716955371

`∑[A276862(n+1)]`
-/

namespace A082845.P8541578253716955371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P8541578253716955371

namespace A082845

/-- `∑[A276862(n+1)]` -/
def P8541578253716955371.Spec : Prop :=
  ∀ n, P8541578253716955371.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P7483676990711501125

`∑[A159684(n)+2]`
-/

namespace A082845.P7483676990711501125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P7483676990711501125

namespace A082845

/-- `∑[A159684(n)+2]` -/
def P7483676990711501125.Spec : Prop :=
  ∀ n, P7483676990711501125.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P4846749520435893949

`∑[A006337(n+1)+1]`
-/

namespace A082845.P4846749520435893949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P4846749520435893949

namespace A082845

/-- `∑[A006337(n+1)+1]` -/
def P4846749520435893949.Spec : Prop :=
  ∀ n, P4846749520435893949.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P4989571183594762910

`∑[3-A144611(n+1)]`
-/

namespace A082845.P4989571183594762910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A144611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P4989571183594762910

namespace A082845

/-- `∑[3-A144611(n+1)]` -/
def P4989571183594762910.Spec : Prop :=
  ∀ n, P4989571183594762910.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P10979426853391466438

`∑[4-A080763(n+1)]`
-/

namespace A082845.P10979426853391466438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A080763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P10979426853391466438

namespace A082845

/-- `∑[4-A080763(n+1)]` -/
def P10979426853391466438.Spec : Prop :=
  ∀ n, P10979426853391466438.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P2392454023233308263

`∑[A000040(Δ[ceil((n+1)*sqrt(2))])]`
-/

namespace A082845.P2392454023233308263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P2392454023233308263

namespace A082845

/-- `∑[A000040(Δ[ceil((n+1)*sqrt(2))])]` -/
def P2392454023233308263.Spec : Prop :=
  ∀ n, P2392454023233308263.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P7266326929699293979

`∑[A000041(Δ[ceil((n+1)*sqrt(2))])+1]`
-/

namespace A082845.P7266326929699293979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P7266326929699293979

namespace A082845

/-- `∑[A000041(Δ[ceil((n+1)*sqrt(2))])+1]` -/
def P7266326929699293979.Spec : Prop :=
  ∀ n, P7266326929699293979.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P4661500427444379290

`∑[A000108(Δ[ceil((n+1)*sqrt(2))])+1]`
-/

namespace A082845.P4661500427444379290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P4661500427444379290

namespace A082845

/-- `∑[A000108(Δ[ceil((n+1)*sqrt(2))])+1]` -/
def P4661500427444379290.Spec : Prop :=
  ∀ n, P4661500427444379290.a n = A082845 (n + 1)

end A082845

/-! ## A082845.P4161858829891728478

`∑[A000045(Δ[ceil(2*n+(n+1)*sqrt(2))])]`
-/

namespace A082845.P4161858829891728478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + (n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P4161858829891728478

namespace A082845

/-- `∑[A000045(Δ[ceil(2*n+(n+1)*sqrt(2))])]` -/
def P4161858829891728478.Spec : Prop :=
  ∀ n, P4161858829891728478.a n = A082845 (n + 1)

end A082845

/-!
# A082846: a(1) = 1, a(2) = 2, a(3) = 3; then a(a(1)+a(2)+..+a(k)) = a(k) and fill the "holes" using the rule : a(m) = 1 if a(m-1) = 3, a(m) = 2 if a(m-1) = 1, a(m) = 3 if a(m-1) = 2.

The programs for A082846, there is no canonical definition to state claims against.
-/

/-! ## A082846.P15389491926160615095

`∏{d}[Δ[A082847(A028310(n))], #]`
-/

namespace A082846.P15389491926160615095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082847 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A082846.P15389491926160615095

/-! ## A082846.P14161280234480698292

`A000041(Δ[A082847(A028310(n))])`
-/

namespace A082846.P14161280234480698292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082847 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A082846.P14161280234480698292

/-! ## A082846.P11722753000139651526

`A008640(Δ[A082847(A028310(n))])`
-/

namespace A082846.P11722753000139651526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082847 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008640 (f1 (n + 1) - f1 n).toNat

end

end A082846.P11722753000139651526

/-! ## A082846.P2445203973685505388

`A028310(Δ[A082847(A028310(n))])`
-/

namespace A082846.P2445203973685505388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082847 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A082846.P2445203973685505388

/-! ## A082846.P7452095596535316830

`∏{d}[A082847(n+1)-A082847(A028310(n)), #]`
-/

namespace A082846.P7452095596535316830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082847 (n + 1) - A082847 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A082846.P7452095596535316830

/-! ## A082846.P9612966851271731798

`A028310(A082847(n+1)-A082847(A028310(n)))`
-/

namespace A082846.P9612966851271731798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082847 (n + 1) - A082847 (A028310 n).toNat).toNat

end

end A082846.P9612966851271731798

/-! ## A082846.P10097053626017692305

`Δ[A082847(A000007(n)+n)%A000032(n+1)]`
-/

namespace A082846.P10097053626017692305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082847 (A000007 n + (n : ℤ)).toNat) (A000032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082846.P10097053626017692305

/-!
# A082847: Partial sums of A082846.

The programs for A082847, there is no canonical definition to state claims against.
-/

/-! ## A082847.P3591824989363548628

`∑[A082846(n+1)]`
-/

namespace A082847.P3591824989363548628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082847.P3591824989363548628

/-! ## A082847.P9632875385080579388

`A000027(∑[A082846(n-log2(1/2))])`
-/

namespace A082847.P9632875385080579388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082846 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082847.P9632875385080579388

/-! ## A082847.P846049947896096942

`A078703(A095848(n+1))+A005843(n)`
-/

namespace A082847.P846049947896096942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A095848 (n + 1)).toNat + A005843 n

end

end A082847.P846049947896096942

/-! ## A082847.P15315300691970814975

`A010060(A234286(n+1))+A005408(n)`
-/

namespace A082847.P15315300691970814975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A234286 (n + 1)).toNat + A005408 n

end

end A082847.P15315300691970814975

/-! ## A082847.P575875086238362588

`A317322(2*n+1)+A010059(A395684(n+3))`
-/

namespace A082847.P575875086238362588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 (2 * n + 1) + A010059 (A395684 (n + 3)).toNat

end

end A082847.P575875086238362588

/-!
# A082849: Product of cototient values of consecutive integers.

The programs for A082849, the canonical program `A082849.P14495189040756663948` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082849 has offset 1).

The definition of A082849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082849.P14495189040756663948

`A051953(n+1)*A051953(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082849

/-- `A051953(n+1)*A051953(n+2)` -/
def P14495189040756663948.Spec : Prop :=
  ∀ n, P14495189040756663948.a n = A082849 (n + 1)

theorem P14495189040756663948.correct : P14495189040756663948.Spec := by
  intro n
  simp only [A082849, Nat.add_sub_cancel]

end A082849

/-! ## A082849.P3755858033011519954

`A049586(n)*A083548(n+1)`
-/

namespace A082849.P3755858033011519954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049586 n * A083548 (n + 1)

end

end A082849.P3755858033011519954

namespace A082849

/-- `A049586(n)*A083548(n+1)` -/
def P3755858033011519954.Spec : Prop :=
  ∀ n, P3755858033011519954.a n = A082849 (n + 1)

end A082849

/-! ## A082849.P6258394818609124641

`A049586(n)²*A083549(n+1)`
-/

namespace A082849.P6258394818609124641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049586 n ^ 2 * A083549 (n + 1)

end

end A082849.P6258394818609124641

namespace A082849

/-- `A049586(n)²*A083549(n+1)` -/
def P6258394818609124641.Spec : Prop :=
  ∀ n, P6258394818609124641.a n = A082849 (n + 1)

end A082849

/-! ## A082849.P13871860517602553412

`(n+1-A000010(n+1))*(n+2-A000010(n+2))`
-/

namespace A082849.P13871860517602553412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000010 (n + 1)) * ((n + 2 : ℤ) - A000010 (n + 2))

end

end A082849.P13871860517602553412

namespace A082849

/-- `(n+1-A000010(n+1))*(n+2-A000010(n+2))` -/
def P13871860517602553412.Spec : Prop :=
  ∀ n, P13871860517602553412.a n = A082849 (n + 1)

end A082849

/-! ## A082849.P14242039450024517483

`A053650(n+1)/A002378(n+1)*A053650(n+2)`
-/

namespace A082849.P14242039450024517483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ) * (A053650 (n + 2) : ℚ)

end

end A082849.P14242039450024517483

namespace A082849

/-- `A053650(n+1)/A002378(n+1)*A053650(n+2)` -/
def P14242039450024517483.Spec : Prop :=
  ∀ n, P14242039450024517483.a n = (A082849 (n + 1) : ℚ)

end A082849

/-! ## A082849.P5252165142546032718

`A319700(2*(n+1))*A319700(2*(n+2))`
-/

namespace A082849.P5252165142546032718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * (n + 1)) * A319700 (2 * (n + 2))

end

end A082849.P5252165142546032718

namespace A082849

/-- `A319700(2*(n+1))*A319700(2*(n+2))` -/
def P5252165142546032718.Spec : Prop :=
  ∀ n, P5252165142546032718.a n = A082849 (n + 1)

end A082849

/-! ## A082849.P17814129503138815348

`∏{d}[A000040(n+1), A051953(A051953(#)+n+1)]`
-/

namespace A082849.P17814129503138815348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A051953 (A051953 d + (n + 1 : ℤ)).toNat

end

end A082849.P17814129503138815348

namespace A082849

/-- `∏{d}[A000040(n+1), A051953(A051953(#)+n+1)]` -/
def P17814129503138815348.Spec : Prop :=
  ∀ n, P17814129503138815348.a n = A082849 (n + 1)

end A082849

/-!
# A082850: Let S(0) = {}, S(n) = {S(n-1), S(n-1), n}; sequence gives S(infinity).

The programs for A082850, the canonical program `A082850.P5931678067167339352` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082850 has offset 1).

The definition of A082850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082850.P556990046027172279

`1+A215020(n+1)`
-/

namespace A082850.P556990046027172279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A215020 (n + 1)

end

end A082850.P556990046027172279

namespace A082850

/-- `1+A215020(n+1)` -/
def P556990046027172279.Spec : Prop :=
  ∀ n, P556990046027172279.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P3656457159780233013

`log2(A182105(n+1))+1`
-/

namespace A082850.P3656457159780233013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A182105 (n + 1) : ℝ) + 1

end

end A082850.P3656457159780233013

namespace A082850

/-- `log2(A182105(n+1))+1` -/
def P3656457159780233013.Spec : Prop :=
  ∀ n, P3656457159780233013.a n = (A082850 (n + 1) : ℝ)

end A082850

/-! ## A082850.P5931678067167339352

`(1-A079559(n))*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082850

/-- `(1-A079559(n))*a(n-1)+1` -/
def P5931678067167339352.Spec : Prop :=
  ∀ n, P5931678067167339352.a n = A082850 (n + 1)

theorem P5931678067167339352.correct : P5931678067167339352.Spec := by
  intro n
  simp only [A082850, Nat.add_sub_cancel]

end A082850

/-! ## A082850.P5729451392272144737

`(A308188(n+1)-1)*a(n-1)+1` with `a(0)=1`
-/

namespace A082850.P5729451392272144737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A308188 (n + 1) - 1) * a (n - 1) + 1

end

end A082850.P5729451392272144737

namespace A082850

/-- `(A308188(n+1)-1)*a(n-1)+1` -/
def P5729451392272144737.Spec : Prop :=
  ∀ n, P5729451392272144737.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P16046223120446336359

`A000005(A182105(n+1))`
-/

namespace A082850.P16046223120446336359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A182105 (n + 1)).toNat

end

end A082850.P16046223120446336359

namespace A082850

/-- `A000005(A182105(n+1))` -/
def P16046223120446336359.Spec : Prop :=
  ∀ n, P16046223120446336359.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P17357939264934082138

`A005496(A215020(n+1))`
-/

namespace A082850.P17357939264934082138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A215020 (n + 1)).toNat

end

end A082850.P17357939264934082138

namespace A082850

/-- `A005496(A215020(n+1))` -/
def P17357939264934082138.Spec : Prop :=
  ∀ n, P17357939264934082138.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P6589717659687882389

`A000005(abs(Δ[A339451(n)]))`
-/

namespace A082850.P6589717659687882389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |f1 (n + 1) - f1 n|.toNat

end

end A082850.P6589717659687882389

namespace A082850

/-- `A000005(abs(Δ[A339451(n)]))` -/
def P6589717659687882389.Spec : Prop :=
  ∀ n, P6589717659687882389.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P8290908783123610382

`A029837(A182105(n+1)+1)`
-/

namespace A082850.P8290908783123610382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A182105 (n + 1) + 1).toNat

end

end A082850.P8290908783123610382

namespace A082850

/-- `A029837(A182105(n+1)+1)` -/
def P8290908783123610382.Spec : Prop :=
  ∀ n, P8290908783123610382.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P13777580639353167804

`A000523(2*A182105(n+1))`
-/

namespace A082850.P13777580639353167804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A182105 (n + 1)).toNat

end

end A082850.P13777580639353167804

namespace A082850

/-- `A000523(2*A182105(n+1))` -/
def P13777580639353167804.Spec : Prop :=
  ∀ n, P13777580639353167804.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P7583140063230279560

`A001222(2*A182105(n+1))`
-/

namespace A082850.P7583140063230279560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A182105 (n + 1)).toNat

end

end A082850.P7583140063230279560

namespace A082850

/-- `A001222(2*A182105(n+1))` -/
def P7583140063230279560.Spec : Prop :=
  ∀ n, P7583140063230279560.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P10144159585558720460

`A007814(2*A182105(n+1))`
-/

namespace A082850.P10144159585558720460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A182105 (n + 1)).toNat

end

end A082850.P10144159585558720460

namespace A082850

/-- `A007814(2*A182105(n+1))` -/
def P10144159585558720460.Spec : Prop :=
  ∀ n, P10144159585558720460.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P15337462731723696592

`A065334(2*A182105(n+1))`
-/

namespace A082850.P15337462731723696592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065334 (2 * A182105 (n + 1)).toNat

end

end A082850.P15337462731723696592

namespace A082850

/-- `A065334(2*A182105(n+1))` -/
def P15337462731723696592.Spec : Prop :=
  ∀ n, P15337462731723696592.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P12308459227505910119

`A256478(2*A182105(n+1))`
-/

namespace A082850.P12308459227505910119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (2 * A182105 (n + 1)).toNat

end

end A082850.P12308459227505910119

namespace A082850

/-- `A256478(2*A182105(n+1))` -/
def P12308459227505910119.Spec : Prop :=
  ∀ n, P12308459227505910119.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P4798110698487504409

`A385507(2*A182105(n+1))`
-/

namespace A082850.P4798110698487504409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385507 (2 * A182105 (n + 1)).toNat

end

end A082850.P4798110698487504409

namespace A082850

/-- `A385507(2*A182105(n+1))` -/
def P4798110698487504409.Spec : Prop :=
  ∀ n, P4798110698487504409.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P187144419463979170

`A001222(lcm(3, A182105(n+1)))`
-/

namespace A082850.P187144419463979170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A182105 (n + 1)))

end

end A082850.P187144419463979170

namespace A082850

/-- `A001222(lcm(3, A182105(n+1)))` -/
def P187144419463979170.Spec : Prop :=
  ∀ n, P187144419463979170.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P12348447038022676151

`A070939(xor(1, A182105(n+1)))`
-/

namespace A082850.P12348447038022676151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.xor 1 (A182105 (n + 1))).toNat

end

end A082850.P12348447038022676151

namespace A082850

/-- `A070939(xor(1, A182105(n+1)))` -/
def P12348447038022676151.Spec : Prop :=
  ∀ n, P12348447038022676151.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P3505552028059038159

`A001222(abs(Δ[A339451(n)]))+1`
-/

namespace A082850.P3505552028059038159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |f1 (n + 1) - f1 n|.toNat + 1

end

end A082850.P3505552028059038159

namespace A082850

/-- `A001222(abs(Δ[A339451(n)]))+1` -/
def P3505552028059038159.Spec : Prop :=
  ∀ n, P3505552028059038159.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P12531771744305631012

`A001222(abs(Δ[2*A339451(n)]))`
-/

namespace A082850.P12531771744305631012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |f1 (n + 1) - f1 n|.toNat

end

end A082850.P12531771744305631012

namespace A082850

/-- `A001222(abs(Δ[2*A339451(n)]))` -/
def P12531771744305631012.Spec : Prop :=
  ∀ n, P12531771744305631012.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P13747824706061387100

`∑{d}[A182105(n+1), A182105(#)]`
-/

namespace A082850.P13747824706061387100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A182105 d

end

end A082850.P13747824706061387100

namespace A082850

/-- `∑{d}[A182105(n+1), A182105(#)]` -/
def P13747824706061387100.Spec : Prop :=
  ∀ n, P13747824706061387100.a n = A082850 (n + 1)

end A082850

/-! ## A082850.P4736374710038871153

`A000120(A182105(n+1)-1)+1`
-/

namespace A082850.P4736374710038871153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A182105 (n + 1) - 1).toNat + 1

end

end A082850.P4736374710038871153

namespace A082850

/-- `A000120(A182105(n+1)-1)+1` -/
def P4736374710038871153.Spec : Prop :=
  ∀ n, P4736374710038871153.a n = A082850 (n + 1)

end A082850

/-!
# A082851: Partial sums of A082850.

The programs for A082851, the canonical program `A082851.P6825031164580738321` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082851 has offset 1).

The definition of A082851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082851.P11077054272174573581

`∑[A082850(n+1)]`
-/

namespace A082851.P11077054272174573581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P11077054272174573581

namespace A082851

/-- `∑[A082850(n+1)]` -/
def P11077054272174573581.Spec : Prop :=
  ∀ n, P11077054272174573581.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P13218745901722462030

`∑[A215020(n+1)+1]`
-/

namespace A082851.P13218745901722462030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P13218745901722462030

namespace A082851

/-- `∑[A215020(n+1)+1]` -/
def P13218745901722462030.Spec : Prop :=
  ∀ n, P13218745901722462030.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P6825031164580738321

`∑[(A308188(n+1)-1)*a(n-1)+1]` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082851

/-- `∑[(A308188(n+1)-1)*a(n-1)+1]` -/
def P6825031164580738321.Spec : Prop :=
  ∀ n, P6825031164580738321.a n = A082851 (n + 1)

theorem P6825031164580738321.correct : P6825031164580738321.Spec := by
  intro n
  simp only [A082851, Nat.add_sub_cancel]

end A082851

/-! ## A082851.P8029641029405717277

`∑[A000005(A182105(n+1))]`
-/

namespace A082851.P8029641029405717277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A182105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P8029641029405717277

namespace A082851

/-- `∑[A000005(A182105(n+1))]` -/
def P8029641029405717277.Spec : Prop :=
  ∀ n, P8029641029405717277.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P7605953508619045650

`∑[A000005(abs(Δ[A339451(n)]))]`
-/

namespace A082851.P7605953508619045650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |f2 (n + 1) - f2 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P7605953508619045650

namespace A082851

/-- `∑[A000005(abs(Δ[A339451(n)]))]` -/
def P7605953508619045650.Spec : Prop :=
  ∀ n, P7605953508619045650.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P16555611166026372606

`∑[A001222(2*A182105(n+1))]`
-/

namespace A082851.P16555611166026372606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A182105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P16555611166026372606

namespace A082851

/-- `∑[A001222(2*A182105(n+1))]` -/
def P16555611166026372606.Spec : Prop :=
  ∀ n, P16555611166026372606.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P6110893634979733098

`∑[A007814(2*A182105(n+1))]`
-/

namespace A082851.P6110893634979733098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A182105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P6110893634979733098

namespace A082851

/-- `∑[A007814(2*A182105(n+1))]` -/
def P6110893634979733098.Spec : Prop :=
  ∀ n, P6110893634979733098.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P9228118356031526293

`∑[val(A108918(n+1), 2)+1]`
-/

namespace A082851.P9228118356031526293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108918 (n + 1)).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P9228118356031526293

namespace A082851

/-- `∑[val(A108918(n+1), 2)+1]` -/
def P9228118356031526293.Spec : Prop :=
  ∀ n, (P9228118356031526293.a n : ℤ) = A082851 (n + 1)

end A082851

/-! ## A082851.P12345206008450602933

`∑[A001511(A108918(n+1))]`
-/

namespace A082851.P12345206008450602933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A108918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P12345206008450602933

namespace A082851

/-- `∑[A001511(A108918(n+1))]` -/
def P12345206008450602933.Spec : Prop :=
  ∀ n, P12345206008450602933.a n = A082851 (n + 1)

end A082851

/-! ## A082851.P9302410619498191481

`eq[1, A380372(n+1)]+1`
-/

namespace A082851.P9302410619498191481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082851.P9302410619498191481

namespace A082851

/-- `eq[1, A380372(n+1)]+1` -/
def P9302410619498191481.Spec : Prop :=
  ∀ n, (P9302410619498191481.a n : ℤ) = A082851 (n + 1)

end A082851

/-! ## A082851.P13921073380384871099

`filter[n+1, A380372(#)]`
-/

namespace A082851.P13921073380384871099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380372 (f1 j) = 1) n)

end

end A082851.P13921073380384871099

namespace A082851

/-- `filter[n+1, A380372(#)]` -/
def P13921073380384871099.Spec : Prop :=
  ∀ n, (P13921073380384871099.a n : ℤ) = A082851 (n + 1)

end A082851

/-! ## A082851.P13896286179132614549

`∑[A215020(A045412(n+1))]`
-/

namespace A082851.P13896286179132614549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (A045412 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P13896286179132614549

namespace A082851

/-- `∑[A215020(A045412(n+1))]` -/
def P13896286179132614549.Spec : Prop :=
  ∀ n, P13896286179132614549.a n = A082851 (n + 1)

end A082851

/-!
# A082852: a(0)=0, a(n) = A014137(A072643(n)-1).

The programs for A082852, the canonical program `A082852.P5408554968582082285` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082852 has offset 0).

The definition of A082852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082852.P483708332266408717

`n-A082853(n)`
-/

namespace A082852.P483708332266408717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082853 n

end

end A082852.P483708332266408717

namespace A082852

/-- `n-A082853(n)` -/
def P483708332266408717.Spec : Prop :=
  ∀ n, P483708332266408717.a n = A082852 n

end A082852

/-! ## A082852.P1816560179224046047

`1-A082854(n)+n`
-/

namespace A082852.P1816560179224046047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082854 n + (n : ℤ)

end

end A082852.P1816560179224046047

namespace A082852

/-- `1-A082854(n)+n` -/
def P1816560179224046047.Spec : Prop :=
  ∀ n, P1816560179224046047.a n = A082852 n

end A082852

/-! ## A082852.P5408554968582082285

`A155587(A072643(n))-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082852

/-- `A155587(A072643(n))-1` -/
def P5408554968582082285.Spec : Prop :=
  ∀ n, P5408554968582082285.a n = A082852 n

theorem P5408554968582082285.correct : P5408554968582082285.Spec := by
  intro n
  simp only [A082852]

end A082852

/-! ## A082852.P5683908864097830261

`A024000(A082854(n))+n`
-/

namespace A082852.P5683908864097830261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A082854 n).toNat + (n : ℤ)

end

end A082852.P5683908864097830261

namespace A082852

/-- `A024000(A082854(n))+n` -/
def P5683908864097830261.Spec : Prop :=
  ∀ n, P5683908864097830261.a n = A082852 n

end A082852

/-! ## A082852.P12175346009471707422

`abs(A082853(n)+A001489(n))`
-/

namespace A082852.P12175346009471707422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082853 n + A001489 n|

end

end A082852.P12175346009471707422

namespace A082852

/-- `abs(A082853(n)+A001489(n))` -/
def P12175346009471707422.Spec : Prop :=
  ∀ n, P12175346009471707422.a n = A082852 n

end A082852

/-! ## A082852.P2357965661071395845

`A082853(A130918(n)+n+1)`
-/

namespace A082852.P2357965661071395845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A130918 n + (n + 1 : ℤ)).toNat

end

end A082852.P2357965661071395845

namespace A082852

/-- `A082853(A130918(n)+n+1)` -/
def P2357965661071395845.Spec : Prop :=
  ∀ n, P2357965661071395845.a n = A082852 n

end A082852

/-! ## A082852.P18156902318165914056

`n-A080301(A014486(n))`
-/

namespace A082852.P18156902318165914056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080301 (A014486 n).toNat

end

end A082852.P18156902318165914056

namespace A082852

/-- `n-A080301(A014486(n))` -/
def P18156902318165914056.Spec : Prop :=
  ∀ n, P18156902318165914056.a n = A082852 n

end A082852

/-! ## A082852.P5394668376892331397

`n-A214526(A082854(n)²)`
-/

namespace A082852.P5394668376892331397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A214526 (A082854 n ^ 2).toNat

end

end A082852.P5394668376892331397

namespace A082852

/-- `n-A214526(A082854(n)²)` -/
def P5394668376892331397.Spec : Prop :=
  ∀ n, P5394668376892331397.a n = A082852 n

end A082852

/-! ## A082852.P14008898909275071270

`n-A057918(A082854(n)²)`
-/

namespace A082852.P14008898909275071270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057918 (A082854 n ^ 2).toNat

end

end A082852.P14008898909275071270

namespace A082852

/-- `n-A057918(A082854(n)²)` -/
def P14008898909275071270.Spec : Prop :=
  ∀ n, P14008898909275071270.a n = A082852 n

end A082852

/-! ## A082852.P6678690996640249314

`n-A088226(A082854(n)²)`
-/

namespace A082852.P6678690996640249314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A088226 (A082854 n ^ 2).toNat

end

end A082852.P6678690996640249314

namespace A082852

/-- `n-A088226(A082854(n)²)` -/
def P6678690996640249314.Spec : Prop :=
  ∀ n, P6678690996640249314.a n = A082852 n

end A082852

/-! ## A082852.P10611972232107985914

`n-A259361(A082854(n)²)`
-/

namespace A082852.P10611972232107985914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A259361 (A082854 n ^ 2).toNat

end

end A082852.P10611972232107985914

namespace A082852

/-- `n-A259361(A082854(n)²)` -/
def P10611972232107985914.Spec : Prop :=
  ∀ n, P10611972232107985914.a n = A082852 n

end A082852

/-!
# A082853: Integers 0 to Catalan(n)-1 followed by integers 0 to Catalan(n+1)-1 etc.

The programs for A082853, the canonical program `A082853.P1640668448501088657` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082853 has offset 0).

The definition of A082853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082853.P1640668448501088657

`n-A082852(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082853

/-- `n-A082852(n)` -/
def P1640668448501088657.Spec : Prop :=
  ∀ n, P1640668448501088657.a n = A082853 n

theorem P1640668448501088657.correct : P1640668448501088657.Spec := by
  intro n
  simp only [A082853]

end A082853

/-! ## A082853.P1678176418883843091

`A082854(n)-1`
-/

namespace A082853.P1678176418883843091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 n - 1

end

end A082853.P1678176418883843091

namespace A082853

/-- `A082854(n)-1` -/
def P1678176418883843091.Spec : Prop :=
  ∀ n, P1678176418883843091.a n = A082853 n

end A082853

/-! ## A082853.P10203919453791263358

`A023443(A082854(n))`
-/

namespace A082853.P10203919453791263358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A082854 n).toNat

end

end A082853.P10203919453791263358

namespace A082853

/-- `A023443(A082854(n))` -/
def P10203919453791263358.Spec : Prop :=
  ∀ n, P10203919453791263358.a n = A082853 n

end A082853

/-! ## A082853.P13990860321882303149

`A023444(A082854(n)+1)`
-/

namespace A082853.P13990860321882303149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082854 n + 1).toNat

end

end A082853.P13990860321882303149

namespace A082853

/-- `A023444(A082854(n)+1)` -/
def P13990860321882303149.Spec : Prop :=
  ∀ n, P13990860321882303149.a n = A082853 n

end A082853

/-! ## A082853.P6808554327061948195

`A289207(A082854(n)+1)`
-/

namespace A082853.P6808554327061948195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A082854 n + 1).toNat

end

end A082853.P6808554327061948195

namespace A082853

/-- `A289207(A082854(n)+1)` -/
def P6808554327061948195.Spec : Prop :=
  ∀ n, P6808554327061948195.a n = A082853 n

end A082853

/-! ## A082853.P17899606743463046941

`A057549(n)+A072795(n)-A057548(n)`
-/

namespace A082853.P17899606743463046941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057549 n + (A072795 n - A057548 n)

end

end A082853.P17899606743463046941

namespace A082853

/-- `A057549(n)+A072795(n)-A057548(n)` -/
def P17899606743463046941.Spec : Prop :=
  ∀ n, P17899606743463046941.a n = A082853 n

end A082853

/-! ## A082853.P9327072367549331404

`A261096(C(A082854(n), 2))`
-/

namespace A082853.P9327072367549331404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (Nat.choose (A082854 n).toNat 2)

end

end A082853.P9327072367549331404

namespace A082853

/-- `A261096(C(A082854(n), 2))` -/
def P9327072367549331404.Spec : Prop :=
  ∀ n, P9327072367549331404.a n = A082853 n

end A082853

/-! ## A082853.P5676509839488453656

`A083800(n+1)%A082854(n)`
-/

namespace A082853.P5676509839488453656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A082854 n)

end

end A082853.P5676509839488453656

namespace A082853

/-- `A083800(n+1)%A082854(n)` -/
def P5676509839488453656.Spec : Prop :=
  ∀ n, P5676509839488453656.a n = A082853 n

end A082853

/-! ## A082853.P7778443048191213889

`A070198(n)%A082854(n)`
-/

namespace A082853.P7778443048191213889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A082854 n)

end

end A082853.P7778443048191213889

namespace A082853

/-- `A070198(n)%A082854(n)` -/
def P7778443048191213889.Spec : Prop :=
  ∀ n, P7778443048191213889.a n = A082853 n

end A082853

/-! ## A082853.P15137163526742544661

`A079782(n+1)%A082854(n)`
-/

namespace A082853.P15137163526742544661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A082854 n)

end

end A082853.P15137163526742544661

namespace A082853

/-- `A079782(n+1)%A082854(n)` -/
def P15137163526742544661.Spec : Prop :=
  ∀ n, P15137163526742544661.a n = A082853 n

end A082853

/-! ## A082853.P13706706450879381718

`A083685(n+1)%A082854(n)`
-/

namespace A082853.P13706706450879381718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A082854 n)

end

end A082853.P13706706450879381718

namespace A082853

/-- `A083685(n+1)%A082854(n)` -/
def P13706706450879381718.Spec : Prop :=
  ∀ n, P13706706450879381718.a n = A082853 n

end A082853

/-! ## A082853.P7079249253985647658

`A121934(n+1)%A082854(n)`
-/

namespace A082853.P7079249253985647658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A082854 n)

end

end A082853.P7079249253985647658

namespace A082853

/-- `A121934(n+1)%A082854(n)` -/
def P7079249253985647658.Spec : Prop :=
  ∀ n, P7079249253985647658.a n = A082853 n

end A082853

/-! ## A082853.P9239131961416234973

`A080301(A014486(n))`
-/

namespace A082853.P9239131961416234973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080301 (A014486 n).toNat

end

end A082853.P9239131961416234973

namespace A082853

/-- `A080301(A014486(n))` -/
def P9239131961416234973.Spec : Prop :=
  ∀ n, P9239131961416234973.a n = A082853 n

end A082853

/-! ## A082853.P4345866274121394971

`A214526(A082854(n)²)`
-/

namespace A082853.P4345866274121394971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A082854 n ^ 2).toNat

end

end A082853.P4345866274121394971

namespace A082853

/-- `A214526(A082854(n)²)` -/
def P4345866274121394971.Spec : Prop :=
  ∀ n, P4345866274121394971.a n = A082853 n

end A082853

/-! ## A082853.P17098969470133123073

`A057918(A082854(n)²)`
-/

namespace A082853.P17098969470133123073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A082854 n ^ 2).toNat

end

end A082853.P17098969470133123073

namespace A082853

/-- `A057918(A082854(n)²)` -/
def P17098969470133123073.Spec : Prop :=
  ∀ n, P17098969470133123073.a n = A082853 n

end A082853

/-! ## A082853.P11761481494973767423

`A088226(A082854(n)²)`
-/

namespace A082853.P11761481494973767423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A082854 n ^ 2).toNat

end

end A082853.P11761481494973767423

namespace A082853

/-- `A088226(A082854(n)²)` -/
def P11761481494973767423.Spec : Prop :=
  ∀ n, P11761481494973767423.a n = A082853 n

end A082853

/-! ## A082853.P7813391656400315740

`A259361(A082854(n)²)`
-/

namespace A082853.P7813391656400315740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A082854 n ^ 2).toNat

end

end A082853.P7813391656400315740

namespace A082853

/-- `A259361(A082854(n)²)` -/
def P7813391656400315740.Spec : Prop :=
  ∀ n, P7813391656400315740.a n = A082853 n

end A082853

/-! ## A082853.P4469623193961630193

`A072828(n+1)%A082854(n)`
-/

namespace A082853.P4469623193961630193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A082854 n)

end

end A082853.P4469623193961630193

namespace A082853

/-- `A072828(n+1)%A082854(n)` -/
def P4469623193961630193.Spec : Prop :=
  ∀ n, P4469623193961630193.a n = A082853 n

end A082853

/-!
# A082854: Integers 1 to Catalan(n) followed by integers 1 to Catalan(n+1) etc.

The programs for A082854, the canonical program `A082854.P12286261217204783518` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082854 has offset 0).

The definition of A082854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082854.P12286261217204783518

`A082853(n)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082854

/-- `A082853(n)+1` -/
def P12286261217204783518.Spec : Prop :=
  ∀ n, P12286261217204783518.a n = A082854 n

theorem P12286261217204783518.correct : P12286261217204783518.Spec := by
  intro n
  simp only [A082854]

end A082854

/-! ## A082854.P11293449176160938843

`1-A082852(n)+n`
-/

namespace A082854.P11293449176160938843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082852 n + (n : ℤ)

end

end A082854.P11293449176160938843

namespace A082854

/-- `1-A082852(n)+n` -/
def P11293449176160938843.Spec : Prop :=
  ∀ n, P11293449176160938843.a n = A082854 n

end A082854

/-! ## A082854.P3447329749384364596

`A008619(2*A082853(n))`
-/

namespace A082854.P3447329749384364596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A082853 n).toNat

end

end A082854.P3447329749384364596

namespace A082854

/-- `A008619(2*A082853(n))` -/
def P3447329749384364596.Spec : Prop :=
  ∀ n, P3447329749384364596.a n = A082854 n

end A082854

/-! ## A082854.P9037561299217905768

`A027656(2*A082853(n))`
-/

namespace A082854.P9037561299217905768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A082853 n).toNat

end

end A082854.P9037561299217905768

namespace A082854

/-- `A027656(2*A082853(n))` -/
def P9037561299217905768.Spec : Prop :=
  ∀ n, P9037561299217905768.a n = A082854 n

end A082854

/-! ## A082854.P18207302762914380062

`A028242(2*A082853(n))`
-/

namespace A082854.P18207302762914380062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A082853 n).toNat

end

end A082854.P18207302762914380062

namespace A082854

/-- `A028242(2*A082853(n))` -/
def P18207302762914380062.Spec : Prop :=
  ∀ n, P18207302762914380062.a n = A082854 n

end A082854

/-! ## A082854.P1321870080337521681

`A029579(2*A082853(n))`
-/

namespace A082854.P1321870080337521681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A082853 n).toNat

end

end A082854.P1321870080337521681

namespace A082854

/-- `A029579(2*A082853(n))` -/
def P1321870080337521681.Spec : Prop :=
  ∀ n, P1321870080337521681.a n = A082854 n

end A082854

/-! ## A082854.P9626021582021960185

`A080513(2*A082853(n))`
-/

namespace A082854.P9626021582021960185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A082853 n).toNat

end

end A082854.P9626021582021960185

namespace A082854

/-- `A080513(2*A082853(n))` -/
def P9626021582021960185.Spec : Prop :=
  ∀ n, P9626021582021960185.a n = A082854 n

end A082854

/-! ## A082854.P12910037907129484750

`A097065(2*A082853(n))`
-/

namespace A082854.P12910037907129484750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (2 * A082853 n).toNat

end

end A082854.P12910037907129484750

namespace A082854

/-- `A097065(2*A082853(n))` -/
def P12910037907129484750.Spec : Prop :=
  ∀ n, P12910037907129484750.a n = A082854 n

end A082854

/-! ## A082854.P4412142163542482815

`A106466(2*A082853(n))`
-/

namespace A082854.P4412142163542482815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (2 * A082853 n).toNat

end

end A082854.P4412142163542482815

namespace A082854

/-- `A106466(2*A082853(n))` -/
def P4412142163542482815.Spec : Prop :=
  ∀ n, P4412142163542482815.a n = A082854 n

end A082854

/-! ## A082854.P2572714890415645572

`A328399(2*A082853(n))`
-/

namespace A082854.P2572714890415645572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A082853 n).toNat

end

end A082854.P2572714890415645572

namespace A082854

/-- `A328399(2*A082853(n))` -/
def P2572714890415645572.Spec : Prop :=
  ∀ n, P2572714890415645572.a n = A082854 n

end A082854

/-! ## A082854.P822055573047965061

`A080301(A014486(n))+1`
-/

namespace A082854.P822055573047965061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080301 (A014486 n).toNat + 1

end

end A082854.P822055573047965061

namespace A082854

/-- `A080301(A014486(n))+1` -/
def P822055573047965061.Spec : Prop :=
  ∀ n, P822055573047965061.a n = A082854 n

end A082854

/-! ## A082854.P8556990734369217270

`A176850(A082853(n)²)`
-/

namespace A082854.P8556990734369217270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176850 (A082853 n ^ 2).toNat

end

end A082854.P8556990734369217270

namespace A082854

/-- `A176850(A082853(n)²)` -/
def P8556990734369217270.Spec : Prop :=
  ∀ n, P8556990734369217270.a n = A082854 n

end A082854

/-!
# A082855: a(0)=0, a(1)=1, a(n) = A014137(A081288(n-1)-1).

The programs for A082855, there is no canonical definition to state claims against.
-/

/-! ## A082855.P16778901976128856677

`ceil(sin(n)²)+record[A074679(n)]-n`
-/

namespace A082855.P16778901976128856677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A082855.P16778901976128856677

/-! ## A082855.P4184444850077884329

`record[A074679(n)+1]-A028310(n)`
-/

namespace A082855.P4184444850077884329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A028310 n

end

end A082855.P4184444850077884329

/-! ## A082855.P15571318541112931853

`record[A074679(n)]-A289207(n+1)`
-/

namespace A082855.P15571318541112931853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A289207 (n + 1)

end

end A082855.P15571318541112931853

/-! ## A082855.P14645086434382441086

`A057427(n)+record[A074679(n)]-n`
-/

namespace A082855.P14645086434382441086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A082855.P14645086434382441086

/-! ## A082855.P370010085429444654

`record[A074679(n)]-(A057428(n)+n)`
-/

namespace A082855.P370010085429444654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A057428 n + (n : ℤ))

end

end A082855.P370010085429444654

/-! ## A082855.P10521979220265902387

`A000040(n+1)%2+record[A074679(n)]-n`
-/

namespace A082855.P10521979220265902387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A082855.P10521979220265902387

/-! ## A082855.P15837598366248998376

`A001222(2*A006530(n+1))-1+record[A074679(n)]-n`
-/

namespace A082855.P15837598366248998376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat - 1 + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A082855.P15837598366248998376

/-! ## A082855.P10087612584025398050

`record[A074679(n)]-A259361(n²)`
-/

namespace A082855.P10087612584025398050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A259361 (n ^ 2)

end

end A082855.P10087612584025398050

/-!
# A082857: Inverse function of N -> N injection A082856.

The programs for A082857, there is no canonical definition to state claims against.
-/

/-! ## A082857.P14294812671939846905

`A193231(A108032(n))%A083258(n+1)`
-/

namespace A082857.P14294812671939846905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193231 (A108032 n).toNat) (A083258 (n + 1))

end

end A082857.P14294812671939846905

/-! ## A082857.P12548749037513419017

`and(A141023(A001511(n+1)), A222162(n+1))`
-/

namespace A082857.P12548749037513419017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141023 (A001511 (n + 1)).toNat) (A222162 (n + 1))

end

end A082857.P12548749037513419017

/-! ## A082857.P832589833957087795

`C(A333500((n+1)²/∏{p}[n+1, #]), (5^(n+1))%(3*(n+1)))`
-/

namespace A082857.P832589833957087795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333500 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat (5 ^ (n + 1) % (3 * (n + 1)))

end

end A082857.P832589833957087795

/-! ## A082857.P8488613069796750670

`A347689(2*A057635(n+1))`
-/

namespace A082857.P8488613069796750670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (2 * A057635 (n + 1)).toNat

end

end A082857.P8488613069796750670

/-! ## A082857.P14653478525577159127

`A271410(n)%A232565(xor(n, n+1)+1)`
-/

namespace A082857.P14653478525577159127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271410 n) (A232565 (Nat.xor n (n + 1) + 1))

end

end A082857.P14653478525577159127

/-!
# A082858: Array A(x,y): the greatest common subtree (intersect) of the binary trees x and y, (x,y) running as (0,0),(1,0),(0,1),(2,0),(1,1),(0,2) and each index referring to a binary tree encoded by A014486(j).

The programs for A082858, there is no canonical definition to state claims against.
-/

/-! ## A082858.P5403987937638618665

`A276699(n+1)%A348041(n+1)`
-/

namespace A082858.P5403987937638618665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276699 (n + 1)) (A348041 (n + 1))

end

end A082858.P5403987937638618665

/-! ## A082858.P9437196210662117327

`A142463(C(3*n, 2))%A348041(n+1)`
-/

namespace A082858.P9437196210662117327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142463 (Nat.choose (3 * n) 2)) (A348041 (n + 1))

end

end A082858.P9437196210662117327

/-! ## A082858.P6515443617733965660

`A348041(n+1)+A049347(A331927(n))`
-/

namespace A082858.P6515443617733965660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (n + 1) + A049347 (A331927 n).toNat

end

end A082858.P6515443617733965660

/-! ## A082858.P3103804324467576873

`A348041(n+1)-A133620(A048059(n+1))`
-/

namespace A082858.P3103804324467576873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (n + 1) - A133620 (A048059 (n + 1)).toNat

end

end A082858.P3103804324467576873

/-! ## A082858.P8120489359670822122

`A348041(n+1)-A071625(A174874(n+1))`
-/

namespace A082858.P8120489359670822122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (n + 1) - A071625 (A174874 (n + 1)).toNat

end

end A082858.P8120489359670822122

/-!
# A082859: Lower triangular region of A082858.

The programs for A082859, there is no canonical definition to state claims against.
-/

/-! ## A082859.P1308730246503631522

`A082858(A245300(n))`
-/

namespace A082859.P1308730246503631522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A245300 n).toNat

end

end A082859.P1308730246503631522

/-! ## A082859.P1414551304504598598

`A082858(floor(A214661(n+1)/2))`
-/

namespace A082859.P1414551304504598598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A082859.P1414551304504598598

/-! ## A082859.P4880469567549208159

`A082858((A214661(n+1)-1)/2)`
-/

namespace A082859.P4880469567549208159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A082859.P4880469567549208159

/-! ## A082859.P1644451862531732091

`A082858(A057979(A214661(n+1)))`
-/

namespace A082859.P1644451862531732091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A057979 (A214661 (n + 1)).toNat).toNat

end

end A082859.P1644451862531732091

/-! ## A082859.P10463644623283720632

`gcd(A002262(n), A212036(A049513(n)))`
-/

namespace A082859.P10463644623283720632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A212036 (A049513 n).toNat)

end

end A082859.P10463644623283720632

/-!
# A082860: Array A(x,y): the least common supertree (union) of the binary trees x and y, (x,y) running as (0,0),(1,0),(0,1),(2,0),(1,1),(0,2) and each index referring to a binary tree encoded by A014486(j).

The programs for A082860, there is no canonical definition to state claims against.
-/

/-! ## A082860.P12725075206945026711

`A003984(n)*A043288(A111636(n))`
-/

namespace A082860.P12725075206945026711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n * A043288 (A111636 n).toNat

end

end A082860.P12725075206945026711

/-! ## A082860.P18264606080448252382

`A043288(A111636(n))*A087061(n)`
-/

namespace A082860.P18264606080448252382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A111636 n).toNat * A087061 n

end

end A082860.P18264606080448252382

/-! ## A082860.P17728625471267297942

`lcm(A003984(n), A014709(A039755(n)))`
-/

namespace A082860.P17728625471267297942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003984 n) (A014709 (A039755 n).toNat)

end

end A082860.P17728625471267297942

/-! ## A082860.P4293234487209414339

`A157754(A120027(n))`
-/

namespace A082860.P4293234487209414339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (A120027 n).toNat

end

end A082860.P4293234487209414339

/-! ## A082860.P5123223862550969093

`A157754(A232646(n+1))`
-/

namespace A082860.P5123223862550969093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (A232646 (n + 1)).toNat

end

end A082860.P5123223862550969093

/-!
# A082861: Lower triangular region of A082860.

The programs for A082861, there is no canonical definition to state claims against.
-/

/-! ## A082861.P8881992697252717410

`A082860(A245300(n))`
-/

namespace A082861.P8881992697252717410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (A245300 n).toNat

end

end A082861.P8881992697252717410

/-!
# A082862: Prime(2^j) where j are the positions at which (prime(2^k+1)-prime(2^k))/log(prime(2^k)) set low-value records.

The programs for A082862, there is no canonical definition to state claims against.
-/

/-! ## A082862.P16098637423613779451

`filter[A033844(n), A093879(#)]`
-/

namespace A082862.P16098637423613779451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093879 (f1 j).toNat = 1) n)

end

end A082862.P16098637423613779451

/-! ## A082862.P9297684416756670223

`A000040(record[A278043(n)^n])`
-/

namespace A082862.P9297684416756670223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082862.P9297684416756670223

/-!
# A082863: Number of distinct prime factors of n^2-1.

The programs for A082863, the canonical program `A082863.P15401385756754220590` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082863 has offset 2).

The definition of A082863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082863.P6149573665986460352

`A001221(n+1)+A001221(n+3)+((-1)^(n+2)-1)/2`
-/

namespace A082863.P6149573665986460352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) + A001221 (n + 3) : ℚ) + ((-1) ^ (n + 2) - 1 : ℚ) / 2

end

end A082863.P6149573665986460352

namespace A082863

/-- `A001221(n+1)+A001221(n+3)+((-1)^(n+2)-1)/2` -/
def P6149573665986460352.Spec : Prop :=
  ∀ n, P6149573665986460352.a n = (A082863 (n + 2) : ℚ)

end A082863

/-! ## A082863.P15401385756754220590

`A001221((n+2)²-1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082863

/-- `A001221((n+2)²-1)` -/
def P15401385756754220590.Spec : Prop :=
  ∀ n, P15401385756754220590.a n = A082863 (n + 2)

theorem P15401385756754220590.correct : P15401385756754220590.Spec := by
  intro n
  simp only [A082863, Nat.add_sub_cancel]

end A082863

/-! ## A082863.P18248524647130348157

`A005087(n+1)+A001221(n+3)`
-/

namespace A082863.P18248524647130348157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + A001221 (n + 3)

end

end A082863.P18248524647130348157

namespace A082863

/-- `A005087(n+1)+A001221(n+3)` -/
def P18248524647130348157.Spec : Prop :=
  ∀ n, P18248524647130348157.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P6174422113506118573

`A001221(n+3)+log2(A068068(n+1))`
-/

namespace A082863.P6174422113506118573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 3) : ℝ) + Real.logb 2 (A068068 (n + 1) : ℝ)

end

end A082863.P6174422113506118573

namespace A082863

/-- `A001221(n+3)+log2(A068068(n+1))` -/
def P6174422113506118573.Spec : Prop :=
  ∀ n, P6174422113506118573.a n = (A082863 (n + 2) : ℝ)

end A082863

/-! ## A082863.P3337883957022921889

`A001221((n+1)/2^val(n+1, 2))+A001221(n+3)`
-/

namespace A082863.P3337883957022921889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + A001221 (n + 3)

end

end A082863.P3337883957022921889

namespace A082863

/-- `A001221((n+1)/2^val(n+1, 2))+A001221(n+3)` -/
def P3337883957022921889.Spec : Prop :=
  ∀ n, P3337883957022921889.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P9238673419263840823

`A001221(A000265(n+1))+A001221(n+3)`
-/

namespace A082863.P9238673419263840823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000265 (n + 1)).toNat + A001221 (n + 3)

end

end A082863.P9238673419263840823

namespace A082863

/-- `A001221(A000265(n+1))+A001221(n+3)` -/
def P9238673419263840823.Spec : Prop :=
  ∀ n, P9238673419263840823.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P5080729123718138688

`A001221(A064989(n+1))+A001221(n+3)`
-/

namespace A082863.P5080729123718138688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064989 (n + 1)).toNat + A001221 (n + 3)

end

end A082863.P5080729123718138688

namespace A082863

/-- `A001221(A064989(n+1))+A001221(n+3)` -/
def P5080729123718138688.Spec : Prop :=
  ∀ n, P5080729123718138688.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P15487626458962356694

`A001221(n+1)+A059957(n+2)-A099812(n+2)`
-/

namespace A082863.P15487626458962356694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A059957 (n + 2) - A099812 (n + 2))

end

end A082863.P15487626458962356694

namespace A082863

/-- `A001221(n+1)+A059957(n+2)-A099812(n+2)` -/
def P15487626458962356694.Spec : Prop :=
  ∀ n, P15487626458962356694.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P4725180070210485678

`A083399(n+3)-A351619(2*(n+1))`
-/

namespace A082863.P4725180070210485678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 3) - A351619 (2 * (n + 1))

end

end A082863.P4725180070210485678

namespace A082863

/-- `A083399(n+3)-A351619(2*(n+1))` -/
def P4725180070210485678.Spec : Prop :=
  ∀ n, P4725180070210485678.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P5868357959591025423

`A297155(2*(n+1))+A001221(n+3)`
-/

namespace A082863.P5868357959591025423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (2 * (n + 1)) + A001221 (n + 3)

end

end A082863.P5868357959591025423

namespace A082863

/-- `A297155(2*(n+1))+A001221(n+3)` -/
def P5868357959591025423.Spec : Prop :=
  ∀ n, P5868357959591025423.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P14768625113180695191

`∑{e}[∏{p}[1-(n+2)², #], #]`
-/

namespace A082863.P14768625113180695191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A082863.P14768625113180695191

namespace A082863

/-- `∑{e}[∏{p}[1-(n+2)², #], #]` -/
def P14768625113180695191.Spec : Prop :=
  ∀ n, (P14768625113180695191.a n : ℤ) = A082863 (n + 2)

end A082863

/-! ## A082863.P9567879118057233028

`∑{p}[1-(n+2)², gcd(#, n+2)]`
-/

namespace A082863.P9567879118057233028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd p (n + 2)

end

end A082863.P9567879118057233028

namespace A082863

/-- `∑{p}[1-(n+2)², gcd(#, n+2)]` -/
def P9567879118057233028.Spec : Prop :=
  ∀ n, (P9567879118057233028.a n : ℤ) = A082863 (n + 2)

end A082863

/-! ## A082863.P2254119626292854643

`∑{p}[(n+1)*(n+3), ceil(1/#)]`
-/

namespace A082863.P2254119626292854643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A082863.P2254119626292854643

namespace A082863

/-- `∑{p}[(n+1)*(n+3), ceil(1/#)]` -/
def P2254119626292854643.Spec : Prop :=
  ∀ n, P2254119626292854643.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P4360705876545304314

`∑{e}[(n+1)*(n+3), ceil(1/#)]`
-/

namespace A082863.P4360705876545304314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A082863.P4360705876545304314

namespace A082863

/-- `∑{e}[(n+1)*(n+3), ceil(1/#)]` -/
def P4360705876545304314.Spec : Prop :=
  ∀ n, P4360705876545304314.a n = A082863 (n + 2)

end A082863

/-! ## A082863.P8248816185207243999

`∑{p}[(n+1)*(n+3), A000005(#)]/2`
-/

namespace A082863.P8248816185207243999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), A000005 p : ℤ) : ℚ) / 2

end

end A082863.P8248816185207243999

namespace A082863

/-- `∑{p}[(n+1)*(n+3), A000005(#)]/2` -/
def P8248816185207243999.Spec : Prop :=
  ∀ n, P8248816185207243999.a n = (A082863 (n + 2) : ℚ)

end A082863

/-! ## A082863.P3703231824302556571

`A001222(∏{p}[1-(n+2)², #])`
-/

namespace A082863.P3703231824302556571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A082863.P3703231824302556571

namespace A082863

/-- `A001222(∏{p}[1-(n+2)², #])` -/
def P3703231824302556571.Spec : Prop :=
  ∀ n, P3703231824302556571.a n = A082863 (n + 2)

end A082863

/-!
# A082867: Numbers n such that there exists a proper divisor 1 < m < n where m divides n and m+1 divides n+1, but there is no divisor d such that d divides n, d+1 divides n+1 and d+2 divides n+2.

The programs for A082867, there is no canonical definition to state claims against.
-/

/-! ## A082867.P6186502654678305599

`∩[A082772(n+1), comp[A082773(n+1)]]`
-/

namespace A082867.P6186502654678305599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082772 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082773 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A082867.P6186502654678305599

/-! ## A082867.P16691814242922495207

`∩[comp[A082773(n+1)], A136410(n+1)-1]`
-/

namespace A082867.P16691814242922495207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082773 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A082867.P16691814242922495207

/-! ## A082867.P7340362303425175306

`A380867(n+1)+A335520(A093335(n))`
-/

namespace A082867.P7340362303425175306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380867 (n + 1) + A335520 (A093335 n).toNat

end

end A082867.P7340362303425175306

/-! ## A082867.P10249897856506253287

`eq[A010182(A005891(n)), A323162(n+1)]`
-/

namespace A082867.P10249897856506253287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010182 (A005891 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082867.P10249897856506253287

/-! ## A082867.P17291509731739027900

`lt[A010182(A005891(n)), A121561(n+1)]`
-/

namespace A082867.P17291509731739027900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010182 (A005891 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082867.P17291509731739027900

/-!
# A082868: Continued fraction approximation to Product_{k>=2} zeta(k).

The programs for A082868, there is no canonical definition to state claims against.
-/

/-! ## A082868.P17098262637454468306

`A112798(lt[A357638(n), A268643(2*(n+2))])`
-/

namespace A082868.P17098262637454468306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082868.P17098262637454468306

/-!
# A082870: Tribonacci array.

The programs for A082870, there is no canonical definition to state claims against.
-/

/-! ## A082870.P7965716642916220058

`A082601(lt[0, A082601(n)])`
-/

namespace A082870.P7965716642916220058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A082870.P7965716642916220058

/-! ## A082870.P6743484459774512440

`A082601(comp[eq[0, A082601(n)]])`
-/

namespace A082870.P6743484459774512440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A082870.P6743484459774512440

/-! ## A082870.P5682125448900023375

`A082601(record[n%(A082601(n)+n)])`
-/

namespace A082870.P5682125448900023375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A082601 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082870.P5682125448900023375

/-! ## A082870.P15957013065573309112

`A082601(eq[0, A000007(A082601(n))])`
-/

namespace A082870.P15957013065573309112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A082601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082870.P15957013065573309112

/-! ## A082870.P8178708537412441400

`A171848(lt[A114638(n+2), A367360(3*n+4)])`
-/

namespace A082870.P8178708537412441400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114638 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367360 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082870.P8178708537412441400

/-!
# A082872: a^n + b^n + c^n + ..., where a*b*c* ... is the prime factorization of n.

The programs for A082872, there is no canonical definition to state claims against.
-/

/-! ## A082872.P13657827324482208137

`A028310(A200768(n+1))*A140191(n)`
-/

namespace A082872.P13657827324482208137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A200768 (n + 1)).toNat * A140191 n

end

end A082872.P13657827324482208137

/-! ## A082872.P6996535389656955135

`A028310(A200768(n+1)*A344180(n))`
-/

namespace A082872.P6996535389656955135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A200768 (n + 1) * A344180 n).toNat

end

end A082872.P6996535389656955135

/-!
# A082873: Independence number of king KG_2 on triangle board B_n.

The programs for A082873, the canonical program `A082873.P13323215949670490727` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082873 has offset 1).

The definition of A082873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082873.P13323215949670490727

`xor(A121262(n), A194273(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082873

/-- `xor(A121262(n), A194273(n))` -/
def P13323215949670490727.Spec : Prop :=
  ∀ n, P13323215949670490727.a n = A082873 (n + 1)

theorem P13323215949670490727.correct : P13323215949670490727.Spec := by
  intro n
  simp only [A082873, Nat.add_sub_cancel]

end A082873

/-! ## A082873.P1929357113710112522

`∑[A008619(n)]-A000035(A112689(n))`
-/

namespace A082873.P1929357113710112522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 (A112689 n).toNat

end

end A082873.P1929357113710112522

namespace A082873

/-- `∑[A008619(n)]-A000035(A112689(n))` -/
def P1929357113710112522.Spec : Prop :=
  ∀ n, P1929357113710112522.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P16326288256804019164

`A059841(A112689(n))+A024206(n+1)`
-/

namespace A082873.P16326288256804019164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A112689 n).toNat + A024206 (n + 1)

end

end A082873.P16326288256804019164

namespace A082873

/-- `A059841(A112689(n))+A024206(n+1)` -/
def P16326288256804019164.Spec : Prop :=
  ∀ n, P16326288256804019164.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P13533981649278753048

`A087811(n+1)-A000035(A112689(n))`
-/

namespace A082873.P13533981649278753048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A000035 (A112689 n).toNat

end

end A082873.P13533981649278753048

namespace A082873

/-- `A087811(n+1)-A000035(A112689(n))` -/
def P13533981649278753048.Spec : Prop :=
  ∀ n, P13533981649278753048.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P16219788246820948299

`A002620(n+2)-and(1, A069905(n+2))`
-/

namespace A082873.P16219788246820948299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - Int.land 1 (A069905 (n + 2))

end

end A082873.P16219788246820948299

namespace A082873

/-- `A002620(n+2)-and(1, A069905(n+2))` -/
def P16219788246820948299.Spec : Prop :=
  ∀ n, P16219788246820948299.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P959823122720719595

`A002620(n+2)-A000035(A112689(n))`
-/

namespace A082873.P959823122720719595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A000035 (A112689 n).toNat

end

end A082873.P959823122720719595

namespace A082873

/-- `A002620(n+2)-A000035(A112689(n))` -/
def P959823122720719595.Spec : Prop :=
  ∀ n, P959823122720719595.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P7026085069828077556

`A002620(n+2)-A211540(n+4)%2`
-/

namespace A082873.P7026085069828077556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - Int.tmod (A211540 (n + 4)) 2

end

end A082873.P7026085069828077556

namespace A082873

/-- `A002620(n+2)-A211540(n+4)%2` -/
def P7026085069828077556.Spec : Prop :=
  ∀ n, P7026085069828077556.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P376763557690763889

`A002620(n+2)-A000035(A005044(2*n+1))`
-/

namespace A082873.P376763557690763889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A000035 (A005044 (2 * n + 1)).toNat

end

end A082873.P376763557690763889

namespace A082873

/-- `A002620(n+2)-A000035(A005044(2*n+1))` -/
def P376763557690763889.Spec : Prop :=
  ∀ n, P376763557690763889.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P15912791124371724065

`A008642(2*n)-A000035(A005044(2*n+1))`
-/

namespace A082873.P15912791124371724065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (2 * n) - A000035 (A005044 (2 * n + 1)).toNat

end

end A082873.P15912791124371724065

namespace A082873

/-- `A008642(2*n)-A000035(A005044(2*n+1))` -/
def P15912791124371724065.Spec : Prop :=
  ∀ n, P15912791124371724065.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P10662478515685388917

`2*A156040(n)-A083219(A156040(n))`
-/

namespace A082873.P10662478515685388917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156040 n - A083219 (A156040 n).toNat

end

end A082873.P10662478515685388917

namespace A082873

/-- `2*A156040(n)-A083219(A156040(n))` -/
def P10662478515685388917.Spec : Prop :=
  ∀ n, P10662478515685388917.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P11273804022349727770

`A005843(A156040(n))-A083219(A156040(n))`
-/

namespace A082873.P11273804022349727770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A156040 n).toNat - A083219 (A156040 n).toNat

end

end A082873.P11273804022349727770

namespace A082873

/-- `A005843(A156040(n))-A083219(A156040(n))` -/
def P11273804022349727770.Spec : Prop :=
  ∀ n, P11273804022349727770.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P12981281971094971627

`A071934(A000212(n+2))`
-/

namespace A082873.P12981281971094971627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (A000212 (n + 2)).toNat

end

end A082873.P12981281971094971627

namespace A082873

/-- `A071934(A000212(n+2))` -/
def P12981281971094971627.Spec : Prop :=
  ∀ n, P12981281971094971627.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P9947551252814928376

`A071934(∑[A154958(2*n)])`
-/

namespace A082873.P9947551252814928376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082873.P9947551252814928376

namespace A082873

/-- `A071934(∑[A154958(2*n)])` -/
def P9947551252814928376.Spec : Prop :=
  ∀ n, P9947551252814928376.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P3370018333712696823

`A071934(A001399(2*n+1))`
-/

namespace A082873.P3370018333712696823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (A001399 (2 * n + 1)).toNat

end

end A082873.P3370018333712696823

namespace A082873

/-- `A071934(A001399(2*n+1))` -/
def P3370018333712696823.Spec : Prop :=
  ∀ n, P3370018333712696823.a n = A082873 (n + 1)

end A082873

/-! ## A082873.P6244539462784555837

`A071934(∑[A008620(2*n+1)])`
-/

namespace A082873.P6244539462784555837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082873.P6244539462784555837

namespace A082873

/-- `A071934(∑[A008620(2*n+1)])` -/
def P6244539462784555837.Spec : Prop :=
  ∀ n, P6244539462784555837.a n = A082873 (n + 1)

end A082873

/-!
# A082874: Independence number of king KG_4 on triangle board B_n.

The programs for A082874, there is no canonical definition to state claims against.
-/

/-! ## A082874.P7241112666179801134

`∑[A053838((n+1)*2^n)-n%3+n]`
-/

namespace A082874.P7241112666179801134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 ((n + 1) * 2 ^ n) - ((n % 3 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082874.P7241112666179801134

/-! ## A082874.P9957372771372078893

`A063524(n)+Δ[A309224(3*n+4)]`
-/

namespace A082874.P9957372771372078893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309224 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (f1 (n + 1) - f1 n)

end

end A082874.P9957372771372078893

/-! ## A082874.P1021696062066879555

`∑[A291317(n+1)%record[A221878(n+1)]+1]`
-/

namespace A082874.P1021696062066879555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221878 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291317 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082874.P1021696062066879555

/-! ## A082874.P7560734147830896475

`A113137(A181021(n+1))+A000217(n)`
-/

namespace A082874.P7560734147830896475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113137 (A181021 (n + 1)).toNat + A000217 n

end

end A082874.P7560734147830896475

/-! ## A082874.P7574300403765118825

`A158384(n+1)+A080846(A303862(n))`
-/

namespace A082874.P7574300403765118825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158384 (n + 1) + A080846 (A303862 n).toNat

end

end A082874.P7574300403765118825

/-!
# A082875: Squares that are the sum of three factorials.

The programs for A082875, there is no canonical definition to state claims against.
-/

/-! ## A082875.P124793470460279058

`round(sqrt(lcm(10*n+3-2*n, n!)))²`
-/

namespace A082875.P124793470460279058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.lcm ((10 * n + 3 : ℤ) - (2 * n : ℤ)) (Nat.factorial n : ℤ) : ℝ)) ^ 2

end

end A082875.P124793470460279058

/-!
# A082877: a(n) = A002884(n) / A070731(n).

The programs for A082877, there is no canonical definition to state claims against.
-/

/-! ## A082877.P10608835438440345084

`A018534(comp[2*n+3]+1)`
-/

namespace A082877.P10608835438440345084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A082877.P10608835438440345084

/-! ## A082877.P89297438940811771

`A254926(2*a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A082877.P89297438940811771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A254926 (2 * a (n - 1)).toNat

end

end A082877.P89297438940811771

/-! ## A082877.P11057598574406591341

`record[A018534(n+1)/n^(n%2)]`
-/

namespace A082877.P11057598574406591341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018534 (n + 1) : ℚ) / (n ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082877.P11057598574406591341

/-! ## A082877.P16303415075664663496

`round(sqrt(A162189(n+5)+1))*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A082877.P16303415075664663496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (A162189 (n + 5) + 1 : ℝ)) * a (n - 3)

end

end A082877.P16303415075664663496

/-! ## A082877.P14999490005626387210

`A018118(A312101(n))`
-/

namespace A082877.P14999490005626387210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (A312101 n).toNat

end

end A082877.P14999490005626387210

/-!
# A082878: Arithmetic derivative of numbers of the form p*q^k with distinct primes p and q, k > 0.

The programs for A082878, the canonical program `A082878.P13588294601362441638` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082878 has offset 1).

The definition of A082878 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A084227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082878.P13588294601362441638

`A003415(A084227(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A082878

/-- `A003415(A084227(n+1))` -/
def P13588294601362441638.Spec : Prop :=
  ∀ n, P13588294601362441638.a n = A082878 (n + 1)

theorem P13588294601362441638.correct : P13588294601362441638.Spec := by
  intro n
  simp only [A082878, Nat.add_sub_cancel]

end A082878

/-! ## A082878.P10036072867190003249

`A003415(eq[2, A323437(n)])`
-/

namespace A082878.P10036072867190003249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082878.P10036072867190003249

namespace A082878

/-- `A003415(eq[2, A323437(n)])` -/
def P10036072867190003249.Spec : Prop :=
  ∀ n, P10036072867190003249.a n = A082878 (n + 1)

end A082878

/-! ## A082878.P7759451957858832066

`A003415(A328956(n+1)%A199860(2*n+5))`
-/

namespace A082878.P7759451957858832066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.tmod (A328956 (n + 1)) (A199860 (2 * n + 5))).toNat

end

end A082878.P7759451957858832066

namespace A082878

/-- `A003415(A328956(n+1)%A199860(2*n+5))` -/
def P7759451957858832066.Spec : Prop :=
  ∀ n, P7759451957858832066.a n = A082878 (n + 1)

end A082878

/-! ## A082878.P8086810211688220950

`A015160(3*n+1)+A003415(A328956(n+1))`
-/

namespace A082878.P8086810211688220950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015160 (3 * n + 1) + A003415 (A328956 (n + 1)).toNat

end

end A082878.P8086810211688220950

namespace A082878

/-- `A015160(3*n+1)+A003415(A328956(n+1))` -/
def P8086810211688220950.Spec : Prop :=
  ∀ n, P8086810211688220950.a n = A082878 (n + 1)

end A082878

/-! ## A082878.P16193868140968260253

`A003415(A024619(n+1)%A005115(2*n+3))`
-/

namespace A082878.P16193868140968260253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.tmod (A024619 (n + 1)) (A005115 (2 * n + 3))).toNat

end

end A082878.P16193868140968260253

namespace A082878

/-- `A003415(A024619(n+1)%A005115(2*n+3))` -/
def P16193868140968260253.Spec : Prop :=
  ∀ n, P16193868140968260253.a n = A082878 (n + 1)

end A082878

/-!
# A082879: Number of primes not exceeding the factorial of the n-th prime.

The programs for A082879, there is no canonical definition to state claims against.
-/

/-! ## A082879.P16124463673631530776

`A003604(p?[∏{d}[n, #]])`
-/

namespace A082879.P16124463673631530776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A082879.P16124463673631530776

/-! ## A082879.P14025594514245086834

`record[∏{p}[n, A003604(#)]]`
-/

namespace A082879.P14025594514245086834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A003604 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082879.P14025594514245086834

/-! ## A082879.P3480456167419356092

`A003604(p?[comp[n²]])`
-/

namespace A082879.P3480456167419356092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A082879.P3480456167419356092

/-! ## A082879.P4198835364058151599

`A003604(eq[2, ∏{e}[n, #+1]])`
-/

namespace A082879.P4198835364058151599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082879.P4198835364058151599

/-! ## A082879.P6481417156991651107

`A003604(Δ[A007504(n)])`
-/

namespace A082879.P6481417156991651107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (f1 (n + 1) - f1 n).toNat

end

end A082879.P6481417156991651107

/-!
# A082882: Number of distinct values of A075860(j) when j runs through composite numbers between n-th and (n+1)-th primes. That is, the counts of different fixed-points[=prime] reached by iteration of function A008472(=sum of prime factors) initiated with composite values between two consecutive primes.

The programs for A082882, there is no canonical definition to state claims against.
-/

/-! ## A082882.P15181365567593261848

`or(A094076(n+1), A127326(A016116(n)))`
-/

namespace A082882.P15181365567593261848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094076 (n + 1)) (A127326 (A016116 n).toNat)

end

end A082882.P15181365567593261848

/-! ## A082882.P8736100179441730274

`or(A102632(n+1), A127326(A016116(n)))`
-/

namespace A082882.P8736100179441730274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102632 (n + 1)) (A127326 (A016116 n).toNat)

end

end A082882.P8736100179441730274

/-! ## A082882.P8190618830288432369

`or(A094076(n+1), A191250(A257744(n+1)))`
-/

namespace A082882.P8190618830288432369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094076 (n + 1)) (A191250 (A257744 (n + 1)).toNat)

end

end A082882.P8190618830288432369

/-! ## A082882.P6844776678486440193

`or(A102632(n+1), A191250(A257744(n+1)))`
-/

namespace A082882.P6844776678486440193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102632 (n + 1)) (A191250 (A257744 (n + 1)).toNat)

end

end A082882.P6844776678486440193

/-! ## A082882.P5706262002952018861

`or(A021913(A299288(n+2)), A094076(n+1))`
-/

namespace A082882.P5706262002952018861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A299288 (n + 2)).toNat) (A094076 (n + 1))

end

end A082882.P5706262002952018861

/-!
# A082884: a(n) = smallest prime p for which (r-p)/log(p) < 1/n, where r is the next prime after p.

The programs for A082884, there is no canonical definition to state claims against.
-/

/-! ## A082884.P7366301164598795261

`A000040(A040014(2*(n+1))+A034850(n))`
-/

namespace A082884.P7366301164598795261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A040014 (2 * (n + 1)) + A034850 n).toNat

end

end A082884.P7366301164598795261

/-!
# A082885: Primes followed by a larger-than-average prime gap.

The programs for A082885, there is no canonical definition to state claims against.
-/

/-! ## A082885.P13875062564271562015

`record[A000040(n+1)%A117879(A001223(n+1))]`
-/

namespace A082885.P13875062564271562015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A117879 (A001223 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082885.P13875062564271562015

/-! ## A082885.P13452099834177967124

`p?[(n+1)*A120936(n+1)]`
-/

namespace A082885.P13452099834177967124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082885.P13452099834177967124

/-! ## A082885.P952610190790493324

`p?[lcm(-A001478(n+1), A120936(n+1))]`
-/

namespace A082885.P952610190790493324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A001478 (n + 1)) (A120936 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082885.P952610190790493324

/-! ## A082885.P600077297902387317

`eq[A033676(n+1)², A120936(n+1)]+1`
-/

namespace A082885.P600077297902387317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082885.P600077297902387317

/-! ## A082885.P16013573402936373338

`eq[A033676(n+1), A120936(A014963(n+1))]+1`
-/

namespace A082885.P16013573402936373338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082885.P16013573402936373338

/-!
# A082886: a(n) = floor((prime(n+1)-prime(n))/log(prime(n))).

The programs for A082886, the canonical program `A082886.P17747584522747470578` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082886 has offset 1).

The definition of A082886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082886.P17747584522747470578

`floor(A001223(n+1)/log(A000040(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082886

/-- `floor(A001223(n+1)/log(A000040(n+1)))` -/
def P17747584522747470578.Spec : Prop :=
  ∀ n, P17747584522747470578.a n = A082886 (n + 1)

theorem P17747584522747470578.correct : P17747584522747470578.Spec := by
  intro n
  simp only [A082886, Nat.add_sub_cancel]

end A082886

/-! ## A082886.P16529757096992409482

`A236853(or(A336957(n+1), A339002(3*n+1)))`
-/

namespace A082886.P16529757096992409482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 (Int.lor (A336957 (n + 1)) (A339002 (3 * n + 1))).toNat

end

end A082886.P16529757096992409482

namespace A082886

/-- `A236853(or(A336957(n+1), A339002(3*n+1)))` -/
def P16529757096992409482.Spec : Prop :=
  ∀ n, P16529757096992409482.a n = A082886 (n + 1)

end A082886

/-! ## A082886.P1349374307565597163

`A213725(A194712(3*n+5)+∏{e}[n+1, 6*#+1])`
-/

namespace A082886.P1349374307565597163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (A194712 (3 * n + 5) + ((∏ p ∈ Nat.primeFactors (f1 n), (6 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A082886.P1349374307565597163

namespace A082886

/-- `A213725(A194712(3*n+5)+∏{e}[n+1, 6*#+1])` -/
def P1349374307565597163.Spec : Prop :=
  ∀ n, P1349374307565597163.a n = A082886 (n + 1)

end A082886

/-! ## A082886.P11075353778404484598

`A249603(A072187(n+1))`
-/

namespace A082886.P11075353778404484598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249603 (A072187 (n + 1)).toNat

end

end A082886.P11075353778404484598

namespace A082886

/-- `A249603(A072187(n+1))` -/
def P11075353778404484598.Spec : Prop :=
  ∀ n, P11075353778404484598.a n = A082886 (n + 1)

end A082886

/-! ## A082886.P14908654156174416222

`and(A115570(A026179(3*n+1)), A115571(2*n+3))`
-/

namespace A082886.P14908654156174416222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115570 (A026179 (3 * n + 1)).toNat) (A115571 (2 * n + 3))

end

end A082886.P14908654156174416222

namespace A082886

/-- `and(A115570(A026179(3*n+1)), A115571(2*n+3))` -/
def P14908654156174416222.Spec : Prop :=
  ∀ n, P14908654156174416222.a n = A082886 (n + 1)

end A082886

/-!
# A082887: a(n) = gcd(n! mod 2^n, (n+1)! mod 2^(n+1)).

The programs for A082887, there is no canonical definition to state claims against.
-/

/-! ## A082887.P5033572953368105906

`gcd(A000142(n), A001792(A144845(n)))`
-/

namespace A082887.P5033572953368105906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A001792 (A144845 n).toNat)

end

end A082887.P5033572953368105906

/-! ## A082887.P5648744800944142323

`gcd(A032031(n), A046798(A363322(3*n+1)))`
-/

namespace A082887.P5648744800944142323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032031 n) (A046798 (A363322 (3 * n + 1)).toNat)

end

end A082887.P5648744800944142323

/-! ## A082887.P617930282984666213

`A175181(gcd(n!, A339252(2*(n+1))))`
-/

namespace A082887.P617930282984666213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (Int.gcd (Nat.factorial n : ℤ) (A339252 (2 * (n + 1))))

end

end A082887.P617930282984666213

/-!
# A082888: Primes p such that (r-p)/log(p) > 3, where r is the next prime after p.

The programs for A082888, the canonical program `A082888.P10948072775015990092` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082888 has offset 1).

The definition of A082888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082888.P10948072775015990092

`A000040(lt[A001748(n+1), A050216(n)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A082888

/-- `A000040(lt[A001748(n+1), A050216(n)])` -/
def P10948072775015990092.Spec : Prop :=
  ∀ n, P10948072775015990092.a n = A082888 (n + 1)

theorem P10948072775015990092.correct : P10948072775015990092.Spec := by
  intro n
  simp only [A082888, Nat.add_sub_cancel]

end A082888

/-!
# A082889: Primes p such that (r-p)/log(p) > 4, where r is the next prime after p.

The programs for A082889, there is no canonical definition to state claims against.
-/

/-! ## A082889.P14312627813585816368

`A122390(A188163(n+2)^A366284(n))`
-/

namespace A082889.P14312627813585816368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122390 (SequenceMachineLib.roundAway ((A188163 (n + 2) : ℚ) ^ (A366284 n : ℤ))).toNat

end

end A082889.P14312627813585816368

/-!
# A082890: Primes p such that (r-p)/log(p) > 5, where r is the next prime after p.

The programs for A082890, there is no canonical definition to state claims against.
-/

/-! ## A082890.P2027553524674582105

`A082889(2*n+5)^(C(A051626(n+2)^n+1, 3)+1)`
-/

namespace A082890.P2027553524674582105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082889 (2 * n + 5) ^ (Nat.choose (A051626 (n + 2) ^ n + 1).toNat 3 + 1)

end

end A082890.P2027553524674582105

/-!
# A082891: Smallest prime p such that q = (r-p)/log(p) > n, where r is the next prime after p.

The programs for A082891, there is no canonical definition to state claims against.
-/

/-! ## A082891.P5426646567416907178

`A111870(record[A111526(3*n)])`
-/

namespace A082891.P5426646567416907178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111870 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082891.P5426646567416907178

/-! ## A082891.P11711026926275192680

`p?[A205827(n+1)-A288729(n+3)]`
-/

namespace A082891.P11711026926275192680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205827 (n + 1) - A288729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082891.P11711026926275192680

/-!
# A082892: a(n) = floor(2*n/log(A000230(n))).

The programs for A082892, there is no canonical definition to state claims against.
-/

/-! ## A082892.P8359387438419085983

`floor(2*(n+1)/log(A000230(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082892.P8359387438419085983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℝ) / Real.log (A000230 (n + 1) : ℝ))⌋

end

end A082892.P8359387438419085983

/-! ## A082892.P1333824493240007070

`A082886(A038664(n+1))`
-/

namespace A082892.P1333824493240007070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082886 (A038664 (n + 1)).toNat

end

end A082892.P1333824493240007070

/-!
# A082893: a(n) is the closest number to n-th prime which is divisible by n.

The programs for A082893, the canonical program `A082893.P13321753030369998466` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082893 has offset 1).

The definition of A082893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082893.P13321753030369998466

`(n+1)*A079416(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082893

/-- `(n+1)*A079416(n+1)` -/
def P13321753030369998466.Spec : Prop :=
  ∀ n, P13321753030369998466.a n = A082893 (n + 1)

theorem P13321753030369998466.correct : P13321753030369998466.Spec := by
  intro n
  simp only [A082893, Nat.add_sub_cancel]

end A082893

/-! ## A082893.P14201742007045660353

`(n+1)*round(Δ[A007504(n)]/(n+1))`
-/

namespace A082893.P14201742007045660353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ))

end

end A082893.P14201742007045660353

namespace A082893

/-- `(n+1)*round(Δ[A007504(n)]/(n+1))` -/
def P14201742007045660353.Spec : Prop :=
  ∀ n, P14201742007045660353.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P15333766853677391282

`(n+1)*round(A000040(n+1)/(n+1))`
-/

namespace A082893.P15333766853677391282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A082893.P15333766853677391282

namespace A082893

/-- `(n+1)*round(A000040(n+1)/(n+1))` -/
def P15333766853677391282.Spec : Prop :=
  ∀ n, P15333766853677391282.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P18393530800901174410

`A082899(n+1)+A000040(n+1)`
-/

namespace A082893.P18393530800901174410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082899 (n + 1) + A000040 (n + 1)

end

end A082893.P18393530800901174410

namespace A082893

/-- `A082899(n+1)+A000040(n+1)` -/
def P18393530800901174410.Spec : Prop :=
  ∀ n, P18393530800901174410.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P4576935729046669698

`(n+1)*round(A182986(n+2)/(n+1))`
-/

namespace A082893.P4576935729046669698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A182986 (n + 2) : ℚ) / (n + 1 : ℚ))

end

end A082893.P4576935729046669698

namespace A082893

/-- `(n+1)*round(A182986(n+2)/(n+1))` -/
def P4576935729046669698.Spec : Prop :=
  ∀ n, P4576935729046669698.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P17762124826170569337

`(n+1)*round(record[A006530(n+2)]/(n+1))`
-/

namespace A082893.P17762124826170569337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ))

end

end A082893.P17762124826170569337

namespace A082893

/-- `(n+1)*round(record[A006530(n+2)]/(n+1))` -/
def P17762124826170569337.Spec : Prop :=
  ∀ n, P17762124826170569337.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P11710341051810361903

`(n+1)*round(record[A020639(n+2)]/(n+1))`
-/

namespace A082893.P11710341051810361903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ))

end

end A082893.P11710341051810361903

namespace A082893

/-- `(n+1)*round(record[A020639(n+2)]/(n+1))` -/
def P11710341051810361903.Spec : Prop :=
  ∀ n, P11710341051810361903.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P2344003645515476012

`(n+1)*round((record[A000010(n+1)]+1)/(n+1))`
-/

namespace A082893.P2344003645515476012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / (n + 1 : ℚ))

end

end A082893.P2344003645515476012

namespace A082893

/-- `(n+1)*round((record[A000010(n+1)]+1)/(n+1))` -/
def P2344003645515476012.Spec : Prop :=
  ∀ n, P2344003645515476012.a n = A082893 (n + 1)

end A082893

/-! ## A082893.P9306713258808975043

`(n+1)*round(record[A014963(n+2)]/(n+1))`
-/

namespace A082893.P9306713258808975043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ))

end

end A082893.P9306713258808975043

namespace A082893

/-- `(n+1)*round(record[A014963(n+2)]/(n+1))` -/
def P9306713258808975043.Spec : Prop :=
  ∀ n, P9306713258808975043.a n = A082893 (n + 1)

end A082893

/-!
# A082894: a(n) is the closest number to 2^n which is divisible by n.

The programs for A082894, the canonical program `A082894.P7522623386818679712` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082894 has offset 1).

The definition of A082894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082894.P7522623386818679712

`(n+1)*floor((floor((n+1)/2)+2^(n+1))/(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082894

/-- `(n+1)*floor((floor((n+1)/2)+2^(n+1))/(n+1))` -/
def P7522623386818679712.Spec : Prop :=
  ∀ n, P7522623386818679712.a n = A082894 (n + 1)

theorem P7522623386818679712.correct : P7522623386818679712.Spec := by
  intro n
  simp only [A082894, Nat.add_sub_cancel]

end A082894

/-! ## A082894.P9573346471488072726

`A082900(n+1)+2^(n+1)`
-/

namespace A082894.P9573346471488072726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082900 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A082894.P9573346471488072726

namespace A082894

/-- `A082900(n+1)+2^(n+1)` -/
def P9573346471488072726.Spec : Prop :=
  ∀ n, P9573346471488072726.a n = A082894 (n + 1)

end A082894

/-! ## A082894.P2024805580453073033

`record[A065482(A286378(n))*A286378(n)]`
-/

namespace A082894.P2024805580453073033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (A286378 n).toNat * A286378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082894.P2024805580453073033

namespace A082894

/-- `record[A065482(A286378(n))*A286378(n)]` -/
def P2024805580453073033.Spec : Prop :=
  ∀ n, P2024805580453073033.a n = A082894 (n + 1)

end A082894

/-! ## A082894.P5409393289337772597

`A000079(n+1)+A015910(n+1)-A112983(n+1)`
-/

namespace A082894.P5409393289337772597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A015910 (n + 1) - A112983 (n + 1))

end

end A082894.P5409393289337772597

namespace A082894

/-- `A000079(n+1)+A015910(n+1)-A112983(n+1)` -/
def P5409393289337772597.Spec : Prop :=
  ∀ n, P5409393289337772597.a n = A082894 (n + 1)

end A082894

/-! ## A082894.P12307309734571321909

`A000079(n+1)%(n+1)-A112983(n+1)+A048578(n)-1`
-/

namespace A082894.P12307309734571321909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (n + 1 : ℤ) - A112983 (n + 1) + (A048578 n - 1)

end

end A082894.P12307309734571321909

namespace A082894

/-- `A000079(n+1)%(n+1)-A112983(n+1)+A048578(n)-1` -/
def P12307309734571321909.Spec : Prop :=
  ∀ n, P12307309734571321909.a n = A082894 (n + 1)

end A082894

/-! ## A082894.P17955533606880089267

`A323508(A014692(n+1)+n)+A015910(n+1)-A112983(n+1)`
-/

namespace A082894.P17955533606880089267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A014692 (n + 1) + (n : ℤ)).toNat + (A015910 (n + 1) - A112983 (n + 1))

end

end A082894.P17955533606880089267

namespace A082894

/-- `A323508(A014692(n+1)+n)+A015910(n+1)-A112983(n+1)` -/
def P17955533606880089267.Spec : Prop :=
  ∀ n, P17955533606880089267.a n = A082894 (n + 1)

end A082894

/-! ## A082894.P15995081674352533197

`A323508(A014688(n+1)-(n+1))+A015910(n+1)-A112983(n+1)`
-/

namespace A082894.P15995081674352533197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A014688 (n + 1) - (n + 1 : ℤ)).toNat + (A015910 (n + 1) - A112983 (n + 1))

end

end A082894.P15995081674352533197

namespace A082894

/-- `A323508(A014688(n+1)-(n+1))+A015910(n+1)-A112983(n+1)` -/
def P15995081674352533197.Spec : Prop :=
  ∀ n, P15995081674352533197.a n = A082894 (n + 1)

end A082894

/-! ## A082894.P10826357531366836584

`A065482(n+1)*A082895(n+1)/A082898(n+1)`
-/

namespace A082894.P10826357531366836584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065482 (n + 1) * A082895 (n + 1) : ℚ) / (A082898 (n + 1) : ℚ)

end

end A082894.P10826357531366836584

namespace A082894

/-- `A065482(n+1)*A082895(n+1)/A082898(n+1)` -/
def P10826357531366836584.Spec : Prop :=
  ∀ n, P10826357531366836584.a n = (A082894 (n + 1) : ℚ)

end A082894

/-! ## A082894.P4264821440032283092

`A065482(n+1)*A128092(n+1)/A000799(n+1)`
-/

namespace A082894.P4264821440032283092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065482 (n + 1) * A128092 (n + 1) : ℚ) / (A000799 (n + 1) : ℚ)

end

end A082894.P4264821440032283092

namespace A082894

/-- `A065482(n+1)*A128092(n+1)/A000799(n+1)` -/
def P4264821440032283092.Spec : Prop :=
  ∀ n, P4264821440032283092.a n = (A082894 (n + 1) : ℚ)

end A082894

/-! ## A082894.P11414165771800260756

`A065482(n+1)*A128093(n+1)/A053638(n+1)`
-/

namespace A082894.P11414165771800260756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065482 (n + 1) * A128093 (n + 1) : ℚ) / (A053638 (n + 1) : ℚ)

end

end A082894.P11414165771800260756

namespace A082894

/-- `A065482(n+1)*A128093(n+1)/A053638(n+1)` -/
def P11414165771800260756.Spec : Prop :=
  ∀ n, P11414165771800260756.a n = (A082894 (n + 1) : ℚ)

end A082894

/-!
# A082895: Closest number to sigma(n) = A000203(n) which is divisible by n.

The programs for A082895, the canonical program `A082895.P6993738446012556406` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082895 has offset 1).

The definition of A082895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082895.P6993738446012556406

`(n+1)*round(∑{d}[n+1, 1/#])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A082895

/-- `(n+1)*round(∑{d}[n+1, 1/#])` -/
def P6993738446012556406.Spec : Prop :=
  ∀ n, P6993738446012556406.a n = A082895 (n + 1)

theorem P6993738446012556406.correct : P6993738446012556406.Spec := by
  intro n
  simp only [A082895, Nat.add_sub_cancel]

end A082895

/-! ## A082895.P16942157709466349680

`(n+1)*A082898(n+1)`
-/

namespace A082895.P16942157709466349680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082898 (n + 1)

end

end A082895.P16942157709466349680

namespace A082895

/-- `(n+1)*A082898(n+1)` -/
def P16942157709466349680.Spec : Prop :=
  ∀ n, P16942157709466349680.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P16337420643674525775

`(n+1)*round(A000203(n+1)/(n+1))`
-/

namespace A082895.P16337420643674525775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A082895.P16337420643674525775

namespace A082895

/-- `(n+1)*round(A000203(n+1)/(n+1))` -/
def P16337420643674525775.Spec : Prop :=
  ∀ n, P16337420643674525775.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P13512977793457136637

`A082901(n+1)+A000203(n+1)`
-/

namespace A082895.P13512977793457136637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (n + 1) + A000203 (n + 1)

end

end A082895.P13512977793457136637

namespace A082895

/-- `A082901(n+1)+A000203(n+1)` -/
def P13512977793457136637.Spec : Prop :=
  ∀ n, P13512977793457136637.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P14461395373388504406

`A082901(n+1)+A039653(n+1)+1`
-/

namespace A082895.P14461395373388504406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (n + 1) + (A039653 (n + 1) + 1)

end

end A082895.P14461395373388504406

namespace A082895

/-- `A082901(n+1)+A039653(n+1)+1` -/
def P14461395373388504406.Spec : Prop :=
  ∀ n, P14461395373388504406.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P9168351861661407902

`A245092(2*n+1)+A082901(n+1)`
-/

namespace A082895.P9168351861661407902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A082901 (n + 1)

end

end A082895.P9168351861661407902

namespace A082895

/-- `A245092(2*n+1)+A082901(n+1)` -/
def P9168351861661407902.Spec : Prop :=
  ∀ n, P9168351861661407902.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P311276242015665863

`A082901(n+1)+A074400(n+1)/2`
-/

namespace A082895.P311276242015665863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082901 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A082895.P311276242015665863

namespace A082895

/-- `A082901(n+1)+A074400(n+1)/2` -/
def P311276242015665863.Spec : Prop :=
  ∀ n, P311276242015665863.a n = (A082895 (n + 1) : ℚ)

end A082895

/-! ## A082895.P4136298617338839024

`A034448(n+1)+A082901(n+1)+A048146(n+1)`
-/

namespace A082895.P4136298617338839024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A082901 (n + 1) + A048146 (n + 1))

end

end A082895.P4136298617338839024

namespace A082895

/-- `A034448(n+1)+A082901(n+1)+A048146(n+1)` -/
def P4136298617338839024.Spec : Prop :=
  ∀ n, P4136298617338839024.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P15892531290414499061

`A000593(n+1)+A146076(n+1)+A082901(n+1)`
-/

namespace A082895.P15892531290414499061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) + A082901 (n + 1))

end

end A082895.P15892531290414499061

namespace A082895

/-- `A000593(n+1)+A146076(n+1)+A082901(n+1)` -/
def P15892531290414499061.Spec : Prop :=
  ∀ n, P15892531290414499061.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P12819593254209657956

`A035316(n+1)+A285309(n+1)+A082901(n+1)`
-/

namespace A082895.P12819593254209657956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + (A285309 (n + 1) + A082901 (n + 1))

end

end A082895.P12819593254209657956

namespace A082895

/-- `A035316(n+1)+A285309(n+1)+A082901(n+1)` -/
def P12819593254209657956.Spec : Prop :=
  ∀ n, P12819593254209657956.a n = A082895 (n + 1)

end A082895

/-! ## A082895.P15419438995927947269

`A082901(n+1)+A004526(A074400(n+1))`
-/

namespace A082895.P15419438995927947269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (n + 1) + A004526 (A074400 (n + 1)).toNat

end

end A082895.P15419438995927947269

namespace A082895

/-- `A082901(n+1)+A004526(A074400(n+1))` -/
def P15419438995927947269.Spec : Prop :=
  ∀ n, P15419438995927947269.a n = A082895 (n + 1)

end A082895

/-!
# A082897: Perfect totient numbers.

The programs for A082897, there is no canonical definition to state claims against.
-/

/-! ## A082897.P10326382831608430275

`record[A000265(A113808(n+3))]`
-/

namespace A082897.P10326382831608430275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A113808 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082897.P10326382831608430275

/-! ## A082897.P5530107093236135378

`filter[A113808(n+2), A035263(#)]`
-/

namespace A082897.P5530107093236135378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A082897.P5530107093236135378

/-! ## A082897.P9086424296710475279

`filter[A113808(n+2), A152822(#)]`
-/

namespace A082897.P9086424296710475279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A082897.P9086424296710475279

/-! ## A082897.P14367051287988641362

`filter[A113808(n+2), A373157(#)]`
-/

namespace A082897.P14367051287988641362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A082897.P14367051287988641362

/-! ## A082897.P14031873231101134555

`filter[A113808(n+2), A374134(#)]`
-/

namespace A082897.P14031873231101134555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A082897.P14031873231101134555

/-!
# A082898: a(n) = A082895(n)/n, where A082895(n) is the closest number to sigma(n) which is divisible by n.

The programs for A082898, the canonical program `A082898.P8644397962785130186` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082898 has offset 1).

The definition of A082898 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082898.P8644397962785130186

`A082895(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082898

/-- `A082895(n+1)/(n+1)` -/
def P8644397962785130186.Spec : Prop :=
  ∀ n, P8644397962785130186.a n = (A082898 (n + 1) : ℚ)

end A082898

/-! ## A082898.P631028135797920637

`round(∑{d}[n+1, 1/#])`
-/

namespace A082898.P631028135797920637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ))

end

end A082898.P631028135797920637

namespace A082898

/-- `round(∑{d}[n+1, 1/#])` -/
def P631028135797920637.Spec : Prop :=
  ∀ n, P631028135797920637.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P17557425616000378544

`round(A000203(n+1)/(n+1))`
-/

namespace A082898.P17557425616000378544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A082898.P17557425616000378544

namespace A082898

/-- `round(A000203(n+1)/(n+1))` -/
def P17557425616000378544.Spec : Prop :=
  ∀ n, P17557425616000378544.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P4541415330609638567

`round(abs(Δ[A330725(n)])/(n+1))`
-/

namespace A082898.P4541415330609638567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|f1 (n + 1) - f1 n| : ℚ) / (n + 1 : ℚ))

end

end A082898.P4541415330609638567

namespace A082898

/-- `round(abs(Δ[A330725(n)])/(n+1))` -/
def P4541415330609638567.Spec : Prop :=
  ∀ n, P4541415330609638567.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P9555713927568687927

`round(A001065(n+1)/(n+1))+1`
-/

namespace A082898.P9555713927568687927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001065 (n + 1) : ℚ) / (n + 1 : ℚ)) + 1

end

end A082898.P9555713927568687927

namespace A082898

/-- `round(A001065(n+1)/(n+1))+1` -/
def P9555713927568687927.Spec : Prop :=
  ∀ n, P9555713927568687927.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P16270264475986092073

`round(A245092(2*n+1)/(n+1))`
-/

namespace A082898.P16270264475986092073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245092 (2 * n + 1) : ℚ) / (n + 1 : ℚ))

end

end A082898.P16270264475986092073

namespace A082898

/-- `round(A245092(2*n+1)/(n+1))` -/
def P16270264475986092073.Spec : Prop :=
  ∀ n, P16270264475986092073.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P8903151248633863792

`round((A155085(n+1)-(n+1))/(n+1))`
-/

namespace A082898.P8903151248633863792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155085 (n + 1) - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A082898.P8903151248633863792

namespace A082898

/-- `round((A155085(n+1)-(n+1))/(n+1))` -/
def P8903151248633863792.Spec : Prop :=
  ∀ n, P8903151248633863792.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P9933001089587411335

`round(A002659(n+1)/A005408(n))`
-/

namespace A082898.P9933001089587411335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002659 (n + 1) : ℚ) / (A005408 n : ℚ))

end

end A082898.P9933001089587411335

namespace A082898

/-- `round(A002659(n+1)/A005408(n))` -/
def P9933001089587411335.Spec : Prop :=
  ∀ n, P9933001089587411335.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P8829236007153055267

`round(A239050(n+1)/A004767(n))`
-/

namespace A082898.P8829236007153055267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / (A004767 n : ℚ))

end

end A082898.P8829236007153055267

namespace A082898

/-- `round(A239050(n+1)/A004767(n))` -/
def P8829236007153055267.Spec : Prop :=
  ∀ n, P8829236007153055267.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P3433986303537092560

`round(A017665(n+1)/A017666(n+1))`
-/

namespace A082898.P3433986303537092560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017665 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ))

end

end A082898.P3433986303537092560

namespace A082898

/-- `round(A017665(n+1)/A017666(n+1))` -/
def P3433986303537092560.Spec : Prop :=
  ∀ n, P3433986303537092560.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P10393090266421744989

`round(A074400(n+1)/A285259(n+1))`
-/

namespace A082898.P10393090266421744989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A285259 (n + 1) : ℚ))

end

end A082898.P10393090266421744989

namespace A082898

/-- `round(A074400(n+1)/A285259(n+1))` -/
def P10393090266421744989.Spec : Prop :=
  ∀ n, P10393090266421744989.a n = A082898 (n + 1)

end A082898

/-! ## A082898.P13618559168270584287

`A048675(A082895(n+1))+1-A048675(n+1)`
-/

namespace A082898.P13618559168270584287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A082895 (n + 1)).toNat + (1 - A048675 (n + 1))

end

end A082898.P13618559168270584287

namespace A082898

/-- `A048675(A082895(n+1))+1-A048675(n+1)` -/
def P13618559168270584287.Spec : Prop :=
  ∀ n, P13618559168270584287.a n = A082898 (n + 1)

end A082898

/-!
# A082899: a(n) = A082893(n)-A000040(n), that is difference of n-th prime and number closest to it and divisible by n.

The programs for A082899, the canonical program `A082899.P5647589413368550065` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082899 has offset 1).

The definition of A082899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A082893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082899.P5647589413368550065

`A082893(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082899

/-- `A082893(n+1)-A000040(n+1)` -/
def P5647589413368550065.Spec : Prop :=
  ∀ n, P5647589413368550065.a n = A082899 (n + 1)

theorem P5647589413368550065.correct : P5647589413368550065.Spec := by
  intro n
  simp only [A082899, Nat.add_sub_cancel]

end A082899

/-! ## A082899.P15579558096161577644

`(n+1)*A079416(n+1)-Δ[A007504(n)]`
-/

namespace A082899.P15579558096161577644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079416 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082899.P15579558096161577644

namespace A082899

/-- `(n+1)*A079416(n+1)-Δ[A007504(n)]` -/
def P15579558096161577644.Spec : Prop :=
  ∀ n, P15579558096161577644.a n = A082899 (n + 1)

end A082899

/-! ## A082899.P8836199311635309223

`(n+1)*A079416(n+1)-A000040(n+1)`
-/

namespace A082899.P8836199311635309223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079416 (n + 1) - A000040 (n + 1)

end

end A082899.P8836199311635309223

namespace A082899

/-- `(n+1)*A079416(n+1)-A000040(n+1)` -/
def P8836199311635309223.Spec : Prop :=
  ∀ n, P8836199311635309223.a n = A082899 (n + 1)

end A082899

/-! ## A082899.P8458395910978164723

`(n+1)*round(A000040(n+1)/(n+1))-Δ[A007504(n)]`
-/

namespace A082899.P8458395910978164723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ)) - (f1 (n + 1) - f1 n)

end

end A082899.P8458395910978164723

namespace A082899

/-- `(n+1)*round(A000040(n+1)/(n+1))-Δ[A007504(n)]` -/
def P8458395910978164723.Spec : Prop :=
  ∀ n, P8458395910978164723.a n = A082899 (n + 1)

end A082899

/-! ## A082899.P4035631621356430268

`(n+1)*A079416(n+1)-record[A020639(n+2)]`
-/

namespace A082899.P4035631621356430268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079416 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082899.P4035631621356430268

namespace A082899

/-- `(n+1)*A079416(n+1)-record[A020639(n+2)]` -/
def P4035631621356430268.Spec : Prop :=
  ∀ n, P4035631621356430268.a n = A082899 (n + 1)

end A082899

/-! ## A082899.P11386885568869285899

`(n+1)*A079416(n+1)-p?[A018252(n+1)-7]`
-/

namespace A082899.P11386885568869285899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079416 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082899.P11386885568869285899

namespace A082899

/-- `(n+1)*A079416(n+1)-p?[A018252(n+1)-7]` -/
def P11386885568869285899.Spec : Prop :=
  ∀ n, P11386885568869285899.a n = A082899 (n + 1)

end A082899

/-! ## A082899.P6461436956151452538

`(n+1)*A079416(n+1)-p?[A001057(n)]`
-/

namespace A082899.P6461436956151452538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079416 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082899.P6461436956151452538

namespace A082899

/-- `(n+1)*A079416(n+1)-p?[A001057(n)]` -/
def P6461436956151452538.Spec : Prop :=
  ∀ n, P6461436956151452538.a n = A082899 (n + 1)

end A082899

/-! ## A082899.P2969714907908814480

`(n+1)*round(A000040(n+1)/(n+1))-p?[A057979(n)]`
-/

namespace A082899.P2969714907908814480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ)) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082899.P2969714907908814480

namespace A082899

/-- `(n+1)*round(A000040(n+1)/(n+1))-p?[A057979(n)]` -/
def P2969714907908814480.Spec : Prop :=
  ∀ n, P2969714907908814480.a n = A082899 (n + 1)

end A082899

