import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A387600: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+2,2*k+1).

The programs for A387600, the canonical program `A387600.P15552032445827693754` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387600 has offset 0).

The definition of A387600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387600.P15552032445827693754

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8, a(4)=25, a(5)=62`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387600

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P15552032445827693754.Spec : Prop :=
  ∀ n, P15552032445827693754.a n = A387600 n

theorem P15552032445827693754.correct : P15552032445827693754.Spec := by
  intro n
  simp only [A387600]

end A387600

/-!
# A387601: a(n) = (1/2) * Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+2,2*k+1).

The programs for A387601, the canonical program `A387601.P7322538152632254719` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387601 has offset 0).

The definition of A387601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387601.P7322538152632254719

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=9, a(5)=26, a(6)=63, a(7)=128`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387601

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P7322538152632254719.Spec : Prop :=
  ∀ n, P7322538152632254719.a n = A387601 n

theorem P7322538152632254719.correct : P7322538152632254719.Spec := by
  intro n
  simp only [A387601]

end A387601

/-! ## A387601.P16570512251403872044

`A252463(A387629(n)+A387626(n))`
-/

namespace A387601.P16570512251403872044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A387629 n + A387626 n).toNat

end

end A387601.P16570512251403872044

namespace A387601

/-- `A252463(A387629(n)+A387626(n))` -/
def P16570512251403872044.Spec : Prop :=
  ∀ n, P16570512251403872044.a n = A387601 n

end A387601

/-!
# A387602: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^(n-2*k) * binomial(2*n-4*k+2,2*k+1).

The programs for A387602, there is no canonical definition to state claims against.
-/

/-! ## A387602.P6528018551742242295

`A353846(A029494(n+1))+A113990(n)`
-/

namespace A387602.P6528018551742242295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A029494 (n + 1)).toNat + A113990 n

end

end A387602.P6528018551742242295

/-!
# A387603: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^(n-k) * binomial(2*n-4*k+2,2*k+1).

The programs for A387603, there is no canonical definition to state claims against.
-/

/-! ## A387603.P18303888367084989694

`A173643(A301125(n))`
-/

namespace A387603.P18303888367084989694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173643 (A301125 n).toNat

end

end A387603.P18303888367084989694

/-! ## A387603.P11297367726911978899

`A000079(n)*A074279(A005649(n))`
-/

namespace A387603.P11297367726911978899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A074279 (A005649 n).toNat

end

end A387603.P11297367726911978899

/-!
# A387604: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 3^(n-2*k) * binomial(2*n-4*k+2,2*k+1).

The programs for A387604, there is no canonical definition to state claims against.
-/

/-! ## A387604.P13727011568233807390

`A252754(A002110(n))+A000346(n)`
-/

namespace A387604.P13727011568233807390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A002110 n).toNat + A000346 n

end

end A387604.P13727011568233807390

/-!
# A387611: a(n) = numerator(Integral_{(x,y,z) in R^3 : 0 <= x^2 + y^2 + z^2 <= n^2} (x^2 + y^2) dx dy dz)/Pi.

The programs for A387611, the canonical program `A387611.P17399779197116354603` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387611 has offset 0).

The definition of A387611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387611.P17399779197116354603

`8*n^5/gcd(n, 15)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387611

/-- `8*n^5/gcd(n, 15)` -/
def P17399779197116354603.Spec : Prop :=
  ∀ n, P17399779197116354603.a n = (A387611 n : ℚ)

end A387611

/-!
# A387612: a(n) = denominator(Integral_{(x,y,z) in R^3 : 0 <= x^2 + y^2 + z^2 <= n^2}(x^2 + y^2) dx dy dz).

The programs for A387612, the canonical program `A387612.P380487615845563895` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387612 has offset 0).

The definition of A387612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387612.P380487615845563895

`15/gcd(15, n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387612

/-- `15/gcd(15, n)` -/
def P380487615845563895.Spec : Prop :=
  ∀ n, P380487615845563895.a n = (A387612 n : ℚ)

end A387612

/-!
# A387614: The Pythagoras number of the maximal order of the field Q(sqrt(D)), where D = A005117(n) is the n-th squarefree number.

The programs for A387614, the canonical program `A387614.P8023775704916743095` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387614 has offset 1).

The definition of A387614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387614.P8023775704916743095

`5-ceil(C(5, n)/(n+3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387614

/-- `5-ceil(C(5, n)/(n+3))` -/
def P8023775704916743095.Spec : Prop :=
  ∀ n, P8023775704916743095.a n = A387614 (n + 1)

theorem P8023775704916743095.correct : P8023775704916743095.Spec := by
  intro n
  simp only [A387614, Nat.add_sub_cancel]

end A387614

/-!
# A387615: Table of T(b,n) read by ascending antidiagonals, where T(b,n) is the smallest positive integer k for which every nonzero digit in base b appears in the k first multiples of n for b>=2, n>=1.

The programs for A387615, there is no canonical definition to state claims against.
-/

/-! ## A387615.P17980862839799164062

`A294733(A065640(n+1))`
-/

namespace A387615.P17980862839799164062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (A065640 (n + 1)).toNat

end

end A387615.P17980862839799164062

/-! ## A387615.P6706921089903011607

`A294733(A193551(n+1))`
-/

namespace A387615.P6706921089903011607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (A193551 (n + 1)).toNat

end

end A387615.P6706921089903011607

/-! ## A387615.P14873717417711320216

`A294733(A284099(n+1)+n)`
-/

namespace A387615.P14873717417711320216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294733 (A284099 (n + 1) + (n : ℤ)).toNat

end

end A387615.P14873717417711320216

/-! ## A387615.P5067836247035700605

`A334297(A156920(n))+A025660(n+1)`
-/

namespace A387615.P5067836247035700605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A156920 n).toNat + A025660 (n + 1)

end

end A387615.P5067836247035700605

/-! ## A387615.P4052761844734312038

`A004736(n+1)*A108775(A018008(n))`
-/

namespace A387615.P4052761844734312038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A108775 (A018008 n).toNat

end

end A387615.P4052761844734312038

/-!
# A387618: Smallest positive integer k such that there exists an algebraic integer in Q(sqrt(D)) of norm -k, where D = A005117(n) is the n-th squarefree number.

The programs for A387618, there is no canonical definition to state claims against.
-/

/-! ## A387618.P8779650560824553738

`A356096(A379302(n+4))+A003849(n+3)`
-/

namespace A387618.P8779650560824553738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356096 (A379302 (n + 4)).toNat + A003849 (n + 3)

end

end A387618.P8779650560824553738

/-!
# A387619: Number of ways to tile a 2 X n strip with squares, dominoes, and (straight and bent) trominoes.

The programs for A387619, there is no canonical definition to state claims against.
-/

/-! ## A387619.P3473530279001536371

`A111857(A000917(n))`
-/

namespace A387619.P3473530279001536371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (A000917 n).toNat

end

end A387619.P3473530279001536371

/-!
# A387620: Perfect powers that are neither prime powers nor products of primorials.

The programs for A387620, there is no canonical definition to state claims against.
-/

/-! ## A387620.P8116769972054598558

`∪[A380452(n+1), A380456(n+1)]`
-/

namespace A387620.P8116769972054598558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P8116769972054598558

/-! ## A387620.P13777530670867959735

`∩[A001597(n+1), A369636(n+1)]`
-/

namespace A387620.P13777530670867959735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P13777530670867959735

/-! ## A387620.P7492693924387231836

`∩[A131605(n+1), A369636(n+1)]`
-/

namespace A387620.P7492693924387231836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P7492693924387231836

/-! ## A387620.P17647625761166057069

`∩[A369636(n+1), A396856(n+1)]`
-/

namespace A387620.P17647625761166057069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P17647625761166057069

/-! ## A387620.P13760003944693657232

`∩[A001597(n+1), A367268(n+1)]`
-/

namespace A387620.P13760003944693657232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P13760003944693657232

/-! ## A387620.P7564211435708755472

`∩[A002760(n+1), A367268(n+1)]`
-/

namespace A387620.P7564211435708755472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P7564211435708755472

/-! ## A387620.P2793891565573021409

`∩[A131605(n+1), A367268(n+1)]`
-/

namespace A387620.P2793891565573021409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387620.P2793891565573021409

/-! ## A387620.P8819139886575500125

`filter[A369636(n+1), A075802(#)]`
-/

namespace A387620.P8819139886575500125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A387620.P8819139886575500125

/-!
# A387622: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k,2*k).

The programs for A387622, the canonical program `A387622.P17213284431742214818` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387622 has offset 0).

The definition of A387622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387622.P17213284431742214818

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=13, a(5)=31`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387622

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P17213284431742214818.Spec : Prop :=
  ∀ n, P17213284431742214818.a n = A387622 n

theorem P17213284431742214818.correct : P17213284431742214818.Spec := by
  intro n
  simp only [A387622]

end A387622

/-!
# A387623: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k,2*k).

The programs for A387623, the canonical program `A387623.P16544980671046502623` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387623 has offset 0).

The definition of A387623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387623.P16544980671046502623

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=13, a(6)=31, a(7)=57`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387623

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P16544980671046502623.Spec : Prop :=
  ∀ n, P16544980671046502623.a n = A387623 n

theorem P16544980671046502623.correct : P16544980671046502623.Spec := by
  intro n
  simp only [A387623]

end A387623

/-!
# A387624: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*n-2*k+1,2*k).

The programs for A387624, the canonical program `A387624.P18351110829179417898` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387624 has offset 0).

The definition of A387624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387624.P18351110829179417898

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=21`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387624

/-- `2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P18351110829179417898.Spec : Prop :=
  ∀ n, P18351110829179417898.a n = A387624 n

theorem P18351110829179417898.correct : P18351110829179417898.Spec := by
  intro n
  simp only [A387624]

end A387624

/-! ## A387624.P16573114230241565250

`ogf((1-x+2x^2)/(1-2x-3x^2-4x^3+4x^4))`
-/

namespace A387624.P16573114230241565250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -2, -3, -4, 4] n

end

end A387624.P16573114230241565250

namespace A387624

/-- `ogf((1-x+2x^2)/(1-2x-3x^2-4x^3+4x^4))` -/
def P16573114230241565250.Spec : Prop :=
  ∀ n, P16573114230241565250.a n = A387624 n

end A387624

/-! ## A387624.P17449092096729948492

`A098575(Δ[n²])`
-/

namespace A387624.P17449092096729948492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387624.P17449092096729948492

namespace A387624

/-- `A098575(Δ[n²])` -/
def P17449092096729948492.Spec : Prop :=
  ∀ n, P17449092096729948492.a n = A387624 n

end A387624

/-! ## A387624.P4960875048660742011

`Δ[A387627(n)]-A108480(n+1)`
-/

namespace A387624.P4960875048660742011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A108480 (n + 1)

end

end A387624.P4960875048660742011

namespace A387624

/-- `Δ[A387627(n)]-A108480(n+1)` -/
def P4960875048660742011.Spec : Prop :=
  ∀ n, P4960875048660742011.a n = A387624 n

end A387624

/-!
# A387625: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+1,2*k).

The programs for A387625, the canonical program `A387625.P4687865049303587296` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387625 has offset 0).

The definition of A387625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387625.P4687865049303587296

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=21, a(5)=43`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387625

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P4687865049303587296.Spec : Prop :=
  ∀ n, P4687865049303587296.a n = A387625 n

theorem P4687865049303587296.correct : P4687865049303587296.Spec := by
  intro n
  simp only [A387625]

end A387625

/-!
# A387626: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+1,2*k).

The programs for A387626, the canonical program `A387626.P12143061957277458242` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387626 has offset 0).

The definition of A387626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387626.P12143061957277458242

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=7, a(5)=21, a(6)=43, a(7)=73`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387626

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P12143061957277458242.Spec : Prop :=
  ∀ n, P12143061957277458242.a n = A387626 n

theorem P12143061957277458242.correct : P12143061957277458242.Spec := by
  intro n
  simp only [A387626]

end A387626

/-! ## A387626.P484407123567729160

`A387629(n+1)-(A387629(n)+A387623(n+1))`
-/

namespace A387626.P484407123567729160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387629 (n + 1) - (A387629 n + A387623 (n + 1))

end

end A387626.P484407123567729160

namespace A387626

/-- `A387629(n+1)-(A387629(n)+A387623(n+1))` -/
def P484407123567729160.Spec : Prop :=
  ∀ n, P484407123567729160.a n = A387626 n

end A387626

/-! ## A387626.P14280560485003113725

`A349174(A098576(n))`
-/

namespace A387626.P14280560485003113725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349174 (A098576 n).toNat

end

end A387626.P14280560485003113725

namespace A387626

/-- `A349174(A098576(n))` -/
def P14280560485003113725.Spec : Prop :=
  ∀ n, P14280560485003113725.a n = A387626 n

end A387626

/-!
# A387627: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*n-2*k+1,2*k+1).

The programs for A387627, the canonical program `A387627.P553432912788702254` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387627 has offset 0).

The definition of A387627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387627.P553432912788702254

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=27`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387627

/-- `2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P553432912788702254.Spec : Prop :=
  ∀ n, P553432912788702254.a n = A387627 n

theorem P553432912788702254.correct : P553432912788702254.Spec := by
  intro n
  simp only [A387627]

end A387627

/-! ## A387627.P6633561598921103439

`ogf((1+x-2x^2)/(1-2x-3x^2-4x^3+4x^4))`
-/

namespace A387627.P6633561598921103439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -2, -3, -4, 4] n

end

end A387627.P6633561598921103439

namespace A387627

/-- `ogf((1+x-2x^2)/(1-2x-3x^2-4x^3+4x^4))` -/
def P6633561598921103439.Spec : Prop :=
  ∀ n, P6633561598921103439.a n = A387627 n

end A387627

/-! ## A387627.P17881840125427841351

`record[(-1)^n*∑[A098575(n)]]`
-/

namespace A387627.P17881840125427841351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387627.P17881840125427841351

namespace A387627

/-- `record[(-1)^n*∑[A098575(n)]]` -/
def P17881840125427841351.Spec : Prop :=
  ∀ n, P17881840125427841351.a n = A387627 n

end A387627

/-!
# A387628: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+1,2*k+1).

The programs for A387628, the canonical program `A387628.P12659639395902407937` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387628 has offset 0).

The definition of A387628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387628.P12659639395902407937

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9, a(4)=29, a(5)=81`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387628

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` -/
def P12659639395902407937.Spec : Prop :=
  ∀ n, P12659639395902407937.a n = A387628 n

theorem P12659639395902407937.correct : P12659639395902407937.Spec := by
  intro n
  simp only [A387628]

end A387628

/-! ## A387628.P257661756636576604

`abs(A143109(n+1)-(gcd(n+3, n-1)+2*n)/gcd(n+1, n-3))`
-/

namespace A387628.P257661756636576604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143109 (n + 1) : ℚ) - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) + 2 * n : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) : ℚ)|

end

end A387628.P257661756636576604

namespace A387628

/-- `abs(A143109(n+1)-(gcd(n+3, n-1)+2*n)/gcd(n+1, n-3))` -/
def P257661756636576604.Spec : Prop :=
  ∀ n, P257661756636576604.a n = (A387628 n : ℚ)

end A387628

/-!
# A387629: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+1,2*k+1).

The programs for A387629, the canonical program `A387629.P9691728918316883031` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387629 has offset 0).

The definition of A387629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387629.P9691728918316883031

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11, a(5)=31, a(6)=83, a(7)=183`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387629

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` -/
def P9691728918316883031.Spec : Prop :=
  ∀ n, P9691728918316883031.a n = A387629 n

theorem P9691728918316883031.correct : P9691728918316883031.Spec := by
  intro n
  simp only [A387629]

end A387629

/-!
# A387630: A005117(k) - 1 such that A389412(k) is a record value.

The programs for A387630, there is no canonical definition to state claims against.
-/

/-! ## A387630.P5168361997256273565

`A064915(A008061(n))`
-/

namespace A387630.P5168361997256273565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064915 (A008061 n).toNat

end

end A387630.P5168361997256273565

/-!
# A387631: Sombor energy of the n-triangular honeycomb queen graph divided by sqrt(2).

The programs for A387631, there is no canonical definition to state claims against.
-/

/-! ## A387631.P12574171843564121150

`n*A278063(A167750(n+1))`
-/

namespace A387631.P12574171843564121150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278063 (A167750 (n + 1)).toNat

end

end A387631.P12574171843564121150

/-! ## A387631.P2814459265330594181

`n*A090532(A199876(n+1))`
-/

namespace A387631.P2814459265330594181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090532 (A199876 (n + 1)).toNat

end

end A387631.P2814459265330594181

/-!
# A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

The programs for A387633, the canonical program `A387633.P569874418725638644` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387633 has offset 1).

The definition of A387633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387633.P9602951934277716072

`A000005(n+1)+n*A034444(n+1)`
-/

namespace A387633.P9602951934277716072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A034444 (n + 1)

end

end A387633.P9602951934277716072

namespace A387633

/-- `A000005(n+1)+n*A034444(n+1)` -/
def P9602951934277716072.Spec : Prop :=
  ∀ n, P9602951934277716072.a n = A387633 (n + 1)

end A387633

/-! ## A387633.P569874418725638644

`A000005(n+1)+n*A000005(A007947(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A387633

/-- `A000005(n+1)+n*A000005(A007947(n+1))` -/
def P569874418725638644.Spec : Prop :=
  ∀ n, P569874418725638644.a n = A387633 (n + 1)

theorem P569874418725638644.correct : P569874418725638644.Spec := by
  intro n
  simp only [A387633, Nat.add_sub_cancel]

end A387633

/-! ## A387633.P696851532878600419

`∑{d}[n+1, (n+1)^A008683((n+1)/#)²]`
-/

namespace A387633.P696851532878600419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2 : ℤ)

end

end A387633.P696851532878600419

namespace A387633

/-- `∑{d}[n+1, (n+1)^A008683((n+1)/#)²]` -/
def P696851532878600419.Spec : Prop :=
  ∀ n, P696851532878600419.a n = (A387633 (n + 1) : ℚ)

end A387633

/-! ## A387633.P13911343099443037647

`A345276(n+1)+A001615(n+1)`
-/

namespace A387633.P13911343099443037647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345276 (n + 1) + A001615 (n + 1)

end

end A387633.P13911343099443037647

namespace A387633

/-- `A345276(n+1)+A001615(n+1)` -/
def P13911343099443037647.Spec : Prop :=
  ∀ n, P13911343099443037647.a n = A387633 (n + 1)

end A387633

/-!
# A387634: Indices k such that s(k) is a prime p, s(k-1) = 2*p, and s(k+1) = 3*p, where s = A386482.

The programs for A387634, there is no canonical definition to state claims against.
-/

/-! ## A387634.P427027059842795812

`A387072(A387524(n+1))`
-/

namespace A387634.P427027059842795812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387524 (n + 1)).toNat

end

end A387634.P427027059842795812

/-! ## A387634.P12454669102847711426

`A386483(A000720(A387524(A387544(A387544(n+1)))))`
-/

namespace A387634.P12454669102847711426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386483 (A000720 (A387524 (A387544 (A387544 (n + 1)).toNat).toNat).toNat).toNat

end

end A387634.P12454669102847711426

/-! ## A387634.P5304890903527821806

`A386483(A000720(A387524(A387640(A387640(n+1)))))`
-/

namespace A387634.P5304890903527821806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386483 (A000720 (A387524 (A387640 (A387640 (n + 1)).toNat).toNat).toNat).toNat

end

end A387634.P5304890903527821806

/-!
# A387635: a(n) = Sum_{k=0..n-1} binomial(2*n, k)^2.

The programs for A387635, the canonical program `A387635.P2020936264565243468` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387635 has offset 0).

The definition of A387635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387635.P2020936264565243468

`A036910(n)-A002894(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A387635

/-- `A036910(n)-A002894(n)` -/
def P2020936264565243468.Spec : Prop :=
  ∀ n, P2020936264565243468.a n = A387635 n

theorem P2020936264565243468.correct : P2020936264565243468.Spec := by
  intro n
  simp only [A387635]

end A387635

/-! ## A387635.P14737453894151433710

`(C(4*n, 2*n)-C(2*n, n)²)/2`
-/

namespace A387635.P14737453894151433710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (4 * n) (2 * n) : ℤ) - (Nat.choose (2 * n) n ^ 2 : ℤ) : ℚ) / 2

end

end A387635.P14737453894151433710

namespace A387635

/-- `(C(4*n, 2*n)-C(2*n, n)²)/2` -/
def P14737453894151433710.Spec : Prop :=
  ∀ n, P14737453894151433710.a n = (A387635 n : ℚ)

end A387635

/-! ## A387635.P17575766255192401887

`A058621(2*n)`
-/

namespace A387635.P17575766255192401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058621 (2 * n)

end

end A387635.P17575766255192401887

namespace A387635

/-- `A058621(2*n)` -/
def P17575766255192401887.Spec : Prop :=
  ∀ n, P17575766255192401887.a n = A387635 n

end A387635

/-! ## A387635.P14043213170894852362

`A071801(2*n)/2`
-/

namespace A387635.P14043213170894852362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071801 (2 * n) : ℚ) / 2

end

end A387635.P14043213170894852362

namespace A387635

/-- `A071801(2*n)/2` -/
def P14043213170894852362.Spec : Prop :=
  ∀ n, P14043213170894852362.a n = (A387635 n : ℚ)

end A387635

/-! ## A387635.P14102925674542874586

`A001448(n)-A036910(n)`
-/

namespace A387635.P14102925674542874586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - A036910 n

end

end A387635.P14102925674542874586

namespace A387635

/-- `A001448(n)-A036910(n)` -/
def P14102925674542874586.Spec : Prop :=
  ∀ n, P14102925674542874586.a n = A387635 n

end A387635

/-! ## A387635.P16989290108488052433

`A000984(2*n)-A036910(n)`
-/

namespace A387635.P16989290108488052433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) - A036910 n

end

end A387635.P16989290108488052433

namespace A387635

/-- `A000984(2*n)-A036910(n)` -/
def P16989290108488052433.Spec : Prop :=
  ∀ n, P16989290108488052433.a n = A387635 n

end A387635

/-! ## A387635.P13723506395204390301

`A001448(n)-A277247(2*n)`
-/

namespace A387635.P13723506395204390301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - A277247 (2 * n)

end

end A387635.P13723506395204390301

namespace A387635

/-- `A001448(n)-A277247(2*n)` -/
def P13723506395204390301.Spec : Prop :=
  ∀ n, P13723506395204390301.a n = A387635 n

end A387635

/-! ## A387635.P17929898105634209695

`A000984(2*n)-A277247(2*n)`
-/

namespace A387635.P17929898105634209695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) - A277247 (2 * n)

end

end A387635.P17929898105634209695

namespace A387635

/-- `A000984(2*n)-A277247(2*n)` -/
def P17929898105634209695.Spec : Prop :=
  ∀ n, P17929898105634209695.a n = A387635 n

end A387635

/-!
# A387637: Number of compositions of n such that within in each maximal run of k's, up to k parts within that run can be marked.

The programs for A387637, there is no canonical definition to state claims against.
-/

/-! ## A387637.P15413527130257014481

`A001462(A300913(n)+A005059(n))`
-/

namespace A387637.P15413527130257014481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A300913 n + A005059 n).toNat

end

end A387637.P15413527130257014481

/-! ## A387637.P14377882253376535024

`A001462(A325545(n)+A005059(n))`
-/

namespace A387637.P14377882253376535024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A325545 n + A005059 n).toNat

end

end A387637.P14377882253376535024

/-! ## A387637.P11194893078838331298

`A001462(A326083(n)+A005059(n))`
-/

namespace A387637.P11194893078838331298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A326083 n + A005059 n).toNat

end

end A387637.P11194893078838331298

/-!
# A387639: Expansion of g/(1 + x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A387639, there is no canonical definition to state claims against.
-/

/-! ## A387639.P5227973334946755841

`A339858(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A387639.P5227973334946755841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A339858 (a (n - 1)).toNat

end

end A387639.P5227973334946755841

/-!
# A387640: A387523(n) is the a(n)-th prime number.

The programs for A387640, there is no canonical definition to state claims against.
-/

/-! ## A387640.P1266869897018874559

`A000720(A387523(n+1))`
-/

namespace A387640.P1266869897018874559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A387523 (n + 1)).toNat

end

end A387640.P1266869897018874559

/-! ## A387640.P15348620194184557043

`A003963(2*A387523(n+1))`
-/

namespace A387640.P15348620194184557043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A387523 (n + 1)).toNat

end

end A387640.P15348620194184557043

/-! ## A387640.P8848634966047348747

`A003963(A387523(n+1))%A016789(n)`
-/

namespace A387640.P8848634966047348747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A387523 (n + 1)).toNat) (A016789 n)

end

end A387640.P8848634966047348747

/-! ## A387640.P17039919629118047939

`A003963(A387523(n+1)%A002476(n+1))`
-/

namespace A387640.P17039919629118047939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A387523 (n + 1)) (A002476 (n + 1))).toNat

end

end A387640.P17039919629118047939

/-! ## A387640.P391017365069497804

`A056239(A387523(n+1))%A000040(n+1)`
-/

namespace A387640.P391017365069497804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A387523 (n + 1)).toNat) (A000040 (n + 1))

end

end A387640.P391017365069497804

/-!
# A387641: Sum of larger and smaller term of n-th psi-amicable pair, sorted by the smaller members from A323329.

The programs for A387641, there is no canonical definition to state claims against.
-/

/-! ## A387641.P8515253221639230400

`A323329(n+1)+A323330(n+1)`
-/

namespace A387641.P8515253221639230400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323329 (n + 1) + A323330 (n + 1)

end

end A387641.P8515253221639230400

/-! ## A387641.P16668324797748427543

`A323329(n+1)+A387885(n+1)/A323329(n+1)`
-/

namespace A387641.P16668324797748427543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323329 (n + 1) : ℚ) + (A387885 (n + 1) : ℚ) / (A323329 (n + 1) : ℚ)

end

end A387641.P16668324797748427543

/-! ## A387641.P771015495868746445

`A323330(n+1)+A387885(n+1)/A323330(n+1)`
-/

namespace A387641.P771015495868746445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323330 (n + 1) : ℚ) + (A387885 (n + 1) : ℚ) / (A323330 (n + 1) : ℚ)

end

end A387641.P771015495868746445

/-! ## A387641.P12780447827711773692

`A323329(n+1)+A387643(n+1)+A323329(n+1)`
-/

namespace A387641.P12780447827711773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323329 (n + 1) + (A387643 (n + 1) + A323329 (n + 1))

end

end A387641.P12780447827711773692

/-! ## A387641.P10004763851145127631

`A323330(n+1)+A323330(n+1)-A387643(n+1)`
-/

namespace A387641.P10004763851145127631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) + (A323330 (n + 1) - A387643 (n + 1))

end

end A387641.P10004763851145127631

/-!
# A387643: Difference between larger and smaller term of n-th psi-amicable pair, sorted by the smaller members from A323329.

The programs for A387643, there is no canonical definition to state claims against.
-/

/-! ## A387643.P14961616876851720531

`A323330(n+1)-A323329(n+1)`
-/

namespace A387643.P14961616876851720531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) - A323329 (n + 1)

end

end A387643.P14961616876851720531

/-! ## A387643.P3322483699579261748

`A387641(n+1)%A323329(n+1)`
-/

namespace A387643.P3322483699579261748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387641 (n + 1)) (A323329 (n + 1))

end

end A387643.P3322483699579261748

/-! ## A387643.P387287761310094385

`A323330(n+1)+A323330(n+1)-A387641(n+1)`
-/

namespace A387643.P387287761310094385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323330 (n + 1) + (A323330 (n + 1) - A387641 (n + 1))

end

end A387643.P387287761310094385

/-! ## A387643.P14510013421431235002

`A323330(n+1)-A387885(n+1)/A323330(n+1)`
-/

namespace A387643.P14510013421431235002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323330 (n + 1) : ℚ) - (A387885 (n + 1) : ℚ) / (A323330 (n + 1) : ℚ)

end

end A387643.P14510013421431235002

/-! ## A387643.P15846025093723496958

`A387885(n+1)/A323329(n+1)-A323329(n+1)`
-/

namespace A387643.P15846025093723496958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387885 (n + 1) : ℚ) / (A323329 (n + 1) : ℚ) - (A323329 (n + 1) : ℚ)

end

end A387643.P15846025093723496958

/-!
# A387644: Complement of A045944.

The programs for A387644, the canonical program `A387644.P12775165900026762` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387644 has offset 1).

The definition of A387644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387644.P10579838140881094172

`comp[n*(3*n+2)]`
-/

namespace A387644.P10579838140881094172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A387644.P10579838140881094172

namespace A387644

/-- `comp[n*(3*n+2)]` -/
def P10579838140881094172.Spec : Prop :=
  ∀ n, (P10579838140881094172.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P3683652318780400114

`∪[A184010(n+1), A007980(n)]`
-/

namespace A387644.P3683652318780400114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387644.P3683652318780400114

namespace A387644

/-- `∪[A184010(n+1), A007980(n)]` -/
def P3683652318780400114.Spec : Prop :=
  ∀ n, (P3683652318780400114.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P16335365428918644786

`∪[A184010(n+1), A238377(n)]`
-/

namespace A387644.P16335365428918644786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387644.P16335365428918644786

namespace A387644

/-- `∪[A184010(n+1), A238377(n)]` -/
def P16335365428918644786.Spec : Prop :=
  ∀ n, (P16335365428918644786.a n : ℤ) = A387644 (n + 1)

end A387644

/-! ## A387644.P12775165900026762

`A002264(A092200(A216256(n+1)))+n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A387644

/-- `A002264(A092200(A216256(n+1)))+n` -/
def P12775165900026762.Spec : Prop :=
  ∀ n, P12775165900026762.a n = A387644 (n + 1)

theorem P12775165900026762.correct : P12775165900026762.Spec := by
  intro n
  simp only [A387644, Nat.add_sub_cancel]

end A387644

/-! ## A387644.P12089103069042187791

`eq[A089802(n), A290739(n)]`
-/

namespace A387644.P12089103069042187791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387644.P12089103069042187791

namespace A387644

/-- `eq[A089802(n), A290739(n)]` -/
def P12089103069042187791.Spec : Prop :=
  ∀ n, (P12089103069042187791.a n : ℤ) = A387644 (n + 1)

end A387644

/-!
# A387645: a(n) = m*(m-1)^2/2, where m = ceiling(n^2/2).

The programs for A387645, the canonical program `A387645.P11208717823661659370` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387645 has offset 1).

The definition of A387645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387645.P11208717823661659370

`(2*(n+1)²-3-(-1)^(n+1))²*(2*(n+1)²+1-(-1)^(n+1))/128`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387645

/-- `(2*(n+1)²-3-(-1)^(n+1))²*(2*(n+1)²+1-(-1)^(n+1))/128` -/
def P11208717823661659370.Spec : Prop :=
  ∀ n, P11208717823661659370.a n = (A387645 (n + 1) : ℚ)

end A387645

/-! ## A387645.P1073610776290966673

`A002411(∑[or(1, n)-1]+n)`
-/

namespace A387645.P1073610776290966673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A387645.P1073610776290966673

namespace A387645

/-- `A002411(∑[or(1, n)-1]+n)` -/
def P1073610776290966673.Spec : Prop :=
  ∀ n, P1073610776290966673.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P18152145154603220054

`A002411(and(-2, n²)/2+n)`
-/

namespace A387645.P18152145154603220054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (SequenceMachineLib.roundAway ((Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 2 + (n : ℚ))).toNat

end

end A387645.P18152145154603220054

namespace A387645

/-- `A002411(and(-2, n²)/2+n)` -/
def P18152145154603220054.Spec : Prop :=
  ∀ n, P18152145154603220054.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P663900572635875682

`A002411(ceil((n²-1)/2)+n)`
-/

namespace A387645.P663900572635875682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (⌈((n ^ 2 : ℤ) - 1 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A387645.P663900572635875682

namespace A387645

/-- `A002411(ceil((n²-1)/2)+n)` -/
def P663900572635875682.Spec : Prop :=
  ∀ n, P663900572635875682.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P2008480526636809913

`A028724(A137928(n+1))`
-/

namespace A387645.P2008480526636809913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A137928 (n + 1)).toNat

end

end A387645.P2008480526636809913

namespace A387645

/-- `A028724(A137928(n+1))` -/
def P2008480526636809913.Spec : Prop :=
  ∀ n, P2008480526636809913.a n = A387645 (n + 1)

end A387645

/-! ## A387645.P9765704085263548235

`A188067(A120413(n+1))`
-/

namespace A387645.P9765704085263548235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A120413 (n + 1)).toNat

end

end A387645.P9765704085263548235

namespace A387645

/-- `A188067(A120413(n+1))` -/
def P9765704085263548235.Spec : Prop :=
  ∀ n, P9765704085263548235.a n = A387645 (n + 1)

end A387645

/-!
# A387646: Characteristic function of A000537.

The programs for A387646, the canonical program `A387646.P8127621791678997301` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387646 has offset 0).

The definition of A387646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387646.P8127621791678997301

`char[∑[n]²]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387646

/-- `char[∑[n]²]` -/
def P8127621791678997301.Spec : Prop :=
  ∀ n, (P8127621791678997301.a n : ℤ) = A387646 n

theorem P8127621791678997301.correct : P8127621791678997301.Spec := by
  intro n
  simp only [A387646]

end A387646

/-! ## A387646.P17210190786375252495

`and(9, char[∑[n^3]])`
-/

namespace A387646.P17210190786375252495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 9 (if ∃ j, f1 j = n then 1 else 0)

end

end A387646.P17210190786375252495

namespace A387646

/-- `and(9, char[∑[n^3]])` -/
def P17210190786375252495.Spec : Prop :=
  ∀ n, (P17210190786375252495.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P18179853300858272519

`ceil(char[C(n, 2)²]/6)`
-/

namespace A387646.P18179853300858272519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 6⌉

end

end A387646.P18179853300858272519

namespace A387646

/-- `ceil(char[C(n, 2)²]/6)` -/
def P18179853300858272519.Spec : Prop :=
  ∀ n, P18179853300858272519.a n = A387646 n

end A387646

/-! ## A387646.P11425173594984105708

`C(char[∑[n^3]]+1, 2)`
-/

namespace A387646.P11425173594984105708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) 2

end

end A387646.P11425173594984105708

namespace A387646

/-- `C(char[∑[n^3]]+1, 2)` -/
def P11425173594984105708.Spec : Prop :=
  ∀ n, (P11425173594984105708.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P16555399878486304528

`log2(char[A000537(n)]+1)`
-/

namespace A387646.P16555399878486304528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℝ)

end

end A387646.P16555399878486304528

namespace A387646

/-- `log2(char[A000537(n)]+1)` -/
def P16555399878486304528.Spec : Prop :=
  ∀ n, P16555399878486304528.a n = (A387646 n : ℝ)

end A387646

/-! ## A387646.P17149166310472980514

`lcm(A014438(n), A291147(n))`
-/

namespace A387646.P17149166310472980514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014438 n) (A291147 n)

end

end A387646.P17149166310472980514

namespace A387646

/-- `lcm(A014438(n), A291147(n))` -/
def P17149166310472980514.Spec : Prop :=
  ∀ n, (P17149166310472980514.a n : ℤ) = A387646 n

end A387646

/-! ## A387646.P15726261059110088780

`A025446(A076449(n))`
-/

namespace A387646.P15726261059110088780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (A076449 n).toNat

end

end A387646.P15726261059110088780

namespace A387646

/-- `A025446(A076449(n))` -/
def P15726261059110088780.Spec : Prop :=
  ∀ n, P15726261059110088780.a n = A387646 n

end A387646

/-! ## A387646.P3628411631335387084

`A130093(A008207(n))`
-/

namespace A387646.P3628411631335387084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130093 (A008207 n).toNat

end

end A387646.P3628411631335387084

namespace A387646

/-- `A130093(A008207(n))` -/
def P3628411631335387084.Spec : Prop :=
  ∀ n, P3628411631335387084.a n = A387646 n

end A387646

/-! ## A387646.P3239425014674930400

`A010052(n*A386824(n+1))`
-/

namespace A387646.P3239425014674930400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * A386824 (n + 1)).toNat

end

end A387646.P3239425014674930400

namespace A387646

/-- `A010052(n*A386824(n+1))` -/
def P3239425014674930400.Spec : Prop :=
  ∀ n, P3239425014674930400.a n = A387646 n

end A387646

/-!
# A387647: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k,2*n-4*k).

The programs for A387647, the canonical program `A387647.P18070227687903299509` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387647 has offset 0).

The definition of A387647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387647.P18070227687903299509

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=1, a(5)=12`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387647

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P18070227687903299509.Spec : Prop :=
  ∀ n, P18070227687903299509.a n = A387647 n

theorem P18070227687903299509.correct : P18070227687903299509.Spec := by
  intro n
  simp only [A387647]

end A387647

/-!
# A387648: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k,2*n-6*k).

The programs for A387648, the canonical program `A387648.P14380713438877395612` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387648 has offset 0).

The definition of A387648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387648.P14380713438877395612

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=0, a(6)=1, a(7)=12`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387648

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P14380713438877395612.Spec : Prop :=
  ∀ n, P14380713438877395612.a n = A387648 n

theorem P14380713438877395612.correct : P14380713438877395612.Spec := by
  intro n
  simp only [A387648]

end A387648

/-!
# A387649: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+1,2*n-4*k).

The programs for A387649, the canonical program `A387649.P14837382352768733732` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387649 has offset 0).

The definition of A387649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387649.P14837382352768733732

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6, a(4)=1, a(5)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387649

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P14837382352768733732.Spec : Prop :=
  ∀ n, P14837382352768733732.a n = A387649 n

theorem P14837382352768733732.correct : P14837382352768733732.Spec := by
  intro n
  simp only [A387649]

end A387649

/-!
# A387650: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+1,2*n-6*k).

The programs for A387650, the canonical program `A387650.P16435050881725697743` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387650 has offset 0).

The definition of A387650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387650.P16435050881725697743

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=6, a(5)=0, a(6)=1, a(7)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387650

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P16435050881725697743.Spec : Prop :=
  ∀ n, P16435050881725697743.a n = A387650 n

theorem P16435050881725697743.correct : P16435050881725697743.Spec := by
  intro n
  simp only [A387650]

end A387650

/-!
# A387651: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+1,2*n-4*k+1).

The programs for A387651, the canonical program `A387651.P1240963754905520773` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387651 has offset 0).

The definition of A387651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387651.P1240963754905520773

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=5, a(5)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387651

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P1240963754905520773.Spec : Prop :=
  ∀ n, P1240963754905520773.a n = A387651 n

theorem P1240963754905520773.correct : P1240963754905520773.Spec := by
  intro n
  simp only [A387651]

end A387651

/-!
# A387652: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+1,2*n-6*k+1).

The programs for A387652, the canonical program `A387652.P42630545566347521` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387652 has offset 0).

The definition of A387652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387652.P42630545566347521

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=2, a(5)=0, a(6)=5, a(7)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387652

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P42630545566347521.Spec : Prop :=
  ∀ n, P42630545566347521.a n = A387652 n

theorem P42630545566347521.correct : P42630545566347521.Spec := by
  intro n
  simp only [A387652]

end A387652

/-!
# A387654: Numbers k such that each of k and k+1 is either a practical number (A005153) or an almost practical number (A174533).

The programs for A387654, there is no canonical definition to state claims against.
-/

/-! ## A387654.P906130487176336204

`filter[A103289(n+1), A070950(#)]`
-/

namespace A387654.P906130487176336204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070950 (f1 j).toNat = 1) n)

end

end A387654.P906130487176336204

/-!
# A387655: a(n) = numerator(n^3/3).

The programs for A387655, the canonical program `A387655.P7937086130713726409` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387655 has offset 0).

The definition of A387655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387655.P13867197604084018798

`lcm(3, n^3)/3`
-/

namespace A387655.P13867197604084018798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n ^ 3) : ℚ) / 3

end

end A387655.P13867197604084018798

namespace A387655

/-- `lcm(3, n^3)/3` -/
def P13867197604084018798.Spec : Prop :=
  ∀ n, P13867197604084018798.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P3979776200335204405

`n^3/gcd(3, n)`
-/

namespace A387655.P3979776200335204405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A387655.P3979776200335204405

namespace A387655

/-- `n^3/gcd(3, n)` -/
def P3979776200335204405.Spec : Prop :=
  ∀ n, P3979776200335204405.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P14371514713078264538

`lcm(n, n+3)/(n+3)*n²`
-/

namespace A387655.P14371514713078264538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 3) : ℚ) / (n + 3 : ℚ) * (n ^ 2 : ℚ)

end

end A387655.P14371514713078264538

namespace A387655

/-- `lcm(n, n+3)/(n+3)*n²` -/
def P14371514713078264538.Spec : Prop :=
  ∀ n, P14371514713078264538.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P7937086130713726409

`n²*gcd(2*n, C(2*n+1, 3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387655

/-- `n²*gcd(2*n, C(2*n+1, 3))` -/
def P7937086130713726409.Spec : Prop :=
  ∀ n, (P7937086130713726409.a n : ℤ) = A387655 n

theorem P7937086130713726409.correct : P7937086130713726409.Spec := by
  intro n
  simp only [A387655]

end A387655

/-! ## A387655.P3016150134408394335

`n*A046162(n+1)`
-/

namespace A387655.P3016150134408394335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046162 (n + 1)

end

end A387655.P3016150134408394335

namespace A387655

/-- `n*A046162(n+1)` -/
def P3016150134408394335.Spec : Prop :=
  ∀ n, P3016150134408394335.a n = A387655 n

end A387655

/-! ## A387655.P11791865096922952203

`n/4*A147560(n)`
-/

namespace A387655.P11791865096922952203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A147560 n : ℚ)

end

end A387655.P11791865096922952203

namespace A387655

/-- `n/4*A147560(n)` -/
def P11791865096922952203.Spec : Prop :=
  ∀ n, P11791865096922952203.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P8413693262037030594

`n^3/A109007(n)`
-/

namespace A387655.P8413693262037030594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / (A109007 n : ℚ)

end

end A387655.P8413693262037030594

namespace A387655

/-- `n^3/A109007(n)` -/
def P8413693262037030594.Spec : Prop :=
  ∀ n, P8413693262037030594.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P17195049908026777800

`n*n*A051176(n)`
-/

namespace A387655.P17195049908026777800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A051176 n)

end

end A387655.P17195049908026777800

namespace A387655

/-- `n*n*A051176(n)` -/
def P17195049908026777800.Spec : Prop :=
  ∀ n, P17195049908026777800.a n = A387655 n

end A387655

/-! ## A387655.P5562699030533354449

`A000290(n)*A051176(n)`
-/

namespace A387655.P5562699030533354449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A051176 n

end

end A387655.P5562699030533354449

namespace A387655

/-- `A000290(n)*A051176(n)` -/
def P5562699030533354449.Spec : Prop :=
  ∀ n, P5562699030533354449.a n = A387655 n

end A387655

/-! ## A387655.P13197854409013463261

`A051176(n)*A253909(n)`
-/

namespace A387655.P13197854409013463261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n * A253909 n

end

end A387655.P13197854409013463261

namespace A387655

/-- `A051176(n)*A253909(n)` -/
def P13197854409013463261.Spec : Prop :=
  ∀ n, P13197854409013463261.a n = A387655 n

end A387655

/-! ## A387655.P15088120305972020008

`A119771(n)/A234041(n)`
-/

namespace A387655.P15088120305972020008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119771 n : ℚ) / (A234041 n : ℚ)

end

end A387655.P15088120305972020008

namespace A387655

/-- `A119771(n)/A234041(n)` -/
def P15088120305972020008.Spec : Prop :=
  ∀ n, P15088120305972020008.a n = (A387655 n : ℚ)

end A387655

/-! ## A387655.P5165900773871847994

`A272125(n)%A184537(n)`
-/

namespace A387655.P5165900773871847994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272125 n) (A184537 n)

end

end A387655.P5165900773871847994

namespace A387655

/-- `A272125(n)%A184537(n)` -/
def P5165900773871847994.Spec : Prop :=
  ∀ n, P5165900773871847994.a n = A387655 n

end A387655

/-! ## A387655.P9727458727766032063

`gcd(A000578(n), A119771(n))`
-/

namespace A387655.P9727458727766032063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 n) (A119771 n)

end

end A387655.P9727458727766032063

namespace A387655

/-- `gcd(A000578(n), A119771(n))` -/
def P9727458727766032063.Spec : Prop :=
  ∀ n, (P9727458727766032063.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P9146508650709222865

`gcd(A000583(n), A272125(n))`
-/

namespace A387655.P9146508650709222865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000583 n) (A272125 n)

end

end A387655.P9146508650709222865

namespace A387655

/-- `gcd(A000583(n), A272125(n))` -/
def P9146508650709222865.Spec : Prop :=
  ∀ n, (P9146508650709222865.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P11211718217777725546

`gcd(A000584(n), A282612(n))`
-/

namespace A387655.P11211718217777725546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000584 n) (A282612 n)

end

end A387655.P11211718217777725546

namespace A387655

/-- `gcd(A000584(n), A282612(n))` -/
def P11211718217777725546.Spec : Prop :=
  ∀ n, (P11211718217777725546.a n : ℤ) = A387655 n

end A387655

/-! ## A387655.P18132695872089246453

`n*A051176(n²)`
-/

namespace A387655.P18132695872089246453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051176 (n ^ 2)

end

end A387655.P18132695872089246453

namespace A387655

/-- `n*A051176(n²)` -/
def P18132695872089246453.Spec : Prop :=
  ∀ n, P18132695872089246453.a n = A387655 n

end A387655

/-!
# A387656: Array read by ascending antidiagonals: A(n, k) = numerator(k^n/n), with k >= 0.

The programs for A387656, there is no canonical definition to state claims against.
-/

/-! ## A387656.P6492895522861972651

`A007953(A002262(n)^A188919(n))`
-/

namespace A387656.P6492895522861972651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A188919 n : ℤ))).toNat

end

end A387656.P6492895522861972651

/-! ## A387656.P18144625360358536655

`A002262(n)^A100808(A005246(n))`
-/

namespace A387656.P18144625360358536655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A100808 (A005246 n).toNat : ℤ)

end

end A387656.P18144625360358536655

/-! ## A387656.P1504517252688798321

`A002262(n)^A324407(A181783(n))`
-/

namespace A387656.P1504517252688798321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A324407 (A181783 n).toNat : ℤ)

end

end A387656.P1504517252688798321

/-!
# A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

The programs for A387657, the canonical program `A387657.P982859840005591800` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387657 has offset 1).

The definition of A387657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387657.P982859840005591800

`A123275(A056943(n)+1)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A387657

/-- `A123275(A056943(n)+1)` -/
def P982859840005591800.Spec : Prop :=
  ∀ n, P982859840005591800.a n = A387657 (n + 1)

theorem P982859840005591800.correct : P982859840005591800.Spec := by
  intro n
  simp only [A387657, Nat.add_sub_cancel]

end A387657

/-! ## A387657.P3946448195722316514

`(row(n)-col(n)+1)/gcd(col(n)^(row(n)-col(n)+1), row(n)-col(n)+1)`
-/

namespace A387657.P3946448195722316514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ))) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ)

end

end A387657.P3946448195722316514

namespace A387657

/-- `(row(n)-col(n)+1)/gcd(col(n)^(row(n)-col(n)+1), row(n)-col(n)+1)` -/
def P3946448195722316514.Spec : Prop :=
  ∀ n, P3946448195722316514.a n = (A387657 (n + 1) : ℚ)

end A387657

/-! ## A387657.P7312350826322046491

`gcd(A134224(n), A142589(n))`
-/

namespace A387657.P7312350826322046491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134224 n) (A142589 n)

end

end A387657.P7312350826322046491

namespace A387657

/-- `gcd(A134224(n), A142589(n))` -/
def P7312350826322046491.Spec : Prop :=
  ∀ n, (P7312350826322046491.a n : ℤ) = A387657 (n + 1)

end A387657

/-! ## A387657.P5929931241724864793

`gcd(A117297(n+1), A140822(n))`
-/

namespace A387657.P5929931241724864793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117297 (n + 1)) (A140822 n)

end

end A387657.P5929931241724864793

namespace A387657

/-- `gcd(A117297(n+1), A140822(n))` -/
def P5929931241724864793.Spec : Prop :=
  ∀ n, (P5929931241724864793.a n : ℤ) = A387657 (n + 1)

end A387657

/-! ## A387657.P2123100380260979125

`gcd(A009766(n), A153678(A007318(n)))`
-/

namespace A387657.P2123100380260979125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009766 n) (A153678 (A007318 n).toNat)

end

end A387657.P2123100380260979125

namespace A387657

/-- `gcd(A009766(n), A153678(A007318(n)))` -/
def P2123100380260979125.Spec : Prop :=
  ∀ n, (P2123100380260979125.a n : ℤ) = A387657 (n + 1)

end A387657

/-!
# A387658: Number of points on a cubic lattice that have a minimum distance sqrt(n) from either of two adjacent lattice points.

The programs for A387658, there is no canonical definition to state claims against.
-/

/-! ## A387658.P17607589336140920374

`A004018(n)+A005875(n)`
-/

namespace A387658.P17607589336140920374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A005875 n

end

end A387658.P17607589336140920374

/-! ## A387658.P4626526512420634092

`A004018(n)+(-1)^n*A213384(n)`
-/

namespace A387658.P4626526512420634092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + (-1) ^ n * A213384 n

end

end A387658.P4626526512420634092

/-! ## A387658.P5514109956913042761

`A004018(n)+∑{d}[A213384(n), A000010(#)]`
-/

namespace A387658.P5514109956913042761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A387658.P5514109956913042761

/-! ## A387658.P7065919445249694982

`A004018(n)+A000152(n)*A213384(n)/A319307(n)`
-/

namespace A387658.P7065919445249694982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) + (A000152 n * A213384 n : ℚ) / (A319307 n : ℚ)

end

end A387658.P7065919445249694982

/-! ## A387658.P5922409830184656348

`A014455(2*n)+A004018(n)`
-/

namespace A387658.P5922409830184656348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n) + A004018 n

end

end A387658.P5922409830184656348

/-! ## A387658.P4138622098942764541

`A004018(n)+A004015(2*n)`
-/

namespace A387658.P4138622098942764541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A004015 (2 * n)

end

end A387658.P4138622098942764541

/-! ## A387658.P14030582951165287802

`A004018(n)+3/A132429(n)*A319078(n)`
-/

namespace A387658.P14030582951165287802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) + 3 / (A132429 n : ℚ) * (A319078 n : ℚ)

end

end A387658.P14030582951165287802

/-! ## A387658.P17725586257545761110

`A004018(n)+A004013(4*n)`
-/

namespace A387658.P17725586257545761110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A004013 (4 * n)

end

end A387658.P17725586257545761110

/-! ## A387658.P3868797964505651338

`A004018(n)+A213384(4*n)`
-/

namespace A387658.P3868797964505651338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A213384 (4 * n)

end

end A387658.P3868797964505651338

/-! ## A387658.P8170783303621663091

`A169783(4*n)+A004018(n)`
-/

namespace A387658.P8170783303621663091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n) + A004018 n

end

end A387658.P8170783303621663091

/-!
# A387659: a(n) = 13*n^2 + 10*n + 3.

The programs for A387659, the canonical program `A387659.P11348158259407236017` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387659 has offset 0).

The definition of A387659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²+10*n+3` (program `A387659.P11348158259407236017`, by `A387659.P11348158259407236017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387659.P11348158259407236017

`13*n²+10*n+3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387659

/-- `13*n²+10*n+3` -/
def P11348158259407236017.Spec : Prop :=
  ∀ n, (P11348158259407236017.a n : ℤ) = A387659 n

theorem P11348158259407236017.correct : P11348158259407236017.Spec := by
  intro n
  simp only [A387659]

end A387659

/-! ## A387659.P8830367459516147935

`∑[a(n-1)+26]` with `a(0)=3, a(1)=23`
-/

namespace A387659.P8830367459516147935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 23] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387659.P8830367459516147935

namespace A387659

/-- `∑[a(n-1)+26]` -/
def P8830367459516147935.Spec : Prop :=
  ∀ n, (P8830367459516147935.a n : ℤ) = A387659 n

end A387659

/-! ## A387659.P15361564239197626745

`record[A161587(n-2*floor(n/4))+2]`
-/

namespace A387659.P15361564239197626745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161587 ((n : ℤ) - 2 * ⌊(n : ℚ) / 4⌋).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387659.P15361564239197626745

namespace A387659

/-- `record[A161587(n-2*floor(n/4))+2]` -/
def P15361564239197626745.Spec : Prop :=
  ∀ n, P15361564239197626745.a n = A387659 n

end A387659

/-! ## A387659.P11087686682526045144

`xor(A038041(A229708(n+1)), A161587(n))`
-/

namespace A387659.P11087686682526045144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038041 (A229708 (n + 1)).toNat) (A161587 n)

end

end A387659.P11087686682526045144

namespace A387659

/-- `xor(A038041(A229708(n+1)), A161587(n))` -/
def P11087686682526045144.Spec : Prop :=
  ∀ n, P11087686682526045144.a n = A387659 n

end A387659

/-! ## A387659.P4653231793091503870

`∑[A179805(3*n+1)-n]`
-/

namespace A387659.P4653231793091503870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (3 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387659.P4653231793091503870

namespace A387659

/-- `∑[A179805(3*n+1)-n]` -/
def P4653231793091503870.Spec : Prop :=
  ∀ n, P4653231793091503870.a n = A387659 n

end A387659

/-! ## A387659.P9229449371024638790

`xor(A000002(A074276(n+1)), A161587(n))`
-/

namespace A387659.P9229449371024638790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000002 (A074276 (n + 1)).toNat) (A161587 n)

end

end A387659.P9229449371024638790

namespace A387659

/-- `xor(A000002(A074276(n+1)), A161587(n))` -/
def P9229449371024638790.Spec : Prop :=
  ∀ n, P9229449371024638790.a n = A387659 n

end A387659

/-!
# A387665: Smallest nonnegative integer coprime to 5 with a constant congruence speed >= n (see A373387 for the definition of "constant congruence speed").

The programs for A387665, there is no canonical definition to state claims against.
-/

/-! ## A387665.P3175809360257761779

`A034939(n)+A000007(A049652(n))`
-/

namespace A387665.P3175809360257761779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A000007 (A049652 n).toNat

end

end A387665.P3175809360257761779

/-! ## A387665.P1181699243443668137

`A034939(n)+A010054(A055099(n))`
-/

namespace A387665.P1181699243443668137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A010054 (A055099 n).toNat

end

end A387665.P1181699243443668137

/-! ## A387665.P12507972113168268372

`A034939(n)+A010056(A289780(n))`
-/

namespace A387665.P12507972113168268372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + A010056 (A289780 n).toNat

end

end A387665.P12507972113168268372

/-! ## A387665.P14453576212950413131

`A318983(A000984(n))+A034939(n)`
-/

namespace A387665.P14453576212950413131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318983 (A000984 n).toNat + A034939 n

end

end A387665.P14453576212950413131

/-!
# A387666: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^3) / (1 + x)^2 ).

The programs for A387666, there is no canonical definition to state claims against.
-/

/-! ## A387666.P10590942786681917123

`A372758(A001286(n+2))-n`
-/

namespace A387666.P10590942786681917123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A001286 (n + 2)).toNat - (n : ℤ)

end

end A387666.P10590942786681917123

/-!
# A387667: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)) / (1 + x)^2 ).

The programs for A387667, there is no canonical definition to state claims against.
-/

/-! ## A387667.P9260518290314404750

`A214701(A193038(n+1))`
-/

namespace A387667.P9260518290314404750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A193038 (n + 1)).toNat

end

end A387667.P9260518290314404750

/-! ## A387667.P12563050521188268786

`∑[A260734(A202830(n)-n)]`
-/

namespace A387667.P12563050521188268786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A202830 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387667.P12563050521188268786

/-!
# A387668: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)^3) / (1 + x)^2 ).

The programs for A387668, there is no canonical definition to state claims against.
-/

/-! ## A387668.P7972893020266662725

`A187183(A307940(n+3)-A010060(n+4))`
-/

namespace A387668.P7972893020266662725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A307940 (n + 3) - A010060 (n + 4)).toNat

end

end A387668.P7972893020266662725

/-! ## A387668.P13104605075765372241

`A187183(A307940(n+3)-A363338(3*n+4))`
-/

namespace A387668.P13104605075765372241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A307940 (n + 3) - A363338 (3 * n + 4)).toNat

end

end A387668.P13104605075765372241

/-!
# A387669: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)) / (1 + x)^2 ).

The programs for A387669, there is no canonical definition to state claims against.
-/

/-! ## A387669.P5531992978323580658

`A082583(A148115(n+1))`
-/

namespace A387669.P5531992978323580658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082583 (A148115 (n + 1)).toNat

end

end A387669.P5531992978323580658

/-! ## A387669.P6544034186979036969

`A387734(n)+A184974(A000045(n))`
-/

namespace A387669.P6544034186979036969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387734 n + A184974 (A000045 n).toNat

end

end A387669.P6544034186979036969

/-! ## A387669.P3502653230739573317

`A387734(n)+A079978(A200731(n))`
-/

namespace A387669.P3502653230739573317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387734 n + A079978 (A200731 n).toNat

end

end A387669.P3502653230739573317

/-!
# A387671: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) / (1 + x)^2 ).

The programs for A387671, there is no canonical definition to state claims against.
-/

/-! ## A387671.P13197885503384359177

`A387777(n)+A184974(A000045(n))`
-/

namespace A387671.P13197885503384359177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387777 n + A184974 (A000045 n).toNat

end

end A387671.P13197885503384359177

/-! ## A387671.P3140968004255892762

`A387777(n)+A079978(A200731(n))`
-/

namespace A387671.P3140968004255892762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387777 n + A079978 (A200731 n).toNat

end

end A387671.P3140968004255892762

/-! ## A387671.P8834538960614440493

`A387777(n)+A286470(A000272(n))`
-/

namespace A387671.P8834538960614440493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387777 n + A286470 (A000272 n).toNat

end

end A387671.P8834538960614440493

/-!
# A387674: Expansion of g.f. (Sum_{i>=0} (i! - 1)*x^i)/(Sum_{i>=0} i!*x^i).

The programs for A387674, there is no canonical definition to state claims against.
-/

/-! ## A387674.P1187948683083361997

`1-(A104985(n)+n)`
-/

namespace A387674.P1187948683083361997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A104985 n + (n : ℤ))

end

end A387674.P1187948683083361997

/-! ## A387674.P805281669447156485

`A003319(n)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A387674.P805281669447156485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A003319 n + a (n - 1)

end

end A387674.P805281669447156485

/-! ## A387674.P17073609212733791568

`∑[A003319(n)%A000142(n)]`
-/

namespace A387674.P17073609212733791568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003319 n) (A000142 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387674.P17073609212733791568

/-! ## A387674.P11824792362719113777

`∑[A233824(n)]-A233824(n)`
-/

namespace A387674.P11824792362719113777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A233824 n

end

end A387674.P11824792362719113777

/-!
# A387675: Expansion of g/(1 + x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387675, there is no canonical definition to state claims against.
-/

/-! ## A387675.P14330965879911124074

`A001462(A086922(n))-n`
-/

namespace A387675.P14330965879911124074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A086922 n).toNat - (n : ℤ)

end

end A387675.P14330965879911124074

/-! ## A387675.P10497527990097941891

`A358378(A065161(n+1))-n`
-/

namespace A387675.P10497527990097941891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (A065161 (n + 1)).toNat - (n : ℤ)

end

end A387675.P10497527990097941891

/-!
# A387676: Expansion of g/(1 + x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387676, there is no canonical definition to state claims against.
-/

/-! ## A387676.P5687885684805390371

`A171727(A150934(n))`
-/

namespace A387676.P5687885684805390371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A150934 n).toNat

end

end A387676.P5687885684805390371

/-! ## A387676.P11776434647888172331

`A122651(∏[A095316(n+1)-1])`
-/

namespace A387676.P11776434647888172331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A387676.P11776434647888172331

/-!
# A387677: Expansion of g/(1 + x^2*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387677, there is no canonical definition to state claims against.
-/

/-! ## A387677.P5828207540600679484

`A045917(A326092(n)+3)`
-/

namespace A387677.P5828207540600679484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A326092 n + 3).toNat

end

end A387677.P5828207540600679484

/-! ## A387677.P12749572748244973096

`A008617(A000351(n)-A028310(n))`
-/

namespace A387677.P12749572748244973096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A000351 n - A028310 n).toNat

end

end A387677.P12749572748244973096

/-!
# A387678: Expansion of g/(1 + x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387678, there is no canonical definition to state claims against.
-/

/-! ## A387678.P12091780341963743554

`A233762(A067687(n))`
-/

namespace A387678.P12091780341963743554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233762 (A067687 n).toNat

end

end A387678.P12091780341963743554

/-! ## A387678.P3715683066090485559

`or(n, A066839(A002110(n)))`
-/

namespace A387678.P3715683066090485559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A066839 (A002110 n).toNat)

end

end A387678.P3715683066090485559

/-!
# A387679: Expansion of g/(1 + x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A387679, there is no canonical definition to state claims against.
-/

/-! ## A387679.P13168923203688927355

`A050437(A099036(n))`
-/

namespace A387679.P13168923203688927355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050437 (A099036 n).toNat

end

end A387679.P13168923203688927355

/-! ## A387679.P4771749039375730305

`A318953(A000108(n))`
-/

namespace A387679.P4771749039375730305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318953 (A000108 n).toNat

end

end A387679.P4771749039375730305

/-!
# A387680: Number of length n words on the alphabet {a,b,c,d,e} that do not contain exactly one a and exactly one b.

The programs for A387680, the canonical program `A387680.P10945382852570778628` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387680 has offset 0).

The definition of A387680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387680.P10945382852570778628

`5^n-n*(n-1)*3^(n-2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387680

/-- `5^n-n*(n-1)*3^(n-2)` -/
def P10945382852570778628.Spec : Prop :=
  ∀ n, P10945382852570778628.a n = (A387680 n : ℚ)

end A387680

/-!
# A387684: a(n) = (8*n + 1)^2*(4*n + 1).

The programs for A387684, the canonical program `A387684.P6032393437507945414` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387684 has offset 0).

The definition of A387684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)²*(4*n+1)` (program `A387684.P6032393437507945414`, by `A387684.P6032393437507945414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387684.P6032393437507945414

`(8*n+1)²*(4*n+1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387684

/-- `(8*n+1)²*(4*n+1)` -/
def P6032393437507945414.Spec : Prop :=
  ∀ n, (P6032393437507945414.a n : ℤ) = A387684 n

theorem P6032393437507945414.correct : P6032393437507945414.Spec := by
  intro n
  simp only [A387684]

end A387684

/-! ## A387684.P6092437574724195339

`lcm(A016813(n), A017078(n))`
-/

namespace A387684.P6092437574724195339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016813 n) (A017078 n)

end

end A387684.P6092437574724195339

namespace A387684

/-- `lcm(A016813(n), A017078(n))` -/
def P6092437574724195339.Spec : Prop :=
  ∀ n, (P6092437574724195339.a n : ℤ) = A387684 n

end A387684

/-! ## A387684.P12468278632566391958

`A015223(2*n)`
-/

namespace A387684.P12468278632566391958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015223 (2 * n)

end

end A387684.P12468278632566391958

namespace A387684

/-- `A015223(2*n)` -/
def P12468278632566391958.Spec : Prop :=
  ∀ n, P12468278632566391958.a n = A387684 n

theorem P12468278632566391958.correct : P12468278632566391958.Spec := by
  intro n
  simp only [A387684, Nat.add_sub_cancel, A387684.P12468278632566391958.a, A387684.P6032393437507945414.a, A015223, A015223.P4177858037070881700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387684

/-! ## A387684.P5487005616724667007

`sqrt(A014799(2*n))`
-/

namespace A387684.P5487005616724667007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014799 (2 * n) : ℝ)

end

end A387684.P5487005616724667007

namespace A387684

/-- `sqrt(A014799(2*n))` -/
def P5487005616724667007.Spec : Prop :=
  ∀ n, P5487005616724667007.a n = (A387684 n : ℝ)

end A387684

/-! ## A387684.P4714339219523158709

`A139757(4*n)`
-/

namespace A387684.P4714339219523158709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 (4 * n)

end

end A387684.P4714339219523158709

namespace A387684

/-- `A139757(4*n)` -/
def P4714339219523158709.Spec : Prop :=
  ∀ n, P4714339219523158709.a n = A387684 n

theorem P4714339219523158709.correct : P4714339219523158709.Spec := by
  intro n
  simp only [A387684, Nat.add_sub_cancel, A387684.P4714339219523158709.a, A387684.P6032393437507945414.a, A139757, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387684

/-! ## A387684.P8065699055527609049

`A002411(8*n+1)`
-/

namespace A387684.P8065699055527609049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (8 * n + 1)

end

end A387684.P8065699055527609049

namespace A387684

/-- `A002411(8*n+1)` -/
def P8065699055527609049.Spec : Prop :=
  ∀ n, P8065699055527609049.a n = A387684 n

end A387684

/-! ## A387684.P6545430238141980487

`A190798(A017545(n))`
-/

namespace A387684.P6545430238141980487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190798 (A017545 n).toNat

end

end A387684.P6545430238141980487

namespace A387684

/-- `A190798(A017545(n))` -/
def P6545430238141980487.Spec : Prop :=
  ∀ n, P6545430238141980487.a n = A387684 n

end A387684

/-! ## A387684.P12165307462077637297

`A028724(A119413(n+1))`
-/

namespace A387684.P12165307462077637297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A119413 (n + 1)).toNat

end

end A387684.P12165307462077637297

namespace A387684

/-- `A028724(A119413(n+1))` -/
def P12165307462077637297.Spec : Prop :=
  ∀ n, P12165307462077637297.a n = A387684 n

end A387684

/-! ## A387684.P3937784605341148363

`A188067(A063116(n+1))`
-/

namespace A387684.P3937784605341148363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A063116 (n + 1)).toNat

end

end A387684.P3937784605341148363

namespace A387684

/-- `A188067(A063116(n+1))` -/
def P3937784605341148363.Spec : Prop :=
  ∀ n, P3937784605341148363.a n = A387684 n

end A387684

/-! ## A387684.P13326513457131755342

`A144677(A008606(n))`
-/

namespace A387684.P13326513457131755342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A008606 n).toNat

end

end A387684.P13326513457131755342

namespace A387684

/-- `A144677(A008606(n))` -/
def P13326513457131755342.Spec : Prop :=
  ∀ n, P13326513457131755342.a n = A387684 n

end A387684

/-!
# A387685: a(n) is the number of geometric progressions of three or more positive integers, strictly increasing with sum n.

The programs for A387685, there is no canonical definition to state claims against.
-/

/-! ## A387685.P6438811203556487459

`A364485(n+1)%A385603(n+1)`
-/

namespace A387685.P6438811203556487459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364485 (n + 1)) (A385603 (n + 1))

end

end A387685.P6438811203556487459

/-!
# A387689: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*n-2*k,2*k).

The programs for A387689, the canonical program `A387689.P9455251819028227511` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387689 has offset 0).

The definition of A387689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387689.P9455251819028227511

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387689

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9455251819028227511.Spec : Prop :=
  ∀ n, P9455251819028227511.a n = A387689 n

theorem P9455251819028227511.correct : P9455251819028227511.Spec := by
  intro n
  simp only [A387689]

end A387689

/-! ## A387689.P3195290616620576071

`ogf((1-2x-x^2)/(1-4x+2x^2-4x^3+x^4))`
-/

namespace A387689.P3195290616620576071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, 2, -4, 1] n

end

end A387689.P3195290616620576071

namespace A387689

/-- `ogf((1-2x-x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P3195290616620576071.Spec : Prop :=
  ∀ n, P3195290616620576071.a n = A387689 n

end A387689

/-! ## A387689.P7667343209565633713

`A133872(n)+A061278(n)`
-/

namespace A387689.P7667343209565633713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A061278 n

end

end A387689.P7667343209565633713

namespace A387689

/-- `A133872(n)+A061278(n)` -/
def P7667343209565633713.Spec : Prop :=
  ∀ n, P7667343209565633713.a n = A387689 n

end A387689

/-! ## A387689.P14398664209925422736

`A101265(n+1)-A021913(n)`
-/

namespace A387689.P14398664209925422736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1) - A021913 n

end

end A387689.P14398664209925422736

namespace A387689

/-- `A101265(n+1)-A021913(n)` -/
def P14398664209925422736.Spec : Prop :=
  ∀ n, P14398664209925422736.a n = A387689 n

end A387689

/-! ## A387689.P17670542302929272607

`A101265(n+1)-(1-A133872(n))`
-/

namespace A387689.P17670542302929272607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1) - (1 - A133872 n)

end

end A387689.P17670542302929272607

namespace A387689

/-- `A101265(n+1)-(1-A133872(n))` -/
def P17670542302929272607.Spec : Prop :=
  ∀ n, P17670542302929272607.a n = A387689 n

end A387689

/-! ## A387689.P5851563297972290589

`A387694(n)-A290908(n)`
-/

namespace A387689.P5851563297972290589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387694 n - A290908 n

end

end A387689.P5851563297972290589

namespace A387689

/-- `A387694(n)-A290908(n)` -/
def P5851563297972290589.Spec : Prop :=
  ∀ n, P5851563297972290589.a n = A387689 n

end A387689

/-! ## A387689.P12763990282853105796

`A387694(n+1)-A001834(n+1)`
-/

namespace A387689.P12763990282853105796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387694 (n + 1) - A001834 (n + 1)

end

end A387689.P12763990282853105796

namespace A387689

/-- `A387694(n+1)-A001834(n+1)` -/
def P12763990282853105796.Spec : Prop :=
  ∀ n, P12763990282853105796.a n = A387689 n

end A387689

/-!
# A387690: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k,2*k).

The programs for A387690, the canonical program `A387690.P18366013979878445201` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387690 has offset 0).

The definition of A387690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387690.P18366013979878445201

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=28, a(5)=92`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387690

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P18366013979878445201.Spec : Prop :=
  ∀ n, P18366013979878445201.a n = A387690 n

theorem P18366013979878445201.correct : P18366013979878445201.Spec := by
  intro n
  simp only [A387690]

end A387690

/-! ## A387690.P17626357614723925243

`ceil((A286045(2*n+1)%A344936(n+1))^(n/3))`
-/

namespace A387690.P17626357614723925243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A286045 (2 * n + 1)) (A344936 (n + 1)) : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A387690.P17626357614723925243

namespace A387690

/-- `ceil((A286045(2*n+1)%A344936(n+1))^(n/3))` -/
def P17626357614723925243.Spec : Prop :=
  ∀ n, P17626357614723925243.a n = A387690 n

end A387690

/-! ## A387690.P6894746739656667447

`A373709(n)+A373687(A078845(n))`
-/

namespace A387690.P6894746739656667447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373709 n + A373687 (A078845 n).toNat

end

end A387690.P6894746739656667447

namespace A387690

/-- `A373709(n)+A373687(A078845(n))` -/
def P6894746739656667447.Spec : Prop :=
  ∀ n, P6894746739656667447.a n = A387690 n

end A387690

/-!
# A387691: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k,2*k).

The programs for A387691, the canonical program `A387691.P13392601389255870572` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387691 has offset 0).

The definition of A387691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387691.P13392601389255870572

`4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=17, a(5)=44, a(6)=124, a(7)=352`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387691

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` -/
def P13392601389255870572.Spec : Prop :=
  ∀ n, P13392601389255870572.a n = A387691 n

theorem P13392601389255870572.correct : P13392601389255870572.Spec := by
  intro n
  simp only [A387691]

end A387691

/-! ## A387691.P15887540213421068093

`A241952(A036256(n+1))`
-/

namespace A387691.P15887540213421068093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241952 (A036256 (n + 1)).toNat

end

end A387691.P15887540213421068093

namespace A387691

/-- `A241952(A036256(n+1))` -/
def P15887540213421068093.Spec : Prop :=
  ∀ n, P15887540213421068093.a n = A387691 n

end A387691

/-! ## A387691.P9361421410667716788

`A162002(A342764(n+1))`
-/

namespace A387691.P9361421410667716788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (A342764 (n + 1)).toNat

end

end A387691.P9361421410667716788

namespace A387691

/-- `A162002(A342764(n+1))` -/
def P9361421410667716788.Spec : Prop :=
  ∀ n, P9361421410667716788.a n = A387691 n

end A387691

/-!
# A387692: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k+1,2*k).

The programs for A387692, the canonical program `A387692.P427402047839379410` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387692 has offset 0).

The definition of A387692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387692.P427402047839379410

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=36, a(5)=116`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387692

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P427402047839379410.Spec : Prop :=
  ∀ n, P427402047839379410.a n = A387692 n

theorem P427402047839379410.correct : P427402047839379410.Spec := by
  intro n
  simp only [A387692]

end A387692

/-! ## A387692.P6075630404954378450

`A127237(A000244(n))-A079978(n)`
-/

namespace A387692.P6075630404954378450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127237 (A000244 n).toNat - A079978 n

end

end A387692.P6075630404954378450

namespace A387692

/-- `A127237(A000244(n))-A079978(n)` -/
def P6075630404954378450.Spec : Prop :=
  ∀ n, P6075630404954378450.a n = A387692 n

end A387692

/-!
# A387693: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k+1,2*k).

The programs for A387693, the canonical program `A387693.P15185850816940270829` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387693 has offset 0).

The definition of A387693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387693.P15185850816940270829

`4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=19, a(5)=52, a(6)=148, a(7)=416`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387693

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` -/
def P15185850816940270829.Spec : Prop :=
  ∀ n, P15185850816940270829.a n = A387693 n

theorem P15185850816940270829.correct : P15185850816940270829.Spec := by
  intro n
  simp only [A387693]

end A387693

/-! ## A387693.P17218159036733702063

`A001462(A088137(n)+A001861(n))`
-/

namespace A387693.P17218159036733702063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A088137 n + A001861 n).toNat

end

end A387693.P17218159036733702063

namespace A387693

/-- `A001462(A088137(n)+A001861(n))` -/
def P17218159036733702063.Spec : Prop :=
  ∀ n, P17218159036733702063.a n = A387693 n

end A387693

/-! ## A387693.P14915596567857935283

`A325781(A019301(n))+A019302(n)`
-/

namespace A387693.P14915596567857935283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (A019301 n).toNat + A019302 n

end

end A387693.P14915596567857935283

namespace A387693

/-- `A325781(A019301(n))+A019302(n)` -/
def P14915596567857935283.Spec : Prop :=
  ∀ n, P14915596567857935283.a n = A387693 n

end A387693

/-!
# A387694: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*n-2*k+1,2*k+1).

The programs for A387694, the canonical program `A387694.P9471301431738774999` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387694 has offset 0).

The definition of A387694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387694.P9471301431738774999

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=21, a(3)=76`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387694

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9471301431738774999.Spec : Prop :=
  ∀ n, P9471301431738774999.a n = A387694 n

theorem P9471301431738774999.correct : P9471301431738774999.Spec := by
  intro n
  simp only [A387694]

end A387694

/-! ## A387694.P3838829334793098195

`ogf((1+2x-x^2)/(1-4x+2x^2-4x^3+x^4))`
-/

namespace A387694.P3838829334793098195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -4, 2, -4, 1] n

end

end A387694.P3838829334793098195

namespace A387694

/-- `ogf((1+2x-x^2)/(1-4x+2x^2-4x^3+x^4))` -/
def P3838829334793098195.Spec : Prop :=
  ∀ n, P3838829334793098195.a n = A387694 n

end A387694

/-! ## A387694.P17606746150378270129

`A387689(n)+A290908(n)`
-/

namespace A387694.P17606746150378270129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387689 n + A290908 n

end

end A387694.P17606746150378270129

namespace A387694

/-- `A387689(n)+A290908(n)` -/
def P17606746150378270129.Spec : Prop :=
  ∀ n, P17606746150378270129.a n = A387694 n

end A387694

/-! ## A387694.P3896405571914738166

`A387689(n+1)-A057077(n+1)`
-/

namespace A387694.P3896405571914738166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387689 (n + 1) - A057077 (n + 1)

end

end A387694.P3896405571914738166

namespace A387694

/-- `A387689(n+1)-A057077(n+1)` -/
def P3896405571914738166.Spec : Prop :=
  ∀ n, P3896405571914738166.a n = A387694 n

end A387694

/-! ## A387694.P12501016607541703413

`A101265(n+2)-A133872(n+1)`
-/

namespace A387694.P12501016607541703413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 2) - A133872 (n + 1)

end

end A387694.P12501016607541703413

namespace A387694

/-- `A101265(n+2)-A133872(n+1)` -/
def P12501016607541703413.Spec : Prop :=
  ∀ n, P12501016607541703413.a n = A387694 n

end A387694

/-! ## A387694.P7182142445820555870

`A099488(n+1)-(A099488(n)+A056594(n+1))`
-/

namespace A387694.P7182142445820555870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099488 (n + 1) - (A099488 n + A056594 (n + 1))

end

end A387694.P7182142445820555870

namespace A387694

/-- `A099488(n+1)-(A099488(n)+A056594(n+1))` -/
def P7182142445820555870.Spec : Prop :=
  ∀ n, P7182142445820555870.a n = A387694 n

end A387694

/-! ## A387694.P10013171735294225347

`A099486(n+1)+A099486(n+1)-A099488(n)`
-/

namespace A387694.P10013171735294225347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099486 (n + 1) + (A099486 (n + 1) - A099488 n)

end

end A387694.P10013171735294225347

namespace A387694

/-- `A099486(n+1)+A099486(n+1)-A099488(n)` -/
def P10013171735294225347.Spec : Prop :=
  ∀ n, P10013171735294225347.a n = A387694 n

end A387694

/-! ## A387694.P3762400093775915530

`A099489(n+1)-(A099488(n)+A099487(n+1))`
-/

namespace A387694.P3762400093775915530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099489 (n + 1) - (A099488 n + A099487 (n + 1))

end

end A387694.P3762400093775915530

namespace A387694

/-- `A099489(n+1)-(A099488(n)+A099487(n+1))` -/
def P3762400093775915530.Spec : Prop :=
  ∀ n, P3762400093775915530.a n = A387694 n

end A387694

/-!
# A387695: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k+1,2*k+1).

The programs for A387695, the canonical program `A387695.P12302221396290479493` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387695 has offset 0).

The definition of A387695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387695.P12302221396290479493

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=57, a(4)=164, a(5)=492`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A387695

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P12302221396290479493.Spec : Prop :=
  ∀ n, P12302221396290479493.a n = A387695 n

theorem P12302221396290479493.correct : P12302221396290479493.Spec := by
  intro n
  simp only [A387695]

end A387695

/-! ## A387695.P16039718999747827861

`A081399(A078797(n+1))+A000301(n)`
-/

namespace A387695.P16039718999747827861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A078797 (n + 1)).toNat + A000301 n

end

end A387695.P16039718999747827861

namespace A387695

/-- `A081399(A078797(n+1))+A000301(n)` -/
def P16039718999747827861.Spec : Prop :=
  ∀ n, P16039718999747827861.a n = A387695 n

end A387695

/-!
# A387696: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k+1,2*k+1).

The programs for A387696, there is no canonical definition to state claims against.
-/

/-! ## A387696.P15048581404371771812

`∑[A193569(a(n-1))]` with `a(0)=1`
-/

namespace A387696.P15048581404371771812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A193569 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387696.P15048581404371771812

