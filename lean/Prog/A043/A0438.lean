import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

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

/-! ## A043816.P10014079602709780030

`A048328((n+1)*∏{p}[2^n, #-1])`
-/

namespace A043816.P10014079602709780030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))).toNat

end

end A043816.P10014079602709780030

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
# A043828: 

The programs for A043828, there is no canonical definition to state claims against.
-/

/-! ## A043828.P14695401919045554271

`eq[4, A043556(n)]`
-/

namespace A043828.P14695401919045554271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P14695401919045554271

/-! ## A043828.P10971817548511302293

`filter[A043595(n+1), A043545(#)]`
-/

namespace A043828.P10971817548511302293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A043828.P10971817548511302293

/-! ## A043828.P6201368771647986987

`filter[A043595(n+1), A103673(#)]`
-/

namespace A043828.P6201368771647986987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103673 (f1 j).toNat = 1) n)

end

end A043828.P6201368771647986987

/-! ## A043828.P11399970972368922895

`filter[A043595(n+1), A267442(#)]`
-/

namespace A043828.P11399970972368922895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A043828.P11399970972368922895

/-! ## A043828.P18330679889067928487

`filter[A043595(n+1), A267579(#)]`
-/

namespace A043828.P18330679889067928487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A043828.P18330679889067928487

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

/-! ## A043828.P15456057706061558843

`A043595(n+1)%A077408(n)`
-/

namespace A043828.P15456057706061558843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043595 (n + 1)) (A077408 n)

end

end A043828.P15456057706061558843

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

/-!
# A043831: 

The programs for A043831, there is no canonical definition to state claims against.
-/

/-! ## A043831.P10100822430041794463

`lt[2, A043556(n)%4]`
-/

namespace A043831.P10100822430041794463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043831.P10100822430041794463

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

/-! ## A043831.P15571908379200273077

`A043594(n+1)%A077408(n)`
-/

namespace A043831.P15571908379200273077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043594 (n + 1)) (A077408 n)

end

end A043831.P15571908379200273077

/-! ## A043831.P7556908390683065690

`and(A043594(n+1), A107955(n))`
-/

namespace A043831.P7556908390683065690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043594 (n + 1)) (A107955 n)

end

end A043831.P7556908390683065690

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
# A043835: 

The programs for A043835, there is no canonical definition to state claims against.
-/

/-! ## A043835.P7473383101920435064

`eq[3, A043556(n)]`
-/

namespace A043835.P7473383101920435064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043835.P7473383101920435064

/-! ## A043835.P8059246832951295269

`filter[A043594(n+1), A043545(#)]`
-/

namespace A043835.P8059246832951295269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A043835.P8059246832951295269

/-! ## A043835.P62733698405553650

`filter[A043594(n+1), A267442(#)]`
-/

namespace A043835.P62733698405553650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A043835.P62733698405553650

/-! ## A043835.P8083054940510247678

`filter[A043594(n+1), A267579(#)]`
-/

namespace A043835.P8083054940510247678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A043835.P8083054940510247678

/-!
# A043836: 

The programs for A043836, there is no canonical definition to state claims against.
-/

/-! ## A043836.P11119678751453731489

`filter[A043595(n+1), A347523(#)]`
-/

namespace A043836.P11119678751453731489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A043836.P11119678751453731489

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
# A043839: 

The programs for A043839, there is no canonical definition to state claims against.
-/

/-! ## A043839.P10942706048872716573

`A043593(n+1)%A010914(n)`
-/

namespace A043839.P10942706048872716573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A010914 n)

end

end A043839.P10942706048872716573

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

/-! ## A043839.P6926593417394538961

`and(A043593(n+1), A140529(n))`
-/

namespace A043839.P6926593417394538961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A140529 n)

end

end A043839.P6926593417394538961

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
# A043845: 

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

/-! ## A043851.P2506918245818552089

`∪[A043600(n+1), A048329(n+1)%A171437(2*(n+3))²]`
-/

namespace A043851.P2506918245818552089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048329 (n + 1)) (A171437 (2 * (n + 3)) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043851.P2506918245818552089

/-!
# A043852: 

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

/-! ## A043852.P3407730930099845502

`A043593(n+1)%A005567(n)`
-/

namespace A043852.P3407730930099845502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043593 (n + 1)) (A005567 n)

end

end A043852.P3407730930099845502

/-! ## A043852.P2607193175250065065

`and(A043593(n+1), A107953(n))`
-/

namespace A043852.P2607193175250065065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A107953 n)

end

end A043852.P2607193175250065065

/-! ## A043852.P6965915262483950233

`and(A043593(n+1), A107954(n))`
-/

namespace A043852.P6965915262483950233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A107954 n)

end

end A043852.P6965915262483950233

/-! ## A043852.P6876534882264571973

`and(A043593(n+1), A107955(n))`
-/

namespace A043852.P6876534882264571973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043593 (n + 1)) (A107955 n)

end

end A043852.P6876534882264571973

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

/-! ## A043859.P2885363576704353061

`and(A043868(n+1), A383046(n+3))`
-/

namespace A043859.P2885363576704353061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043868 (n + 1)) (A383046 (n + 3))

end

end A043859.P2885363576704353061

/-! ## A043859.P1835243340953067403

`∩[A032975(n+1), A043868(n+1)]`
-/

namespace A043859.P1835243340953067403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043859.P1835243340953067403

/-! ## A043859.P7805335374568190293

`A052410(A043868(n+1))`
-/

namespace A043859.P7805335374568190293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A043868 (n + 1)).toNat

end

end A043859.P7805335374568190293

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

/-! ## A043888.P14491858742914507600

`A035336(3*n+4)+A008683(A035310(n+2))`
-/

namespace A043888.P14491858742914507600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (3 * n + 4) + A008683 (A035310 (n + 2)).toNat

end

end A043888.P14491858742914507600

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

/-! ## A043889.P4529129521695108662

`A169598(n+2)+A001222(A169305(n+1))`
-/

namespace A043889.P4529129521695108662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 2) + A001222 (A169305 (n + 1)).toNat

end

end A043889.P4529129521695108662

/-! ## A043889.P12864997156884100956

`A169598(n+2)+A001222(A169353(n+1))`
-/

namespace A043889.P12864997156884100956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 2) + A001222 (A169353 (n + 1)).toNat

end

end A043889.P12864997156884100956

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

