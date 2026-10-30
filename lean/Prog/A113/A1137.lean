import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A113700: Members of 2-cycles of permutation A111273.

The programs for A113700, there is no canonical definition to state claims against.
-/

/-! ## A113700.P18405134038144087430

`A272351(A387246(n+1))+A186769(n)`
-/

namespace A113700.P18405134038144087430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (A387246 (n + 1)).toNat + A186769 n

end

end A113700.P18405134038144087430

/-!
# A113702: Trajectory of 10 under map k -> A111273(k).

The programs for A113702, there is no canonical definition to state claims against.
-/

/-! ## A113702.P16100524324090539181

`A111273(a(n-1))` with `a(0)=10`
-/

namespace A113702.P16100524324090539181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A111273 (a (n - 1)).toNat

end

end A113702.P16100524324090539181

/-!
# A113703: Retrograde trajectory of 10 under map k -> A111273(k).

The programs for A113703, there is no canonical definition to state claims against.
-/

/-! ## A113703.P5017823780806509756

`A113658(a(n-1))` with `a(0)=10`
-/

namespace A113703.P5017823780806509756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A113658 (a (n - 1)).toNat

end

end A113703.P5017823780806509756

/-!
# A113704: Triangle read by rows. The indicator function for divisibility.

The programs for A113704, the canonical program `A113704.P2167875100220696113` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113704 has offset 0).

The definition of A113704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113704.P3596446423604670422

`char[eq[col(n), A109004(n)]]`
-/

namespace A113704.P3596446423604670422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A113704.P3596446423604670422

namespace A113704

/-- `char[eq[col(n), A109004(n)]]` -/
def P3596446423604670422.Spec : Prop :=
  ∀ n, (P3596446423604670422.a n : ℤ) = A113704 n

end A113704

/-! ## A113704.P2167875100220696113

`A000007(A372727(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113704

/-- `A000007(A372727(n))` -/
def P2167875100220696113.Spec : Prop :=
  ∀ n, P2167875100220696113.a n = A113704 n

theorem P2167875100220696113.correct : P2167875100220696113.Spec := by
  intro n
  simp only [A113704]

end A113704

/-! ## A113704.P3601549892807160230

`A000007(A384446(n))`
-/

namespace A113704.P3601549892807160230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A384446 n).toNat

end

end A113704.P3601549892807160230

namespace A113704

/-- `A000007(A384446(n))` -/
def P3601549892807160230.Spec : Prop :=
  ∀ n, P3601549892807160230.a n = A113704 n

end A113704

/-! ## A113704.P13732571553255747171

`char[eq[A002262(n), A109004(n)]]`
-/

namespace A113704.P13732571553255747171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A113704.P13732571553255747171

namespace A113704

/-- `char[eq[A002262(n), A109004(n)]]` -/
def P13732571553255747171.Spec : Prop :=
  ∀ n, (P13732571553255747171.a n : ℤ) = A113704 n

end A113704

/-! ## A113704.P17995167689254608285

`char[eq[A025581(n), A109042(n)]]`
-/

namespace A113704.P17995167689254608285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A113704.P17995167689254608285

namespace A113704

/-- `char[eq[A025581(n), A109042(n)]]` -/
def P17995167689254608285.Spec : Prop :=
  ∀ n, (P17995167689254608285.a n : ℤ) = A113704 n

end A113704

/-! ## A113704.P13993790918658974895

`char[comp[∑[n]]*A051731(n+1)]`
-/

namespace A113704.P13993790918658974895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) * A051731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A113704.P13993790918658974895

namespace A113704

/-- `char[comp[∑[n]]*A051731(n+1)]` -/
def P13993790918658974895.Spec : Prop :=
  ∀ n, (P13993790918658974895.a n : ℤ) = A113704 n

end A113704

/-! ## A113704.P6999476647698153781

`char[C(∑[char[∑[n]]], 2)+gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])]`
-/

namespace A113704.P6999476647698153781
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f9 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 + Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 + n) (∑ j ∈ Finset.range (n + 1), f8 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A113704.P6999476647698153781

namespace A113704

/-- `char[C(∑[char[∑[n]]], 2)+gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])]` -/
def P6999476647698153781.Spec : Prop :=
  ∀ n, (P6999476647698153781.a n : ℤ) = A113704 n

end A113704

/-! ## A113704.P4735579955080500300

`char[A109004(n)+A057944(n)]`
-/

namespace A113704.P4735579955080500300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n + A057944 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A113704.P4735579955080500300

namespace A113704

/-- `char[A109004(n)+A057944(n)]` -/
def P4735579955080500300.Spec : Prop :=
  ∀ n, (P4735579955080500300.a n : ℤ) = A113704 n

end A113704

/-! ## A113704.P14422338014851563320

`A057427(∑{digits}[A346085(n), #])`
-/

namespace A113704.P14422338014851563320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A113704.P14422338014851563320

namespace A113704

/-- `A057427(∑{digits}[A346085(n), #])` -/
def P14422338014851563320.Spec : Prop :=
  ∀ n, P14422338014851563320.a n = A113704 n

end A113704

/-! ## A113704.P8831450233136774065

`ceil(∑{digits}[A346085(n), #]/A000203(n+1))`
-/

namespace A113704.P8831450233136774065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A113704.P8831450233136774065

namespace A113704

/-- `ceil(∑{digits}[A346085(n), #]/A000203(n+1))` -/
def P8831450233136774065.Spec : Prop :=
  ∀ n, P8831450233136774065.a n = A113704 n

end A113704

/-! ## A113704.P1601119219569220398

`ceil(A346085(n)/A035592(n))`
-/

namespace A113704.P1601119219569220398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A346085 n : ℚ) / (A035592 n : ℚ)⌉

end

end A113704.P1601119219569220398

namespace A113704

/-- `ceil(A346085(n)/A035592(n))` -/
def P1601119219569220398.Spec : Prop :=
  ∀ n, P1601119219569220398.a n = A113704 n

end A113704

/-! ## A113704.P6012943547756524312

`A346085(C(2, A346085(n)²))`
-/

namespace A113704.P6012943547756524312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (Nat.choose 2 (A346085 n ^ 2).toNat)

end

end A113704.P6012943547756524312

namespace A113704

/-- `A346085(C(2, A346085(n)²))` -/
def P6012943547756524312.Spec : Prop :=
  ∀ n, P6012943547756524312.a n = A113704 n

end A113704

/-! ## A113704.P3117796291470625438

`ceil(A346085(n)/A052551(n))`
-/

namespace A113704.P3117796291470625438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A346085 n : ℚ) / (A052551 n : ℚ)⌉

end

end A113704.P3117796291470625438

namespace A113704

/-- `ceil(A346085(n)/A052551(n))` -/
def P3117796291470625438.Spec : Prop :=
  ∀ n, P3117796291470625438.a n = A113704 n

end A113704

/-! ## A113704.P7585800506524182125

`ceil(A298426(n+1)/A000032(n))`
-/

namespace A113704.P7585800506524182125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298426 (n + 1) : ℚ) / (A000032 n : ℚ)⌉

end

end A113704.P7585800506524182125

namespace A113704

/-- `ceil(A298426(n+1)/A000032(n))` -/
def P7585800506524182125.Spec : Prop :=
  ∀ n, P7585800506524182125.a n = A113704 n

end A113704

/-! ## A113704.P2889820803522334439

`A000040(A298426(n+1)+1)%2`
-/

namespace A113704.P2889820803522334439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A298426 (n + 1) + 1).toNat) 2

end

end A113704.P2889820803522334439

namespace A113704

/-- `A000040(A298426(n+1)+1)%2` -/
def P2889820803522334439.Spec : Prop :=
  ∀ n, P2889820803522334439.a n = A113704 n

end A113704

/-!
# A113705: Inverse Moebius transform of powers of 10.

The programs for A113705, the canonical program `A113705.P14451842261117549684` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113705 has offset 0).

The definition of A113705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113705.P13280879552260756478

`∑{d}[A028310(n), root(10^n, #)]`
-/

namespace A113705.P13280879552260756478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (10 ^ n : ℝ) ^ (1 / (d : ℝ))

end

end A113705.P13280879552260756478

namespace A113705

/-- `∑{d}[A028310(n), root(10^n, #)]` -/
def P13280879552260756478.Spec : Prop :=
  ∀ n, P13280879552260756478.a n = (A113705 n : ℝ)

end A113705

/-! ## A113705.P16302816544221368926

`∑{d}[A123108(2*n), root(10^n, #)]`
-/

namespace A113705.P16302816544221368926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (10 ^ n : ℝ) ^ (1 / (d : ℝ))

end

end A113705.P16302816544221368926

namespace A113705

/-- `∑{d}[A123108(2*n), root(10^n, #)]` -/
def P16302816544221368926.Spec : Prop :=
  ∀ n, P16302816544221368926.a n = (A113705 n : ℝ)

end A113705

/-! ## A113705.P14451842261117549684

`A000007(n)+∑{d}[n, A011557(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113705

/-- `A000007(n)+∑{d}[n, A011557(#)]` -/
def P14451842261117549684.Spec : Prop :=
  ∀ n, P14451842261117549684.a n = A113705 n

theorem P14451842261117549684.correct : P14451842261117549684.Spec := by
  intro n
  simp only [A113705]

end A113705

/-! ## A113705.P11967120364693925379

`∑{d}[n, A011557(#)]^A011611(n²)`
-/

namespace A113705.P11967120364693925379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A011557 d : ℤ) : ℚ) ^ (A011611 (n ^ 2) : ℤ)

end

end A113705.P11967120364693925379

namespace A113705

/-- `∑{d}[n, A011557(#)]^A011611(n²)` -/
def P11967120364693925379.Spec : Prop :=
  ∀ n, P11967120364693925379.a n = (A113705 n : ℚ)

end A113705

/-! ## A113705.P17033503235880725549

`∑{d}[n, A011557(#)]+and(1, A000010(n+2))`
-/

namespace A113705.P17033503235880725549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011557 d + Int.land 1 (A000010 (n + 2))

end

end A113705.P17033503235880725549

namespace A113705

/-- `∑{d}[n, A011557(#)]+and(1, A000010(n+2))` -/
def P17033503235880725549.Spec : Prop :=
  ∀ n, P17033503235880725549.a n = A113705 n

end A113705

/-!
# A113706: Expansion of Product_{k>0} (1-x^(3k))/(1-x^(3k-2)).

The programs for A113706, there is no canonical definition to state claims against.
-/

/-! ## A113706.P11278536369759445346

`A229062(lt[A260732(n), A000118(n)])`
-/

namespace A113706.P11278536369759445346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113706.P11278536369759445346

/-! ## A113706.P2847829247044482779

`A103451(lt[3, A192044(3*n+4)])`
-/

namespace A113706.P2847829247044482779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192044 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113706.P2847829247044482779

/-! ## A113706.P5300829983777133966

`A030302(A226441(n+2)+A001248(n+1))`
-/

namespace A113706.P5300829983777133966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A226441 (n + 2) + A001248 (n + 1)).toNat

end

end A113706.P5300829983777133966

/-! ## A113706.P5156897502118604856

`A327974(∑[A136068(2*n+1)-a(n-1)])` with `a(0)=6`
-/

namespace A113706.P5156897502118604856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A136068 (2 * n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113706.P5156897502118604856

/-! ## A113706.P11989522739242391097

`A070950(A037237(n+3)%A127513(n+5))`
-/

namespace A113706.P11989522739242391097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (Int.tmod (A037237 (n + 3)) (A127513 (n + 5))).toNat

end

end A113706.P11989522739242391097

/-!
# A113709: a(n) is the composite between p(n) and p(n+1), where p(n) is the n-th prime, which is divisible by (p(n+1)-p(n)).

The programs for A113709, the canonical program `A113709.P7356311501742520616` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113709 has offset 2).

The definition of A113709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113709.P7356311501742520616

`eq[1, ((n+1)%A166597(n))%(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A113709

/-- `eq[1, ((n+1)%A166597(n))%(n+1)]` -/
def P7356311501742520616.Spec : Prop :=
  ∀ n, (P7356311501742520616.a n : ℤ) = A113709 (n + 2)

theorem P7356311501742520616.correct : P7356311501742520616.Spec := by
  intro n
  simp only [A113709, Nat.add_sub_cancel]

end A113709

/-! ## A113709.P4233095468538888328

`A000040(n+3)-A060234(n+2)`
-/

namespace A113709.P4233095468538888328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A060234 (n + 2)

end

end A113709.P4233095468538888328

namespace A113709

/-- `A000040(n+3)-A060234(n+2)` -/
def P4233095468538888328.Spec : Prop :=
  ∀ n, P4233095468538888328.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P6223291226943246560

`(A102551(n+2)+1)*A001223(n+2)`
-/

namespace A113709.P6223291226943246560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102551 (n + 2) + 1) * A001223 (n + 2)

end

end A113709.P6223291226943246560

namespace A113709

/-- `(A102551(n+2)+1)*A001223(n+2)` -/
def P6223291226943246560.Spec : Prop :=
  ∀ n, P6223291226943246560.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P9329654256113096402

`(A102551(n+2)+1)*A075526(n+2)`
-/

namespace A113709.P9329654256113096402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102551 (n + 2) + 1) * A075526 (n + 2)

end

end A113709.P9329654256113096402

namespace A113709

/-- `(A102551(n+2)+1)*A075526(n+2)` -/
def P9329654256113096402.Spec : Prop :=
  ∀ n, P9329654256113096402.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P10142854377034853560

`A065091(n+2)-A065091(n+1)%A001223(n+2)`
-/

namespace A113709.P10142854377034853560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - Int.tmod (A065091 (n + 1)) (A001223 (n + 2))

end

end A113709.P10142854377034853560

namespace A113709

/-- `A065091(n+2)-A065091(n+1)%A001223(n+2)` -/
def P10142854377034853560.Spec : Prop :=
  ∀ n, P10142854377034853560.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P14121907308887998395

`p?[A324161(n+4)]-A060234(n+2)`
-/

namespace A113709.P14121907308887998395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A060234 (n + 2)

end

end A113709.P14121907308887998395

namespace A113709

/-- `p?[A324161(n+4)]-A060234(n+2)` -/
def P14121907308887998395.Spec : Prop :=
  ∀ n, P14121907308887998395.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P13600110246716020023

`A001223(n+2)*A113710(n+2)`
-/

namespace A113709.P13600110246716020023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) * A113710 (n + 2)

end

end A113709.P13600110246716020023

namespace A113709

/-- `A001223(n+2)*A113710(n+2)` -/
def P13600110246716020023.Spec : Prop :=
  ∀ n, P13600110246716020023.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P7175696366382586487

`A133555(n+2)+3+n`
-/

namespace A113709.P7175696366382586487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133555 (n + 2) + 3 + (n : ℤ)

end

end A113709.P7175696366382586487

namespace A113709

/-- `A133555(n+2)+3+n` -/
def P7175696366382586487.Spec : Prop :=
  ∀ n, P7175696366382586487.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P8372616023963840057

`A002808(A133555(n+2))`
-/

namespace A113709.P8372616023963840057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A133555 (n + 2)).toNat

end

end A113709.P8372616023963840057

namespace A113709

/-- `A002808(A133555(n+2))` -/
def P8372616023963840057.Spec : Prop :=
  ∀ n, P8372616023963840057.a n = A113709 (n + 2)

end A113709

/-! ## A113709.P1948887065313996942

`A018252(A133555(n+2)+1)`
-/

namespace A113709.P1948887065313996942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A133555 (n + 2) + 1).toNat

end

end A113709.P1948887065313996942

namespace A113709

/-- `A018252(A133555(n+2)+1)` -/
def P1948887065313996942.Spec : Prop :=
  ∀ n, P1948887065313996942.a n = A113709 (n + 2)

end A113709

/-!
# A113710: a(n) = A113709(n)/(prime(n+1) - prime(n)).

The programs for A113710, the canonical program `A113710.P13393142842901012843` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113710 has offset 2).

The definition of A113710 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113710.P13393142842901012843

`A113709(n+2)/A001223(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113710

/-- `A113709(n+2)/A001223(n+2)` -/
def P13393142842901012843.Spec : Prop :=
  ∀ n, P13393142842901012843.a n = (A113710 (n + 2) : ℚ)

end A113710

/-! ## A113710.P14285133340237523779

`A113709(n+2)/(A000040(n+3)-A000040(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113710.P14285133340237523779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113709 (n + 2) : ℚ) / (A000040 (n + 3) - A000040 (n + 2) : ℚ)

end

end A113710.P14285133340237523779

namespace A113710

/-- `A113709(n+2)/(A000040(n+3)-A000040(n+2))` -/
def P14285133340237523779.Spec : Prop :=
  ∀ n, P14285133340237523779.a n = (A113710 (n + 2) : ℚ)

end A113710

/-! ## A113710.P17124118125392122301

`round(cot(Δ[log(p?[2*n+1])]))`
-/

namespace A113710.P17124118125392122301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (f1 (n + 1) - f1 n))

end

end A113710.P17124118125392122301

namespace A113710

/-- `round(cot(Δ[log(p?[2*n+1])]))` -/
def P17124118125392122301.Spec : Prop :=
  ∀ n, P17124118125392122301.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P4265432799970766634

`round(cot(log(ratio[p?[2*n+1]])))`
-/

namespace A113710.P4265432799970766634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.log ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)))

end

end A113710.P4265432799970766634

namespace A113710

/-- `round(cot(log(ratio[p?[2*n+1]])))` -/
def P4265432799970766634.Spec : Prop :=
  ∀ n, P4265432799970766634.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P14113458362167112082

`ceil(p?[2*n+1]/(p?[2*n+5]-p?[2*n+1]))`
-/

namespace A113710.P14113458362167112082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) : ℚ)⌉

end

end A113710.P14113458362167112082

namespace A113710

/-- `ceil(p?[2*n+1]/(p?[2*n+5]-p?[2*n+1]))` -/
def P14113458362167112082.Spec : Prop :=
  ∀ n, P14113458362167112082.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P3462345538894343708

`A102551(n+2)+1`
-/

namespace A113710.P3462345538894343708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 2) + 1

end

end A113710.P3462345538894343708

namespace A113710

/-- `A102551(n+2)+1` -/
def P3462345538894343708.Spec : Prop :=
  ∀ n, P3462345538894343708.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P13310180192441411254

`round(cot(Δ[log(A000040(n+2))]))`
-/

namespace A113710.P13310180192441411254
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000040 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (f1 (n + 1) - f1 n))

end

end A113710.P13310180192441411254

namespace A113710

/-- `round(cot(Δ[log(A000040(n+2))]))` -/
def P13310180192441411254.Spec : Prop :=
  ∀ n, P13310180192441411254.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P1650017438168190735

`A020725(A102551(n+2))`
-/

namespace A113710.P1650017438168190735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A102551 (n + 2)).toNat

end

end A113710.P1650017438168190735

namespace A113710

/-- `A020725(A102551(n+2))` -/
def P1650017438168190735.Spec : Prop :=
  ∀ n, P1650017438168190735.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P584579943945105008

`A382485(A291463(n+2))`
-/

namespace A113710.P584579943945105008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382485 (A291463 (n + 2)).toNat

end

end A113710.P584579943945105008

namespace A113710

/-- `A382485(A291463(n+2))` -/
def P584579943945105008.Spec : Prop :=
  ∀ n, P584579943945105008.a n = A113710 (n + 2)

end A113710

/-! ## A113710.P9631229886887073599

`floor(A065091(n+2)/A001223(n+2))`
-/

namespace A113710.P9631229886887073599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 2) : ℚ) / (A001223 (n + 2) : ℚ)⌋

end

end A113710.P9631229886887073599

namespace A113710

/-- `floor(A065091(n+2)/A001223(n+2))` -/
def P9631229886887073599.Spec : Prop :=
  ∀ n, P9631229886887073599.a n = A113710 (n + 2)

end A113710

/-!
# A113711: Triangle, read by rows, where row n forms a polynomial in y=2*k that generates diagonal n as k=0,1,2,... for n>=0; thus T(n,k) = Sum_{j=0..n-k} T(n-k,j)*(2*k)^j, with T(n,0)=T(n,n)=1.

The programs for A113711, there is no canonical definition to state claims against.
-/

/-! ## A113711.P11490060716606762384

`A105356(A369435(n))`
-/

namespace A113711.P11490060716606762384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A369435 n).toNat

end

end A113711.P11490060716606762384

/-! ## A113711.P14979038691832722739

`A236674(2*A142589(n))`
-/

namespace A113711.P14979038691832722739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (2 * A142589 n).toNat

end

end A113711.P14979038691832722739

/-! ## A113711.P16260237050741204091

`A236674(A142589(n)+A142589(n))`
-/

namespace A113711.P16260237050741204091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A142589 n + A142589 n).toNat

end

end A113711.P16260237050741204091

/-! ## A113711.P12730740565924583233

`A123719(or(A060543(n), A142992(n)))`
-/

namespace A113711.P12730740565924583233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (Int.lor (A060543 n) (A142992 n)).toNat

end

end A113711.P12730740565924583233

/-! ## A113711.P14862440395928540974

`A060747(A369435(n)^A371761(n))`
-/

namespace A113711.P14862440395928540974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.roundAway ((A369435 n : ℚ) ^ (A371761 n : ℤ))).toNat

end

end A113711.P14862440395928540974

/-!
# A113712: Column 1 of triangle A113711, in which row n forms a polynomial in y=2*k that generates diagonal n as k=0,1,2,... for n >= 0.

The programs for A113712, there is no canonical definition to state claims against.
-/

/-! ## A113712.P13887285164675774274

`∑{#}[n, A113711(C(n+1, 2)+#)*2^#]`
-/

namespace A113712.P13887285164675774274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113711 (Nat.choose (n + 1) 2 + k) * (2 ^ k : ℤ)

end

end A113712.P13887285164675774274

/-! ## A113712.P17051452419936325553

`record[A113711(n)]`
-/

namespace A113712.P17051452419936325553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113712.P17051452419936325553

/-! ## A113712.P5118962625715115598

`A113711(∑[n+1]+1)`
-/

namespace A113712.P5118962625715115598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113711 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113712.P5118962625715115598

/-! ## A113712.P2225758903523566586

`or(1, A113711(A134869(n+1)))`
-/

namespace A113712.P2225758903523566586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113711 (A134869 (n + 1)).toNat)

end

end A113712.P2225758903523566586

/-! ## A113712.P15845166346832468124

`A016266(n)*A113711(A134869(n+1))`
-/

namespace A113712.P15845166346832468124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A113711 (A134869 (n + 1)).toNat

end

end A113712.P15845166346832468124

/-!
# A113713: Column 2 of triangle A113711, in which row n forms a polynomial in y=2*k that generates diagonal n as k=0,1,2,... for n>=0.

The programs for A113713, there is no canonical definition to state claims against.
-/

/-! ## A113713.P2034733640414316477

`∑{#}[n, A113711(C(n+1, 2)+#)*4^#]`
-/

namespace A113713.P2034733640414316477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113711 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ)

end

end A113713.P2034733640414316477

/-! ## A113713.P2123568457970466564

`A113711(∑[n+2]+3)`
-/

namespace A113713.P2123568457970466564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113711 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113713.P2123568457970466564

/-! ## A113713.P7570180518476411181

`record[A113711(A080036(n))]`
-/

namespace A113713.P7570180518476411181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113711 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113713.P7570180518476411181

/-! ## A113713.P8548102560929752599

`record[A113711(∑[A275437(n)])]`
-/

namespace A113713.P8548102560929752599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113711 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113713.P8548102560929752599

/-!
# A113714: Column 3 of triangle A113711, in which row n forms a polynomial in y=2*k that generates diagonal n as k=0,1,2,... for n>=0.

The programs for A113714, there is no canonical definition to state claims against.
-/

/-! ## A113714.P4874055829162974730

`∑{#}[n, A113711(C(n+1, 2)+#)*6^#]`
-/

namespace A113714.P4874055829162974730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113711 (Nat.choose (n + 1) 2 + k) * (6 ^ k : ℤ)

end

end A113714.P4874055829162974730

/-! ## A113714.P487964970999746730

`A113711(∑[n+3]+6)`
-/

namespace A113714.P487964970999746730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113711 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113714.P487964970999746730

/-! ## A113714.P5956806198976833427

`record[gcd(A113711(n+4), A392379(n))]`
-/

namespace A113714.P5956806198976833427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113711 (n + 4)) (A392379 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113714.P5956806198976833427

/-!
# A113715: Row sums of triangle A113711, in which row n forms a polynomial in y=2*k that generates diagonal n as k=0,1,2,... for n>=0.

The programs for A113715, there is no canonical definition to state claims against.
-/

/-! ## A113715.P5988492434219983979

`∑{#}[n, A113711(C(n+1, 2)+#)]`
-/

namespace A113715.P5988492434219983979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113711 (Nat.choose (n + 1) 2 + k)

end

end A113715.P5988492434219983979

/-! ## A113715.P12344523843624062818

`A069782(∑[A122455(n)])`
-/

namespace A113715.P12344523843624062818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113715.P12344523843624062818

/-!
# A113716: Triangle, read by rows, where row n forms a polynomial in y=3*k that generates diagonal n as k=0,1,2,... for n>=0; thus T(n,k) = Sum_{j=0..n-k} T(n-k,j)*(3*k)^j, with T(n,0)=T(n,n)=1.

The programs for A113716, there is no canonical definition to state claims against.
-/

/-! ## A113716.P14870234325146798626

`A120003(A066897(n+1)%A156139(n+1))`
-/

namespace A113716.P14870234325146798626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120003 (Int.tmod (A066897 (n + 1)) (A156139 (n + 1))).toNat

end

end A113716.P14870234325146798626

/-!
# A113717: Column 1 of triangle A113716, in which row n forms a polynomial in y=3*k that generates diagonal n as k=0,1,2,... for n>=0.

The programs for A113717, there is no canonical definition to state claims against.
-/

/-! ## A113717.P1645245987979466434

`∑{#}[n, A113716(C(n+1, 2)+#)*3^#]`
-/

namespace A113717.P1645245987979466434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113716 (Nat.choose (n + 1) 2 + k) * (3 ^ k : ℤ)

end

end A113717.P1645245987979466434

/-! ## A113717.P11718222124504757961

`record[A113716(n)]`
-/

namespace A113717.P11718222124504757961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113717.P11718222124504757961

/-! ## A113717.P8976423590619266602

`A113716(∑[n+1]+1)`
-/

namespace A113717.P8976423590619266602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113717.P8976423590619266602

/-! ## A113717.P3022647421683291786

`A113716(A134869(n+1))+A011731(n)`
-/

namespace A113717.P3022647421683291786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113716 (A134869 (n + 1)).toNat + A011731 n

end

end A113717.P3022647421683291786

/-! ## A113717.P11008446870491689491

`gcd(A113716(A134869(n+1)), A294266(n))`
-/

namespace A113717.P11008446870491689491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113716 (A134869 (n + 1)).toNat) (A294266 n)

end

end A113717.P11008446870491689491

/-!
# A113718: Column 2 of triangle A113716, in which row n forms a polynomial in y=3*k that generates diagonal n as k=0,1,2,... for n>=0.

The programs for A113718, there is no canonical definition to state claims against.
-/

/-! ## A113718.P17412329686598928987

`∑{#}[n, A113716(C(n+1, 2)+#)*6^#]`
-/

namespace A113718.P17412329686598928987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113716 (Nat.choose (n + 1) 2 + k) * (6 ^ k : ℤ)

end

end A113718.P17412329686598928987

/-! ## A113718.P18220642815806170939

`A113716(∑[n+2]+3)`
-/

namespace A113718.P18220642815806170939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113716 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113718.P18220642815806170939

/-! ## A113718.P13451897488614145858

`record[A113716(A080036(n))]`
-/

namespace A113718.P13451897488614145858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113716 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113718.P13451897488614145858

/-! ## A113718.P9965915766841609877

`record[A113716(comp[A000124(n)])]`
-/

namespace A113718.P9965915766841609877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113716 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113718.P9965915766841609877

/-!
# A113719: Row sums of triangle A113716, in which row n forms a polynomial in y=3*k that generates diagonal n as k=0,1,2,... for n>=0.

The programs for A113719, there is no canonical definition to state claims against.
-/

/-! ## A113719.P11322969330812552535

`∑{#}[n, A113716(C(n+1, 2)+#)]`
-/

namespace A113719.P11322969330812552535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A113716 (Nat.choose (n + 1) 2 + k)

end

end A113719.P11322969330812552535

/-! ## A113719.P903127489753415119

`A032742(∑[A064063(n)+A005411(n)])`
-/

namespace A113719.P903127489753415119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064063 n + A005411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113719.P903127489753415119

/-!
# A113720: Concatenation of the numbers of equal successive digits of previous two terms, starting with a(1)=a(2)=1.

The programs for A113720, there is no canonical definition to state claims against.
-/

/-! ## A113720.P4982042094107056777

`A261300(C(A014214(n), A072411(n+1)))`
-/

namespace A113720.P4982042094107056777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (Nat.choose (A014214 n).toNat (A072411 (n + 1)).toNat)

end

end A113720.P4982042094107056777

/-! ## A113720.P9052547947490116667

`A037916(A209764(n+1)+A055487(n+1))`
-/

namespace A113720.P9052547947490116667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A209764 (n + 1) + A055487 (n + 1)).toNat

end

end A113720.P9052547947490116667

/-! ## A113720.P16090653148158030110

`A261300(A236102(n+2)-A085153(n+1))`
-/

namespace A113720.P16090653148158030110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A236102 (n + 2) - A085153 (n + 1)).toNat

end

end A113720.P16090653148158030110

/-!
# A113722: A variant of Golomb's sequence using odd numbers: a(n) is the number of times 2*n+1 occurs, starting with a(1) = 1.

The programs for A113722, there is no canonical definition to state claims against.
-/

/-! ## A113722.P11864926460541856952

`A001650(∑[gcd(2, A119046(n+1))])`
-/

namespace A113722.P11864926460541856952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A119046 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113722.P11864926460541856952

/-!
# A113723: The number of terms in row n of A113722 when interpreted as a triangle.

The programs for A113723, there is no canonical definition to state claims against.
-/

/-! ## A113723.P4264072522542831324

`or(A290418(n), A342126(A005016(n)))`
-/

namespace A113723.P4264072522542831324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290418 n) (A342126 (A005016 n).toNat)

end

end A113723.P4264072522542831324

/-! ## A113723.P2845075384688469752

`A007095(A076016(n+1)-A365940(n+1))`
-/

namespace A113723.P2845075384688469752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A076016 (n + 1) - A365940 (n + 1)).toNat

end

end A113723.P2845075384688469752

/-!
# A113724: A variant of Golomb's sequence using even numbers: a(n) is the number of times 2*n+2 occurs, starting with a(1) = 2.

The programs for A113724, there is no canonical definition to state claims against.
-/

/-! ## A113724.P10744487870780427085

`A080606(2+n)`
-/

namespace A113724.P10744487870780427085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (2 + n)

end

end A113724.P10744487870780427085

/-! ## A113724.P18067370385126460292

`A111439(2*(2+n))`
-/

namespace A113724.P18067370385126460292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (2 * (2 + n))

end

end A113724.P18067370385126460292

/-! ## A113724.P1247407225898815325

`lcm(2, A080606(2-(n-2*n)))`
-/

namespace A113724.P1247407225898815325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080606 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A113724.P1247407225898815325

/-! ## A113724.P10021414773254021810

`a(n-∑[char[A216046(n)]])+2` with `a(0)=2`
-/

namespace A113724.P10021414773254021810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216046 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A113724.P10021414773254021810

/-! ## A113724.P17694638728415016356

`round(sqrt(A111439(n+4+n)²+1))`
-/

namespace A113724.P17694638728415016356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A111439 (n + 4 + n) ^ 2 + 1 : ℝ))

end

end A113724.P17694638728415016356

/-! ## A113724.P1997601481531695419

`xor(1, A111439(Δ[(n+1)²]+1)+1)`
-/

namespace A113724.P1997601481531695419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 1)

end

end A113724.P1997601481531695419

/-! ## A113724.P6522008757845656940

`filter[A111439(n+3), A059841(#)]`
-/

namespace A113724.P6522008757845656940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A113724.P6522008757845656940

/-! ## A113724.P10508876478058522405

`filter[A111439(n+3), A135528(#)]`
-/

namespace A113724.P10508876478058522405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A113724.P10508876478058522405

/-! ## A113724.P61239860030859149

`filter[A111439(n+3), A266591(#)]`
-/

namespace A113724.P61239860030859149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A113724.P61239860030859149

/-! ## A113724.P2004336092039862329

`A186421(A111439(Δ[(n+2)²-n]))`
-/

namespace A113724.P2004336092039862329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A111439 (f1 (n + 1) - f1 n).toNat).toNat

end

end A113724.P2004336092039862329

/-!
# A113725: The number of terms in row n of A113724 when interpreted as a triangle.

The programs for A113725, there is no canonical definition to state claims against.
-/

/-! ## A113725.P14294088055538064384

`8*A191841(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A113725.P14294088055538064384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  8 * A191841 (a (n - 1)).toNat

end

end A113725.P14294088055538064384

/-!
# A113726: A Jacobsthal convolution.

The programs for A113726, the canonical program `A113726.P4262229525198185789` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113726 has offset 0).

The definition of A113726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113726.P11466854639024433524

`ogf(1/(1-x^2-4x^3-4x^4))`
-/

namespace A113726.P11466854639024433524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -4, -4] n

end

end A113726.P11466854639024433524

namespace A113726

/-- `ogf(1/(1-x^2-4x^3-4x^4))` -/
def P11466854639024433524.Spec : Prop :=
  ∀ n, P11466854639024433524.a n = A113726 n

end A113726

/-! ## A113726.P4262229525198185789

`a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113726

/-- `a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P4262229525198185789.Spec : Prop :=
  ∀ n, (P4262229525198185789.a n : ℤ) = A113726 n

theorem P4262229525198185789.correct : P4262229525198185789.Spec := by
  intro n
  simp only [A113726]

end A113726

/-! ## A113726.P17250561373549814577

`∑{#}[floor(n/2), C(n-#, #)*2^#*(1+(-1)^(n-#))/2]`
-/

namespace A113726.P17250561373549814577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k * 2 ^ k : ℚ) * (1 + (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) / 2

end

end A113726.P17250561373549814577

namespace A113726

/-- `∑{#}[floor(n/2), C(n-#, #)*2^#*(1+(-1)^(n-#))/2]` -/
def P17250561373549814577.Spec : Prop :=
  ∀ n, P17250561373549814577.a n = (A113726 n : ℚ)

end A113726

/-! ## A113726.P11648471163492273093

`2^n/3+(-1)^n/6+A001607(n+1)/2`
-/

namespace A113726.P11648471163492273093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3 + ((-1) ^ n : ℚ) / 6 + (A001607 (n + 1) : ℚ) / 2

end

end A113726.P11648471163492273093

namespace A113726

/-- `2^n/3+(-1)^n/6+A001607(n+1)/2` -/
def P11648471163492273093.Spec : Prop :=
  ∀ n, P11648471163492273093.a n = (A113726 n : ℚ)

end A113726

/-! ## A113726.P14044785952228513139

`xor(1, a(n-1)+4*a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A113726.P14044785952228513139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Nat.xor 1 (a (n - 1) + 4 * a (n - 3))

end

end A113726.P14044785952228513139

namespace A113726

/-- `xor(1, a(n-1)+4*a(n-3))` -/
def P14044785952228513139.Spec : Prop :=
  ∀ n, (P14044785952228513139.a n : ℤ) = A113726 n

end A113726

/-! ## A113726.P9761363152965813084

`A089977(n)-a(n-1)` with `a(0)=1`
-/

namespace A113726.P9761363152965813084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089977 n - a (n - 1)

end

end A113726.P9761363152965813084

namespace A113726

/-- `A089977(n)-a(n-1)` -/
def P9761363152965813084.Spec : Prop :=
  ∀ n, P9761363152965813084.a n = A113726 n

end A113726

/-! ## A113726.P5929771168015565796

`abs(∑[A033999(n)*A089977(n)])`
-/

namespace A113726.P5929771168015565796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A089977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A113726.P5929771168015565796

namespace A113726

/-- `abs(∑[A033999(n)*A089977(n)])` -/
def P5929771168015565796.Spec : Prop :=
  ∀ n, P5929771168015565796.a n = A113726 n

end A113726

/-! ## A113726.P2026237515390882203

`(A001607(n+1)+A001045(n+1))/2`
-/

namespace A113726.P2026237515390882203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001607 (n + 1) + A001045 (n + 1) : ℚ) / 2

end

end A113726.P2026237515390882203

namespace A113726

/-- `(A001607(n+1)+A001045(n+1))/2` -/
def P2026237515390882203.Spec : Prop :=
  ∀ n, P2026237515390882203.a n = (A113726 n : ℚ)

end A113726

/-! ## A113726.P13422063091511405128

`∑[Δ[A097334(n)/2]-A001045(n)]`
-/

namespace A113726.P13422063091511405128
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097334 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (A001045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113726.P13422063091511405128

namespace A113726

/-- `∑[Δ[A097334(n)/2]-A001045(n)]` -/
def P13422063091511405128.Spec : Prop :=
  ∀ n, P13422063091511405128.a n = (A113726 n : ℚ)

end A113726

/-!
# A113727: A Pell convolution.

The programs for A113727, the canonical program `A113727.P3530867246785022383` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113727 has offset 0).

The definition of A113727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113727.P44254338367072869

`ogf(1/(1-4x^2-4x^3-x^4))`
-/

namespace A113727.P44254338367072869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -4, -4, -1] n

end

end A113727.P44254338367072869

namespace A113727

/-- `ogf(1/(1-4x^2-4x^3-x^4))` -/
def P44254338367072869.Spec : Prop :=
  ∀ n, P44254338367072869.a n = A113727 n

end A113727

/-! ## A113727.P3530867246785022383

`4*a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113727

/-- `4*a(n-2)+4*a(n-3)+a(n-4)` -/
def P3530867246785022383.Spec : Prop :=
  ∀ n, (P3530867246785022383.a n : ℤ) = A113727 n

theorem P3530867246785022383.correct : P3530867246785022383.Spec := by
  intro n
  simp only [A113727]

end A113727

/-! ## A113727.P3225355485429446567

`A000129(n+1)/2+(n+1)*(-1)^n/2`
-/

namespace A113727.P3225355485429446567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / 2 + ((n + 1 : ℤ) * (-1) ^ n : ℚ) / 2

end

end A113727.P3225355485429446567

namespace A113727

/-- `A000129(n+1)/2+(n+1)*(-1)^n/2` -/
def P3225355485429446567.Spec : Prop :=
  ∀ n, P3225355485429446567.a n = (A113727 n : ℚ)

end A113727

/-! ## A113727.P7309902279811071334

`A111954(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A113727.P7309902279811071334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A111954 n + a (n - 2)

end

end A113727.P7309902279811071334

namespace A113727

/-- `A111954(n)+a(n-2)` -/
def P7309902279811071334.Spec : Prop :=
  ∀ n, P7309902279811071334.a n = A113727 n

end A113727

/-! ## A113727.P11965284151066026199

`∑[A171842(n)]-(n+1)*and(1, n)`
-/

namespace A113727.P11965284151066026199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) * Nat.land 1 n : ℤ)

end

end A113727.P11965284151066026199

namespace A113727

/-- `∑[A171842(n)]-(n+1)*and(1, n)` -/
def P11965284151066026199.Spec : Prop :=
  ∀ n, P11965284151066026199.a n = A113727 n

end A113727

/-! ## A113727.P4150529927135533955

`A130472(n)+A113225(n)`
-/

namespace A113727.P4150529927135533955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A113225 n

end

end A113727.P4150529927135533955

namespace A113727

/-- `A130472(n)+A113225(n)` -/
def P4150529927135533955.Spec : Prop :=
  ∀ n, P4150529927135533955.a n = A113727 n

end A113727

/-! ## A113727.P620658239439278644

`A113225(n)-A001057(n)`
-/

namespace A113727.P620658239439278644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 n - A001057 n

end

end A113727.P620658239439278644

namespace A113727

/-- `A113225(n)-A001057(n)` -/
def P620658239439278644.Spec : Prop :=
  ∀ n, P620658239439278644.a n = A113727 n

end A113727

/-! ## A113727.P6652325033990202952

`∑[A097075(n)]-A001057(n)`
-/

namespace A113727.P6652325033990202952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001057 n

end

end A113727.P6652325033990202952

namespace A113727

/-- `∑[A097075(n)]-A001057(n)` -/
def P6652325033990202952.Spec : Prop :=
  ∀ n, P6652325033990202952.a n = A113727 n

end A113727

/-! ## A113727.P17274707280512204283

`∑[A171842(n)]-A237420(n+1)`
-/

namespace A113727.P17274707280512204283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237420 (n + 1)

end

end A113727.P17274707280512204283

namespace A113727

/-- `∑[A171842(n)]-A237420(n+1)` -/
def P17274707280512204283.Spec : Prop :=
  ∀ n, P17274707280512204283.a n = A113727 n

end A113727

/-! ## A113727.P508075136020506163

`abs(∑[A077921(n)])`
-/

namespace A113727.P508075136020506163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A113727.P508075136020506163

namespace A113727

/-- `abs(∑[A077921(n)])` -/
def P508075136020506163.Spec : Prop :=
  ∀ n, P508075136020506163.a n = A113727 n

end A113727

/-! ## A113727.P8445326845717919648

`abs(∑[∑[A077985(n)]])`
-/

namespace A113727.P8445326845717919648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A113727.P8445326845717919648

namespace A113727

/-- `abs(∑[∑[A077985(n)]])` -/
def P8445326845717919648.Spec : Prop :=
  ∀ n, P8445326845717919648.a n = A113727 n

end A113727

/-! ## A113727.P11098919847946821151

`A097076(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A113727.P11098919847946821151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097076 (n + 1) - a (n - 1)

end

end A113727.P11098919847946821151

namespace A113727

/-- `A097076(n+1)-a(n-1)` -/
def P11098919847946821151.Spec : Prop :=
  ∀ n, P11098919847946821151.a n = A113727 n

end A113727

/-! ## A113727.P13302222915117604154

`∑[A077921(n)]*A033999(n)`
-/

namespace A113727.P13302222915117604154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A113727.P13302222915117604154

namespace A113727

/-- `∑[A077921(n)]*A033999(n)` -/
def P13302222915117604154.Spec : Prop :=
  ∀ n, P13302222915117604154.a n = A113727 n

end A113727

/-! ## A113727.P7063954270015422960

`gcd(∑[A077921(n)], A000038(n))`
-/

namespace A113727.P7063954270015422960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A113727.P7063954270015422960

namespace A113727

/-- `gcd(∑[A077921(n)], A000038(n))` -/
def P7063954270015422960.Spec : Prop :=
  ∀ n, (P7063954270015422960.a n : ℤ) = A113727 n

end A113727

/-! ## A113727.P14307825120587800518

`lcm(∑[A077921(n)], A000034(n))`
-/

namespace A113727.P14307825120587800518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A113727.P14307825120587800518

namespace A113727

/-- `lcm(∑[A077921(n)], A000034(n))` -/
def P14307825120587800518.Spec : Prop :=
  ∀ n, (P14307825120587800518.a n : ℤ) = A113727 n

end A113727

/-! ## A113727.P4785671198494025705

`(A181983(n+1)+A000129(n+1))/2`
-/

namespace A113727.P4785671198494025705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181983 (n + 1) + A000129 (n + 1) : ℚ) / 2

end

end A113727.P4785671198494025705

namespace A113727

/-- `(A181983(n+1)+A000129(n+1))/2` -/
def P4785671198494025705.Spec : Prop :=
  ∀ n, P4785671198494025705.a n = (A113727 n : ℚ)

end A113727

/-! ## A113727.P13820335830657199955

`abs(∑[(A097075(n)-A097076(n))*A097076(n+1)])`
-/

namespace A113727.P13820335830657199955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097075 n - A097076 n) * A097076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A113727.P13820335830657199955

namespace A113727

/-- `abs(∑[(A097075(n)-A097076(n))*A097076(n+1)])` -/
def P13820335830657199955.Spec : Prop :=
  ∀ n, P13820335830657199955.a n = A113727 n

end A113727

/-!
# A113728: a(n) is the integer between p(n) and p(n+2) which is divisible by (p(n+2)-p(n)), where p(n) is the n-th prime.

The programs for A113728, the canonical program `A113728.P2802102494628422056` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113728 has offset 1).

The definition of A113728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113728.P2802102494628422056

`A031131(n+1)*ceil(A000040(n+1)/A031131(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113728

/-- `A031131(n+1)*ceil(A000040(n+1)/A031131(n+1))` -/
def P2802102494628422056.Spec : Prop :=
  ∀ n, P2802102494628422056.a n = A113728 (n + 1)

theorem P2802102494628422056.correct : P2802102494628422056.Spec := by
  intro n
  simp only [A113728, Nat.add_sub_cancel]

end A113728

/-! ## A113728.P12261184526545763828

`A004139(n+1)-A004139(n+1)%A031131(n+1)`
-/

namespace A113728.P12261184526545763828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - Int.tmod (A004139 (n + 1)) (A031131 (n + 1))

end

end A113728.P12261184526545763828

namespace A113728

/-- `A004139(n+1)-A004139(n+1)%A031131(n+1)` -/
def P12261184526545763828.Spec : Prop :=
  ∀ n, P12261184526545763828.a n = A113728 (n + 1)

end A113728

/-! ## A113728.P14993785704433086691

`A215848(n+1)-A215848(n+1)%A031131(n+1)`
-/

namespace A113728.P14993785704433086691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - Int.tmod (A215848 (n + 1)) (A031131 (n + 1))

end

end A113728.P14993785704433086691

namespace A113728

/-- `A215848(n+1)-A215848(n+1)%A031131(n+1)` -/
def P14993785704433086691.Spec : Prop :=
  ∀ n, P14993785704433086691.a n = A113728 (n + 1)

end A113728

/-! ## A113728.P15857785164856321197

`A006093(n+3)-A006093(n+1)%A031131(n+1)`
-/

namespace A113728.P15857785164856321197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) - Int.tmod (A006093 (n + 1)) (A031131 (n + 1))

end

end A113728.P15857785164856321197

namespace A113728

/-- `A006093(n+3)-A006093(n+1)%A031131(n+1)` -/
def P15857785164856321197.Spec : Prop :=
  ∀ n, P15857785164856321197.a n = A113728 (n + 1)

end A113728

/-! ## A113728.P2952440520431063170

`A008578(n+4)-A008578(n+2)%A031131(n+1)`
-/

namespace A113728.P2952440520431063170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) - Int.tmod (A008578 (n + 2)) (A031131 (n + 1))

end

end A113728.P2952440520431063170

namespace A113728

/-- `A008578(n+4)-A008578(n+2)%A031131(n+1)` -/
def P2952440520431063170.Spec : Prop :=
  ∀ n, P2952440520431063170.a n = A113728 (n + 1)

end A113728

/-!
# A113729: a(n) is the integer between p(n) and p(n+3) which is divisible by (p(n+3)-p(n)), where p(n) is the n-th prime.

The programs for A113729, the canonical program `A113729.P14761420094418722741` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113729 has offset 1).

The definition of A113729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113729.P14761420094418722741

`A006093(n+4)-A006093(n+1)%A031165(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113729

/-- `A006093(n+4)-A006093(n+1)%A031165(n+1)` -/
def P14761420094418722741.Spec : Prop :=
  ∀ n, P14761420094418722741.a n = A113729 (n + 1)

theorem P14761420094418722741.correct : P14761420094418722741.Spec := by
  intro n
  simp only [A113729, Nat.add_sub_cancel]

end A113729

/-! ## A113729.P1210782443050304390

`A008578(n+5)-A008578(n+2)%(A008578(n+2)-A008578(n+5))`
-/

namespace A113729.P1210782443050304390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 5) - Int.tmod (A008578 (n + 2)) (A008578 (n + 2) - A008578 (n + 5))

end

end A113729.P1210782443050304390

namespace A113729

/-- `A008578(n+5)-A008578(n+2)%(A008578(n+2)-A008578(n+5))` -/
def P1210782443050304390.Spec : Prop :=
  ∀ n, P1210782443050304390.a n = A113729 (n + 1)

end A113729

/-! ## A113729.P6347049032228836662

`A090417(n+1)-A090417(n+1)%A031165(n+1)`
-/

namespace A113729.P6347049032228836662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - Int.tmod (A090417 (n + 1)) (A031165 (n + 1))

end

end A113729.P6347049032228836662

namespace A113729

/-- `A090417(n+1)-A090417(n+1)%A031165(n+1)` -/
def P6347049032228836662.Spec : Prop :=
  ∀ n, P6347049032228836662.a n = A113729 (n + 1)

end A113729

/-! ## A113729.P735852975691711277

`A001221(A151533(3*n+2))*A031165(n+1)`
-/

namespace A113729.P735852975691711277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151533 (3 * n + 2)).toNat * A031165 (n + 1)

end

end A113729.P735852975691711277

namespace A113729

/-- `A001221(A151533(3*n+2))*A031165(n+1)` -/
def P735852975691711277.Spec : Prop :=
  ∀ n, P735852975691711277.a n = A113729 (n + 1)

end A113729

/-!
# A113731: Number of terms in row n of A113730 when interpreted as a triangle.

The programs for A113731, there is no canonical definition to state claims against.
-/

/-! ## A113731.P17040802964296117816

`Δ[A113734(n+1)]`
-/

namespace A113731.P17040802964296117816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113731.P17040802964296117816

/-! ## A113731.P16766777783486808870

`abs(Δ[A113734(A216556(n))])`
-/

namespace A113731.P16766777783486808870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113734 (A216556 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A113731.P16766777783486808870

/-! ## A113731.P1998838791741868323

`abs(Δ[A113734(A291769(n))])`
-/

namespace A113731.P1998838791741868323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113734 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A113731.P1998838791741868323

/-! ## A113731.P10291889655274825039

`Δ[record[A113734(A028920(n))]]`
-/

namespace A113731.P10291889655274825039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113734 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113731.P10291889655274825039

/-! ## A113731.P10164731504888638535

`Δ[record[A113734(A038569(n))]]`
-/

namespace A113731.P10164731504888638535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113734 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113731.P10164731504888638535

/-!
# A113732: Records in A111273.

The programs for A113732, there is no canonical definition to state claims against.
-/

/-! ## A113732.P39372100155465194

`record[A111273(n+1)]`
-/

namespace A113732.P39372100155465194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113732.P39372100155465194

/-! ## A113732.P1299910572908182525

`A111273(A113733(n+1))`
-/

namespace A113732.P1299910572908182525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (A113733 (n + 1)).toNat

end

end A113732.P1299910572908182525

/-! ## A113732.P5437450894207015003

`record[A111273(A004277(n)-n)-char[6]]`
-/

namespace A113732.P5437450894207015003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (A004277 n - (n : ℤ)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113732.P5437450894207015003

/-! ## A113732.P6321189323394334690

`record[A057077(n)*A111273(A133310(n))]`
-/

namespace A113732.P6321189323394334690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A111273 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113732.P6321189323394334690

/-!
# A113733: Where records occur in A111273.

The programs for A113733, there is no canonical definition to state claims against.
-/

/-! ## A113733.P16078132027495747686

`A011772(A113732(n+1))`
-/

namespace A113733.P16078132027495747686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A113732 (n + 1)).toNat

end

end A113733.P16078132027495747686

/-! ## A113733.P12895638906623607680

`A011772(record[A111273(n+1)])`
-/

namespace A113733.P12895638906623607680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113733.P12895638906623607680

/-! ## A113733.P11161054207075313004

`A113658(record[A111273(n+1)])`
-/

namespace A113733.P11161054207075313004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113733.P11161054207075313004

/-! ## A113733.P16700545961463294776

`A113658(A113732(n+1)+char[10])`
-/

namespace A113733.P16700545961463294776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A113732 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A113733.P16700545961463294776

/-!
# A113734: Maximum value in row n of A113730 when interpreted as a triangle.

The programs for A113734, there is no canonical definition to state claims against.
-/

/-! ## A113734.P1994809699100615277

`∑[A113731(round(acot(n)+n))]`
-/

namespace A113734.P1994809699100615277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113731 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113734.P1994809699100615277

/-! ## A113734.P1716694449555067820

`A113731(n)+a(n-1)` with `a(0)=1`
-/

namespace A113734.P1716694449555067820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113731 n + a (n - 1)

end

end A113734.P1716694449555067820

/-! ## A113734.P6107547505665874801

`∑[A113731(round(sqrt(n²+1)))]`
-/

namespace A113734.P6107547505665874801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113731 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113734.P6107547505665874801

/-! ## A113734.P3468548381092203689

`∑[A113731(n+1)]+1-A113731(n+1)`
-/

namespace A113734.P3468548381092203689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A113731 (n + 1))

end

end A113734.P3468548381092203689

/-!
# A113742: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 5 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A113742, there is no canonical definition to state claims against.
-/

/-! ## A113742.P12473278347876287836

`A113749(A052905(n+3))`
-/

namespace A113742.P12473278347876287836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A052905 (n + 3)).toNat

end

end A113742.P12473278347876287836

/-! ## A113742.P4961183916087127866

`A113749(A055999(n+3)+1)`
-/

namespace A113742.P4961183916087127866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055999 (n + 3) + 1).toNat

end

end A113742.P4961183916087127866

/-! ## A113742.P11315232254087417185

`A113749(A055998(n+4)-2)`
-/

namespace A113742.P11315232254087417185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055998 (n + 4) - 2).toNat

end

end A113742.P11315232254087417185

/-! ## A113742.P6066425226341529271

`A113749(A034856(n+5)-3)`
-/

namespace A113742.P6066425226341529271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A034856 (n + 5) - 3).toNat

end

end A113742.P6066425226341529271

/-! ## A113742.P800858308830544329

`A113749(A000124(n+5)+n)`
-/

namespace A113742.P800858308830544329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A000124 (n + 5) + (n : ℤ)).toNat

end

end A113742.P800858308830544329

/-! ## A113742.P15334859192404328916

`A113749(Δ[A023545(n+2)]-1)`
-/

namespace A113742.P15334859192404328916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (f1 (n + 1) - f1 n - 1).toNat

end

end A113742.P15334859192404328916

/-! ## A113742.P8818975301348509862

`A113749(A000217(abs(1-n)+6)+n+1)`
-/

namespace A113742.P8818975301348509862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A000217 (|1 - (n : ℤ)| + 6).toNat + (n : ℤ) + 1).toNat

end

end A113742.P8818975301348509862

/-! ## A113742.P15673683923323588109

`A113749(eq[3, A219347(n)])`
-/

namespace A113742.P15673683923323588109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113742.P15673683923323588109

/-!
# A113743: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 6 multiples of n-1, n-2, ..., 1.

The programs for A113743, there is no canonical definition to state claims against.
-/

/-! ## A113743.P10297495524303320287

`A113749(A052905(n+4)-1)`
-/

namespace A113743.P10297495524303320287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A052905 (n + 4) - 1).toNat

end

end A113743.P10297495524303320287

/-! ## A113743.P17896058566959827155

`A113749(A246172(n+4)-n)`
-/

namespace A113743.P17896058566959827155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A246172 (n + 4) - (n : ℤ)).toNat

end

end A113743.P17896058566959827155

/-! ## A113743.P2897634322531340042

`A278492(A139276(n))`
-/

namespace A113743.P2897634322531340042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A139276 n).toNat

end

end A113743.P2897634322531340042

/-! ## A113743.P16027804367571222444

`A278492(A033954(2*n)/2)`
-/

namespace A113743.P16027804367571222444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (SequenceMachineLib.roundAway ((A033954 (2 * n) : ℚ) / 2)).toNat

end

end A113743.P16027804367571222444

/-! ## A113743.P13197240232271457961

`A278492(A033566(n)+n+1)`
-/

namespace A113743.P13197240232271457961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A033566 n + (n + 1 : ℤ)).toNat

end

end A113743.P13197240232271457961

/-!
# A113744: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 7 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A113744, there is no canonical definition to state claims against.
-/

/-! ## A113744.P9285165735750682684

`A113749(A055999(n+5)-1)`
-/

namespace A113744.P9285165735750682684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055999 (n + 5) - 1).toNat

end

end A113744.P9285165735750682684

/-! ## A113744.P12636616016659691536

`A113749(A056000(n+4)+3)`
-/

namespace A113744.P12636616016659691536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A056000 (n + 4) + 3).toNat

end

end A113744.P12636616016659691536

/-! ## A113744.P4513461726216954391

`A113749(A000217(n+8)-7)`
-/

namespace A113744.P4513461726216954391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A000217 (n + 8) - 7).toNat

end

end A113744.P4513461726216954391

/-! ## A113744.P12427377531546236462

`A113749(eq[8, A092921(n+1)])`
-/

namespace A113744.P12427377531546236462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113744.P12427377531546236462

/-! ## A113744.P2829491467810125254

`A113749(eq[5, A219347(n)])`
-/

namespace A113744.P2829491467810125254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113744.P2829491467810125254

/-! ## A113744.P14749649510316808692

`A113749(eq[7, A025581(n)]+1)`
-/

namespace A113744.P14749649510316808692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A113744.P14749649510316808692

/-!
# A113745: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 8 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A113745, there is no canonical definition to state claims against.
-/

/-! ## A113745.P274039493763505961

`A113749(A155212(n+5))`
-/

namespace A113745.P274039493763505961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A155212 (n + 5)).toNat

end

end A113745.P274039493763505961

/-! ## A113745.P8167394859969336682

`A113749(Δ[A101853(n+4)]+1)`
-/

namespace A113745.P8167394859969336682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (f1 (n + 1) - f1 n + 1).toNat

end

end A113745.P8167394859969336682

/-! ## A113745.P4566584648323314254

`A113749(eq[6, A219347(n)])`
-/

namespace A113745.P4566584648323314254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113745.P4566584648323314254

/-! ## A113745.P12438916241070354190

`A278492(A063436(n)+∑[n])`
-/

namespace A113745.P12438916241070354190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A063436 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A113745.P12438916241070354190

/-! ## A113745.P16244876600486966938

`A278492(A000217(5*n)+n)`
-/

namespace A113745.P16244876600486966938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A000217 (5 * n) + (n : ℤ)).toNat

end

end A113745.P16244876600486966938

/-!
# A113746: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 9 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A113746, there is no canonical definition to state claims against.
-/

/-! ## A113746.P16532563666904432503

`A113749(Δ[A101853(n+5)])`
-/

namespace A113746.P16532563666904432503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (f1 (n + 1) - f1 n).toNat

end

end A113746.P16532563666904432503

/-! ## A113746.P3887206250256688400

`A113749(A155212(n+6)-1)`
-/

namespace A113746.P3887206250256688400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A155212 (n + 6) - 1).toNat

end

end A113746.P3887206250256688400

/-! ## A113746.P12229190577172966445

`A113749(A055998(n+7)+n+4)`
-/

namespace A113746.P12229190577172966445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055998 (n + 7) + (n + 4 : ℤ)).toNat

end

end A113746.P12229190577172966445

/-! ## A113746.P5610360286515268898

`A113749((A000217(n+10)-10)%A044377(n+1)+1)`
-/

namespace A113746.P5610360286515268898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (Int.tmod (A000217 (n + 10) - 10) (A044377 (n + 1)) + 1).toNat

end

end A113746.P5610360286515268898

/-! ## A113746.P10652408404722065784

`A113749(eq[10, A131818(n+1)]+2*n+1)`
-/

namespace A113746.P10652408404722065784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 * n + 1)

end

end A113746.P10652408404722065784

/-! ## A113746.P14906314698844261085

`A113749(eq[8, A219347(n)])`
-/

namespace A113746.P14906314698844261085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113746.P14906314698844261085

/-!
# A113747: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 10 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A113747, there is no canonical definition to state claims against.
-/

/-! ## A113747.P6430654664514395988

`A113749(A056000(n+7))`
-/

namespace A113747.P6430654664514395988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A056000 (n + 7)).toNat

end

end A113747.P6430654664514395988

/-! ## A113747.P10186587029917512117

`A113749(eq[10, A219347(n)])`
-/

namespace A113747.P10186587029917512117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113747.P10186587029917512117

/-! ## A113747.P17421282559587346868

`A113749(eq[10, A025581(n)]+1)`
-/

namespace A113747.P17421282559587346868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A113747.P17421282559587346868

/-! ## A113747.P9071424256369593140

`A278492((9*n+2)*2*n)`
-/

namespace A113747.P9071424256369593140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 ((9 * n + 2) * (2 * n))

end

end A113747.P9071424256369593140

/-! ## A113747.P16349732203123645775

`A278493(A062728(2*n)+n)`
-/

namespace A113747.P16349732203123645775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A062728 (2 * n) + (n : ℤ)).toNat

end

end A113747.P16349732203123645775

/-!
# A113748: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 11 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A113748, there is no canonical definition to state claims against.
-/

/-! ## A113748.P15137320465295259486

`A113749(A000217(n+11)+n+1)`
-/

namespace A113748.P15137320465295259486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A000217 (n + 11) + (n + 1 : ℤ)).toNat

end

end A113748.P15137320465295259486

/-! ## A113748.P13270578257827567658

`A113749(eq[12, A219347(n)])`
-/

namespace A113748.P13270578257827567658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113748.P13270578257827567658

/-! ## A113748.P16993391765312430950

`A113749(eq[11, A025581(n)]+1)`
-/

namespace A113748.P16993391765312430950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A113748.P16993391765312430950

/-!
# A113749: Consider the generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next k multiples of n-1, n-2, ..., 1, for n>=1. Now construct the array, t, such that t(n,k) is the n-th and successively rounding up to the next k multiples. This sequence is the presentation of that array by reading the antidiagonals.

The programs for A113749, there is no canonical definition to state claims against.
-/

/-! ## A113749.P13839226649234640682

`A206916(A119258(n))-1`
-/

namespace A113749.P13839226649234640682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A119258 n).toNat - 1

end

end A113749.P13839226649234640682

/-! ## A113749.P3505654435039183400

`A375499(A055107(n+2))`
-/

namespace A113749.P3505654435039183400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375499 (A055107 (n + 2)).toNat

end

end A113749.P3505654435039183400

/-! ## A113749.P17693951184754990669

`A156253(A227177(A119258(n)²))`
-/

namespace A113749.P17693951184754990669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A227177 (A119258 n ^ 2).toNat).toNat

end

end A113749.P17693951184754990669

/-! ## A113749.P13621418680270893637

`A003056(A175858(A119258(n))+A119258(n))`
-/

namespace A113749.P13621418680270893637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A175858 (A119258 n).toNat + A119258 n).toNat

end

end A113749.P13621418680270893637

/-! ## A113749.P4586799506655089043

`A001462(A119258(n)%A270339(2*(n+1)))`
-/

namespace A113749.P4586799506655089043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A119258 n) (A270339 (2 * (n + 1)))).toNat

end

end A113749.P4586799506655089043

/-!
# A113750: Consider the generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next k multiples of n-1, n-2, ..., 1, for n>=1. Now construct the array, t, such that t(n,k) is the n-th and successively rounding up to the next k multiples. This sequence is the determinant of that array.

The programs for A113750, there is no canonical definition to state claims against.
-/

/-! ## A113750.P15681161825702795476

`A030110(n)*A118827(A344709(n+1))`
-/

namespace A113750.P15681161825702795476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030110 n * A118827 (A344709 (n + 1)).toNat

end

end A113750.P15681161825702795476

/-!
# A113751: Number of diagonal rectangles with corners on an n X n grid of points.

The programs for A113751, there is no canonical definition to state claims against.
-/

/-! ## A113751.P13675339447319924494

`A085582(n+1)-A000537(n)`
-/

namespace A113751.P13675339447319924494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085582 (n + 1) - A000537 n

end

end A113751.P13675339447319924494

/-! ## A113751.P763292052289638054

`A085582(n+1)-∑[n]²`
-/

namespace A113751.P763292052289638054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085582 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A113751.P763292052289638054

/-!
# A113752: Smallest number m such that m, m+1 and m+2 have exactly n prime factors (counted with multiplicity).

The programs for A113752, there is no canonical definition to state claims against.
-/

/-! ## A113752.P8472803384086233798

`A374392(n+3)/2`
-/

namespace A113752.P8472803384086233798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374392 (n + 3) : ℚ) / 2

end

end A113752.P8472803384086233798

/-! ## A113752.P4170492811582175889

`A375160(A020752(n))`
-/

namespace A113752.P4170492811582175889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375160 (A020752 n).toNat

end

end A113752.P4170492811582175889

/-!
# A113753: a(n) = Fibonacci(n-1) + prime(n).

The programs for A113753, the canonical program `A113753.P13707205483835590104` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113753 has offset 1).

The definition of A113753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+A000040(n+1)` (program `A113753.P13707205483835590104`, by `A113753.P13707205483835590104.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113753.P13707205483835590104

`A000045(n)+A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113753

/-- `A000045(n)+A000040(n+1)` -/
def P13707205483835590104.Spec : Prop :=
  ∀ n, P13707205483835590104.a n = A113753 (n + 1)

theorem P13707205483835590104.correct : P13707205483835590104.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel]

end A113753

/-! ## A113753.P11307040558443390357

`A001611(n)+∑[A075526(n)]`
-/

namespace A113753.P11307040558443390357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113753.P11307040558443390357

namespace A113753

/-- `A001611(n)+∑[A075526(n)]` -/
def P11307040558443390357.Spec : Prop :=
  ∀ n, P11307040558443390357.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P1947251045824733667

`A000045(n)+Δ[A007504(n)]`
-/

namespace A113753.P1947251045824733667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A113753.P1947251045824733667

namespace A113753

/-- `A000045(n)+Δ[A007504(n)]` -/
def P1947251045824733667.Spec : Prop :=
  ∀ n, P1947251045824733667.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P2230098535916094308

`A000045(n)+record[A051698(n)]`
-/

namespace A113753.P2230098535916094308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113753.P2230098535916094308

namespace A113753

/-- `A000045(n)+record[A051698(n)]` -/
def P2230098535916094308.Spec : Prop :=
  ∀ n, P2230098535916094308.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P8056481567033988845

`A000045(n)+record[A162753(n)]`
-/

namespace A113753.P8056481567033988845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113753.P8056481567033988845

namespace A113753

/-- `A000045(n)+record[A162753(n)]` -/
def P8056481567033988845.Spec : Prop :=
  ∀ n, P8056481567033988845.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P11430816470431295531

`A000045(n)+record[A327667(n)]`
-/

namespace A113753.P11430816470431295531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113753.P11430816470431295531

namespace A113753

/-- `A000045(n)+record[A327667(n)]` -/
def P11430816470431295531.Spec : Prop :=
  ∀ n, P11430816470431295531.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P12093795732217762677

`A000045(n)+p?[A001057(n)]`
-/

namespace A113753.P12093795732217762677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113753.P12093795732217762677

namespace A113753

/-- `A000045(n)+p?[A001057(n)]` -/
def P12093795732217762677.Spec : Prop :=
  ∀ n, P12093795732217762677.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P13492171521918396093

`A000045(n)+p?[A014681(n)]`
-/

namespace A113753.P13492171521918396093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113753.P13492171521918396093

namespace A113753

/-- `A000045(n)+p?[A014681(n)]` -/
def P13492171521918396093.Spec : Prop :=
  ∀ n, P13492171521918396093.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P5308503277317294365

`A000045(n)+p?[A131732(n)]`
-/

namespace A113753.P5308503277317294365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113753.P5308503277317294365

namespace A113753

/-- `A000045(n)+p?[A131732(n)]` -/
def P5308503277317294365.Spec : Prop :=
  ∀ n, P5308503277317294365.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P18347872110603047361

`A000045(n)+p?[A143051(n)]`
-/

namespace A113753.P18347872110603047361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113753.P18347872110603047361

namespace A113753

/-- `A000045(n)+p?[A143051(n)]` -/
def P18347872110603047361.Spec : Prop :=
  ∀ n, P18347872110603047361.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P13577621826612225192

`A000045(n)+p?[A352844(n)]`
-/

namespace A113753.P13577621826612225192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113753.P13577621826612225192

namespace A113753

/-- `A000045(n)+p?[A352844(n)]` -/
def P13577621826612225192.Spec : Prop :=
  ∀ n, P13577621826612225192.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P8219615940215494574

`A000040(n+1)+A000045(n)`
-/

namespace A113753.P8219615940215494574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000045 n

end

end A113753.P8219615940215494574

namespace A113753

/-- `A000040(n+1)+A000045(n)` -/
def P8219615940215494574.Spec : Prop :=
  ∀ n, P8219615940215494574.a n = A113753 (n + 1)

theorem P8219615940215494574.correct : P8219615940215494574.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P8219615940215494574.a, A113753.P13707205483835590104.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A113753

/-! ## A113753.P4917937511837414419

`A006093(n+1)+A001611(n)`
-/

namespace A113753.P4917937511837414419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A001611 n

end

end A113753.P4917937511837414419

namespace A113753

/-- `A006093(n+1)+A001611(n)` -/
def P4917937511837414419.Spec : Prop :=
  ∀ n, P4917937511837414419.a n = A113753 (n + 1)

theorem P4917937511837414419.correct : P4917937511837414419.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P4917937511837414419.a, A113753.P13707205483835590104.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113753

/-! ## A113753.P10993436272965023894

`A014692(n+1)+A002062(n)`
-/

namespace A113753.P10993436272965023894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + A002062 n

end

end A113753.P10993436272965023894

namespace A113753

/-- `A014692(n+1)+A002062(n)` -/
def P10993436272965023894.Spec : Prop :=
  ∀ n, P10993436272965023894.a n = A113753 (n + 1)

theorem P10993436272965023894.correct : P10993436272965023894.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P10993436272965023894.a, A113753.P13707205483835590104.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113753

/-! ## A113753.P11888736854336300904

`A095116(n+1)+A065220(n)`
-/

namespace A113753.P11888736854336300904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + A065220 n

end

end A113753.P11888736854336300904

namespace A113753

/-- `A095116(n+1)+A065220(n)` -/
def P11888736854336300904.Spec : Prop :=
  ∀ n, P11888736854336300904.a n = A113753 (n + 1)

theorem P11888736854336300904.correct : P11888736854336300904.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P11888736854336300904.a, A113753.P13707205483835590104.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113753

/-! ## A113753.P9320567287549505282

`A172022(n+1)+A008346(n)`
-/

namespace A113753.P9320567287549505282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172022 (n + 1) + A008346 n

end

end A113753.P9320567287549505282

namespace A113753

/-- `A172022(n+1)+A008346(n)` -/
def P9320567287549505282.Spec : Prop :=
  ∀ n, P9320567287549505282.a n = A113753 (n + 1)

theorem P9320567287549505282.correct : P9320567287549505282.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P9320567287549505282.a, A113753.P13707205483835590104.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A008346, A008346.P8004040718753913505.a, A172022, A172022.P2113971824774684846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113753

/-! ## A113753.P676781011185988402

`A157725(n)+A040976(n+1)`
-/

namespace A113753.P676781011185988402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A040976 (n + 1)

end

end A113753.P676781011185988402

namespace A113753

/-- `A157725(n)+A040976(n+1)` -/
def P676781011185988402.Spec : Prop :=
  ∀ n, P676781011185988402.a n = A113753 (n + 1)

theorem P676781011185988402.correct : P676781011185988402.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P676781011185988402.a, A113753.P13707205483835590104.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A040976, A040976.P11599754272797435513.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113753

/-! ## A113753.P6458162199420797966

`A157726(n)+A086801(n+1)`
-/

namespace A113753.P6458162199420797966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + A086801 (n + 1)

end

end A113753.P6458162199420797966

namespace A113753

/-- `A157726(n)+A086801(n+1)` -/
def P6458162199420797966.Spec : Prop :=
  ∀ n, P6458162199420797966.a n = A113753 (n + 1)

theorem P6458162199420797966.correct : P6458162199420797966.Spec := by
  intro n
  simp only [A113753, Nat.add_sub_cancel, A113753.P6458162199420797966.a, A113753.P13707205483835590104.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A086801, A086801.P17699144881820784956.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113753

/-! ## A113753.P14832586183642963740

`A008578(n+2)+A000045(n)`
-/

namespace A113753.P14832586183642963740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000045 n

end

end A113753.P14832586183642963740

namespace A113753

/-- `A008578(n+2)+A000045(n)` -/
def P14832586183642963740.Spec : Prop :=
  ∀ n, P14832586183642963740.a n = A113753 (n + 1)

end A113753

/-! ## A113753.P16730364617574842574

`eq[1, A018783(n)]+A000045(n)`
-/

namespace A113753.P16730364617574842574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A000045 n

end

end A113753.P16730364617574842574

namespace A113753

/-- `eq[1, A018783(n)]+A000045(n)` -/
def P16730364617574842574.Spec : Prop :=
  ∀ n, P16730364617574842574.a n = A113753 (n + 1)

end A113753

/-!
# A113754: Number of possible squares on an n^2 X n^2 grid.

The programs for A113754, the canonical program `A113754.P16455167286047473581` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113754 has offset 1).

The definition of A113754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113754.P959053889884355577

`ogf((1+23x+96x^2+96x^3+23x^4+x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A113754.P959053889884355577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 23, 96, 96, 23, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A113754.P959053889884355577

namespace A113754

/-- `ogf((1+23x+96x^2+96x^3+23x^4+x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P959053889884355577.Spec : Prop :=
  ∀ n, P959053889884355577.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P16455167286047473581

`(n+1)²*((n+1)²+1)*(2*(n+1)²+1)/6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113754

/-- `(n+1)²*((n+1)²+1)*(2*(n+1)²+1)/6` -/
def P16455167286047473581.Spec : Prop :=
  ∀ n, P16455167286047473581.a n = (A113754 (n + 1) : ℚ)

end A113754

/-! ## A113754.P6404193889263073472

`∑{#}[(n+1)²-1, (#+1)²]`
-/

namespace A113754.P6404193889263073472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1) ^ 2

end

end A113754.P6404193889263073472

namespace A113754

/-- `∑{#}[(n+1)²-1, (#+1)²]` -/
def P6404193889263073472.Spec : Prop :=
  ∀ n, (P6404193889263073472.a n : ℤ) = A113754 (n + 1)

end A113754

/-! ## A113754.P4054510766768615700

`(n+1)*A052459(n+1)`
-/

namespace A113754.P4054510766768615700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052459 (n + 1)

end

end A113754.P4054510766768615700

namespace A113754

/-- `(n+1)*A052459(n+1)` -/
def P4054510766768615700.Spec : Prop :=
  ∀ n, P4054510766768615700.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P8891378614726926742

`A109764(n+1)+(n+1)²²`
-/

namespace A113754.P8891378614726926742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109764 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A113754.P8891378614726926742

namespace A113754

/-- `A109764(n+1)+(n+1)²²` -/
def P8891378614726926742.Spec : Prop :=
  ∀ n, P8891378614726926742.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P6863714020427241785

`lcm(A052459(n+1), A129202(n))`
-/

namespace A113754.P6863714020427241785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052459 (n + 1)) (A129202 n)

end

end A113754.P6863714020427241785

namespace A113754

/-- `lcm(A052459(n+1), A129202(n))` -/
def P6863714020427241785.Spec : Prop :=
  ∀ n, (P6863714020427241785.a n : ℤ) = A113754 (n + 1)

end A113754

/-! ## A113754.P6398017291335124326

`A153058((n+1)²)-4`
-/

namespace A113754.P6398017291335124326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 ((n + 1) ^ 2) - 4

end

end A113754.P6398017291335124326

namespace A113754

/-- `A153058((n+1)²)-4` -/
def P6398017291335124326.Spec : Prop :=
  ∀ n, P6398017291335124326.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P9521933484063555224

`A228124(A071619(n+1))`
-/

namespace A113754.P9521933484063555224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228124 (A071619 (n + 1)).toNat

end

end A113754.P9521933484063555224

namespace A113754

/-- `A228124(A071619(n+1))` -/
def P9521933484063555224.Spec : Prop :=
  ∀ n, P9521933484063555224.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P18310958954848874306

`A000330((n+1)²)`
-/

namespace A113754.P18310958954848874306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 ((n + 1) ^ 2)

end

end A113754.P18310958954848874306

namespace A113754

/-- `A000330((n+1)²)` -/
def P18310958954848874306.Spec : Prop :=
  ∀ n, P18310958954848874306.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P8133224678265336499

`A164765((n+1)²)`
-/

namespace A113754.P8133224678265336499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164765 ((n + 1) ^ 2)

end

end A113754.P8133224678265336499

namespace A113754

/-- `A164765((n+1)²)` -/
def P8133224678265336499.Spec : Prop :=
  ∀ n, P8133224678265336499.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P2193285883840106617

`record[A000330((1-n)²)]`
-/

namespace A113754.P2193285883840106617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113754.P2193285883840106617

namespace A113754

/-- `record[A000330((1-n)²)]` -/
def P2193285883840106617.Spec : Prop :=
  ∀ n, P2193285883840106617.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P14851444890434221868

`∑[abs(Δ[A000330(n²)])]`
-/

namespace A113754.P14851444890434221868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113754.P14851444890434221868

namespace A113754

/-- `∑[abs(Δ[A000330(n²)])]` -/
def P14851444890434221868.Spec : Prop :=
  ∀ n, P14851444890434221868.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P6288824290636379141

`A168559((n+1)²)+1`
-/

namespace A113754.P6288824290636379141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 ((n + 1) ^ 2) + 1

end

end A113754.P6288824290636379141

namespace A113754

/-- `A168559((n+1)²)+1` -/
def P6288824290636379141.Spec : Prop :=
  ∀ n, P6288824290636379141.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P3548761159364371575

`A179904((n+1)²)-2`
-/

namespace A113754.P3548761159364371575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 ((n + 1) ^ 2) - 2

end

end A113754.P3548761159364371575

namespace A113754

/-- `A179904((n+1)²)-2` -/
def P3548761159364371575.Spec : Prop :=
  ∀ n, P3548761159364371575.a n = A113754 (n + 1)

end A113754

/-! ## A113754.P18006050038739740250

`A145066((n+1)²)-(n+1)²`
-/

namespace A113754.P18006050038739740250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A113754.P18006050038739740250

namespace A113754

/-- `A145066((n+1)²)-(n+1)²` -/
def P18006050038739740250.Spec : Prop :=
  ∀ n, P18006050038739740250.a n = A113754 (n + 1)

end A113754

/-!
# A113755: Sequence implicit in Jaroma's corollary to Nagura's theorem on primes.

The programs for A113755, the canonical program `A113755.P11953505609422766994` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113755 has offset 1).

The definition of A113755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113755.P11953505609422766994

`floor((6/5)^(n+1)-A000040(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113755

/-- `floor((6/5)^(n+1)-A000040(n+1))` -/
def P11953505609422766994.Spec : Prop :=
  ∀ n, P11953505609422766994.a n = A113755 (n + 1)

theorem P11953505609422766994.correct : P11953505609422766994.Spec := by
  intro n
  simp only [A113755, Nat.add_sub_cancel]

end A113755

/-! ## A113755.P17031016527833016463

`A094983(n+1)-Δ[A007504(n)]`
-/

namespace A113755.P17031016527833016463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (n + 1) - (f1 (n + 1) - f1 n)

end

end A113755.P17031016527833016463

namespace A113755

/-- `A094983(n+1)-Δ[A007504(n)]` -/
def P17031016527833016463.Spec : Prop :=
  ∀ n, P17031016527833016463.a n = A113755 (n + 1)

end A113755

/-! ## A113755.P10315852858265465211

`A094983(n+1)-A000040(n+1)`
-/

namespace A113755.P10315852858265465211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (n + 1) - A000040 (n + 1)

end

end A113755.P10315852858265465211

namespace A113755

/-- `A094983(n+1)-A000040(n+1)` -/
def P10315852858265465211.Spec : Prop :=
  ∀ n, P10315852858265465211.a n = A113755 (n + 1)

end A113755

/-! ## A113755.P2570335400758108183

`A094983(n+1)-A015919(n+2)`
-/

namespace A113755.P2570335400758108183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (n + 1) - A015919 (n + 2)

end

end A113755.P2570335400758108183

namespace A113755

/-- `A094983(n+1)-A015919(n+2)` -/
def P2570335400758108183.Spec : Prop :=
  ∀ n, P2570335400758108183.a n = A113755 (n + 1)

end A113755

/-! ## A113755.P13401179776470218002

`A094983(n+1)-record[A006530(n+2)]`
-/

namespace A113755.P13401179776470218002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113755.P13401179776470218002

namespace A113755

/-- `A094983(n+1)-record[A006530(n+2)]` -/
def P13401179776470218002.Spec : Prop :=
  ∀ n, P13401179776470218002.a n = A113755 (n + 1)

end A113755

/-!
# A113759: Triangle read by rows: row n lists first n noncomposite numbers, starting with 1, in increasing order, whose sum is A113495(n).

The programs for A113759, there is no canonical definition to state claims against.
-/

/-! ## A113759.P14886237172878883195

`A137355(A002260(n+1)%A141214(n))`
-/

namespace A113759.P14886237172878883195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (Int.tmod (A002260 (n + 1)) (A141214 n)).toNat

end

end A113759.P14886237172878883195

/-! ## A113759.P7396581567904800406

`or(A118952(3*n+1), A137355(A002260(n+1)))`
-/

namespace A113759.P7396581567904800406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118952 (3 * n + 1)) (A137355 (A002260 (n + 1)).toNat)

end

end A113759.P7396581567904800406

/-! ## A113759.P16822770068488448170

`or(A095766(n+1)%2, A137355(A002260(n+1)))`
-/

namespace A113759.P16822770068488448170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A095766 (n + 1)) 2) (A137355 (A002260 (n + 1)).toNat)

end

end A113759.P16822770068488448170

/-! ## A113759.P2171858567443166204

`A137355(A002260(n+1))+A008683(A069266(n+1))`
-/

namespace A113759.P2171858567443166204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (A002260 (n + 1)).toNat + A008683 (A069266 (n + 1)).toNat

end

end A113759.P2171858567443166204

/-! ## A113759.P1834091610242865361

`A034968(A054888(T(n,k-1)))` with `a(0)=1`
-/

namespace A113759.P1834091610242865361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034968 (A054888 (SequenceMachineLib.triLeft a n).toNat).toNat

end

end A113759.P1834091610242865361

/-!
# A113761: Numbers k such that the number of divisors of k equals both the sum and the product of digits of k in base 10.

The programs for A113761, there is no canonical definition to state claims against.
-/

/-! ## A113761.P1628011024426029529

`∩[A034710(n+1), A074312(n+1)]`
-/

namespace A113761.P1628011024426029529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113761.P1628011024426029529

/-! ## A113761.P1249287952457498218

`∩[A074312(n+1), A342048(n+1)]`
-/

namespace A113761.P1249287952457498218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113761.P1249287952457498218

/-! ## A113761.P123890161633275326

`∩[A034710(n+1), A066613(n+1)]`
-/

namespace A113761.P123890161633275326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113761.P123890161633275326

/-! ## A113761.P17513586327273219318

`∩[A066613(n+1), A249334(n+1)]`
-/

namespace A113761.P17513586327273219318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113761.P17513586327273219318

/-! ## A113761.P4490129458902509751

`∩[A034710(n+1), A057531(n+1)]`
-/

namespace A113761.P4490129458902509751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113761.P4490129458902509751

/-!
# A113762: Numbers n with nonzero digits in their decimal representation such that when all numbers formed by inserting the exponentiation symbol between any two digits are added up, the sum is prime.

The programs for A113762, there is no canonical definition to state claims against.
-/

/-! ## A113762.P6502125050844315094

`A299400(A014210(n+1))`
-/

namespace A113762.P6502125050844315094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A014210 (n + 1)).toNat

end

end A113762.P6502125050844315094

/-!
# A113763: Non-multiples of 13, or numbers not divisible by 13.

The programs for A113763, the canonical program `A113763.P16374689458706922692` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113763 has offset 1).

The definition of A113763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113763.P16374689458706922692

`n+1+floor((2*(n+1)-1)/24)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113763

/-- `n+1+floor((2*(n+1)-1)/24)` -/
def P16374689458706922692.Spec : Prop :=
  ∀ n, P16374689458706922692.a n = A113763 (n + 1)

theorem P16374689458706922692.correct : P16374689458706922692.Spec := by
  intro n
  simp only [A113763, Nat.add_sub_cancel]

end A113763

/-! ## A113763.P12855811424960370919

`ogf((1+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+x^10+x^11+x^12)/(1-x-x^12+x^13))`
-/

namespace A113763.P12855811424960370919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A113763.P12855811424960370919

namespace A113763

/-- `ogf((1+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+x^10+x^11+x^12)/(1-x-x^12+x^13))` -/
def P12855811424960370919.Spec : Prop :=
  ∀ n, P12855811424960370919.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P8340014309148446342

`comp[lcm(13, n)]`
-/

namespace A113763.P8340014309148446342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 13 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A113763.P8340014309148446342

namespace A113763

/-- `comp[lcm(13, n)]` -/
def P8340014309148446342.Spec : Prop :=
  ∀ n, (P8340014309148446342.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P4371260462455668535

`comp[13*xor(23, n)]`
-/

namespace A113763.P4371260462455668535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.xor 23 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A113763.P4371260462455668535

namespace A113763

/-- `comp[13*xor(23, n)]` -/
def P4371260462455668535.Spec : Prop :=
  ∀ n, (P4371260462455668535.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P15549285319452758758

`eq[0, val(n+13, 13)]`
-/

namespace A113763.P15549285319452758758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 13) 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113763.P15549285319452758758

namespace A113763

/-- `eq[0, val(n+13, 13)]` -/
def P15549285319452758758.Spec : Prop :=
  ∀ n, (P15549285319452758758.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P13207805674909049275

`ceil(or(1, n)/12+n)`
-/

namespace A113763.P13207805674909049275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 12 + (n : ℚ)⌉

end

end A113763.P13207805674909049275

namespace A113763

/-- `ceil(or(1, n)/12+n)` -/
def P13207805674909049275.Spec : Prop :=
  ∀ n, P13207805674909049275.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P3062231683093344208

`comp[A008595(n)]`
-/

namespace A113763.P3062231683093344208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A113763.P3062231683093344208

namespace A113763

/-- `comp[A008595(n)]` -/
def P3062231683093344208.Spec : Prop :=
  ∀ n, (P3062231683093344208.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P13795760922274030613

`ceil(A097992(n)/2+n)`
-/

namespace A113763.P13795760922274030613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097992 n : ℚ) / 2 + (n : ℚ)⌉

end

end A113763.P13795760922274030613

namespace A113763

/-- `ceil(A097992(n)/2+n)` -/
def P13795760922274030613.Spec : Prop :=
  ∀ n, P13795760922274030613.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P964388583000915816

`∑[floor(sqrt(A145652(n+1)))]`
-/

namespace A113763.P964388583000915816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145652 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113763.P964388583000915816

namespace A113763

/-- `∑[floor(sqrt(A145652(n+1)))]` -/
def P964388583000915816.Spec : Prop :=
  ∀ n, P964388583000915816.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P10760335400849546431

`∑[char[A008594(n+1)]+1]`
-/

namespace A113763.P10760335400849546431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113763.P10760335400849546431

namespace A113763

/-- `∑[char[A008594(n+1)]+1]` -/
def P10760335400849546431.Spec : Prop :=
  ∀ n, (P10760335400849546431.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P1985241866556008121

`∑[gcd(A040232(n), A040246(n))]`
-/

namespace A113763.P1985241866556008121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040232 n) (A040246 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113763.P1985241866556008121

namespace A113763

/-- `∑[gcd(A040232(n), A040246(n))]` -/
def P1985241866556008121.Spec : Prop :=
  ∀ n, (P1985241866556008121.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P13799318307579067941

`∑[gcd(A040223(n), A040256(n))]`
-/

namespace A113763.P13799318307579067941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040223 n) (A040256 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113763.P13799318307579067941

namespace A113763

/-- `∑[gcd(A040223(n), A040256(n))]` -/
def P13799318307579067941.Spec : Prop :=
  ∀ n, (P13799318307579067941.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P14444077811035479614

`∪[A032798(n+1), A269044(n)]`
-/

namespace A113763.P14444077811035479614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A113763.P14444077811035479614

namespace A113763

/-- `∪[A032798(n+1), A269044(n)]` -/
def P14444077811035479614.Spec : Prop :=
  ∀ n, (P14444077811035479614.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P17123419282832696023

`Δ[n²-A033444(n)]`
-/

namespace A113763.P17123419282832696023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A033444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113763.P17123419282832696023

namespace A113763

/-- `Δ[n²-A033444(n)]` -/
def P17123419282832696023.Spec : Prop :=
  ∀ n, P17123419282832696023.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P11730795448881920241

`record[A106614(n+1)]`
-/

namespace A113763.P11730795448881920241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113763.P11730795448881920241

namespace A113763

/-- `record[A106614(n+1)]` -/
def P11730795448881920241.Spec : Prop :=
  ∀ n, P11730795448881920241.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P6962237148459616593

`eq[n, A106614(A028310(n))]`
-/

namespace A113763.P6962237148459616593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113763.P6962237148459616593

namespace A113763

/-- `eq[n, A106614(A028310(n))]` -/
def P6962237148459616593.Spec : Prop :=
  ∀ n, (P6962237148459616593.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P8816944796817936931

`∑[runs[A268291(n)]]`
-/

namespace A113763.P8816944796817936931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268291 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113763.P8816944796817936931

namespace A113763

/-- `∑[runs[A268291(n)]]` -/
def P8816944796817936931.Spec : Prop :=
  ∀ n, (P8816944796817936931.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P14743647772057803471

`comp[13*row(n)]`
-/

namespace A113763.P14743647772057803471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * SequenceMachineLib.triRow n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A113763.P14743647772057803471

namespace A113763

/-- `comp[13*row(n)]` -/
def P14743647772057803471.Spec : Prop :=
  ∀ n, (P14743647772057803471.a n : ℤ) = A113763 (n + 1)

end A113763

/-! ## A113763.P1023403095514200951

`A004526(A081753(2*n+1)+2*n+1)`
-/

namespace A113763.P1023403095514200951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081753 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A113763.P1023403095514200951

namespace A113763

/-- `A004526(A081753(2*n+1)+2*n+1)` -/
def P1023403095514200951.Spec : Prop :=
  ∀ n, P1023403095514200951.a n = A113763 (n + 1)

end A113763

/-! ## A113763.P2662941913021239892

`comp[13*col(n)]`
-/

namespace A113763.P2662941913021239892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * SequenceMachineLib.triCol n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A113763.P2662941913021239892

namespace A113763

/-- `comp[13*col(n)]` -/
def P2662941913021239892.Spec : Prop :=
  ∀ n, (P2662941913021239892.a n : ℤ) = A113763 (n + 1)

end A113763

/-!
# A113764: Nondecreasing sequence of integers where each digit d is part of a group of d identical digits.

The programs for A113764, there is no canonical definition to state claims against.
-/

/-! ## A113764.P2617260074489359625

`∑[C(A336850(n+1), A318390(n+1))]`
-/

namespace A113764.P2617260074489359625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336850 (n + 1)).toNat (A318390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113764.P2617260074489359625

/-! ## A113764.P13993529582070941323

`A051004(∑[char[∑[n]]]%A263241(n+1))`
-/

namespace A113764.P13993529582070941323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A263241 (n + 1))).toNat

end

end A113764.P13993529582070941323

/-! ## A113764.P16419900803362000280

`A163807(A002024(n+1)%p?[7*n²-6])`
-/

namespace A113764.P16419900803362000280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (Int.tmod (A002024 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A113764.P16419900803362000280

/-! ## A113764.P13870994099133896090

`A070698((comp[∑[n%11]]-(n+1))%A050921(n+1))`
-/

namespace A113764.P13870994099133896090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)) (A050921 (n + 1))).toNat

end

end A113764.P13870994099133896090

/-! ## A113764.P1447063952409905506

`A344759(A282289(2*n+1)+1)+comp[C(n, 2)-2]-n`
-/

namespace A113764.P1447063952409905506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344759 (A282289 (2 * n + 1) + 1).toNat + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A113764.P1447063952409905506

/-!
# A113765: Define the first two terms to be 1 and 7. All the other terms are obtained by concatenating the two previous terms.

The programs for A113765, there is no canonical definition to state claims against.
-/

/-! ## A113765.P8079482234171381755

`A204093(A162437(n+2)%A162437(n+1))+A108047(n+1)`
-/

namespace A113765.P8079482234171381755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 (Int.tmod (A162437 (n + 2)) (A162437 (n + 1))).toNat + A108047 (n + 1)

end

end A113765.P8079482234171381755

/-!
# A113766: a(n) is the product of those primes which divide some iterate of the Euler totient function but do not divide n itself.

The programs for A113766, the canonical program `A113766.P13213420990229536179` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113766 has offset 1).

The definition of A113766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113766.P13213420990229536179

`gcd(A083720(n+1), A092694(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A113766

/-- `gcd(A083720(n+1), A092694(n+1))` -/
def P13213420990229536179.Spec : Prop :=
  ∀ n, (P13213420990229536179.a n : ℤ) = A113766 (n + 1)

theorem P13213420990229536179.correct : P13213420990229536179.Spec := by
  intro n
  simp only [A113766, Nat.add_sub_cancel]

end A113766

/-! ## A113766.P4646490980711226779

`∏{p}[A309243(n+1), #]/A007947(n+1)`
-/

namespace A113766.P4646490980711226779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309243 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A113766.P4646490980711226779

namespace A113766

/-- `∏{p}[A309243(n+1), #]/A007947(n+1)` -/
def P4646490980711226779.Spec : Prop :=
  ∀ n, P4646490980711226779.a n = (A113766 (n + 1) : ℚ)

end A113766

/-! ## A113766.P9188465993621717640

`A007947(A127699(n+1))/A007947(n+1)`
-/

namespace A113766.P9188465993621717640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A127699 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A113766.P9188465993621717640

namespace A113766

/-- `A007947(A127699(n+1))/A007947(n+1)` -/
def P9188465993621717640.Spec : Prop :=
  ∀ n, P9188465993621717640.a n = (A113766 (n + 1) : ℚ)

end A113766

/-! ## A113766.P11068266460623038733

`A007947(A309243(n+1))/A007947(n+1)`
-/

namespace A113766.P11068266460623038733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A309243 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A113766.P11068266460623038733

namespace A113766

/-- `A007947(A309243(n+1))/A007947(n+1)` -/
def P11068266460623038733.Spec : Prop :=
  ∀ n, P11068266460623038733.a n = (A113766 (n + 1) : ℚ)

end A113766

/-! ## A113766.P2929733114035956787

`A007947(A373318(n+1)²²)`
-/

namespace A113766.P2929733114035956787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((A373318 (n + 1) ^ 2) ^ 2).toNat

end

end A113766.P2929733114035956787

namespace A113766

/-- `A007947(A373318(n+1)²²)` -/
def P2929733114035956787.Spec : Prop :=
  ∀ n, P2929733114035956787.a n = A113766 (n + 1)

end A113766

/-!
# A113768: a(1) = 1, a(n+1) = a(n) + floor(a(n)^(1/3)).

The programs for A113768, the canonical program `A113768.P8936237540135191377` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113768 has offset 1).

The definition of A113768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113768.P8936237540135191377

`floor(root(a(n-1), 3))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113768

/-- `floor(root(a(n-1), 3))+a(n-1)` -/
def P8936237540135191377.Spec : Prop :=
  ∀ n, P8936237540135191377.a n = A113768 (n + 1)

theorem P8936237540135191377.correct : P8936237540135191377.Spec := by
  intro n
  simp only [A113768, Nat.add_sub_cancel]

end A113768

/-! ## A113768.P2482319716897537139

`floor(a(n-1)+a(n-1)^(1/3))` with `a(0)=1`
-/

namespace A113768.P2482319716897537139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A113768.P2482319716897537139

namespace A113768

/-- `floor(a(n-1)+a(n-1)^(1/3))` -/
def P2482319716897537139.Spec : Prop :=
  ∀ n, P2482319716897537139.a n = A113768 (n + 1)

end A113768

/-! ## A113768.P5431099715411897545

`A048766(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A113768.P5431099715411897545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048766 (a (n - 1)).toNat + a (n - 1)

end

end A113768.P5431099715411897545

namespace A113768

/-- `A048766(a(n-1))+a(n-1)` -/
def P5431099715411897545.Spec : Prop :=
  ∀ n, P5431099715411897545.a n = A113768 (n + 1)

end A113768

/-! ## A113768.P13479558732441756823

`2*a(n-1)-A064524(a(n-1))` with `a(0)=1`
-/

namespace A113768.P13479558732441756823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A064524 (a (n - 1)).toNat

end

end A113768.P13479558732441756823

namespace A113768

/-- `2*a(n-1)-A064524(a(n-1))` -/
def P13479558732441756823.Spec : Prop :=
  ∀ n, P13479558732441756823.a n = A113768 (n + 1)

end A113768

/-! ## A113768.P2652750116895662767

`∑[A085141(2-A325678(n)+n)]`
-/

namespace A113768.P2652750116895662767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (2 - A325678 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113768.P2652750116895662767

namespace A113768

/-- `∑[A085141(2-A325678(n)+n)]` -/
def P2652750116895662767.Spec : Prop :=
  ∀ n, P2652750116895662767.a n = A113768 (n + 1)

end A113768

/-! ## A113768.P11947979381092150361

`a(n-1)+A057427(n)*A085141(2-A325678(n)+n)` with `a(0)=1`
-/

namespace A113768.P11947979381092150361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A085141 (2 - A325678 n + (n : ℤ)).toNat

end

end A113768.P11947979381092150361

namespace A113768

/-- `a(n-1)+A057427(n)*A085141(2-A325678(n)+n)` -/
def P11947979381092150361.Spec : Prop :=
  ∀ n, P11947979381092150361.a n = A113768 (n + 1)

end A113768

/-! ## A113768.P14085901905244498522

`∑[A097944(A280661(A004526(n)))]`
-/

namespace A113768.P14085901905244498522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A280661 (A004526 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113768.P14085901905244498522

namespace A113768

/-- `∑[A097944(A280661(A004526(n)))]` -/
def P14085901905244498522.Spec : Prop :=
  ∀ n, P14085901905244498522.a n = A113768 (n + 1)

end A113768

/-! ## A113768.P7799233513291256817

`∑[A004526(A000194(A207966(n+1)))]`
-/

namespace A113768.P7799233513291256817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000194 (A207966 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113768.P7799233513291256817

namespace A113768

/-- `∑[A004526(A000194(A207966(n+1)))]` -/
def P7799233513291256817.Spec : Prop :=
  ∀ n, P7799233513291256817.a n = A113768 (n + 1)

end A113768

/-!
# A113769: a(1) = 1, a(n+1) = a(n) + round(a(n)^(1/3)).

The programs for A113769, the canonical program `A113769.P8687890035109662654` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113769 has offset 1).

The definition of A113769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113769.P8687890035109662654

`round(a(n-1)+root(a(n-1), 3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113769

/-- `round(a(n-1)+root(a(n-1), 3))` -/
def P8687890035109662654.Spec : Prop :=
  ∀ n, P8687890035109662654.a n = A113769 (n + 1)

theorem P8687890035109662654.correct : P8687890035109662654.Spec := by
  intro n
  simp only [A113769, Nat.add_sub_cancel]

end A113769

/-! ## A113769.P2562815632079174665

`round(a(n-1)+a(n-1)^(1/3))` with `a(0)=1`
-/

namespace A113769.P2562815632079174665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))

end

end A113769.P2562815632079174665

namespace A113769

/-- `round(a(n-1)+a(n-1)^(1/3))` -/
def P2562815632079174665.Spec : Prop :=
  ∀ n, P2562815632079174665.a n = A113769 (n + 1)

theorem P2562815632079174665.correct : P2562815632079174665.Spec := by
  intro n
  simp only [A113769, Nat.add_sub_cancel, A113769.P2562815632079174665.a, A113769.P8687890035109662654.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A113769

/-! ## A113769.P3153819344851759592

`∑[A000194(∑[A114483(n+1)])]`
-/

namespace A113769.P3153819344851759592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114483 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113769.P3153819344851759592

namespace A113769

/-- `∑[A000194(∑[A114483(n+1)])]` -/
def P3153819344851759592.Spec : Prop :=
  ∀ n, P3153819344851759592.a n = A113769 (n + 1)

end A113769

/-! ## A113769.P611614332810615574

`∑[A180447(A028310(A287272(n)+n))]`
-/

namespace A113769.P611614332810615574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A028310 (A287272 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113769.P611614332810615574

namespace A113769

/-- `∑[A180447(A028310(A287272(n)+n))]` -/
def P611614332810615574.Spec : Prop :=
  ∀ n, P611614332810615574.a n = A113769 (n + 1)

end A113769

/-! ## A113769.P14125298147787966121

`∑[A000196(A054404(A171136(n+1)))]`
-/

namespace A113769.P14125298147787966121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A054404 (A171136 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113769.P14125298147787966121

namespace A113769

/-- `∑[A000196(A054404(A171136(n+1)))]` -/
def P14125298147787966121.Spec : Prop :=
  ∀ n, P14125298147787966121.a n = A113769 (n + 1)

end A113769

/-! ## A113769.P8305984206334692228

`∑[A000196(A002024(A334821(n)))]`
-/

namespace A113769.P8305984206334692228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002024 (A334821 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113769.P8305984206334692228

namespace A113769

/-- `∑[A000196(A002024(A334821(n)))]` -/
def P8305984206334692228.Spec : Prop :=
  ∀ n, P8305984206334692228.a n = A113769 (n + 1)

end A113769

/-!
# A113770: Partial sums of A113311(n)^2.

The programs for A113770, the canonical program `A113770.P15234837914129290973` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113770 has offset 0).

The definition of A113770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113770.P15234837914129290973

`ogf((1+8x+7x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113770

/-- `ogf((1+8x+7x^2)/(1-2x+x^2))` -/
def P15234837914129290973.Spec : Prop :=
  ∀ n, P15234837914129290973.a n = A113770 n

theorem P15234837914129290973.correct : P15234837914129290973.Spec := by
  intro n
  simp only [A113770]

end A113770

/-!
# A113772: Determinant of the 2 X 2 matrices where the first column is consecutive triangular numbers and the second column is the corresponding consecutive Fibonacci numbers.

The programs for A113772, the canonical program `A113772.P14221528393491772277` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113772 has offset 2).

The definition of A113772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113772.P319183864602642989

`ogf((-2+6x-2x^2+x^3)/(1-3x+5x^3-3x^5-x^6))`
-/

namespace A113772.P319183864602642989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 6, -2, 1] [1, -3, 0, 5, 0, -3, -1] n

end

end A113772.P319183864602642989

namespace A113772

/-- `ogf((-2+6x-2x^2+x^3)/(1-3x+5x^3-3x^5-x^6))` -/
def P319183864602642989.Spec : Prop :=
  ∀ n, P319183864602642989.a n = A113772 (n + 2)

end A113772

/-! ## A113772.P14221528393491772277

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=-2, a(1)=0, a(2)=-2, a(3)=5, a(4)=15, a(5)=49`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113772

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P14221528393491772277.Spec : Prop :=
  ∀ n, P14221528393491772277.a n = A113772 (n + 2)

theorem P14221528393491772277.correct : P14221528393491772277.Spec := by
  intro n
  simp only [A113772, Nat.add_sub_cancel]

end A113772

/-! ## A113772.P4461003063375040856

`∑[n+1]*A000045(n)-A099920(n+1)`
-/

namespace A113772.P4461003063375040856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000045 n - A099920 (n + 1)

end

end A113772.P4461003063375040856

namespace A113772

/-- `∑[n+1]*A000045(n)-A099920(n+1)` -/
def P4461003063375040856.Spec : Prop :=
  ∀ n, P4461003063375040856.a n = A113772 (n + 2)

end A113772

/-! ## A113772.P4534593717959066366

`∑[n]*A000045(n)-(A010049(n+1)+A006367(n))`
-/

namespace A113772.P4534593717959066366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000045 n - (A010049 (n + 1) + A006367 n)

end

end A113772.P4534593717959066366

namespace A113772

/-- `∑[n]*A000045(n)-(A010049(n+1)+A006367(n))` -/
def P4534593717959066366.Spec : Prop :=
  ∀ n, P4534593717959066366.a n = A113772 (n + 2)

end A113772

/-!
# A113773: Number of distinct prime factors of A008352.

The programs for A113773, there is no canonical definition to state claims against.
-/

/-! ## A113773.P1380212856136079578

`A286597(A342002(n))`
-/

namespace A113773.P1380212856136079578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286597 (A342002 n).toNat

end

end A113773.P1380212856136079578

/-! ## A113773.P9575604992369516148

`A286597(A344760(n))`
-/

namespace A113773.P9575604992369516148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286597 (A344760 n).toNat

end

end A113773.P9575604992369516148

/-! ## A113773.P1263547700321206914

`A286597(A351952(n))`
-/

namespace A113773.P1263547700321206914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286597 (A351952 n).toNat

end

end A113773.P1263547700321206914

/-! ## A113773.P5215671703176787971

`A089384(n+1)+A023990(n)`
-/

namespace A113773.P5215671703176787971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (n + 1) + A023990 n

end

end A113773.P5215671703176787971

/-! ## A113773.P12570519239856296147

`A130127(n+1)+A072851(n)`
-/

namespace A113773.P12570519239856296147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130127 (n + 1) + A072851 n

end

end A113773.P12570519239856296147

/-!
# A113774: Number of partitions of {1,...,n} into block sizes not a multiple of 3.

The programs for A113774, there is no canonical definition to state claims against.
-/

/-! ## A113774.P8115872408234406703

`A355261(A343666(n))-A328153(n)`
-/

namespace A113774.P8115872408234406703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (A343666 n).toNat - A328153 n

end

end A113774.P8115872408234406703

/-! ## A113774.P17745551975020006492

`A264749(A070767(n+1))+A115625(n)`
-/

namespace A113774.P17745551975020006492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A070767 (n + 1)).toNat + A115625 n

end

end A113774.P17745551975020006492

/-! ## A113774.P7367739963784749984

`A245900(n+1)+A004526(A143816(n))`
-/

namespace A113774.P7367739963784749984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + A004526 (A143816 n).toNat

end

end A113774.P7367739963784749984

/-!
# A113775: Number of sets of lists (cf. A000262) whose list sizes are not a multiple of 3.

The programs for A113775, there is no canonical definition to state claims against.
-/

/-! ## A113775.P15126204588141316623

`A293525(∑[n+3])`
-/

namespace A113775.P15126204588141316623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293525 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113775.P15126204588141316623

/-! ## A113775.P2610731080794966912

`or(1, A293525(A055998(1+n)))`
-/

namespace A113775.P2610731080794966912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293525 (A055998 (1 + n)).toNat)

end

end A113775.P2610731080794966912

/-! ## A113775.P8152724890431205628

`A014963(4*n+6)*A293525(A055998(n+1))`
-/

namespace A113775.P8152724890431205628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A293525 (A055998 (n + 1)).toNat

end

end A113775.P8152724890431205628

/-! ## A113775.P4186393199837726719

`A057427(A007318(n))*A293525(A134227(n+1)+3)`
-/

namespace A113775.P4186393199837726719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007318 n).toNat * A293525 (A134227 (n + 1) + 3).toNat

end

end A113775.P4186393199837726719

/-! ## A113775.P14031721846175788591

`A340860(A001222(n+1)+1)+A293525(A055998(n+1))`
-/

namespace A113775.P14031721846175788591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340860 (A001222 (n + 1) + 1).toNat + A293525 (A055998 (n + 1)).toNat

end

end A113775.P14031721846175788591

/-!
# A113777: Minimal positive number m for which Sum_{k=1..m} k^n < m!.

The programs for A113777, there is no canonical definition to state claims against.
-/

/-! ## A113777.P11533798858480705742

`A255270(∑[(2-n)²])+n+2`
-/

namespace A113777.P11533798858480705742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 2 : ℤ)

end

end A113777.P11533798858480705742

/-! ## A113777.P2161916589538176314

`A276611(A037261(n)+5)`
-/

namespace A113777.P2161916589538176314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A037261 n + 5).toNat

end

end A113777.P2161916589538176314

/-! ## A113777.P8883737238614763740

`A056556(∑[A116711(n+1)+1])+2`
-/

namespace A113777.P8883737238614763740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116711 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A113777.P8883737238614763740

/-! ## A113777.P13332484744299845745

`A302777(A353306(2*n+3))+A140102(n+2)`
-/

namespace A113777.P13332484744299845745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A353306 (2 * n + 3)).toNat + A140102 (n + 2)

end

end A113777.P13332484744299845745

/-! ## A113777.P13406317183858271470

`A332268(A385776(n+1))+A184484(n+1)`
-/

namespace A113777.P13406317183858271470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (A385776 (n + 1)).toNat + A184484 (n + 1)

end

end A113777.P13406317183858271470

/-!
# A113778: Invert blocks of four in the sequence of natural numbers.

The programs for A113778, the canonical program `A113778.P12148493475209566190` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113778 has offset 1).

The definition of A113778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113778.P13898241915796103118

`ogf((4-x-x^2-x^3+3x^4)/(1-x-x^4+x^5))`
-/

namespace A113778.P13898241915796103118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -1, -1, 3] [1, -1, 0, 0, -1, 1] n

end

end A113778.P13898241915796103118

namespace A113778

/-- `ogf((4-x-x^2-x^3+3x^4)/(1-x-x^4+x^5))` -/
def P13898241915796103118.Spec : Prop :=
  ∀ n, P13898241915796103118.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P12148493475209566190

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=4, a(1)=3, a(2)=2, a(3)=1, a(4)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113778

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12148493475209566190.Spec : Prop :=
  ∀ n, P12148493475209566190.a n = A113778 (n + 1)

theorem P12148493475209566190.correct : P12148493475209566190.Spec := by
  intro n
  simp only [A113778, Nat.add_sub_cancel]

end A113778

/-! ## A113778.P4196573780843700423

`n+1-cos((n+1)*π)-2*sqrt(2)*cos((2*(n+1)+1)*π/4)`
-/

namespace A113778.P4196573780843700423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.cos ((n + 1 : ℝ) * Real.pi) - 2 * Real.sqrt (2 : ℝ) * Real.cos ((2 * (n + 1) + 1 : ℝ) * Real.pi / 4)

end

end A113778.P4196573780843700423

namespace A113778

/-- `n+1-cos((n+1)*π)-2*sqrt(2)*cos((2*(n+1)+1)*π/4)` -/
def P4196573780843700423.Spec : Prop :=
  ∀ n, P4196573780843700423.a n = (A113778 (n + 1) : ℝ)

end A113778

/-! ## A113778.P11858411233971530968

`abs(xor(n, -4))`
-/

namespace A113778.P11858411233971530968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-4)|

end

end A113778.P11858411233971530968

namespace A113778

/-- `abs(xor(n, -4))` -/
def P11858411233971530968.Spec : Prop :=
  ∀ n, P11858411233971530968.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P15997683420569649863

`-xor(n, -4)`
-/

namespace A113778.P15997683420569649863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-4)

end

end A113778.P15997683420569649863

namespace A113778

/-- `-xor(n, -4)` -/
def P15997683420569649863.Spec : Prop :=
  ∀ n, P15997683420569649863.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P14529027409412375192

`xor(3, n)+1`
-/

namespace A113778.P14529027409412375192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + 1

end

end A113778.P14529027409412375192

namespace A113778

/-- `xor(3, n)+1` -/
def P14529027409412375192.Spec : Prop :=
  ∀ n, (P14529027409412375192.a n : ℤ) = A113778 (n + 1)

end A113778

/-! ## A113778.P7681106206728787950

`4-xor(3, 3-n)`
-/

namespace A113778.P7681106206728787950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.xor 3 (3 - (n : ℤ))

end

end A113778.P7681106206728787950

namespace A113778

/-- `4-xor(3, 3-n)` -/
def P7681106206728787950.Spec : Prop :=
  ∀ n, P7681106206728787950.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P14144851889819019758

`ceil(xor(7, 2*n)/2)`
-/

namespace A113778.P14144851889819019758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 7 (2 * n) : ℚ) / 2⌉

end

end A113778.P14144851889819019758

namespace A113778

/-- `ceil(xor(7, 2*n)/2)` -/
def P14144851889819019758.Spec : Prop :=
  ∀ n, P14144851889819019758.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P14874172292012110090

`round(xor(7, 2*n)/2)`
-/

namespace A113778.P14874172292012110090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 7 (2 * n) : ℚ) / 2)

end

end A113778.P14874172292012110090

namespace A113778

/-- `round(xor(7, 2*n)/2)` -/
def P14874172292012110090.Spec : Prop :=
  ∀ n, P14874172292012110090.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P14813478403253795880

`ceil(cosh(log(xor(7, 2*n))))`
-/

namespace A113778.P14813478403253795880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.xor 7 (2 * n) : ℝ))⌉

end

end A113778.P14813478403253795880

namespace A113778

/-- `ceil(cosh(log(xor(7, 2*n))))` -/
def P14813478403253795880.Spec : Prop :=
  ∀ n, P14813478403253795880.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P8738507441720498067

`round(cosh(log(xor(7, 2*n))))`
-/

namespace A113778.P8738507441720498067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.xor 7 (2 * n) : ℝ)))

end

end A113778.P8738507441720498067

namespace A113778

/-- `round(cosh(log(xor(7, 2*n))))` -/
def P8738507441720498067.Spec : Prop :=
  ∀ n, P8738507441720498067.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P7767754796688014502

`2*(2-n%4)+n`
-/

namespace A113778.P7767754796688014502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - ((n % 4 : ℕ) : ℤ)) + (n : ℤ)

end

end A113778.P7767754796688014502

namespace A113778

/-- `2*(2-n%4)+n` -/
def P7767754796688014502.Spec : Prop :=
  ∀ n, P7767754796688014502.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P13581734080645651116

`2*or(3, n)-(n+2)`
-/

namespace A113778.P13581734080645651116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 3 n : ℤ) - (n + 2 : ℤ)

end

end A113778.P13581734080645651116

namespace A113778

/-- `2*or(3, n)-(n+2)` -/
def P13581734080645651116.Spec : Prop :=
  ∀ n, P13581734080645651116.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P5051448868202295784

`2*or(3, n)-2-n`
-/

namespace A113778.P5051448868202295784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 3 n : ℤ) - 2 - (n : ℤ)

end

end A113778.P5051448868202295784

namespace A113778

/-- `2*or(3, n)-2-n` -/
def P5051448868202295784.Spec : Prop :=
  ∀ n, P5051448868202295784.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P15437107511043926675

`4-2*and(3, n)+n`
-/

namespace A113778.P15437107511043926675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (2 * Nat.land 3 n : ℤ) + (n : ℤ)

end

end A113778.P15437107511043926675

namespace A113778

/-- `4-2*and(3, n)+n` -/
def P15437107511043926675.Spec : Prop :=
  ∀ n, P15437107511043926675.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P8684128838953402852

`4-(2*and(3, n)-n)`
-/

namespace A113778.P8684128838953402852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((2 * Nat.land 3 n : ℤ) - (n : ℤ))

end

end A113778.P8684128838953402852

namespace A113778

/-- `4-(2*and(3, n)-n)` -/
def P8684128838953402852.Spec : Prop :=
  ∀ n, P8684128838953402852.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P795384971963661468

`lcm(2, or(3, n))-(n+2)`
-/

namespace A113778.P795384971963661468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor 3 n) : ℤ) - (n + 2 : ℤ)

end

end A113778.P795384971963661468

namespace A113778

/-- `lcm(2, or(3, n))-(n+2)` -/
def P795384971963661468.Spec : Prop :=
  ∀ n, P795384971963661468.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P15318085345923989147

`floor(or(3, n)²/(n+2))`
-/

namespace A113778.P15318085345923989147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 n ^ 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A113778.P15318085345923989147

namespace A113778

/-- `floor(or(3, n)²/(n+2))` -/
def P15318085345923989147.Spec : Prop :=
  ∀ n, P15318085345923989147.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P17116131727241109221

`or(6, Δ[n²])-(n+3)`
-/

namespace A113778.P17116131727241109221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n + 3 : ℤ)

end

end A113778.P17116131727241109221

namespace A113778

/-- `or(6, Δ[n²])-(n+3)` -/
def P17116131727241109221.Spec : Prop :=
  ∀ n, P17116131727241109221.a n = A113778 (n + 1)

end A113778

/-! ## A113778.P3904622518724508797

`a(n-4)+4` with `a(0)=4, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A113778.P3904622518724508797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 2, 1] fun n a =>
  a (n - 4) + 4

end

end A113778.P3904622518724508797

namespace A113778

/-- `a(n-4)+4` -/
def P3904622518724508797.Spec : Prop :=
  ∀ n, (P3904622518724508797.a n : ℤ) = A113778 (n + 1)

end A113778

/-!
# A113779: Each term is the sum of the next two digits starting with a(1)=17.

The programs for A113779, the canonical program `A113779.P3652755642459247961` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113779 has offset 1).

The definition of A113779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113779.P3652755642459247961

`a(n-3)` with `a(0)=17, a(1)=9, a(2)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113779

/-- `a(n-3)` -/
def P3652755642459247961.Spec : Prop :=
  ∀ n, (P3652755642459247961.a n : ℤ) = A113779 (n + 1)

theorem P3652755642459247961.correct : P3652755642459247961.Spec := by
  intro n
  simp only [A113779, Nat.add_sub_cancel]

end A113779

/-!
# A113780: Number of solutions to 24*n+1 = x^2+24*y^2, x a positive integer, y an integer.

The programs for A113780, the canonical program `A113780.P9062629399954966061` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113780 has offset 0).

The definition of A113780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128580, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113780.P9062629399954966061

`A128580(12*n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A113780

/-- `A128580(12*n)` -/
def P9062629399954966061.Spec : Prop :=
  ∀ n, P9062629399954966061.a n = A113780 n

theorem P9062629399954966061.correct : P9062629399954966061.Spec := by
  intro n
  simp only [A113780]

end A113780

/-! ## A113780.P16787675447003778504

`A129402(12*n)`
-/

namespace A113780.P16787675447003778504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (12 * n)

end

end A113780.P16787675447003778504

namespace A113780

/-- `A129402(12*n)` -/
def P16787675447003778504.Spec : Prop :=
  ∀ n, P16787675447003778504.a n = A113780 n

end A113780

/-! ## A113780.P12563127948565677500

`A134177(12*n)`
-/

namespace A113780.P12563127948565677500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (12 * n)

end

end A113780.P12563127948565677500

namespace A113780

/-- `A134177(12*n)` -/
def P12563127948565677500.Spec : Prop :=
  ∀ n, P12563127948565677500.a n = A113780 n

end A113780

/-! ## A113780.P5689995678342600073

`A190615(12*n)`
-/

namespace A113780.P5689995678342600073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (12 * n)

end

end A113780.P5689995678342600073

namespace A113780

/-- `A190615(12*n)` -/
def P5689995678342600073.Spec : Prop :=
  ∀ n, P5689995678342600073.a n = A113780 n

end A113780

/-! ## A113780.P9543158884273824026

`A260308(3*n)`
-/

namespace A113780.P9543158884273824026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260308 (3 * n)

end

end A113780.P9543158884273824026

namespace A113780

/-- `A260308(3*n)` -/
def P9543158884273824026.Spec : Prop :=
  ∀ n, P9543158884273824026.a n = A113780 n

end A113780

/-! ## A113780.P16523984834617544042

`A260110(4*n)`
-/

namespace A113780.P16523984834617544042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260110 (4 * n)

end

end A113780.P16523984834617544042

namespace A113780

/-- `A260110(4*n)` -/
def P16523984834617544042.Spec : Prop :=
  ∀ n, P16523984834617544042.a n = A113780 n

end A113780

/-! ## A113780.P17060985858751611546

`A261115(4*n)`
-/

namespace A113780.P17060985858751611546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261115 (4 * n)

end

end A113780.P17060985858751611546

namespace A113780

/-- `A261115(4*n)` -/
def P17060985858751611546.Spec : Prop :=
  ∀ n, P17060985858751611546.a n = A113780 n

end A113780

/-! ## A113780.P830784253836466082

`A259668(6*n)`
-/

namespace A113780.P830784253836466082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (6 * n)

end

end A113780.P830784253836466082

namespace A113780

/-- `A259668(6*n)` -/
def P830784253836466082.Spec : Prop :=
  ∀ n, P830784253836466082.a n = A113780 n

end A113780

/-! ## A113780.P5197849424826386109

`A261118(6*n)`
-/

namespace A113780.P5197849424826386109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261118 (6 * n)

end

end A113780.P5197849424826386109

namespace A113780

/-- `A261118(6*n)` -/
def P5197849424826386109.Spec : Prop :=
  ∀ n, P5197849424826386109.a n = A113780 n

end A113780

/-! ## A113780.P14906581890897358598

`A263571(8*n)`
-/

namespace A113780.P14906581890897358598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (8 * n)

end

end A113780.P14906581890897358598

namespace A113780

/-- `A263571(8*n)` -/
def P14906581890897358598.Spec : Prop :=
  ∀ n, P14906581890897358598.a n = A113780 n

end A113780

/-! ## A113780.P14966604796552054512

`A279947(8*n)`
-/

namespace A113780.P14966604796552054512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279947 (8 * n)

end

end A113780.P14966604796552054512

namespace A113780

/-- `A279947(8*n)` -/
def P14966604796552054512.Spec : Prop :=
  ∀ n, P14966604796552054512.a n = A113780 n

end A113780

/-! ## A113780.P18162933401382024096

`A257920(9*n)`
-/

namespace A113780.P18162933401382024096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257920 (9 * n)

end

end A113780.P18162933401382024096

namespace A113780

/-- `A257920(9*n)` -/
def P18162933401382024096.Spec : Prop :=
  ∀ n, P18162933401382024096.a n = A113780 n

end A113780

/-! ## A113780.P7815718668126250276

`A258587(4*4*n)`
-/

namespace A113780.P7815718668126250276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258587 (4 * (4 * n))

end

end A113780.P7815718668126250276

namespace A113780

/-- `A258587(4*4*n)` -/
def P7815718668126250276.Spec : Prop :=
  ∀ n, P7815718668126250276.a n = A113780 n

end A113780

/-! ## A113780.P9328972624500462318

`A263548(4*4*n)`
-/

namespace A113780.P9328972624500462318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263548 (4 * (4 * n))

end

end A113780.P9328972624500462318

namespace A113780

/-- `A263548(4*4*n)` -/
def P9328972624500462318.Spec : Prop :=
  ∀ n, P9328972624500462318.a n = A113780 n

end A113780

/-! ## A113780.P6404376691628484212

`A257921(3*6*n)`
-/

namespace A113780.P6404376691628484212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (3 * (6 * n))

end

end A113780.P6404376691628484212

namespace A113780

/-- `A257921(3*6*n)` -/
def P6404376691628484212.Spec : Prop :=
  ∀ n, P6404376691628484212.a n = A113780 n

end A113780

/-! ## A113780.P11744645829339770014

`A261119(3*6*n)`
-/

namespace A113780.P11744645829339770014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261119 (3 * (6 * n))

end

end A113780.P11744645829339770014

namespace A113780

/-- `A261119(3*6*n)` -/
def P11744645829339770014.Spec : Prop :=
  ∀ n, P11744645829339770014.a n = A113780 n

end A113780

/-! ## A113780.P5636209563875044138

`A000377(A103214(n))`
-/

namespace A113780.P5636209563875044138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A103214 n).toNat

end

end A113780.P5636209563875044138

namespace A113780

/-- `A000377(A103214(n))` -/
def P5636209563875044138.Spec : Prop :=
  ∀ n, P5636209563875044138.a n = A113780 n

end A113780

/-! ## A113780.P14252649819497340034

`A115660(A317324(2*n)+1)`
-/

namespace A113780.P14252649819497340034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A317324 (2 * n) + 1).toNat

end

end A113780.P14252649819497340034

namespace A113780

/-- `A115660(A317324(2*n)+1)` -/
def P14252649819497340034.Spec : Prop :=
  ∀ n, P14252649819497340034.a n = A113780 n

end A113780

/-! ## A113780.P3242417912318683781

`A000377(A017545(2*n)-1)`
-/

namespace A113780.P3242417912318683781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A017545 (2 * n) - 1).toNat

end

end A113780.P3242417912318683781

namespace A113780

/-- `A000377(A017545(2*n)-1)` -/
def P3242417912318683781.Spec : Prop :=
  ∀ n, P3242417912318683781.a n = A113780 n

end A113780

/-! ## A113780.P10497409745592536397

`A000377(A017557(2*n)-2)`
-/

namespace A113780.P10497409745592536397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A017557 (2 * n) - 2).toNat

end

end A113780.P10497409745592536397

namespace A113780

/-- `A000377(A017557(2*n)-2)` -/
def P10497409745592536397.Spec : Prop :=
  ∀ n, P10497409745592536397.a n = A113780 n

end A113780

/-!
# A113781: Numbers k such that the representation of phi(k) is a cyclic permutation of that of k, in base 10.

The programs for A113781, there is no canonical definition to state claims against.
-/

/-! ## A113781.P4111997788077922331

`A115921(eq[A299728(n+1), A327236(n)])`
-/

namespace A113781.P4111997788077922331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A113781.P4111997788077922331

/-!
# A113783: Differences in indices of palindromic five-digit primes.

The programs for A113783, there is no canonical definition to state claims against.
-/

/-! ## A113783.P412567663847959434

`Δ[A075807(n+21)]`
-/

namespace A113783.P412567663847959434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113783.P412567663847959434

/-! ## A113783.P12183944475891592087

`A309321(n+21)+1`
-/

namespace A113783.P12183944475891592087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (n + 21) + 1

end

end A113783.P12183944475891592087

/-! ## A113783.P6303949638419897758

`A065475(A309321(n+21))`
-/

namespace A113783.P6303949638419897758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A309321 (n + 21)).toNat

end

end A113783.P6303949638419897758

/-! ## A113783.P7532737553999473034

`Δ[A000720(A222723(n+7))]`
-/

namespace A113783.P7532737553999473034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A222723 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113783.P7532737553999473034

/-! ## A113783.P4465181008957381660

`Δ[A304818(p?[A082567(n+1)])]`
-/

namespace A113783.P4465181008957381660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113783.P4465181008957381660

/-!
# A113784: Difference between semiprime(n) and semiprime(n+2).

The programs for A113784, the canonical program `A113784.P5985550236028528933` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113784 has offset 1).

The definition of A113784 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113784.P5985550236028528933

`A001358(n+3)-A001358(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A113784

/-- `A001358(n+3)-A001358(n+1)` -/
def P5985550236028528933.Spec : Prop :=
  ∀ n, P5985550236028528933.a n = A113784 (n + 1)

theorem P5985550236028528933.correct : P5985550236028528933.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel]

end A113784

/-! ## A113784.P12810492392845910575

`Δ[A118717(1+n)]`
-/

namespace A113784.P12810492392845910575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113784.P12810492392845910575

namespace A113784

/-- `Δ[A118717(1+n)]` -/
def P12810492392845910575.Spec : Prop :=
  ∀ n, P12810492392845910575.a n = A113784 (n + 1)

end A113784

/-! ## A113784.P15995175056424868937

`abs(Δ[A118717(ϕ²-(ϕ-n))])`
-/

namespace A113784.P15995175056424868937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A113784.P15995175056424868937

namespace A113784

/-- `abs(Δ[A118717(ϕ²-(ϕ-n))])` -/
def P15995175056424868937.Spec : Prop :=
  ∀ n, P15995175056424868937.a n = A113784 (n + 1)

end A113784

/-! ## A113784.P13454465413566499796

`A065516(n+1)+A065516(n+2)`
-/

namespace A113784.P13454465413566499796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1) + A065516 (n + 2)

end

end A113784.P13454465413566499796

namespace A113784

/-- `A065516(n+1)+A065516(n+2)` -/
def P13454465413566499796.Spec : Prop :=
  ∀ n, P13454465413566499796.a n = A113784 (n + 1)

theorem P13454465413566499796.correct : P13454465413566499796.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P13454465413566499796.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A065516, A065516.P1921636422831940081.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113784

/-! ## A113784.P15735485393862318897

`A118717(n+2)-A118717(n+1)`
-/

namespace A113784.P15735485393862318897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) - A118717 (n + 1)

end

end A113784.P15735485393862318897

namespace A113784

/-- `A118717(n+2)-A118717(n+1)` -/
def P15735485393862318897.Spec : Prop :=
  ∀ n, P15735485393862318897.a n = A113784 (n + 1)

theorem P15735485393862318897.correct : P15735485393862318897.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P15735485393862318897.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A118717, A118717.P5086267492730795154.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113784

/-! ## A113784.P16441209218179555991

`A088707(n+3)-A088707(n+1)`
-/

namespace A113784.P16441209218179555991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 3) - A088707 (n + 1)

end

end A113784.P16441209218179555991

namespace A113784

/-- `A088707(n+3)-A088707(n+1)` -/
def P16441209218179555991.Spec : Prop :=
  ∀ n, P16441209218179555991.a n = A113784 (n + 1)

theorem P16441209218179555991.correct : P16441209218179555991.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P16441209218179555991.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113784

/-! ## A113784.P8327659648860365848

`A186621(n+3)-A186621(n+1)`
-/

namespace A113784.P8327659648860365848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 3) - A186621 (n + 1)

end

end A113784.P8327659648860365848

namespace A113784

/-- `A186621(n+3)-A186621(n+1)` -/
def P8327659648860365848.Spec : Prop :=
  ∀ n, P8327659648860365848.a n = A113784 (n + 1)

theorem P8327659648860365848.correct : P8327659648860365848.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P8327659648860365848.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113784

/-! ## A113784.P15830483382035071153

`Δ[A075818(n+1)+Δ[A088707(n+1)]]`
-/

namespace A113784.P15830483382035071153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113784.P15830483382035071153

namespace A113784

/-- `Δ[A075818(n+1)+Δ[A088707(n+1)]]` -/
def P15830483382035071153.Spec : Prop :=
  ∀ n, P15830483382035071153.a n = A113784 (n + 1)

theorem P15830483382035071153.correct : P15830483382035071153.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P15830483382035071153.f2, A113784.P15830483382035071153.f1, A113784.P15830483382035071153.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113784

/-! ## A113784.P2586228975600290562

`Δ[A075818(n+1)+Δ[A175708(n+1)]]`
-/

namespace A113784.P2586228975600290562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113784.P2586228975600290562

namespace A113784

/-- `Δ[A075818(n+1)+Δ[A175708(n+1)]]` -/
def P2586228975600290562.Spec : Prop :=
  ∀ n, P2586228975600290562.a n = A113784 (n + 1)

theorem P2586228975600290562.correct : P2586228975600290562.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P2586228975600290562.f2, A113784.P2586228975600290562.f1, A113784.P2586228975600290562.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113784

/-! ## A113784.P6018781220320680045

`Δ[A075818(n+1)+Δ[A186621(n+1)]]`
-/

namespace A113784.P6018781220320680045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113784.P6018781220320680045

namespace A113784

/-- `Δ[A075818(n+1)+Δ[A186621(n+1)]]` -/
def P6018781220320680045.Spec : Prop :=
  ∀ n, P6018781220320680045.a n = A113784 (n + 1)

theorem P6018781220320680045.correct : P6018781220320680045.Spec := by
  intro n
  simp only [A113784, Nat.add_sub_cancel, A113784.P6018781220320680045.f2, A113784.P6018781220320680045.f1, A113784.P6018781220320680045.a, A113784.P5985550236028528933.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113784

/-!
# A113785: a(n) = a(n-1)^2 + 2*a(n-2).

The programs for A113785, the canonical program `A113785.P3007472735216804288` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113785 has offset 0).

The definition of A113785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+2*a(n-2)` (program `A113785.P3007472735216804288`, by `A113785.P3007472735216804288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113785.P3007472735216804288

`a(n-1)²+2*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113785

/-- `a(n-1)²+2*a(n-2)` -/
def P3007472735216804288.Spec : Prop :=
  ∀ n, (P3007472735216804288.a n : ℤ) = A113785 n

theorem P3007472735216804288.correct : P3007472735216804288.Spec := by
  intro n
  simp only [A113785]

end A113785

/-! ## A113785.P1527029187361260533

`a(n-2)+a(n-2)+a(n-1)²` with `a(0)=2, a(1)=3`
-/

namespace A113785.P1527029187361260533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 1) ^ 2)

end

end A113785.P1527029187361260533

namespace A113785

/-- `a(n-2)+a(n-2)+a(n-1)²` -/
def P1527029187361260533.Spec : Prop :=
  ∀ n, (P1527029187361260533.a n : ℤ) = A113785 n

end A113785

/-! ## A113785.P6684415760880142405

`2*a(n-2)+a(n-1)*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A113785.P6684415760880142405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 2) + a (n - 1) * a (n - 1)

end

end A113785.P6684415760880142405

namespace A113785

/-- `2*a(n-2)+a(n-1)*a(n-1)` -/
def P6684415760880142405.Spec : Prop :=
  ∀ n, (P6684415760880142405.a n : ℤ) = A113785 n

end A113785

/-! ## A113785.P14602026250683660159

`3*a(n-2)-(a(n-2)-a(n-1)²)` with `a(0)=2, a(1)=3`
-/

namespace A113785.P14602026250683660159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1) ^ 2)

end

end A113785.P14602026250683660159

namespace A113785

/-- `3*a(n-2)-(a(n-2)-a(n-1)²)` -/
def P14602026250683660159.Spec : Prop :=
  ∀ n, P14602026250683660159.a n = A113785 n

end A113785

/-! ## A113785.P4484932704280593220

`3*a(n-2)-(a(n-2)-a(n-1)*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A113785.P4484932704280593220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1) * a (n - 1))

end

end A113785.P4484932704280593220

namespace A113785

/-- `3*a(n-2)-(a(n-2)-a(n-1)*a(n-1))` -/
def P4484932704280593220.Spec : Prop :=
  ∀ n, P4484932704280593220.a n = A113785 n

end A113785

/-!
# A113787: Number of iterations of signature function required to get to [1] from partitions in Abramowitz and Stegun order.

The programs for A113787, there is no canonical definition to state claims against.
-/

/-! ## A113787.P1295170259944555617

`A182850(A185974(n+1))`
-/

namespace A113787.P1295170259944555617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A185974 (n + 1)).toNat

end

end A113787.P1295170259944555617

/-! ## A113787.P15021381967243709830

`A329747(A036035(n+1))`
-/

namespace A113787.P15021381967243709830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A036035 (n + 1)).toNat

end

end A113787.P15021381967243709830

/-! ## A113787.P14082093482370682077

`A329747(A059901(n+1))`
-/

namespace A113787.P14082093482370682077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A059901 (n + 1)).toNat

end

end A113787.P14082093482370682077

/-! ## A113787.P2232155258151790421

`A304455(A036035(n+1))`
-/

namespace A113787.P2232155258151790421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A036035 (n + 1)).toNat

end

end A113787.P2232155258151790421

/-! ## A113787.P9879512677921283577

`A304455(A059901(n+1))`
-/

namespace A113787.P9879512677921283577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A059901 (n + 1)).toNat

end

end A113787.P9879512677921283577

/-!
# A113788: Number of irreducible multiple zeta values at weight n.

The programs for A113788, the canonical program `A113788.P11621347514749889386` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113788 has offset 1).

The definition of A113788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113788.P13875558265869622376

`∑{d}[n+1, A008683((n+1)/#)*A127687(#)]`
-/

namespace A113788.P13875558265869622376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A127687 d

end

end A113788.P13875558265869622376

namespace A113788

/-- `∑{d}[n+1, A008683((n+1)/#)*A127687(#)]` -/
def P13875558265869622376.Spec : Prop :=
  ∀ n, P13875558265869622376.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P11621347514749889386

`1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*A001608(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A113788

/-- `1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*A001608(#)]` -/
def P11621347514749889386.Spec : Prop :=
  ∀ n, P11621347514749889386.a n = (A113788 (n + 1) : ℚ)

end A113788

/-! ## A113788.P948347550516281204

`A018243(n+1)+char[1]`
-/

namespace A113788.P948347550516281204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113788.P948347550516281204

namespace A113788

/-- `A018243(n+1)+char[1]` -/
def P948347550516281204.Spec : Prop :=
  ∀ n, P948347550516281204.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P12853885074252396466

`A018243(n*(C(n, n²)+1)+1)`
-/

namespace A113788.P12853885074252396466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (n * (Nat.choose n (n ^ 2) + 1) + 1)

end

end A113788.P12853885074252396466

namespace A113788

/-- `A018243(n*(C(n, n²)+1)+1)` -/
def P12853885074252396466.Spec : Prop :=
  ∀ n, P12853885074252396466.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P1875841370087077751

`A018243(A348776(n+1))`
-/

namespace A113788.P1875841370087077751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (A348776 (n + 1)).toNat

end

end A113788.P1875841370087077751

namespace A113788

/-- `A018243(A348776(n+1))` -/
def P1875841370087077751.Spec : Prop :=
  ∀ n, P1875841370087077751.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P13680043065594054719

`A018243(A063524(n)+1+n)`
-/

namespace A113788.P13680043065594054719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (A063524 n + 1 + (n : ℤ)).toNat

end

end A113788.P13680043065594054719

namespace A113788

/-- `A018243(A063524(n)+1+n)` -/
def P13680043065594054719.Spec : Prop :=
  ∀ n, P13680043065594054719.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P16566482270070571425

`A018243(1-A159075(n)+n)`
-/

namespace A113788.P16566482270070571425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (1 - A159075 n + (n : ℤ)).toNat

end

end A113788.P16566482270070571425

namespace A113788

/-- `A018243(1-A159075(n)+n)` -/
def P16566482270070571425.Spec : Prop :=
  ∀ n, P16566482270070571425.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P6603123409950974006

`A018243(1-(A159075(n)-n))`
-/

namespace A113788.P6603123409950974006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (1 - (A159075 n - (n : ℤ))).toNat

end

end A113788.P6603123409950974006

namespace A113788

/-- `A018243(1-(A159075(n)-n))` -/
def P6603123409950974006.Spec : Prop :=
  ∀ n, P6603123409950974006.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P7521224872072586605

`A018243(n*A018002(C(3, ∑[n]))+1)`
-/

namespace A113788.P7521224872072586605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 ((n : ℤ) * A018002 (Nat.choose 3 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1).toNat

end

end A113788.P7521224872072586605

namespace A113788

/-- `A018243(n*A018002(C(3, ∑[n]))+1)` -/
def P7521224872072586605.Spec : Prop :=
  ∀ n, P7521224872072586605.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P17886455118243195181

`A018243(n*A002182(C(2, n)+1)+1)`
-/

namespace A113788.P17886455118243195181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 ((n : ℤ) * A002182 (Nat.choose 2 n + 1) + 1).toNat

end

end A113788.P17886455118243195181

namespace A113788

/-- `A018243(n*A002182(C(2, n)+1)+1)` -/
def P17886455118243195181.Spec : Prop :=
  ∀ n, P17886455118243195181.a n = A113788 (n + 1)

end A113788

/-! ## A113788.P3220667416025475610

`A018243(n*A166018(C(n, ∑[n])+1)+1)`
-/

namespace A113788.P3220667416025475610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 ((n : ℤ) * A166018 (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) + 1) + 1).toNat

end

end A113788.P3220667416025475610

namespace A113788

/-- `A018243(n*A166018(C(n, ∑[n])+1)+1)` -/
def P3220667416025475610.Spec : Prop :=
  ∀ n, P3220667416025475610.a n = A113788 (n + 1)

end A113788

/-!
# A113789: Numbers n such that n, n+1 and n+2 are products of exactly 3 primes.

The programs for A113789, the canonical program `A113789.P9130721561676906998` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113789 has offset 1).

The definition of A113789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113789.P15707952981764234038

`∩[A045939(n+1), A259504(n+1)]`
-/

namespace A113789.P15707952981764234038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P15707952981764234038

namespace A113789

/-- `∩[A045939(n+1), A259504(n+1)]` -/
def P15707952981764234038.Spec : Prop :=
  ∀ n, (P15707952981764234038.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P16821727287477233682

`∩[A259504(n+2)-1, A259504(n+2)]`
-/

namespace A113789.P16821727287477233682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P16821727287477233682

namespace A113789

/-- `∩[A259504(n+2)-1, A259504(n+2)]` -/
def P16821727287477233682.Spec : Prop :=
  ∀ n, (P16821727287477233682.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P9130721561676906998

`A259504(eq[1, A259504(n+2)-A259504(n+1)]+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113789

/-- `A259504(eq[1, A259504(n+2)-A259504(n+1)]+1)` -/
def P9130721561676906998.Spec : Prop :=
  ∀ n, P9130721561676906998.a n = A113789 (n + 1)

theorem P9130721561676906998.correct : P9130721561676906998.Spec := by
  intro n
  simp only [A113789, Nat.add_sub_cancel]

end A113789

/-! ## A113789.P9152220379929917480

`filter[A045939(n+1), A358753(#)]`
-/

namespace A113789.P9152220379929917480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A113789.P9152220379929917480

namespace A113789

/-- `filter[A045939(n+1), A358753(#)]` -/
def P9152220379929917480.Spec : Prop :=
  ∀ n, P9152220379929917480.a n = A113789 (n + 1)

end A113789

/-! ## A113789.P7678731305704438737

`∩[A045939(n+1), A114436(n+1)]`
-/

namespace A113789.P7678731305704438737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P7678731305704438737

namespace A113789

/-- `∩[A045939(n+1), A114436(n+1)]` -/
def P7678731305704438737.Spec : Prop :=
  ∀ n, (P7678731305704438737.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P15066480026157126262

`∩[A045939(n+1), A217856(n+1)]`
-/

namespace A113789.P15066480026157126262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P15066480026157126262

namespace A113789

/-- `∩[A045939(n+1), A217856(n+1)]` -/
def P15066480026157126262.Spec : Prop :=
  ∀ n, (P15066480026157126262.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P16672006497978611983

`∩[A014612(n+1), A045939(n+1)]`
-/

namespace A113789.P16672006497978611983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P16672006497978611983

namespace A113789

/-- `∩[A014612(n+1), A045939(n+1)]` -/
def P16672006497978611983.Spec : Prop :=
  ∀ n, (P16672006497978611983.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P13717658107959904236

`∩[A045939(n+1), A358763(n+1)]`
-/

namespace A113789.P13717658107959904236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P13717658107959904236

namespace A113789

/-- `∩[A045939(n+1), A358763(n+1)]` -/
def P13717658107959904236.Spec : Prop :=
  ∀ n, (P13717658107959904236.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P9245468556141078918

`∩[A045939(n+1), A145784(n+1)]`
-/

namespace A113789.P9245468556141078918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P9245468556141078918

namespace A113789

/-- `∩[A045939(n+1), A145784(n+1)]` -/
def P9245468556141078918.Spec : Prop :=
  ∀ n, (P9245468556141078918.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P17267417768237358993

`∩[A045920(n+1), A180117(n+1)]`
-/

namespace A113789.P17267417768237358993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P17267417768237358993

namespace A113789

/-- `∩[A045920(n+1), A180117(n+1)]` -/
def P17267417768237358993.Spec : Prop :=
  ∀ n, (P17267417768237358993.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P15449268890651595788

`∩[A045939(n+1), A180117(n+1)]`
-/

namespace A113789.P15449268890651595788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P15449268890651595788

namespace A113789

/-- `∩[A045939(n+1), A180117(n+1)]` -/
def P15449268890651595788.Spec : Prop :=
  ∀ n, (P15449268890651595788.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P2094342839158173647

`∩[A114436(n+1), A180117(n+1)]`
-/

namespace A113789.P2094342839158173647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P2094342839158173647

namespace A113789

/-- `∩[A114436(n+1), A180117(n+1)]` -/
def P2094342839158173647.Spec : Prop :=
  ∀ n, (P2094342839158173647.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P9872276316455592898

`∩[A180117(n+1), A259504(n+1)]`
-/

namespace A113789.P9872276316455592898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113789.P9872276316455592898

namespace A113789

/-- `∩[A180117(n+1), A259504(n+1)]` -/
def P9872276316455592898.Spec : Prop :=
  ∀ n, (P9872276316455592898.a n : ℤ) = A113789 (n + 1)

end A113789

/-! ## A113789.P13118559172057763602

`filter[A045939(n+1), A101605(#)]`
-/

namespace A113789.P13118559172057763602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A113789.P13118559172057763602

namespace A113789

/-- `filter[A045939(n+1), A101605(#)]` -/
def P13118559172057763602.Spec : Prop :=
  ∀ n, P13118559172057763602.a n = A113789 (n + 1)

end A113789

/-!
# A113790: In each block of 5 consecutive natural numbers, swap first and 2nd and swap 4th and 5th.

The programs for A113790, the canonical program `A113790.P15705321317708336132` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113790 has offset 1).

The definition of A113790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113790.P15705321317708336132

`∑[gcd(5, n)]%3+n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A113790

/-- `∑[gcd(5, n)]%3+n` -/
def P15705321317708336132.Spec : Prop :=
  ∀ n, (P15705321317708336132.a n : ℤ) = A113790 (n + 1)

theorem P15705321317708336132.correct : P15705321317708336132.Spec := by
  intro n
  simp only [A113790, Nat.add_sub_cancel]

end A113790

/-! ## A113790.P9772094026396841488

`(n%5+2)%3+n`
-/

namespace A113790.P9772094026396841488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 5 + 2) % 3 + n

end

end A113790.P9772094026396841488

namespace A113790

/-- `(n%5+2)%3+n` -/
def P9772094026396841488.Spec : Prop :=
  ∀ n, (P9772094026396841488.a n : ℤ) = A113790 (n + 1)

end A113790

/-! ## A113790.P12882503189006500083

`a(n-5)+5` with `a(0)=2, a(1)=1, a(2)=3, a(3)=5, a(4)=4`
-/

namespace A113790.P12882503189006500083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 5, 4] fun n a =>
  a (n - 5) + 5

end

end A113790.P12882503189006500083

namespace A113790

/-- `a(n-5)+5` -/
def P12882503189006500083.Spec : Prop :=
  ∀ n, (P12882503189006500083.a n : ℤ) = A113790 (n + 1)

end A113790

/-! ## A113790.P9941069637310388911

`∑[(n²-1)%5]-(n-3)`
-/

namespace A113790.P9941069637310388911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 3)

end

end A113790.P9941069637310388911

namespace A113790

/-- `∑[(n²-1)%5]-(n-3)` -/
def P9941069637310388911.Spec : Prop :=
  ∀ n, P9941069637310388911.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P4236378750956913082

`∑[floor(a(n-5))]` with `a(0)=2, a(1)=-1, a(2)=2, a(3)=2, a(4)=-1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A113790.P4236378750956913082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2, 2, -1, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113790.P4236378750956913082

namespace A113790

/-- `∑[floor(a(n-5))]` -/
def P4236378750956913082.Spec : Prop :=
  ∀ n, P4236378750956913082.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P9416310178246693690

`∑[A059100(n)]%5+n`
-/

namespace A113790.P9416310178246693690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5 + (n : ℤ)

end

end A113790.P9416310178246693690

namespace A113790

/-- `∑[A059100(n)]%5+n` -/
def P9416310178246693690.Spec : Prop :=
  ∀ n, P9416310178246693690.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P234428984281483267

`A156174(n+2)+1+n`
-/

namespace A113790.P234428984281483267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156174 (n + 2) + 1 + (n : ℤ)

end

end A113790.P234428984281483267

namespace A113790

/-- `A156174(n+2)+1+n` -/
def P234428984281483267.Spec : Prop :=
  ∀ n, P234428984281483267.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P16734562807205682220

`A152855(n+3)+n`
-/

namespace A113790.P16734562807205682220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152855 (n + 3) + (n : ℤ)

end

end A113790.P16734562807205682220

namespace A113790

/-- `A152855(n+3)+n` -/
def P16734562807205682220.Spec : Prop :=
  ∀ n, P16734562807205682220.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P7963805009238558460

`1-A163818(n+3)+n`
-/

namespace A113790.P7963805009238558460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163818 (n + 3) + (n : ℤ)

end

end A113790.P7963805009238558460

namespace A113790

/-- `1-A163818(n+3)+n` -/
def P7963805009238558460.Spec : Prop :=
  ∀ n, P7963805009238558460.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P3975051070768230565

`n+1-A292301(2*n)`
-/

namespace A113790.P3975051070768230565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292301 (2 * n)

end

end A113790.P3975051070768230565

namespace A113790

/-- `n+1-A292301(2*n)` -/
def P3975051070768230565.Spec : Prop :=
  ∀ n, P3975051070768230565.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P6973832756558386217

`A244895(Δ[n²])+n+1`
-/

namespace A113790.P6973832756558386217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A113790.P6973832756558386217

namespace A113790

/-- `A244895(Δ[n²])+n+1` -/
def P6973832756558386217.Spec : Prop :=
  ∀ n, P6973832756558386217.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P13275714942317757953

`A330033(Δ[n²])+n+1`
-/

namespace A113790.P13275714942317757953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A113790.P13275714942317757953

namespace A113790

/-- `A330033(Δ[n²])+n+1` -/
def P13275714942317757953.Spec : Prop :=
  ∀ n, P13275714942317757953.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P11666692860738595662

`n+1-A138019(2*n+3)`
-/

namespace A113790.P11666692860738595662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A138019 (2 * n + 3)

end

end A113790.P11666692860738595662

namespace A113790

/-- `n+1-A138019(2*n+3)` -/
def P11666692860738595662.Spec : Prop :=
  ∀ n, P11666692860738595662.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P11843534252640530165

`A163812(A053438(2*n+1))+A001057(2*n+1)`
-/

namespace A113790.P11843534252640530165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163812 (A053438 (2 * n + 1)).toNat + A001057 (2 * n + 1)

end

end A113790.P11843534252640530165

namespace A113790

/-- `A163812(A053438(2*n+1))+A001057(2*n+1)` -/
def P11843534252640530165.Spec : Prop :=
  ∀ n, P11843534252640530165.a n = A113790 (n + 1)

end A113790

/-! ## A113790.P1236315553916550872

`n+2-A010872(A137935(n))`
-/

namespace A113790.P1236315553916550872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A010872 (A137935 n).toNat

end

end A113790.P1236315553916550872

namespace A113790

/-- `n+2-A010872(A137935(n))` -/
def P1236315553916550872.Spec : Prop :=
  ∀ n, P1236315553916550872.a n = A113790 (n + 1)

end A113790

/-!
# A113791: Let S(n)=Sigma(n)/2. Numbers n such that S(S(n))=n, 1/2-Sociable number of order 1 or 2.

The programs for A113791, there is no canonical definition to state claims against.
-/

/-! ## A113791.P12259646803870450976

`∩[A007774(n+1), A183029(n+1)]`
-/

namespace A113791.P12259646803870450976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113791.P12259646803870450976

/-! ## A113791.P18182437289348594516

`∩[A084227(n+1), A183029(n+1)]`
-/

namespace A113791.P18182437289348594516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113791.P18182437289348594516

/-! ## A113791.P7031946824225581550

`∩[A183029(n+1), A328956(n+1)]`
-/

namespace A113791.P7031946824225581550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113791.P7031946824225581550

/-! ## A113791.P5399506722832528097

`filter[A183029(n+1), A215480(#)]`
-/

namespace A113791.P5399506722832528097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A113791.P5399506722832528097

/-! ## A113791.P6888235938136081953

`eq[A008574(n), A193336(A028310(n))]`
-/

namespace A113791.P6888235938136081953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113791.P6888235938136081953

/-!
# A113793: Triangle read by rows: T(n,m) = phi(n - m + 1) * phi(m), n >= 1, m >= 1.

The programs for A113793, the canonical program `A113793.P17835450932075285636` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113793 has offset 1).

The definition of A113793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(row(n)+1-(col(n)+1)+1)*A000010(col(n)+1)` (program `A113793.P17835450932075285636`, by `A113793.P17835450932075285636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113793.P14521466641846985112

`A000010(col(n)+1)*A000010(row(n)+1-col(n))`
-/

namespace A113793.P14521466641846985112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triCol n + 1) * A000010 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A113793.P14521466641846985112

namespace A113793

/-- `A000010(col(n)+1)*A000010(row(n)+1-col(n))` -/
def P14521466641846985112.Spec : Prop :=
  ∀ n, P14521466641846985112.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P17835450932075285636

`A000010(row(n)+1-(col(n)+1)+1)*A000010(col(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A113793

/-- `A000010(row(n)+1-(col(n)+1)+1)*A000010(col(n)+1)` -/
def P17835450932075285636.Spec : Prop :=
  ∀ n, P17835450932075285636.a n = A113793 (n + 1)

theorem P17835450932075285636.correct : P17835450932075285636.Spec := by
  intro n
  simp only [A113793, Nat.add_sub_cancel]

end A113793

/-! ## A113793.P5053081233235943230

`A054526(n+1)*A106476(n)`
-/

namespace A113793.P5053081233235943230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A106476 n

end

end A113793.P5053081233235943230

namespace A113793

/-- `A054526(n+1)*A106476(n)` -/
def P5053081233235943230.Spec : Prop :=
  ∀ n, P5053081233235943230.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P1786488321624896193

`∏{e}[A036561(n), A000010(#+1)]`
-/

namespace A113793.P1786488321624896193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p + 1)

end

end A113793.P1786488321624896193

namespace A113793

/-- `∏{e}[A036561(n), A000010(#+1)]` -/
def P1786488321624896193.Spec : Prop :=
  ∀ n, P1786488321624896193.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P11718008812355159225

`∏{e}[A175840(n), A000010(#+1)]`
-/

namespace A113793.P11718008812355159225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p + 1)

end

end A113793.P11718008812355159225

namespace A113793

/-- `∏{e}[A175840(n), A000010(#+1)]` -/
def P11718008812355159225.Spec : Prop :=
  ∀ n, P11718008812355159225.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P7038374046033132694

`∏{e}[A230445(n)+1, A000010(#+1)]`
-/

namespace A113793.P7038374046033132694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p + 1)

end

end A113793.P7038374046033132694

namespace A113793

/-- `∏{e}[A230445(n)+1, A000010(#+1)]` -/
def P7038374046033132694.Spec : Prop :=
  ∀ n, P7038374046033132694.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P12926898009830648594

`A000010(C(comp[∑[n]]-n, 2)-n)*A054526(n+1)`
-/

namespace A113793.P12926898009830648594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A054526 (n + 1)

end

end A113793.P12926898009830648594

namespace A113793

/-- `A000010(C(comp[∑[n]]-n, 2)-n)*A054526(n+1)` -/
def P12926898009830648594.Spec : Prop :=
  ∀ n, P12926898009830648594.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P14821090194461271401

`A106476(A061579(n))*A106476(n)`
-/

namespace A113793.P14821090194461271401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (A061579 n).toNat * A106476 n

end

end A113793.P14821090194461271401

namespace A113793

/-- `A106476(A061579(n))*A106476(n)` -/
def P14821090194461271401.Spec : Prop :=
  ∀ n, P14821090194461271401.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P12400435516683496778

`A000010(A002260(n+1))*A106476(n)`
-/

namespace A113793.P12400435516683496778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A106476 n

end

end A113793.P12400435516683496778

namespace A113793

/-- `A000010(A002260(n+1))*A106476(n)` -/
def P12400435516683496778.Spec : Prop :=
  ∀ n, P12400435516683496778.a n = A113793 (n + 1)

end A113793

/-! ## A113793.P5301785241304503738

`A000010(A003991(n+1))-A076953(n+1)`
-/

namespace A113793.P5301785241304503738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003991 (n + 1)).toNat - A076953 (n + 1)

end

end A113793.P5301785241304503738

namespace A113793

/-- `A000010(A003991(n+1))-A076953(n+1)` -/
def P5301785241304503738.Spec : Prop :=
  ∀ n, P5301785241304503738.a n = A113793 (n + 1)

end A113793

/-!
# A113797: Numbers k whose digits can be divided into two contiguous parts, k = concatenate(x, y), such that k = |x^2 - y^2|.

The programs for A113797, there is no canonical definition to state claims against.
-/

/-! ## A113797.P3572434871078625680

`∪[A162700(n+1), A258482(n+1)]`
-/

namespace A113797.P3572434871078625680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A113797.P3572434871078625680

/-!
# A113799: Numbers k such that the k-th triangular number plus the reverse of k gives a square.

The programs for A113799, there is no canonical definition to state claims against.
-/

/-! ## A113799.P964505953107632863

`A097569(A353754(3*n+5)+A157971(n+1))`
-/

namespace A113799.P964505953107632863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (A353754 (3 * n + 5) + A157971 (n + 1)).toNat

end

end A113799.P964505953107632863

