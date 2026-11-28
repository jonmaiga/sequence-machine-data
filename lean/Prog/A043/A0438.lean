import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
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

/-!
# A043800: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 8.

The programs for A043800, there is no canonical definition to state claims against.
-/

/-! ## A043800.P342416263550026626

`∪[A043590(n+1), A043817(n+1)]`
-/

namespace A043800.P342416263550026626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043800.P342416263550026626

/-!
# A043807: Numbers k such that number of runs in the base 3 representation of k is congruent to 1 mod 9.

The programs for A043807, there is no canonical definition to state claims against.
-/

/-! ## A043807.P17555430553087458368

`lt[A164993(n), atan(n)]`
-/

namespace A043807.P17555430553087458368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A043807.P17555430553087458368

/-! ## A043807.P16682869455481926540

`lt[n*A037897(n), n]`
-/

namespace A043807.P16682869455481926540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037897 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043807.P16682869455481926540

/-! ## A043807.P11631299234282622471

`eq[0, A164993(n+1)]+1`
-/

namespace A043807.P11631299234282622471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043807.P11631299234282622471

/-!
# A043816: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 10.

The programs for A043816, there is no canonical definition to state claims against.
-/

/-! ## A043816.P1905125823037107773

`record[A212906(n+1)%A043589(A043589(n+1))]`
-/

namespace A043816.P1905125823037107773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212906 (n + 1)) (A043589 (A043589 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043816.P1905125823037107773

/-! ## A043816.P5361440037881469182

`record[gcd(n+1, A048787(n+1))]`
-/

namespace A043816.P5361440037881469182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048787 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043816.P5361440037881469182

/-! ## A043816.P10346664227697663007

`A048787(record[3*a(n-2)-(a(n-1)%3-3)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A043816.P10346664227697663007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  3 * f1 (n - 2) - (Int.tmod (f1 (n - 1)) 3 - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043816.P10346664227697663007

/-! ## A043816.P1771556376306334494

`A032924(record[A193903(n)])`
-/

namespace A043816.P1771556376306334494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043816.P1771556376306334494

/-!
# A043817: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 10.

The programs for A043817, there is no canonical definition to state claims against.
-/

/-! ## A043817.P15498737751157269433

`∪[A043582(n+1), A043592(n+1)]`
-/

namespace A043817.P15498737751157269433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043817.P15498737751157269433

/-!
# A043825: Numbers k such that number of runs in the base 4 representation of k is congruent to 0 mod 3.

The programs for A043825, the canonical program `A043825.P15986494036178487183` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043825 has offset 1).

The definition of A043825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043825.P15986494036178487183

`eq[0, A043556(n)%3]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043825

/-- `eq[0, A043556(n)%3]` -/
def P15986494036178487183.Spec : Prop :=
  ∀ n, (P15986494036178487183.a n : ℤ) = A043825 (n + 1)

theorem P15986494036178487183.correct : P15986494036178487183.Spec := by
  intro n
  simp only [A043825, Nat.add_sub_cancel]

end A043825

/-!
# A043826: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 3.

The programs for A043826, there is no canonical definition to state claims against.
-/

/-! ## A043826.P13169999880246372682

`∪[A043595(n+1), A043838(n+1)]`
-/

namespace A043826.P13169999880246372682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043826.P13169999880246372682

/-! ## A043826.P10204374637422925897

`∪[A043836(n+1), A043838(n+1)]`
-/

namespace A043826.P10204374637422925897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043826.P10204374637422925897

/-! ## A043826.P17196754410370905305

`eq[1, A043556(1+n)%3]+1`
-/

namespace A043826.P17196754410370905305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (1 + n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043826.P17196754410370905305

/-! ## A043826.P9147051523093026340

`lt[1, (n+1)*(A043556(n)%3)%2]`
-/

namespace A043826.P9147051523093026340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (Int.tmod (A043556 n) 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043826.P9147051523093026340

/-! ## A043826.P5621160121915098079

`eq[A043556(n)%3, A057427(n)]`
-/

namespace A043826.P5621160121915098079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043826.P5621160121915098079

/-! ## A043826.P5816814922588178238

`comp[n*(A043556(n)%3+1)%2]`
-/

namespace A043826.P5816814922588178238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (Int.tmod (A043556 n) 3 + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A043826.P5816814922588178238

/-! ## A043826.P15973880474738865936

`eq[1, A043562(A007090(n+1))%3]+1`
-/

namespace A043826.P15973880474738865936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A007090 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043826.P15973880474738865936

/-! ## A043826.P11445049159562070174

`eq[A043562(A007090(n))%3, A057427(n)]`
-/

namespace A043826.P11445049159562070174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A007090 n).toNat) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043826.P11445049159562070174

/-!
# A043827: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 3.

The programs for A043827, the canonical program `A043827.P12446963303425026454` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043827 has offset 1).

The definition of A043827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043827.P12446963303425026454

`lt[1, A043556(n)%3]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043827

/-- `lt[1, A043556(n)%3]` -/
def P12446963303425026454.Spec : Prop :=
  ∀ n, (P12446963303425026454.a n : ℤ) = A043827 (n + 1)

theorem P12446963303425026454.correct : P12446963303425026454.Spec := by
  intro n
  simp only [A043827, Nat.add_sub_cancel]

end A043827

/-! ## A043827.P7720572925982915541

`eq[2, A043556(1+n)%3]+1`
-/

namespace A043827.P7720572925982915541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (1 + n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043827.P7720572925982915541

namespace A043827

/-- `eq[2, A043556(1+n)%3]+1` -/
def P7720572925982915541.Spec : Prop :=
  ∀ n, (P7720572925982915541.a n : ℤ) = A043827 (n + 1)

end A043827

/-! ## A043827.P8843711902877359834

`eq[2, A043556(A028310(n))%3]`
-/

namespace A043827.P8843711902877359834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A028310 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043827.P8843711902877359834

namespace A043827

/-- `eq[2, A043556(A028310(n))%3]` -/
def P8843711902877359834.Spec : Prop :=
  ∀ n, (P8843711902877359834.a n : ℤ) = A043827 (n + 1)

end A043827

/-! ## A043827.P15922354618702484456

`eq[2, A043556(A065033(2*n))%3]`
-/

namespace A043827.P15922354618702484456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A065033 (2 * n)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043827.P15922354618702484456

namespace A043827

/-- `eq[2, A043556(A065033(2*n))%3]` -/
def P15922354618702484456.Spec : Prop :=
  ∀ n, (P15922354618702484456.a n : ℤ) = A043827 (n + 1)

end A043827

/-! ## A043827.P2194820443923820809

`eq[2, A043557(A020654(n+1))%3]`
-/

namespace A043827.P2194820443923820809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043557 (A020654 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043827.P2194820443923820809

namespace A043827

/-- `eq[2, A043557(A020654(n+1))%3]` -/
def P2194820443923820809.Spec : Prop :=
  ∀ n, (P2194820443923820809.a n : ℤ) = A043827 (n + 1)

end A043827

/-! ## A043827.P3153170328553135684

`lt[1, A043557(A020654(n+2))%3]+1`
-/

namespace A043827.P3153170328553135684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043557 (A020654 (n + 2)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A043827.P3153170328553135684

namespace A043827

/-- `lt[1, A043557(A020654(n+2))%3]+1` -/
def P3153170328553135684.Spec : Prop :=
  ∀ n, (P3153170328553135684.a n : ℤ) = A043827 (n + 1)

end A043827

/-!
# A043828: Number of runs in the base 4 representation of n is congruent to 0 mod 4.

The programs for A043828, the canonical program `A043828.P14695401919045554271` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043828 has offset 1).

The definition of A043828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043828.P14695401919045554271

`eq[4, A043556(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043828

/-- `eq[4, A043556(n)]` -/
def P14695401919045554271.Spec : Prop :=
  ∀ n, (P14695401919045554271.a n : ℤ) = A043828 (n + 1)

theorem P14695401919045554271.correct : P14695401919045554271.Spec := by
  intro n
  simp only [A043828, Nat.add_sub_cancel]

end A043828

/-! ## A043828.P9309339395384869593

`lt[and(3, A043556(1+n)), 1]+1`
-/

namespace A043828.P9309339395384869593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A043556 (1 + n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043828.P9309339395384869593

namespace A043828

/-- `lt[and(3, A043556(1+n)), 1]+1` -/
def P9309339395384869593.Spec : Prop :=
  ∀ n, (P9309339395384869593.a n : ℤ) = A043828 (n + 1)

end A043828

/-! ## A043828.P6613122086133018347

`eq[4, A160385(A064706(n))]`
-/

namespace A043828.P6613122086133018347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A064706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P6613122086133018347

namespace A043828

/-- `eq[4, A160385(A064706(n))]` -/
def P6613122086133018347.Spec : Prop :=
  ∀ n, (P6613122086133018347.a n : ℤ) = A043828 (n + 1)

end A043828

/-! ## A043828.P3069835185532646804

`eq[4, A043557(A020654(n+1))]`
-/

namespace A043828.P3069835185532646804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A020654 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P3069835185532646804

namespace A043828

/-- `eq[4, A043557(A020654(n+1))]` -/
def P3069835185532646804.Spec : Prop :=
  ∀ n, (P3069835185532646804.a n : ℤ) = A043828 (n + 1)

end A043828

/-! ## A043828.P4231720198429643575

`eq[4, A043557(A023725(n+1))]`
-/

namespace A043828.P4231720198429643575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P4231720198429643575

namespace A043828

/-- `eq[4, A043557(A023725(n+1))]` -/
def P4231720198429643575.Spec : Prop :=
  ∀ n, (P4231720198429643575.a n : ℤ) = A043828 (n + 1)

end A043828

/-! ## A043828.P14520097635260793258

`eq[4, A043557(A023729(n+1))]`
-/

namespace A043828.P14520097635260793258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023729 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P14520097635260793258

namespace A043828

/-- `eq[4, A043557(A023729(n+1))]` -/
def P14520097635260793258.Spec : Prop :=
  ∀ n, (P14520097635260793258.a n : ℤ) = A043828 (n + 1)

end A043828

/-! ## A043828.P15733231686144737974

`eq[2, A043558(A037460(n))-2]`
-/

namespace A043828.P15733231686144737974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037460 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P15733231686144737974

namespace A043828

/-- `eq[2, A043558(A037460(n))-2]` -/
def P15733231686144737974.Spec : Prop :=
  ∀ n, (P15733231686144737974.a n : ℤ) = A043828 (n + 1)

end A043828

/-!
# A043829: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 4.

The programs for A043829, there is no canonical definition to state claims against.
-/

/-! ## A043829.P5292433511375277411

`∪[A043596(1+n), A043851(n+1)]`
-/

namespace A043829.P5292433511375277411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043596 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043829.P5292433511375277411

/-! ## A043829.P1643241187906862405

`∪[A043596(n+1), A043859(n+1)]`
-/

namespace A043829.P1643241187906862405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043829.P1643241187906862405

/-! ## A043829.P12407633821852388845

`∪[A043596(n+1), A043868(n+1)]`
-/

namespace A043829.P12407633821852388845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043829.P12407633821852388845

/-! ## A043829.P11688338124516208728

`A048329(A004896(n+2))`
-/

namespace A043829.P11688338124516208728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A004896 (n + 2)).toNat

end

end A043829.P11688338124516208728

/-! ## A043829.P13330551412033624224

`A297551(∑[n]+1)`
-/

namespace A043829.P13330551412033624224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297551 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A043829.P13330551412033624224

/-!
# A043830: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 4.

The programs for A043830, the canonical program `A043830.P16163392058990007304` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043830 has offset 1).

The definition of A043830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043830.P16163392058990007304

`eq[1, val(A043556(n), 2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043830

/-- `eq[1, val(A043556(n), 2)]` -/
def P16163392058990007304.Spec : Prop :=
  ∀ n, (P16163392058990007304.a n : ℤ) = A043830 (n + 1)

theorem P16163392058990007304.correct : P16163392058990007304.Spec := by
  intro n
  simp only [A043830, Nat.add_sub_cancel]

end A043830

/-! ## A043830.P4646382676845310471

`eq[2, and(3, A043556(n+1))]+1`
-/

namespace A043830.P4646382676845310471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A043556 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043830.P4646382676845310471

namespace A043830

/-- `eq[2, and(3, A043556(n+1))]+1` -/
def P4646382676845310471.Spec : Prop :=
  ∀ n, (P4646382676845310471.a n : ℤ) = A043830 (n + 1)

end A043830

/-! ## A043830.P4593161385697615730

`eq[2, gcd(A043556(n), A062383(n))]`
-/

namespace A043830.P4593161385697615730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043556 n) (A062383 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043830.P4593161385697615730

namespace A043830

/-- `eq[2, gcd(A043556(n), A062383(n))]` -/
def P4593161385697615730.Spec : Prop :=
  ∀ n, (P4593161385697615730.a n : ℤ) = A043830 (n + 1)

end A043830

/-!
# A043831: Numbers k such that number of runs in the base 4 representation of k is congruent to 3 mod 4.

The programs for A043831, the canonical program `A043831.P10100822430041794463` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043831 has offset 1).

The definition of A043831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043831.P10100822430041794463

`lt[2, A043556(n)%4]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043831

/-- `lt[2, A043556(n)%4]` -/
def P10100822430041794463.Spec : Prop :=
  ∀ n, (P10100822430041794463.a n : ℤ) = A043831 (n + 1)

theorem P10100822430041794463.correct : P10100822430041794463.Spec := by
  intro n
  simp only [A043831, Nat.add_sub_cancel]

end A043831

/-! ## A043831.P6168344678346952633

`eq[3, A043556(n+1)%4]+1`
-/

namespace A043831.P6168344678346952633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043831.P6168344678346952633

namespace A043831

/-- `eq[3, A043556(n+1)%4]+1` -/
def P6168344678346952633.Spec : Prop :=
  ∀ n, (P6168344678346952633.a n : ℤ) = A043831 (n + 1)

end A043831

/-! ## A043831.P6078453699418454579

`eq[A043556(n), A216059(n+1)]`
-/

namespace A043831.P6078453699418454579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043831.P6078453699418454579

namespace A043831

/-- `eq[A043556(n), A216059(n+1)]` -/
def P6078453699418454579.Spec : Prop :=
  ∀ n, (P6078453699418454579.a n : ℤ) = A043831 (n + 1)

end A043831

/-!
# A043833: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 5.

The programs for A043833, there is no canonical definition to state claims against.
-/

/-! ## A043833.P15370880385945131138

`∪[A043597(1+n), A043851(n+1)]`
-/

namespace A043833.P15370880385945131138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043597 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043833.P15370880385945131138

/-! ## A043833.P4738750856684268137

`∪[A043597(1+n), A043859(n+1)]`
-/

namespace A043833.P4738750856684268137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043597 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043833.P4738750856684268137

/-! ## A043833.P12272414409339995154

`∪[A043597(1+n), A043868(n+1)]`
-/

namespace A043833.P12272414409339995154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043597 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043833.P12272414409339995154

/-! ## A043833.P10732074760101233171

`A048329(A048340(A048340(A048340(n+1))))`
-/

namespace A043833.P10732074760101233171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A048340 (A048340 (A048340 (n + 1)).toNat).toNat).toNat

end

end A043833.P10732074760101233171

/-!
# A043834: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 5.

The programs for A043834, there is no canonical definition to state claims against.
-/

/-! ## A043834.P11722532729417040389

`∪[A043598(n+1), A043845(n+1)]`
-/

namespace A043834.P11722532729417040389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043834.P11722532729417040389

/-! ## A043834.P5421519892035667245

`∪[A043598(n+1), A043852(n+1)]`
-/

namespace A043834.P5421519892035667245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043834.P5421519892035667245

/-! ## A043834.P17576233711322321619

`∪[A043598(n+1), A043860(n+1)]`
-/

namespace A043834.P17576233711322321619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043834.P17576233711322321619

/-! ## A043834.P7834694070171823973

`∪[A043598(n+1), A043869(n+1)]`
-/

namespace A043834.P7834694070171823973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043834.P7834694070171823973

/-! ## A043834.P18094387847508838571

`eq[2, A043557(A020654(n+1))]`
-/

namespace A043834.P18094387847508838571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A020654 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043834.P18094387847508838571

/-!
# A043835: Numbers k such that number of runs in the base 4 representation of k is congruent to 3 mod 5.

The programs for A043835, the canonical program `A043835.P7473383101920435064` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043835 has offset 1).

The definition of A043835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043835.P7473383101920435064

`eq[3, A043556(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043835

/-- `eq[3, A043556(n)]` -/
def P7473383101920435064.Spec : Prop :=
  ∀ n, (P7473383101920435064.a n : ℤ) = A043835 (n + 1)

theorem P7473383101920435064.correct : P7473383101920435064.Spec := by
  intro n
  simp only [A043835, Nat.add_sub_cancel]

end A043835

/-! ## A043835.P4368798408686384596

`eq[3, A160385(A064706(n))]`
-/

namespace A043835.P4368798408686384596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A064706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043835.P4368798408686384596

namespace A043835

/-- `eq[3, A160385(A064706(n))]` -/
def P4368798408686384596.Spec : Prop :=
  ∀ n, (P4368798408686384596.a n : ℤ) = A043835 (n + 1)

end A043835

/-!
# A043836: Number of runs in the base 4 representation of n is congruent to 4 mod 5.

The programs for A043836, there is no canonical definition to state claims against.
-/

/-! ## A043836.P10356311725206332594

`∩[A043693(n+1), A043826(n+1)]`
-/

namespace A043836.P10356311725206332594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043836.P10356311725206332594

/-!
# A043838: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 6.

The programs for A043838, there is no canonical definition to state claims against.
-/

/-! ## A043838.P608155036863442867

`∪[A043598(n+1), A043851(n+1)]`
-/

namespace A043838.P608155036863442867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043838.P608155036863442867

/-! ## A043838.P896873078112378113

`∪[A043598(n+1), A043859(n+1)]`
-/

namespace A043838.P896873078112378113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043838.P896873078112378113

/-! ## A043838.P11088696298840702422

`∪[A043598(n+1), A043868(n+1)]`
-/

namespace A043838.P11088696298840702422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043838.P11088696298840702422

/-! ## A043838.P5382001126964967736

`∩[A043707(n+1), A043826(n+1)]`
-/

namespace A043838.P5382001126964967736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043838.P5382001126964967736

/-! ## A043838.P10209939145087430421

`lt[1, (n+1)*(1-7%A043556(n))]`
-/

namespace A043838.P10209939145087430421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - Int.tmod 7 (A043556 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043838.P10209939145087430421

/-!
# A043839: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 6.

The programs for A043839, there is no canonical definition to state claims against.
-/

/-! ## A043839.P6188373970939819070

`∪[A043599(n+1), A043852(n+1)]`
-/

namespace A043839.P6188373970939819070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043839.P6188373970939819070

/-! ## A043839.P13669818460325720336

`∪[A043599(n+1), A043860(n+1)]`
-/

namespace A043839.P13669818460325720336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043839.P13669818460325720336

/-! ## A043839.P2301807477907727129

`∪[A043599(n+1), A043869(n+1)]`
-/

namespace A043839.P2301807477907727129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043839.P2301807477907727129

/-! ## A043839.P10022862917220034852

`eq[2, A043556(n)]`
-/

namespace A043839.P10022862917220034852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043839.P10022862917220034852

/-!
# A043844: Numbers n such that number of runs in the base 4 representation of n is congruent to 1 mod 7.

The programs for A043844, there is no canonical definition to state claims against.
-/

/-! ## A043844.P10156807702521170710

`∪[A043599(1+n), A043859(n+1)]`
-/

namespace A043844.P10156807702521170710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043599 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043844.P10156807702521170710

/-! ## A043844.P1036527781881029676

`∪[A043599(n+1), A043868(n+1)]`
-/

namespace A043844.P1036527781881029676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043844.P1036527781881029676

/-!
# A043851: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 8.

The programs for A043851, there is no canonical definition to state claims against.
-/

/-! ## A043851.P7078639306500217467

`∪[A043600(n+1), A043859(n+1)]`
-/

namespace A043851.P7078639306500217467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043851.P7078639306500217467

/-! ## A043851.P8517974419502041519

`∪[A043600(n+1), A043868(n+1)]`
-/

namespace A043851.P8517974419502041519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043851.P8517974419502041519

/-!
# A043859: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 9.

The programs for A043859, there is no canonical definition to state claims against.
-/

/-! ## A043859.P3005937959303872851

`∪[A043601(n+1), A043868(n+1)]`
-/

namespace A043859.P3005937959303872851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043859.P3005937959303872851

/-! ## A043859.P419418329378733186

`∩[A032975(n+1), A140690(n+1)]`
-/

namespace A043859.P419418329378733186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043859.P419418329378733186

/-! ## A043859.P14251970681565997424

`filter[A048329(n), A359550(#)]`
-/

namespace A043859.P14251970681565997424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A043859.P14251970681565997424

/-!
# A043868: Numbers n such that number of runs in the base 4 representation of n is congruent to 1 mod 10.

The programs for A043868, there is no canonical definition to state claims against.
-/

/-! ## A043868.P4647183145289394133

`record[∑[A115638(A002264(n))]]`
-/

namespace A043868.P4647183145289394133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043868.P4647183145289394133

/-! ## A043868.P8704344626485965102

`record[A048329(A005245(n+1))]`
-/

namespace A043868.P8704344626485965102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A005245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043868.P8704344626485965102

/-! ## A043868.P16856169266962101976

`record[A048329(A162618(n+1))]`
-/

namespace A043868.P16856169266962101976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A162618 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043868.P16856169266962101976

/-! ## A043868.P17113348979246972890

`record[A048329(A317746(n+1))]`
-/

namespace A043868.P17113348979246972890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A317746 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043868.P17113348979246972890

/-!
# A043878: Numbers k such that 0 and 2 occur juxtaposed in the base-3 representation of k but not of k+1.

The programs for A043878, there is no canonical definition to state claims against.
-/

/-! ## A043878.P2103957527685571068

`A325426(2*n+4)-A057427(A001867(n))`
-/

namespace A043878.P2103957527685571068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (2 * n + 4) - A057427 (A001867 n).toNat

end

end A043878.P2103957527685571068

/-! ## A043878.P15251786975124867881

`A325426(2*n+4)-A070432(A078057(n))`
-/

namespace A043878.P15251786975124867881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (2 * n + 4) - A070432 (A078057 n).toNat

end

end A043878.P15251786975124867881

/-! ## A043878.P7274703672773385193

`A323206(A240944(n))+A001651(3*n+4)`
-/

namespace A043878.P7274703672773385193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 (A240944 n).toNat + A001651 (3 * n + 4)

end

end A043878.P7274703672773385193

/-! ## A043878.P13080979238080401206

`A325426(2*n+4)-A054977(A319755(n))`
-/

namespace A043878.P13080979238080401206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (2 * n + 4) - A054977 (A319755 n).toNat

end

end A043878.P13080979238080401206

/-! ## A043878.P12828660289636998796

`A325426(2*n+4)-A225595(A186085(n))`
-/

namespace A043878.P12828660289636998796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (2 * n + 4) - A225595 (A186085 n).toNat

end

end A043878.P12828660289636998796

/-!
# A043881: Numbers k such that 0 and 2 occur juxtaposed in the base-4 representation of k but not of k+1.

The programs for A043881, there is no canonical definition to state claims against.
-/

/-! ## A043881.P8168270856027204894

`record[A289831(A043962(1+n))]`
-/

namespace A043881.P8168270856027204894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A043962 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043881.P8168270856027204894

/-!
# A043882: Numbers k such that 0 and 3 occur juxtaposed in the base-4 representation of k but not of k+1.

The programs for A043882, there is no canonical definition to state claims against.
-/

/-! ## A043882.P16851598494669910913

`record[A289831(A043963(1+n))]`
-/

namespace A043882.P16851598494669910913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A043963 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043882.P16851598494669910913

/-! ## A043882.P10323890217047875580

`record[A328749(A043963(n+1)+A043183(n+1))]`
-/

namespace A043882.P10323890217047875580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A043963 (n + 1) + A043183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043882.P10323890217047875580

/-! ## A043882.P1160629983082384244

`A178459(A316223(2*n+5))+A043102(n+1)`
-/

namespace A043882.P1160629983082384244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178459 (A316223 (2 * n + 5)).toNat + A043102 (n + 1)

end

end A043882.P1160629983082384244

/-!
# A043884: Numbers k such that 1 and 3 occur juxtaposed in the base-4 representation of k but not of k+1.

The programs for A043884, there is no canonical definition to state claims against.
-/

/-! ## A043884.P14719772134343851366

`or(A043104(n+1)-1, A043104(n+1))`
-/

namespace A043884.P14719772134343851366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043104 (n + 1) - 1) (A043104 (n + 1))

end

end A043884.P14719772134343851366

/-! ## A043884.P8439620516414355205

`or(A057428(n)+A043104(n+1), A043104(n+1))`
-/

namespace A043884.P8439620516414355205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A043104 (n + 1)) (A043104 (n + 1))

end

end A043884.P8439620516414355205

/-! ## A043884.P5864816013958563684

`A086799(A043104(1+n))`
-/

namespace A043884.P5864816013958563684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043104 (1 + n)).toNat

end

end A043884.P5864816013958563684

/-! ## A043884.P4409280642344157766

`or(or(5, A043104(n+1)), A133181(n+1))`
-/

namespace A043884.P4409280642344157766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 5 (A043104 (n + 1))) (A133181 (n + 1))

end

end A043884.P4409280642344157766

/-! ## A043884.P10574244852002233955

`or(A004273(A047535(n+1)), A133181(n+1))`
-/

namespace A043884.P10574244852002233955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A047535 (n + 1)).toNat) (A133181 (n + 1))

end

end A043884.P10574244852002233955

/-!
# A043887: Numbers k such that 0 and 2 occur juxtaposed in the base-5 representation of k but not of k+1.

The programs for A043887, there is no canonical definition to state claims against.
-/

/-! ## A043887.P2198046101822060988

`or(A001222(A002054(n+1)), A043107(n+1))`
-/

namespace A043887.P2198046101822060988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A002054 (n + 1)).toNat) (A043107 (n + 1))

end

end A043887.P2198046101822060988

/-! ## A043887.P13857585767188540522

`or(A043107(n+1), A306555(A295015(n+1)))`
-/

namespace A043887.P13857585767188540522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043107 (n + 1)) (A306555 (A295015 (n + 1)).toNat)

end

end A043887.P13857585767188540522

/-! ## A043887.P12051804660752970759

`or(A043107(n+1), A048785(A238112(n)))`
-/

namespace A043887.P12051804660752970759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043107 (n + 1)) (A048785 (A238112 n).toNat)

end

end A043887.P12051804660752970759

/-! ## A043887.P746388593217168709

`or(A043107(n+1), A222597(A151288(n)))`
-/

namespace A043887.P746388593217168709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043107 (n + 1)) (A222597 (A151288 n).toNat)

end

end A043887.P746388593217168709

/-!
# A043888: Numbers k such that 0 and 3 occur juxtaposed in the base-5 representation of k but not of k+1.

The programs for A043888, there is no canonical definition to state claims against.
-/

/-! ## A043888.P5567234178954707638

`A301672(3*n+4)-A014710(A268701(n))`
-/

namespace A043888.P5567234178954707638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 (3 * n + 4) - A014710 (A268701 n).toNat

end

end A043888.P5567234178954707638

/-! ## A043888.P5020943551916282976

`A250120(3*(n+1))-comp[A240000(2*n+1)]`
-/

namespace A043888.P5020943551916282976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * (n + 1)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A043888.P5020943551916282976

/-! ## A043888.P13273790727701363200

`A305054(A008514(n))+A016945(2*(n+1))`
-/

namespace A043888.P13273790727701363200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (A008514 n).toNat + A016945 (2 * (n + 1))

end

end A043888.P13273790727701363200

/-! ## A043888.P451227421523526291

`A246305(2*n+3)+A128428(A154638(n))`
-/

namespace A043888.P451227421523526291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246305 (2 * n + 3) + A128428 (A154638 n).toNat

end

end A043888.P451227421523526291

/-!
# A043889: Numbers k such that 0 and 4 occur juxtaposed in the base-5 representation of k but not of k+1.

The programs for A043889, there is no canonical definition to state claims against.
-/

/-! ## A043889.P10522932513480163944

`A043109(n+1)+A028572(A142740(2*(n+2)))`
-/

namespace A043889.P10522932513480163944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043109 (n + 1) + A028572 (A142740 (2 * (n + 2))).toNat

end

end A043889.P10522932513480163944

/-! ## A043889.P9281110728040788798

`A330000(A168670(n+2)+1)`
-/

namespace A043889.P9281110728040788798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330000 (A168670 (n + 2) + 1).toNat

end

end A043889.P9281110728040788798

/-! ## A043889.P10642403944409689597

`A088783(2*(n+1))-A047621(n+1)`
-/

namespace A043889.P10642403944409689597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088783 (2 * (n + 1)) - A047621 (n + 1)

end

end A043889.P10642403944409689597

/-! ## A043889.P12343072396419169381

`A329200(A366958(n+3))+A008589(n)`
-/

namespace A043889.P12343072396419169381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A366958 (n + 3)).toNat + A008589 n

end

end A043889.P12343072396419169381

/-! ## A043889.P4529129521695108662

`A169598(n+2)+A001222(A169305(n+1))`
-/

namespace A043889.P4529129521695108662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 2) + A001222 (A169305 (n + 1)).toNat

end

end A043889.P4529129521695108662

/-!
# A043896: Numbers k such that 0 and 1 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043896, there is no canonical definition to state claims against.
-/

/-! ## A043896.P1520895950997132003

`A043116(n+1)+A005928(A076530(n+1))`
-/

namespace A043896.P1520895950997132003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043116 (n + 1) + A005928 (A076530 (n + 1)).toNat

end

end A043896.P1520895950997132003

/-! ## A043896.P5558627780682294990

`A127093(A237629(n+1))+A043116(n+1)`
-/

namespace A043896.P5558627780682294990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A237629 (n + 1)).toNat + A043116 (n + 1)

end

end A043896.P5558627780682294990

/-!
# A043897: Numbers k such that 0 and 2 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043897, there is no canonical definition to state claims against.
-/

/-! ## A043897.P1065058586477072323

`A335462(A043086(n+1))+A043117(n+1)`
-/

namespace A043897.P1065058586477072323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A043086 (n + 1)).toNat + A043117 (n + 1)

end

end A043897.P1065058586477072323

/-! ## A043897.P1812813758184973475

`A298748(A298748(n+1)+A242776(n+1))`
-/

namespace A043897.P1812813758184973475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (A298748 (n + 1) + A242776 (n + 1)).toNat

end

end A043897.P1812813758184973475

/-!
# A043898: Numbers k such that 0 and 3 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043898, there is no canonical definition to state claims against.
-/

/-! ## A043898.P4143722260107931087

`A102748(A349299(n))+A039295(n+1)`
-/

namespace A043898.P4143722260107931087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102748 (A349299 n).toNat + A039295 (n + 1)

end

end A043898.P4143722260107931087

/-!
# A043899: Numbers k such that 0 and 4 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043899, there is no canonical definition to state claims against.
-/

/-! ## A043899.P4789653504496552931

`A087445(3*n+5)-A371087(A289609(n))`
-/

namespace A043899.P4789653504496552931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (3 * n + 5) - A371087 (A289609 n).toNat

end

end A043899.P4789653504496552931

/-! ## A043899.P6244571961807098752

`A087445(3*n+5)-A071037(A100307(n))`
-/

namespace A043899.P6244571961807098752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (3 * n + 5) - A071037 (A100307 n).toNat

end

end A043899.P6244571961807098752

/-! ## A043899.P2329503329777028663

`A087445(3*n+5)-A357638(A201072(n+4))`
-/

namespace A043899.P2329503329777028663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (3 * n + 5) - A357638 (A201072 (n + 4)).toNat

end

end A043899.P2329503329777028663

/-! ## A043899.P13759100048834091530

`A087445(3*n+5)-A330959(A115216(3*(n+1)))`
-/

namespace A043899.P13759100048834091530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (3 * n + 5) - A330959 (A115216 (3 * (n + 1))).toNat

end

end A043899.P13759100048834091530

/-! ## A043899.P12977515701502879007

`A189685(A052905(n))+A189659(A189678(n+1))`
-/

namespace A043899.P12977515701502879007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189685 (A052905 n).toNat + A189659 (A189678 (n + 1)).toNat

end

end A043899.P12977515701502879007

