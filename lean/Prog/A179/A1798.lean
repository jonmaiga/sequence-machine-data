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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
# A179800: Values y for record minima of the positive distance d between the thirteenth power of a positive integer x and the square of an integer y such that d = x^13 - y^2 (x <> k^2 and y <> k^13).

The programs for A179800, there is no canonical definition to state claims against.
-/

/-! ## A179800.P15898369377981366514

`floor(sqrt(A179799(n+1))^13)`
-/

namespace A179800.P15898369377981366514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A179799 (n + 1) : ℝ) ^ 13⌋

end

end A179800.P15898369377981366514

/-! ## A179800.P8184586053973569904

`A155016(A179799(n+1))`
-/

namespace A179800.P8184586053973569904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155016 (A179799 (n + 1)).toNat

end

end A179800.P8184586053973569904

/-! ## A179800.P795800541306407901

`ceil(sqrt(A179799(n+1))^13-(A004442(n)-n)²)`
-/

namespace A179800.P795800541306407901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A179799 (n + 1) : ℝ) ^ 13 - ((A004442 n - (n : ℤ)) ^ 2 : ℝ)⌉

end

end A179800.P795800541306407901

/-! ## A179800.P17706997575117103864

`A155016(lt[A307050(n), n²])`
-/

namespace A179800.P17706997575117103864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307050 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155016 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A179800.P17706997575117103864

/-!
# A179801: Count of times n appears in number created by stringing together previous n-1 integers.

The programs for A179801, there is no canonical definition to state claims against.
-/

/-! ## A179801.P2472795815312765313

`char[A116700(n+1)-1]`
-/

namespace A179801.P2472795815312765313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179801.P2472795815312765313

/-! ## A179801.P7687094060097219078

`char[lt[A333921(n+1), n]]`
-/

namespace A179801.P7687094060097219078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A179801.P7687094060097219078

/-! ## A179801.P18111062869278665958

`char[lt[A333921(n), n]-1]`
-/

namespace A179801.P18111062869278665958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179801.P18111062869278665958

/-! ## A179801.P11832960598223649484

`Δ[A131981(floor(acot(n)+n))]`
-/

namespace A179801.P11832960598223649484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179801.P11832960598223649484

/-! ## A179801.P10562479509650253956

`Δ[A131981(round(acot(n)+n))]`
-/

namespace A179801.P10562479509650253956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179801.P10562479509650253956

/-! ## A179801.P14851594540711964327

`char[lt[2, Δ[A086044(n)]]-1]`
-/

namespace A179801.P14851594540711964327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179801.P14851594540711964327

/-! ## A179801.P183177104282370806

`char[lt[2, Δ[A229186(n)]]-1]`
-/

namespace A179801.P183177104282370806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179801.P183177104282370806

/-! ## A179801.P17011055142178047288

`1-char[A131881(n+1)-1]`
-/

namespace A179801.P17011055142178047288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131881 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A179801.P17011055142178047288

/-! ## A179801.P4701839621080734489

`Δ[A131981(A233583(n+1))]`
-/

namespace A179801.P4701839621080734489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179801.P4701839621080734489

/-! ## A179801.P2307498254066526221

`char[A023443(A116700(n+1))]`
-/

namespace A179801.P2307498254066526221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A116700 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179801.P2307498254066526221

/-! ## A179801.P18146557691723834988

`Δ[A131981(A000007(n)+n)]`
-/

namespace A179801.P18146557691723834988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179801.P18146557691723834988

/-! ## A179801.P8585732337494512781

`Δ[A131981(or(n, A000007(n)))]`
-/

namespace A179801.P8585732337494512781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179801.P8585732337494512781

/-! ## A179801.P4916456533886026802

`Δ[A131981(abs(n-A000007(n)))]`
-/

namespace A179801.P4916456533886026802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 |(n : ℤ) - A000007 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179801.P4916456533886026802

/-! ## A179801.P2554877829562476827

`(A094497(n)+1)%(A333921(n+1)-n)`
-/

namespace A179801.P2554877829562476827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094497 n + 1) (A333921 (n + 1) - (n : ℤ))

end

end A179801.P2554877829562476827

/-! ## A179801.P6636472650467415736

`A007318(C(2, n))%(A333921(n+1)-n)`
-/

namespace A179801.P6636472650467415736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (Nat.choose 2 n)) (A333921 (n + 1) - (n : ℤ))

end

end A179801.P6636472650467415736

/-! ## A179801.P12498283375286928320

`floor(n/A131881(n-A131981(n+1)+1))`
-/

namespace A179801.P12498283375286928320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A131881 ((n : ℤ) - A131981 (n + 1) + 1).toNat : ℚ)⌋

end

end A179801.P12498283375286928320

/-! ## A179801.P11547728997144136007

`ceil((n-A333921(n+1))/A000040(n+1))`
-/

namespace A179801.P11547728997144136007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A333921 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A179801.P11547728997144136007

/-! ## A179801.P8224825997049885107

`A014963(∑[n+1])%(n-A333921(n+1))`
-/

namespace A179801.P8224825997049885107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n : ℤ) - A333921 (n + 1))

end

end A179801.P8224825997049885107

/-! ## A179801.P15941865637340664957

`A000045(floor(n^(3/14))%(n-A333921(n+1)))`
-/

namespace A179801.P15941865637340664957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋ ((n : ℤ) - A333921 (n + 1))).toNat

end

end A179801.P15941865637340664957

/-!
# A179802: Digital root of A179545.

The programs for A179802, the canonical program `A179802.P15808026225765570397` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179802 has offset 1).

The definition of A179802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179545, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179802.P15808026225765570397

`A010888(A179545(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179802

/-- `A010888(A179545(n+1))` -/
def P15808026225765570397.Spec : Prop :=
  ∀ n, P15808026225765570397.a n = A179802 (n + 1)

theorem P15808026225765570397.correct : P15808026225765570397.Spec := by
  intro n
  simp only [A179802, Nat.add_sub_cancel]

end A179802

/-! ## A179802.P2328923370919254830

`dr(3*A008837(n+1))`
-/

namespace A179802.P2328923370919254830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A008837 (n + 1))

end

end A179802.P2328923370919254830

namespace A179802

/-- `dr(3*A008837(n+1))` -/
def P2328923370919254830.Spec : Prop :=
  ∀ n, (P2328923370919254830.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P3532174891420613057

`dr(3*A138417(n+1))`
-/

namespace A179802.P3532174891420613057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A138417 (n + 1))

end

end A179802.P3532174891420613057

namespace A179802

/-- `dr(3*A138417(n+1))` -/
def P3532174891420613057.Spec : Prop :=
  ∀ n, (P3532174891420613057.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P6332507310487959589

`dr(3*A138423(n+1))`
-/

namespace A179802.P6332507310487959589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A138423 (n + 1))

end

end A179802.P6332507310487959589

namespace A179802

/-- `dr(3*A138423(n+1))` -/
def P6332507310487959589.Spec : Prop :=
  ∀ n, (P6332507310487959589.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P14414889791420545867

`dr(3*A138460(n+1))`
-/

namespace A179802.P14414889791420545867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A138460 (n + 1))

end

end A179802.P14414889791420545867

namespace A179802

/-- `dr(3*A138460(n+1))` -/
def P14414889791420545867.Spec : Prop :=
  ∀ n, (P14414889791420545867.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P6846295665196705484

`dr(6*A036689(n+1))`
-/

namespace A179802.P6846295665196705484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * A036689 (n + 1))

end

end A179802.P6846295665196705484

namespace A179802

/-- `dr(6*A036689(n+1))` -/
def P6846295665196705484.Spec : Prop :=
  ∀ n, (P6846295665196705484.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P5282747343585565959

`dr(6*A138416(n+1))`
-/

namespace A179802.P5282747343585565959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * A138416 (n + 1))

end

end A179802.P5282747343585565959

namespace A179802

/-- `dr(6*A138416(n+1))` -/
def P5282747343585565959.Spec : Prop :=
  ∀ n, (P5282747343585565959.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P1502141403108914218

`root(9, A039701(n+1)!)`
-/

namespace A179802.P1502141403108914218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 : ℝ) ^ (1 / (Nat.factorial (A039701 (n + 1)).toNat : ℝ))

end

end A179802.P1502141403108914218

namespace A179802

/-- `root(9, A039701(n+1)!)` -/
def P1502141403108914218.Spec : Prop :=
  ∀ n, P1502141403108914218.a n = (A179802 (n + 1) : ℝ)

end A179802

/-! ## A179802.P5377151553632425844

`dr(3*C(A000040(n+1), 2))`
-/

namespace A179802.P5377151553632425844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * Nat.choose (A000040 (n + 1)).toNat 2 : ℤ)

end

end A179802.P5377151553632425844

namespace A179802

/-- `dr(3*C(A000040(n+1), 2))` -/
def P5377151553632425844.Spec : Prop :=
  ∀ n, (P5377151553632425844.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P10117209402583931920

`A010707(A261273(n+1))`
-/

namespace A179802.P10117209402583931920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 (A261273 (n + 1)).toNat

end

end A179802.P10117209402583931920

namespace A179802

/-- `A010707(A261273(n+1))` -/
def P10117209402583931920.Spec : Prop :=
  ∀ n, P10117209402583931920.a n = A179802 (n + 1)

end A179802

/-! ## A179802.P13732402335281510815

`A291363(A227991(n+1))`
-/

namespace A179802.P13732402335281510815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291363 (A227991 (n + 1)).toNat

end

end A179802.P13732402335281510815

namespace A179802

/-- `A291363(A227991(n+1))` -/
def P13732402335281510815.Spec : Prop :=
  ∀ n, P13732402335281510815.a n = A179802 (n + 1)

end A179802

/-! ## A179802.P6618683534830541766

`A088398(A039710(n+1)+1)`
-/

namespace A179802.P6618683534830541766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088398 (A039710 (n + 1) + 1).toNat

end

end A179802.P6618683534830541766

namespace A179802

/-- `A088398(A039710(n+1)+1)` -/
def P6618683534830541766.Spec : Prop :=
  ∀ n, P6618683534830541766.a n = A179802 (n + 1)

end A179802

/-! ## A179802.P15022576442100158319

`gcd(A179545(n+1), A180599(n))`
-/

namespace A179802.P15022576442100158319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179545 (n + 1)) (A180599 n)

end

end A179802.P15022576442100158319

namespace A179802

/-- `gcd(A179545(n+1), A180599(n))` -/
def P15022576442100158319.Spec : Prop :=
  ∀ n, (P15022576442100158319.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P4735238327420627139

`lcm(6, (record[A006530(n+2)]+1)%3)+3`
-/

namespace A179802.P4735238327420627139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 3) + 3

end

end A179802.P4735238327420627139

namespace A179802

/-- `lcm(6, (record[A006530(n+2)]+1)%3)+3` -/
def P4735238327420627139.Spec : Prop :=
  ∀ n, (P4735238327420627139.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P16923510527578472036

`dr(A045943(A006093(n+1)))`
-/

namespace A179802.P16923510527578472036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A045943 (A006093 (n + 1)).toNat)

end

end A179802.P16923510527578472036

namespace A179802

/-- `dr(A045943(A006093(n+1)))` -/
def P16923510527578472036.Spec : Prop :=
  ∀ n, (P16923510527578472036.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P15374518667927615981

`dr(A067726(A000040(n+1)))`
-/

namespace A179802.P15374518667927615981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067726 (A000040 (n + 1)).toNat)

end

end A179802.P15374518667927615981

namespace A179802

/-- `dr(A067726(A000040(n+1)))` -/
def P15374518667927615981.Spec : Prop :=
  ∀ n, (P15374518667927615981.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P11335292010149865007

`abs(A005928(p?[A352844(n)]))+3`
-/

namespace A179802.P11335292010149865007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005928 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat| + 3

end

end A179802.P11335292010149865007

namespace A179802

/-- `abs(A005928(p?[A352844(n)]))+3` -/
def P11335292010149865007.Spec : Prop :=
  ∀ n, P11335292010149865007.a n = A179802 (n + 1)

end A179802

/-! ## A179802.P11168293492771447330

`dr(A067726(p?[A067747(n+1)]))`
-/

namespace A179802.P11168293492771447330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A179802.P11168293492771447330

namespace A179802

/-- `dr(A067726(p?[A067747(n+1)]))` -/
def P11168293492771447330.Spec : Prop :=
  ∀ n, (P11168293492771447330.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P14993744163321055964

`dr(A067726(A067747(2*n+1)))`
-/

namespace A179802.P14993744163321055964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067726 (A067747 (2 * n + 1)).toNat)

end

end A179802.P14993744163321055964

namespace A179802

/-- `dr(A067726(A067747(2*n+1)))` -/
def P14993744163321055964.Spec : Prop :=
  ∀ n, (P14993744163321055964.a n : ℤ) = A179802 (n + 1)

end A179802

/-! ## A179802.P2075246149991810058

`A276086(A358671(A358234(A358234(A100484(n+1)))))`
-/

namespace A179802.P2075246149991810058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A358671 (A358234 (A358234 (A100484 (n + 1)).toNat).toNat).toNat).toNat

end

end A179802.P2075246149991810058

namespace A179802

/-- `A276086(A358671(A358234(A358234(A100484(n+1)))))` -/
def P2075246149991810058.Spec : Prop :=
  ∀ n, P2075246149991810058.a n = A179802 (n + 1)

end A179802

/-!
# A179803: Numbers that contain the digital reverse of their square root.

The programs for A179803, there is no canonical definition to state claims against.
-/

/-! ## A179803.P17209869384639793864

`A115761(n+1)²`
-/

namespace A179803.P17209869384639793864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115761 (n + 1) ^ 2

end

end A179803.P17209869384639793864

/-! ## A179803.P13239988668749069766

`A115761(n+1)^A040001(A008458(n))`
-/

namespace A179803.P13239988668749069766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115761 (n + 1) : ℚ) ^ (A040001 (A008458 n).toNat : ℤ)

end

end A179803.P13239988668749069766

/-! ## A179803.P5235758586157651761

`A115761(A000027(n+1))*A115761(n+1)`
-/

namespace A179803.P5235758586157651761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115761 (A000027 (n + 1)).toNat * A115761 (n + 1)

end

end A179803.P5235758586157651761

/-! ## A179803.P14275499843885385659

`A115761(n+1)^A020639(A115746(n+1))`
-/

namespace A179803.P14275499843885385659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115761 (n + 1) : ℚ) ^ (A020639 (A115746 (n + 1)).toNat : ℤ)

end

end A179803.P14275499843885385659

/-! ## A179803.P14243126426635596822

`A115761(n+1)^A020639(A124936(n+1))`
-/

namespace A179803.P14243126426635596822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115761 (n + 1) : ℚ) ^ (A020639 (A124936 (n + 1)).toNat : ℤ)

end

end A179803.P14243126426635596822

/-! ## A179803.P305184010803079821

`A115761(n+1)^A000005(A227756(n+1))`
-/

namespace A179803.P305184010803079821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115761 (n + 1) : ℚ) ^ (A000005 (A227756 (n + 1)).toNat : ℤ)

end

end A179803.P305184010803079821

/-! ## A179803.P7340160932697291813

`A115761(n+1)^A020639(A296655(n+1))`
-/

namespace A179803.P7340160932697291813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115761 (n + 1) : ℚ) ^ (A020639 (A296655 (n + 1)).toNat : ℤ)

end

end A179803.P7340160932697291813

/-!
# A179804: Number of letter combinations on a standard telephone keypad represented by the digits in n.

The programs for A179804, the canonical program `A179804.P3776327263353263252` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179804 has offset 1).

The definition of A179804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179804.P3776327263353263252

`∏{digits}[n+1, 3%(3^#)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179804

/-- `∏{digits}[n+1, 3%(3^#)]` -/
def P3776327263353263252.Spec : Prop :=
  ∀ n, (P3776327263353263252.a n : ℤ) = A179804 (n + 1)

theorem P3776327263353263252.correct : P3776327263353263252.Spec := by
  intro n
  simp only [A179804, Nat.add_sub_cancel]

end A179804

/-!
# A179805: a(0) = 1, a(1) = 3, a(2) = 6 and a(n) = 2*a(n-1) - a(n-2) for n > 3.

The programs for A179805, the canonical program `A179805.P4436965292731325163` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179805 has offset 0).

The definition of A179805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)` (program `A179805.P4436965292731325163`, by `A179805.P4436965292731325163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179805.P10631970592791577843

`a(n-1)+9` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A179805.P10631970592791577843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 1) + 9

end

end A179805.P10631970592791577843

namespace A179805

/-- `a(n-1)+9` -/
def P10631970592791577843.Spec : Prop :=
  ∀ n, (P10631970592791577843.a n : ℤ) = A179805 n

end A179805

/-! ## A179805.P4436965292731325163

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=15`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179805

/-- `2*a(n-1)-a(n-2)` -/
def P4436965292731325163.Spec : Prop :=
  ∀ n, P4436965292731325163.a n = A179805 n

theorem P4436965292731325163.correct : P4436965292731325163.Spec := by
  intro n
  simp only [A179805]

end A179805

/-!
# A179807: Antidiagonal sums of A175105.

The programs for A179807, there is no canonical definition to state claims against.
-/

/-! ## A179807.P6415670981148002357

`A110334(n)+A052409(A000108(n))`
-/

namespace A179807.P6415670981148002357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 n + A052409 (A000108 n).toNat

end

end A179807.P6415670981148002357

/-! ## A179807.P2327618085538841445

`A110334(n)+A060576(A001006(n))`
-/

namespace A179807.P2327618085538841445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 n + A060576 (A001006 n).toNat

end

end A179807.P2327618085538841445

/-! ## A179807.P981137726114051915

`A110334(n)+A066247(A026150(n))`
-/

namespace A179807.P981137726114051915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 n + A066247 (A026150 n).toNat

end

end A179807.P981137726114051915

/-! ## A179807.P9234318805151803137

`A124010(A001519(n))+A110334(n)`
-/

namespace A179807.P9234318805151803137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A001519 n).toNat + A110334 n

end

end A179807.P9234318805151803137

/-! ## A179807.P9838590023707397111

`A110334(n)+A060576(A104442(n))`
-/

namespace A179807.P9838590023707397111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 n + A060576 (A104442 n).toNat

end

end A179807.P9838590023707397111

/-!
# A179808: Number of n X 3 arrays with every diagonal and antidiagonal of length L containing a permutation of 1..L.

The programs for A179808, the canonical program `A179808.P7999496494886602539` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179808 has offset 3).

The definition of A179808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179808.P7999496494886602539

`2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179808

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-4*a(n-5)` -/
def P7999496494886602539.Spec : Prop :=
  ∀ n, P7999496494886602539.a n = A179808 (n + 3)

theorem P7999496494886602539.correct : P7999496494886602539.Spec := by
  intro n
  simp only [A179808, Nat.add_sub_cancel]

end A179808

/-! ## A179808.P5061237548633667163

`Δ[A138495(n+1)]+∑[A138495(n)]`
-/

namespace A179808.P5061237548633667163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A179808.P5061237548633667163

namespace A179808

/-- `Δ[A138495(n+1)]+∑[A138495(n)]` -/
def P5061237548633667163.Spec : Prop :=
  ∀ n, P5061237548633667163.a n = A179808 (n + 3)

end A179808

/-! ## A179808.P4773409278695160654

`record[A133684(A004442(n+1))*A133684(n)]`
-/

namespace A179808.P4773409278695160654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A004442 (n + 1)).toNat * A133684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179808.P4773409278695160654

namespace A179808

/-- `record[A133684(A004442(n+1))*A133684(n)]` -/
def P4773409278695160654.Spec : Prop :=
  ∀ n, P4773409278695160654.a n = A179808 (n + 3)

end A179808

/-! ## A179808.P10699479503630215305

`record[A133684(A065190(n+1))*A133684(n)]`
-/

namespace A179808.P10699479503630215305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A065190 (n + 1)).toNat * A133684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179808.P10699479503630215305

namespace A179808

/-- `record[A133684(A065190(n+1))*A133684(n)]` -/
def P10699479503630215305.Spec : Prop :=
  ∀ n, P10699479503630215305.a n = A179808 (n + 3)

end A179808

/-! ## A179808.P13300139632662820288

`A138477(n+1)+Δ[Δ[A138477(n+1)]]`
-/

namespace A179808.P13300139632662820288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (n + 1) + (f1 (n + 1) - f1 n)

end

end A179808.P13300139632662820288

namespace A179808

/-- `A138477(n+1)+Δ[Δ[A138477(n+1)]]` -/
def P13300139632662820288.Spec : Prop :=
  ∀ n, P13300139632662820288.a n = A179808 (n + 3)

end A179808

/-! ## A179808.P2388577697098706243

`record[∑[A138495(n)]-A001045(n)]`
-/

namespace A179808.P2388577697098706243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179808.P2388577697098706243

namespace A179808

/-- `record[∑[A138495(n)]-A001045(n)]` -/
def P2388577697098706243.Spec : Prop :=
  ∀ n, P2388577697098706243.a n = A179808 (n + 3)

end A179808

/-! ## A179808.P16672996987815760081

`∑[A138495(n)]²/A138495(A028310(n))`
-/

namespace A179808.P16672996987815760081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (A138495 (A028310 n).toNat : ℚ)

end

end A179808.P16672996987815760081

namespace A179808

/-- `∑[A138495(n)]²/A138495(A028310(n))` -/
def P16672996987815760081.Spec : Prop :=
  ∀ n, P16672996987815760081.a n = (A179808 (n + 3) : ℚ)

end A179808

/-!
# A179809: Number of n X 4 arrays with every diagonal and antidiagonal of length L containing a permutation of 1..L.

The programs for A179809, there is no canonical definition to state claims against.
-/

/-! ## A179809.P11359368976451698136

`and((2*∑[and(n, -n)²]+n)/3, A047989(n))²`
-/

namespace A179809.P11359368976451698136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)) (A047989 n) ^ 2

end

end A179809.P11359368976451698136

/-! ## A179809.P15737669612653346932

`and((2*∑[and(n, -n)²]+n)/3, A128073(n+2))²`
-/

namespace A179809.P15737669612653346932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)) (A128073 (n + 2)) ^ 2

end

end A179809.P15737669612653346932

/-!
# A179814: Values y for record minima of the positive distance d between the fifteenth power of a positive integer x and the square of an integer y such that d = x^15 - y^2 (x <> k^2 and y <> k^15).

The programs for A179814, there is no canonical definition to state claims against.
-/

/-! ## A179814.P2649248375070266037

`floor((A179813(n+1)^5)^(3/2))`
-/

namespace A179814.P2649248375070266037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179813 (n + 1) ^ 5 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A179814.P2649248375070266037

/-! ## A179814.P11818427599450140281

`A155018(A179813(n+1))`
-/

namespace A179814.P11818427599450140281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155018 (A179813 (n + 1)).toNat

end

end A179814.P11818427599450140281

/-! ## A179814.P1856770820279953639

`A155018(eq[A010052(n), A308919(n)])`
-/

namespace A179814.P1856770820279953639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179814.P1856770820279953639

/-! ## A179814.P11691388784980410270

`A155018(lt[A308919(n), A053186(n)])`
-/

namespace A179814.P11691388784980410270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179814.P11691388784980410270

/-!
# A179815: Numbers such that n=2*k in triangle A175105.

The programs for A179815, there is no canonical definition to state claims against.
-/

/-! ## A179815.P16886796932128575288

`A175105(2*(n+1)²)`
-/

namespace A179815.P16886796932128575288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175105 (2 * (n + 1) ^ 2)

end

end A179815.P16886796932128575288

/-! ## A179815.P17068428063530387115

`record[A175105(∑[A014682(n+1)])]`
-/

namespace A179815.P17068428063530387115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175105 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179815.P17068428063530387115

/-!
# A179816: Sum of the prime numbers that are between 10*n and 10*(n+1).

The programs for A179816, the canonical program `A179816.P3227526000180199930` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179816 has offset 0).

The definition of A179816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179816.P5605109875606408812

`Δ[A034387(A008706(2*n))]`
-/

namespace A179816.P5605109875606408812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A008706 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P5605109875606408812

namespace A179816

/-- `Δ[A034387(A008706(2*n))]` -/
def P5605109875606408812.Spec : Prop :=
  ∀ n, P5605109875606408812.a n = A179816 n

end A179816

/-! ## A179816.P3227526000180199930

`Δ[A034387(A313251(2*n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179816

/-- `Δ[A034387(A313251(2*n))]` -/
def P3227526000180199930.Spec : Prop :=
  ∀ n, P3227526000180199930.a n = A179816 n

theorem P3227526000180199930.correct : P3227526000180199930.Spec := by
  intro n
  simp only [A179816]

end A179816

/-! ## A179816.P8401123522239946558

`Δ[A034387(A028310(10*n))]`
-/

namespace A179816.P8401123522239946558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A028310 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P8401123522239946558

namespace A179816

/-- `Δ[A034387(A028310(10*n))]` -/
def P8401123522239946558.Spec : Prop :=
  ∀ n, P8401123522239946558.a n = A179816 n

end A179816

/-! ## A179816.P12707700620435459346

`Δ[A034387(A004280(5*n+1))]`
-/

namespace A179816.P12707700620435459346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A004280 (5 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P12707700620435459346

namespace A179816

/-- `Δ[A034387(A004280(5*n+1))]` -/
def P12707700620435459346.Spec : Prop :=
  ∀ n, P12707700620435459346.a n = A179816 n

end A179816

/-! ## A179816.P8860121204522613243

`Δ[A034387(A008458(2*n)-2*n)]`
-/

namespace A179816.P8860121204522613243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A008458 (2 * n) - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P8860121204522613243

namespace A179816

/-- `Δ[A034387(A008458(2*n)-2*n)]` -/
def P8860121204522613243.Spec : Prop :=
  ∀ n, P8860121204522613243.a n = A179816 n

end A179816

/-! ## A179816.P782886824130153871

`Δ[A034387(A004273(A008706(n)))]`
-/

namespace A179816.P782886824130153871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A004273 (A008706 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P782886824130153871

namespace A179816

/-- `Δ[A034387(A004273(A008706(n)))]` -/
def P782886824130153871.Spec : Prop :=
  ∀ n, P782886824130153871.a n = A179816 n

end A179816

/-! ## A179816.P6984427765446975300

`Δ[A034387(A004275(A016861(n)))]`
-/

namespace A179816.P6984427765446975300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A004275 (A016861 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P6984427765446975300

namespace A179816

/-- `Δ[A034387(A004275(A016861(n)))]` -/
def P6984427765446975300.Spec : Prop :=
  ∀ n, P6984427765446975300.a n = A179816 n

end A179816

/-! ## A179816.P2430108504445917057

`Δ[A007504(A230980(10*n))]`
-/

namespace A179816.P2430108504445917057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A230980 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P2430108504445917057

namespace A179816

/-- `Δ[A007504(A230980(10*n))]` -/
def P2430108504445917057.Spec : Prop :=
  ∀ n, P2430108504445917057.a n = A179816 n

end A179816

/-! ## A179816.P6232239812500593946

`Δ[A066911(A218255(n))]`
-/

namespace A179816.P6232239812500593946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A218255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P6232239812500593946

namespace A179816

/-- `Δ[A066911(A218255(n))]` -/
def P6232239812500593946.Spec : Prop :=
  ∀ n, P6232239812500593946.a n = A179816 n

end A179816

/-! ## A179816.P12625136534896509724

`Δ[A034387(A218255(n)-1)]`
-/

namespace A179816.P12625136534896509724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A218255 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P12625136534896509724

namespace A179816

/-- `Δ[A034387(A218255(n)-1)]` -/
def P12625136534896509724.Spec : Prop :=
  ∀ n, P12625136534896509724.a n = A179816 n

end A179816

/-! ## A179816.P8037706141713809770

`Δ[A066911(A007918(A017281(n)))]`
-/

namespace A179816.P8037706141713809770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A007918 (A017281 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P8037706141713809770

namespace A179816

/-- `Δ[A066911(A007918(A017281(n)))]` -/
def P8037706141713809770.Spec : Prop :=
  ∀ n, P8037706141713809770.a n = A179816 n

end A179816

/-!
# A179817: Maximally refined partitions into distinct parts (of any natural number) with n parts.

The programs for A179817, there is no canonical definition to state claims against.
-/

/-! ## A179817.P16923964991219436937

`A005041(Δ[A183118(n)])`
-/

namespace A179817.P16923964991219436937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A179817.P16923964991219436937

/-! ## A179817.P15675560223250188215

`A005041(A183117(n+1))`
-/

namespace A179817.P15675560223250188215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A183117 (n + 1)).toNat

end

end A179817.P15675560223250188215

/-! ## A179817.P15678080710964323851

`A005041(A183124(n+1))`
-/

namespace A179817.P15678080710964323851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A183124 (n + 1)).toNat

end

end A179817.P15678080710964323851

/-! ## A179817.P10509121283078177748

`A383074(A217898(n+1))`
-/

namespace A179817.P10509121283078177748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A217898 (n + 1)).toNat

end

end A179817.P10509121283078177748

/-! ## A179817.P13155081385571297226

`A055086(A095114(2^n))`
-/

namespace A179817.P13155081385571297226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A095114 (2 ^ n)).toNat

end

end A179817.P13155081385571297226

/-!
# A179818: Primes in A179816.

The programs for A179818, there is no canonical definition to state claims against.
-/

/-! ## A179818.P12046144144163063819

`p?[A179816(n)]`
-/

namespace A179818.P12046144144163063819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P12046144144163063819

/-! ## A179818.P11678383915442483964

`p?[Δ[A066911(A218255(n))]]`
-/

namespace A179818.P11678383915442483964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A218255 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P11678383915442483964

/-! ## A179818.P5756074876820687231

`p?[Δ[A034387(A218255(n)-1)]]`
-/

namespace A179818.P5756074876820687231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A218255 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P5756074876820687231

/-! ## A179818.P7417627819590290804

`p?[Δ[A034387(A008706(2*n))]]`
-/

namespace A179818.P7417627819590290804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A008706 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P7417627819590290804

/-! ## A179818.P3445297705472855456

`p?[Δ[A034387(A313251(2*n))]]`
-/

namespace A179818.P3445297705472855456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A313251 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P3445297705472855456

/-! ## A179818.P8688671499420558552

`p?[Δ[A034387(A028310(10*n))]]`
-/

namespace A179818.P8688671499420558552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A028310 (10 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P8688671499420558552

/-! ## A179818.P8086298338592325056

`p?[Δ[A007504(A230980(10*n))]]`
-/

namespace A179818.P8086298338592325056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A230980 (10 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179818.P8086298338592325056

/-!
# A179819: Monetary amounts in U.S. cents such that the smallest number of coins summing to the amount uses only denominations of 10 cents and above.

The programs for A179819, the canonical program `A179819.P1992795655462157472` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179819 has offset 1).

The definition of A179819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179819.P1992795655462157472

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=10, a(1)=20, a(2)=25, a(3)=35`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179819

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1992795655462157472.Spec : Prop :=
  ∀ n, P1992795655462157472.a n = A179819 (n + 1)

theorem P1992795655462157472.correct : P1992795655462157472.Spec := by
  intro n
  simp only [A179819, Nat.add_sub_cancel]

end A179819

/-! ## A179819.P957629702516198392

`∑[10/(n%3)!]`
-/

namespace A179819.P957629702516198392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (Nat.factorial (n % 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P957629702516198392

namespace A179819

/-- `∑[10/(n%3)!]` -/
def P957629702516198392.Spec : Prop :=
  ∀ n, P957629702516198392.a n = (A179819 (n + 1) : ℚ)

end A179819

/-! ## A179819.P6098346759179736685

`∑[C(5, gcd(3, C(n, 2)))]`
-/

namespace A179819.P6098346759179736685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (Nat.gcd 3 (Nat.choose n 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P6098346759179736685

namespace A179819

/-- `∑[C(5, gcd(3, C(n, 2)))]` -/
def P6098346759179736685.Spec : Prop :=
  ∀ n, (P6098346759179736685.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P14973061773221559888

`∑[gcd(10, (10*n)%15)]`
-/

namespace A179819.P14973061773221559888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (10 * n % 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P14973061773221559888

namespace A179819

/-- `∑[gcd(10, (10*n)%15)]` -/
def P14973061773221559888.Spec : Prop :=
  ∀ n, (P14973061773221559888.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P857389468013086092

`a(n-3)+25` with `a(0)=10, a(1)=20, a(2)=25`
-/

namespace A179819.P857389468013086092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 20, 25] fun n a =>
  a (n - 3) + 25

end

end A179819.P857389468013086092

namespace A179819

/-- `a(n-3)+25` -/
def P857389468013086092.Spec : Prop :=
  ∀ n, (P857389468013086092.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P2515857810118577736

`∑[abs(a(n-3))]` with `a(0)=10, a(1)=10, a(2)=5`
-/

namespace A179819.P2515857810118577736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 10, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P2515857810118577736

namespace A179819

/-- `∑[abs(a(n-3))]` -/
def P2515857810118577736.Spec : Prop :=
  ∀ n, (P2515857810118577736.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P3816009332806171835

`∑[floor(a(n-3))]` with `a(0)=10, a(1)=10, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A179819.P3816009332806171835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 10, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P3816009332806171835

namespace A179819

/-- `∑[floor(a(n-3))]` -/
def P3816009332806171835.Spec : Prop :=
  ∀ n, (P3816009332806171835.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P14169542815679051892

`∑[ceil(a(n-3))]` with `a(0)=10, a(1)=10, a(2)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A179819.P14169542815679051892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 10, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P14169542815679051892

namespace A179819

/-- `∑[ceil(a(n-3))]` -/
def P14169542815679051892.Spec : Prop :=
  ∀ n, (P14169542815679051892.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P4226427110557193551

`∑[round(a(n-3))]` with `a(0)=10, a(1)=10, a(2)=5`

`round` is left out, it is the identity on integers.
-/

namespace A179819.P4226427110557193551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 10, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P4226427110557193551

namespace A179819

/-- `∑[round(a(n-3))]` -/
def P4226427110557193551.Spec : Prop :=
  ∀ n, (P4226427110557193551.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P17242397311606155166

`∑[a(n-3)%11]` with `a(0)=10, a(1)=10, a(2)=5`
-/

namespace A179819.P17242397311606155166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 10, 5] fun n f1 =>
  f1 (n - 3) % 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P17242397311606155166

namespace A179819

/-- `∑[a(n-3)%11]` -/
def P17242397311606155166.Spec : Prop :=
  ∀ n, (P17242397311606155166.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P17905578452439476902

`5*ceil(5*(n+1)/3)`
-/

namespace A179819.P17905578452439476902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌈5 * ((n + 1 : ℚ) / 3)⌉

end

end A179819.P17905578452439476902

namespace A179819

/-- `5*ceil(5*(n+1)/3)` -/
def P17905578452439476902.Spec : Prop :=
  ∀ n, P17905578452439476902.a n = A179819 (n + 1)

end A179819

/-! ## A179819.P13210468572565480517

`∑[5*((n+1)²+1)%3]`
-/

namespace A179819.P13210468572565480517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (((n + 1) ^ 2 + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P13210468572565480517

namespace A179819

/-- `∑[5*((n+1)²+1)%3]` -/
def P13210468572565480517.Spec : Prop :=
  ∀ n, (P13210468572565480517.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P7861173861558159121

`∑[((n+1)²%3+2)²+1]`
-/

namespace A179819.P7861173861558159121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 % 3 + 2) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P7861173861558159121

namespace A179819

/-- `∑[((n+1)²%3+2)²+1]` -/
def P7861173861558159121.Spec : Prop :=
  ∀ n, (P7861173861558159121.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P5165469664847020352

`∑[dr(((n+2)*(n+3))²)+1]`
-/

namespace A179819.P5165469664847020352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((n + 2) * (n + 3)) ^ 2 : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P5165469664847020352

namespace A179819

/-- `∑[dr(((n+2)*(n+3))²)+1]` -/
def P5165469664847020352.Spec : Prop :=
  ∀ n, (P5165469664847020352.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P1750211451854379664

`∑[C(5, A144437(n+1))]`
-/

namespace A179819.P1750211451854379664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A144437 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P1750211451854379664

namespace A179819

/-- `∑[C(5, A144437(n+1))]` -/
def P1750211451854379664.Spec : Prop :=
  ∀ n, (P1750211451854379664.a n : ℤ) = A179819 (n + 1)

end A179819

/-! ## A179819.P10469315464293269838

`A171088(n)+A004768(n)`
-/

namespace A179819.P10469315464293269838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 n + A004768 n

end

end A179819.P10469315464293269838

namespace A179819

/-- `A171088(n)+A004768(n)` -/
def P10469315464293269838.Spec : Prop :=
  ∀ n, P10469315464293269838.a n = A179819 (n + 1)

end A179819

/-! ## A179819.P5550916263941019520

`A017509(n)-A047523(n+1)`
-/

namespace A179819.P5550916263941019520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n - A047523 (n + 1)

end

end A179819.P5550916263941019520

namespace A179819

/-- `A017509(n)-A047523(n+1)` -/
def P5550916263941019520.Spec : Prop :=
  ∀ n, P5550916263941019520.a n = A179819 (n + 1)

end A179819

/-! ## A179819.P13217259189168537417

`A016897(A004396(n))+A016897(n)+2`
-/

namespace A179819.P13217259189168537417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A004396 n).toNat + (A016897 n + 2)

end

end A179819.P13217259189168537417

namespace A179819

/-- `A016897(A004396(n))+A016897(n)+2` -/
def P13217259189168537417.Spec : Prop :=
  ∀ n, P13217259189168537417.a n = A179819 (n + 1)

end A179819

/-! ## A179819.P7542607971360893473

`∑[5*A130196(n+1)]`
-/

namespace A179819.P7542607971360893473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A130196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P7542607971360893473

namespace A179819

/-- `∑[5*A130196(n+1)]` -/
def P7542607971360893473.Spec : Prop :=
  ∀ n, P7542607971360893473.a n = A179819 (n + 1)

end A179819

/-! ## A179819.P11235232933131611232

`∑[A164359(n+1)²+1]`
-/

namespace A179819.P11235232933131611232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164359 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179819.P11235232933131611232

namespace A179819

/-- `∑[A164359(n+1)²+1]` -/
def P11235232933131611232.Spec : Prop :=
  ∀ n, P11235232933131611232.a n = A179819 (n + 1)

end A179819

/-!
# A179820: a(n) = n-th triangular number mod (n+2).

The programs for A179820, the canonical program `A179820.P282302350103610772` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179820 has offset 0).

The definition of A179820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179820.P4943613001957394685

`(n*(n+1)/2)%(n+2)`
-/

namespace A179820.P4943613001957394685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)) (n + 2 : ℤ)

end

end A179820.P4943613001957394685

namespace A179820

/-- `(n*(n+1)/2)%(n+2)` -/
def P4943613001957394685.Spec : Prop :=
  ∀ n, P4943613001957394685.a n = A179820 n

end A179820

/-! ## A179820.P282302350103610772

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179820

/-- `2*a(n-2)-a(n-4)` -/
def P282302350103610772.Spec : Prop :=
  ∀ n, P282302350103610772.a n = A179820 n

theorem P282302350103610772.correct : P282302350103610772.Spec := by
  intro n
  simp only [A179820]

end A179820

/-! ## A179820.P18191529149507640012

`abs(C(n+1, 2)%-(n+2))`
-/

namespace A179820.P18191529149507640012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Nat.choose (n + 1) 2 : ℤ) (-(n + 2 : ℤ))|

end

end A179820.P18191529149507640012

namespace A179820

/-- `abs(C(n+1, 2)%-(n+2))` -/
def P18191529149507640012.Spec : Prop :=
  ∀ n, P18191529149507640012.a n = A179820 n

end A179820

/-! ## A179820.P1865379307535543031

`C(floor(n/2)+2, a(n-1))` with `a(0)=0`
-/

namespace A179820.P1865379307535543031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat (a (n - 1))

end

end A179820.P1865379307535543031

namespace A179820

/-- `C(floor(n/2)+2, a(n-1))` -/
def P1865379307535543031.Spec : Prop :=
  ∀ n, (P1865379307535543031.a n : ℤ) = A179820 n

end A179820

/-! ## A179820.P14754553005935587341

`a(n-2)+(n+1)%2` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A179820.P14754553005935587341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) + (n + 1) % 2

end

end A179820.P14754553005935587341

namespace A179820

/-- `a(n-2)+(n+1)%2` -/
def P14754553005935587341.Spec : Prop :=
  ∀ n, (P14754553005935587341.a n : ℤ) = A179820 n

end A179820

/-! ## A179820.P18344925741032828404

`gcd(2, n)+a(n-2)-1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A179820.P18344925741032828404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (Nat.gcd 2 n : ℤ) + (a (n - 2) - 1)

end

end A179820.P18344925741032828404

namespace A179820

/-- `gcd(2, n)+a(n-2)-1` -/
def P18344925741032828404.Spec : Prop :=
  ∀ n, P18344925741032828404.a n = A179820 n

end A179820

/-! ## A179820.P12013518863547550209

`a(n-2)-(n%2-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A179820.P12013518863547550209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) - (((n % 2 : ℕ) : ℤ) - 1)

end

end A179820.P12013518863547550209

namespace A179820

/-- `a(n-2)-(n%2-1)` -/
def P12013518863547550209.Spec : Prop :=
  ∀ n, P12013518863547550209.a n = A179820 n

end A179820

/-! ## A179820.P14713077882828104895

`a(n-2)+and(1, n+1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A179820.P14713077882828104895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) + Nat.land 1 (n + 1)

end

end A179820.P14713077882828104895

namespace A179820

/-- `a(n-2)+and(1, n+1)` -/
def P14713077882828104895.Spec : Prop :=
  ∀ n, (P14713077882828104895.a n : ℤ) = A179820 n

end A179820

/-! ## A179820.P1555434937074414573

`floor((n+4)/(a(n-1)+1))` with `a(0)=0, a(1)=1`
-/

namespace A179820.P1555434937074414573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n + 4 : ℚ) / (a (n - 1) + 1 : ℚ)⌋

end

end A179820.P1555434937074414573

namespace A179820

/-- `floor((n+4)/(a(n-1)+1))` -/
def P1555434937074414573.Spec : Prop :=
  ∀ n, P1555434937074414573.a n = A179820 n

end A179820

/-! ## A179820.P9133286474769191061

`3-(a(n-1)-floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A179820.P9133286474769191061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (a (n - 1) - ⌊(n : ℚ) / 2⌋)

end

end A179820.P9133286474769191061

namespace A179820

/-- `3-(a(n-1)-floor(n/2))` -/
def P9133286474769191061.Spec : Prop :=
  ∀ n, P9133286474769191061.a n = A179820 n

end A179820

/-! ## A179820.P17443870288661758765

`ceil((n+3)/(2*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A179820.P17443870288661758765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(n + 3 : ℚ) / (2 * a (n - 1) : ℚ)⌉

end

end A179820.P17443870288661758765

namespace A179820

/-- `ceil((n+3)/(2*a(n-1)))` -/
def P17443870288661758765.Spec : Prop :=
  ∀ n, P17443870288661758765.a n = A179820 n

end A179820

/-! ## A179820.P13809270758323988210

`round((n+3)/(2*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A179820.P13809270758323988210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / (2 * a (n - 1) : ℚ))

end

end A179820.P13809270758323988210

namespace A179820

/-- `round((n+3)/(2*a(n-1)))` -/
def P13809270758323988210.Spec : Prop :=
  ∀ n, P13809270758323988210.a n = A179820 n

end A179820

/-! ## A179820.P5586835674973841554

`ceil((n+3)/2)/a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A179820.P5586835674973841554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (⌈(n + 3 : ℚ) / 2⌉ : ℚ) / a (n - 1)

end

end A179820.P5586835674973841554

namespace A179820

/-- `ceil((n+3)/2)/a(n-1)` -/
def P5586835674973841554.Spec : Prop :=
  ∀ n, P5586835674973841554.a n = (A179820 n : ℚ)

end A179820

/-! ## A179820.P3242655695938442935

`C(a(n-2), a(n-1))+1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A179820.P3242655695938442935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  Nat.choose (a (n - 2)) (a (n - 1)) + 1

end

end A179820.P3242655695938442935

namespace A179820

/-- `C(a(n-2), a(n-1))+1` -/
def P3242655695938442935.Spec : Prop :=
  ∀ n, (P3242655695938442935.a n : ℤ) = A179820 n

end A179820

/-! ## A179820.P13974102622768596900

`∑[and(1, n-1)-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A179820.P13974102622768596900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Int.land 1 ((n : ℤ) - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179820.P13974102622768596900

namespace A179820

/-- `∑[and(1, n-1)-a(n-1)]` -/
def P13974102622768596900.Spec : Prop :=
  ∀ n, P13974102622768596900.a n = A179820 n

end A179820

/-! ## A179820.P11299868495091494681

`(n+3)/a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A179820.P11299868495091494681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (n + 3 : ℚ) / a (n - 1) - a (n - 2)

end

end A179820.P11299868495091494681

namespace A179820

/-- `(n+3)/a(n-1)-a(n-2)` -/
def P11299868495091494681.Spec : Prop :=
  ∀ n, P11299868495091494681.a n = (A179820 n : ℚ)

end A179820

/-! ## A179820.P3028126059652610926

`n+3-(∑[a(n-2)²]+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A179820.P3028126059652610926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 3 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1))

end

end A179820.P3028126059652610926

namespace A179820

/-- `n+3-(∑[a(n-2)²]+a(n-1))` -/
def P3028126059652610926.Spec : Prop :=
  ∀ n, P3028126059652610926.a n = A179820 n

end A179820

/-! ## A179820.P383771522018025444

`a(n-2)+a(a(n-2)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A179820.P383771522018025444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n a =>
  a (n - 2) + a (a (n - 2) - a (n - 4))

end

end A179820.P383771522018025444

namespace A179820

/-- `a(n-2)+a(a(n-2)-a(n-4))` -/
def P383771522018025444.Spec : Prop :=
  ∀ n, (P383771522018025444.a n : ℤ) = A179820 n

end A179820

/-! ## A179820.P11696625649980709597

`A171950(A019303(n+1))`
-/

namespace A179820.P11696625649980709597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A019303 (n + 1)).toNat

end

end A179820.P11696625649980709597

namespace A179820

/-- `A171950(A019303(n+1))` -/
def P11696625649980709597.Spec : Prop :=
  ∀ n, P11696625649980709597.a n = A179820 n

end A179820

/-! ## A179820.P10920798478213321426

`A184985(A319702(n+1))`
-/

namespace A179820.P10920798478213321426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A319702 (n + 1)).toNat

end

end A179820.P10920798478213321426

namespace A179820

/-- `A184985(A319702(n+1))` -/
def P10920798478213321426.Spec : Prop :=
  ∀ n, P10920798478213321426.a n = A179820 n

end A179820

/-!
# A179821: In binary representation of n: replace all blocks of k contiguous ones with binary representation of k.

The programs for A179821, there is no canonical definition to state claims against.
-/

/-! ## A179821.P14857612341615237654

`A292272(n)-A292256(n)^A105278(n+1)`
-/

namespace A179821.P14857612341615237654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292272 n : ℚ) - (A292256 n : ℚ) ^ (A105278 (n + 1) : ℤ)

end

end A179821.P14857612341615237654

/-! ## A179821.P4937971228082607181

`and(n, floor(-(n/2)))-∑{e}[A041349(n), 2%#/2]`
-/

namespace A179821.P4937971228082607181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041349 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋ : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((2 % Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 2

end

end A179821.P4937971228082607181

/-! ## A179821.P5765094773790349074

`n-A001222(A000108(and(n, 2*n)))`
-/

namespace A179821.P5765094773790349074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A000108 (Nat.land n (2 * n))).toNat

end

end A179821.P5765094773790349074

/-! ## A179821.P3937882984433168365

`n-A001221(A001764(and(n, 2*n)))`
-/

namespace A179821.P3937882984433168365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (A001764 (Nat.land n (2 * n))).toNat

end

end A179821.P3937882984433168365

/-! ## A179821.P15508044856760456458

`and(n, floor(-(n/2)))-A062977(A335098(n+1))`
-/

namespace A179821.P15508044856760456458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋ - A062977 (A335098 (n + 1)).toNat

end

end A179821.P15508044856760456458

/-!
# A179822: Maximally refined partitions into distinct parts (of any natural number) with largest part n.

The programs for A179822, there is no canonical definition to state claims against.
-/

/-! ## A179822.P7839541201949725702

`abs(Δ[A326080(abs(1-n))])`
-/

namespace A179822.P7839541201949725702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326080 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A179822.P7839541201949725702

/-! ## A179822.P4015816505180895397

`A319635(n)+char[9]`
-/

namespace A179822.P4015816505180895397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319635 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179822.P4015816505180895397

/-! ## A179822.P15465473003666464209

`A351846(3*A116383(n))`
-/

namespace A179822.P15465473003666464209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (3 * A116383 n).toNat

end

end A179822.P15465473003666464209

/-! ## A179822.P9811958330947131846

`A319769(n)-A018794(n)`
-/

namespace A179822.P9811958330947131846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 n - A018794 n

end

end A179822.P9811958330947131846

/-! ## A179822.P11289422062073208664

`A319769(n)-∑[A218470(n)]`
-/

namespace A179822.P11289422062073208664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179822.P11289422062073208664

/-!
# A179823: Denominators in the approximation of sqrt(2) satisfying the recurrence: a(n)= [a(n-1)*a(n-2)+2]/[a(n-1)+a(n-2)] with a(1)=a(2)=1.

The programs for A179823, there is no canonical definition to state claims against.
-/

/-! ## A179823.P955538941278073034

`A000129(A185357(n))`
-/

namespace A179823.P955538941278073034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A185357 n).toNat

end

end A179823.P955538941278073034

/-! ## A179823.P193065550727786207

`A092550(A111314(n))`
-/

namespace A179823.P193065550727786207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A111314 n).toNat

end

end A179823.P193065550727786207

/-! ## A179823.P6339639586859575163

`A092550(A131326(n))`
-/

namespace A179823.P6339639586859575163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A131326 n).toNat

end

end A179823.P6339639586859575163

/-! ## A179823.P5656720046282368356

`A000129(A000045(n+1))`
-/

namespace A179823.P5656720046282368356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A000045 (n + 1)).toNat

end

end A179823.P5656720046282368356

/-! ## A179823.P11896058539298391863

`A135153(A166012(n+1))`
-/

namespace A179823.P11896058539298391863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A166012 (n + 1)).toNat

end

end A179823.P11896058539298391863

/-!
# A179824: Chromatic polynomial of the star graph on 4 vertices (claw graph) and the path graph on 4 vertices.

The programs for A179824, the canonical program `A179824.P9800426675404932041` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179824 has offset 2).

The definition of A179824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179824.P15792061712203447411

`(n+2)*(n+1)^3`
-/

namespace A179824.P15792061712203447411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 1) ^ 3

end

end A179824.P15792061712203447411

namespace A179824

/-- `(n+2)*(n+1)^3` -/
def P15792061712203447411.Spec : Prop :=
  ∀ n, (P15792061712203447411.a n : ℤ) = A179824 (n + 2)

theorem P15792061712203447411.correct : P15792061712203447411.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A179824, Nat.add_sub_cancel, A179824.P15792061712203447411.a, A179824.P9800426675404932041.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A179824, Nat.add_sub_cancel, A179824.P15792061712203447411.a, A179824.P9800426675404932041.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179824

/-! ## A179824.P9800426675404932041

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=24, a(2)=108, a(3)=320, a(4)=750`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179824

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9800426675404932041.Spec : Prop :=
  ∀ n, P9800426675404932041.a n = A179824 (n + 2)

theorem P9800426675404932041.correct : P9800426675404932041.Spec := by
  intro n
  simp only [A179824, Nat.add_sub_cancel]

end A179824

/-! ## A179824.P17946243941747432535

`lcm(n+2, (n+1)^3)`
-/

namespace A179824.P17946243941747432535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((n + 1) ^ 3)

end

end A179824.P17946243941747432535

namespace A179824

/-- `lcm(n+2, (n+1)^3)` -/
def P17946243941747432535.Spec : Prop :=
  ∀ n, (P17946243941747432535.a n : ℤ) = A179824 (n + 2)

end A179824

/-! ## A179824.P4102414529587229937

`floor((n+2)/acot((n+1)^3))`
-/

namespace A179824.P4102414529587229937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ)⌋

end

end A179824.P4102414529587229937

namespace A179824

/-- `floor((n+2)/acot((n+1)^3))` -/
def P4102414529587229937.Spec : Prop :=
  ∀ n, P4102414529587229937.a n = A179824 (n + 2)

end A179824

/-! ## A179824.P16644417274802257257

`(n+1)^3/tan(acot(n+2))`
-/

namespace A179824.P16644417274802257257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 2 : ℝ))

end

end A179824.P16644417274802257257

namespace A179824

/-- `(n+1)^3/tan(acot(n+2))` -/
def P16644417274802257257.Spec : Prop :=
  ∀ n, P16644417274802257257.a n = (A179824 (n + 2) : ℝ)

end A179824

/-! ## A179824.P13471828897123587856

`(n+1)^3/cot(atan(n+2))`
-/

namespace A179824.P13471828897123587856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ))

end

end A179824.P13471828897123587856

namespace A179824

/-- `(n+1)^3/cot(atan(n+2))` -/
def P13471828897123587856.Spec : Prop :=
  ∀ n, P13471828897123587856.a n = (A179824 (n + 2) : ℝ)

end A179824

/-! ## A179824.P14697872961017260340

`record[(1-n)^4]+(n+1)^3`
-/

namespace A179824.P14697872961017260340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 3 : ℤ)

end

end A179824.P14697872961017260340

namespace A179824

/-- `record[(1-n)^4]+(n+1)^3` -/
def P14697872961017260340.Spec : Prop :=
  ∀ n, P14697872961017260340.a n = A179824 (n + 2)

end A179824

/-! ## A179824.P15629922301967665092

`(n+2)/C(n+1, n)^-3`
-/

namespace A179824.P15629922301967665092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.choose (n + 1) n : ℚ) ^ (-3 : ℤ)

end

end A179824.P15629922301967665092

namespace A179824

/-- `(n+2)/C(n+1, n)^-3` -/
def P15629922301967665092.Spec : Prop :=
  ∀ n, P15629922301967665092.a n = (A179824 (n + 2) : ℚ)

end A179824

/-! ## A179824.P3323553147507460724

`Δ[C(n+1, 2)²]+(n+1)²²`
-/

namespace A179824.P3323553147507460724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A179824.P3323553147507460724

namespace A179824

/-- `Δ[C(n+1, 2)²]+(n+1)²²` -/
def P3323553147507460724.Spec : Prop :=
  ∀ n, P3323553147507460724.a n = A179824 (n + 2)

end A179824

/-! ## A179824.P15526913580227427993

`∑[lcm(n+1, Δ[n²]²+n+1)]`
-/

namespace A179824.P15526913580227427993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 + (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179824.P15526913580227427993

namespace A179824

/-- `∑[lcm(n+1, Δ[n²]²+n+1)]` -/
def P15526913580227427993.Spec : Prop :=
  ∀ n, (P15526913580227427993.a n : ℤ) = A179824 (n + 2)

end A179824

/-! ## A179824.P14439646411086360008

`floor((n+1)²*∑[a(n-1)+2])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A179824.P14439646411086360008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179824.P14439646411086360008

namespace A179824

/-- `floor((n+1)²*∑[a(n-1)+2])` -/
def P14439646411086360008.Spec : Prop :=
  ∀ n, (P14439646411086360008.a n : ℤ) = A179824 (n + 2)

end A179824

/-! ## A179824.P2565498670051543700

`floor(∑[a(n-1)+4]*∑[n+1])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A179824.P2565498670051543700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A179824.P2565498670051543700

namespace A179824

/-- `floor(∑[a(n-1)+4]*∑[n+1])` -/
def P2565498670051543700.Spec : Prop :=
  ∀ n, (P2565498670051543700.a n : ℤ) = A179824 (n + 2)

end A179824

/-! ## A179824.P17616588623071850886

`(n+2)*record[(1-n)²²]/(n+1)`
-/

namespace A179824.P17616588623071850886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A179824.P17616588623071850886

namespace A179824

/-- `(n+2)*record[(1-n)²²]/(n+1)` -/
def P17616588623071850886.Spec : Prop :=
  ∀ n, P17616588623071850886.a n = (A179824 (n + 2) : ℚ)

end A179824

/-! ## A179824.P3502792812034656360

`((n+1)*record[sqrt((n-1)*(n-2))])²`
-/

namespace A179824.P3502792812034656360
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) * ((n : ℤ) - 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A179824.P3502792812034656360

namespace A179824

/-- `((n+1)*record[sqrt((n-1)*(n-2))])²` -/
def P3502792812034656360.Spec : Prop :=
  ∀ n, P3502792812034656360.a n = (A179824 (n + 2) : ℝ)

end A179824

/-! ## A179824.P18425116418592888971

`∑[a(n-1)+2]/(n+1)^(-2)` with `a(0)=2`
-/

namespace A179824.P18425116418592888971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A179824.P18425116418592888971

namespace A179824

/-- `∑[a(n-1)+2]/(n+1)^(-2)` -/
def P18425116418592888971.Spec : Prop :=
  ∀ n, P18425116418592888971.a n = (A179824 (n + 2) : ℚ)

end A179824

/-! ## A179824.P17702734565216942426

`(n+1)^3+∑[a(n-1)+2]²` with `a(0)=1`
-/

namespace A179824.P17702734565216942426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179824.P17702734565216942426

namespace A179824

/-- `(n+1)^3+∑[a(n-1)+2]²` -/
def P17702734565216942426.Spec : Prop :=
  ∀ n, (P17702734565216942426.a n : ℤ) = A179824 (n + 2)

end A179824

/-! ## A179824.P11816741933692078167

`lcm(2, (n+2)*(n+1)²²)/(n+1)`
-/

namespace A179824.P11816741933692078167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 2) * ((n + 1) ^ 2) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A179824.P11816741933692078167

namespace A179824

/-- `lcm(2, (n+2)*(n+1)²²)/(n+1)` -/
def P11816741933692078167.Spec : Prop :=
  ∀ n, P11816741933692078167.a n = (A179824 (n + 2) : ℚ)

end A179824

/-! ## A179824.P8078389775017816088

`(n+2)*C(n+1, n)²²/(n+1)`
-/

namespace A179824.P8078389775017816088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.choose (n + 1) n ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A179824.P8078389775017816088

namespace A179824

/-- `(n+2)*C(n+1, n)²²/(n+1)` -/
def P8078389775017816088.Spec : Prop :=
  ∀ n, P8078389775017816088.a n = (A179824 (n + 2) : ℚ)

end A179824

/-! ## A179824.P289115438505831883

`∑[((2*n+1)²+n+1)*C(n+1, n)]`
-/

namespace A179824.P289115438505831883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 + (n + 1)) * Nat.choose (n + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179824.P289115438505831883

namespace A179824

/-- `∑[((2*n+1)²+n+1)*C(n+1, n)]` -/
def P289115438505831883.Spec : Prop :=
  ∀ n, (P289115438505831883.a n : ℤ) = A179824 (n + 2)

end A179824

/-! ## A179824.P9712684996524523916

`a(n-1)+((2*n+1)²+n+1)*(n+1)` with `a(0)=2`
-/

namespace A179824.P9712684996524523916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2 + (n + 1)) * (n + 1)

end

end A179824.P9712684996524523916

namespace A179824

/-- `a(n-1)+((2*n+1)²+n+1)*(n+1)` -/
def P9712684996524523916.Spec : Prop :=
  ∀ n, (P9712684996524523916.a n : ℤ) = A179824 (n + 2)

end A179824

/-!
# A179825: Multiples of 6 which are not the sum of a pair of twin primes.

The programs for A179825, there is no canonical definition to state claims against.
-/

/-! ## A179825.P4903274379141075736

`A321221(n+2)+2`
-/

namespace A179825.P4903274379141075736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321221 (n + 2) + 2

end

end A179825.P4903274379141075736

/-! ## A179825.P9978425999858697775

`2*A072254(n+2)`
-/

namespace A179825.P9978425999858697775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072254 (n + 2)

end

end A179825.P9978425999858697775

/-! ## A179825.P10539026508966244977

`A007534(3*n+4)`
-/

namespace A179825.P10539026508966244977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007534 (3 * n + 4)

end

end A179825.P10539026508966244977

/-! ## A179825.P12623710269611092667

`6*A243956(n+2)`
-/

namespace A179825.P12623710269611092667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A243956 (n + 2)

end

end A179825.P12623710269611092667

/-! ## A179825.P14716592369077755613

`A051345(3*(n+2))-3`
-/

namespace A179825.P14716592369077755613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (3 * (n + 2)) - 3

end

end A179825.P14716592369077755613

/-!
# A179826: Primes that can be obtained from composite numbers by interchanging the first and last digits.

The programs for A179826, there is no canonical definition to state claims against.
-/

/-! ## A179826.P14125188942617240617

`A004086(A076055(n+1))`
-/

namespace A179826.P14125188942617240617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A076055 (n + 1)).toNat

end

end A179826.P14125188942617240617

/-! ## A179826.P15945688586508093567

`p?[A004086(A002808(n+1))]`
-/

namespace A179826.P15945688586508093567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P15945688586508093567

/-! ## A179826.P2681988232163012353

`p?[A004086(A005451(n+1))]`
-/

namespace A179826.P2681988232163012353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A005451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P2681988232163012353

/-! ## A179826.P3131874591428765616

`p?[A004086(A007935(n+1))]`
-/

namespace A179826.P3131874591428765616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007935 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P3131874591428765616

/-! ## A179826.P3551737599621815291

`p?[A004086(A018252(n+1))]`
-/

namespace A179826.P3551737599621815291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P3551737599621815291

/-! ## A179826.P1693865320617026535

`p?[A004086(A056653(n+1))]`
-/

namespace A179826.P1693865320617026535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P1693865320617026535

/-! ## A179826.P2787051383682046769

`p?[A004086(A061365(n+1))]`
-/

namespace A179826.P2787051383682046769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A061365 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P2787051383682046769

/-! ## A179826.P327500985189739983

`p?[A004086(n)-A055671(n)]`
-/

namespace A179826.P327500985189739983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P327500985189739983

/-! ## A179826.P4823330644255959535

`p?[A004086(n+1)-C(A020639(n+1), n)]`
-/

namespace A179826.P4823330644255959535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) - (Nat.choose (A020639 (n + 1)).toNat n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P4823330644255959535

/-! ## A179826.P11168687632687611987

`p?[A056964(A018252(n+2))-A018252(n+2)]`
-/

namespace A179826.P11168687632687611987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A018252 (n + 2)).toNat - A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179826.P11168687632687611987

/-!
# A179827: Modulo 2 sum of A179761 and A179762.

The programs for A179827, there is no canonical definition to state claims against.
-/

/-! ## A179827.P9613163329180306307

`xor(A179761(n+1), A179762(n+1))`
-/

namespace A179827.P9613163329180306307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179761 (n + 1)) (A179762 (n + 1))

end

end A179827.P9613163329180306307

/-! ## A179827.P106758706119841150

`xor(A179828(n+1), A179829(n+1))`
-/

namespace A179827.P106758706119841150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179828 (n + 1)) (A179829 (n + 1))

end

end A179827.P106758706119841150

/-! ## A179827.P4850879700451628442

`(A179761(n+1)-A179762(n+1))^A014486(n+1)`
-/

namespace A179827.P4850879700451628442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179762 (n + 1) : ℚ) ^ (A014486 (n + 1) : ℤ)

end

end A179827.P4850879700451628442

/-! ## A179827.P9160788586648627518

`(A179761(n+1)-A179762(n+1))^A078637(n+1)`
-/

namespace A179827.P9160788586648627518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179762 (n + 1) : ℚ) ^ (A078637 (n + 1) : ℤ)

end

end A179827.P9160788586648627518

/-! ## A179827.P17844846988500191461

`(A179761(n+1)-A179762(n+1))^A209647(n+1)`
-/

namespace A179827.P17844846988500191461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179762 (n + 1) : ℚ) ^ (A209647 (n + 1) : ℤ)

end

end A179827.P17844846988500191461

/-! ## A179827.P9905657214718234691

`(A179828(n+1)-A179829(n+1))^A179824(n+2)`
-/

namespace A179827.P9905657214718234691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179828 (n + 1) - A179829 (n + 1) : ℚ) ^ (A179824 (n + 2) : ℤ)

end

end A179827.P9905657214718234691

/-! ## A179827.P1882794101966687730

`(A179761(n+1)-A179762(n+1))^A122245(n+1)`
-/

namespace A179827.P1882794101966687730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179762 (n + 1) : ℚ) ^ (A122245 (n + 1) : ℤ)

end

end A179827.P1882794101966687730

/-! ## A179827.P15963915929284283319

`(A179761(n+1)-A179762(n+1))^A179757(n+1)`
-/

namespace A179827.P15963915929284283319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179762 (n + 1) : ℚ) ^ (A179757 (n + 1) : ℤ)

end

end A179827.P15963915929284283319

/-!
# A179828: Modulo 2 sum of A179761 and A179763.

The programs for A179828, there is no canonical definition to state claims against.
-/

/-! ## A179828.P9479583757707858885

`xor(A179761(n+1), A179763(n+1))`
-/

namespace A179828.P9479583757707858885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179761 (n + 1)) (A179763 (n + 1))

end

end A179828.P9479583757707858885

/-! ## A179828.P656063433808134172

`xor(A179827(n+1), A179829(n+1))`
-/

namespace A179828.P656063433808134172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179827 (n + 1)) (A179829 (n + 1))

end

end A179828.P656063433808134172

/-! ## A179828.P8745601460631451556

`lcm(A179761(n+1)-A179763(n+1), A033999(n))`
-/

namespace A179828.P8745601460631451556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179761 (n + 1) - A179763 (n + 1)) (A033999 n)

end

end A179828.P8745601460631451556

/-! ## A179828.P3705675373927577892

`and(A179763(n+1)+A179761(n+1), A060886(n))`
-/

namespace A179828.P3705675373927577892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179763 (n + 1) + A179761 (n + 1)) (A060886 n)

end

end A179828.P3705675373927577892

/-! ## A179828.P12279984339667697623

`and(A179761(n+1)-A179763(n+1), A054977(n))`
-/

namespace A179828.P12279984339667697623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179761 (n + 1) - A179763 (n + 1)) (A054977 n)

end

end A179828.P12279984339667697623

/-! ## A179828.P2190396799264909451

`(A179763(n+1)-A179761(n+1))^A000010(n+1)`
-/

namespace A179828.P2190396799264909451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179763 (n + 1) - A179761 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A179828.P2190396799264909451

/-! ## A179828.P5729578742348937213

`(A179761(n+1)-A179763(n+1))^A014486(n+1)`
-/

namespace A179828.P5729578742348937213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179763 (n + 1) : ℚ) ^ (A014486 (n + 1) : ℤ)

end

end A179828.P5729578742348937213

/-!
# A179829: Modulo 2 sum of A179762 and A179763.

The programs for A179829, there is no canonical definition to state claims against.
-/

/-! ## A179829.P2100327614260187128

`xor(A179762(n+1), A179763(n+1))`
-/

namespace A179829.P2100327614260187128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179762 (n + 1)) (A179763 (n + 1))

end

end A179829.P2100327614260187128

/-! ## A179829.P8282707128976008168

`xor(A179827(n+1), A179828(n+1))`
-/

namespace A179829.P8282707128976008168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179827 (n + 1)) (A179828 (n + 1))

end

end A179829.P8282707128976008168

/-! ## A179829.P8514790127689628134

`(A179762(A000027(n+1))-A179763(n+1))²`
-/

namespace A179829.P8514790127689628134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179762 (A000027 (n + 1)).toNat - A179763 (n + 1)) ^ 2

end

end A179829.P8514790127689628134

/-! ## A179829.P6245486855315685498

`lcm(A179762(n+1)-A179763(n+1), A033999(n))`
-/

namespace A179829.P6245486855315685498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179762 (n + 1) - A179763 (n + 1)) (A033999 n)

end

end A179829.P6245486855315685498

/-! ## A179829.P14537024473706194227

`and(A179763(n+1)+A179762(n+1), A057427(n))`
-/

namespace A179829.P14537024473706194227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179763 (n + 1) + A179762 (n + 1)) (A057427 n)

end

end A179829.P14537024473706194227

/-! ## A179829.P10513320705270118831

`(A179762(n+1)-A179763(n+1))^A014486(n+1)`
-/

namespace A179829.P10513320705270118831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179762 (n + 1) - A179763 (n + 1) : ℚ) ^ (A014486 (n + 1) : ℤ)

end

end A179829.P10513320705270118831

/-! ## A179829.P8969942938549824448

`(A179827(n+1)-A179828(n+1))^A179824(n+2)`
-/

namespace A179829.P8969942938549824448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179827 (n + 1) - A179828 (n + 1) : ℚ) ^ (A179824 (n + 2) : ℤ)

end

end A179829.P8969942938549824448

/-! ## A179829.P7044720072481865517

`(A179827(n+1)-A179828(n+1))^A315949(n)`
-/

namespace A179829.P7044720072481865517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179827 (n + 1) - A179828 (n + 1) : ℚ) ^ (A315949 n : ℤ)

end

end A179829.P7044720072481865517

/-!
# A179830: The first central column of triangle A179757, i.e., A179763(1), A179763(8), A179763(17), A179763(28), ...

The programs for A179830, there is no canonical definition to state claims against.
-/

/-! ## A179830.P15489640559371878575

`A179763(A028884(n))`
-/

namespace A179830.P15489640559371878575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 (A028884 n).toNat

end

end A179830.P15489640559371878575

/-! ## A179830.P11925391505613347017

`A179763((n+3)²-8)`
-/

namespace A179830.P11925391505613347017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 ((n + 3) ^ 2 - 8)

end

end A179830.P11925391505613347017

/-! ## A179830.P12427316758970579546

`A396981(∑{e}[A258349(n), #])`
-/

namespace A179830.P12427316758970579546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396981 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A179830.P12427316758970579546

/-! ## A179830.P6608084031483752631

`A167021(A258367(n+2)*A345912(n+1))`
-/

namespace A179830.P6608084031483752631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167021 (A258367 (n + 2) * A345912 (n + 1)).toNat

end

end A179830.P6608084031483752631

/-! ## A179830.P2824860117361326841

`A260390(A289436(3*n+2)+A027197(3*n+5))`
-/

namespace A179830.P2824860117361326841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A289436 (3 * n + 2) + A027197 (3 * n + 5)).toNat

end

end A179830.P2824860117361326841

/-!
# A179831: Quadrisection of the fourth central column of triangle A122242, a(n) = A179830((4*n)+1).

The programs for A179831, there is no canonical definition to state claims against.
-/

/-! ## A179831.P4933700524473082829

`A179830(4*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179831.P4933700524473082829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179830 (4 * (n + 1) + 1)

end

end A179831.P4933700524473082829

/-! ## A179831.P804727371223846447

`char[A179832(n+1)-1]`
-/

namespace A179831.P804727371223846447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179831.P804727371223846447

/-! ## A179831.P8375899129983168709

`char[A233583(A179832(n+1))]`
-/

namespace A179831.P8375899129983168709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A179832 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179831.P8375899129983168709

/-! ## A179831.P18159101347535156863

`char[∑[A179833(A028310(n))]+1]`
-/

namespace A179831.P18159101347535156863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179833 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179831.P18159101347535156863

/-! ## A179831.P5337845168812472767

`char[A328384(A005384(n+1))+A179832(n+1)]`
-/

namespace A179831.P5337845168812472767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A005384 (n + 1)).toNat + A179832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179831.P5337845168812472767

/-! ## A179831.P2397220908466408476

`A179762(A016825(∑[8*(n+1)])-5)`
-/

namespace A179831.P2397220908466408476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j) - 5).toNat

end

end A179831.P2397220908466408476

/-!
# A179832: Position of ones in A179831.

The programs for A179832, there is no canonical definition to state claims against.
-/

/-! ## A179832.P14093998156172612272

`A179833(n)+a(n-1)` with `a(0)=5`
-/

namespace A179832.P14093998156172612272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A179833 n + a (n - 1)

end

end A179832.P14093998156172612272

/-! ## A179832.P5979794217225952275

`∑[A179833(floor(acot(n)+n))]+2`
-/

namespace A179832.P5979794217225952275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179833 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A179832.P5979794217225952275

/-! ## A179832.P3209039560678745737

`∑[A179833(round(sqrt(n²+1)))]+2`
-/

namespace A179832.P3209039560678745737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179833 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A179832.P3209039560678745737

/-! ## A179832.P11645159942173566467

`2+∑[A179833(A028310(n))]`
-/

namespace A179832.P11645159942173566467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179833 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179832.P11645159942173566467

/-! ## A179832.P15347419360701986190

`filter[n+1, A179831(#)]`
-/

namespace A179832.P15347419360701986190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179831 (f1 j) = 1) n)

end

end A179832.P15347419360701986190

/-! ## A179832.P2451386072889436827

`lt[0, A179831(n+1)]+1`
-/

namespace A179832.P2451386072889436827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A179832.P2451386072889436827

/-! ## A179832.P10596599675367228511

`record[(n+5)*A179831(n+5)]`
-/

namespace A179832.P10596599675367228511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A179831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179832.P10596599675367228511

/-! ## A179832.P5456964271996157101

`lt[0, A179831(A028310(n))]`
-/

namespace A179832.P5456964271996157101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A179832.P5456964271996157101

/-! ## A179832.P3942820426441824163

`eq[1, A179831(A233583(n+1))]`
-/

namespace A179832.P3942820426441824163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179832.P3942820426441824163

/-! ## A179832.P6420971471750172225

`eq[1, A179831(A065033(2*n))]`
-/

namespace A179832.P6420971471750172225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179832.P6420971471750172225

/-! ## A179832.P8979097898565577323

`eq[1, A179831(A000007(n)+n)]`
-/

namespace A179832.P8979097898565577323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179832.P8979097898565577323

/-! ## A179832.P7226026454750046148

`eq[1, A179831(A008619(A004273(n)))]`
-/

namespace A179832.P7226026454750046148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179832.P7226026454750046148

/-! ## A179832.P14723480080843610647

`eq[A057427(n), A179830(A016813(n))]`
-/

namespace A179832.P14723480080843610647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179830 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179832.P14723480080843610647

/-!
# A179833: First differences of A179832.

The programs for A179833, there is no canonical definition to state claims against.
-/

/-! ## A179833.P3366644656250873859

`A179832(n+2)-A179832(n+1)`
-/

namespace A179833.P3366644656250873859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (n + 2) - A179832 (n + 1)

end

end A179833.P3366644656250873859

/-! ## A179833.P1477180364354554726

`Δ[A179832(n+1)]`
-/

namespace A179833.P1477180364354554726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179833.P1477180364354554726

/-! ## A179833.P3732108986267598411

`Δ[record[A179832(A102885(n))]]`
-/

namespace A179833.P3732108986267598411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179833.P3732108986267598411

/-! ## A179833.P6418935111820543242

`Δ[record[A179832(A323889(n))]]`
-/

namespace A179833.P6418935111820543242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179833.P6418935111820543242

/-! ## A179833.P17508594554190277320

`Δ[record[A179832(A328399(n))]]`
-/

namespace A179833.P17508594554190277320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179833.P17508594554190277320

/-! ## A179833.P14020946904185497037

`Δ[record[A179832(A344180(n))]]`
-/

namespace A179833.P14020946904185497037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179833.P14020946904185497037

/-! ## A179833.P7654056885354815513

`A004907(A179832(n+2)%A179832(n+1)+1)`
-/

namespace A179833.P7654056885354815513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (Int.tmod (A179832 (n + 2)) (A179832 (n + 1)) + 1).toNat

end

end A179833.P7654056885354815513

/-! ## A179833.P13542488603104882924

`Δ[lt[0, A179831(n+1)]]`
-/

namespace A179833.P13542488603104882924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179833.P13542488603104882924

/-!
# A179834: Position of zeros in A179831. Complement of A179832.

The programs for A179834, there is no canonical definition to state claims against.
-/

/-! ## A179834.P1499611206285577370

`eq[0, A179831(n+1)]+1`
-/

namespace A179834.P1499611206285577370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179834.P1499611206285577370

/-! ## A179834.P17876187965492040431

`comp[A179832(n+1)-1]+1`
-/

namespace A179834.P17876187965492040431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179832 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179834.P17876187965492040431

/-! ## A179834.P4242991438433424291

`comp[A179832(a(floor(n/7))+n%7)]` with `a(0)=0`
-/

namespace A179834.P4242991438433424291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A179832 (f1 ⌊(n : ℚ) / 7⌋.toNat + ((n % 7 : ℕ) : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179834.P4242991438433424291

/-! ## A179834.P13181869674325623165

`lt[2*A179831(abs(1-n)+2), 1]+1`
-/

namespace A179834.P13181869674325623165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179831 (|1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179834.P13181869674325623165

/-! ## A179834.P800128195119350748

`eq[0, A179830(A016813(n))]`
-/

namespace A179834.P800128195119350748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179830 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179834.P800128195119350748

/-! ## A179834.P6004982968037004937

`eq[0, A179830(A004767(n)-2)]`
-/

namespace A179834.P6004982968037004937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179830 (A004767 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179834.P6004982968037004937

/-! ## A179834.P13632268023280214984

`eq[0, A179830(A005408(2*n))]`
-/

namespace A179834.P13632268023280214984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179830 (A005408 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179834.P13632268023280214984

/-! ## A179834.P16863299782230828844

`lt[n*A179831(A028310(n)), n]`
-/

namespace A179834.P16863299782230828844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A179831 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179834.P16863299782230828844

/-! ## A179834.P4762348433851442671

`record[(1-A179831(n+1))*A000027(n+1)]`
-/

namespace A179834.P4762348433851442671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A179831 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P4762348433851442671

/-! ## A179834.P14365337652350184288

`record[n+1-A000196(n)*A179831(n+1)]`
-/

namespace A179834.P14365337652350184288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000196 n * A179831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P14365337652350184288

/-! ## A179834.P15009657845719908472

`record[n+1-A000290(n)*A179831(n+1)]`
-/

namespace A179834.P15009657845719908472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 n * A179831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P15009657845719908472

/-! ## A179834.P16052173755676593209

`record[n+1-A005894(n)*A179831(n+1)]`
-/

namespace A179834.P16052173755676593209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005894 n * A179831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P16052173755676593209

/-! ## A179834.P1494895219213848108

`record[n+1-A016793(n)*A179831(n+1)]`
-/

namespace A179834.P1494895219213848108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A016793 n * A179831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P1494895219213848108

/-! ## A179834.P3448063124107610362

`record[n+1-A052928(n)*A179831(n+1)]`
-/

namespace A179834.P3448063124107610362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052928 n * A179831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P3448063124107610362

/-! ## A179834.P6979231707430968662

`record[n+1-A130952(n*A179831(n+1))]`
-/

namespace A179834.P6979231707430968662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A130952 ((n : ℤ) * A179831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P6979231707430968662

/-! ## A179834.P4680327493950772759

`record[n+1-A179831(n+1)*A191413(n)]`
-/

namespace A179834.P4680327493950772759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A179831 (n + 1) * A191413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P4680327493950772759

/-! ## A179834.P7649876776841512475

`record[n+1-A000265(n+2)*A179831(n+1)]`
-/

namespace A179834.P7649876776841512475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000265 (n + 2) * A179831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179834.P7649876776841512475

/-!
# A179837: Triangle T(n,k) read by rows: the coefficient [x^k] of Product_{s=1..n} (x+16*cos(s*Pi/(2n+1))^4), 0<=k<=n.

The programs for A179837, there is no canonical definition to state claims against.
-/

/-! ## A179837.P1566947207955943070

`A114188(A245300(n)+A002262(n))`
-/

namespace A179837.P1566947207955943070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A245300 n + A002262 n).toNat

end

end A179837.P1566947207955943070

/-!
# A179838: Triangle T(n,k) read by rows: the coefficient [x^k] of the product_{s=1..n} (x+64*cos(s*Pi/(2n+1))^6), 0<=k<=n.

The programs for A179838, there is no canonical definition to state claims against.
-/

/-! ## A179838.P6848838039226824543

`A094518(A010842(n))+1`
-/

namespace A179838.P6848838039226824543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (A010842 n).toNat + 1

end

end A179838.P6848838039226824543

/-! ## A179838.P2741832743153500236

`A112596(A217510(n+1))`
-/

namespace A179838.P2741832743153500236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112596 (A217510 (n + 1)).toNat

end

end A179838.P2741832743153500236

/-! ## A179838.P2607574249938226166

`A333375(A303489(n+1))`
-/

namespace A179838.P2607574249938226166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333375 (A303489 (n + 1)).toNat

end

end A179838.P2607574249938226166

/-! ## A179838.P6965822013024512763

`A263188(A271407(n+2))`
-/

namespace A179838.P6965822013024512763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263188 (A271407 (n + 2)).toNat

end

end A179838.P6965822013024512763

/-!
# A179839: Semiprimes p*q with p < q and 2^p (mod q) == 2^q (mod p).

The programs for A179839, there is no canonical definition to state claims against.
-/

/-! ## A179839.P3625769891438134528

`filter[A179707(n+1), A008966(#)]`
-/

namespace A179839.P3625769891438134528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A179839.P3625769891438134528

/-! ## A179839.P16956316509160396065

`filter[A179707(n+1), A324903(#)]`
-/

namespace A179839.P16956316509160396065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A179839.P16956316509160396065

/-! ## A179839.P14612188936000388912

`filter[A179707(n+1), A049240(#)]`
-/

namespace A179839.P14612188936000388912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A179839.P14612188936000388912

/-! ## A179839.P9983192072555042030

`filter[A179707(n+1), A181183(#)]`
-/

namespace A179839.P9983192072555042030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A179839.P9983192072555042030

/-! ## A179839.P746095312016477426

`filter[A179707(n+1), A262684(#)]`
-/

namespace A179839.P746095312016477426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A179839.P746095312016477426

/-!
# A179840: a(n) = A179751(A080068(n)).

The programs for A179840, there is no canonical definition to state claims against.
-/

/-! ## A179840.P7030293130655258031

`A001222(lcm(A005417(n), A309492(n+1)))`
-/

namespace A179840.P7030293130655258031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A005417 n) (A309492 (n + 1)))

end

end A179840.P7030293130655258031

/-! ## A179840.P11760777554948625205

`A117498(record[A329899(n+1)+A215086(n)])`
-/

namespace A179840.P11760777554948625205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1) + A215086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179840.P11760777554948625205

/-!
# A179841: a(n) = A179751(A122241(n)).

The programs for A179841, there is no canonical definition to state claims against.
-/

/-! ## A179841.P16384678351161752559

`A001222(lcm(A325445(2*n+1), A325450(n+1)))`
-/

namespace A179841.P16384678351161752559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A325445 (2 * n + 1)) (A325450 (n + 1)))

end

end A179841.P16384678351161752559

/-! ## A179841.P12804834694221572451

`A255616(n)%A255392(n+1)+comp[∑[n]]-n`
-/

namespace A179841.P12804834694221572451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255616 n) (A255392 (n + 1)) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A179841.P12804834694221572451

/-! ## A179841.P10366891717279212855

`A273712(n)+A000267(A077168(n))`
-/

namespace A179841.P10366891717279212855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273712 n + A000267 (A077168 n).toNat

end

end A179841.P10366891717279212855

/-! ## A179841.P16001297310405648471

`A000193(A293404(n+3)+A280836(n))`
-/

namespace A179841.P16001297310405648471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A293404 (n + 3) + A280836 n).toNat

end

end A179841.P16001297310405648471

/-! ## A179841.P15089669036406376720

`A325282(A269303(n+3))+A276837(n)`
-/

namespace A179841.P15089669036406376720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 (A269303 (n + 3)).toNat + A276837 n

end

end A179841.P15089669036406376720

/-!
# A179848: Expansion of series reversion of generating function for triangular numbers.

The programs for A179848, the canonical program `A179848.P18196075278690951285` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179848 has offset 0).

The definition of A179848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179848.P7085484554882509584

`ceil(tan(n*atan(n)))*A001764(n)`
-/

namespace A179848.P7085484554882509584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan ((n : ℝ) * Real.arctan (n : ℝ))⌉ * A001764 n

end

end A179848.P7085484554882509584

namespace A179848

/-- `ceil(tan(n*atan(n)))*A001764(n)` -/
def P7085484554882509584.Spec : Prop :=
  ∀ n, P7085484554882509584.a n = A179848 n

end A179848

/-! ## A179848.P18196075278690951285

`A001764(n)*A062157(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179848

/-- `A001764(n)*A062157(n)` -/
def P18196075278690951285.Spec : Prop :=
  ∀ n, P18196075278690951285.a n = A179848 n

theorem P18196075278690951285.correct : P18196075278690951285.Spec := by
  intro n
  simp only [A179848]

end A179848

/-! ## A179848.P914742214544238208

`(A014681(n)-n)*A001764(n)`
-/

namespace A179848.P914742214544238208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A001764 n

end

end A179848.P914742214544238208

namespace A179848

/-- `(A014681(n)-n)*A001764(n)` -/
def P914742214544238208.Spec : Prop :=
  ∀ n, P914742214544238208.a n = A179848 n

end A179848

/-! ## A179848.P14381651625813826037

`A001764(n)*A257628(A000326(n))`
-/

namespace A179848.P14381651625813826037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A257628 (A000326 n).toNat

end

end A179848.P14381651625813826037

namespace A179848

/-- `A001764(n)*A257628(A000326(n))` -/
def P14381651625813826037.Spec : Prop :=
  ∀ n, P14381651625813826037.a n = A179848 n

end A179848

/-! ## A179848.P1652077609592743392

`A001764(n)*A056594(A005897(n))`
-/

namespace A179848.P1652077609592743392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A056594 (A005897 n).toNat

end

end A179848.P1652077609592743392

namespace A179848

/-- `A001764(n)*A056594(A005897(n))` -/
def P1652077609592743392.Spec : Prop :=
  ∀ n, P1652077609592743392.a n = A179848 n

end A179848

/-!
# A179849: Sum of prime p and next prime after p is divisible by 7.

The programs for A179849, there is no canonical definition to state claims against.
-/

/-! ## A179849.P4666930439037475784

`A007917(7*A165298(n+1))`
-/

namespace A179849.P4666930439037475784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (7 * A165298 (n + 1)).toNat

end

end A179849.P4666930439037475784

/-! ## A179849.P15890131256674190025

`A033558(7*A165298(n+1))`
-/

namespace A179849.P15890131256674190025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (7 * A165298 (n + 1)).toNat

end

end A179849.P15890131256674190025

/-! ## A179849.P16070380348241972492

`A051698(7*A165298(n+1))`
-/

namespace A179849.P16070380348241972492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (7 * A165298 (n + 1)).toNat

end

end A179849.P16070380348241972492

/-! ## A179849.P16134540638017474346

`A136548(7*A165298(n+1))`
-/

namespace A179849.P16134540638017474346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (7 * A165298 (n + 1)).toNat

end

end A179849.P16134540638017474346

/-!
# A179850: Characteristic function of numbers that are congruent to {0, 1, 3, 4} mod 5.

The programs for A179850, the canonical program `A179850.P949052103344405119` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179850 has offset 0).

The definition of A179850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179850.P949052103344405119

`A011558(n+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179850

/-- `A011558(n+3)` -/
def P949052103344405119.Spec : Prop :=
  ∀ n, P949052103344405119.a n = A179850 n

theorem P949052103344405119.correct : P949052103344405119.Spec := by
  intro n
  simp only [A179850]

end A179850

/-!
# A179853: E.g.f. A(x) = Sum_{n>=0} a(n)*x^(3n)/(3n)!.

The programs for A179853, the canonical program `A179853.P3502873839291269484` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179853 has offset 0).

The definition of A179853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179853.P3502873839291269484

`(n+1)^(n-1)*(3*n)!/n!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179853

/-- `(n+1)^(n-1)*(3*n)!/n!` -/
def P3502873839291269484.Spec : Prop :=
  ∀ n, P3502873839291269484.a n = (A179853 n : ℚ)

end A179853

/-!
# A179854: Number of 0's (mod 3) in the binary expansion of n.

The programs for A179854, the canonical program `A179854.P10887870219697870064` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179854 has offset 1).

The definition of A179854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179854.P10887870219697870064

`(a(floor((n-1)/2))+n%2)%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179854

/-- `(a(floor((n-1)/2))+n%2)%3` -/
def P10887870219697870064.Spec : Prop :=
  ∀ n, (P10887870219697870064.a n : ℤ) = A179854 (n + 1)

theorem P10887870219697870064.correct : P10887870219697870064.Spec := by
  intro n
  simp only [A179854, Nat.add_sub_cancel]

end A179854

/-! ## A179854.P6952973708860369025

`(floor(log2(n+1))-(n-∑[val(n+1, 2)]))%3`
-/

namespace A179854.P6952973708860369025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.log 2 (n + 1) : ℤ) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))) 3

end

end A179854.P6952973708860369025

namespace A179854

/-- `(floor(log2(n+1))-(n-∑[val(n+1, 2)]))%3` -/
def P6952973708860369025.Spec : Prop :=
  ∀ n, P6952973708860369025.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P13299705872353416493

`∑[4*a(ceil(n/2)-1)-a(n-1)]%3` with `a(0)=0, a(1)=1`
-/

namespace A179854.P13299705872353416493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 * f1 (⌈(n : ℚ) / 2⌉ - 1).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A179854.P13299705872353416493

namespace A179854

/-- `∑[4*a(ceil(n/2)-1)-a(n-1)]%3` -/
def P13299705872353416493.Spec : Prop :=
  ∀ n, P13299705872353416493.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P11820621750021808185

`Δ[A059015(n)]%3`
-/

namespace A179854.P11820621750021808185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A179854.P11820621750021808185

namespace A179854

/-- `Δ[A059015(n)]%3` -/
def P11820621750021808185.Spec : Prop :=
  ∀ n, P11820621750021808185.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P4208822190260937588

`A023416(n+1)%3`
-/

namespace A179854.P4208822190260937588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (n + 1)) 3

end

end A179854.P4208822190260937588

namespace A179854

/-- `A023416(n+1)%3` -/
def P4208822190260937588.Spec : Prop :=
  ∀ n, P4208822190260937588.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P15006001396919631491

`A080791(n+1)%3`
-/

namespace A179854.P15006001396919631491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080791 (n + 1)) 3

end

end A179854.P15006001396919631491

namespace A179854

/-- `A080791(n+1)%3` -/
def P15006001396919631491.Spec : Prop :=
  ∀ n, P15006001396919631491.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P5776072277831301634

`A256078(n+1)%3`
-/

namespace A179854.P5776072277831301634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256078 (n + 1)) 3

end

end A179854.P5776072277831301634

namespace A179854

/-- `A256078(n+1)%3` -/
def P5776072277831301634.Spec : Prop :=
  ∀ n, P5776072277831301634.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P11883353044126135043

`∑[A135560(n+1)+1]%3`
-/

namespace A179854.P11883353044126135043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A179854.P11883353044126135043

namespace A179854

/-- `∑[A135560(n+1)+1]%3` -/
def P11883353044126135043.Spec : Prop :=
  ∀ n, P11883353044126135043.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P10872093008578675158

`A010872(Δ[A059015(n)])`
-/

namespace A179854.P10872093008578675158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (f1 (n + 1) - f1 n).toNat

end

end A179854.P10872093008578675158

namespace A179854

/-- `A010872(Δ[A059015(n)])` -/
def P10872093008578675158.Spec : Prop :=
  ∀ n, P10872093008578675158.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P5672715831265315992

`A010872(A023416(n+1))`
-/

namespace A179854.P5672715831265315992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A023416 (n + 1)).toNat

end

end A179854.P5672715831265315992

namespace A179854

/-- `A010872(A023416(n+1))` -/
def P5672715831265315992.Spec : Prop :=
  ∀ n, P5672715831265315992.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P16115514970780861391

`A010872(A080791(n+1))`
-/

namespace A179854.P16115514970780861391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A080791 (n + 1)).toNat

end

end A179854.P16115514970780861391

namespace A179854

/-- `A010872(A080791(n+1))` -/
def P16115514970780861391.Spec : Prop :=
  ∀ n, P16115514970780861391.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P5010246141904476589

`A071858(A035327(n+1))`
-/

namespace A179854.P5010246141904476589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A035327 (n + 1)).toNat

end

end A179854.P5010246141904476589

namespace A179854

/-- `A071858(A035327(n+1))` -/
def P5010246141904476589.Spec : Prop :=
  ∀ n, P5010246141904476589.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P14248397503299323564

`A053879(A115378(n+1))`
-/

namespace A179854.P14248397503299323564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053879 (A115378 (n + 1)).toNat

end

end A179854.P14248397503299323564

namespace A179854

/-- `A053879(A115378(n+1))` -/
def P14248397503299323564.Spec : Prop :=
  ∀ n, P14248397503299323564.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P7136686474575500794

`A101650(A073137(n+1))`
-/

namespace A179854.P7136686474575500794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A073137 (n + 1)).toNat

end

end A179854.P7136686474575500794

namespace A179854

/-- `A101650(A073137(n+1))` -/
def P7136686474575500794.Spec : Prop :=
  ∀ n, P7136686474575500794.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P6934602070916562738

`A230630(A135540(n+1))`
-/

namespace A179854.P6934602070916562738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230630 (A135540 (n + 1)).toNat

end

end A179854.P6934602070916562738

namespace A179854

/-- `A230630(A135540(n+1))` -/
def P6934602070916562738.Spec : Prop :=
  ∀ n, P6934602070916562738.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P14232986911648095781

`A230629(A175946(n+1))`
-/

namespace A179854.P14232986911648095781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230629 (A175946 (n + 1)).toNat

end

end A179854.P14232986911648095781

namespace A179854

/-- `A230629(A175946(n+1))` -/
def P14232986911648095781.Spec : Prop :=
  ∀ n, P14232986911648095781.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P5310445675876680601

`A071858(A036044(n+1)/2)`
-/

namespace A179854.P5310445675876680601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (SequenceMachineLib.roundAway ((A036044 (n + 1) : ℚ) / 2)).toNat

end

end A179854.P5310445675876680601

namespace A179854

/-- `A071858(A036044(n+1)/2)` -/
def P5310445675876680601.Spec : Prop :=
  ∀ n, P5310445675876680601.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P9496054400711356015

`Δ[A181132(n)]%3`
-/

namespace A179854.P9496054400711356015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A179854.P9496054400711356015

namespace A179854

/-- `Δ[A181132(n)]%3` -/
def P9496054400711356015.Spec : Prop :=
  ∀ n, P9496054400711356015.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P10192070306637426314

`log2(A080100(n+1))%3`
-/

namespace A179854.P10192070306637426314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A080100 (n + 1) : ℝ))) 3

end

end A179854.P10192070306637426314

namespace A179854

/-- `log2(A080100(n+1))%3` -/
def P10192070306637426314.Spec : Prop :=
  ∀ n, P10192070306637426314.a n = A179854 (n + 1)

end A179854

/-! ## A179854.P13922426933143948621

`A101650(A080100(n+1))`
-/

namespace A179854.P13922426933143948621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A080100 (n + 1)).toNat

end

end A179854.P13922426933143948621

namespace A179854

/-- `A101650(A080100(n+1))` -/
def P13922426933143948621.Spec : Prop :=
  ∀ n, P13922426933143948621.a n = A179854 (n + 1)

end A179854

/-!
# A179855: Number of 8-dimensional partitions of n.

The programs for A179855, there is no canonical definition to state claims against.
-/

/-! ## A179855.P16468535735927966257

`A096751(eq[8, A219347(n)])`
-/

namespace A179855.P16468535735927966257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179855.P16468535735927966257

/-! ## A179855.P3785121000198962530

`A096751(eq[16, A185782(n+1)])`
-/

namespace A179855.P3785121000198962530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179855.P3785121000198962530

/-!
# A179856: Numbers n such that n^3 can be obtained from n by inserting internal (but not necessarily contiguous) digits.

The programs for A179856, there is no canonical definition to state claims against.
-/

/-! ## A179856.P5695470325135987237

`A086458(A093515(n+1)%A328660(n+1))`
-/

namespace A179856.P5695470325135987237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086458 (Int.tmod (A093515 (n + 1)) (A328660 (n + 1))).toNat

end

end A179856.P5695470325135987237

/-! ## A179856.P2039348012950323262

`filter[A086458(n+2), A137161(#)]`
-/

namespace A179856.P2039348012950323262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086458 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A179856.P2039348012950323262

/-! ## A179856.P395934663900995393

`∩[A351173(n+1), A086458(n)]`
-/

namespace A179856.P395934663900995393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179856.P395934663900995393

/-!
# A179858: Least positive primitive root of A139035(n).

The programs for A179858, there is no canonical definition to state claims against.
-/

/-! ## A179858.P3613571352889986030

`A046145(A139035(n+1))`
-/

namespace A179858.P3613571352889986030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A139035 (n + 1)).toNat

end

end A179858.P3613571352889986030

/-! ## A179858.P4555584207607056712

`A111076(p?[A139035(n+1)])`
-/

namespace A179858.P4555584207607056712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179858.P4555584207607056712

/-! ## A179858.P3150221153191092003

`A111076(or(1, A139035(n+1)))`
-/

namespace A179858.P3150221153191092003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.lor 1 (A139035 (n + 1))).toNat

end

end A179858.P3150221153191092003

/-! ## A179858.P5719754089240775286

`A111076(∏{d}[A139035(n+1), #])`
-/

namespace A179858.P5719754089240775286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A179858.P5719754089240775286

/-! ## A179858.P3315986549097735907

`A111076(∑{p}[A139035(n+1), #])`
-/

namespace A179858.P3315986549097735907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A179858.P3315986549097735907

/-! ## A179858.P13787260936381335586

`A046145(2*A163780(n+1)+1)`
-/

namespace A179858.P13787260936381335586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (2 * A163780 (n + 1) + 1).toNat

end

end A179858.P13787260936381335586

/-! ## A179858.P1216547396637184824

`A046145(A005408(A163780(n+1)))`
-/

namespace A179858.P1216547396637184824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A005408 (A163780 (n + 1)).toNat).toNat

end

end A179858.P1216547396637184824

/-! ## A179858.P9981670084910506542

`A111076(A139035(n+1))%A004769(n)`
-/

namespace A179858.P9981670084910506542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111076 (A139035 (n + 1)).toNat) (A004769 n)

end

end A179858.P9981670084910506542

/-! ## A179858.P2997667087830872450

`∑{d}[A111076(A139035(n+1)), A000010(#)]`
-/

namespace A179858.P2997667087830872450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A139035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A179858.P2997667087830872450

/-! ## A179858.P11241392123028670871

`char[A001057(n)]*A111076(A139035(n+1))`
-/

namespace A179858.P11241392123028670871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A111076 (A139035 (n + 1)).toNat

end

end A179858.P11241392123028670871

/-! ## A179858.P4002429749555652055

`A111076(A139035(n+1)%A054806(n+1))`
-/

namespace A179858.P4002429749555652055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.tmod (A139035 (n + 1)) (A054806 (n + 1))).toNat

end

end A179858.P4002429749555652055

/-! ## A179858.P15167968923943745694

`A046145(A163780(n+1)+A163780(n+1)+1)`
-/

namespace A179858.P15167968923943745694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A163780 (n + 1) + (A163780 (n + 1) + 1)).toNat

end

end A179858.P15167968923943745694

/-! ## A179858.P10632029882451732412

`A019426(A017293(n))*A111076(A139035(n+1))`
-/

namespace A179858.P10632029882451732412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A017293 n).toNat * A111076 (A139035 (n + 1)).toNat

end

end A179858.P10632029882451732412

/-! ## A179858.P15475137338294771080

`A001222(A260218(n+1))*A111076(A139035(n+1))`
-/

namespace A179858.P15475137338294771080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260218 (n + 1)).toNat * A111076 (A139035 (n + 1)).toNat

end

end A179858.P15475137338294771080

/-!
# A179859: Numbers k that divide the sum of the first k noncomposites.

The programs for A179859, there is no canonical definition to state claims against.
-/

/-! ## A179859.P5901443317491006839

`A179861(n+1)/A179860(n+1)`
-/

namespace A179859.P5901443317491006839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179861 (n + 1) : ℚ) / (A179860 (n + 1) : ℚ)

end

end A179859.P5901443317491006839

/-!
# A179860: Integer averages of first n noncomposites for some n.

The programs for A179860, there is no canonical definition to state claims against.
-/

/-! ## A179860.P7717968703785053611

`A179861(n+1)/A179859(n+1)`
-/

namespace A179860.P7717968703785053611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179861 (n + 1) : ℚ) / (A179859 (n + 1) : ℚ)

end

end A179860.P7717968703785053611

/-! ## A179860.P17509441604811923883

`(A007504(A179859(n+1)-1)+1)/A179859(n+1)`
-/

namespace A179860.P17509441604811923883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A179859 (n + 1) - 1).toNat + 1 : ℚ) / (A179859 (n + 1) : ℚ)

end

end A179860.P17509441604811923883

/-!
# A179861: a(n) is the sum of the first A179859(n) noncomposites.

The programs for A179861, there is no canonical definition to state claims against.
-/

/-! ## A179861.P4781994158552772070

`A179859(n+1)*A179860(n+1)`
-/

namespace A179861.P4781994158552772070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179859 (n + 1) * A179860 (n + 1)

end

end A179861.P4781994158552772070

/-! ## A179861.P11911165921130027584

`A014284(A179859(n+1))`
-/

namespace A179861.P11911165921130027584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (A179859 (n + 1)).toNat

end

end A179861.P11911165921130027584

/-! ## A179861.P13608958592247853479

`A007504(A179859(n+1)-1)+1`
-/

namespace A179861.P13608958592247853479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A179859 (n + 1) - 1).toNat + 1

end

end A179861.P13608958592247853479

/-!
# A179862: An unrestricted partition statistic: sum of A179864 over row n.

The programs for A179862, there is no canonical definition to state claims against.
-/

/-! ## A179862.P14153916876133752474

`A211978(n+1)-A000041(n+1)`
-/

namespace A179862.P14153916876133752474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) - A000041 (n + 1)

end

end A179862.P14153916876133752474

/-! ## A179862.P12493657281366726705

`A225600(A139582(n+1)-1)`
-/

namespace A179862.P12493657281366726705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (A139582 (n + 1) - 1).toNat

end

end A179862.P12493657281366726705

/-! ## A179862.P18081759573060312887

`A211978(n+1)-Δ[A000070(n)]`
-/

namespace A179862.P18081759573060312887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) - (f1 (n + 1) - f1 n)

end

end A179862.P18081759573060312887

/-! ## A179862.P5330624139507391327

`A076276(n+1)+A006128(n+1)`
-/

namespace A179862.P5330624139507391327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076276 (n + 1) + A006128 (n + 1)

end

end A179862.P5330624139507391327

/-! ## A179862.P16910528437900795612

`A006128(n+1)+A182699(n+1)+A006128(n)`
-/

namespace A179862.P16910528437900795612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A182699 (n + 1) + A006128 n)

end

end A179862.P16910528437900795612

/-! ## A179862.P208689643087389440

`A211978(n+1)+A000070(n)-A000070(n+1)`
-/

namespace A179862.P208689643087389440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) + (A000070 n - A000070 (n + 1))

end

end A179862.P208689643087389440

/-! ## A179862.P15850334510379104894

`A000041(n+1)+A076276(n+1)+A076276(n+1)`
-/

namespace A179862.P15850334510379104894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A076276 (n + 1) + A076276 (n + 1))

end

end A179862.P15850334510379104894

/-! ## A179862.P1728135909590413678

`A006128(n+1)+A006128(n+1)-A000041(n+1)`
-/

namespace A179862.P1728135909590413678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A006128 (n + 1) - A000041 (n + 1))

end

end A179862.P1728135909590413678

/-! ## A179862.P12990752767907757817

`A225610(n+1)-(A133041(n+1)+A000041(n+1))`
-/

namespace A179862.P12990752767907757817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225610 (n + 1) - (A133041 (n + 1) + A000041 (n + 1))

end

end A179862.P12990752767907757817

/-! ## A179862.P15280657694828237473

`A139582(n+1)+A211978(n+1)-A299473(n+1)`
-/

namespace A179862.P15280657694828237473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) + (A211978 (n + 1) - A299473 (n + 1))

end

end A179862.P15280657694828237473

/-! ## A179862.P9362045447293724552

`A211978(n+1)+A299473(n+1)-A299474(n+1)`
-/

namespace A179862.P9362045447293724552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) + (A299473 (n + 1) - A299474 (n + 1))

end

end A179862.P9362045447293724552

/-! ## A179862.P5929303060986382076

`A211978(n+1)-record[A035444(n)]`
-/

namespace A179862.P5929303060986382076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179862.P5929303060986382076

/-!
# A179863: Irregular triangle T(n,k) = A049085(n,k)!, read by rows, 1 <= k <= A000041(n).

The programs for A179863, there is no canonical definition to state claims against.
-/

/-! ## A179863.P10935645125377675687

`A000142(A049085(n))`
-/

namespace A179863.P10935645125377675687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A049085 n).toNat

end

end A179863.P10935645125377675687

/-! ## A179863.P5550319994790703998

`val(A036035(n), 2)!`
-/

namespace A179863.P5550319994790703998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A036035 n).toNat 2)

end

end A179863.P5550319994790703998

/-! ## A179863.P8309467230264262232

`A000142(val(A036035(n), 2))`
-/

namespace A179863.P8309467230264262232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.valuation (A036035 n).toNat 2)

end

end A179863.P8309467230264262232

/-! ## A179863.P5459468589604805529

`A038507(A049085(n))-A000035(2*n+1)`
-/

namespace A179863.P5459468589604805529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (A049085 n).toNat - A000035 (2 * n + 1)

end

end A179863.P5459468589604805529

/-! ## A179863.P11007955205276926967

`A130675(A334434(n))`
-/

namespace A179863.P11007955205276926967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A334434 n).toNat

end

end A179863.P11007955205276926967

/-! ## A179863.P5702223995910190872

`A000027(A049085(n)!)`
-/

namespace A179863.P5702223995910190872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.factorial (A049085 n).toNat)

end

end A179863.P5702223995910190872

/-!
# A179864: Irregular triangle: T(n,k) is the largest hook size of the k-th partition of n listed in Abramowitz and Stegun order, read by rows, 1 <= k <= A000041(n).

The programs for A179864, there is no canonical definition to state claims against.
-/

/-! ## A179864.P11743845531705254631

`A252464(A185974(n+1))`
-/

namespace A179864.P11743845531705254631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A185974 (n + 1)).toNat

end

end A179864.P11743845531705254631

/-! ## A179864.P14451592818407908169

`A036043(n+1)+A049085(n+1)-1`
-/

namespace A179864.P14451592818407908169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (n + 1) + (A049085 (n + 1) - 1)

end

end A179864.P14451592818407908169

/-! ## A179864.P1055875098638952938

`A036043(n+1)+A036036(∑[A036043(n+1)])-1`
-/

namespace A179864.P1055875098638952938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (n + 1) + (A036036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1)

end

end A179864.P1055875098638952938

/-! ## A179864.P11761475656124414204

`A049085(n+1)+A001222(A185974(n+1))-1`
-/

namespace A179864.P11761475656124414204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (n + 1) + (A001222 (A185974 (n + 1)).toNat - 1)

end

end A179864.P11761475656124414204

/-! ## A179864.P6603253714649822449

`A036043(n+1)+A001222(A334434(n+1))-1`
-/

namespace A179864.P6603253714649822449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (n + 1) + (A001222 (A334434 (n + 1)).toNat - 1)

end

end A179864.P6603253714649822449

/-! ## A179864.P5605604465349936585

`A252464(A334434(n+1))`
-/

namespace A179864.P5605604465349936585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A334434 (n + 1)).toNat

end

end A179864.P5605604465349936585

/-!
# A179865: Number of n-bit binary numbers containing one run of 0's.

The programs for A179865, the canonical program `A179865.P10897765931777522491` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179865 has offset 1).

The definition of A179865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179865.P5865815511342656677

`round(1/acot(∑[n]))`
-/

namespace A179865.P5865815511342656677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A179865.P5865815511342656677

namespace A179865

/-- `round(1/acot(∑[n]))` -/
def P5865815511342656677.Spec : Prop :=
  ∀ n, P5865815511342656677.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P14475461549527195820

`ceil(abs(γ-∑[n]))`
-/

namespace A179865.P14475461549527195820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)|⌉

end

end A179865.P14475461549527195820

namespace A179865

/-- `ceil(abs(γ-∑[n]))` -/
def P14475461549527195820.Spec : Prop :=
  ∀ n, P14475461549527195820.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P163407026003093044

`∑[n]+floor(acot(n))`
-/

namespace A179865.P163407026003093044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A179865.P163407026003093044

namespace A179865

/-- `∑[n]+floor(acot(n))` -/
def P163407026003093044.Spec : Prop :=
  ∀ n, P163407026003093044.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P2386072733279007310

`∑[n]^floor(atan(n))`
-/

namespace A179865.P2386072733279007310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A179865.P2386072733279007310

namespace A179865

/-- `∑[n]^floor(atan(n))` -/
def P2386072733279007310.Spec : Prop :=
  ∀ n, P2386072733279007310.a n = (A179865 (n + 1) : ℚ)

end A179865

/-! ## A179865.P6353321205350921777

`C(∑[n], floor(atan(n)))`
-/

namespace A179865.P6353321205350921777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ⌊Real.arctan (n : ℝ)⌋.toNat

end

end A179865.P6353321205350921777

namespace A179865

/-- `C(∑[n], floor(atan(n)))` -/
def P6353321205350921777.Spec : Prop :=
  ∀ n, (P6353321205350921777.a n : ℤ) = A179865 (n + 1)

end A179865

/-! ## A179865.P7794691029735895341

`gcd(floor(acot(n)), ∑[n])`
-/

namespace A179865.P7794691029735895341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179865.P7794691029735895341

namespace A179865

/-- `gcd(floor(acot(n)), ∑[n])` -/
def P7794691029735895341.Spec : Prop :=
  ∀ n, (P7794691029735895341.a n : ℤ) = A179865 (n + 1)

end A179865

/-! ## A179865.P2789523491636780081

`or(floor(acot(n)), ∑[n])`
-/

namespace A179865.P2789523491636780081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179865.P2789523491636780081

namespace A179865

/-- `or(floor(acot(n)), ∑[n])` -/
def P2789523491636780081.Spec : Prop :=
  ∀ n, P2789523491636780081.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P821817640654238278

`xor(floor(acot(n)), ∑[n])`
-/

namespace A179865.P821817640654238278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179865.P821817640654238278

namespace A179865

/-- `xor(floor(acot(n)), ∑[n])` -/
def P821817640654238278.Spec : Prop :=
  ∀ n, P821817640654238278.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P6864048341001328328

`floor(cosh(log(Δ[atan(n)])))`
-/

namespace A179865.P6864048341001328328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f1 (n + 1) - f1 n))⌋

end

end A179865.P6864048341001328328

namespace A179865

/-- `floor(cosh(log(Δ[atan(n)])))` -/
def P6864048341001328328.Spec : Prop :=
  ∀ n, P6864048341001328328.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P16813990306970538305

`round(cot(cos(atan(∑[n]))))`
-/

namespace A179865.P16813990306970538305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.cos (Real.arctan ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))))

end

end A179865.P16813990306970538305

namespace A179865

/-- `round(cot(cos(atan(∑[n]))))` -/
def P16813990306970538305.Spec : Prop :=
  ∀ n, P16813990306970538305.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P7195423663649334142

`round(cot(sin(acot(∑[n]))))`
-/

namespace A179865.P7195423663649334142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.sin (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))))

end

end A179865.P7195423663649334142

namespace A179865

/-- `round(cot(sin(acot(∑[n]))))` -/
def P7195423663649334142.Spec : Prop :=
  ∀ n, P7195423663649334142.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P17443720112637055896

`round(tan(acot(acot(∑[n]))))`
-/

namespace A179865.P17443720112637055896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.acot (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))))

end

end A179865.P17443720112637055896

namespace A179865

/-- `round(tan(acot(acot(∑[n]))))` -/
def P17443720112637055896.Spec : Prop :=
  ∀ n, P17443720112637055896.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P8724229165943121448

`round(cot(atan(acot(∑[n]))))`
-/

namespace A179865.P8724229165943121448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arctan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))))

end

end A179865.P8724229165943121448

namespace A179865

/-- `round(cot(atan(acot(∑[n]))))` -/
def P8724229165943121448.Spec : Prop :=
  ∀ n, P8724229165943121448.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P13589583336258897762

`round(cot(tanh(acot(∑[n]))))`
-/

namespace A179865.P13589583336258897762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.tanh (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))))

end

end A179865.P13589583336258897762

namespace A179865

/-- `round(cot(tanh(acot(∑[n]))))` -/
def P13589583336258897762.Spec : Prop :=
  ∀ n, P13589583336258897762.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P10897765931777522491

`or(C(n, n²), ∑[n])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179865

/-- `or(C(n, n²), ∑[n])` -/
def P10897765931777522491.Spec : Prop :=
  ∀ n, (P10897765931777522491.a n : ℤ) = A179865 (n + 1)

theorem P10897765931777522491.correct : P10897765931777522491.Spec := by
  intro n
  simp only [A179865, Nat.add_sub_cancel]

end A179865

/-! ## A179865.P3327227517808585599

`∑[xor(n, C(n, n²))]`
-/

namespace A179865.P3327227517808585599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179865.P3327227517808585599

namespace A179865

/-- `∑[xor(n, C(n, n²))]` -/
def P3327227517808585599.Spec : Prop :=
  ∀ n, (P3327227517808585599.a n : ℤ) = A179865 (n + 1)

end A179865

/-! ## A179865.P4559358036424307955

`floor(∑[n]+cos(n)²)`
-/

namespace A179865.P4559358036424307955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.cos (n : ℝ) ^ 2⌋

end

end A179865.P4559358036424307955

namespace A179865

/-- `floor(∑[n]+cos(n)²)` -/
def P4559358036424307955.Spec : Prop :=
  ∀ n, P4559358036424307955.a n = A179865 (n + 1)

end A179865

/-! ## A179865.P2675241518863047805

`∑[n]^ceil(sin(n)²)`
-/

namespace A179865.P2675241518863047805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A179865.P2675241518863047805

namespace A179865

/-- `∑[n]^ceil(sin(n)²)` -/
def P2675241518863047805.Spec : Prop :=
  ∀ n, P2675241518863047805.a n = (A179865 (n + 1) : ℚ)

end A179865

/-! ## A179865.P12768628749661714284

`∑[n]^round(atan(atan(n)))`
-/

namespace A179865.P12768628749661714284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ))) : ℤ)

end

end A179865.P12768628749661714284

namespace A179865

/-- `∑[n]^round(atan(atan(n)))` -/
def P12768628749661714284.Spec : Prop :=
  ∀ n, P12768628749661714284.a n = (A179865 (n + 1) : ℚ)

end A179865

/-! ## A179865.P822752306276330507

`∑[n]^floor(acot(acot(n)))`
-/

namespace A179865.P822752306276330507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋ : ℤ)

end

end A179865.P822752306276330507

namespace A179865

/-- `∑[n]^floor(acot(acot(n)))` -/
def P822752306276330507.Spec : Prop :=
  ∀ n, P822752306276330507.a n = (A179865 (n + 1) : ℚ)

end A179865

/-!
# A179868: (Number of 1's in the binary expansion of n) mod 4.

The programs for A179868, the canonical program `A179868.P12443573332757821551` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179868 has offset 0).

The definition of A179868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179868.P12443573332757821551

`A010873(A000120(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179868

/-- `A010873(A000120(n))` -/
def P12443573332757821551.Spec : Prop :=
  ∀ n, P12443573332757821551.a n = A179868 n

theorem P12443573332757821551.correct : P12443573332757821551.Spec := by
  intro n
  simp only [A179868]

end A179868

/-! ## A179868.P12861918383658495280

`(a(and(n, n-1))+1)%4` with `a(0)=0`
-/

namespace A179868.P12861918383658495280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1) % 4

end

end A179868.P12861918383658495280

namespace A179868

/-- `(a(and(n, n-1))+1)%4` -/
def P12861918383658495280.Spec : Prop :=
  ∀ n, (P12861918383658495280.a n : ℤ) = A179868 n

end A179868

/-! ## A179868.P8522877202922168513

`and(3, a(and(n, n-1))+1)` with `a(0)=0`
-/

namespace A179868.P8522877202922168513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

end

end A179868.P8522877202922168513

namespace A179868

/-- `and(3, a(and(n, n-1))+1)` -/
def P8522877202922168513.Spec : Prop :=
  ∀ n, (P8522877202922168513.a n : ℤ) = A179868 n

end A179868

/-! ## A179868.P384414861313812118

`(a(floor(n/2))+n²)%4` with `a(0)=0`
-/

namespace A179868.P384414861313812118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + n ^ 2) % 4

end

end A179868.P384414861313812118

namespace A179868

/-- `(a(floor(n/2))+n²)%4` -/
def P384414861313812118.Spec : Prop :=
  ∀ n, (P384414861313812118.a n : ℤ) = A179868 n

end A179868

/-! ## A179868.P16504556644272349174

`and(3, a(floor(n/2))+n²)` with `a(0)=0`
-/

namespace A179868.P16504556644272349174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (a ⌊(n : ℚ) / 2⌋.toNat + n ^ 2)

end

end A179868.P16504556644272349174

namespace A179868

/-- `and(3, a(floor(n/2))+n²)` -/
def P16504556644272349174.Spec : Prop :=
  ∀ n, (P16504556644272349174.a n : ℤ) = A179868 n

end A179868

/-! ## A179868.P9293699682127993300

`∑[∑{e}[xor(n, -n), 2-#]]%4`
-/

namespace A179868.P9293699682127993300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A179868.P9293699682127993300

namespace A179868

/-- `∑[∑{e}[xor(n, -n), 2-#]]%4` -/
def P9293699682127993300.Spec : Prop :=
  ∀ n, P9293699682127993300.a n = A179868 n

end A179868

/-! ## A179868.P11695890049379466252

`A033042(n)%4`
-/

namespace A179868.P11695890049379466252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033042 n) 4

end

end A179868.P11695890049379466252

namespace A179868

/-- `A033042(n)%4` -/
def P11695890049379466252.Spec : Prop :=
  ∀ n, P11695890049379466252.a n = A179868 n

end A179868

/-! ## A179868.P11004518506642584473

`A033046(n)%4`
-/

namespace A179868.P11004518506642584473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033046 n) 4

end

end A179868.P11004518506642584473

namespace A179868

/-- `A033046(n)%4` -/
def P11004518506642584473.Spec : Prop :=
  ∀ n, P11004518506642584473.a n = A179868 n

end A179868

/-! ## A179868.P11630510400881588635

`A033049(n)%4`
-/

namespace A179868.P11630510400881588635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033049 n) 4

end

end A179868.P11630510400881588635

namespace A179868

/-- `A033049(n)%4` -/
def P11630510400881588635.Spec : Prop :=
  ∀ n, P11630510400881588635.a n = A179868 n

end A179868

/-! ## A179868.P13495507494698844026

`A197351(n)%4`
-/

namespace A179868.P13495507494698844026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197351 n) 4

end

end A179868.P13495507494698844026

namespace A179868

/-- `A197351(n)%4` -/
def P13495507494698844026.Spec : Prop :=
  ∀ n, P13495507494698844026.a n = A179868 n

end A179868

/-! ## A179868.P10481040077972099607

`and(3, A342802(n))`
-/

namespace A179868.P10481040077972099607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A342802 n)

end

end A179868.P10481040077972099607

namespace A179868

/-- `and(3, A342802(n))` -/
def P10481040077972099607.Spec : Prop :=
  ∀ n, P10481040077972099607.a n = A179868 n

end A179868

/-! ## A179868.P778749424969347096

`A070471(A038573(n))`
-/

namespace A179868.P778749424969347096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070471 (A038573 n).toNat

end

end A179868.P778749424969347096

namespace A179868

/-- `A070471(A038573(n))` -/
def P778749424969347096.Spec : Prop :=
  ∀ n, P778749424969347096.a n = A179868 n

end A179868

/-! ## A179868.P17935030569742491263

`A246960(A006068(n))`
-/

namespace A179868.P17935030569742491263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (A006068 n).toNat

end

end A179868.P17935030569742491263

namespace A179868

/-- `A246960(A006068(n))` -/
def P17935030569742491263.Spec : Prop :=
  ∀ n, P17935030569742491263.a n = A179868 n

end A179868

/-! ## A179868.P17687248524664375470

`A158459(A131762(n))`
-/

namespace A179868.P17687248524664375470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A131762 n).toNat

end

end A179868.P17687248524664375470

namespace A179868

/-- `A158459(A131762(n))` -/
def P17687248524664375470.Spec : Prop :=
  ∀ n, P17687248524664375470.a n = A179868 n

end A179868

/-! ## A179868.P11786936965975838539

`A053839(A380110(n))`
-/

namespace A179868.P11786936965975838539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (A380110 n).toNat

end

end A179868.P11786936965975838539

namespace A179868

/-- `A053839(A380110(n))` -/
def P11786936965975838539.Spec : Prop :=
  ∀ n, P11786936965975838539.a n = A179868 n

end A179868

/-! ## A179868.P4151414491062701842

`A246960(A292601(n))`
-/

namespace A179868.P4151414491062701842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (A292601 n).toNat

end

end A179868.P4151414491062701842

namespace A179868

/-- `A246960(A292601(n))` -/
def P4151414491062701842.Spec : Prop :=
  ∀ n, P4151414491062701842.a n = A179868 n

end A179868

/-! ## A179868.P11517886449402875248

`A246960(A300839(n))`
-/

namespace A179868.P11517886449402875248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (A300839 n).toNat

end

end A179868.P11517886449402875248

namespace A179868

/-- `A246960(A300839(n))` -/
def P11517886449402875248.Spec : Prop :=
  ∀ n, P11517886449402875248.a n = A179868 n

end A179868

/-! ## A179868.P2998604430902074340

`A001222(A071044(n))%4`
-/

namespace A179868.P2998604430902074340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A071044 n).toNat) 4

end

end A179868.P2998604430902074340

namespace A179868

/-- `A001222(A071044(n))%4` -/
def P2998604430902074340.Spec : Prop :=
  ∀ n, P2998604430902074340.a n = A179868 n

end A179868

/-! ## A179868.P14887890456558950457

`A000120(n)%A040002(n)`
-/

namespace A179868.P14887890456558950457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) (A040002 n)

end

end A179868.P14887890456558950457

namespace A179868

/-- `A000120(n)%A040002(n)` -/
def P14887890456558950457.Spec : Prop :=
  ∀ n, P14887890456558950457.a n = A179868 n

end A179868

/-!
# A179869: Jumping to the multiples or from previous first multiples and returning to the next number not used yet.

The programs for A179869, there is no canonical definition to state claims against.
-/

/-! ## A179869.P10589060895358624077

`A179881(A230571(n+1)+n)`
-/

namespace A179869.P10589060895358624077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179881 (A230571 (n + 1) + (n : ℤ)).toNat

end

end A179869.P10589060895358624077

/-! ## A179869.P8052588946625713889

`A179881(n)-2%A194673(n)`
-/

namespace A179869.P8052588946625713889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179881 n - Int.tmod 2 (A194673 n)

end

end A179869.P8052588946625713889

/-! ## A179869.P2676105436449116851

`A179881(and(2, A343380(n))+n)`
-/

namespace A179869.P2676105436449116851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179881 (Int.land 2 (A343380 n) + (n : ℤ)).toNat

end

end A179869.P2676105436449116851

/-! ## A179869.P3626723901650691584

`A179881(n)-and(2, A343380(n))`
-/

namespace A179869.P3626723901650691584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179881 n - Int.land 2 (A343380 n)

end

end A179869.P3626723901650691584

/-! ## A179869.P17498387862253944931

`A179881(and(2, A195739(n+1))+n)`
-/

namespace A179869.P17498387862253944931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179881 (Int.land 2 (A195739 (n + 1)) + (n : ℤ)).toNat

end

end A179869.P17498387862253944931

/-!
# A179870: a(n) = ((n-1)! * (n+1)!) ^ 2.

The programs for A179870, the canonical program `A179870.P14377316363684312474` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179870 has offset 1).

The definition of A179870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*(n+2)!)²` (program `A179870.P14377316363684312474`, by `A179870.P14377316363684312474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179870.P14377316363684312474

`(n!*(n+2)!)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179870

/-- `(n!*(n+2)!)²` -/
def P14377316363684312474.Spec : Prop :=
  ∀ n, (P14377316363684312474.a n : ℤ) = A179870 (n + 1)

theorem P14377316363684312474.correct : P14377316363684312474.Spec := by
  intro n
  simp only [A179870, Nat.add_sub_cancel]

end A179870

/-! ## A179870.P9037661965348910516

`A175430(n+1)²`
-/

namespace A179870.P9037661965348910516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175430 (n + 1) ^ 2

end

end A179870.P9037661965348910516

namespace A179870

/-- `A175430(n+1)²` -/
def P9037661965348910516.Spec : Prop :=
  ∀ n, P9037661965348910516.a n = A179870 (n + 1)

end A179870

/-! ## A179870.P7152833161836743061

`(n!/∏[1/(n+2)])²`
-/

namespace A179870.P7152833161836743061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A179870.P7152833161836743061

namespace A179870

/-- `(n!/∏[1/(n+2)])²` -/
def P7152833161836743061.Spec : Prop :=
  ∀ n, P7152833161836743061.a n = (A179870 (n + 1) : ℚ)

end A179870

/-! ## A179870.P5804866312073487429

`record[(abs(2-n)!*n!)²]`
-/

namespace A179870.P5804866312073487429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |2 - (n : ℤ)|.toNat * Nat.factorial n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179870.P5804866312073487429

namespace A179870

/-- `record[(abs(2-n)!*n!)²]` -/
def P5804866312073487429.Spec : Prop :=
  ∀ n, (P5804866312073487429.a n : ℤ) = A179870 (n + 1)

end A179870

/-! ## A179870.P15605227748227319280

`n!²*∏[record[(n-2)²]]`
-/

namespace A179870.P15605227748227319280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A179870.P15605227748227319280

namespace A179870

/-- `n!²*∏[record[(n-2)²]]` -/
def P15605227748227319280.Spec : Prop :=
  ∀ n, P15605227748227319280.a n = A179870 (n + 1)

end A179870

/-!
# A179871: Numbers h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is an integer.

The programs for A179871, the canonical program `A179871.P2683143761159696687` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179871 has offset 1).

The definition of A179871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179871.P2683143761159696687

`eq[1, A365428(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179871

/-- `eq[1, A365428(n+1)]+1` -/
def P2683143761159696687.Spec : Prop :=
  ∀ n, (P2683143761159696687.a n : ℤ) = A179871 (n + 1)

theorem P2683143761159696687.correct : P2683143761159696687.Spec := by
  intro n
  simp only [A179871, Nat.add_sub_cancel]

end A179871

/-! ## A179871.P2628710255256299904

`∪[A003627(n+1), A179887(n+1)]`
-/

namespace A179871.P2628710255256299904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179871.P2628710255256299904

namespace A179871

/-- `∪[A003627(n+1), A179887(n+1)]` -/
def P2628710255256299904.Spec : Prop :=
  ∀ n, (P2628710255256299904.a n : ℤ) = A179871 (n + 1)

end A179871

/-! ## A179871.P15092652282167095660

`record[A049347(n)*A055615(n+1)]`
-/

namespace A179871.P15092652282167095660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P15092652282167095660

namespace A179871

/-- `record[A049347(n)*A055615(n+1)]` -/
def P15092652282167095660.Spec : Prop :=
  ∀ n, P15092652282167095660.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P17230669348079030848

`record[A049347(n)*A062953(n+1)]`
-/

namespace A179871.P17230669348079030848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P17230669348079030848

namespace A179871

/-- `record[A049347(n)*A062953(n+1)]` -/
def P17230669348079030848.Spec : Prop :=
  ∀ n, P17230669348079030848.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P15688707027020522108

`record[A049347(n)*A325126(n+1)]`
-/

namespace A179871.P15688707027020522108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A325126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P15688707027020522108

namespace A179871

/-- `record[A049347(n)*A325126(n+1)]` -/
def P15688707027020522108.Spec : Prop :=
  ∀ n, P15688707027020522108.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P14129992889000316634

`record[A049347(n)*A341635(n+1)]`
-/

namespace A179871.P14129992889000316634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A341635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P14129992889000316634

namespace A179871

/-- `record[A049347(n)*A341635(n+1)]` -/
def P14129992889000316634.Spec : Prop :=
  ∀ n, P14129992889000316634.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P508711385363781370

`record[A008683(n+1)*A162397(n+1)]`
-/

namespace A179871.P508711385363781370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A162397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P508711385363781370

namespace A179871

/-- `record[A008683(n+1)*A162397(n+1)]` -/
def P508711385363781370.Spec : Prop :=
  ∀ n, P508711385363781370.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P995732488274918340

`record[A055615(n+1)*A319448(n+1)]`
-/

namespace A179871.P995732488274918340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A319448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P995732488274918340

namespace A179871

/-- `record[A055615(n+1)*A319448(n+1)]` -/
def P995732488274918340.Spec : Prop :=
  ∀ n, P995732488274918340.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P2818107650585979616

`record[A062953(n+1)*A319448(n+1)]`
-/

namespace A179871.P2818107650585979616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) * A319448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P2818107650585979616

namespace A179871

/-- `record[A062953(n+1)*A319448(n+1)]` -/
def P2818107650585979616.Spec : Prop :=
  ∀ n, P2818107650585979616.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P3927776045238443017

`record[A319448(n+1)*A325126(n+1)]`
-/

namespace A179871.P3927776045238443017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (n + 1) * A325126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P3927776045238443017

namespace A179871

/-- `record[A319448(n+1)*A325126(n+1)]` -/
def P3927776045238443017.Spec : Prop :=
  ∀ n, P3927776045238443017.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P5076477967236517510

`record[A319448(n+1)*A341635(n+1)]`
-/

namespace A179871.P5076477967236517510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (n + 1) * A341635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P5076477967236517510

namespace A179871

/-- `record[A319448(n+1)*A341635(n+1)]` -/
def P5076477967236517510.Spec : Prop :=
  ∀ n, P5076477967236517510.a n = A179871 (n + 1)

end A179871

/-! ## A179871.P4885660044487765698

`eq[A008836(n+1), A319448(n+1)]+1`
-/

namespace A179871.P4885660044487765698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179871.P4885660044487765698

namespace A179871

/-- `eq[A008836(n+1), A319448(n+1)]+1` -/
def P4885660044487765698.Spec : Prop :=
  ∀ n, (P4885660044487765698.a n : ℤ) = A179871 (n + 1)

end A179871

/-! ## A179871.P8338798046987493192

`eq[A157658(A008486(n)), A257075(n+2)]`
-/

namespace A179871.P8338798046987493192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179871.P8338798046987493192

namespace A179871

/-- `eq[A157658(A008486(n)), A257075(n+2)]` -/
def P8338798046987493192.Spec : Prop :=
  ∀ n, (P8338798046987493192.a n : ℤ) = A179871 (n + 1)

end A179871

/-! ## A179871.P11419096794943738671

`record[A015052(n+1)/A087088(A038040(n+1))]`
-/

namespace A179871.P11419096794943738671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015052 (n + 1) : ℚ) / (A087088 (A038040 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179871.P11419096794943738671

namespace A179871

/-- `record[A015052(n+1)/A087088(A038040(n+1))]` -/
def P11419096794943738671.Spec : Prop :=
  ∀ n, P11419096794943738671.a n = (A179871 (n + 1) : ℚ)

end A179871

/-!
# A179872: Numbers h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is not integer.

The programs for A179872, the canonical program `A179872.P11054619685292049350` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179872 has offset 1).

The definition of A179872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179872.P11054619685292049350

`lt[A365428(n+1), 1]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179872

/-- `lt[A365428(n+1), 1]+1` -/
def P11054619685292049350.Spec : Prop :=
  ∀ n, (P11054619685292049350.a n : ℤ) = A179872 (n + 1)

theorem P11054619685292049350.correct : P11054619685292049350.Spec := by
  intro n
  simp only [A179872, Nat.add_sub_cancel]

end A179872

/-! ## A179872.P1116157069404381105

`comp[A179871(n+1)-1]+1`
-/

namespace A179872.P1116157069404381105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179872.P1116157069404381105

namespace A179872

/-- `comp[A179871(n+1)-1]+1` -/
def P1116157069404381105.Spec : Prop :=
  ∀ n, (P1116157069404381105.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P3393579776625639223

`∪[A007645(n+1), A179891(n+1)]`
-/

namespace A179872.P3393579776625639223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179872.P3393579776625639223

namespace A179872

/-- `∪[A007645(n+1), A179891(n+1)]` -/
def P3393579776625639223.Spec : Prop :=
  ∀ n, (P3393579776625639223.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P4158050846265840795

`∪[A055664(n+1), A179891(n+1)]`
-/

namespace A179872.P4158050846265840795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179872.P4158050846265840795

namespace A179872

/-- `∪[A055664(n+1), A179891(n+1)]` -/
def P4158050846265840795.Spec : Prop :=
  ∀ n, (P4158050846265840795.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P9001002420506421710

`∪[A179891(n+1), A279815(n+1)]`
-/

namespace A179872.P9001002420506421710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179872.P9001002420506421710

namespace A179872

/-- `∪[A179891(n+1), A279815(n+1)]` -/
def P9001002420506421710.Spec : Prop :=
  ∀ n, (P9001002420506421710.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P18418334401896738891

`comp[((n+2)%3-1)*A055615(n+1)]`
-/

namespace A179872.P18418334401896738891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 2) % 3 : ℕ) : ℤ) - 1) * A055615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179872.P18418334401896738891

namespace A179872

/-- `comp[((n+2)%3-1)*A055615(n+1)]` -/
def P18418334401896738891.Spec : Prop :=
  ∀ n, (P18418334401896738891.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P13999114320045320974

`eq[char[A179871(n+1)], A000007(n)]`
-/

namespace A179872.P13999114320045320974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179872.P13999114320045320974

namespace A179872

/-- `eq[char[A179871(n+1)], A000007(n)]` -/
def P13999114320045320974.Spec : Prop :=
  ∀ n, (P13999114320045320974.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P3630552551677284037

`lt[1, A175506(n+1)]+1`
-/

namespace A179872.P3630552551677284037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A179872.P3630552551677284037

namespace A179872

/-- `lt[1, A175506(n+1)]+1` -/
def P3630552551677284037.Spec : Prop :=
  ∀ n, (P3630552551677284037.a n : ℤ) = A179872 (n + 1)

end A179872

/-! ## A179872.P13915931628248960741

`lt[1, A175506(A028310(n))]`
-/

namespace A179872.P13915931628248960741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A179872.P13915931628248960741

namespace A179872

/-- `lt[1, A175506(A028310(n))]` -/
def P13915931628248960741.Spec : Prop :=
  ∀ n, (P13915931628248960741.a n : ℤ) = A179872 (n + 1)

end A179872

/-!
# A179873: Corresponding values of antiharmonic means B(h) to numbers h from A179871 (numbers h such that antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 is an integer).

The programs for A179873, the canonical program `A179873.P14238685673315478080` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179873 has offset 1).

The definition of A179873 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A053818, A179871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179873.P14238685673315478080

`A053818(A179871(n+1))/A023896(A179871(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179873

/-- `A053818(A179871(n+1))/A023896(A179871(n+1))` -/
def P14238685673315478080.Spec : Prop :=
  ∀ n, P14238685673315478080.a n = (A179873 (n + 1) : ℚ)

end A179873

/-! ## A179873.P5318344125512371127

`A175505(A179871(n+1))`
-/

namespace A179873.P5318344125512371127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175505 (A179871 (n + 1)).toNat

end

end A179873.P5318344125512371127

namespace A179873

/-- `A175505(A179871(n+1))` -/
def P5318344125512371127.Spec : Prop :=
  ∀ n, P5318344125512371127.a n = A179873 (n + 1)

end A179873

/-! ## A179873.P14886863505224177137

`A008611(2*A179871(n+1))`
-/

namespace A179873.P14886863505224177137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A179871 (n + 1)).toNat

end

end A179873.P14886863505224177137

namespace A179873

/-- `A008611(2*A179871(n+1))` -/
def P14886863505224177137.Spec : Prop :=
  ∀ n, P14886863505224177137.a n = A179873 (n + 1)

end A179873

/-! ## A179873.P9689773371196843836

`A063195(2*A179871(n+1))`
-/

namespace A179873.P9689773371196843836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (2 * A179871 (n + 1)).toNat

end

end A179873.P9689773371196843836

namespace A179873

/-- `A063195(2*A179871(n+1))` -/
def P9689773371196843836.Spec : Prop :=
  ∀ n, P9689773371196843836.a n = A179873 (n + 1)

end A179873

/-! ## A179873.P7788453014798172628

`A063195(A179871(n+1)+A179871(n+1)+1)`
-/

namespace A179873.P7788453014798172628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A179871 (n + 1) + (A179871 (n + 1) + 1)).toNat

end

end A179873.P7788453014798172628

namespace A179873

/-- `A063195(A179871(n+1)+A179871(n+1)+1)` -/
def P7788453014798172628.Spec : Prop :=
  ∀ n, P7788453014798172628.a n = A179873 (n + 1)

end A179873

/-! ## A179873.P1792312730333842371

`A008611(A179871(n+1)+A179871(n+1)-2)`
-/

namespace A179873.P1792312730333842371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A179871 (n + 1) + (A179871 (n + 1) - 2)).toNat

end

end A179873.P1792312730333842371

namespace A179873

/-- `A008611(A179871(n+1)+A179871(n+1)-2)` -/
def P1792312730333842371.Spec : Prop :=
  ∀ n, P1792312730333842371.a n = A179873 (n + 1)

end A179873

/-!
# A179874: Possible values of A179873(m) in increasing order, where A179873(m) = corresponding values of antiharmonic means to numbers from A179871 (numbers h such that antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 is an integer).

The programs for A179874, there is no canonical definition to state claims against.
-/

/-! ## A179874.P16900809448068430740

`record[A179873(A052938(A323048(n+1)))]`
-/

namespace A179874.P16900809448068430740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179873 (A052938 (A323048 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179874.P16900809448068430740

/-! ## A179874.P10404831396510537734

`record[A179873(A304492(A304492(n+1)))]`
-/

namespace A179874.P10404831396510537734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179873 (A304492 (A304492 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179874.P10404831396510537734

/-! ## A179874.P14530596221443095387

`record[A179873(n+1)%A000043(n+1)]`
-/

namespace A179874.P14530596221443095387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179873 (n + 1)) (A000043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179874.P14530596221443095387

/-! ## A179874.P9255066746052606665

`record[A179873(A083544(A286558(n)))]`
-/

namespace A179874.P9255066746052606665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179873 (A083544 (A286558 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179874.P9255066746052606665

/-! ## A179874.P16578246091225838419

`record[A179873(A360679(n+4))]`
-/

namespace A179874.P16578246091225838419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179873 (A360679 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179874.P16578246091225838419

/-!
# A179875: Numbers h such that h and h+1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1.

The programs for A179875, the canonical program `A179875.P142909666046440856` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179875 has offset 1).

The definition of A179875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179875.P10841064248425590281

`A179876(n+1)-1`
-/

namespace A179875.P10841064248425590281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1) - 1

end

end A179875.P10841064248425590281

namespace A179875

/-- `A179876(n+1)-1` -/
def P10841064248425590281.Spec : Prop :=
  ∀ n, P10841064248425590281.a n = A179875 (n + 1)

end A179875

/-! ## A179875.P12149733187112683986

`∪[A179877(n+1), A179879(n+1)]`
-/

namespace A179875.P12149733187112683986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179875.P12149733187112683986

namespace A179875

/-- `∪[A179877(n+1), A179879(n+1)]` -/
def P12149733187112683986.Spec : Prop :=
  ∀ n, (P12149733187112683986.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P4857676255167157588

`A259965(gcd(n, n+1))+A179876(n+1)`
-/

namespace A179875.P4857676255167157588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (Nat.gcd n (n + 1)) + A179876 (n + 1)

end

end A179875.P4857676255167157588

namespace A179875

/-- `A259965(gcd(n, n+1))+A179876(n+1)` -/
def P4857676255167157588.Spec : Prop :=
  ∀ n, P4857676255167157588.a n = A179875 (n + 1)

end A179875

/-! ## A179875.P142909666046440856

`record[and(n+1, A008683(n+2))*A008683(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A179875

/-- `record[and(n+1, A008683(n+2))*A008683(n+1)]` -/
def P142909666046440856.Spec : Prop :=
  ∀ n, P142909666046440856.a n = A179875 (n + 1)

theorem P142909666046440856.correct : P142909666046440856.Spec := by
  intro n
  simp only [A179875, Nat.add_sub_cancel]

end A179875

/-! ## A179875.P13335156688464958841

`eq[A008683(n+2)+2, A008683(n+1)]+1`
-/

namespace A179875.P13335156688464958841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179875.P13335156688464958841

namespace A179875

/-- `eq[A008683(n+2)+2, A008683(n+1)]+1` -/
def P13335156688464958841.Spec : Prop :=
  ∀ n, (P13335156688464958841.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P10073801574701359929

`filter[A074819(n+1), A353629(#)]`
-/

namespace A179875.P10073801574701359929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A179875.P10073801574701359929

namespace A179875

/-- `filter[A074819(n+1), A353629(#)]` -/
def P10073801574701359929.Spec : Prop :=
  ∀ n, P10073801574701359929.a n = A179875 (n + 1)

end A179875

/-! ## A179875.P16238034858659176932

`∩[A030229(n+1), A074819(n+1)]`
-/

namespace A179875.P16238034858659176932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179875.P16238034858659176932

namespace A179875

/-- `∩[A030229(n+1), A074819(n+1)]` -/
def P16238034858659176932.Spec : Prop :=
  ∀ n, (P16238034858659176932.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P12376800600384817383

`A010848(A179876(n+1))`
-/

namespace A179875.P12376800600384817383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A179876 (n + 1)).toNat

end

end A179875.P12376800600384817383

namespace A179875

/-- `A010848(A179876(n+1))` -/
def P12376800600384817383.Spec : Prop :=
  ∀ n, P12376800600384817383.a n = A179875 (n + 1)

end A179875

/-! ## A179875.P4968155485651265005

`eq[n, A055615(A076369(n+1))]`
-/

namespace A179875.P4968155485651265005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A076369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179875.P4968155485651265005

namespace A179875

/-- `eq[n, A055615(A076369(n+1))]` -/
def P4968155485651265005.Spec : Prop :=
  ∀ n, (P4968155485651265005.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P14431233918099521570

`record[(n+1)*(A008683(n+1)-A007423(n+2))]`
-/

namespace A179875.P14431233918099521570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (n + 1) - A007423 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179875.P14431233918099521570

namespace A179875

/-- `record[(n+1)*(A008683(n+1)-A007423(n+2))]` -/
def P14431233918099521570.Spec : Prop :=
  ∀ n, P14431233918099521570.a n = A179875 (n + 1)

end A179875

/-! ## A179875.P16974158652063382790

`eq[A008683(A076369(n+1)), A080847(n+1)]`
-/

namespace A179875.P16974158652063382790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A076369 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179875.P16974158652063382790

namespace A179875

/-- `eq[A008683(A076369(n+1)), A080847(n+1)]` -/
def P16974158652063382790.Spec : Prop :=
  ∀ n, (P16974158652063382790.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P10018554729363380712

`eq[A008683(n+1)+2, A008683(A028310(n))]`
-/

namespace A179875.P10018554729363380712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179875.P10018554729363380712

namespace A179875

/-- `eq[A008683(n+1)+2, A008683(A028310(n))]` -/
def P10018554729363380712.Spec : Prop :=
  ∀ n, (P10018554729363380712.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P14814045738456666934

`lt[A076544(n+1), A076544(A076369(n+1))]`
-/

namespace A179875.P14814045738456666934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (A076369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179875.P14814045738456666934

namespace A179875

/-- `lt[A076544(n+1), A076544(A076369(n+1))]` -/
def P14814045738456666934.Spec : Prop :=
  ∀ n, (P14814045738456666934.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P7432899966520329342

`eq[A008683(n+1)+2, A008683(A076369(n+1))]`
-/

namespace A179875.P7432899966520329342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A076369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179875.P7432899966520329342

namespace A179875

/-- `eq[A008683(n+1)+2, A008683(A076369(n+1))]` -/
def P7432899966520329342.Spec : Prop :=
  ∀ n, (P7432899966520329342.a n : ℤ) = A179875 (n + 1)

end A179875

/-! ## A179875.P14978350820169453799

`∩[A090705(2*n+1), A090705(2*(n+1))-1]`
-/

namespace A179875.P14978350820169453799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179875.P14978350820169453799

namespace A179875

/-- `∩[A090705(2*n+1), A090705(2*(n+1))-1]` -/
def P14978350820169453799.Spec : Prop :=
  ∀ n, (P14978350820169453799.a n : ℤ) = A179875 (n + 1)

end A179875

/-!
# A179876: Numbers h such that h and h-1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1.

The programs for A179876, the canonical program `A179876.P8870788360812222462` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179876 has offset 1).

The definition of A179876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179876.P8870788360812222462

`A179875(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179876

/-- `A179875(n+1)+1` -/
def P8870788360812222462.Spec : Prop :=
  ∀ n, P8870788360812222462.a n = A179876 (n + 1)

theorem P8870788360812222462.correct : P8870788360812222462.Spec := by
  intro n
  simp only [A179876, Nat.add_sub_cancel]

end A179876

/-! ## A179876.P11445784984311709368

`∪[A179878(n+1), A179880(n+1)]`
-/

namespace A179876.P11445784984311709368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179876.P11445784984311709368

namespace A179876

/-- `∪[A179878(n+1), A179880(n+1)]` -/
def P11445784984311709368.Spec : Prop :=
  ∀ n, (P11445784984311709368.a n : ℤ) = A179876 (n + 1)

end A179876

/-! ## A179876.P865340029759877702

`eq[A008683(n+2)+2, A008683(n+1)]+2`
-/

namespace A179876.P865340029759877702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A179876.P865340029759877702

namespace A179876

/-- `eq[A008683(n+2)+2, A008683(n+1)]+2` -/
def P865340029759877702.Spec : Prop :=
  ∀ n, (P865340029759877702.a n : ℤ) = A179876 (n + 1)

end A179876

/-! ## A179876.P13383337863397061923

`record[A080305(A074819(n+1)+1)]`
-/

namespace A179876.P13383337863397061923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A074819 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179876.P13383337863397061923

namespace A179876

/-- `record[A080305(A074819(n+1)+1)]` -/
def P13383337863397061923.Spec : Prop :=
  ∀ n, P13383337863397061923.a n = A179876 (n + 1)

end A179876

/-! ## A179876.P9453377170609251530

`∩[A030229(n+1), A074819(n+1)]+1`
-/

namespace A179876.P9453377170609251530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179876.P9453377170609251530

namespace A179876

/-- `∩[A030229(n+1), A074819(n+1)]+1` -/
def P9453377170609251530.Spec : Prop :=
  ∀ n, (P9453377170609251530.a n : ℤ) = A179876 (n + 1)

end A179876

/-! ## A179876.P14573253965541928402

`record[A055615(n+1)-(A055615(n+2)+n+1)]`
-/

namespace A179876.P14573253965541928402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - (A055615 (n + 2) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179876.P14573253965541928402

namespace A179876

/-- `record[A055615(n+1)-(A055615(n+2)+n+1)]` -/
def P14573253965541928402.Spec : Prop :=
  ∀ n, P14573253965541928402.a n = A179876 (n + 1)

end A179876

/-! ## A179876.P4930678115202853215

`record[-(A261869(n+1)+1+n)]`
-/

namespace A179876.P4930678115202853215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A261869 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179876.P4930678115202853215

namespace A179876

/-- `record[-(A261869(n+1)+1+n)]` -/
def P4930678115202853215.Spec : Prop :=
  ∀ n, P4930678115202853215.a n = A179876 (n + 1)

end A179876

/-! ## A179876.P3902463791501792910

`A020725(A179875(n+1))`
-/

namespace A179876.P3902463791501792910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A179875 (n + 1)).toNat

end

end A179876.P3902463791501792910

namespace A179876

/-- `A020725(A179875(n+1))` -/
def P3902463791501792910.Spec : Prop :=
  ∀ n, P3902463791501792910.a n = A179876 (n + 1)

end A179876

/-! ## A179876.P5440771229310498651

`eq[n, A055615(A076369(n+1))]+1`
-/

namespace A179876.P5440771229310498651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A076369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179876.P5440771229310498651

namespace A179876

/-- `eq[n, A055615(A076369(n+1))]+1` -/
def P5440771229310498651.Spec : Prop :=
  ∀ n, (P5440771229310498651.a n : ℤ) = A179876 (n + 1)

end A179876

/-! ## A179876.P15163728554362409501

`eq[A008683(A076369(n+1)), A080847(n+1)]+1`
-/

namespace A179876.P15163728554362409501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A076369 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179876.P15163728554362409501

namespace A179876

/-- `eq[A008683(A076369(n+1)), A080847(n+1)]+1` -/
def P15163728554362409501.Spec : Prop :=
  ∀ n, (P15163728554362409501.a n : ℤ) = A179876 (n + 1)

end A179876

/-! ## A179876.P12466798497020175301

`lt[A076544(n+1), A076544(A076369(n+1))]+1`
-/

namespace A179876.P12466798497020175301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (A076369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A179876.P12466798497020175301

namespace A179876

/-- `lt[A076544(n+1), A076544(A076369(n+1))]+1` -/
def P12466798497020175301.Spec : Prop :=
  ∀ n, (P12466798497020175301.a n : ℤ) = A179876 (n + 1)

end A179876

/-! ## A179876.P15631557347241030852

`∩[A090705(2*n+1)+1, A090705(2*(n+1))]`
-/

namespace A179876.P15631557347241030852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179876.P15631557347241030852

namespace A179876

/-- `∩[A090705(2*n+1)+1, A090705(2*(n+1))]` -/
def P15631557347241030852.Spec : Prop :=
  ∀ n, (P15631557347241030852.a n : ℤ) = A179876 (n + 1)

end A179876

/-!
# A179877: Numbers h such that h and h+1 have same contraharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer (see A179882).

The programs for A179877, the canonical program `A179877.P9000556435574099518` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179877 has offset 1).

The definition of A179877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179882, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179877.P5222962182831446009

`A179878(n+1)-1`
-/

namespace A179877.P5222962182831446009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179878 (n + 1) - 1

end

end A179877.P5222962182831446009

namespace A179877

/-- `A179878(n+1)-1` -/
def P5222962182831446009.Spec : Prop :=
  ∀ n, P5222962182831446009.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P9000556435574099518

`(3*A179882(n+1)-1)/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179877

/-- `(3*A179882(n+1)-1)/2` -/
def P9000556435574099518.Spec : Prop :=
  ∀ n, P9000556435574099518.a n = (A179877 (n + 1) : ℚ)

end A179877

/-! ## A179877.P9376913349315820328

`floor(3/2*A179882(n+1))`
-/

namespace A179877.P9376913349315820328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A179882 (n + 1) : ℚ)⌋

end

end A179877.P9376913349315820328

namespace A179877

/-- `floor(3/2*A179882(n+1))` -/
def P9376913349315820328.Spec : Prop :=
  ∀ n, P9376913349315820328.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P11609978889236539146

`ceil(3*A179882(ϕ²-(ϕ-n))/2)-1`
-/

namespace A179877.P11609978889236539146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * A179882 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 2⌉ - 1

end

end A179877.P11609978889236539146

namespace A179877

/-- `ceil(3*A179882(ϕ²-(ϕ-n))/2)-1` -/
def P11609978889236539146.Spec : Prop :=
  ∀ n, P11609978889236539146.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P7078204191347811044

`filter[A179875(n+1), A373977(#)]`
-/

namespace A179877.P7078204191347811044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A179877.P7078204191347811044

namespace A179877

/-- `filter[A179875(n+1), A373977(#)]` -/
def P7078204191347811044.Spec : Prop :=
  ∀ n, P7078204191347811044.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P16872641270450858520

`∩[A179875(n+1), A214153(n+1)]`
-/

namespace A179877.P16872641270450858520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P16872641270450858520

namespace A179877

/-- `∩[A179875(n+1), A214153(n+1)]` -/
def P16872641270450858520.Spec : Prop :=
  ∀ n, (P16872641270450858520.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P18002548043080005348

`∩[A179875(n+1), A179887(n+1)]`
-/

namespace A179877.P18002548043080005348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P18002548043080005348

namespace A179877

/-- `∩[A179875(n+1), A179887(n+1)]` -/
def P18002548043080005348.Spec : Prop :=
  ∀ n, (P18002548043080005348.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P15012999875246228425

`∩[A056991(n+1), A179875(n+1)]`
-/

namespace A179877.P15012999875246228425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P15012999875246228425

namespace A179877

/-- `∩[A056991(n+1), A179875(n+1)]` -/
def P15012999875246228425.Spec : Prop :=
  ∀ n, (P15012999875246228425.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P8658745519459895658

`∩[A179875(n+1), A242660(n+1)]`
-/

namespace A179877.P8658745519459895658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P8658745519459895658

namespace A179877

/-- `∩[A179875(n+1), A242660(n+1)]` -/
def P8658745519459895658.Spec : Prop :=
  ∀ n, (P8658745519459895658.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P16736303809210017497

`∩[A179871(n+1), A179875(n+1)]`
-/

namespace A179877.P16736303809210017497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P16736303809210017497

namespace A179877

/-- `∩[A179871(n+1), A179875(n+1)]` -/
def P16736303809210017497.Spec : Prop :=
  ∀ n, (P16736303809210017497.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P2668100854807197857

`∩[A179875(n+1), A016777(n)]`
-/

namespace A179877.P2668100854807197857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P2668100854807197857

namespace A179877

/-- `∩[A179875(n+1), A016777(n)]` -/
def P2668100854807197857.Spec : Prop :=
  ∀ n, (P2668100854807197857.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P1343913072288313604

`∩[A033627(n+1), A179875(n+1)]`
-/

namespace A179877.P1343913072288313604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P1343913072288313604

namespace A179877

/-- `∩[A033627(n+1), A179875(n+1)]` -/
def P1343913072288313604.Spec : Prop :=
  ∀ n, (P1343913072288313604.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P16315831152230267431

`∩[A055047(n+1), A179875(n+1)]`
-/

namespace A179877.P16315831152230267431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P16315831152230267431

namespace A179877

/-- `∩[A055047(n+1), A179875(n+1)]` -/
def P16315831152230267431.Spec : Prop :=
  ∀ n, (P16315831152230267431.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P6896569948476548862

`∩[A179875(n+1), A244713(n+1)]`
-/

namespace A179877.P6896569948476548862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P6896569948476548862

namespace A179877

/-- `∩[A179875(n+1), A244713(n+1)]` -/
def P6896569948476548862.Spec : Prop :=
  ∀ n, (P6896569948476548862.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P16274584576913601540

`∩[A055054(n+1), A179875(n+1)]`
-/

namespace A179877.P16274584576913601540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P16274584576913601540

namespace A179877

/-- `∩[A055054(n+1), A179875(n+1)]` -/
def P16274584576913601540.Spec : Prop :=
  ∀ n, (P16274584576913601540.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P2910555302969012211

`∩[A179875(n+1), A358348(n+1)]`
-/

namespace A179877.P2910555302969012211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179877.P2910555302969012211

namespace A179877

/-- `∩[A179875(n+1), A358348(n+1)]` -/
def P2910555302969012211.Spec : Prop :=
  ∀ n, (P2910555302969012211.a n : ℤ) = A179877 (n + 1)

end A179877

/-! ## A179877.P7408446320660212547

`A001651(A179882(n+1))`
-/

namespace A179877.P7408446320660212547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A179882 (n + 1)).toNat

end

end A179877.P7408446320660212547

namespace A179877

/-- `A001651(A179882(n+1))` -/
def P7408446320660212547.Spec : Prop :=
  ∀ n, P7408446320660212547.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P12488577358476921947

`A004483(A179878(n+1))`
-/

namespace A179877.P12488577358476921947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A179878 (n + 1)).toNat

end

end A179877.P12488577358476921947

namespace A179877

/-- `A004483(A179878(n+1))` -/
def P12488577358476921947.Spec : Prop :=
  ∀ n, P12488577358476921947.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P8881024931354177925

`A244477(A179878(n+1)+1)`
-/

namespace A179877.P8881024931354177925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A179878 (n + 1) + 1).toNat

end

end A179877.P8881024931354177925

namespace A179877

/-- `A244477(A179878(n+1)+1)` -/
def P8881024931354177925.Spec : Prop :=
  ∀ n, P8881024931354177925.a n = A179877 (n + 1)

end A179877

/-! ## A179877.P5685744379055484914

`A134172(2*A179882(n+1))`
-/

namespace A179877.P5685744379055484914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (2 * A179882 (n + 1)).toNat

end

end A179877.P5685744379055484914

namespace A179877

/-- `A134172(2*A179882(n+1))` -/
def P5685744379055484914.Spec : Prop :=
  ∀ n, P5685744379055484914.a n = A179877 (n + 1)

end A179877

/-!
# A179878: Numbers h such that h and h-1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer (see A179882).

The programs for A179878, the canonical program `A179878.P1509397048520783937` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179878 has offset 1).

The definition of A179878 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179878.P1509397048520783937

`A179877(n+1)+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A179878

/-- `A179877(n+1)+1` -/
def P1509397048520783937.Spec : Prop :=
  ∀ n, P1509397048520783937.a n = A179878 (n + 1)

theorem P1509397048520783937.correct : P1509397048520783937.Spec := by
  intro n
  simp only [A179878, Nat.add_sub_cancel]

end A179878

/-! ## A179878.P15663577907253646331

`ceil(3*A179882(n+1)/2)`
-/

namespace A179878.P15663577907253646331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * A179882 (n + 1) : ℚ) / 2⌉

end

end A179878.P15663577907253646331

namespace A179878

/-- `ceil(3*A179882(n+1)/2)` -/
def P15663577907253646331.Spec : Prop :=
  ∀ n, P15663577907253646331.a n = A179878 (n + 1)

end A179878

/-! ## A179878.P16375712666339428988

`∩[A179871(n+1), A179876(n+1)]`
-/

namespace A179878.P16375712666339428988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179878.P16375712666339428988

namespace A179878

/-- `∩[A179871(n+1), A179876(n+1)]` -/
def P16375712666339428988.Spec : Prop :=
  ∀ n, (P16375712666339428988.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P11766899052149869741

`∩[A179876(n+1), A347838(n+1)]`
-/

namespace A179878.P11766899052149869741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179878.P11766899052149869741

namespace A179878

/-- `∩[A179876(n+1), A347838(n+1)]` -/
def P11766899052149869741.Spec : Prop :=
  ∀ n, (P11766899052149869741.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P7084122676605850245

`∩[A179876(n+1), A016789(n)]`
-/

namespace A179878.P7084122676605850245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179878.P7084122676605850245

namespace A179878

/-- `∩[A179876(n+1), A016789(n)]` -/
def P7084122676605850245.Spec : Prop :=
  ∀ n, (P7084122676605850245.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P1560082404520939692

`∩[A179875(n+1), A016777(n)]+1`
-/

namespace A179878.P1560082404520939692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179878.P1560082404520939692

namespace A179878

/-- `∩[A179875(n+1), A016777(n)]+1` -/
def P1560082404520939692.Spec : Prop :=
  ∀ n, (P1560082404520939692.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P8612220564169756810

`∩[A072065(n+1), A179876(n+1)]`
-/

namespace A179878.P8612220564169756810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179878.P8612220564169756810

namespace A179878

/-- `∩[A072065(n+1), A179876(n+1)]` -/
def P8612220564169756810.Spec : Prop :=
  ∀ n, (P8612220564169756810.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P16203521445162741740

`∩[A055048(n+1), A179876(n+1)]`
-/

namespace A179878.P16203521445162741740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179878.P16203521445162741740

namespace A179878

/-- `∩[A055048(n+1), A179876(n+1)]` -/
def P16203521445162741740.Spec : Prop :=
  ∀ n, (P16203521445162741740.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P1044329269051051186

`∩[A174438(n+1), A179876(n+1)]`
-/

namespace A179878.P1044329269051051186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179878.P1044329269051051186

namespace A179878

/-- `∩[A174438(n+1), A179876(n+1)]` -/
def P1044329269051051186.Spec : Prop :=
  ∀ n, (P1044329269051051186.a n : ℤ) = A179878 (n + 1)

end A179878

/-! ## A179878.P8750619133296321716

`A007494(A179882(n+1))`
-/

namespace A179878.P8750619133296321716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A179882 (n + 1)).toNat

end

end A179878.P8750619133296321716

namespace A179878

/-- `A007494(A179882(n+1))` -/
def P8750619133296321716.Spec : Prop :=
  ∀ n, P8750619133296321716.a n = A179878 (n + 1)

end A179878

/-! ## A179878.P2823778333377512219

`A001651(A179882(n+1)+1)`
-/

namespace A179878.P2823778333377512219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A179882 (n + 1) + 1).toNat

end

end A179878.P2823778333377512219

namespace A179878

/-- `A001651(A179882(n+1)+1)` -/
def P2823778333377512219.Spec : Prop :=
  ∀ n, P2823778333377512219.a n = A179878 (n + 1)

end A179878

/-! ## A179878.P3271046897142355798

`A002517(A179877(n+1))`
-/

namespace A179878.P3271046897142355798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A179877 (n + 1)).toNat

end

end A179878.P3271046897142355798

namespace A179878

/-- `A002517(A179877(n+1))` -/
def P3271046897142355798.Spec : Prop :=
  ∀ n, P3271046897142355798.a n = A179878 (n + 1)

end A179878

/-! ## A179878.P1737533474090756155

`A000463(3*A179882(n+1))`
-/

namespace A179878.P1737533474090756155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (3 * A179882 (n + 1)).toNat

end

end A179878.P1737533474090756155

namespace A179878

/-- `A000463(3*A179882(n+1))` -/
def P1737533474090756155.Spec : Prop :=
  ∀ n, P1737533474090756155.a n = A179878 (n + 1)

end A179878

/-! ## A179878.P8388851847040086962

`A001057(3*A179882(n+1))`
-/

namespace A179878.P8388851847040086962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (3 * A179882 (n + 1)).toNat

end

end A179878.P8388851847040086962

namespace A179878

/-- `A001057(3*A179882(n+1))` -/
def P8388851847040086962.Spec : Prop :=
  ∀ n, P8388851847040086962.a n = A179878 (n + 1)

end A179878

/-!
# A179879: Numbers h such that h and h+1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is not integer.

The programs for A179879, there is no canonical definition to state claims against.
-/

/-! ## A179879.P17832103908498881527

`A179880(n+1)-1`
-/

namespace A179879.P17832103908498881527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179880 (n + 1) - 1

end

end A179879.P17832103908498881527

/-! ## A179879.P4081451085597462815

`record[A179880(A065648(n))-1]`
-/

namespace A179879.P4081451085597462815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179880 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179879.P4081451085597462815

/-! ## A179879.P12612436621899275177

`∩[A179875(n+1), A268226(n+1)]`
-/

namespace A179879.P12612436621899275177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179879.P12612436621899275177

/-! ## A179879.P12989645998759390977

`∩[A179875(n+1), A028966(n)]`
-/

namespace A179879.P12989645998759390977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179879.P12989645998759390977

/-! ## A179879.P2865616667540329858

`∩[A179875(n+1), A007494(n)]`
-/

namespace A179879.P2865616667540329858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179879.P2865616667540329858

/-! ## A179879.P1111366814755007538

`∩[A179875(n+1), A049636(n)]`
-/

namespace A179879.P1111366814755007538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179879.P1111366814755007538

/-! ## A179879.P14173273111439627202

`∩[A179875(n+1), A179891(n+1)]`
-/

namespace A179879.P14173273111439627202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179879.P14173273111439627202

/-! ## A179879.P4738982544885553023

`∩[A179872(n+1), A179875(n+1)]`
-/

namespace A179879.P4738982544885553023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179879.P4738982544885553023

/-! ## A179879.P8030273319192567442

`A010848(A179880(n+1))`
-/

namespace A179879.P8030273319192567442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A179880 (n + 1)).toNat

end

end A179879.P8030273319192567442

/-! ## A179879.P1031774541525748235

`A023444(A179880(n+1)+1)`
-/

namespace A179879.P1031774541525748235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A179880 (n + 1) + 1).toNat

end

end A179879.P1031774541525748235

/-! ## A179879.P9067284920910381701

`A289207(A179880(n+1)+1)`
-/

namespace A179879.P9067284920910381701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A179880 (n + 1) + 1).toNat

end

end A179879.P9067284920910381701

/-! ## A179879.P5560560445036204545

`filter[A179875(n+1), A204418(#)]`
-/

namespace A179879.P5560560445036204545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A179879.P5560560445036204545

/-! ## A179879.P13739632162946557972

`filter[A179875(n+2), A329682(#)]`
-/

namespace A179879.P13739632162946557972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A179879.P13739632162946557972

/-!
# A179880: Numbers h such that h and h-1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is not integer.

The programs for A179880, there is no canonical definition to state claims against.
-/

/-! ## A179880.P14819132430100949532

`A179879(n+1)+1`
-/

namespace A179880.P14819132430100949532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179879 (n + 1) + 1

end

end A179880.P14819132430100949532

/-! ## A179880.P11970525244152610681

`∩[A179876(n+1), A032766(n)]`
-/

namespace A179880.P11970525244152610681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179880.P11970525244152610681

/-! ## A179880.P5970013103662184055

`∩[A179872(n+1), A179876(n+1)]`
-/

namespace A179880.P5970013103662184055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179880.P5970013103662184055

/-! ## A179880.P611090329334407225

`A020725(A179879(n+1))`
-/

namespace A179880.P611090329334407225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A179879 (n + 1)).toNat

end

end A179880.P611090329334407225

/-! ## A179880.P11504441625130923117

`A179885(Δ[n²])+1`
-/

namespace A179880.P11504441625130923117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A179880.P11504441625130923117

/-!
# A179881: Jumping to the multiples or from previous biggest multiples and returning to the next number not used yet.

The programs for A179881, there is no canonical definition to state claims against.
-/

/-! ## A179881.P1016721055186022128

`A230571(n+1)+A179869(n)`
-/

namespace A179881.P1016721055186022128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (n + 1) + A179869 n

end

end A179881.P1016721055186022128

/-! ## A179881.P15136644218521311249

`A179869(n)+2%A194673(n)`
-/

namespace A179881.P15136644218521311249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179869 n + Int.tmod 2 (A194673 n)

end

end A179881.P15136644218521311249

/-! ## A179881.P2172157981621511694

`A179869(n)+and(2, A343380(n))`
-/

namespace A179881.P2172157981621511694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179869 n + Int.land 2 (A343380 n)

end

end A179881.P2172157981621511694

/-! ## A179881.P13412305447975114998

`A179869(n)+6%A336041(n+1)`
-/

namespace A179881.P13412305447975114998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179869 n + Int.tmod 6 (A336041 (n + 1))

end

end A179881.P13412305447975114998

/-! ## A179881.P15089822951343238855

`A179869(n)+A079302(A084193(n))`
-/

namespace A179881.P15089822951343238855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179869 n + A079302 (A084193 n).toNat

end

end A179881.P15089822951343238855

/-!
# A179882: a(n) is the corresponding value of contraharmonic mean B(h) of numbers k such that gcd(k, h) = 1 (k < h) for numbers h from A179877(n) and A179878(n).

The programs for A179882, the canonical program `A179882.P5657720540902415124` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179882 has offset 1).

The definition of A179882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179882.P5657720540902415124

`record[gcd(A179873(n+1), A179873(n+2))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179882

/-- `record[gcd(A179873(n+1), A179873(n+2))]` -/
def P5657720540902415124.Spec : Prop :=
  ∀ n, (P5657720540902415124.a n : ℤ) = A179882 (n + 1)

theorem P5657720540902415124.correct : P5657720540902415124.Spec := by
  intro n
  simp only [A179882, Nat.add_sub_cancel]

end A179882

/-! ## A179882.P10445013357462885549

`A179873(eq[1, A179871(n+2)-A179871(n+1)]+1)`
-/

namespace A179882.P10445013357462885549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 2) - A179871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179882.P10445013357462885549

namespace A179882

/-- `A179873(eq[1, A179871(n+2)-A179871(n+1)]+1)` -/
def P10445013357462885549.Spec : Prop :=
  ∀ n, P10445013357462885549.a n = A179882 (n + 1)

end A179882

/-! ## A179882.P13231534813881885762

`A004396(A179877(n+1))`
-/

namespace A179882.P13231534813881885762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A179877 (n + 1)).toNat

end

end A179882.P13231534813881885762

namespace A179882

/-- `A004396(A179877(n+1))` -/
def P13231534813881885762.Spec : Prop :=
  ∀ n, P13231534813881885762.a n = A179882 (n + 1)

end A179882

/-! ## A179882.P9743521447209793666

`A004396(A179878(n+1))`
-/

namespace A179882.P9743521447209793666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A179878 (n + 1)).toNat

end

end A179882.P9743521447209793666

namespace A179882

/-- `A004396(A179878(n+1))` -/
def P9743521447209793666.Spec : Prop :=
  ∀ n, P9743521447209793666.a n = A179882 (n + 1)

end A179882

/-! ## A179882.P3161989058178336336

`record[A092092(A179875(n+1))]`
-/

namespace A179882.P3161989058178336336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A179875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179882.P3161989058178336336

namespace A179882

/-- `record[A092092(A179875(n+1))]` -/
def P3161989058178336336.Spec : Prop :=
  ∀ n, P3161989058178336336.a n = A179882 (n + 1)

end A179882

/-! ## A179882.P9052071081698448261

`record[A032742(A004273(A179876(n+1)))]`
-/

namespace A179882.P9052071081698448261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004273 (A179876 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179882.P9052071081698448261

namespace A179882

/-- `record[A032742(A004273(A179876(n+1)))]` -/
def P9052071081698448261.Spec : Prop :=
  ∀ n, P9052071081698448261.a n = A179882 (n + 1)

end A179882

/-! ## A179882.P16887308997409960995

`record[A032742(A179876(n+1)+A179875(n+1))]`
-/

namespace A179882.P16887308997409960995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A179876 (n + 1) + A179875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179882.P16887308997409960995

namespace A179882

/-- `record[A032742(A179876(n+1)+A179875(n+1))]` -/
def P16887308997409960995.Spec : Prop :=
  ∀ n, P16887308997409960995.a n = A179882 (n + 1)

end A179882

/-!
# A179883: List of twin numbers (h, h+1) such that h and h+1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1.

The programs for A179883, there is no canonical definition to state claims against.
-/

/-! ## A179883.P2953112182268174727

`A179875(∑[log2(gcd(2, n))])+n%2`
-/

namespace A179883.P2953112182268174727
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A179883.P2953112182268174727

/-! ## A179883.P2972243194513938494

`A179875(floor(n/2)+1)+and(1, n)`
-/

namespace A179883.P2972243194513938494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (⌊(n : ℚ) / 2⌋ + 1).toNat + (Nat.land 1 n : ℤ)

end

end A179883.P2972243194513938494

/-! ## A179883.P3061923982541299427

`A179875(A008619(n))+n%2`
-/

namespace A179883.P3061923982541299427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A179883.P3061923982541299427

/-! ## A179883.P11960084010307044585

`∪[A179875(n+1), A179876(n+1)]`
-/

namespace A179883.P11960084010307044585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179883.P11960084010307044585

/-! ## A179883.P3840067742924605991

`∪[A179884(n+1), A179885(n+1)]`
-/

namespace A179883.P3840067742924605991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179883.P3840067742924605991

/-! ## A179883.P7618442875089569721

`A179875(A008619(n))+A000035(n)`
-/

namespace A179883.P7618442875089569721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (A008619 n).toNat + A000035 n

end

end A179883.P7618442875089569721

/-! ## A179883.P16097510963574280985

`A179876(A008619(n))-A059841(n)`
-/

namespace A179883.P16097510963574280985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (A008619 n).toNat - A059841 n

end

end A179883.P16097510963574280985

/-! ## A179883.P3404657211178685763

`A179875(A008619(n))+Δ[A004526(n)]`
-/

namespace A179883.P3404657211178685763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A179883.P3404657211178685763

/-! ## A179883.P11032228203650102197

`A179876(A008619(n))-∑[A033999(n)]`
-/

namespace A179883.P11032228203650102197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (A008619 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179883.P11032228203650102197

/-!
# A179884: List of twin numbers (h, h+1) such that h and h+1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer.

The programs for A179884, there is no canonical definition to state claims against.
-/

/-! ## A179884.P1485594720827979863

`A179877(∑[log2(gcd(2, n))])+n%2`
-/

namespace A179884.P1485594720827979863
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A179884.P1485594720827979863

/-! ## A179884.P2085548747730783122

`A179877(A008619(n))+and(1, n)`
-/

namespace A179884.P2085548747730783122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (A008619 n).toNat + (Nat.land 1 n : ℤ)

end

end A179884.P2085548747730783122

/-! ## A179884.P4308366408044337979

`∪[A179877(n+1), A179878(n+1)]`
-/

namespace A179884.P4308366408044337979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179884.P4308366408044337979

/-! ## A179884.P1707293377910809898

`A007494(A179886(n+1))-∑[(-1)^n]`
-/

namespace A179884.P1707293377910809898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A179886 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179884.P1707293377910809898

/-! ## A179884.P178575752512224654

`A179877(A008619(n))+A000035(n)`
-/

namespace A179884.P178575752512224654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (A008619 n).toNat + A000035 n

end

end A179884.P178575752512224654

/-!
# A179885: Antiharmonic mean B(h) of numbers k such that gcd(k, h) = 1 for numbers h >= 1 and k < h = A053818(n) / A023896(n) = A175505(h) / A175506(h).

The programs for A179885, there is no canonical definition to state claims against.
-/

/-! ## A179885.P10202243401643821971

`A179879(∑[log2(gcd(2, n))])+n%2`
-/

namespace A179885.P10202243401643821971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179879 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A179885.P10202243401643821971

/-! ## A179885.P12759804885547881646

`A179879(A008619(n))+n%2`
-/

namespace A179885.P12759804885547881646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179879 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A179885.P12759804885547881646

/-! ## A179885.P2214542476123231172

`∪[A179879(n+1), A179880(n+1)]`
-/

namespace A179885.P2214542476123231172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179885.P2214542476123231172

/-! ## A179885.P3274313529106861990

`A179879(A008619(n))+A000035(n)`
-/

namespace A179885.P3274313529106861990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179879 (A008619 n).toNat + A000035 n

end

end A179885.P3274313529106861990

/-! ## A179885.P17145543500294954936

`A179880(∑[A000035(n+1)])-A000035(n+1)`
-/

namespace A179885.P17145543500294954936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 (n + 1)

end

end A179885.P17145543500294954936

/-!
# A179886: Corresponding values of antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 for numbers h from A179884.

The programs for A179886, there is no canonical definition to state claims against.
-/

/-! ## A179886.P10733245208082921632

`A179882(∑[log2(gcd(2, n))])`
-/

namespace A179886.P10733245208082921632
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179882 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179886.P10733245208082921632

/-! ## A179886.P2921236885416234692

`A179882(∑[char[2*n]])`
-/

namespace A179886.P2921236885416234692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179886.P2921236885416234692

/-! ## A179886.P2631352642203814459

`round(2*A179884(n+1)/3)`
-/

namespace A179886.P2631352642203814459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A179884 (n + 1) : ℚ) / 3)

end

end A179886.P2631352642203814459

/-! ## A179886.P17353777961607542063

`A004396(A179884(n+1))`
-/

namespace A179886.P17353777961607542063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A179884 (n + 1)).toNat

end

end A179886.P17353777961607542063

/-! ## A179886.P17581543312334083145

`or(1, A179882(A008619(n)))`
-/

namespace A179886.P17581543312334083145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A179882 (A008619 n).toNat)

end

end A179886.P17581543312334083145

/-!
# A179887: Nonprimes q such that antiharmonic mean B(q) of the numbers k < q such that gcd(k, q) = 1 is an integer, where B(q) = A053818(q) / A023896(q) = A175505(q) / A175506(q).

The programs for A179887, the canonical program `A179887.P13528417586907878350` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179887 has offset 1).

The definition of A179887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179887.P13528417586907878350

`filter[A179871(n+1), A005171(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179887

/-- `filter[A179871(n+1), A005171(#)]` -/
def P13528417586907878350.Spec : Prop :=
  ∀ n, P13528417586907878350.a n = A179887 (n + 1)

theorem P13528417586907878350.correct : P13528417586907878350.Spec := by
  intro n
  simp only [A179887, Nat.add_sub_cancel]

end A179887

/-! ## A179887.P4023412784547598939

`filter[A179871(n+1), A292438(#)]`
-/

namespace A179887.P4023412784547598939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A179887.P4023412784547598939

namespace A179887

/-- `filter[A179871(n+1), A292438(#)]` -/
def P4023412784547598939.Spec : Prop :=
  ∀ n, P4023412784547598939.a n = A179887 (n + 1)

end A179887

/-! ## A179887.P5193078177544455658

`filter[A179871(n+1), A354819(#)]`
-/

namespace A179887.P5193078177544455658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A179887.P5193078177544455658

namespace A179887

/-- `filter[A179871(n+1), A354819(#)]` -/
def P5193078177544455658.Spec : Prop :=
  ∀ n, P5193078177544455658.a n = A179887 (n + 1)

end A179887

/-! ## A179887.P3692698684217409855

`∩[A000469(n+1), A179871(n+1)]`
-/

namespace A179887.P3692698684217409855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P3692698684217409855

namespace A179887

/-- `∩[A000469(n+1), A179871(n+1)]` -/
def P3692698684217409855.Spec : Prop :=
  ∀ n, (P3692698684217409855.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P16027017173584488858

`∩[A018252(n+1), A179871(n+1)]`
-/

namespace A179887.P16027017173584488858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P16027017173584488858

namespace A179887

/-- `∩[A018252(n+1), A179871(n+1)]` -/
def P16027017173584488858.Spec : Prop :=
  ∀ n, (P16027017173584488858.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P4797689555256146961

`∩[A141468(n+1), A179871(n+1)]`
-/

namespace A179887.P4797689555256146961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P4797689555256146961

namespace A179887

/-- `∩[A141468(n+1), A179871(n+1)]` -/
def P4797689555256146961.Spec : Prop :=
  ∀ n, (P4797689555256146961.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P11522545864777680213

`∩[A067582(n+1), A179871(n+1)]`
-/

namespace A179887.P11522545864777680213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P11522545864777680213

namespace A179887

/-- `∩[A067582(n+1), A179871(n+1)]` -/
def P11522545864777680213.Spec : Prop :=
  ∀ n, (P11522545864777680213.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P15261498700547293112

`∩[A171993(n+1), A179871(n+1)]`
-/

namespace A179887.P15261498700547293112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P15261498700547293112

namespace A179887

/-- `∩[A171993(n+1), A179871(n+1)]` -/
def P15261498700547293112.Spec : Prop :=
  ∀ n, (P15261498700547293112.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P12924826093828760364

`∩[A069169(n+1), A179871(n+1)]`
-/

namespace A179887.P12924826093828760364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P12924826093828760364

namespace A179887

/-- `∩[A069169(n+1), A179871(n+1)]` -/
def P12924826093828760364.Spec : Prop :=
  ∀ n, (P12924826093828760364.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P6499037793292590379

`∩[A179871(n+1), A377880(n+1)]`
-/

namespace A179887.P6499037793292590379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P6499037793292590379

namespace A179887

/-- `∩[A179871(n+1), A377880(n+1)]` -/
def P6499037793292590379.Spec : Prop :=
  ∀ n, (P6499037793292590379.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P6489938296839893102

`∩[A179871(n+1), A240938(n+1)]`
-/

namespace A179887.P6489938296839893102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P6489938296839893102

namespace A179887

/-- `∩[A179871(n+1), A240938(n+1)]` -/
def P6489938296839893102.Spec : Prop :=
  ∀ n, (P6489938296839893102.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P5056127454847268697

`∩[A048943(n+1), A179871(n+1)]`
-/

namespace A179887.P5056127454847268697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P5056127454847268697

namespace A179887

/-- `∩[A048943(n+1), A179871(n+1)]` -/
def P5056127454847268697.Spec : Prop :=
  ∀ n, (P5056127454847268697.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P11606975666148294920

`∩[A179871(n+1), A233182(n+1)]`
-/

namespace A179887.P11606975666148294920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P11606975666148294920

namespace A179887

/-- `∩[A179871(n+1), A233182(n+1)]` -/
def P11606975666148294920.Spec : Prop :=
  ∀ n, (P11606975666148294920.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P1228724480320363067

`∩[A179871(n+1), A257586(n+1)]`
-/

namespace A179887.P1228724480320363067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P1228724480320363067

namespace A179887

/-- `∩[A179871(n+1), A257586(n+1)]` -/
def P1228724480320363067.Spec : Prop :=
  ∀ n, (P1228724480320363067.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P216631637429984072

`∩[A179871(n+1), A231879(n+1)]`
-/

namespace A179887.P216631637429984072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P216631637429984072

namespace A179887

/-- `∩[A179871(n+1), A231879(n+1)]` -/
def P216631637429984072.Spec : Prop :=
  ∀ n, (P216631637429984072.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P7115246697381129427

`∩[A179871(n+1), A359870(n+1)]`
-/

namespace A179887.P7115246697381129427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P7115246697381129427

namespace A179887

/-- `∩[A179871(n+1), A359870(n+1)]` -/
def P7115246697381129427.Spec : Prop :=
  ∀ n, (P7115246697381129427.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P5656015184019647857

`∩[A164276(n+1), A179871(n+1)]`
-/

namespace A179887.P5656015184019647857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P5656015184019647857

namespace A179887

/-- `∩[A164276(n+1), A179871(n+1)]` -/
def P5656015184019647857.Spec : Prop :=
  ∀ n, (P5656015184019647857.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P7270240775406728649

`∩[A179871(n+1), A361102(n+1)]`
-/

namespace A179887.P7270240775406728649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P7270240775406728649

namespace A179887

/-- `∩[A179871(n+1), A361102(n+1)]` -/
def P7270240775406728649.Spec : Prop :=
  ∀ n, (P7270240775406728649.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P9977446786783646972

`∩[A139118(n+1), A179871(n+1)]`
-/

namespace A179887.P9977446786783646972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P9977446786783646972

namespace A179887

/-- `∩[A139118(n+1), A179871(n+1)]` -/
def P9977446786783646972.Spec : Prop :=
  ∀ n, (P9977446786783646972.a n : ℤ) = A179887 (n + 1)

end A179887

/-! ## A179887.P5228732581226815398

`∩[A056653(n+1), A179871(n+1)]`
-/

namespace A179887.P5228732581226815398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179887.P5228732581226815398

namespace A179887

/-- `∩[A056653(n+1), A179871(n+1)]` -/
def P5228732581226815398.Spec : Prop :=
  ∀ n, (P5228732581226815398.a n : ℤ) = A179887 (n + 1)

end A179887

/-!
# A179888: Starting with a(1)=2: if m is a term then also 4*m+1 and 4*m+2.

The programs for A179888, the canonical program `A179888.P556819442881326826` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179888 has offset 1).

The definition of A179888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179888.P556819442881326826

`A000695(n+1)+A000695(A003817(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179888

/-- `A000695(n+1)+A000695(A003817(n+1))` -/
def P556819442881326826.Spec : Prop :=
  ∀ n, P556819442881326826.a n = A179888 (n + 1)

theorem P556819442881326826.correct : P556819442881326826.Spec := by
  intro n
  simp only [A179888, Nat.add_sub_cancel]

end A179888

/-! ## A179888.P15322760086210650469

`A000695(n+1)+A000695(A080079(n+1)+n)`
-/

namespace A179888.P15322760086210650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1) + A000695 (A080079 (n + 1) + (n : ℤ)).toNat

end

end A179888.P15322760086210650469

namespace A179888

/-- `A000695(n+1)+A000695(A080079(n+1)+n)` -/
def P15322760086210650469.Spec : Prop :=
  ∀ n, P15322760086210650469.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P16353843915093582777

`A001196(n+1)-A032925(2*(n+1))/2`
-/

namespace A179888.P16353843915093582777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 (n + 1) : ℚ) - (A032925 (2 * (n + 1)) : ℚ) / 2

end

end A179888.P16353843915093582777

namespace A179888

/-- `A001196(n+1)-A032925(2*(n+1))/2` -/
def P16353843915093582777.Spec : Prop :=
  ∀ n, P16353843915093582777.a n = (A179888 (n + 1) : ℚ)

end A179888

/-! ## A179888.P2334867425690943715

`A032925(A206332(n+1))`
-/

namespace A179888.P2334867425690943715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (A206332 (n + 1)).toNat

end

end A179888.P2334867425690943715

namespace A179888

/-- `A032925(A206332(n+1))` -/
def P2334867425690943715.Spec : Prop :=
  ∀ n, P2334867425690943715.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P5187870456526845214

`A032925(∑[or(1, (n+1)*A209229(n+1))]+1)`
-/

namespace A179888.P5187870456526845214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 1 : ℤ) * A209229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A179888.P5187870456526845214

namespace A179888

/-- `A032925(∑[or(1, (n+1)*A209229(n+1))]+1)` -/
def P5187870456526845214.Spec : Prop :=
  ∀ n, P5187870456526845214.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P16098586669167389406

`A032925(∑[(n+1)*A209229(n+1)]+n+1)`
-/

namespace A179888.P16098586669167389406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A179888.P16098586669167389406

namespace A179888

/-- `A032925(∑[(n+1)*A209229(n+1)]+n+1)` -/
def P16098586669167389406.Spec : Prop :=
  ∀ n, P16098586669167389406.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P5251992613979772507

`∩[A031443(n+1), A023717(n)]`
-/

namespace A179888.P5251992613979772507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P5251992613979772507

namespace A179888

/-- `∩[A031443(n+1), A023717(n)]` -/
def P5251992613979772507.Spec : Prop :=
  ∀ n, (P5251992613979772507.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P5915417926519183922

`∩[A023705(n+1), A031443(n+1)]`
-/

namespace A179888.P5915417926519183922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P5915417926519183922

namespace A179888

/-- `∩[A023705(n+1), A031443(n+1)]` -/
def P5915417926519183922.Spec : Prop :=
  ∀ n, (P5915417926519183922.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P9174624135039447170

`∩[A031443(n+1), A032925(n+1)]`
-/

namespace A179888.P9174624135039447170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P9174624135039447170

namespace A179888

/-- `∩[A031443(n+1), A032925(n+1)]` -/
def P9174624135039447170.Spec : Prop :=
  ∀ n, (P9174624135039447170.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P2206529925771527298

`∩[A023705(n+1), A325942(n+1)]`
-/

namespace A179888.P2206529925771527298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P2206529925771527298

namespace A179888

/-- `∩[A023705(n+1), A325942(n+1)]` -/
def P2206529925771527298.Spec : Prop :=
  ∀ n, (P2206529925771527298.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P5844199667617000096

`∩[A032925(n+1), A325942(n+1)]`
-/

namespace A179888.P5844199667617000096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P5844199667617000096

namespace A179888

/-- `∩[A032925(n+1), A325942(n+1)]` -/
def P5844199667617000096.Spec : Prop :=
  ∀ n, (P5844199667617000096.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P13021788382709205828

`A053754(A098871(n+1))`
-/

namespace A179888.P13021788382709205828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (A098871 (n + 1)).toNat

end

end A179888.P13021788382709205828

namespace A179888

/-- `A053754(A098871(n+1))` -/
def P13021788382709205828.Spec : Prop :=
  ∀ n, P13021788382709205828.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P15875615744056348668

`A256294(A000695(n+1))`
-/

namespace A179888.P15875615744056348668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256294 (A000695 (n + 1)).toNat

end

end A179888.P15875615744056348668

namespace A179888

/-- `A256294(A000695(n+1))` -/
def P15875615744056348668.Spec : Prop :=
  ∀ n, P15875615744056348668.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P18033031390840308816

`A004468(A383976(n+1))`
-/

namespace A179888.P18033031390840308816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A383976 (n + 1)).toNat

end

end A179888.P18033031390840308816

namespace A179888

/-- `A004468(A383976(n+1))` -/
def P18033031390840308816.Spec : Prop :=
  ∀ n, P18033031390840308816.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P9364736455054750922

`A057300(A374625(n+1))`
-/

namespace A179888.P9364736455054750922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A374625 (n + 1)).toNat

end

end A179888.P9364736455054750922

namespace A179888

/-- `A057300(A374625(n+1))` -/
def P9364736455054750922.Spec : Prop :=
  ∀ n, P9364736455054750922.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P12776854891088812855

`A053754(A000695(n+1)+1)`
-/

namespace A179888.P12776854891088812855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (A000695 (n + 1) + 1).toNat

end

end A179888.P12776854891088812855

namespace A179888

/-- `A053754(A000695(n+1)+1)` -/
def P12776854891088812855.Spec : Prop :=
  ∀ n, P12776854891088812855.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P3247107984763311656

`A053754(∑[A276391(n+1)]+1)`
-/

namespace A179888.P3247107984763311656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A179888.P3247107984763311656

namespace A179888

/-- `A053754(∑[A276391(n+1)]+1)` -/
def P3247107984763311656.Spec : Prop :=
  ∀ n, P3247107984763311656.a n = A179888 (n + 1)

end A179888

/-! ## A179888.P4308574662455233106

`∩[A032925(n+1), A053754(n+1)]`
-/

namespace A179888.P4308574662455233106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P4308574662455233106

namespace A179888

/-- `∩[A032925(n+1), A053754(n+1)]` -/
def P4308574662455233106.Spec : Prop :=
  ∀ n, (P4308574662455233106.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P3114179410266855172

`∩[A023705(n+1), A072602(n+1)]`
-/

namespace A179888.P3114179410266855172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P3114179410266855172

namespace A179888

/-- `∩[A023705(n+1), A072602(n+1)]` -/
def P3114179410266855172.Spec : Prop :=
  ∀ n, (P3114179410266855172.a n : ℤ) = A179888 (n + 1)

end A179888

/-! ## A179888.P13452329692419748550

`∩[A032925(n+1), A072602(n+1)]`
-/

namespace A179888.P13452329692419748550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179888.P13452329692419748550

namespace A179888

/-- `∩[A032925(n+1), A072602(n+1)]` -/
def P13452329692419748550.Spec : Prop :=
  ∀ n, (P13452329692419748550.a n : ℤ) = A179888 (n + 1)

end A179888

/-!
# A179889: Triangular numbers whose reverse is a square (possibly with fewer digits).

The programs for A179889, there is no canonical definition to state claims against.
-/

/-! ## A179889.P17170701468392627125

`A115692(∪[(2*n+1)², A067077(n+2)])`
-/

namespace A179889.P17170701468392627125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067077 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115692 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A179889.P17170701468392627125

/-! ## A179889.P17734482979106501330

`A115692(∪[A067077(n+1), A115692(n+1)-n])`
-/

namespace A179889.P17734482979106501330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115692 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115692 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A179889.P17734482979106501330

/-!
# A179890: Values of antiharmonic mean B(q) of the numbers k < q such that gcd(k, q) = 1 is an integer for nonprimes q from A179887, where B(q) = A053818(q) / A023896(q) = A175505(q) / A175506(q).

The programs for A179890, the canonical program `A179890.P13166276167187252580` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179890 has offset 1).

The definition of A179890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179890.P13166276167187252580

`round(2*A179887(n+1)/3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179890

/-- `round(2*A179887(n+1)/3)` -/
def P13166276167187252580.Spec : Prop :=
  ∀ n, P13166276167187252580.a n = A179890 (n + 1)

theorem P13166276167187252580.correct : P13166276167187252580.Spec := by
  intro n
  simp only [A179890, Nat.add_sub_cancel]

end A179890

/-! ## A179890.P14011331697830402744

`A004396(A179887(n+1))`
-/

namespace A179890.P14011331697830402744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A179887 (n + 1)).toNat

end

end A179890.P14011331697830402744

namespace A179890

/-- `A004396(A179887(n+1))` -/
def P14011331697830402744.Spec : Prop :=
  ∀ n, P14011331697830402744.a n = A179890 (n + 1)

end A179890

/-! ## A179890.P16817072729891553692

`A130823(A179887(n+1)+1)`
-/

namespace A179890.P16817072729891553692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A179887 (n + 1) + 1).toNat

end

end A179890.P16817072729891553692

namespace A179890

/-- `A130823(A179887(n+1)+1)` -/
def P16817072729891553692.Spec : Prop :=
  ∀ n, P16817072729891553692.a n = A179890 (n + 1)

end A179890

/-! ## A179890.P1527238119219523618

`A008611(2*A179887(n+1))`
-/

namespace A179890.P1527238119219523618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A179887 (n + 1)).toNat

end

end A179890.P1527238119219523618

namespace A179890

/-- `A008611(2*A179887(n+1))` -/
def P1527238119219523618.Spec : Prop :=
  ∀ n, P1527238119219523618.a n = A179890 (n + 1)

end A179890

/-! ## A179890.P2365333156089792568

`A063195(2*A179887(n+1))`
-/

namespace A179890.P2365333156089792568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (2 * A179887 (n + 1)).toNat

end

end A179890.P2365333156089792568

namespace A179890

/-- `A063195(2*A179887(n+1))` -/
def P2365333156089792568.Spec : Prop :=
  ∀ n, P2365333156089792568.a n = A179890 (n + 1)

end A179890

/-!
# A179891: Composites h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is not integer.

The programs for A179891, the canonical program `A179891.P781335319700463557` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179891 has offset 1).

The definition of A179891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179891.P15278540215291468648

`filter[A179872(n+1), A005171(#)]`
-/

namespace A179891.P15278540215291468648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179891.P15278540215291468648

namespace A179891

/-- `filter[A179872(n+1), A005171(#)]` -/
def P15278540215291468648.Spec : Prop :=
  ∀ n, P15278540215291468648.a n = A179891 (n + 1)

end A179891

/-! ## A179891.P781335319700463557

`filter[A179872(n+1), A066247(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179891

/-- `filter[A179872(n+1), A066247(#)]` -/
def P781335319700463557.Spec : Prop :=
  ∀ n, P781335319700463557.a n = A179891 (n + 1)

theorem P781335319700463557.correct : P781335319700463557.Spec := by
  intro n
  simp only [A179891, Nat.add_sub_cancel]

end A179891

/-! ## A179891.P4810328010814705522

`∩[A002808(n+1), A179872(n+1)]`
-/

namespace A179891.P4810328010814705522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179891.P4810328010814705522

namespace A179891

/-- `∩[A002808(n+1), A179872(n+1)]` -/
def P4810328010814705522.Spec : Prop :=
  ∀ n, (P4810328010814705522.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P5308577370981841394

`∩[A018252(n+1), A179872(n+1)]`
-/

namespace A179891.P5308577370981841394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179891.P5308577370981841394

namespace A179891

/-- `∩[A018252(n+1), A179872(n+1)]` -/
def P5308577370981841394.Spec : Prop :=
  ∀ n, (P5308577370981841394.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P9343253718945668920

`∩[A141468(n+1), A179872(n+1)]`
-/

namespace A179891.P9343253718945668920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179891.P9343253718945668920

namespace A179891

/-- `∩[A141468(n+1), A179872(n+1)]` -/
def P9343253718945668920.Spec : Prop :=
  ∀ n, (P9343253718945668920.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P15321830788079019233

`∩[A065090(n+1), A179872(n+1)]`
-/

namespace A179891.P15321830788079019233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179891.P15321830788079019233

namespace A179891

/-- `∩[A065090(n+1), A179872(n+1)]` -/
def P15321830788079019233.Spec : Prop :=
  ∀ n, (P15321830788079019233.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P14714034325234305375

`eq[char[A179887(n+1)], A339579(n+1)]`
-/

namespace A179891.P14714034325234305375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179887 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179891.P14714034325234305375

namespace A179891

/-- `eq[char[A179887(n+1)], A339579(n+1)]` -/
def P14714034325234305375.Spec : Prop :=
  ∀ n, (P14714034325234305375.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P10841354010953514550

`lt[A055672(n), char[eq[char[A179871(n+1)], A000007(n)]]]`
-/

namespace A179891.P10841354010953514550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = (n : ℤ) then 1 else 0

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f4 j : ℤ) = f6 j) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179891.P10841354010953514550

namespace A179891

/-- `lt[A055672(n), char[eq[char[A179871(n+1)], A000007(n)]]]` -/
def P10841354010953514550.Spec : Prop :=
  ∀ n, (P10841354010953514550.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P3178731267017167179

`lt[A055672(n), char[comp[A008683(n+1)*A162397(n+1)]]]`
-/

namespace A179891.P3178731267017167179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A162397 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179891.P3178731267017167179

namespace A179891

/-- `lt[A055672(n), char[comp[A008683(n+1)*A162397(n+1)]]]` -/
def P3178731267017167179.Spec : Prop :=
  ∀ n, (P3178731267017167179.a n : ℤ) = A179891 (n + 1)

end A179891

/-! ## A179891.P6475672032761900399

`lt[A055672(n)+1, A175506(A028310(n))]`
-/

namespace A179891.P6475672032761900399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179891.P6475672032761900399

namespace A179891

/-- `lt[A055672(n)+1, A175506(A028310(n))]` -/
def P6475672032761900399.Spec : Prop :=
  ∀ n, (P6475672032761900399.a n : ℤ) = A179891 (n + 1)

end A179891

/-!
# A179892: Numbers which are not the sum of three distinct members of twin primes.

The programs for A179892, there is no canonical definition to state claims against.
-/

/-! ## A179892.P5084639640677511743

`comp[a(n-1)+2]` with `a(0)=0, a(1)=15, a(2)=19`
-/

namespace A179892.P5084639640677511743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15, 19] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179892.P5084639640677511743

/-! ## A179892.P4304818203028805994

`comp[2*(n-C(8, n))]+1`
-/

namespace A179892.P4304818203028805994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.choose 8 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179892.P4304818203028805994

/-! ## A179892.P1025997750676287965

`lt[1, xor(3, 18-a(n-1))]` with `a(0)=1`
-/

namespace A179892.P1025997750676287965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.xor 3 (18 - f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A179892.P1025997750676287965

/-! ## A179892.P857510586498085780

`lt[round(n^and(1, n)/4)², n]`
-/

namespace A179892.P857510586498085780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ Nat.land 1 n : ℚ) / 4) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179892.P857510586498085780

/-! ## A179892.P10188200438984614751

`∑[floor(sqrt(sqrt(∑[ϕ-a(n-2)])))]` with `a(0)=1, a(1)=5`
-/

namespace A179892.P10188200438984614751
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  Real.goldenRatio - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (∑ j ∈ Finset.range (n + 1), f2 j))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179892.P10188200438984614751

/-! ## A179892.P188830924792948838

`lt[floor(n/4)^(val(n+1, 2)+1), n]`
-/

namespace A179892.P188830924792948838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ ^ (SequenceMachineLib.valuation (n + 1) 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179892.P188830924792948838

/-! ## A179892.P9954121971184369316

`record[ceil(A315365(n)/9)]`
-/

namespace A179892.P9954121971184369316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A315365 n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179892.P9954121971184369316

/-! ## A179892.P11812149047643884470

`lt[A035688(n+1)², n]`
-/

namespace A179892.P11812149047643884470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035688 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179892.P11812149047643884470

/-! ## A179892.P16224364390749431669

`∑[floor(root(A000203(4*(n+1)), 7))]`
-/

namespace A179892.P16224364390749431669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (4 * (n + 1)) : ℝ) ^ (1 / (7 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179892.P16224364390749431669

/-! ## A179892.P15420859475904834829

`∪[A032964(n+1), A002523(n)]`
-/

namespace A179892.P15420859475904834829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179892.P15420859475904834829

/-!
# A179893: a(n) = 3/2 * (prime(n)-1).

The programs for A179893, the canonical program `A179893.P13809526715996495286` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179893 has offset 2).

The definition of A179893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179893.P13809526715996495286

`3*A005097(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179893

/-- `3*A005097(n+1)` -/
def P13809526715996495286.Spec : Prop :=
  ∀ n, P13809526715996495286.a n = A179893 (n + 2)

theorem P13809526715996495286.correct : P13809526715996495286.Spec := by
  intro n
  simp only [A179893, Nat.add_sub_cancel]

end A179893

/-! ## A179893.P17397844134379204193

`(p?[2*n+1]-1)*3/2`
-/

namespace A179893.P17397844134379204193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) * ((3 : ℚ) / 2)

end

end A179893.P17397844134379204193

namespace A179893

/-- `(p?[2*n+1]-1)*3/2` -/
def P17397844134379204193.Spec : Prop :=
  ∀ n, P17397844134379204193.a n = (A179893 (n + 2) : ℚ)

end A179893

/-! ## A179893.P8595596027226628951

`A168565(n+2)-1`
-/

namespace A179893.P8595596027226628951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2) - 1

end

end A179893.P8595596027226628951

namespace A179893

/-- `A168565(n+2)-1` -/
def P8595596027226628951.Spec : Prop :=
  ∀ n, P8595596027226628951.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P9775806084440464748

`A245685(n+1)-3`
-/

namespace A179893.P9775806084440464748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245685 (n + 1) - 3

end

end A179893.P9775806084440464748

namespace A179893

/-- `A245685(n+1)-3` -/
def P9775806084440464748.Spec : Prop :=
  ∀ n, P9775806084440464748.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P14756958677248214532

`3*(A067076(n+1)+1)`
-/

namespace A179893.P14756958677248214532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A067076 (n + 1) + 1)

end

end A179893.P14756958677248214532

namespace A179893

/-- `3*(A067076(n+1)+1)` -/
def P14756958677248214532.Spec : Prop :=
  ∀ n, P14756958677248214532.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P9317917912811789809

`3*(A006254(n+1)-1)`
-/

namespace A179893.P9317917912811789809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A006254 (n + 1) - 1)

end

end A179893.P9317917912811789809

namespace A179893

/-- `3*(A006254(n+1)-1)` -/
def P9317917912811789809.Spec : Prop :=
  ∀ n, P9317917912811789809.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P8878586932160083278

`3*(A098090(n+1)-2)`
-/

namespace A179893.P8878586932160083278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A098090 (n + 1) - 2)

end

end A179893.P8878586932160083278

namespace A179893

/-- `3*(A098090(n+1)-2)` -/
def P8878586932160083278.Spec : Prop :=
  ∀ n, P8878586932160083278.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P9302459293181618777

`3*(A089253(n+1)-3)`
-/

namespace A179893.P9302459293181618777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089253 (n + 1) - 3)

end

end A179893.P9302459293181618777

namespace A179893

/-- `3*(A089253(n+1)-3)` -/
def P9302459293181618777.Spec : Prop :=
  ∀ n, P9302459293181618777.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P10787733555027139347

`3*(A089192(n+1)-4)`
-/

namespace A179893.P10787733555027139347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089192 (n + 1) - 4)

end

end A179893.P10787733555027139347

namespace A179893

/-- `3*(A089192(n+1)-4)` -/
def P10787733555027139347.Spec : Prop :=
  ∀ n, P10787733555027139347.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P12268852828620644857

`3*(A097069(n+1)-5)`
-/

namespace A179893.P12268852828620644857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A097069 (n + 1) - 5)

end

end A179893.P12268852828620644857

namespace A179893

/-- `3*(A097069(n+1)-5)` -/
def P12268852828620644857.Spec : Prop :=
  ∀ n, P12268852828620644857.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P5512611859540869408

`3*(A175540(n+1)-n)`
-/

namespace A179893.P5512611859540869408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A175540 (n + 1) - (n : ℤ))

end

end A179893.P5512611859540869408

namespace A179893

/-- `3*(A175540(n+1)-n)` -/
def P5512611859540869408.Spec : Prop :=
  ∀ n, P5512611859540869408.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P9460905323187112509

`3*(A008507(n+1)+n+1)`
-/

namespace A179893.P9460905323187112509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A008507 (n + 1) + (n + 1 : ℤ))

end

end A179893.P9460905323187112509

namespace A179893

/-- `3*(A008507(n+1)+n+1)` -/
def P9460905323187112509.Spec : Prop :=
  ∀ n, P9460905323187112509.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P17576524637060218281

`3*(A163057(n+1)-(n+1))`
-/

namespace A179893.P17576524637060218281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A163057 (n + 1) - (n + 1 : ℤ))

end

end A179893.P17576524637060218281

namespace A179893

/-- `3*(A163057(n+1)-(n+1))` -/
def P17576524637060218281.Spec : Prop :=
  ∀ n, P17576524637060218281.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P7932291655592676434

`A067076(n+1)+A065091(n+1)`
-/

namespace A179893.P7932291655592676434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + A065091 (n + 1)

end

end A179893.P7932291655592676434

namespace A179893

/-- `A067076(n+1)+A065091(n+1)` -/
def P7932291655592676434.Spec : Prop :=
  ∀ n, P7932291655592676434.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P12198392653624172604

`A118538(n+1)+A097069(n+1)`
-/

namespace A179893.P12198392653624172604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + A097069 (n + 1)

end

end A179893.P12198392653624172604

namespace A179893

/-- `A118538(n+1)+A097069(n+1)` -/
def P12198392653624172604.Spec : Prop :=
  ∀ n, P12198392653624172604.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P12011952222291652019

`A154115(n+1)+A098090(n+1)`
-/

namespace A179893.P12011952222291652019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A098090 (n + 1)

end

end A179893.P12011952222291652019

namespace A179893

/-- `A154115(n+1)+A098090(n+1)` -/
def P12011952222291652019.Spec : Prop :=
  ∀ n, P12011952222291652019.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P13525223127958868145

`Δ[3*A005521(n)]`
-/

namespace A179893.P13525223127958868145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179893.P13525223127958868145

namespace A179893

/-- `Δ[3*A005521(n)]` -/
def P13525223127958868145.Spec : Prop :=
  ∀ n, P13525223127958868145.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P8627733947739335244

`3*A102781(n+2)`
-/

namespace A179893.P8627733947739335244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A102781 (n + 2)

end

end A179893.P8627733947739335244

namespace A179893

/-- `3*A102781(n+2)` -/
def P8627733947739335244.Spec : Prop :=
  ∀ n, P8627733947739335244.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P11010811755077465410

`3*A130290(n+2)`
-/

namespace A179893.P11010811755077465410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A130290 (n + 2)

end

end A179893.P11010811755077465410

namespace A179893

/-- `3*A130290(n+2)` -/
def P11010811755077465410.Spec : Prop :=
  ∀ n, P11010811755077465410.a n = A179893 (n + 2)

end A179893

/-! ## A179893.P15214149294253852356

`3*floor(A000040(n+2)/2)`
-/

namespace A179893.P15214149294253852356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A000040 (n + 2) : ℚ) / 2⌋

end

end A179893.P15214149294253852356

namespace A179893

/-- `3*floor(A000040(n+2)/2)` -/
def P15214149294253852356.Spec : Prop :=
  ∀ n, P15214149294253852356.a n = A179893 (n + 2)

end A179893

/-!
# A179894: Given the series (1, 2, 1, 2, 1, 2, ...), let (1 + 2x + x^2 + 2x^3 + ...) * (1 + 2x^2 + x^3 + 2x^4 + ...) = (1 + 2x + 3x^2 + 7x^3 + ...)

The programs for A179894, the canonical program `A179894.P16749443182950577931` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179894 has offset 1).

The definition of A179894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179894.P16749443182950577931

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179894

/-- `2*a(n-2)-a(n-4)` -/
def P16749443182950577931.Spec : Prop :=
  ∀ n, P16749443182950577931.a n = A179894 (n + 1)

theorem P16749443182950577931.correct : P16749443182950577931.Spec := by
  intro n
  simp only [A179894, Nat.add_sub_cancel]

end A179894

/-! ## A179894.P3913372503621883492

`lcm(2, n)+lcm(2, 1-n)/2`
-/

namespace A179894.P3913372503621883492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) + (Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2

end

end A179894.P3913372503621883492

namespace A179894

/-- `lcm(2, n)+lcm(2, 1-n)/2` -/
def P3913372503621883492.Spec : Prop :=
  ∀ n, P3913372503621883492.a n = (A179894 (n + 1) : ℚ)

end A179894

/-! ## A179894.P10916613468833130606

`abs(3*n-gcd(n+1, ∑[n]))`
-/

namespace A179894.P10916613468833130606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)|

end

end A179894.P10916613468833130606

namespace A179894

/-- `abs(3*n-gcd(n+1, ∑[n]))` -/
def P10916613468833130606.Spec : Prop :=
  ∀ n, P10916613468833130606.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P5962672867690339854

`a(n-2)+n%2+4` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A179894.P5962672867690339854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + (n % 2 + 4)

end

end A179894.P5962672867690339854

namespace A179894

/-- `a(n-2)+n%2+4` -/
def P5962672867690339854.Spec : Prop :=
  ∀ n, (P5962672867690339854.a n : ℤ) = A179894 (n + 1)

end A179894

/-! ## A179894.P6072629946931580450

`a(n-2)-gcd(2, n)+6` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A179894.P6072629946931580450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (Nat.gcd 2 n : ℤ) + 6

end

end A179894.P6072629946931580450

namespace A179894

/-- `a(n-2)-gcd(2, n)+6` -/
def P6072629946931580450.Spec : Prop :=
  ∀ n, P6072629946931580450.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P9873222862609099697

`and(1, n)+a(n-2)+4` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A179894.P9873222862609099697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.land 1 n + (a (n - 2) + 4)

end

end A179894.P9873222862609099697

namespace A179894

/-- `and(1, n)+a(n-2)+4` -/
def P9873222862609099697.Spec : Prop :=
  ∀ n, (P9873222862609099697.a n : ℤ) = A179894 (n + 1)

end A179894

/-! ## A179894.P6246923834747759384

`∑[∑[n*(-1)^a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A179894.P6246923834747759384
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  (n : ℝ) * (-1 : ℝ) ^ (f2 (n - 1))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179894.P6246923834747759384

namespace A179894

/-- `∑[∑[n*(-1)^a(n-1)]]` -/
def P6246923834747759384.Spec : Prop :=
  ∀ n, P6246923834747759384.a n = (A179894 (n + 1) : ℝ)

end A179894

/-! ## A179894.P14937325424703513316

`∑[∑[n/(-1)^a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A179894.P14937325424703513316
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  (n : ℝ) / (-1 : ℝ) ^ (f2 (n - 1))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179894.P14937325424703513316

namespace A179894

/-- `∑[∑[n/(-1)^a(n-1)]]` -/
def P14937325424703513316.Spec : Prop :=
  ∀ n, P14937325424703513316.a n = (A179894 (n + 1) : ℝ)

end A179894

/-! ## A179894.P11036493427909554283

`∑[a(n-2)%3]-(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A179894.P11036493427909554283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) % 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 2))

end

end A179894.P11036493427909554283

namespace A179894

/-- `∑[a(n-2)%3]-(n-a(n-2))` -/
def P11036493427909554283.Spec : Prop :=
  ∀ n, P11036493427909554283.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P17957558962982715883

`a(n-3)+a(n-2)-a(n-1)+9` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A179894.P17957558962982715883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 7] fun n a =>
  a (n - 3) + (a (n - 2) - a (n - 1)) + 9

end

end A179894.P17957558962982715883

namespace A179894

/-- `a(n-3)+a(n-2)-a(n-1)+9` -/
def P17957558962982715883.Spec : Prop :=
  ∀ n, P17957558962982715883.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P10278739241882320940

`abs(3-A184418(n+1))`
-/

namespace A179894.P10278739241882320940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A184418 (n + 1)|

end

end A179894.P10278739241882320940

namespace A179894

/-- `abs(3-A184418(n+1))` -/
def P10278739241882320940.Spec : Prop :=
  ∀ n, P10278739241882320940.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P10872730023729154212

`abs(2-(A080512(n+1)+n))`
-/

namespace A179894.P10872730023729154212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A080512 (n + 1) + (n : ℤ))|

end

end A179894.P10872730023729154212

namespace A179894

/-- `abs(2-(A080512(n+1)+n))` -/
def P10872730023729154212.Spec : Prop :=
  ∀ n, P10872730023729154212.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P8370564076358436608

`abs(2*n-A026741(n+1))+n`
-/

namespace A179894.P8370564076358436608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A026741 (n + 1)| + (n : ℤ)

end

end A179894.P8370564076358436608

namespace A179894

/-- `abs(2*n-A026741(n+1))+n` -/
def P8370564076358436608.Spec : Prop :=
  ∀ n, P8370564076358436608.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P16902237902267714027

`A047219(n+1)-A179820(n)`
-/

namespace A179894.P16902237902267714027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n + 1) - A179820 n

end

end A179894.P16902237902267714027

namespace A179894

/-- `A047219(n+1)-A179820(n)` -/
def P16902237902267714027.Spec : Prop :=
  ∀ n, P16902237902267714027.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P12033109291866476534

`A080476(n+1)-A334320(n)`
-/

namespace A179894.P12033109291866476534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) - A334320 n

end

end A179894.P12033109291866476534

namespace A179894

/-- `A080476(n+1)-A334320(n)` -/
def P12033109291866476534.Spec : Prop :=
  ∀ n, P12033109291866476534.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P16887548254784515062

`A110349(n+1)%A059100(n)`
-/

namespace A179894.P16887548254784515062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110349 (n + 1)) (A059100 n)

end

end A179894.P16887548254784515062

namespace A179894

/-- `A110349(n+1)%A059100(n)` -/
def P16887548254784515062.Spec : Prop :=
  ∀ n, P16887548254784515062.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P13340714908172547474

`A131874(n)%A047385(n+1)`
-/

namespace A179894.P13340714908172547474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131874 n) (A047385 (n + 1))

end

end A179894.P13340714908172547474

namespace A179894

/-- `A131874(n)%A047385(n+1)` -/
def P13340714908172547474.Spec : Prop :=
  ∀ n, P13340714908172547474.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P18293748535250040000

`A276382(n+1)%A271713(n+1)`
-/

namespace A179894.P18293748535250040000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276382 (n + 1)) (A271713 (n + 1))

end

end A179894.P18293748535250040000

namespace A179894

/-- `A276382(n+1)%A271713(n+1)` -/
def P18293748535250040000.Spec : Prop :=
  ∀ n, P18293748535250040000.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P9289379928440006670

`A179207(n+1)-n*A004526(n)`
-/

namespace A179894.P9289379928440006670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179207 (n + 1) - (n : ℤ) * A004526 n

end

end A179894.P9289379928440006670

namespace A179894

/-- `A179207(n+1)-n*A004526(n)` -/
def P9289379928440006670.Spec : Prop :=
  ∀ n, P9289379928440006670.a n = A179894 (n + 1)

end A179894

/-! ## A179894.P5203938572478075002

`A027656(A004273(n)-n)+A004273(n)`
-/

namespace A179894.P5203938572478075002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A004273 n - (n : ℤ)).toNat + A004273 n

end

end A179894.P5203938572478075002

namespace A179894

/-- `A027656(A004273(n)-n)+A004273(n)` -/
def P5203938572478075002.Spec : Prop :=
  ∀ n, P5203938572478075002.a n = A179894 (n + 1)

end A179894

/-!
# A179895: a(n) = smallest number m such that m^2 has exactly n decimal digits n.

The programs for A179895, there is no canonical definition to state claims against.
-/

/-! ## A179895.P1860858073751427718

`sqrt(A109688(n))`
-/

namespace A179895.P1860858073751427718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A109688 n : ℝ)

end

end A179895.P1860858073751427718

/-! ## A179895.P4942661801513040903

`root(A109688(∑{digits}[n, #]), 2)`
-/

namespace A179895.P4942661801513040903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109688 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℝ) ^ (1 / (2 : ℝ))

end

end A179895.P4942661801513040903

/-! ## A179895.P249728580069449587

`root(A109688(n), 2)*A007318(∑[n])`
-/

namespace A179895.P249728580069449587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109688 n : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A179895.P249728580069449587

/-! ## A179895.P13075548848003226693

`root(A109688(n), A000032(C(2, n+2)))`
-/

namespace A179895.P13075548848003226693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109688 n : ℝ) ^ (1 / (A000032 (Nat.choose 2 (n + 2)) : ℝ))

end

end A179895.P13075548848003226693

/-!
# A179896: Sum of the numbers between k := n-th nonprime and 2k (like a jump in a Sieve of Eratosthenes).

The programs for A179896, the canonical program `A179896.P6951967980762549515` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179896 has offset 1).

The definition of A179896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179896.P6951967980762549515

`A045943(A141468(n+2)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179896

/-- `A045943(A141468(n+2)-1)` -/
def P6951967980762549515.Spec : Prop :=
  ∀ n, P6951967980762549515.a n = A179896 (n + 1)

theorem P6951967980762549515.correct : P6951967980762549515.Spec := by
  intro n
  simp only [A179896, Nat.add_sub_cancel]

end A179896

/-! ## A179896.P9742845679325700094

`3*A161777(n+1)`
-/

namespace A179896.P9742845679325700094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161777 (n + 1)

end

end A179896.P9742845679325700094

namespace A179896

/-- `3*A161777(n+1)` -/
def P9742845679325700094.Spec : Prop :=
  ∀ n, P9742845679325700094.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P8766543239984441508

`3*C(A018252(n+1), 2)`
-/

namespace A179896.P8766543239984441508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A018252 (n + 1)).toNat 2

end

end A179896.P8766543239984441508

namespace A179896

/-- `3*C(A018252(n+1), 2)` -/
def P8766543239984441508.Spec : Prop :=
  ∀ n, (P8766543239984441508.a n : ℤ) = A179896 (n + 1)

end A179896

/-! ## A179896.P2707410503158188669

`3*C(∑[A054546(n+1)], 2)`
-/

namespace A179896.P2707410503158188669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A179896.P2707410503158188669

namespace A179896

/-- `3*C(∑[A054546(n+1)], 2)` -/
def P2707410503158188669.Spec : Prop :=
  ∀ n, (P2707410503158188669.a n : ℤ) = A179896 (n + 1)

end A179896

/-! ## A179896.P18181626116991620333

`3*C(comp[A006530(n+1)], 2)`
-/

namespace A179896.P18181626116991620333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A179896.P18181626116991620333

namespace A179896

/-- `3*C(comp[A006530(n+1)], 2)` -/
def P18181626116991620333.Spec : Prop :=
  ∀ n, (P18181626116991620333.a n : ℤ) = A179896 (n + 1)

end A179896

/-! ## A179896.P8344616550816467147

`3*C(comp[A020639(n+1)], 2)`
-/

namespace A179896.P8344616550816467147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A179896.P8344616550816467147

namespace A179896

/-- `3*C(comp[A020639(n+1)], 2)` -/
def P8344616550816467147.Spec : Prop :=
  ∀ n, (P8344616550816467147.a n : ℤ) = A179896 (n + 1)

end A179896

/-! ## A179896.P16729945771726375081

`3*C(comp[A158611(n+2)], 2)`
-/

namespace A179896.P16729945771726375081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A179896.P16729945771726375081

namespace A179896

/-- `3*C(comp[A158611(n+2)], 2)` -/
def P16729945771726375081.Spec : Prop :=
  ∀ n, (P16729945771726375081.a n : ℤ) = A179896 (n + 1)

end A179896

/-! ## A179896.P8154984681546347123

`3*C(comp[record[A000010(n+1)]]+1, 2)`
-/

namespace A179896.P8154984681546347123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) 2

end

end A179896.P8154984681546347123

namespace A179896

/-- `3*C(comp[record[A000010(n+1)]]+1, 2)` -/
def P8154984681546347123.Spec : Prop :=
  ∀ n, (P8154984681546347123.a n : ℤ) = A179896 (n + 1)

end A179896

/-! ## A179896.P6457654534085598323

`3*A000217(comp[A006093(n+1)])`
-/

namespace A179896.P6457654534085598323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A179896.P6457654534085598323

namespace A179896

/-- `3*A000217(comp[A006093(n+1)])` -/
def P6457654534085598323.Spec : Prop :=
  ∀ n, P6457654534085598323.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P9868230844147521244

`3*A000217(A018252(n+1)-1)`
-/

namespace A179896.P9868230844147521244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (A018252 (n + 1) - 1).toNat

end

end A179896.P9868230844147521244

namespace A179896

/-- `3*A000217(A018252(n+1)-1)` -/
def P9868230844147521244.Spec : Prop :=
  ∀ n, P9868230844147521244.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P5302680076979788406

`3*A000217(eq[1, A005171(n+1)])`
-/

namespace A179896.P5302680076979788406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179896.P5302680076979788406

namespace A179896

/-- `3*A000217(eq[1, A005171(n+1)])` -/
def P5302680076979788406.Spec : Prop :=
  ∀ n, P5302680076979788406.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P11480733442494733410

`3*A000217(comp[A000040(n+1)-1])`
-/

namespace A179896.P11480733442494733410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A179896.P11480733442494733410

namespace A179896

/-- `3*A000217(comp[A000040(n+1)-1])` -/
def P11480733442494733410.Spec : Prop :=
  ∀ n, P11480733442494733410.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P10674877668934711417

`3*A000217(comp[A006530(n+2)-1])`
-/

namespace A179896.P10674877668934711417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A179896.P10674877668934711417

namespace A179896

/-- `3*A000217(comp[A006530(n+2)-1])` -/
def P10674877668934711417.Spec : Prop :=
  ∀ n, P10674877668934711417.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P11153731358166591039

`A005448(A018252(n+1))-1`
-/

namespace A179896.P11153731358166591039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (A018252 (n + 1)).toNat - 1

end

end A179896.P11153731358166591039

namespace A179896

/-- `A005448(A018252(n+1))-1` -/
def P11153731358166591039.Spec : Prop :=
  ∀ n, P11153731358166591039.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P11574435813763926936

`A045943(A018252(n+1)-1)`
-/

namespace A179896.P11574435813763926936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (A018252 (n + 1) - 1).toNat

end

end A179896.P11574435813763926936

namespace A179896

/-- `A045943(A018252(n+1)-1)` -/
def P11574435813763926936.Spec : Prop :=
  ∀ n, P11574435813763926936.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P12337438174639760016

`A045943(comp[A006530(n+2)-1])`
-/

namespace A179896.P12337438174639760016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A179896.P12337438174639760016

namespace A179896

/-- `A045943(comp[A006530(n+2)-1])` -/
def P12337438174639760016.Spec : Prop :=
  ∀ n, P12337438174639760016.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P1202633761023957646

`A028896(A018252(n+1)-1)/2`
-/

namespace A179896.P1202633761023957646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028896 (A018252 (n + 1) - 1).toNat : ℚ) / 2

end

end A179896.P1202633761023957646

namespace A179896

/-- `A028896(A018252(n+1)-1)/2` -/
def P1202633761023957646.Spec : Prop :=
  ∀ n, P1202633761023957646.a n = (A179896 (n + 1) : ℚ)

end A179896

/-! ## A179896.P15562145558472931838

`record[A191558(n+1)/2*A008585(n)]`
-/

namespace A179896.P15562145558472931838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / 2 * (A008585 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179896.P15562145558472931838

namespace A179896

/-- `record[A191558(n+1)/2*A008585(n)]` -/
def P15562145558472931838.Spec : Prop :=
  ∀ n, P15562145558472931838.a n = (A179896 (n + 1) : ℚ)

end A179896

/-! ## A179896.P17917553396166095

`A033436(2*A018252(n+1)-1)`
-/

namespace A179896.P17917553396166095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (2 * A018252 (n + 1) - 1).toNat

end

end A179896.P17917553396166095

namespace A179896

/-- `A033436(2*A018252(n+1)-1)` -/
def P17917553396166095.Spec : Prop :=
  ∀ n, P17917553396166095.a n = A179896 (n + 1)

end A179896

/-! ## A179896.P442483694625312697

`A211538(A176393(n+2))`
-/

namespace A179896.P442483694625312697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (A176393 (n + 2)).toNat

end

end A179896.P442483694625312697

namespace A179896

/-- `A211538(A176393(n+2))` -/
def P442483694625312697.Spec : Prop :=
  ∀ n, P442483694625312697.a n = A179896 (n + 1)

end A179896

/-!
# A179897: a(n) = (n^(2*n+1) + 1) / (n+1).

The programs for A179897, the canonical program `A179897.P4511837687092809827` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179897 has offset 0).

The definition of A179897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179897.P4511837687092809827

`(n^(2*n+1)+1)/(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179897

/-- `(n^(2*n+1)+1)/(n+1)` -/
def P4511837687092809827.Spec : Prop :=
  ∀ n, P4511837687092809827.a n = (A179897 n : ℚ)

end A179897

/-! ## A179897.P13594148152163528369

`n*A280797(n)+1`
-/

namespace A179897.P13594148152163528369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A280797 n + 1

end

end A179897.P13594148152163528369

namespace A179897

/-- `n*A280797(n)+1` -/
def P13594148152163528369.Spec : Prop :=
  ∀ n, P13594148152163528369.a n = A179897 n

end A179897

/-! ## A179897.P13195015732846503087

`A062160(∑[10*n+1]-∑[n])`
-/

namespace A179897.P13195015732846503087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062160 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A179897.P13195015732846503087

namespace A179897

/-- `A062160(∑[10*n+1]-∑[n])` -/
def P13195015732846503087.Spec : Prop :=
  ∀ n, P13195015732846503087.a n = A179897 n

end A179897

/-! ## A179897.P7608826681276165443

`A000312(n)²-((n^n)²-1)/(n+1)`
-/

namespace A179897.P7608826681276165443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n ^ 2 : ℚ) - (((n ^ n) ^ 2 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)

end

end A179897.P7608826681276165443

namespace A179897

/-- `A000312(n)²-((n^n)²-1)/(n+1)` -/
def P7608826681276165443.Spec : Prop :=
  ∀ n, P7608826681276165443.a n = (A179897 n : ℚ)

end A179897

/-! ## A179897.P1704443015941095184

`n*A062160(A062725(n))+1`
-/

namespace A179897.P1704443015941095184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062160 (A062725 n).toNat + 1

end

end A179897.P1704443015941095184

namespace A179897

/-- `n*A062160(A062725(n))+1` -/
def P1704443015941095184.Spec : Prop :=
  ∀ n, P1704443015941095184.a n = A179897 n

end A179897

/-!
# A179898: Triangle V(l,p) (l>=0, p=0..l) read by rows: see Formula for definition, see Comments for motivation.

The programs for A179898, there is no canonical definition to state claims against.
-/

/-! ## A179898.P7428666919063010527

`A048766(A053121(n)^5)`
-/

namespace A179898.P7428666919063010527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A053121 n ^ 5).toNat

end

end A179898.P7428666919063010527

/-! ## A179898.P3334996293612787260

`A048766(A322378(n)^5)`
-/

namespace A179898.P3334996293612787260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A322378 n ^ 5).toNat

end

end A179898.P3334996293612787260

/-! ## A179898.P17843293103136888538

`A099174(n)-A185236(A099174(n))`
-/

namespace A179898.P17843293103136888538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n - A185236 (A099174 n).toNat

end

end A179898.P17843293103136888538

/-! ## A179898.P4846915390274790758

`A099174(n)-A240330(A339618(3*(n+1)))`
-/

namespace A179898.P4846915390274790758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n - A240330 (A339618 (3 * (n + 1))).toNat

end

end A179898.P4846915390274790758

/-! ## A179898.P934065055753049332

`A099174(n)-A379668(A080608(n+1))`
-/

namespace A179898.P934065055753049332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n - A379668 (A080608 (n + 1)).toNat

end

end A179898.P934065055753049332

/-!
# A179899: Integers of the form A179896(n)/A141468(n+1).

The programs for A179899, the canonical program `A179899.P8119244184585946797` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179899 has offset 1).

The definition of A179899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179899.P17128565780770118273

`A172048(n+1)-2`
-/

namespace A179899.P17128565780770118273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172048 (n + 1) - 2

end

end A179899.P17128565780770118273

namespace A179899

/-- `A172048(n+1)-2` -/
def P17128565780770118273.Spec : Prop :=
  ∀ n, P17128565780770118273.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P7689909539693132786

`3*A047845(n+1)`
-/

namespace A179899.P7689909539693132786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047845 (n + 1)

end

end A179899.P7689909539693132786

namespace A179899

/-- `3*A047845(n+1)` -/
def P7689909539693132786.Spec : Prop :=
  ∀ n, P7689909539693132786.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P8119244184585946797

`3*eq[0, A101264(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179899

/-- `3*eq[0, A101264(n)]` -/
def P8119244184585946797.Spec : Prop :=
  ∀ n, (P8119244184585946797.a n : ℤ) = A179899 (n + 1)

theorem P8119244184585946797.correct : P8119244184585946797.Spec := by
  intro n
  simp only [A179899, Nat.add_sub_cancel]

end A179899

/-! ## A179899.P4226871939550955226

`3*comp[A005097(n+1)]`
-/

namespace A179899.P4226871939550955226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179899.P4226871939550955226

namespace A179899

/-- `3*comp[A005097(n+1)]` -/
def P4226871939550955226.Spec : Prop :=
  ∀ n, (P4226871939550955226.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P12141099009321467704

`3*comp[A130290(n+1)]`
-/

namespace A179899.P12141099009321467704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179899.P12141099009321467704

namespace A179899

/-- `3*comp[A130290(n+1)]` -/
def P12141099009321467704.Spec : Prop :=
  ∀ n, (P12141099009321467704.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P6371405798454882004

`3*(A104275(n+1)-1)`
-/

namespace A179899.P6371405798454882004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A104275 (n + 1) - 1)

end

end A179899.P6371405798454882004

namespace A179899

/-- `3*(A104275(n+1)-1)` -/
def P6371405798454882004.Spec : Prop :=
  ∀ n, P6371405798454882004.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P1946497344905892830

`3*(A153043(n+1)-2)`
-/

namespace A179899.P1946497344905892830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A153043 (n + 1) - 2)

end

end A179899.P1946497344905892830

namespace A179899

/-- `3*(A153043(n+1)-2)` -/
def P1946497344905892830.Spec : Prop :=
  ∀ n, P1946497344905892830.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P18271513211943560935

`3*(A153044(n+1)-5)`
-/

namespace A179899.P18271513211943560935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A153044 (n + 1) - 5)

end

end A179899.P18271513211943560935

namespace A179899

/-- `3*(A153044(n+1)-5)` -/
def P18271513211943560935.Spec : Prop :=
  ∀ n, P18271513211943560935.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P523192609768256185

`3*comp[A175540(n+1)-n]`
-/

namespace A179899.P523192609768256185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179899.P523192609768256185

namespace A179899

/-- `3*comp[A175540(n+1)-n]` -/
def P523192609768256185.Spec : Prop :=
  ∀ n, (P523192609768256185.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P10347984864629993779

`eq[1, A292438(2*n+1)]*3`
-/

namespace A179899.P10347984864629993779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n * 3

end

end A179899.P10347984864629993779

namespace A179899

/-- `eq[1, A292438(2*n+1)]*3` -/
def P10347984864629993779.Spec : Prop :=
  ∀ n, (P10347984864629993779.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P11488581679088421979

`3*comp[floor(A000040(n+1)/2)]`
-/

namespace A179899.P11488581679088421979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179899.P11488581679088421979

namespace A179899

/-- `3*comp[floor(A000040(n+1)/2)]` -/
def P11488581679088421979.Spec : Prop :=
  ∀ n, (P11488581679088421979.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P4971124493536260061

`3*comp[eq[1, A001222(2*n+1)]]`
-/

namespace A179899.P4971124493536260061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179899.P4971124493536260061

namespace A179899

/-- `3*comp[eq[1, A001222(2*n+1)]]` -/
def P4971124493536260061.Spec : Prop :=
  ∀ n, (P4971124493536260061.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P6580472377171037297

`3*comp[eq[2, A000005(2*n+1)]]`
-/

namespace A179899.P6580472377171037297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179899.P6580472377171037297

namespace A179899

/-- `3*comp[eq[2, A000005(2*n+1)]]` -/
def P6580472377171037297.Spec : Prop :=
  ∀ n, (P6580472377171037297.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P2850898010850569589

`3*lt[A006530(2*n+1), n+2]`
-/

namespace A179899.P2850898010850569589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179899.P2850898010850569589

namespace A179899

/-- `3*lt[A006530(2*n+1), n+2]` -/
def P2850898010850569589.Spec : Prop :=
  ∀ n, (P2850898010850569589.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P11095798999561886795

`3*lt[A020639(2*n+1), n+2]`
-/

namespace A179899.P11095798999561886795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179899.P11095798999561886795

namespace A179899

/-- `3*lt[A020639(2*n+1), n+2]` -/
def P11095798999561886795.Spec : Prop :=
  ∀ n, (P11095798999561886795.a n : ℤ) = A179899 (n + 1)

end A179899

/-! ## A179899.P17752951787526570494

`A014682(A014076(n+1))-2`
-/

namespace A179899.P17752951787526570494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014076 (n + 1)).toNat - 2

end

end A179899.P17752951787526570494

namespace A179899

/-- `A014682(A014076(n+1))-2` -/
def P17752951787526570494.Spec : Prop :=
  ∀ n, P17752951787526570494.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P6267961147187821931

`A014682(record[A171435(2*n+1)])-2`
-/

namespace A179899.P6267961147187821931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A179899.P6267961147187821931

namespace A179899

/-- `A014682(record[A171435(2*n+1)])-2` -/
def P6267961147187821931.Spec : Prop :=
  ∀ n, P6267961147187821931.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P1906926122697822402

`A014076(n+1)+A047845(n+1)-1`
-/

namespace A179899.P1906926122697822402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + (A047845 (n + 1) - 1)

end

end A179899.P1906926122697822402

namespace A179899

/-- `A014076(n+1)+A047845(n+1)-1` -/
def P1906926122697822402.Spec : Prop :=
  ∀ n, P1906926122697822402.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P16721767023634595480

`A014076(n+1)+A104275(n+1)-2`
-/

namespace A179899.P16721767023634595480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + (A104275 (n + 1) - 2)

end

end A179899.P16721767023634595480

namespace A179899

/-- `A014076(n+1)+A104275(n+1)-2` -/
def P16721767023634595480.Spec : Prop :=
  ∀ n, P16721767023634595480.a n = A179899 (n + 1)

end A179899

/-! ## A179899.P3335670313712202081

`A016777(comp[A005097(n+1)])-1`
-/

namespace A179899.P3335670313712202081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A179899.P3335670313712202081

namespace A179899

/-- `A016777(comp[A005097(n+1)])-1` -/
def P3335670313712202081.Spec : Prop :=
  ∀ n, P3335670313712202081.a n = A179899 (n + 1)

end A179899

