import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-! ## A043807.P14067729592779462847

`eq[1, A043530(n+1)]+1`
-/

namespace A043807.P14067729592779462847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043807.P14067729592779462847

/-! ## A043807.P5969833237845341216

`lt[A043555(n+1), 2]+1`
-/

namespace A043807.P5969833237845341216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043807.P5969833237845341216

/-! ## A043807.P17878133853967837484

`A106610(A043816(n+1))`
-/

namespace A043807.P17878133853967837484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A043816 (n + 1)).toNat

end

end A043807.P17878133853967837484

/-!
# A043816: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 10.

The programs for A043816, there is no canonical definition to state claims against.
-/

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

/-! ## A043816.P7059636501991169690

`A048787(A048328(n+1))`
-/

namespace A043816.P7059636501991169690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048787 (A048328 (n + 1)).toNat

end

end A043816.P7059636501991169690

/-! ## A043816.P1863219042985188250

`filter[A048328(n), A168185(#)]`
-/

namespace A043816.P1863219042985188250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A043816.P1863219042985188250

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

/-! ## A043826.P11924308656518971738

`eq[1, A043556(n+1)%3]+1`
-/

namespace A043826.P11924308656518971738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043826.P11924308656518971738

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

/-! ## A043827.P2567056308203916669

`eq[2, A043556(n+1)%3]+1`
-/

namespace A043827.P2567056308203916669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043827.P2567056308203916669

namespace A043827

/-- `eq[2, A043556(n+1)%3]+1` -/
def P2567056308203916669.Spec : Prop :=
  ∀ n, (P2567056308203916669.a n : ℤ) = A043827 (n + 1)

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

/-! ## A043828.P1792156693523460037

`lt[and(3, A043556(n+1)), 1]+1`
-/

namespace A043828.P1792156693523460037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A043556 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043828.P1792156693523460037

namespace A043828

/-- `lt[and(3, A043556(n+1)), 1]+1` -/
def P1792156693523460037.Spec : Prop :=
  ∀ n, (P1792156693523460037.a n : ℤ) = A043828 (n + 1)

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

/-! ## A043828.P11701956515208828800

`A043836(n+1)%A003824(n+1)`
-/

namespace A043828.P11701956515208828800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043836 (n + 1)) (A003824 (n + 1))

end

end A043828.P11701956515208828800

namespace A043828

/-- `A043836(n+1)%A003824(n+1)` -/
def P11701956515208828800.Spec : Prop :=
  ∀ n, P11701956515208828800.a n = A043828 (n + 1)

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

/-! ## A043828.P15456057706061558843

`A043595(n+1)%A077408(n)`
-/

namespace A043828.P15456057706061558843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043595 (n + 1)) (A077408 n)

end

end A043828.P15456057706061558843

namespace A043828

/-- `A043595(n+1)%A077408(n)` -/
def P15456057706061558843.Spec : Prop :=
  ∀ n, P15456057706061558843.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P4472841413939750559

`A043836(n+1)%A077408(n)`
-/

namespace A043828.P4472841413939750559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043836 (n + 1)) (A077408 n)

end

end A043828.P4472841413939750559

namespace A043828

/-- `A043836(n+1)%A077408(n)` -/
def P4472841413939750559.Spec : Prop :=
  ∀ n, P4472841413939750559.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P4641831207904637722

`A043595(n+1)%A033673(n)`
-/

namespace A043828.P4641831207904637722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043595 (n + 1)) (A033673 n)

end

end A043828.P4641831207904637722

namespace A043828

/-- `A043595(n+1)%A033673(n)` -/
def P4641831207904637722.Spec : Prop :=
  ∀ n, P4641831207904637722.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P6565882974552796242

`A043836(n+1)%A033673(n)`
-/

namespace A043828.P6565882974552796242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043836 (n + 1)) (A033673 n)

end

end A043828.P6565882974552796242

namespace A043828

/-- `A043836(n+1)%A033673(n)` -/
def P6565882974552796242.Spec : Prop :=
  ∀ n, P6565882974552796242.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P9656623736800988220

`A043595(n+1)%A006960(n)`
-/

namespace A043828.P9656623736800988220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043595 (n + 1)) (A006960 n)

end

end A043828.P9656623736800988220

namespace A043828

/-- `A043595(n+1)%A006960(n)` -/
def P9656623736800988220.Spec : Prop :=
  ∀ n, P9656623736800988220.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P11627117594740552834

`A043836(n+1)%A006960(n)`
-/

namespace A043828.P11627117594740552834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043836 (n + 1)) (A006960 n)

end

end A043828.P11627117594740552834

namespace A043828

/-- `A043836(n+1)%A006960(n)` -/
def P11627117594740552834.Spec : Prop :=
  ∀ n, P11627117594740552834.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P14998679120754132161

`A043595(n+1)%A003539(n)`
-/

namespace A043828.P14998679120754132161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043595 (n + 1)) (A003539 n)

end

end A043828.P14998679120754132161

namespace A043828

/-- `A043595(n+1)%A003539(n)` -/
def P14998679120754132161.Spec : Prop :=
  ∀ n, P14998679120754132161.a n = A043828 (n + 1)

end A043828

/-! ## A043828.P7494650251615015920

`A043836(n+1)%A003539(n)`
-/

namespace A043828.P7494650251615015920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043836 (n + 1)) (A003539 n)

end

end A043828.P7494650251615015920

namespace A043828

/-- `A043836(n+1)%A003539(n)` -/
def P7494650251615015920.Spec : Prop :=
  ∀ n, P7494650251615015920.a n = A043828 (n + 1)

end A043828

/-!
# A043829: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 4.

The programs for A043829, there is no canonical definition to state claims against.
-/

/-! ## A043829.P6103123892141342172

`∪[A043596(n+1), A043851(n+1)]`
-/

namespace A043829.P6103123892141342172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043829.P6103123892141342172

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

/-! ## A043829.P11609767615608876750

`A048329(A004907(n+2))`
-/

namespace A043829.P11609767615608876750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A004907 (n + 2)).toNat

end

end A043829.P11609767615608876750

/-!
# A043830: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 4.

The programs for A043830, the canonical program `A043830.P1846640742485076920` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043830 has offset 1).

The definition of A043830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043830.P1846640742485076920

`eq[2, A043556(n)%4]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043830

/-- `eq[2, A043556(n)%4]` -/
def P1846640742485076920.Spec : Prop :=
  ∀ n, (P1846640742485076920.a n : ℤ) = A043830 (n + 1)

theorem P1846640742485076920.correct : P1846640742485076920.Spec := by
  intro n
  simp only [A043830, Nat.add_sub_cancel]

end A043830

/-! ## A043830.P4262124143681296753

`eq[2, abs(A043556(n+1)-4)]+1`
-/

namespace A043830.P4262124143681296753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A043556 (n + 1) - 4|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043830.P4262124143681296753

namespace A043830

/-- `eq[2, abs(A043556(n+1)-4)]+1` -/
def P4262124143681296753.Spec : Prop :=
  ∀ n, (P4262124143681296753.a n : ℤ) = A043830 (n + 1)

end A043830

/-! ## A043830.P805419040167356052

`A043860(n+1)%A217795(A250125(3*(n+1)))`
-/

namespace A043830.P805419040167356052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A217795 (A250125 (3 * (n + 1))).toNat)

end

end A043830.P805419040167356052

namespace A043830

/-- `A043860(n+1)%A217795(A250125(3*(n+1)))` -/
def P805419040167356052.Spec : Prop :=
  ∀ n, P805419040167356052.a n = A043830 (n + 1)

end A043830

/-! ## A043830.P5670928860346987785

`A043852(n+1)/A001221(A070934(n))`
-/

namespace A043830.P5670928860346987785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043852 (n + 1) : ℚ) / (A001221 (A070934 n).toNat : ℚ)

end

end A043830.P5670928860346987785

namespace A043830

/-- `A043852(n+1)/A001221(A070934(n))` -/
def P5670928860346987785.Spec : Prop :=
  ∀ n, P5670928860346987785.a n = (A043830 (n + 1) : ℚ)

end A043830

/-! ## A043830.P4813498562240704747

`A043593(n+1)%A330929(A134204(3*(n+1)))`
-/

namespace A043830.P4813498562240704747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A330929 (A134204 (3 * (n + 1))).toNat)

end

end A043830.P4813498562240704747

namespace A043830

/-- `A043593(n+1)%A330929(A134204(3*(n+1)))` -/
def P4813498562240704747.Spec : Prop :=
  ∀ n, P4813498562240704747.a n = A043830 (n + 1)

end A043830

/-! ## A043830.P11965591461373196940

`A043593(n+1)%A002189(n)`
-/

namespace A043830.P11965591461373196940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A002189 n)

end

end A043830.P11965591461373196940

namespace A043830

/-- `A043593(n+1)%A002189(n)` -/
def P11965591461373196940.Spec : Prop :=
  ∀ n, P11965591461373196940.a n = A043830 (n + 1)

end A043830

/-! ## A043830.P6534665040966367184

`A043834(n+1)%A002189(n)`
-/

namespace A043830.P6534665040966367184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043834 (n + 1)) (A002189 n)

end

end A043830.P6534665040966367184

namespace A043830

/-- `A043834(n+1)%A002189(n)` -/
def P6534665040966367184.Spec : Prop :=
  ∀ n, P6534665040966367184.a n = A043830 (n + 1)

end A043830

/-! ## A043830.P5077346664504410924

`A043839(n+1)%A002189(n)`
-/

namespace A043830.P5077346664504410924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043839 (n + 1)) (A002189 n)

end

end A043830.P5077346664504410924

namespace A043830

/-- `A043839(n+1)%A002189(n)` -/
def P5077346664504410924.Spec : Prop :=
  ∀ n, P5077346664504410924.a n = A043830 (n + 1)

end A043830

/-! ## A043830.P14067245905756903034

`A043845(n+1)%A002189(n)`
-/

namespace A043830.P14067245905756903034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043845 (n + 1)) (A002189 n)

end

end A043830.P14067245905756903034

namespace A043830

/-- `A043845(n+1)%A002189(n)` -/
def P14067245905756903034.Spec : Prop :=
  ∀ n, P14067245905756903034.a n = A043830 (n + 1)

end A043830

/-! ## A043830.P10615679586102515685

`A043852(n+1)%A002189(n)`
-/

namespace A043830.P10615679586102515685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A002189 n)

end

end A043830.P10615679586102515685

namespace A043830

/-- `A043852(n+1)%A002189(n)` -/
def P10615679586102515685.Spec : Prop :=
  ∀ n, P10615679586102515685.a n = A043830 (n + 1)

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

/-! ## A043831.P15571908379200273077

`A043594(n+1)%A077408(n)`
-/

namespace A043831.P15571908379200273077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043594 (n + 1)) (A077408 n)

end

end A043831.P15571908379200273077

namespace A043831

/-- `A043594(n+1)%A077408(n)` -/
def P15571908379200273077.Spec : Prop :=
  ∀ n, P15571908379200273077.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P11329802008990460823

`A043835(n+1)%A077408(n)`
-/

namespace A043831.P11329802008990460823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043835 (n + 1)) (A077408 n)

end

end A043831.P11329802008990460823

namespace A043831

/-- `A043835(n+1)%A077408(n)` -/
def P11329802008990460823.Spec : Prop :=
  ∀ n, P11329802008990460823.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P4032190732491224256

`A043840(n+1)%A077408(n)`
-/

namespace A043831.P4032190732491224256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043840 (n + 1)) (A077408 n)

end

end A043831.P4032190732491224256

namespace A043831

/-- `A043840(n+1)%A077408(n)` -/
def P4032190732491224256.Spec : Prop :=
  ∀ n, P4032190732491224256.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P12585410867160478572

`A043846(n+1)%A077408(n)`
-/

namespace A043831.P12585410867160478572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043846 (n + 1)) (A077408 n)

end

end A043831.P12585410867160478572

namespace A043831

/-- `A043846(n+1)%A077408(n)` -/
def P12585410867160478572.Spec : Prop :=
  ∀ n, P12585410867160478572.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P13080844216019047301

`A043853(n+1)%A077408(n)`
-/

namespace A043831.P13080844216019047301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043853 (n + 1)) (A077408 n)

end

end A043831.P13080844216019047301

namespace A043831

/-- `A043853(n+1)%A077408(n)` -/
def P13080844216019047301.Spec : Prop :=
  ∀ n, P13080844216019047301.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P6992019923607423776

`A043861(n+1)%A077408(n)`
-/

namespace A043831.P6992019923607423776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043861 (n + 1)) (A077408 n)

end

end A043831.P6992019923607423776

namespace A043831

/-- `A043861(n+1)%A077408(n)` -/
def P6992019923607423776.Spec : Prop :=
  ∀ n, P6992019923607423776.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P1842150633490406670

`A043870(n+1)%A077408(n)`
-/

namespace A043831.P1842150633490406670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043870 (n + 1)) (A077408 n)

end

end A043831.P1842150633490406670

namespace A043831

/-- `A043870(n+1)%A077408(n)` -/
def P1842150633490406670.Spec : Prop :=
  ∀ n, P1842150633490406670.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P7556908390683065690

`and(A043594(n+1), A107955(n))`
-/

namespace A043831.P7556908390683065690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043594 (n + 1)) (A107955 n)

end

end A043831.P7556908390683065690

namespace A043831

/-- `and(A043594(n+1), A107955(n))` -/
def P7556908390683065690.Spec : Prop :=
  ∀ n, P7556908390683065690.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P4814608921973243575

`and(A043835(n+1), A107955(n))`
-/

namespace A043831.P4814608921973243575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043835 (n + 1)) (A107955 n)

end

end A043831.P4814608921973243575

namespace A043831

/-- `and(A043835(n+1), A107955(n))` -/
def P4814608921973243575.Spec : Prop :=
  ∀ n, P4814608921973243575.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P4452008295895050593

`and(A043840(n+1), A107955(n))`
-/

namespace A043831.P4452008295895050593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043840 (n + 1)) (A107955 n)

end

end A043831.P4452008295895050593

namespace A043831

/-- `and(A043840(n+1), A107955(n))` -/
def P4452008295895050593.Spec : Prop :=
  ∀ n, P4452008295895050593.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P17146099650163683458

`and(A043846(n+1), A107955(n))`
-/

namespace A043831.P17146099650163683458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043846 (n + 1)) (A107955 n)

end

end A043831.P17146099650163683458

namespace A043831

/-- `and(A043846(n+1), A107955(n))` -/
def P17146099650163683458.Spec : Prop :=
  ∀ n, P17146099650163683458.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P10787726539333148129

`and(A043853(n+1), A107955(n))`
-/

namespace A043831.P10787726539333148129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043853 (n + 1)) (A107955 n)

end

end A043831.P10787726539333148129

namespace A043831

/-- `and(A043853(n+1), A107955(n))` -/
def P10787726539333148129.Spec : Prop :=
  ∀ n, P10787726539333148129.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P11476659979909405552

`and(A043861(n+1), A107955(n))`
-/

namespace A043831.P11476659979909405552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043861 (n + 1)) (A107955 n)

end

end A043831.P11476659979909405552

namespace A043831

/-- `and(A043861(n+1), A107955(n))` -/
def P11476659979909405552.Spec : Prop :=
  ∀ n, P11476659979909405552.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P3150718988920664954

`and(A043870(n+1), A107955(n))`
-/

namespace A043831.P3150718988920664954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043870 (n + 1)) (A107955 n)

end

end A043831.P3150718988920664954

namespace A043831

/-- `and(A043870(n+1), A107955(n))` -/
def P3150718988920664954.Spec : Prop :=
  ∀ n, P3150718988920664954.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P17915433380166452639

`A043594(n+1)%A042580(n)`
-/

namespace A043831.P17915433380166452639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043594 (n + 1)) (A042580 n)

end

end A043831.P17915433380166452639

namespace A043831

/-- `A043594(n+1)%A042580(n)` -/
def P17915433380166452639.Spec : Prop :=
  ∀ n, P17915433380166452639.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P15404171341449291132

`A043835(n+1)%A042580(n)`
-/

namespace A043831.P15404171341449291132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043835 (n + 1)) (A042580 n)

end

end A043831.P15404171341449291132

namespace A043831

/-- `A043835(n+1)%A042580(n)` -/
def P15404171341449291132.Spec : Prop :=
  ∀ n, P15404171341449291132.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P15157508148213676328

`A043840(n+1)%A042580(n)`
-/

namespace A043831.P15157508148213676328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043840 (n + 1)) (A042580 n)

end

end A043831.P15157508148213676328

namespace A043831

/-- `A043840(n+1)%A042580(n)` -/
def P15157508148213676328.Spec : Prop :=
  ∀ n, P15157508148213676328.a n = A043831 (n + 1)

end A043831

/-! ## A043831.P1101184678238333712

`A043846(n+1)%A042580(n)`
-/

namespace A043831.P1101184678238333712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043846 (n + 1)) (A042580 n)

end

end A043831.P1101184678238333712

namespace A043831

/-- `A043846(n+1)%A042580(n)` -/
def P1101184678238333712.Spec : Prop :=
  ∀ n, P1101184678238333712.a n = A043831 (n + 1)

end A043831

/-!
# A043833: Numbers k such that number of runs in the base 4 representation of k is congruent to 1 mod 5.

The programs for A043833, there is no canonical definition to state claims against.
-/

/-! ## A043833.P15803447479363564878

`∪[A043597(n+1), A043851(n+1)]`
-/

namespace A043833.P15803447479363564878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043833.P15803447479363564878

/-! ## A043833.P4573701325257076872

`∪[A043597(n+1), A043859(n+1)]`
-/

namespace A043833.P4573701325257076872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043833.P4573701325257076872

/-! ## A043833.P10602077834162642137

`∪[A043597(n+1), A043868(n+1)]`
-/

namespace A043833.P10602077834162642137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043833.P10602077834162642137

/-! ## A043833.P8216641800626140770

`A043838(A187829(n+1))`
-/

namespace A043833.P8216641800626140770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043838 (A187829 (n + 1)).toNat

end

end A043833.P8216641800626140770

/-! ## A043833.P1865004195518120246

`A200322(A043838(n+1))`
-/

namespace A043833.P1865004195518120246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A043838 (n + 1)).toNat

end

end A043833.P1865004195518120246

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

/-! ## A043834.P9918825258125612664

`A331292(A125713(n+1))+A043869(n+1)`
-/

namespace A043834.P9918825258125612664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331292 (A125713 (n + 1)).toNat + A043869 (n + 1)

end

end A043834.P9918825258125612664

/-! ## A043834.P702840022528362167

`A052928(A043845(n+1)+A043845(n+1))/2`
-/

namespace A043834.P702840022528362167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (A043845 (n + 1) + A043845 (n + 1)).toNat : ℚ) / 2

end

end A043834.P702840022528362167

/-! ## A043834.P16369958135195860864

`A043593(n+1)%A048787(A052049(n+1))`
-/

namespace A043834.P16369958135195860864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A048787 (A052049 (n + 1)).toNat)

end

end A043834.P16369958135195860864

/-! ## A043834.P8704211888224875235

`A014306(A000695(2*n+3))*A043852(n+1)`
-/

namespace A043834.P8704211888224875235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A000695 (2 * n + 3)).toNat * A043852 (n + 1)

end

end A043834.P8704211888224875235

/-! ## A043834.P5053514236856128994

`A043869(n+1)+A010051(A001597(3*n+5))`
-/

namespace A043834.P5053514236856128994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (n + 1) + A010051 (A001597 (3 * n + 5)).toNat

end

end A043834.P5053514236856128994

/-! ## A043834.P18138100857857718055

`A043869(n+1)*A226314(A000124(n))`
-/

namespace A043834.P18138100857857718055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (n + 1) * A226314 (A000124 n).toNat

end

end A043834.P18138100857857718055

/-! ## A043834.P7644426336186226864

`A043852(n+1)%A005899(A345891(n+1))`
-/

namespace A043834.P7644426336186226864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A005899 (A345891 (n + 1)).toNat)

end

end A043834.P7644426336186226864

/-!
# A043835: Numbers k such that number of runs in the base 4 representation of k is congruent to 3 mod 5.

The programs for A043835, the canonical program `A043835.P7473383101920435064` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043835 has offset 1).

The definition of A043835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043835.P7170217805646684568

`A043840(n+1)%A014472(n+1)`
-/

namespace A043835.P7170217805646684568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043840 (n + 1)) (A014472 (n + 1))

end

end A043835.P7170217805646684568

namespace A043835

/-- `A043840(n+1)%A014472(n+1)` -/
def P7170217805646684568.Spec : Prop :=
  ∀ n, P7170217805646684568.a n = A043835 (n + 1)

end A043835

/-! ## A043835.P11158864066945322037

`A043846(n+1)%A014472(n+1)`
-/

namespace A043835.P11158864066945322037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043846 (n + 1)) (A014472 (n + 1))

end

end A043835.P11158864066945322037

namespace A043835

/-- `A043846(n+1)%A014472(n+1)` -/
def P11158864066945322037.Spec : Prop :=
  ∀ n, P11158864066945322037.a n = A043835 (n + 1)

end A043835

/-! ## A043835.P15226840177373102184

`A043853(n+1)%A014472(n+1)`
-/

namespace A043835.P15226840177373102184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043853 (n + 1)) (A014472 (n + 1))

end

end A043835.P15226840177373102184

namespace A043835

/-- `A043853(n+1)%A014472(n+1)` -/
def P15226840177373102184.Spec : Prop :=
  ∀ n, P15226840177373102184.a n = A043835 (n + 1)

end A043835

/-! ## A043835.P9508920399003871960

`A043861(n+1)%A014472(n+1)`
-/

namespace A043835.P9508920399003871960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043861 (n + 1)) (A014472 (n + 1))

end

end A043835.P9508920399003871960

namespace A043835

/-- `A043861(n+1)%A014472(n+1)` -/
def P9508920399003871960.Spec : Prop :=
  ∀ n, P9508920399003871960.a n = A043835 (n + 1)

end A043835

/-! ## A043835.P5770574887583952542

`A043870(n+1)%A014472(n+1)`
-/

namespace A043835.P5770574887583952542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043870 (n + 1)) (A014472 (n + 1))

end

end A043835.P5770574887583952542

namespace A043835

/-- `A043870(n+1)%A014472(n+1)` -/
def P5770574887583952542.Spec : Prop :=
  ∀ n, P5770574887583952542.a n = A043835 (n + 1)

end A043835

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

/-! ## A043835.P5294836834900796707

`A252463(2*A043846(n+1))`
-/

namespace A043835.P5294836834900796707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * A043846 (n + 1)).toNat

end

end A043835.P5294836834900796707

namespace A043835

/-- `A252463(2*A043846(n+1))` -/
def P5294836834900796707.Spec : Prop :=
  ∀ n, P5294836834900796707.a n = A043835 (n + 1)

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

/-! ## A043839.P5477742290143452680

`A043845(n+1)%A001358(A043845(n+1))`
-/

namespace A043839.P5477742290143452680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043845 (n + 1)) (A001358 (A043845 (n + 1)).toNat)

end

end A043839.P5477742290143452680

/-! ## A043839.P7917240486461535000

`A043593(n+1)%A256534(A043593(n+1))`
-/

namespace A043839.P7917240486461535000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A256534 (A043593 (n + 1)).toNat)

end

end A043839.P7917240486461535000

/-! ## A043839.P2891911556469709195

`A333806(A005382(n+1))+A043869(n+1)`
-/

namespace A043839.P2891911556469709195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A005382 (n + 1)).toNat + A043869 (n + 1)

end

end A043839.P2891911556469709195

/-! ## A043839.P10942706048872716573

`A043593(n+1)%A010914(n)`
-/

namespace A043839.P10942706048872716573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A010914 n)

end

end A043839.P10942706048872716573

/-! ## A043839.P16843184863507644804

`A043845(n+1)%A010914(n)`
-/

namespace A043839.P16843184863507644804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043845 (n + 1)) (A010914 n)

end

end A043839.P16843184863507644804

/-! ## A043839.P9744926132223571379

`A043852(n+1)%A010914(n)`
-/

namespace A043839.P9744926132223571379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A010914 n)

end

end A043839.P9744926132223571379

/-! ## A043839.P9729343625640232508

`A043860(n+1)%A010914(n)`
-/

namespace A043839.P9729343625640232508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A010914 n)

end

end A043839.P9729343625640232508

/-! ## A043839.P7019250429433167757

`A043869(n+1)%A010914(n)`
-/

namespace A043839.P7019250429433167757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A010914 n)

end

end A043839.P7019250429433167757

/-! ## A043839.P15200047876317698834

`A043869(n+1)*A102627(A000040(n+1))`
-/

namespace A043839.P15200047876317698834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (n + 1) * A102627 (A000040 (n + 1)).toNat

end

end A043839.P15200047876317698834

/-! ## A043839.P503249078455481094

`and(A043593(n+1), A093069(n+1))`
-/

namespace A043839.P503249078455481094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A093069 (n + 1))

end

end A043839.P503249078455481094

/-! ## A043839.P10216961600522180962

`and(A043593(n+1), A093112(n+1))`
-/

namespace A043839.P10216961600522180962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A093112 (n + 1))

end

end A043839.P10216961600522180962

/-! ## A043839.P14869832605544035817

`and(A043845(n+1), A093069(n+1))`
-/

namespace A043839.P14869832605544035817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043845 (n + 1)) (A093069 (n + 1))

end

end A043839.P14869832605544035817

/-! ## A043839.P6668160786825968650

`and(A043852(n+1), A093069(n+1))`
-/

namespace A043839.P6668160786825968650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043852 (n + 1)) (A093069 (n + 1))

end

end A043839.P6668160786825968650

/-! ## A043839.P1731675288051953919

`and(A043860(n+1), A093069(n+1))`
-/

namespace A043839.P1731675288051953919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043860 (n + 1)) (A093069 (n + 1))

end

end A043839.P1731675288051953919

/-! ## A043839.P12887755182184252527

`and(A043869(n+1), A093069(n+1))`
-/

namespace A043839.P12887755182184252527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043869 (n + 1)) (A093069 (n + 1))

end

end A043839.P12887755182184252527

/-! ## A043839.P11068129142704042672

`A043593(n+1)%A002023(n)`
-/

namespace A043839.P11068129142704042672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A002023 n)

end

end A043839.P11068129142704042672

/-! ## A043839.P12678001247626425516

`A043845(n+1)%A002023(n)`
-/

namespace A043839.P12678001247626425516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043845 (n + 1)) (A002023 n)

end

end A043839.P12678001247626425516

/-!
# A043840: Numbers n such that number of runs in the base 4 representation of n is congruent to 3 mod 6.

The programs for A043840, there is no canonical definition to state claims against.
-/

/-! ## A043840.P17973798855900124462

`A091225(A024644(2*(n+2)))+A043853(n+1)`
-/

namespace A043840.P17973798855900124462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A024644 (2 * (n + 2))).toNat + A043853 (n + 1)

end

end A043840.P17973798855900124462

/-! ## A043840.P1813537095269244500

`A091225(A024644(2*(n+2)))+A043861(n+1)`
-/

namespace A043840.P1813537095269244500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A024644 (2 * (n + 2))).toNat + A043861 (n + 1)

end

end A043840.P1813537095269244500

/-!
# A043844: Numbers n such that number of runs in the base 4 representation of n is congruent to 1 mod 7.

The programs for A043844, there is no canonical definition to state claims against.
-/

/-! ## A043844.P2766434512728718616

`∪[A043599(n+1), A043859(n+1)]`
-/

namespace A043844.P2766434512728718616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043844.P2766434512728718616

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

/-! ## A043844.P5744385816939063299

`lt[5*A165012(n), n]`
-/

namespace A043844.P5744385816939063299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A165012 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043844.P5744385816939063299

/-! ## A043844.P14330190398318536143

`lt[A165012(n+1), 1]+1`
-/

namespace A043844.P14330190398318536143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043844.P14330190398318536143

/-! ## A043844.P27945789189245037

`A057889(A043851(n+1))`
-/

namespace A043844.P27945789189245037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A043851 (n + 1)).toNat

end

end A043844.P27945789189245037

/-!
# A043845: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 7.

The programs for A043845, there is no canonical definition to state claims against.
-/

/-! ## A043845.P15092777276617374597

`A043593(n+1)%A033649(n)`
-/

namespace A043845.P15092777276617374597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A033649 n)

end

end A043845.P15092777276617374597

/-! ## A043845.P17830477290390559952

`A043852(n+1)%A033649(n)`
-/

namespace A043845.P17830477290390559952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A033649 n)

end

end A043845.P17830477290390559952

/-! ## A043845.P7074317017793634765

`A043860(n+1)%A033649(n)`
-/

namespace A043845.P7074317017793634765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A033649 n)

end

end A043845.P7074317017793634765

/-! ## A043845.P8221199532410467417

`A043869(n+1)%A033649(n)`
-/

namespace A043845.P8221199532410467417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A033649 n)

end

end A043845.P8221199532410467417

/-! ## A043845.P13906124666743073050

`A043593(n+1)%A014718(n)`
-/

namespace A043845.P13906124666743073050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A014718 n)

end

end A043845.P13906124666743073050

/-! ## A043845.P14724986506259960952

`A043852(n+1)%A014718(n)`
-/

namespace A043845.P14724986506259960952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A014718 n)

end

end A043845.P14724986506259960952

/-! ## A043845.P16651207939340251399

`A043860(n+1)%A014718(n)`
-/

namespace A043845.P16651207939340251399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A014718 n)

end

end A043845.P16651207939340251399

/-! ## A043845.P15694233553156690523

`A043869(n+1)%A014718(n)`
-/

namespace A043845.P15694233553156690523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A014718 n)

end

end A043845.P15694233553156690523

/-! ## A043845.P5226841318114731844

`A043593(n+1)%A006960(n)`
-/

namespace A043845.P5226841318114731844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A006960 n)

end

end A043845.P5226841318114731844

/-! ## A043845.P13348682106582646997

`A043852(n+1)%A006960(n)`
-/

namespace A043845.P13348682106582646997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A006960 n)

end

end A043845.P13348682106582646997

/-! ## A043845.P6933312890279968336

`A043860(n+1)%A006960(n)`
-/

namespace A043845.P6933312890279968336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A006960 n)

end

end A043845.P6933312890279968336

/-! ## A043845.P6286675428816154049

`A043869(n+1)%A006960(n)`
-/

namespace A043845.P6286675428816154049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A006960 n)

end

end A043845.P6286675428816154049

/-! ## A043845.P11438234892953489383

`A043593(n+1)%A005030(n)`
-/

namespace A043845.P11438234892953489383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A005030 n)

end

end A043845.P11438234892953489383

/-! ## A043845.P5497202292943470453

`A043852(n+1)%A005030(n)`
-/

namespace A043845.P5497202292943470453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A005030 n)

end

end A043845.P5497202292943470453

/-! ## A043845.P14238040041450988465

`A043860(n+1)%A005030(n)`
-/

namespace A043845.P14238040041450988465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A005030 n)

end

end A043845.P14238040041450988465

/-! ## A043845.P6407237270827368921

`A043869(n+1)%A005030(n)`
-/

namespace A043845.P6407237270827368921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A005030 n)

end

end A043845.P6407237270827368921

/-! ## A043845.P10588366672099985441

`A043593(n+1)%A003539(n)`
-/

namespace A043845.P10588366672099985441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A003539 n)

end

end A043845.P10588366672099985441

/-! ## A043845.P9823719768010826718

`A043852(n+1)%A003539(n)`
-/

namespace A043845.P9823719768010826718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043852 (n + 1)) (A003539 n)

end

end A043845.P9823719768010826718

/-! ## A043845.P5326341766157100698

`A043860(n+1)%A003539(n)`
-/

namespace A043845.P5326341766157100698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A003539 n)

end

end A043845.P5326341766157100698

/-! ## A043845.P9943217533061897235

`A043869(n+1)%A003539(n)`
-/

namespace A043845.P9943217533061897235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A003539 n)

end

end A043845.P9943217533061897235

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

/-! ## A043851.P14881241489325496558

`A166404(A043859(n+1))`
-/

namespace A043851.P14881241489325496558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A043859 (n + 1)).toNat

end

end A043851.P14881241489325496558

/-! ## A043851.P4305749824122905208

`A166404(A043868(n+1))`
-/

namespace A043851.P4305749824122905208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A043868 (n + 1)).toNat

end

end A043851.P4305749824122905208

/-! ## A043851.P4862940594912044482

`A166404(A048329(n+1))`
-/

namespace A043851.P4862940594912044482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A048329 (n + 1)).toNat

end

end A043851.P4862940594912044482

/-!
# A043852: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 8.

The programs for A043852, there is no canonical definition to state claims against.
-/

/-! ## A043852.P12977711834907211451

`and(A043593(n+1), A107392(n))`
-/

namespace A043852.P12977711834907211451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A107392 n)

end

end A043852.P12977711834907211451

/-! ## A043852.P16482034264686909189

`A043860(and(1, A107392(n))+n)`
-/

namespace A043852.P16482034264686909189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043860 (Int.land 1 (A107392 n) + (n : ℤ)).toNat

end

end A043852.P16482034264686909189

/-! ## A043852.P1236364742526718562

`A043869(and(1, A107392(n))+n)`
-/

namespace A043852.P1236364742526718562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (Int.land 1 (A107392 n) + (n : ℤ)).toNat

end

end A043852.P1236364742526718562

/-! ## A043852.P8160998748663911276

`A043860(and(n-A107392(n), A107392(n)))`
-/

namespace A043852.P8160998748663911276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043860 (Int.land ((n : ℤ) - A107392 n) (A107392 n)).toNat

end

end A043852.P8160998748663911276

/-! ## A043852.P6699289799730625946

`A043869(and(n-A107392(n), A107392(n)))`
-/

namespace A043852.P6699289799730625946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (Int.land ((n : ℤ) - A107392 n) (A107392 n)).toNat

end

end A043852.P6699289799730625946

/-! ## A043852.P10521369651695243220

`A043860(n+1)%A000554(n+4)`
-/

namespace A043852.P10521369651695243220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A000554 (n + 4))

end

end A043852.P10521369651695243220

/-! ## A043852.P5656022561134869588

`A043869(n+1)%A000554(n+4)`
-/

namespace A043852.P5656022561134869588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A000554 (n + 4))

end

end A043852.P5656022561134869588

/-! ## A043852.P3407730930099845502

`A043593(n+1)%A005567(n)`
-/

namespace A043852.P3407730930099845502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A005567 n)

end

end A043852.P3407730930099845502

/-! ## A043852.P14730777778953122327

`A043860(n+1)%A005567(n)`
-/

namespace A043852.P14730777778953122327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A005567 n)

end

end A043852.P14730777778953122327

/-! ## A043852.P2298807775934098583

`A043869(n+1)%A005567(n)`
-/

namespace A043852.P2298807775934098583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A005567 n)

end

end A043852.P2298807775934098583

/-! ## A043852.P2607193175250065065

`and(A043593(n+1), A107953(n))`
-/

namespace A043852.P2607193175250065065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A107953 n)

end

end A043852.P2607193175250065065

/-! ## A043852.P396973721545384178

`A043860(and(1, A107953(n))+n)`
-/

namespace A043852.P396973721545384178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043860 (Int.land 1 (A107953 n) + (n : ℤ)).toNat

end

end A043852.P396973721545384178

/-! ## A043852.P4669675323275289679

`A043869(and(1, A107953(n))+n)`
-/

namespace A043852.P4669675323275289679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (Int.land 1 (A107953 n) + (n : ℤ)).toNat

end

end A043852.P4669675323275289679

/-! ## A043852.P9787908236813073675

`A043860(and(n-A107953(n), A107953(n)))`
-/

namespace A043852.P9787908236813073675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043860 (Int.land ((n : ℤ) - A107953 n) (A107953 n)).toNat

end

end A043852.P9787908236813073675

/-! ## A043852.P9385192585717161786

`A043869(and(n-A107953(n), A107953(n)))`
-/

namespace A043852.P9385192585717161786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043869 (Int.land ((n : ℤ) - A107953 n) (A107953 n)).toNat

end

end A043852.P9385192585717161786

/-! ## A043852.P11751564354380182022

`A043593(n+1)%A001816(n)`
-/

namespace A043852.P11751564354380182022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A001816 n)

end

end A043852.P11751564354380182022

/-! ## A043852.P11658965940255438832

`A043860(n+1)%A001816(n)`
-/

namespace A043852.P11658965940255438832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043860 (n + 1)) (A001816 n)

end

end A043852.P11658965940255438832

/-! ## A043852.P11539829856921129035

`A043869(n+1)%A001816(n)`
-/

namespace A043852.P11539829856921129035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043869 (n + 1)) (A001816 n)

end

end A043852.P11539829856921129035

/-! ## A043852.P6965915262483950233

`and(A043593(n+1), A107954(n))`
-/

namespace A043852.P6965915262483950233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A107954 n)

end

end A043852.P6965915262483950233

/-! ## A043852.P17638843533286962159

`and(A043860(n+1), A107954(n))`
-/

namespace A043852.P17638843533286962159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043860 (n + 1)) (A107954 n)

end

end A043852.P17638843533286962159

/-!
# A043853: Numbers k such that number of runs in the base 4 representation of k is congruent to 3 mod 8.

The programs for A043853, there is no canonical definition to state claims against.
-/

/-! ## A043853.P2415551327252096303

`A043861(n+1)+A000007(A000203(n+1))`
-/

namespace A043853.P2415551327252096303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043861 (n + 1) + A000007 (A000203 (n + 1)).toNat

end

end A043853.P2415551327252096303

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

/-! ## A043859.P6437164452442553240

`∩[A048329(n), A164707(n+1)]`
-/

namespace A043859.P6437164452442553240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043859.P6437164452442553240

/-! ## A043859.P6899920537837977539

`A043868(n+1)*A057427(A193903(2*n+3))`
-/

namespace A043859.P6899920537837977539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1) * A057427 (A193903 (2 * n + 3)).toNat

end

end A043859.P6899920537837977539

/-! ## A043859.P8280532987712729232

`A043868(n+1)%(A019423(n+1)*A193903(2*n+3))`
-/

namespace A043859.P8280532987712729232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043868 (n + 1)) (A019423 (n + 1) * A193903 (2 * n + 3))

end

end A043859.P8280532987712729232

/-! ## A043859.P10086626994137651218

`∩[A032975(n+1), A048329(n)]`
-/

namespace A043859.P10086626994137651218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043859.P10086626994137651218

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

/-! ## A043868.P18201524406425328119

`A000027(A048329(n+1))`
-/

namespace A043868.P18201524406425328119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048329 (n + 1)).toNat

end

end A043868.P18201524406425328119

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

/-! ## A043881.P5717227446459908752

`record[A289831(A043962(n+1))]`
-/

namespace A043881.P5717227446459908752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A043962 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043881.P5717227446459908752

/-!
# A043882: Numbers k such that 0 and 3 occur juxtaposed in the base-4 representation of k but not of k+1.

The programs for A043882, there is no canonical definition to state claims against.
-/

/-! ## A043882.P6098835042683683906

`record[A289831(A043963(n+1))]`
-/

namespace A043882.P6098835042683683906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A043963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043882.P6098835042683683906

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

/-! ## A043884.P8451936451440032766

`A086799(A043104(n+1))`
-/

namespace A043884.P8451936451440032766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043104 (n + 1)).toNat

end

end A043884.P8451936451440032766

/-! ## A043884.P10574244852002233955

`or(A004273(A047535(n+1)), A133181(n+1))`
-/

namespace A043884.P10574244852002233955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A047535 (n + 1)).toNat) (A133181 (n + 1))

end

end A043884.P10574244852002233955

/-! ## A043884.P13985367058741862792

`A309873(A100214(n))+8*n+6`
-/

namespace A043884.P13985367058741862792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A100214 n).toNat + (8 * n + 6 : ℤ)

end

end A043884.P13985367058741862792

/-! ## A043884.P12268323867303653611

`A093051(A043104(n+1)%A194851(n+1))`
-/

namespace A043884.P12268323867303653611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 (Int.tmod (A043104 (n + 1)) (A194851 (n + 1))).toNat

end

end A043884.P12268323867303653611

/-! ## A043884.P14780022929763784587

`A020985(A287492(n))+A017137(n)`
-/

namespace A043884.P14780022929763784587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A287492 n).toNat + A017137 n

end

end A043884.P14780022929763784587

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

/-! ## A043888.P451227421523526291

`A246305(2*n+3)+A128428(A154638(n))`
-/

namespace A043888.P451227421523526291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246305 (2 * n + 3) + A128428 (A154638 n).toNat

end

end A043888.P451227421523526291

/-! ## A043888.P6784794325575086355

`A250120(3*(n+1))-A056239(A249308(n))`
-/

namespace A043888.P6784794325575086355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * (n + 1)) - A056239 (A249308 n).toNat

end

end A043888.P6784794325575086355

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

/-! ## A043898.P524893533351976625

`A339984(n)+A303431(A190518(2*n+3))`
-/

namespace A043898.P524893533351976625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339984 n + A303431 (A190518 (2 * n + 3)).toNat

end

end A043898.P524893533351976625

/-!
# A043899: Numbers k such that 0 and 4 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043899, there is no canonical definition to state claims against.
-/

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

