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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A081900: Fourth binomial transform of binomial(n+4, 4).

The programs for A081900, there is no canonical definition to state claims against.
-/

/-! ## A081900.P13588524733541561845

`A243348(A001333(2*n+3)-A293076(3*n+1))`
-/

namespace A081900.P13588524733541561845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (A001333 (2 * n + 3) - A293076 (3 * n + 1)).toNat

end

end A081900.P13588524733541561845

/-!
# A081901: Second binomial transform of binomial(n+5, 5).

The programs for A081901, there is no canonical definition to state claims against.
-/

/-! ## A081901.P1121305795279750348

`A004526(A235996(2*(n+2))+A102702(n))`
-/

namespace A081901.P1121305795279750348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A235996 (2 * (n + 2)) + A102702 n).toNat

end

end A081901.P1121305795279750348

/-!
# A081903: Fourth binomial transform of binomial(n+5, 5).

The programs for A081903, there is no canonical definition to state claims against.
-/

/-! ## A081903.P8207042163613881757

`abs(A119724(Δ[A026054(n+3)]))`
-/

namespace A081903.P8207042163613881757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119724 (f1 (n + 1) - f1 n).toNat|

end

end A081903.P8207042163613881757

/-!
# A081904: Second binomial transform of binomial(n+6, 6).

The programs for A081904, there is no canonical definition to state claims against.
-/

/-! ## A081904.P9649983967434203269

`A287292(A022032(n))-A004767(n)`
-/

namespace A081904.P9649983967434203269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287292 (A022032 n).toNat - A004767 n

end

end A081904.P9649983967434203269

/-!
# A081905: Third binomial transform of binomial(n+6, 6).

The programs for A081905, there is no canonical definition to state claims against.
-/

/-! ## A081905.P18087472144387454443

`A285869(A212850(n+1)-A003463(n))`
-/

namespace A081905.P18087472144387454443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A212850 (n + 1) - A003463 n).toNat

end

end A081905.P18087472144387454443

/-!
# A081907: Fifth binomial transform of binomial(n+2, 2).

The programs for A081907, the canonical program `A081907.P7307056295329558138` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081907 has offset 0).

The definition of A081907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081907.P7307056295329558138

`6^n*(n²+23*n+72)/72`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081907

/-- `6^n*(n²+23*n+72)/72` -/
def P7307056295329558138.Spec : Prop :=
  ∀ n, P7307056295329558138.a n = (A081907 n : ℚ)

end A081907

/-!
# A081908: a(n) = 2^n*(n^2 - n + 8)/8.

The programs for A081908, the canonical program `A081908.P9851220860095533356` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081908 has offset 0).

The definition of A081908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081908.P9851220860095533356

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081908

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P9851220860095533356.Spec : Prop :=
  ∀ n, P9851220860095533356.a n = A081908 n

theorem P9851220860095533356.correct : P9851220860095533356.Spec := by
  intro n
  simp only [A081908]

end A081908

/-! ## A081908.P7947553159698560460

`A000079(n)+(A001788(n)-A001787(n))/2`
-/

namespace A081908.P7947553159698560460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A001788 n - A001787 n : ℚ) / 2

end

end A081908.P7947553159698560460

namespace A081908

/-- `A000079(n)+(A001788(n)-A001787(n))/2` -/
def P7947553159698560460.Spec : Prop :=
  ∀ n, P7947553159698560460.a n = (A081908 n : ℚ)

end A081908

/-! ## A081908.P7756090608604208097

`2^(n-2)*(C(n, 2)+4)`
-/

namespace A081908.P7756090608604208097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 + 4 : ℚ)

end

end A081908.P7756090608604208097

namespace A081908

/-- `2^(n-2)*(C(n, 2)+4)` -/
def P7756090608604208097.Spec : Prop :=
  ∀ n, P7756090608604208097.a n = (A081908 n : ℚ)

end A081908

/-! ## A081908.P4403871313058022564

`(∑[n-1]+5)*2^(n-2)`
-/

namespace A081908.P4403871313058022564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A081908.P4403871313058022564

namespace A081908

/-- `(∑[n-1]+5)*2^(n-2)` -/
def P4403871313058022564.Spec : Prop :=
  ∀ n, P4403871313058022564.a n = (A081908 n : ℚ)

end A081908

/-! ## A081908.P14412924422673288862

`A072863(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A081908.P14412924422673288862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072863 (n - 1) + a (n - 1)

end

end A081908.P14412924422673288862

namespace A081908

/-- `A072863(n-1)+a(n-1)` -/
def P14412924422673288862.Spec : Prop :=
  ∀ n, P14412924422673288862.a n = A081908 n

end A081908

/-! ## A081908.P8675909859697730269

`A097067(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A081908.P8675909859697730269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097067 n + 2 * a (n - 1)

end

end A081908.P8675909859697730269

namespace A081908

/-- `A097067(n)+2*a(n-1)` -/
def P8675909859697730269.Spec : Prop :=
  ∀ n, P8675909859697730269.a n = A081908 n

end A081908

/-! ## A081908.P1362489668817141442

`A139756(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A081908.P1362489668817141442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139756 n + 2 * a (n - 1)

end

end A081908.P1362489668817141442

namespace A081908

/-- `A139756(n)+2*a(n-1)` -/
def P1362489668817141442.Spec : Prop :=
  ∀ n, P1362489668817141442.a n = A081908 n

end A081908

/-! ## A081908.P9422962167214716776

`A072863(n)-A001787(n)`
-/

namespace A081908.P9422962167214716776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - A001787 n

end

end A081908.P9422962167214716776

namespace A081908

/-- `A072863(n)-A001787(n)` -/
def P9422962167214716776.Spec : Prop :=
  ∀ n, P9422962167214716776.a n = A081908 n

end A081908

/-! ## A081908.P13905676891353842759

`A084851(n)-A036289(n)`
-/

namespace A081908.P13905676891353842759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A036289 n

end

end A081908.P13905676891353842759

namespace A081908

/-- `A084851(n)-A036289(n)` -/
def P13905676891353842759.Spec : Prop :=
  ∀ n, P13905676891353842759.a n = A081908 n

end A081908

/-! ## A081908.P12776406753652905301

`A084851(n)-2*A001787(n)`
-/

namespace A081908.P12776406753652905301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - 2 * A001787 n

end

end A081908.P12776406753652905301

namespace A081908

/-- `A084851(n)-2*A001787(n)` -/
def P12776406753652905301.Spec : Prop :=
  ∀ n, P12776406753652905301.a n = A081908 n

end A081908

/-! ## A081908.P9213032582397213801

`A072863(n)-A036289(n)/2`
-/

namespace A081908.P9213032582397213801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072863 n : ℚ) - (A036289 n : ℚ) / 2

end

end A081908.P9213032582397213801

namespace A081908

/-- `A072863(n)-A036289(n)/2` -/
def P9213032582397213801.Spec : Prop :=
  ∀ n, P9213032582397213801.a n = (A081908 n : ℚ)

end A081908

/-! ## A081908.P13790960126702537610

`A072863(n)-n*A011782(n)`
-/

namespace A081908.P13790960126702537610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - (n : ℤ) * A011782 n

end

end A081908.P13790960126702537610

namespace A081908

/-- `A072863(n)-n*A011782(n)` -/
def P13790960126702537610.Spec : Prop :=
  ∀ n, P13790960126702537610.a n = A081908 n

end A081908

/-! ## A081908.P576221517793059826

`A084851(n)-n*A000079(n)`
-/

namespace A081908.P576221517793059826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - (n : ℤ) * A000079 n

end

end A081908.P576221517793059826

namespace A081908

/-- `A084851(n)-n*A000079(n)` -/
def P576221517793059826.Spec : Prop :=
  ∀ n, P576221517793059826.a n = A081908 n

end A081908

/-! ## A081908.P18366680165506634917

`A072863(n)-n*A131577(n)`
-/

namespace A081908.P18366680165506634917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - (n : ℤ) * A131577 n

end

end A081908.P18366680165506634917

namespace A081908

/-- `A072863(n)-n*A131577(n)` -/
def P18366680165506634917.Spec : Prop :=
  ∀ n, P18366680165506634917.a n = A081908 n

end A081908

/-! ## A081908.P16939041803324562137

`∑[A058396(n)]-2*A001787(n)`
-/

namespace A081908.P16939041803324562137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A001787 n

end

end A081908.P16939041803324562137

namespace A081908

/-- `∑[A058396(n)]-2*A001787(n)` -/
def P16939041803324562137.Spec : Prop :=
  ∀ n, P16939041803324562137.a n = A081908 n

end A081908

/-! ## A081908.P6653967220503143275

`A190050(n+1)-A001787(n+1)`
-/

namespace A081908.P6653967220503143275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 (n + 1) - A001787 (n + 1)

end

end A081908.P6653967220503143275

namespace A081908

/-- `A190050(n+1)-A001787(n+1)` -/
def P6653967220503143275.Spec : Prop :=
  ∀ n, P6653967220503143275.a n = A081908 n

end A081908

/-! ## A081908.P1013905148887975943

`A049611(n+1)-2*A001787(n)`
-/

namespace A081908.P1013905148887975943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - 2 * A001787 n

end

end A081908.P1013905148887975943

namespace A081908

/-- `A049611(n+1)-2*A001787(n)` -/
def P1013905148887975943.Spec : Prop :=
  ∀ n, P1013905148887975943.a n = A081908 n

end A081908

/-! ## A081908.P17337289884560176678

`A049611(n+1)-n*A011782(n+1)`
-/

namespace A081908.P17337289884560176678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - (n : ℤ) * A011782 (n + 1)

end

end A081908.P17337289884560176678

namespace A081908

/-- `A049611(n+1)-n*A011782(n+1)` -/
def P17337289884560176678.Spec : Prop :=
  ∀ n, P17337289884560176678.a n = A081908 n

end A081908

/-! ## A081908.P2559519000045425042

`A049611(n+1)-n*A131577(n+1)`
-/

namespace A081908.P2559519000045425042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - (n : ℤ) * A131577 (n + 1)

end

end A081908.P2559519000045425042

namespace A081908

/-- `A049611(n+1)-n*A131577(n+1)` -/
def P2559519000045425042.Spec : Prop :=
  ∀ n, P2559519000045425042.a n = A081908 n

end A081908

/-! ## A081908.P9905773464873009425

`A049611(n+1)-n*A131575(2*n+1)`
-/

namespace A081908.P9905773464873009425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - (n : ℤ) * A131575 (2 * n + 1)

end

end A081908.P9905773464873009425

namespace A081908

/-- `A049611(n+1)-n*A131575(2*n+1)` -/
def P9905773464873009425.Spec : Prop :=
  ∀ n, P9905773464873009425.a n = A081908 n

end A081908

/-!
# A081909: a(n) = 3^n(n^2 - n + 18)/18.

The programs for A081909, the canonical program `A081909.P10929517941132100434` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081909 has offset 0).

The definition of A081909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081909.P2073500087665376274

`(C(n, 2)/9+1)*3^n`
-/

namespace A081909.P2073500087665376274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℚ) / 9 + 1) * (3 ^ n : ℚ)

end

end A081909.P2073500087665376274

namespace A081909

/-- `(C(n, 2)/9+1)*3^n` -/
def P2073500087665376274.Spec : Prop :=
  ∀ n, P2073500087665376274.a n = (A081909 n : ℚ)

end A081909

/-! ## A081909.P1962710534562558235

`((∑[n]-n)/9+1)*3^n`
-/

namespace A081909.P1962710534562558235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / 9 + 1) * (3 ^ n : ℚ)

end

end A081909.P1962710534562558235

namespace A081909

/-- `((∑[n]-n)/9+1)*3^n` -/
def P1962710534562558235.Spec : Prop :=
  ∀ n, P1962710534562558235.a n = (A081909 n : ℚ)

end A081909

/-! ## A081909.P10929517941132100434

`A027471(n)+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081909

/-- `A027471(n)+3*a(n-1)` -/
def P10929517941132100434.Spec : Prop :=
  ∀ n, P10929517941132100434.a n = A081909 n

theorem P10929517941132100434.correct : P10929517941132100434.Spec := by
  intro n
  simp only [A081909]

end A081909

/-! ## A081909.P9362170197813457109

`A382618(n)-A027471(n+1)`
-/

namespace A081909.P9362170197813457109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382618 n - A027471 (n + 1)

end

end A081909.P9362170197813457109

namespace A081909

/-- `A382618(n)-A027471(n+1)` -/
def P9362170197813457109.Spec : Prop :=
  ∀ n, P9362170197813457109.a n = A081909 n

end A081909

/-! ## A081909.P1462771376192397936

`A081892(n)-2*A027471(n+1)`
-/

namespace A081909.P1462771376192397936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081892 n - 2 * A027471 (n + 1)

end

end A081909.P1462771376192397936

namespace A081909

/-- `A081892(n)-2*A027471(n+1)` -/
def P1462771376192397936.Spec : Prop :=
  ∀ n, P1462771376192397936.a n = A081909 n

end A081909

/-! ## A081909.P16892139461817382251

`A000244(n)+A382618(n)-A006234(n+3)`
-/

namespace A081909.P16892139461817382251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A382618 n - A006234 (n + 3))

end

end A081909.P16892139461817382251

namespace A081909

/-- `A000244(n)+A382618(n)-A006234(n+3)` -/
def P16892139461817382251.Spec : Prop :=
  ∀ n, P16892139461817382251.a n = A081909 n

end A081909

/-! ## A081909.P10416745661077941776

`A000244(n)+A129530(n)/3`
-/

namespace A081909.P10416745661077941776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) + (A129530 n : ℚ) / 3

end

end A081909.P10416745661077941776

namespace A081909

/-- `A000244(n)+A129530(n)/3` -/
def P10416745661077941776.Spec : Prop :=
  ∀ n, P10416745661077941776.a n = (A081909 n : ℚ)

end A081909

/-! ## A081909.P10601274529849182096

`Δ[A003462(n)]+A129530(n)/3`
-/

namespace A081909.P10601274529849182096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A129530 n : ℚ) / 3

end

end A081909.P10601274529849182096

namespace A081909

/-- `Δ[A003462(n)]+A129530(n)/3` -/
def P10601274529849182096.Spec : Prop :=
  ∀ n, P10601274529849182096.a n = (A081909 n : ℚ)

end A081909

/-! ## A081909.P18169796541499817351

`A000302(n)-A380024(n)`
-/

namespace A081909.P18169796541499817351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A380024 n

end

end A081909.P18169796541499817351

namespace A081909

/-- `A000302(n)-A380024(n)` -/
def P18169796541499817351.Spec : Prop :=
  ∀ n, P18169796541499817351.a n = A081909 n

end A081909

/-! ## A081909.P16832359164892586707

`A074605(n)-A380249(n)`
-/

namespace A081909.P16832359164892586707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074605 n - A380249 n

end

end A081909.P16832359164892586707

namespace A081909

/-- `A074605(n)-A380249(n)` -/
def P16832359164892586707.Spec : Prop :=
  ∀ n, P16832359164892586707.a n = A081909 n

end A081909

/-! ## A081909.P7600946291948151570

`A380651(n)-A384415(n)`
-/

namespace A081909.P7600946291948151570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380651 n - A384415 n

end

end A081909.P7600946291948151570

namespace A081909

/-- `A380651(n)-A384415(n)` -/
def P7600946291948151570.Spec : Prop :=
  ∀ n, P7600946291948151570.a n = A081909 n

end A081909

/-! ## A081909.P2823016478708655685

`A027471(n+1)+A380651(n)-A380024(n)`
-/

namespace A081909.P2823016478708655685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A380651 n - A380024 n)

end

end A081909.P2823016478708655685

namespace A081909

/-- `A027471(n+1)+A380651(n)-A380024(n)` -/
def P2823016478708655685.Spec : Prop :=
  ∀ n, P2823016478708655685.a n = A081909 n

end A081909

/-! ## A081909.P3524863449691858346

`A085350(n)-(A380024(n)+A005061(n))`
-/

namespace A081909.P3524863449691858346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085350 n - (A380024 n + A005061 n)

end

end A081909.P3524863449691858346

namespace A081909

/-- `A085350(n)-(A380024(n)+A005061(n))` -/
def P3524863449691858346.Spec : Prop :=
  ∀ n, P3524863449691858346.a n = A081909 n

end A081909

/-! ## A081909.P17418146801455377083

`A027465(A000217(n))+A129530(n)/3`
-/

namespace A081909.P17418146801455377083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 (A000217 n).toNat : ℚ) + (A129530 n : ℚ) / 3

end

end A081909.P17418146801455377083

namespace A081909

/-- `A027465(A000217(n))+A129530(n)/3` -/
def P17418146801455377083.Spec : Prop :=
  ∀ n, P17418146801455377083.a n = (A081909 n : ℚ)

end A081909

/-! ## A081909.P9337886886630505651

`A000244(n)+gcd(A081136(n), A081139(n))`
-/

namespace A081909.P9337886886630505651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (Int.gcd (A081136 n) (A081139 n) : ℤ)

end

end A081909.P9337886886630505651

namespace A081909

/-- `A000244(n)+gcd(A081136(n), A081139(n))` -/
def P9337886886630505651.Spec : Prop :=
  ∀ n, P9337886886630505651.a n = A081909 n

end A081909

/-!
# A081910: a(n) = 4^n*(n^2 - n + 32)/32.

The programs for A081910, the canonical program `A081910.P17839993961558843368` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081910 has offset 0).

The definition of A081910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081910.P17839993961558843368

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081910

/-- `12*a(n-1)-48*a(n-2)+64*a(n-3)` -/
def P17839993961558843368.Spec : Prop :=
  ∀ n, P17839993961558843368.a n = A081910 n

theorem P17839993961558843368.correct : P17839993961558843368.Spec := by
  intro n
  simp only [A081910]

end A081910

/-! ## A081910.P13588227141370483130

`A081893(n)-A002699(n)`
-/

namespace A081910.P13588227141370483130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081893 n - A002699 n

end

end A081910.P13588227141370483130

namespace A081910

/-- `A081893(n)-A002699(n)` -/
def P13588227141370483130.Spec : Prop :=
  ∀ n, P13588227141370483130.a n = A081910 n

end A081910

/-! ## A081910.P2065660131386546830

`A081893(n)-A000079(n)*A001787(n)`
-/

namespace A081910.P2065660131386546830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081893 n - A000079 n * A001787 n

end

end A081910.P2065660131386546830

namespace A081910

/-- `A081893(n)-A000079(n)*A001787(n)` -/
def P2065660131386546830.Spec : Prop :=
  ∀ n, P2065660131386546830.a n = A081910 n

end A081910

/-! ## A081910.P3892859283744039010

`A081893(n)-A011782(n)*A036289(n)`
-/

namespace A081910.P3892859283744039010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081893 n - A011782 n * A036289 n

end

end A081910.P3892859283744039010

namespace A081910

/-- `A081893(n)-A011782(n)*A036289(n)` -/
def P3892859283744039010.Spec : Prop :=
  ∀ n, P3892859283744039010.a n = A081910 n

end A081910

/-! ## A081910.P6728925617648056630

`A000302(n)+A052780(n)/2`
-/

namespace A081910.P6728925617648056630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) + (A052780 n : ℚ) / 2

end

end A081910.P6728925617648056630

namespace A081910

/-- `A000302(n)+A052780(n)/2` -/
def P6728925617648056630.Spec : Prop :=
  ∀ n, P6728925617648056630.a n = (A081910 n : ℚ)

end A081910

/-!
# A081911: a(n) = 5^n*(n^2 - n + 50)/50.

The programs for A081911, the canonical program `A081911.P18009159884158215965` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081911 has offset 0).

The definition of A081911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081911.P18009159884158215965

`15*a(n-1)-75*a(n-2)+125*a(n-3)` with `a(0)=1, a(1)=5, a(2)=26`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081911

/-- `15*a(n-1)-75*a(n-2)+125*a(n-3)` -/
def P18009159884158215965.Spec : Prop :=
  ∀ n, P18009159884158215965.a n = A081911 n

theorem P18009159884158215965.correct : P18009159884158215965.Spec := by
  intro n
  simp only [A081911]

end A081911

/-! ## A081911.P11777411043003707641

`5^n+5^(n-2)*C(n, 2)`
-/

namespace A081911.P11777411043003707641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) + (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081911.P11777411043003707641

namespace A081911

/-- `5^n+5^(n-2)*C(n, 2)` -/
def P11777411043003707641.Spec : Prop :=
  ∀ n, P11777411043003707641.a n = (A081911 n : ℚ)

end A081911

/-! ## A081911.P4784675810717000312

`A081135(n)+5^n`
-/

namespace A081911.P4784675810717000312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 n + (5 ^ n : ℤ)

end

end A081911.P4784675810717000312

namespace A081911

/-- `A081135(n)+5^n` -/
def P4784675810717000312.Spec : Prop :=
  ∀ n, P4784675810717000312.a n = A081911 n

end A081911

/-! ## A081911.P517159161929245047

`abs(A081135(n)+Δ[A003463(n)])`
-/

namespace A081911.P517159161929245047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081135 n + (f1 (n + 1) - f1 n)|

end

end A081911.P517159161929245047

namespace A081911

/-- `abs(A081135(n)+Δ[A003463(n)])` -/
def P517159161929245047.Spec : Prop :=
  ∀ n, P517159161929245047.a n = A081911 n

end A081911

/-! ## A081911.P9964924315635916593

`A098615(2*n+1)+A081135(n)`
-/

namespace A081911.P9964924315635916593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 (2 * n + 1) + A081135 n

end

end A081911.P9964924315635916593

namespace A081911

/-- `A098615(2*n+1)+A081135(n)` -/
def P9964924315635916593.Spec : Prop :=
  ∀ n, P9964924315635916593.a n = A081911 n

end A081911

/-! ## A081911.P13857919114226504467

`A084902((n-1)%(n+1))+A000351(n)`
-/

namespace A081911.P13857919114226504467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat + A000351 n

end

end A081911.P13857919114226504467

namespace A081911

/-- `A084902((n-1)%(n+1))+A000351(n)` -/
def P13857919114226504467.Spec : Prop :=
  ∀ n, P13857919114226504467.a n = A081911 n

end A081911

/-! ## A081911.P10130656933839556702

`A084902(log2(A011782(n)))+A000351(n)`
-/

namespace A081911.P10130656933839556702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A000351 n

end

end A081911.P10130656933839556702

namespace A081911

/-- `A084902(log2(A011782(n)))+A000351(n)` -/
def P10130656933839556702.Spec : Prop :=
  ∀ n, P10130656933839556702.a n = A081911 n

end A081911

/-! ## A081911.P5833818899529451205

`(A081135(n)+Δ[A003463(n)])*A020985(n+1)²`
-/

namespace A081911.P5833818899529451205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081135 n + (f1 (n + 1) - f1 n)) * A020985 (n + 1) ^ 2

end

end A081911.P5833818899529451205

namespace A081911

/-- `(A081135(n)+Δ[A003463(n)])*A020985(n+1)²` -/
def P5833818899529451205.Spec : Prop :=
  ∀ n, P5833818899529451205.a n = A081911 n

end A081911

/-! ## A081911.P15496080646241548350

`A079981(2*n+1)+A081135(n)+Δ[A003463(n)]`
-/

namespace A081911.P15496080646241548350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 (2 * n + 1) + (A081135 n + (f1 (n + 1) - f1 n))

end

end A081911.P15496080646241548350

namespace A081911

/-- `A079981(2*n+1)+A081135(n)+Δ[A003463(n)]` -/
def P15496080646241548350.Spec : Prop :=
  ∀ n, P15496080646241548350.a n = A081911 n

end A081911

/-! ## A081911.P15449162591874305551

`A081135(n)+Δ[A003463(n)]+1-((A006530(n+1)+1)%2)!`
-/

namespace A081911.P15449162591874305551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 n + (f1 (n + 1) - f1 n) + 1 - (Nat.factorial (Int.tmod (A006530 (n + 1) + 1) 2).toNat : ℤ)

end

end A081911.P15449162591874305551

namespace A081911

/-- `A081135(n)+Δ[A003463(n)]+1-((A006530(n+1)+1)%2)!` -/
def P15449162591874305551.Spec : Prop :=
  ∀ n, P15449162591874305551.a n = A081911 n

end A081911

/-! ## A081911.P12017148389782224826

`A000351(n)+(A084902(n)-A053464(n))/5`
-/

namespace A081911.P12017148389782224826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) + (A084902 n - A053464 n : ℚ) / 5

end

end A081911.P12017148389782224826

namespace A081911

/-- `A000351(n)+(A084902(n)-A053464(n))/5` -/
def P12017148389782224826.Spec : Prop :=
  ∀ n, P12017148389782224826.a n = (A081911 n : ℚ)

end A081911

/-!
# A081912: a(n) = 6^n*(n^2 - n + 72)/72.

The programs for A081912, the canonical program `A081912.P2308320130812265762` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081912 has offset 0).

The definition of A081912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081912.P2308320130812265762

`18*a(n-1)-108*a(n-2)+216*a(n-3)` with `a(0)=1, a(1)=6, a(2)=37`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081912

/-- `18*a(n-1)-108*a(n-2)+216*a(n-3)` -/
def P2308320130812265762.Spec : Prop :=
  ∀ n, P2308320130812265762.a n = A081912 n

theorem P2308320130812265762.correct : P2308320130812265762.Spec := by
  intro n
  simp only [A081912]

end A081912

/-! ## A081912.P10603094231312446128

`6^n+6^(n-2)*C(n, 2)`
-/

namespace A081912.P10603094231312446128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) + (6 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081912.P10603094231312446128

namespace A081912

/-- `6^n+6^(n-2)*C(n, 2)` -/
def P10603094231312446128.Spec : Prop :=
  ∀ n, P10603094231312446128.a n = (A081912 n : ℚ)

end A081912

/-! ## A081912.P8642238370146239413

`A081136(n)+6^n`
-/

namespace A081912.P8642238370146239413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081136 n + (6 ^ n : ℤ)

end

end A081912.P8642238370146239413

namespace A081912

/-- `A081136(n)+6^n` -/
def P8642238370146239413.Spec : Prop :=
  ∀ n, P8642238370146239413.a n = A081912 n

end A081912

/-! ## A081912.P16088131109770389942

`A024062(n)+A081136(n)+1`
-/

namespace A081912.P16088131109770389942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n + (A081136 n + 1)

end

end A081912.P16088131109770389942

namespace A081912

/-- `A024062(n)+A081136(n)+1` -/
def P16088131109770389942.Spec : Prop :=
  ∀ n, P16088131109770389942.a n = A081912 n

end A081912

/-! ## A081912.P3325371973502289377

`A164532(2*n+1)+A081136(n)`
-/

namespace A081912.P3325371973502289377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (2 * n + 1) + A081136 n

end

end A081912.P3325371973502289377

namespace A081912

/-- `A164532(2*n+1)+A081136(n)` -/
def P3325371973502289377.Spec : Prop :=
  ∀ n, P3325371973502289377.a n = A081912 n

end A081912

/-! ## A081912.P2381218399911568179

`A166027(2*(n+1))+A081136(n)`
-/

namespace A081912.P2381218399911568179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (2 * (n + 1)) + A081136 n

end

end A081912.P2381218399911568179

namespace A081912

/-- `A166027(2*(n+1))+A081136(n)` -/
def P2381218399911568179.Spec : Prop :=
  ∀ n, P2381218399911568179.a n = A081912 n

end A081912

/-! ## A081912.P15087294575189662677

`A166023(2*n+1)+A081136(n)`
-/

namespace A081912.P15087294575189662677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (2 * n + 1) + A081136 n

end

end A081912.P15087294575189662677

namespace A081912

/-- `A166023(2*n+1)+A081136(n)` -/
def P15087294575189662677.Spec : Prop :=
  ∀ n, P15087294575189662677.a n = A081912 n

end A081912

/-! ## A081912.P1111303221444692226

`A000400(n)+A000400(A289207(n))*A161680(n)`
-/

namespace A081912.P1111303221444692226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + A000400 (A289207 n).toNat * A161680 n

end

end A081912.P1111303221444692226

namespace A081912

/-- `A000400(n)+A000400(A289207(n))*A161680(n)` -/
def P1111303221444692226.Spec : Prop :=
  ∀ n, P1111303221444692226.a n = A081912 n

end A081912

/-! ## A081912.P5897645090254775226

`A000400(n)+A081136(n)%A036084(n)`
-/

namespace A081912.P5897645090254775226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + Int.tmod (A081136 n) (A036084 n)

end

end A081912.P5897645090254775226

namespace A081912

/-- `A000400(n)+A081136(n)%A036084(n)` -/
def P5897645090254775226.Spec : Prop :=
  ∀ n, P5897645090254775226.a n = A081912 n

end A081912

/-!
# A081913: a(n) = 2^n*(n^3 - 3*n^2 + 2*n + 48)/48.

The programs for A081913, the canonical program `A081913.P11246823482006713368` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081913 has offset 0).

The definition of A081913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081913.P2439526169172076051

`2^n*(n^3-3*n²+2*n+48)/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081913.P2439526169172076051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (2 * n : ℤ) + 48 : ℚ) / 48)

end

end A081913.P2439526169172076051

namespace A081913

/-- `2^n*(n^3-3*n²+2*n+48)/48` -/
def P2439526169172076051.Spec : Prop :=
  ∀ n, P2439526169172076051.a n = (A081913 n : ℚ)

end A081913

/-! ## A081913.P11246823482006713368

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081913

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P11246823482006713368.Spec : Prop :=
  ∀ n, P11246823482006713368.a n = A081913 n

theorem P11246823482006713368.correct : P11246823482006713368.Spec := by
  intro n
  simp only [A081913]

end A081913

/-! ## A081913.P3227839330819946477

`A134396(n)-∑[A049611(n)]`
-/

namespace A081913.P3227839330819946477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134396 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081913.P3227839330819946477

namespace A081913

/-- `A134396(n)-∑[A049611(n)]` -/
def P3227839330819946477.Spec : Prop :=
  ∀ n, P3227839330819946477.a n = A081913 n

end A081913

/-! ## A081913.P9980308371618282854

`A093374(n+4)-A176027(n)`
-/

namespace A081913.P9980308371618282854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093374 (n + 4) - A176027 n

end

end A081913.P9980308371618282854

namespace A081913

/-- `A093374(n+4)-A176027(n)` -/
def P9980308371618282854.Spec : Prop :=
  ∀ n, P9980308371618282854.a n = A081913 n

end A081913

/-! ## A081913.P12933025164424086302

`A093374(n+4)+Δ[A127276(n)]`
-/

namespace A081913.P12933025164424086302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093374 (n + 4) + (f1 (n + 1) - f1 n)

end

end A081913.P12933025164424086302

namespace A081913

/-- `A093374(n+4)+Δ[A127276(n)]` -/
def P12933025164424086302.Spec : Prop :=
  ∀ n, P12933025164424086302.a n = A081913 n

end A081913

/-! ## A081913.P2178840292295161022

`A093374(n+4)-(A036289(n)+A001788(n))`
-/

namespace A081913.P2178840292295161022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093374 (n + 4) - (A036289 n + A001788 n)

end

end A081913.P2178840292295161022

namespace A081913

/-- `A093374(n+4)-(A036289(n)+A001788(n))` -/
def P2178840292295161022.Spec : Prop :=
  ∀ n, P2178840292295161022.a n = A081913 n

end A081913

/-! ## A081913.P9886471763656829957

`A093374(n+4)+A000079(n)-A001793(n+1)`
-/

namespace A081913.P9886471763656829957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093374 (n + 4) + (A000079 n - A001793 (n + 1))

end

end A081913.P9886471763656829957

namespace A081913

/-- `A093374(n+4)+A000079(n)-A001793(n+1)` -/
def P9886471763656829957.Spec : Prop :=
  ∀ n, P9886471763656829957.a n = A081913 n

end A081913

/-! ## A081913.P17442834668156712527

`A000079(n)+A052771(n)/6`
-/

namespace A081913.P17442834668156712527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A052771 n : ℚ) / 6

end

end A081913.P17442834668156712527

namespace A081913

/-- `A000079(n)+A052771(n)/6` -/
def P17442834668156712527.Spec : Prop :=
  ∀ n, P17442834668156712527.a n = (A081913 n : ℚ)

end A081913

/-! ## A081913.P3036545623343507168

`A016116(2*n)+A052771(n)/6`
-/

namespace A081913.P3036545623343507168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) : ℚ) + (A052771 n : ℚ) / 6

end

end A081913.P3036545623343507168

namespace A081913

/-- `A016116(2*n)+A052771(n)/6` -/
def P3036545623343507168.Spec : Prop :=
  ∀ n, P3036545623343507168.a n = (A081913 n : ℚ)

end A081913

/-!
# A081914: a(n) = 3^n*(n^3 - 3*n^2 + 2*n + 162)/162.

The programs for A081914, the canonical program `A081914.P8917490669835532520` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081914 has offset 0).

The definition of A081914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081914.P3564335210233636179

`3^n*(n^3-3*n²+2*n+162)/162`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081914.P3564335210233636179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * (((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (2 * n : ℤ) + 162 : ℚ) / 162)

end

end A081914.P3564335210233636179

namespace A081914

/-- `3^n*(n^3-3*n²+2*n+162)/162` -/
def P3564335210233636179.Spec : Prop :=
  ∀ n, P3564335210233636179.a n = (A081914 n : ℚ)

end A081914

/-! ## A081914.P8917490669835532520

`12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081914

/-- `12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` -/
def P8917490669835532520.Spec : Prop :=
  ∀ n, P8917490669835532520.a n = A081914 n

theorem P8917490669835532520.correct : P8917490669835532520.Spec := by
  intro n
  simp only [A081914]

end A081914

/-! ## A081914.P15461359217554465432

`A099097(A027379(n))+3*a(n-1)` with `a(0)=1`
-/

namespace A081914.P15461359217554465432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099097 (A027379 n).toNat + 3 * a (n - 1)

end

end A081914.P15461359217554465432

namespace A081914

/-- `A099097(A027379(n))+3*a(n-1)` -/
def P15461359217554465432.Spec : Prop :=
  ∀ n, P15461359217554465432.a n = A081914 n

end A081914

/-!
# A081915: a(n) = 4^n*(n^3 - 3*n^2 + 2*n + 384)/384.

The programs for A081915, the canonical program `A081915.P17733529924248722301` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081915 has offset 0).

The definition of A081915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081915.P8647355080315820846

`4^n*(n^3-3*n²+2*n+384)/384`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081915.P8647355080315820846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (2 * n : ℤ) + 384 : ℚ) / 384)

end

end A081915.P8647355080315820846

namespace A081915

/-- `4^n*(n^3-3*n²+2*n+384)/384` -/
def P8647355080315820846.Spec : Prop :=
  ∀ n, P8647355080315820846.a n = (A081915 n : ℚ)

end A081915

/-! ## A081915.P17733529924248722301

`16*a(n-1)-96*a(n-2)+256*a(n-3)-256*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=65`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081915

/-- `16*a(n-1)-96*a(n-2)+256*a(n-3)-256*a(n-4)` -/
def P17733529924248722301.Spec : Prop :=
  ∀ n, P17733529924248722301.a n = A081915 n

theorem P17733529924248722301.correct : P17733529924248722301.Spec := by
  intro n
  simp only [A081915]

end A081915

/-!
# A081916: a(n) = 5^n*(n^3 - 3*n^2 + 2*n + 750)/750.

The programs for A081916, the canonical program `A081916.P5288623624610463152` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081916 has offset 0).

The definition of A081916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081916.P3518107002630771377

`5^n*(n^3-3*n²+2*n+750)/750`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081916.P3518107002630771377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) * (((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (2 * n : ℤ) + 750 : ℚ) / 750)

end

end A081916.P3518107002630771377

namespace A081916

/-- `5^n*(n^3-3*n²+2*n+750)/750` -/
def P3518107002630771377.Spec : Prop :=
  ∀ n, P3518107002630771377.a n = (A081916 n : ℚ)

end A081916

/-! ## A081916.P5288623624610463152

`20*a(n-1)-150*a(n-2)+500*a(n-3)-625*a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=126`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081916

/-- `20*a(n-1)-150*a(n-2)+500*a(n-3)-625*a(n-4)` -/
def P5288623624610463152.Spec : Prop :=
  ∀ n, P5288623624610463152.a n = A081916 n

theorem P5288623624610463152.correct : P5288623624610463152.Spec := by
  intro n
  simp only [A081916]

end A081916

/-! ## A081916.P3356738733557548834

`5^n+5^(n-3)*C(n, 3)`
-/

namespace A081916.P3356738733557548834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) + (5 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.choose n 3 : ℚ)

end

end A081916.P3356738733557548834

namespace A081916

/-- `5^n+5^(n-3)*C(n, 3)` -/
def P3356738733557548834.Spec : Prop :=
  ∀ n, P3356738733557548834.a n = (A081916 n : ℚ)

end A081916

/-! ## A081916.P15645089297599182236

`A081143(n)+5^n`
-/

namespace A081916.P15645089297599182236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081143 n + (5 ^ n : ℤ)

end

end A081916.P15645089297599182236

namespace A081916

/-- `A081143(n)+5^n` -/
def P15645089297599182236.Spec : Prop :=
  ∀ n, P15645089297599182236.a n = A081916 n

end A081916

/-! ## A081916.P18091334720404580141

`A098615(2*n+1)+A081143(n)`
-/

namespace A081916.P18091334720404580141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 (2 * n + 1) + A081143 n

end

end A081916.P18091334720404580141

namespace A081916

/-- `A098615(2*n+1)+A081143(n)` -/
def P18091334720404580141.Spec : Prop :=
  ∀ n, P18091334720404580141.a n = A081916 n

end A081916

/-! ## A081916.P11916836091278516491

`A000351(n)+A081143(n)%A001018(n)`
-/

namespace A081916.P11916836091278516491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + Int.tmod (A081143 n) (A001018 n)

end

end A081916.P11916836091278516491

namespace A081916

/-- `A000351(n)+A081143(n)%A001018(n)` -/
def P11916836091278516491.Spec : Prop :=
  ∀ n, P11916836091278516491.a n = A081916 n

end A081916

/-! ## A081916.P8153967075385042939

`A191702(A000124(n))+A081143(n)`
-/

namespace A081916.P8153967075385042939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (A000124 n).toNat + A081143 n

end

end A081916.P8153967075385042939

namespace A081916

/-- `A191702(A000124(n))+A081143(n)` -/
def P8153967075385042939.Spec : Prop :=
  ∀ n, P8153967075385042939.a n = A081916 n

end A081916

/-! ## A081916.P4842613721514447066

`(A081143(n)+A000351(n))%A223234(n+1)`
-/

namespace A081916.P4842613721514447066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081143 n + A000351 n) (A223234 (n + 1))

end

end A081916.P4842613721514447066

namespace A081916

/-- `(A081143(n)+A000351(n))%A223234(n+1)` -/
def P4842613721514447066.Spec : Prop :=
  ∀ n, P4842613721514447066.a n = A081916 n

end A081916

/-! ## A081916.P2708372717410106024

`(A081143(n)+A000351(n))%A248834(n)`
-/

namespace A081916.P2708372717410106024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081143 n + A000351 n) (A248834 n)

end

end A081916.P2708372717410106024

namespace A081916

/-- `(A081143(n)+A000351(n))%A248834(n)` -/
def P2708372717410106024.Spec : Prop :=
  ∀ n, P2708372717410106024.a n = A081916 n

end A081916

/-! ## A081916.P49557003971766647

`A218016(∑[n])+A081143(n)`
-/

namespace A081916.P49557003971766647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (∑ j ∈ Finset.range (n + 1), f1 j) + A081143 n

end

end A081916.P49557003971766647

namespace A081916

/-- `A218016(∑[n])+A081143(n)` -/
def P49557003971766647.Spec : Prop :=
  ∀ n, P49557003971766647.a n = A081916 n

end A081916

/-!
# A081917: a(0)=1, a(n)= n^(n-2)(7n^2-3n+2)/6 (n>0).

The programs for A081917, there is no canonical definition to state claims against.
-/

/-! ## A081917.P14650631396727892333

`A090105(A302583(n)+1)`
-/

namespace A081917.P14650631396727892333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090105 (A302583 n + 1).toNat

end

end A081917.P14650631396727892333

/-! ## A081917.P17981235855908262948

`A185390(n)+A011371(A302583(n))`
-/

namespace A081917.P17981235855908262948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185390 n + A011371 (A302583 n).toNat

end

end A081917.P17981235855908262948

/-!
# A081918: a(0) = 1; a(n) = n^(n-1)(3n-1)/2 (n>0).

The programs for A081918, there is no canonical definition to state claims against.
-/

/-! ## A081918.P5898743692744649562

`n^n+n^abs(2-n)*C(n, 2)`
-/

namespace A081918.P5898743692744649562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) + (n : ℚ) ^ (|2 - (n : ℤ)| : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081918.P5898743692744649562

/-! ## A081918.P16154945529841061122

`A081131(n)+n^n`
-/

namespace A081918.P16154945529841061122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081131 n + (n ^ n : ℤ)

end

end A081918.P16154945529841061122

/-! ## A081918.P11764709281569300277

`A000272(n)*A104572(A133263(n))`
-/

namespace A081918.P11764709281569300277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A104572 (A133263 n).toNat

end

end A081918.P11764709281569300277

/-! ## A081918.P2728355351377174238

`A000272(n)*A305962(A167614(n+1))`
-/

namespace A081918.P2728355351377174238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A305962 (A167614 (n + 1)).toNat

end

end A081918.P2728355351377174238

/-! ## A081918.P520326894391437603

`A000007(n)+A000272(n)*A000326(n)`
-/

namespace A081918.P520326894391437603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A000272 n * A000326 n

end

end A081918.P520326894391437603

/-! ## A081918.P10904204573825510838

`A000272(n)*A000326(A004277(n)-n)`
-/

namespace A081918.P10904204573825510838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A000326 (A004277 n - (n : ℤ)).toNat

end

end A081918.P10904204573825510838

/-!
# A081919: E.g.f.: exp(x)/sqrt(1-x^2).

The programs for A081919, there is no canonical definition to state claims against.
-/

/-! ## A081919.P14525237100426581330

`Δ[A291482(n)]`
-/

namespace A081919.P14525237100426581330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081919.P14525237100426581330

/-! ## A081919.P2171843104382526789

`A291482(n+1)-A291482(n)`
-/

namespace A081919.P2171843104382526789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291482 (n + 1) - A291482 n

end

end A081919.P2171843104382526789

/-! ## A081919.P13295342215136648606

`A341850(∑[n+2]+3)`
-/

namespace A081919.P13295342215136648606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A081919.P13295342215136648606

/-! ## A081919.P1592819162280290885

`A341850(A141214(n))%A052898(n)`
-/

namespace A081919.P1592819162280290885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341850 (A141214 n).toNat) (A052898 n)

end

end A081919.P1592819162280290885

/-! ## A081919.P12702813435359174753

`gcd(A151933(n), A341850(A141214(n)))`
-/

namespace A081919.P12702813435359174753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A341850 (A141214 n).toNat)

end

end A081919.P12702813435359174753

/-!
# A081920: Expansion of exp(2x)/sqrt(1-x^2).

The programs for A081920, there is no canonical definition to state claims against.
-/

/-! ## A081920.P13288052779818710100

`A250484(∑[4*n])+n`
-/

namespace A081920.P13288052779818710100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250484 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A081920.P13288052779818710100

/-! ## A081920.P4452952278474767995

`A318577(2^(n+1))+n`
-/

namespace A081920.P4452952278474767995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (2 ^ (n + 1)) + (n : ℤ)

end

end A081920.P4452952278474767995

/-!
# A081921: Expansion of exp(3x)/sqrt(1-x^2).

The programs for A081921, there is no canonical definition to state claims against.
-/

/-! ## A081921.P7282979819784996590

`A328425(n+2)+A328384(A328419(n+3))`
-/

namespace A081921.P7282979819784996590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328425 (n + 2) + A328384 (A328419 (n + 3)).toNat

end

end A081921.P7282979819784996590

/-! ## A081921.P6823724826090427836

`A379979(A279557(n+1))`
-/

namespace A081921.P6823724826090427836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379979 (A279557 (n + 1)).toNat

end

end A081921.P6823724826090427836

/-!
# A081922: Expansion of exp(4x)/sqrt(1-x^2).

The programs for A081922, there is no canonical definition to state claims against.
-/

/-! ## A081922.P15747298563275610802

`A084132(n)+A001222(A000312(n+1))`
-/

namespace A081922.P15747298563275610802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084132 n + A001222 (A000312 (n + 1)).toNat

end

end A081922.P15747298563275610802

/-! ## A081922.P17090354716862344235

`A002265(A096045(n)+A081085(n)+3)`
-/

namespace A081922.P17090354716862344235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A096045 n + A081085 n + 3).toNat

end

end A081922.P17090354716862344235

/-!
# A081923: Expansion of e.g.f.: exp(2x)/(1-x)^2.

The programs for A081923, there is no canonical definition to state claims against.
-/

/-! ## A081923.P11098981001692510917

`(n+3)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A081923.P11098981001692510917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - 2 * (((n : ℤ) - 1) * a (n - 2))

end

end A081923.P11098981001692510917

/-! ## A081923.P17778716549535534743

`A010842(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A081923.P17778716549535534743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010842 n + (n : ℤ) * a (n - 1)

end

end A081923.P17778716549535534743

/-! ## A081923.P14501456479834512593

`A082029(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A081923.P14501456479834512593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082029 n - (n : ℤ) * a (n - 1)

end

end A081923.P14501456479834512593

/-! ## A081923.P16755142833199434019

`A066534(n)+2^n+a(n-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A081923.P16755142833199434019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A066534 n : ℝ) + ((2 ^ n : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ)))

end

end A081923.P16755142833199434019

/-! ## A081923.P17512363348812901343

`Δ[A010842(n)]-A010842(n)`
-/

namespace A081923.P17512363348812901343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010842 n

end

end A081923.P17512363348812901343

/-! ## A081923.P13266507172871171503

`Δ[A066534(n)]-A066534(n)`
-/

namespace A081923.P13266507172871171503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A066534 n

end

end A081923.P13266507172871171503

/-! ## A081923.P12156021862772844437

`Δ[Δ[A295518(n)]-A295518(n)]`
-/

namespace A081923.P12156021862772844437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A295518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081923.P12156021862772844437

/-! ## A081923.P17917766042908894685

`A010842(n+1)-2*A010842(n)`
-/

namespace A081923.P17917766042908894685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 (n + 1) - 2 * A010842 n

end

end A081923.P17917766042908894685

/-! ## A081923.P12203059623641671682

`A066534(n+1)-2*A066534(n)`
-/

namespace A081923.P12203059623641671682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066534 (n + 1) - 2 * A066534 n

end

end A081923.P12203059623641671682

/-!
# A081924: E.g.f.: exp(3*x)/(1-x)^2.

The programs for A081924, there is no canonical definition to state claims against.
-/

/-! ## A081924.P4635107983897886150

`A053486(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A081924.P4635107983897886150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053486 n + (n : ℤ) * a (n - 1)

end

end A081924.P4635107983897886150

/-! ## A081924.P6650853272934901447

`A348312(n)+3^n+n*a(n-1)` with `a(0)=1`
-/

namespace A081924.P6650853272934901447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348312 n + ((3 ^ n : ℤ) + (n : ℤ) * a (n - 1))

end

end A081924.P6650853272934901447

/-! ## A081924.P15621269169180308342

`Δ[A295519(n)]+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A081924.P15621269169180308342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295519 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) - f1 n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A081924.P15621269169180308342

/-! ## A081924.P6679344114589453854

`Δ[A053486(n)]-2*A053486(n)`
-/

namespace A081924.P6679344114589453854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A053486 n

end

end A081924.P6679344114589453854

/-! ## A081924.P9622825438164179552

`A348312(n)+A024023(n)+n*a(n-1)+1` with `a(0)=1`
-/

namespace A081924.P9622825438164179552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348312 n + (A024023 n + ((n : ℤ) * a (n - 1) + 1))

end

end A081924.P9622825438164179552

/-!
# A081925: Ordered even short legs of primitive Pythagorean triangles.

The programs for A081925, there is no canonical definition to state claims against.
-/

/-! ## A081925.P1238712316165188143

`filter[A020884(n+1), A011765(#)]`
-/

namespace A081925.P1238712316165188143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A081925.P1238712316165188143

/-! ## A081925.P18197585935694358988

`filter[A020884(n+1), A059841(#)]`
-/

namespace A081925.P18197585935694358988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A081925.P18197585935694358988

/-! ## A081925.P5006191492110540371

`filter[A020884(n+1), A108357(#)]`
-/

namespace A081925.P5006191492110540371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A081925.P5006191492110540371

/-! ## A081925.P2199047242778845319

`filter[A020884(n+1), A121262(#)]`
-/

namespace A081925.P2199047242778845319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A081925.P2199047242778845319

/-! ## A081925.P9462608589838236091

`filter[A020884(n+1), A135528(#)]`
-/

namespace A081925.P9462608589838236091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A081925.P9462608589838236091

/-! ## A081925.P9249416719855000059

`filter[A020884(n+1), A266591(#)]`
-/

namespace A081925.P9249416719855000059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A081925.P9249416719855000059

/-! ## A081925.P12923056242861068378

`filter[A020884(n+1), A267043(#)]`
-/

namespace A081925.P12923056242861068378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A081925.P12923056242861068378

/-! ## A081925.P2775671991983819891

`filter[A020884(n+1), A354097(#)]`
-/

namespace A081925.P2775671991983819891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A081925.P2775671991983819891

/-! ## A081925.P10481347455478016994

`A020884(lt[A020884(n+1)%2, 1]+1)`
-/

namespace A081925.P10481347455478016994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020884 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A081925.P10481347455478016994

/-! ## A081925.P15394939102315055738

`A020884(eq[2, gcd(2, A020884(n+1))]+1)`
-/

namespace A081925.P15394939102315055738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A020884 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A081925.P15394939102315055738

/-! ## A081925.P12013047236946240067

`A020884(eq[1, (A020884(n+1)+1)%4]+1)`
-/

namespace A081925.P12013047236946240067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020884 (n + 1) + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081925.P12013047236946240067

/-! ## A081925.P5035295111894523368

`filter[A263728(3*n+1), A011765(#)]`
-/

namespace A081925.P5035295111894523368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A081925.P5035295111894523368

/-! ## A081925.P695688559678256911

`filter[A263728(3*n+1), A059841(#)]`
-/

namespace A081925.P695688559678256911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A081925.P695688559678256911

/-! ## A081925.P10301167725550170169

`filter[A263728(3*n+1), A108357(#)]`
-/

namespace A081925.P10301167725550170169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A081925.P10301167725550170169

/-! ## A081925.P17325852888254549126

`filter[A263728(3*n+1), A121262(#)]`
-/

namespace A081925.P17325852888254549126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A081925.P17325852888254549126

/-! ## A081925.P1022448882738878594

`filter[A263728(3*n+1), A135528(#)]`
-/

namespace A081925.P1022448882738878594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A081925.P1022448882738878594

/-! ## A081925.P5283484609704990856

`filter[A263728(3*n+1), A266591(#)]`
-/

namespace A081925.P5283484609704990856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A081925.P5283484609704990856

/-! ## A081925.P15859132690057672474

`A020884(eq[1, A156678(n+1)%2]+1)`
-/

namespace A081925.P15859132690057672474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156678 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081925.P15859132690057672474

/-!
# A081926: Triangle read by rows in which n-th row gives n smallest numbers with digit sum n.

The programs for A081926, there is no canonical definition to state claims against.
-/

/-! ## A081926.P17377178132961774519

`A275536(A048645(n+1))`
-/

namespace A081926.P17377178132961774519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A048645 (n + 1)).toNat

end

end A081926.P17377178132961774519

/-! ## A081926.P7154177555843642505

`A368362(A067574(n+1))`
-/

namespace A081926.P7154177555843642505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368362 (A067574 (n + 1)).toNat

end

end A081926.P7154177555843642505

/-! ## A081926.P18270518804432200330

`A118759(A066686(n+1))-10`
-/

namespace A081926.P18270518804432200330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A066686 (n + 1)).toNat - 10

end

end A081926.P18270518804432200330

/-! ## A081926.P2489601286584324148

`A318927(A043569(n+1))-10`
-/

namespace A081926.P2489601286584324148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318927 (A043569 (n + 1)).toNat - 10

end

end A081926.P2489601286584324148

/-! ## A081926.P10063710443430655907

`A066686(n+1)-A040021(A000132(3*n+2))`
-/

namespace A081926.P10063710443430655907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 (n + 1) - A040021 (A000132 (3 * n + 2)).toNat

end

end A081926.P10063710443430655907

/-!
# A081927: n-th positive integer whose digits sum up to n.

The programs for A081927, there is no canonical definition to state claims against.
-/

/-! ## A081927.P429079970072617787

`A081926(∑[n+1])`
-/

namespace A081927.P429079970072617787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081927.P429079970072617787

/-! ## A081927.P14907749111126290215

`lcm((-1)^n, A081926(A133263(n+1)-2))`
-/

namespace A081927.P14907749111126290215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A081926 (A133263 (n + 1) - 2).toNat)

end

end A081927.P14907749111126290215

/-! ## A081927.P13545609190961672254

`(A000027(n+1)-n)*A081926(A133263(n+1)-2)`
-/

namespace A081927.P13545609190961672254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A081926 (A133263 (n + 1) - 2).toNat

end

end A081927.P13545609190961672254

/-! ## A081927.P7558196201293274619

`A081926(A000217(n+1))/A047140(A000217(n))`
-/

namespace A081927.P7558196201293274619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081926 (A000217 (n + 1)).toNat : ℚ) / (A047140 (A000217 n).toNat : ℚ)

end

end A081927.P7558196201293274619

/-! ## A081927.P6991313726370296898

`A081926(A133263(n+1)-2)+A004198(A057944(n))`
-/

namespace A081927.P6991313726370296898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081926 (A133263 (n + 1) - 2).toNat + A004198 (A057944 n).toNat

end

end A081927.P6991313726370296898

/-! ## A081927.P18431207686393344159

`A000120(A001316(n))*A081926(A133263(n+1)-2)`
-/

namespace A081927.P18431207686393344159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A081926 (A133263 (n + 1) - 2).toNat

end

end A081927.P18431207686393344159

/-! ## A081927.P2461695285334100373

`A001055(A006530(n+1))*A081926(A133263(n+1)-2)`
-/

namespace A081927.P2461695285334100373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A006530 (n + 1)).toNat * A081926 (A133263 (n + 1) - 2).toNat

end

end A081927.P2461695285334100373

/-! ## A081927.P12958596749522829367

`A081926(A133263(n+1)-2)^A000120(A001316(n+1))`
-/

namespace A081927.P12958596749522829367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081926 (A133263 (n + 1) - 2).toNat : ℚ) ^ (A000120 (A001316 (n + 1)).toNat : ℤ)

end

end A081927.P12958596749522829367

/-! ## A081927.P11756125766662244264

`A047140(A000217(2*n))*A081926(A000217(n+1))`
-/

namespace A081927.P11756125766662244264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A000217 (2 * n)).toNat * A081926 (A000217 (n + 1)).toNat

end

end A081927.P11756125766662244264

/-!
# A081928: Sum of the n smallest numbers having the sum of their digits equal to n.

The programs for A081928, there is no canonical definition to state claims against.
-/

/-! ## A081928.P5361244149220675206

`∑[A111900(A153773(n+1))+A017401(n)]`
-/

namespace A081928.P5361244149220675206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A153773 (n + 1)).toNat + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081928.P5361244149220675206

/-! ## A081928.P13466641509633401581

`∑[lt[lcm(11, n+10)/11, 10]]`
-/

namespace A081928.P13466641509633401581
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (n + 10) : ℚ) / 11

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081928.P13466641509633401581

/-! ## A081928.P11494450476229844354

`∑[eq[11*floor(n/10)-n, -1]]`
-/

namespace A081928.P11494450476229844354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081928.P11494450476229844354

/-! ## A081928.P146584346160601285

`∑[lt[A073731(n), 10]]`
-/

namespace A081928.P146584346160601285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081928.P146584346160601285

/-! ## A081928.P1314996115075494370

`∑[A332795(2*n+1)+n]`
-/

namespace A081928.P1314996115075494370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332795 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081928.P1314996115075494370

/-!
# A081930: Triangle read by rows in which row n gives n smallest palindromic numbers of n digits each.

The programs for A081930, there is no canonical definition to state claims against.
-/

/-! ## A081930.P597173213355177100

`A265561(A071241(n)+n)`
-/

namespace A081930.P597173213355177100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265561 (A071241 n + (n : ℤ)).toNat

end

end A081930.P597173213355177100

/-! ## A081930.P4826392576801847028

`record[A265512(n*A011736(A268581(n)))]`
-/

namespace A081930.P4826392576801847028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 ((n : ℤ) * A011736 (A268581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081930.P4826392576801847028

/-! ## A081930.P7270955960683519979

`record[A265512(A262038(n+3)+A006995(n+1))]`
-/

namespace A081930.P7270955960683519979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 (A262038 (n + 3) + A006995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081930.P7270955960683519979

/-! ## A081930.P7457400623713383630

`record[A262038(A262038(2*n)-A235049(2*n+1))]`
-/

namespace A081930.P7457400623713383630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A262038 (2 * n) - A235049 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081930.P7457400623713383630

/-!
# A081931: Diagonal of triangle in A081930.

The programs for A081931, there is no canonical definition to state claims against.
-/

/-! ## A081931.P17043339579180517342

`A081930(∑[n+1])`
-/

namespace A081931.P17043339579180517342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081931.P17043339579180517342

/-! ## A081931.P10474250284226802374

`record[A081930(n+1)*A115713(n)]`
-/

namespace A081931.P10474250284226802374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081930 (n + 1) * A115713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081931.P10474250284226802374

/-!
# A081933: a(1) = 1, a(n) is the smallest number coprime to n and beginning with a(n-1).

The programs for A081933, there is no canonical definition to state claims against.
-/

/-! ## A081933.P14521428100636865684

`A261299(n)+A085974(n!)`
-/

namespace A081933.P14521428100636865684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261299 n + A085974 (Nat.factorial n)

end

end A081933.P14521428100636865684

/-! ## A081933.P12839807054193379397

`or(5*a(n-1)*A020639((n+1)!), A322182(n+1))` with `a(0)=1`
-/

namespace A081933.P12839807054193379397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (5 * (a (n - 1) * A020639 (Nat.factorial (n + 1)))) (A322182 (n + 1))

end

end A081933.P12839807054193379397

/-! ## A081933.P16465372118555985614

`A261299(n)+A100910(A033453(n))`
-/

namespace A081933.P16465372118555985614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261299 n + A100910 (A033453 n).toNat

end

end A081933.P16465372118555985614

/-! ## A081933.P15485895078453696458

`or(A001222(A279695(n)), A261299(n))`
-/

namespace A081933.P15485895078453696458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A279695 n).toNat) (A261299 n)

end

end A081933.P15485895078453696458

/-!
# A081934: Ordered odd long legs of primitive Pythagorean triangles.

The programs for A081934, there is no canonical definition to state claims against.
-/

/-! ## A081934.P9313143859528940495

`filter[A020883(n+1), A039982(#)]`
-/

namespace A081934.P9313143859528940495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A081934.P9313143859528940495

/-! ## A081934.P8180782221628609252

`filter[A020883(n+1), A098725(#)]`
-/

namespace A081934.P8180782221628609252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A081934.P8180782221628609252

/-! ## A081934.P9357767892603060830

`filter[A020883(n+1), A166486(#)]`
-/

namespace A081934.P9357767892603060830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A081934.P9357767892603060830

/-! ## A081934.P13740152400045556668

`A020883(eq[1, and(1, A020883(n+1))]+1)`
-/

namespace A081934.P13740152400045556668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020883 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081934.P13740152400045556668

/-! ## A081934.P7808856280426721478

`filter[A020883(n+1), A000035(#)]`
-/

namespace A081934.P7808856280426721478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A081934.P7808856280426721478

/-! ## A081934.P12188489012100521247

`filter[A020883(n+1), A266070(#)]`
-/

namespace A081934.P12188489012100521247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A081934.P12188489012100521247

/-! ## A081934.P9084998320475453278

`filter[A020883(n+1), A266611(#)]`
-/

namespace A081934.P9084998320475453278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A081934.P9084998320475453278

/-! ## A081934.P14092453558262543791

`filter[A020883(n+1), A266719(#)]`
-/

namespace A081934.P14092453558262543791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A081934.P14092453558262543791

/-! ## A081934.P11245712985033169940

`filter[A020883(n+1), A272664(#)]`
-/

namespace A081934.P11245712985033169940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A081934.P11245712985033169940

/-! ## A081934.P11954707736120154753

`filter[A020883(n+1), A296066(#)]`
-/

namespace A081934.P11954707736120154753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A081934.P11954707736120154753

/-! ## A081934.P10664901756699280220

`filter[A020883(n+2), A266246(#)]`
-/

namespace A081934.P10664901756699280220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A081934.P10664901756699280220

/-! ## A081934.P9393771040519647280

`filter[A020883(n+2), A266444(#)]`
-/

namespace A081934.P9393771040519647280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A081934.P9393771040519647280

/-! ## A081934.P4762647594881030956

`filter[A020883(n+2), A266789(#)]`
-/

namespace A081934.P4762647594881030956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A081934.P4762647594881030956

/-! ## A081934.P5348371293527676450

`filter[A020883(n+2), A267155(#)]`
-/

namespace A081934.P5348371293527676450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A081934.P5348371293527676450

/-! ## A081934.P3431311663339179655

`filter[A020883(n+2), A267256(#)]`
-/

namespace A081934.P3431311663339179655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A081934.P3431311663339179655

/-!
# A081935: Ordered even long legs of primitive Pythagorean triangles.

The programs for A081935, there is no canonical definition to state claims against.
-/

/-! ## A081935.P1204820901713949626

`filter[A020883(n+1), A121262(#)]`
-/

namespace A081935.P1204820901713949626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A081935.P1204820901713949626

/-! ## A081935.P4335206642445690917

`A020883(lt[A020883(n+1)%2, 1]+1)`
-/

namespace A081935.P4335206642445690917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020883 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A081935.P4335206642445690917

/-! ## A081935.P3712152380874258219

`A020883(eq[0, and(1, A020883(n+1))]+1)`
-/

namespace A081935.P3712152380874258219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020883 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081935.P3712152380874258219

/-! ## A081935.P9455947944570921850

`filter[A020883(n+1), A011765(#)]`
-/

namespace A081935.P9455947944570921850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A081935.P9455947944570921850

/-! ## A081935.P219409238444920856

`filter[A020883(n+1), A059841(#)]`
-/

namespace A081935.P219409238444920856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A081935.P219409238444920856

/-! ## A081935.P8225428802601604748

`filter[A020883(n+1), A108357(#)]`
-/

namespace A081935.P8225428802601604748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A081935.P8225428802601604748

/-! ## A081935.P9166052826757021197

`filter[A020883(n+1), A135528(#)]`
-/

namespace A081935.P9166052826757021197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A081935.P9166052826757021197

/-! ## A081935.P2464221595867210177

`filter[A020883(n+1), A266591(#)]`
-/

namespace A081935.P2464221595867210177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A081935.P2464221595867210177

/-! ## A081935.P13902786765449927784

`filter[A020883(n+1), A267043(#)]`
-/

namespace A081935.P13902786765449927784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A081935.P13902786765449927784

/-!
# A081936: Odd short legs of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081936, there is no canonical definition to state claims against.
-/

/-! ## A081936.P16708131336776128242

`filter[A081859(n+1), A039982(#)]`
-/

namespace A081936.P16708131336776128242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A081936.P16708131336776128242

/-! ## A081936.P18180626260608949470

`filter[A081859(n+1), A098725(#)]`
-/

namespace A081936.P18180626260608949470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A081936.P18180626260608949470

/-! ## A081936.P7502837783597403584

`filter[A081859(n+1), A166486(#)]`
-/

namespace A081936.P7502837783597403584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A081936.P7502837783597403584

/-! ## A081936.P2838068532380777981

`filter[A081859(n+1), A000035(#)]`
-/

namespace A081936.P2838068532380777981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A081936.P2838068532380777981

/-! ## A081936.P14592258361427856062

`filter[A081859(n+1), A266070(#)]`
-/

namespace A081936.P14592258361427856062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A081936.P14592258361427856062

/-! ## A081936.P8539693261225516556

`filter[A081859(n+1), A266719(#)]`
-/

namespace A081936.P8539693261225516556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A081936.P8539693261225516556

/-! ## A081936.P17633228316242580850

`filter[A081859(n+1), A267256(#)]`
-/

namespace A081936.P17633228316242580850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A081936.P17633228316242580850

/-! ## A081936.P17323726242134713100

`filter[A081859(n+1), A296066(#)]`
-/

namespace A081936.P17323726242134713100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A081936.P17323726242134713100

/-! ## A081936.P6530700657293295740

`filter[A081859(n+1), A179775(#)]`
-/

namespace A081936.P6530700657293295740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A081936.P6530700657293295740

/-! ## A081936.P6151223632669697158

`filter[A103606(3*n+1), A179775(#)]`
-/

namespace A081936.P6151223632669697158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A081936.P6151223632669697158

/-!
# A081937: Even long legs of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081937, there is no canonical definition to state claims against.
-/

/-! ## A081937.P16787751330091691535

`filter[A081872(n+1), A121262(#)]`
-/

namespace A081937.P16787751330091691535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A081937.P16787751330091691535

/-! ## A081937.P13128294177243700153

`filter[A081872(n+1), A011765(#)]`
-/

namespace A081937.P13128294177243700153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A081937.P13128294177243700153

/-! ## A081937.P3853117644293250465

`filter[A081872(n+1), A059841(#)]`
-/

namespace A081937.P3853117644293250465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A081937.P3853117644293250465

/-! ## A081937.P6396026059024355043

`filter[A081872(n+1), A108357(#)]`
-/

namespace A081937.P6396026059024355043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A081937.P6396026059024355043

/-! ## A081937.P18263876471123410800

`filter[A081872(n+1), A135528(#)]`
-/

namespace A081937.P18263876471123410800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A081937.P18263876471123410800

/-! ## A081937.P7467571201470172280

`filter[A081872(n+1), A266591(#)]`
-/

namespace A081937.P7467571201470172280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A081937.P7467571201470172280

/-! ## A081937.P281084320074300036

`filter[A081872(n+1), A267043(#)]`
-/

namespace A081937.P281084320074300036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A081937.P281084320074300036

/-!
# A081938: a(1) = 1, a(n) = smallest palindromic number > a(n-1) of the form k*a(n-1) - 1.

The programs for A081938, there is no canonical definition to state claims against.
-/

/-! ## A081938.P5596227351300294436

`record[A047813(A018157(n))]`
-/

namespace A081938.P5596227351300294436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A018157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081938.P5596227351300294436

/-! ## A081938.P15220876008767213962

`record[A239701(A144228(n))]`
-/

namespace A081938.P15220876008767213962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239701 (A144228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081938.P15220876008767213962

/-! ## A081938.P10070538814543288656

`filter[A018157(n), A136522(#)]`
-/

namespace A081938.P10070538814543288656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A081938.P10070538814543288656

/-!
# A081939: a(1) = 2; a(n+1) is the smallest palindrome > a(n) that has a common factor with a(n).

The programs for A081939, there is no canonical definition to state claims against.
-/

/-! ## A081939.P13761156979170498184

`A082615(n+1)-A025439(A171882(n))`
-/

namespace A081939.P13761156979170498184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082615 (n + 1) - A025439 (A171882 n).toNat

end

end A081939.P13761156979170498184

/-! ## A081939.P18035899627848149221

`A082615(n+1)%A226487(n+1)`
-/

namespace A081939.P18035899627848149221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082615 (n + 1)) (A226487 (n + 1))

end

end A081939.P18035899627848149221

/-! ## A081939.P9357095214256309154

`∩[A082615(n+1), A105427(n+1)]`
-/

namespace A081939.P9357095214256309154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081939.P9357095214256309154

/-! ## A081939.P726799022148743708

`∩[A082615(n+1), A373117(n+1)]`
-/

namespace A081939.P726799022148743708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081939.P726799022148743708

/-! ## A081939.P10865870473276187657

`A082615(n+1)^(A151909(∏{e}[n+1, 3*2^#])+1)`
-/

namespace A081939.P10865870473276187657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082615 (n + 1) : ℚ) ^ (A151909 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p) + 1 : ℤ)

end

end A081939.P10865870473276187657

/-!
# A081942: a(1) = 1, a(n) = smallest number greater than a(n-1) such that a(n-1)*a(n) + 1 is prime.

The programs for A081942, there is no canonical definition to state claims against.
-/

/-! ## A081942.P3535471981249603963

`A074846(a(n-1))` with `a(0)=1`
-/

namespace A081942.P3535471981249603963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074846 (a (n - 1)).toNat

end

end A081942.P3535471981249603963

/-! ## A081942.P5647467668806289657

`A082465(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A081942.P5647467668806289657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082465 (a (n - 1)).toNat + a (n - 1)

end

end A081942.P5647467668806289657

/-! ## A081942.P4582007715475596447

`A074846(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A081942.P4582007715475596447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074846 |a (A023443 n).toNat|.toNat

end

end A081942.P4582007715475596447

/-! ## A081942.P17866120512405164634

`A074846(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081942.P17866120512405164634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074846 (a (A023443 n).toNat).toNat

end

end A081942.P17866120512405164634

/-! ## A081942.P774517475852241570

`(A089726(a(n-1))-1)/a(n-1)` with `a(0)=1`
-/

namespace A081942.P774517475852241570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A089726 (SequenceMachineLib.roundAway (a (n - 1))).toNat - 1 : ℚ) / a (n - 1)

end

end A081942.P774517475852241570

/-!
# A081944: Numbers k such that both k*(k+1) - 1 and k*(k-1) - 1 are primes.

The programs for A081944, there is no canonical definition to state claims against.
-/

/-! ## A081944.P2705992101715002933

`A116214(n+1)+1`
-/

namespace A081944.P2705992101715002933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1) + 1

end

end A081944.P2705992101715002933

/-! ## A081944.P13758665603774430102

`A002328(eq[1, A002328(n+2)-A002328(n+1)]+1)`
-/

namespace A081944.P13758665603774430102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 2) - A002328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081944.P13758665603774430102

/-! ## A081944.P9973066822850959790

`A002328(eq[1, A002328(n+2)%A002328(n+1)]+1)`
-/

namespace A081944.P9973066822850959790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002328 (n + 2)) (A002328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081944.P9973066822850959790

/-! ## A081944.P14573228053866934160

`∩[A002328(n+1), A045546(n+1)]`
-/

namespace A081944.P14573228053866934160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081944.P14573228053866934160

/-! ## A081944.P2444806201353165513

`record[gcd(A002328(n+1), A045546(n+2))]`
-/

namespace A081944.P2444806201353165513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002328 (n + 1)) (A045546 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081944.P2444806201353165513

/-! ## A081944.P14013782546418489035

`∩[A002328(n+1), A094210(n+1)+1]`
-/

namespace A081944.P14013782546418489035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081944.P14013782546418489035

/-! ## A081944.P14037110861237263579

`∩[A045546(n+1), A094210(n+1)]+1`
-/

namespace A081944.P14037110861237263579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A081944.P14037110861237263579

/-! ## A081944.P808864601355981906

`∩[A002328(n+1), A076597(n+1)]-1`
-/

namespace A081944.P808864601355981906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A081944.P808864601355981906

/-! ## A081944.P2178292697228169308

`∩[A045546(n+2), A045546(n+1)+1]`
-/

namespace A081944.P2178292697228169308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081944.P2178292697228169308

/-! ## A081944.P16634870861486906805

`A002328(eq[1, A045546(n+2)/A002328(n+1)]+1)`
-/

namespace A081944.P16634870861486906805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045546 (n + 2) : ℚ) / (A002328 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A081944.P16634870861486906805

/-! ## A081944.P2365297196768631525

`A020725(A116214(n+1))`
-/

namespace A081944.P2365297196768631525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A116214 (n + 1)).toNat

end

end A081944.P2365297196768631525

/-! ## A081944.P6856693284898622838

`eq[A006530(A278247(n)), A278247(n+1)]+2`
-/

namespace A081944.P6856693284898622838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278247 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A081944.P6856693284898622838

/-! ## A081944.P17594969195754091220

`A023443(∩[A002328(n+1)+1, A002328(n+1)])`
-/

namespace A081944.P17594969195754091220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A081944.P17594969195754091220

/-! ## A081944.P8341252566984215593

`∩[A023444(A002328(n+1)+1), A002328(n+1)]`
-/

namespace A081944.P8341252566984215593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A002328 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081944.P8341252566984215593

/-! ## A081944.P14741699069111141994

`∩[A002328(n+1), A023445(A076597(n+1)+1)]`
-/

namespace A081944.P14741699069111141994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081944.P14741699069111141994

/-! ## A081944.P11577595946411692025

`∩[A023445(A002328(n+1)+2), A002328(n+1)]`
-/

namespace A081944.P11577595946411692025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A002328 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081944.P11577595946411692025

/-! ## A081944.P4819031424589242902

`A023444(∩[A089362(n+1)-1, A089362(n+1)])`
-/

namespace A081944.P4819031424589242902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A081944.P4819031424589242902

/-! ## A081944.P949321942575739256

`ceil(sqrt(A069826(n+1)))`
-/

namespace A081944.P949321942575739256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A069826 (n + 1) : ℝ)⌉

end

end A081944.P949321942575739256

/-!
# A081945: Numbers k such that both k*(k + 1) + 1 and k*(k - 1) + 1 are primes.

The programs for A081945, there is no canonical definition to state claims against.
-/

/-! ## A081945.P9739710148438782879

`∩[A055494(n+1), A096176(n+1)]`
-/

namespace A081945.P9739710148438782879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081945.P9739710148438782879

/-! ## A081945.P16679937544850125703

`record[A096176(n+1)%A089358(n+1)]`
-/

namespace A081945.P16679937544850125703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096176 (n + 1)) (A089358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081945.P16679937544850125703

/-! ## A081945.P9884651072307953951

`record[A002383(n+1)-A128815(n+1)²]`
-/

namespace A081945.P9884651072307953951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1) - A128815 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081945.P9884651072307953951

/-! ## A081945.P8860895102273997516

`∩[A002384(n+1), A055494(n+1)]`
-/

namespace A081945.P8860895102273997516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081945.P8860895102273997516

/-! ## A081945.P5342217733436001966

`record[A002384(n+2)%A089358(n+1)]`
-/

namespace A081945.P5342217733436001966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002384 (n + 2)) (A089358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081945.P5342217733436001966

/-! ## A081945.P13241008714736219844

`record[A088503(n+2)%A089358(n+1)]`
-/

namespace A081945.P13241008714736219844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088503 (n + 2)) (A089358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081945.P13241008714736219844

/-! ## A081945.P6511940446603002490

`record[gcd(A002384(n+2), A055494(n+1))]`
-/

namespace A081945.P6511940446603002490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002384 (n + 2)) (A055494 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081945.P6511940446603002490

/-! ## A081945.P4095460782710157580

`∩[A002384(n+1)+1, A002384(n+2)]`
-/

namespace A081945.P4095460782710157580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081945.P4095460782710157580

/-! ## A081945.P5974253751927309067

`A055494(eq[1, A002384(n+2)-A002384(n+1)]+1)`
-/

namespace A081945.P5974253751927309067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 2) - A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081945.P5974253751927309067

/-! ## A081945.P4788095738834336939

`A055494(eq[1, A055494(n+2)-A055494(n+1)]+1)`
-/

namespace A081945.P4788095738834336939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 2) - A055494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081945.P4788095738834336939

/-! ## A081945.P3617197729857899079

`A055494(eq[1, A002384(n+2)/A055494(n+1)]+1)`
-/

namespace A081945.P3617197729857899079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002384 (n + 2) : ℚ) / (A055494 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A081945.P3617197729857899079

/-! ## A081945.P2918156607814987437

`A023443(∩[A055494(n+1)+1, A055494(n+1)])`
-/

namespace A081945.P2918156607814987437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A081945.P2918156607814987437

/-! ## A081945.P15781674233467382588

`A023443(∩[A089358(n+1)-1, A089358(n+1)])`
-/

namespace A081945.P15781674233467382588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A081945.P15781674233467382588

/-!
# A081946: a(n) = Sum_{i=1..n} floor(r*floor(i/r)), where r=sqrt(2).

The programs for A081946, the canonical program `A081946.P1126091367602098836` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081946 has offset 1).

The definition of A081946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081946.P2458736296771901500

`∑[n]-floor((n+1)/(sqrt(2)+2))`
-/

namespace A081946.P2458736296771901500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 2)⌋

end

end A081946.P2458736296771901500

namespace A081946

/-- `∑[n]-floor((n+1)/(sqrt(2)+2))` -/
def P2458736296771901500.Spec : Prop :=
  ∀ n, P2458736296771901500.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P3337921827750502544

`∑[n-char[A001952(n+1)]]`
-/

namespace A081946.P3337921827750502544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P3337921827750502544

namespace A081946

/-- `∑[n-char[A001952(n+1)]]` -/
def P3337921827750502544.Spec : Prop :=
  ∀ n, P3337921827750502544.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P16457833021009745739

`∑[n-char[A003152(2*(n+1))]]`
-/

namespace A081946.P16457833021009745739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P16457833021009745739

namespace A081946

/-- `∑[n-char[A003152(2*(n+1))]]` -/
def P16457833021009745739.Spec : Prop :=
  ∀ n, P16457833021009745739.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P1126091367602098836

`∑[A001951(A049472(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081946

/-- `∑[A001951(A049472(n+1))]` -/
def P1126091367602098836.Spec : Prop :=
  ∀ n, P1126091367602098836.a n = A081946 (n + 1)

theorem P1126091367602098836.correct : P1126091367602098836.Spec := by
  intro n
  simp only [A081946, Nat.add_sub_cancel]

end A081946

/-! ## A081946.P6901630692877106796

`∑[A001951(∑[A188295(n+1)])]`
-/

namespace A081946.P6901630692877106796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P6901630692877106796

namespace A081946

/-- `∑[A001951(∑[A188295(n+1)])]` -/
def P6901630692877106796.Spec : Prop :=
  ∀ n, P6901630692877106796.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P18316604041858517825

`∑[A049472(2*A049472(n+1))]`
-/

namespace A081946.P18316604041858517825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * A049472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P18316604041858517825

namespace A081946

/-- `∑[A049472(2*A049472(n+1))]` -/
def P18316604041858517825.Spec : Prop :=
  ∀ n, P18316604041858517825.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P11526681534811377435

`∑[A001951(A004526(A001951(n+1)))]`
-/

namespace A081946.P11526681534811377435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A004526 (A001951 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P11526681534811377435

namespace A081946

/-- `∑[A001951(A004526(A001951(n+1)))]` -/
def P11526681534811377435.Spec : Prop :=
  ∀ n, P11526681534811377435.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P15295596753532466538

`∑[n-A285073(A003152(n+1))]`
-/

namespace A081946.P15295596753532466538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A285073 (A003152 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081946.P15295596753532466538

namespace A081946

/-- `∑[n-A285073(A003152(n+1))]` -/
def P15295596753532466538.Spec : Prop :=
  ∀ n, P15295596753532466538.a n = A081946 (n + 1)

end A081946

/-! ## A081946.P7676724427787640811

`record[A172471(n)*A194921(n+1)-n]`
-/

namespace A081946.P7676724427787640811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n * A194921 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081946.P7676724427787640811

namespace A081946

/-- `record[A172471(n)*A194921(n+1)-n]` -/
def P7676724427787640811.Spec : Prop :=
  ∀ n, P7676724427787640811.a n = A081946 (n + 1)

end A081946

/-!
# A081947: Smallest prime which is one more than the product of n distinct numbers.

The programs for A081947, there is no canonical definition to state claims against.
-/

/-! ## A081947.P11755499445011752898

`record[A080513(A123899(n))]`
-/

namespace A081947.P11755499445011752898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A123899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081947.P11755499445011752898

/-! ## A081947.P11274197804903556844

`A395746(A392617(n+1))`
-/

namespace A081947.P11274197804903556844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395746 (A392617 (n + 1)).toNat

end

end A081947.P11274197804903556844

/-!
# A081948: Smallest square which is one more than the product of n distinct numbers > 1.

The programs for A081948, there is no canonical definition to state claims against.
-/

/-! ## A081948.P1750352734573788753

`p?[A003064(∑[ceil(n/3)])]²`
-/

namespace A081948.P1750352734573788753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A081948.P1750352734573788753

/-! ## A081948.P17324615418003495513

`A130006(2^n)²`
-/

namespace A081948.P17324615418003495513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130006 (2 ^ n) ^ 2

end

end A081948.P17324615418003495513

/-!
# A081949: Smallest square which is one more than the product of n (not necessarily distinct) numbers > 1.

The programs for A081949, there is no canonical definition to state claims against.
-/

/-! ## A081949.P16938751079188519996

`A353842(A155850(n+1))²`
-/

namespace A081949.P16938751079188519996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353842 (A155850 (n + 1)).toNat ^ 2

end

end A081949.P16938751079188519996

/-! ## A081949.P10276905924203431965

`(A291811(A325875(n))+A056608(2*(n+1)))²`
-/

namespace A081949.P10276905924203431965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291811 (A325875 n).toNat + A056608 (2 * (n + 1))) ^ 2

end

end A081949.P10276905924203431965

/-!
# A081950: Smallest triangular number k such that k-1 has exactly n (not necessarily distinct) prime factors.

The programs for A081950, there is no canonical definition to state claims against.
-/

/-! ## A081950.P75501727120593984

`A000124(A229034(2*(n+1)))-1`
-/

namespace A081950.P75501727120593984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A229034 (2 * (n + 1))).toNat - 1

end

end A081950.P75501727120593984

/-! ## A081950.P16347049680431633622

`record[A348665(∑[A348629(2*n+3)])]`
-/

namespace A081950.P16347049680431633622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348629 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348665 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081950.P16347049680431633622

/-!
# A081951: Smallest triangular number which is one more than the product of n distinct numbers > 1.

The programs for A081951, there is no canonical definition to state claims against.
-/

/-! ## A081951.P14372347081793641716

`C(A194969(3*2^n+1)-1, 2)`
-/

namespace A081951.P14372347081793641716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194969 (3 * 2 ^ n + 1) - 1).toNat 2

end

end A081951.P14372347081793641716

/-!
# A081952: Smallest Fibonacci number which is one more than the product of n distinct numbers > 1.

The programs for A081952, there is no canonical definition to state claims against.
-/

/-! ## A081952.P10041155408426608721

`A000045(A119249(n+1))`
-/

namespace A081952.P10041155408426608721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A119249 (n + 1)).toNat

end

end A081952.P10041155408426608721

/-! ## A081952.P8058157307930289424

`A212804(A119249(n+1)+1)`
-/

namespace A081952.P8058157307930289424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A119249 (n + 1) + 1).toNat

end

end A081952.P8058157307930289424

/-! ## A081952.P18379251386829810992

`A324969(A119249(n+1)+1)`
-/

namespace A081952.P18379251386829810992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A119249 (n + 1) + 1).toNat

end

end A081952.P18379251386829810992

/-! ## A081952.P410075541048947976

`A053602(2*A119249(n+1))`
-/

namespace A081952.P410075541048947976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A119249 (n + 1)).toNat

end

end A081952.P410075541048947976

/-! ## A081952.P16291800871538481524

`A103609(2*A119249(n+1))`
-/

namespace A081952.P16291800871538481524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A119249 (n + 1)).toNat

end

end A081952.P16291800871538481524

/-!
# A081953: Smallest Fibonacci number equal one plus the product of n (not necessarily distinct) integers > 1.

The programs for A081953, there is no canonical definition to state claims against.
-/

/-! ## A081953.P8762876653636148421

`∏{p}[A020701(A136484(n)), #]`
-/

namespace A081953.P8762876653636148421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (A136484 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A081953.P8762876653636148421

/-! ## A081953.P15029847075146424105

`A020701(eq[A054336(n), A070939(n)])`
-/

namespace A081953.P15029847075146424105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081953.P15029847075146424105

/-!
# A081954: Triangle read by rows: T(n, k) = 2^(n-k)*3^k, n >= 1, 0 <= k < n.

The programs for A081954, the canonical program `A081954.P14656292219438426636` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081954 has offset 1).

The definition of A081954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081954.P1270836982297970287

`A094615(n)+1`
-/

namespace A081954.P1270836982297970287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094615 n + 1

end

end A081954.P1270836982297970287

namespace A081954

/-- `A094615(n)+1` -/
def P1270836982297970287.Spec : Prop :=
  ∀ n, P1270836982297970287.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P14656292219438426636

`2*A036561(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A081954

/-- `2*A036561(n)` -/
def P14656292219438426636.Spec : Prop :=
  ∀ n, P14656292219438426636.a n = A081954 (n + 1)

theorem P14656292219438426636.correct : P14656292219438426636.Spec := by
  intro n
  simp only [A081954, Nat.add_sub_cancel]

end A081954

/-! ## A081954.P8492301163231967346

`2*(A230445(n)+1)`
-/

namespace A081954.P8492301163231967346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A230445 n + 1)

end

end A081954.P8492301163231967346

namespace A081954

/-- `2*(A230445(n)+1)` -/
def P8492301163231967346.Spec : Prop :=
  ∀ n, P8492301163231967346.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P14710030265009456189

`A036561(comp[∑[n-1]])`
-/

namespace A081954.P14710030265009456189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A081954.P14710030265009456189

namespace A081954

/-- `A036561(comp[∑[n-1]])` -/
def P14710030265009456189.Spec : Prop :=
  ∀ n, P14710030265009456189.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P7055250845844512640

`2*(A094617(n+1)-1)`
-/

namespace A081954.P7055250845844512640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094617 (n + 1) - 1)

end

end A081954.P7055250845844512640

namespace A081954

/-- `2*(A094617(n+1)-1)` -/
def P7055250845844512640.Spec : Prop :=
  ∀ n, P7055250845844512640.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P14619721459687520373

`A230445(n)+A094617(n+1)`
-/

namespace A081954.P14619721459687520373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + A094617 (n + 1)

end

end A081954.P14619721459687520373

namespace A081954

/-- `A230445(n)+A094617(n+1)` -/
def P14619721459687520373.Spec : Prop :=
  ∀ n, P14619721459687520373.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P15402830723050902422

`2*A013620(n)/A007318(n)`
-/

namespace A081954.P15402830723050902422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A013620 n : ℚ) / (A007318 n : ℚ)

end

end A081954.P15402830723050902422

namespace A081954

/-- `2*A013620(n)/A007318(n)` -/
def P15402830723050902422.Spec : Prop :=
  ∀ n, P15402830723050902422.a n = (A081954 (n + 1) : ℚ)

end A081954

/-! ## A081954.P9161269309480824999

`lcm(A036561(n), A090988(n+1))`
-/

namespace A081954.P9161269309480824999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036561 n) (A090988 (n + 1))

end

end A081954.P9161269309480824999

namespace A081954

/-- `lcm(A036561(n), A090988(n+1))` -/
def P9161269309480824999.Spec : Prop :=
  ∀ n, (P9161269309480824999.a n : ℤ) = A081954 (n + 1)

end A081954

/-! ## A081954.P18420602436904275633

`2*A175840(A061579(n))`
-/

namespace A081954.P18420602436904275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175840 (A061579 n).toNat

end

end A081954.P18420602436904275633

namespace A081954

/-- `2*A175840(A061579(n))` -/
def P18420602436904275633.Spec : Prop :=
  ∀ n, P18420602436904275633.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P14447268425067650488

`A094617(comp[∑[n]])-1`
-/

namespace A081954.P14447268425067650488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A081954.P14447268425067650488

namespace A081954

/-- `A094617(comp[∑[n]])-1` -/
def P14447268425067650488.Spec : Prop :=
  ∀ n, P14447268425067650488.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P6528528326778341121

`2*A155118(comp[∑[n]])`
-/

namespace A081954.P6528528326778341121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A081954.P6528528326778341121

namespace A081954

/-- `2*A155118(comp[∑[n]])` -/
def P6528528326778341121.Spec : Prop :=
  ∀ n, P6528528326778341121.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P12025027461040702199

`A230445(A007401(n+1))+1`
-/

namespace A081954.P12025027461040702199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 (A007401 (n + 1)).toNat + 1

end

end A081954.P12025027461040702199

namespace A081954

/-- `A230445(A007401(n+1))+1` -/
def P12025027461040702199.Spec : Prop :=
  ∀ n, P12025027461040702199.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P9751228307553030364

`2*A153279(A014132(n+1))`
-/

namespace A081954.P9751228307553030364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153279 (A014132 (n + 1)).toNat

end

end A081954.P9751228307553030364

namespace A081954

/-- `2*A153279(A014132(n+1))` -/
def P9751228307553030364.Spec : Prop :=
  ∀ n, P9751228307553030364.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P4736305328864377844

`2*A038233(n)/A038207(n)`
-/

namespace A081954.P4736305328864377844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A038233 n : ℚ) / (A038207 n : ℚ)

end

end A081954.P4736305328864377844

namespace A081954

/-- `2*A038233(n)/A038207(n)` -/
def P4736305328864377844.Spec : Prop :=
  ∀ n, P4736305328864377844.a n = (A081954 (n + 1) : ℚ)

end A081954

/-! ## A081954.P5300681546214420342

`A007694(A247714(n)+1)`
-/

namespace A081954.P5300681546214420342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A247714 n + 1).toNat

end

end A081954.P5300681546214420342

namespace A081954

/-- `A007694(A247714(n)+1)` -/
def P5300681546214420342.Spec : Prop :=
  ∀ n, P5300681546214420342.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P6775349119484405992

`A036561(n)+A003586(A247714(n))`
-/

namespace A081954.P6775349119484405992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + A003586 (A247714 n).toNat

end

end A081954.P6775349119484405992

namespace A081954

/-- `A036561(n)+A003586(A247714(n))` -/
def P6775349119484405992.Spec : Prop :=
  ∀ n, P6775349119484405992.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P1510738095667023

`2*A286468(A043569(n+1))`
-/

namespace A081954.P1510738095667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286468 (A043569 (n + 1)).toNat

end

end A081954.P1510738095667023

namespace A081954

/-- `2*A286468(A043569(n+1))` -/
def P1510738095667023.Spec : Prop :=
  ∀ n, P1510738095667023.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P3493519611745775647

`A057335(A048645(n+1))`
-/

namespace A081954.P3493519611745775647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A048645 (n + 1)).toNat

end

end A081954.P3493519611745775647

namespace A081954

/-- `A057335(A048645(n+1))` -/
def P3493519611745775647.Spec : Prop :=
  ∀ n, P3493519611745775647.a n = A081954 (n + 1)

end A081954

/-! ## A081954.P8736090417870214723

`A057335(record[A126441(2*n)-n])`
-/

namespace A081954.P8736090417870214723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081954.P8736090417870214723

namespace A081954

/-- `A057335(record[A126441(2*n)-n])` -/
def P8736090417870214723.Spec : Prop :=
  ∀ n, P8736090417870214723.a n = A081954 (n + 1)

end A081954

/-!
# A081955: a(n) = 2^r*3^s where r = n(n+1)/2 and s = n(n-1)/2.

The programs for A081955, the canonical program `A081955.P14746085685812751450` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081955 has offset 0).

The definition of A081955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081955.P14746085685812751450

`2^(n*(n+1)/2)*3^(n*(n-1)/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081955

/-- `2^(n*(n+1)/2)*3^(n*(n-1)/2)` -/
def P14746085685812751450.Spec : Prop :=
  ∀ n, P14746085685812751450.a n = (A081955 n : ℝ)

end A081955

/-! ## A081955.P1716517985203044489

`∏[6*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A081955.P1716517985203044489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081955.P1716517985203044489

namespace A081955

/-- `∏[6*a(n-1)]` -/
def P1716517985203044489.Spec : Prop :=
  ∀ n, (P1716517985203044489.a n : ℤ) = A081955 n

end A081955

/-! ## A081955.P15977093100510681480

`6^n*a(n-1)/3` with `a(0)=1`
-/

namespace A081955.P15977093100510681480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 ^ n : ℚ) * a (n - 1) / 3

end

end A081955.P15977093100510681480

namespace A081955

/-- `6^n*a(n-1)/3` -/
def P15977093100510681480.Spec : Prop :=
  ∀ n, P15977093100510681480.a n = (A081955 n : ℚ)

end A081955

/-! ## A081955.P6279561601784040377

`∏[A167747(n)]`
-/

namespace A081955.P6279561601784040377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081955.P6279561601784040377

namespace A081955

/-- `∏[A167747(n)]` -/
def P6279561601784040377.Spec : Prop :=
  ∀ n, P6279561601784040377.a n = A081955 n

end A081955

/-! ## A081955.P2491084883877784134

`sqrt(A067411(n))^n`
-/

namespace A081955.P2491084883877784134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067411 n : ℝ) ^ n

end

end A081955.P2491084883877784134

namespace A081955

/-- `sqrt(A067411(n))^n` -/
def P2491084883877784134.Spec : Prop :=
  ∀ n, P2491084883877784134.a n = (A081955 n : ℝ)

end A081955

/-!
# A081957: Triangle whose n-th row contains the n smallest numbers that are products of n distinct integers > 1, read by rows.

The programs for A081957, there is no canonical definition to state claims against.
-/

/-! ## A081957.P6337842609450588475

`A329605(A080742(n)%A062622(n+1))`
-/

namespace A081957.P6337842609450588475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (Int.tmod (A080742 n) (A062622 (n + 1))).toNat

end

end A081957.P6337842609450588475

/-! ## A081957.P13136145669593477899

`∩[A055471(n+1), record[A074400(n+1)]]`
-/

namespace A081957.P13136145669593477899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081957.P13136145669593477899

/-! ## A081957.P9276547535046923464

`∩[record[A074400(n+1)], A218980(n+1)]`
-/

namespace A081957.P9276547535046923464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A081957.P9276547535046923464

/-! ## A081957.P4975794007746919388

`A354768(lt[A000720(n+1), A061313(n+1)])`
-/

namespace A081957.P4975794007746919388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354768 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081957.P4975794007746919388

/-!
# A081958: Diagonal of A081957.

The programs for A081958, there is no canonical definition to state claims against.
-/

/-! ## A081958.P2621011204832531225

`A081957(∑[n+1])`
-/

namespace A081958.P2621011204832531225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081958.P2621011204832531225

/-! ## A081958.P10484065834980794201

`record[A081957(A057944(A093178(n)))]`
-/

namespace A081958.P10484065834980794201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081957 (A057944 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081958.P10484065834980794201

/-! ## A081958.P12580260787821661692

`record[A081957(A057944(A133310(n)))]`
-/

namespace A081958.P12580260787821661692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081957 (A057944 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081958.P12580260787821661692

/-! ## A081958.P9430075610503107450

`record[A081957(A057944(A007913(n+1)))]`
-/

namespace A081958.P9430075610503107450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081957 (A057944 (A007913 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081958.P9430075610503107450

/-! ## A081958.P6080641915351488731

`record[A081957(A057944(A141419(n+1)))]`
-/

namespace A081958.P6080641915351488731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081957 (A057944 (A141419 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081958.P6080641915351488731

/-!
# A081959: Row sums of A081957.

The programs for A081959, there is no canonical definition to state claims against.
-/

/-! ## A081959.P379278064398219291

`∑[A056019(∏[A276608(n+1)])]`
-/

namespace A081959.P379278064398219291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081959.P379278064398219291

/-!
# A081961: Hypotenuses of primitive Pythagorean triangles with an odd short leg (or an even long leg) sorted on semiperimeter.

The programs for A081961, there is no canonical definition to state claims against.
-/

/-! ## A081961.P17292751346260884650

`record[A020882(A098388(lcm(6, (n+1)^3)/6))]`
-/

namespace A081961.P17292751346260884650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (A098388 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081961.P17292751346260884650

/-! ## A081961.P14220099974114102150

`record[A020882(n+1)*A080764(A081266(3*n+1))]`
-/

namespace A081961.P14220099974114102150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) * A080764 (A081266 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081961.P14220099974114102150

/-!
# A081962: Ordered semiperimeters of primitive Pythagorean triangles with an even short leg (or an odd long leg).

The programs for A081962, there is no canonical definition to state claims against.
-/

/-! ## A081962.P11493711972660303430

`eq[1, A078926(A253909(n))]`
-/

namespace A081962.P11493711972660303430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081962.P11493711972660303430

/-! ## A081962.P7245619468876099255

`eq[1, A078926(A233583(n+1)²)]`
-/

namespace A081962.P7245619468876099255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A233583 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081962.P7245619468876099255

/-! ## A081962.P11636352379398872714

`lt[A247889(a(A078926(n²))), 1]` with `a(0)=1, a(1)=14`
-/

namespace A081962.P11636352379398872714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  A247889 (f1 (A078926 (n ^ 2)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081962.P11636352379398872714

/-!
# A081963: Even short legs of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081963, there is no canonical definition to state claims against.
-/

/-! ## A081963.P4933767880454915234

`filter[A081859(n+1), A121262(#)]`
-/

namespace A081963.P4933767880454915234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A081963.P4933767880454915234

/-! ## A081963.P16501196279065357915

`filter[A081859(n+1), A354097(#)]`
-/

namespace A081963.P16501196279065357915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A081963.P16501196279065357915

/-! ## A081963.P17647978706055729213

`filter[A103606(3*n+1), A121262(#)]`
-/

namespace A081963.P17647978706055729213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A081963.P17647978706055729213

/-! ## A081963.P7954468457997904630

`filter[A081859(n+1), A011765(#)]`
-/

namespace A081963.P7954468457997904630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A081963.P7954468457997904630

/-! ## A081963.P12908133116571838366

`filter[A081859(n+1), A059841(#)]`
-/

namespace A081963.P12908133116571838366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A081963.P12908133116571838366

/-! ## A081963.P9971728466460719553

`filter[A081859(n+1), A108357(#)]`
-/

namespace A081963.P9971728466460719553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A081963.P9971728466460719553

/-! ## A081963.P5677033369120072086

`filter[A081859(n+1), A135528(#)]`
-/

namespace A081963.P5677033369120072086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A081963.P5677033369120072086

/-! ## A081963.P2141421132369000290

`filter[A081859(n+1), A266591(#)]`
-/

namespace A081963.P2141421132369000290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A081963.P2141421132369000290

/-! ## A081963.P9298890514489809910

`filter[A081859(n+1), A267043(#)]`
-/

namespace A081963.P9298890514489809910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A081963.P9298890514489809910

/-! ## A081963.P2803586906036413287

`filter[A103606(3*n+1), A011765(#)]`
-/

namespace A081963.P2803586906036413287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A081963.P2803586906036413287

/-! ## A081963.P4701944354424818041

`filter[A103606(3*n+1), A059841(#)]`
-/

namespace A081963.P4701944354424818041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A081963.P4701944354424818041

/-! ## A081963.P16902694094244960251

`filter[A103606(3*n+1), A108357(#)]`
-/

namespace A081963.P16902694094244960251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A081963.P16902694094244960251

/-! ## A081963.P4163159364705688578

`filter[A103606(3*n+1), A135528(#)]`
-/

namespace A081963.P4163159364705688578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A081963.P4163159364705688578

/-! ## A081963.P9013997536507358160

`filter[A103606(3*n+1), A266591(#)]`
-/

namespace A081963.P9013997536507358160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A081963.P9013997536507358160

/-! ## A081963.P183229197765368129

`filter[A103606(3*n+1), A267043(#)]`
-/

namespace A081963.P183229197765368129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A081963.P183229197765368129

/-!
# A081965: Diagonal of A081964.

The programs for A081965, there is no canonical definition to state claims against.
-/

/-! ## A081965.P8378998024751387937

`A081964(∑[n+1])`
-/

namespace A081965.P8378998024751387937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081965.P8378998024751387937

/-! ## A081965.P8492883583556906822

`or(char[1], A081964(A000217(n+1)))`
-/

namespace A081965.P8492883583556906822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A081964 (A000217 (n + 1)).toNat)

end

end A081965.P8492883583556906822

/-! ## A081965.P3429111662989058343

`or(char[1], A081964(A000124(n)+n))`
-/

namespace A081965.P3429111662989058343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A081964 (A000124 n + (n : ℤ)).toNat)

end

end A081965.P3429111662989058343

/-! ## A081965.P15770623660180267883

`A000027(A081964(A000124(n)+n))`
-/

namespace A081965.P15770623660180267883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A081964 (A000124 n + (n : ℤ)).toNat).toNat

end

end A081965.P15770623660180267883

/-! ## A081965.P12388146630389107098

`∑{d}[A081964(A000217(n+1)), A000010(#)]`
-/

namespace A081965.P12388146630389107098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081964 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A081965.P12388146630389107098

/-! ## A081965.P16095948329945511168

`char[A001057(n)]*A081964(A000217(n+1))`
-/

namespace A081965.P16095948329945511168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A081964 (A000217 (n + 1)).toNat

end

end A081965.P16095948329945511168

/-! ## A081965.P14297420498800352130

`A081964(A000217(n+1))%A000045(n+5)`
-/

namespace A081965.P14297420498800352130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081964 (A000217 (n + 1)).toNat) (A000045 (n + 5))

end

end A081965.P14297420498800352130

/-! ## A081965.P2558442248255751206

`A007318(C(2, n))*A081964(A000217(n+1))`
-/

namespace A081965.P2558442248255751206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A081964 (A000217 (n + 1)).toNat

end

end A081965.P2558442248255751206

/-! ## A081965.P16094784899860426342

`A007318(A000217(n))*A081964(A000217(n+1))`
-/

namespace A081965.P16094784899860426342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A081964 (A000217 (n + 1)).toNat

end

end A081965.P16094784899860426342

/-!
# A081966: Row sums of A081964.

The programs for A081966, there is no canonical definition to state claims against.
-/

/-! ## A081966.P13394560025747054346

`A006002(n)+A000005(A160869(n+1))`
-/

namespace A081966.P13394560025747054346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + A000005 (A160869 (n + 1)).toNat

end

end A081966.P13394560025747054346

/-!
# A081972: Consider the geometric progression 1,1/2,1/4,1/8,1/16,1/32,1/64,... Group the terms such that the n-th group contains n terms like this (1/1),(1/2,1/4),(1/8,1/16,1,32),(1/64,1/128,1/256,1/512),... a(n) = floor(1/s(n)) where s(n) is the sum of the members of the n-th group.

The programs for A081972, there is no canonical definition to state claims against.
-/

/-! ## A081972.P9459460632076276409

`floor(2^∑[n+1]/∑[2^(n+1)])`
-/

namespace A081972.P9459460632076276409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A081972.P9459460632076276409

/-! ## A081972.P2497390246247499833

`ceil(A000079(∑[n+1])/A134067(n))-1`
-/

namespace A081972.P2497390246247499833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A134067 n : ℚ)⌉ - 1

end

end A081972.P2497390246247499833

/-!
# A081973: a(1) = 1; a(n) = a(n-1) + sigma(a(n-1)) where sigma(k) = sum of the divisors of k.

The programs for A081973, there is no canonical definition to state claims against.
-/

/-! ## A081973.P10010093137385193353

`record[A119763(n+1)]`
-/

namespace A081973.P10010093137385193353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081973.P10010093137385193353

/-! ## A081973.P14021558661863910546

`A119763(eq[A019426(n), A119763(n+1)])`
-/

namespace A081973.P14021558661863910546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119763 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081973.P14021558661863910546

/-! ## A081973.P8585369674536748563

`A119763(lt[A119763(n+1), A001221(2*(n+1))])`
-/

namespace A081973.P8585369674536748563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081973.P8585369674536748563

/-! ## A081973.P18131656571670277688

`∑[A165929(n+1)]`
-/

namespace A081973.P18131656571670277688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081973.P18131656571670277688

/-! ## A081973.P10352504624957906172

`A165929(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A081973.P10352504624957906172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165929 (n + 1) + a (A023443 n).toNat

end

end A081973.P10352504624957906172

/-!
# A081974: a(1) = 1 and smallest number not occurring earlier such that the product of two neighboring terms is a distinct triangular number, where "distinct" means that a(n)*a(n+1) may not equal the product of any two previous consecutive terms.

The programs for A081974, there is no canonical definition to state claims against.
-/

/-! ## A081974.P18063214924747829748

`A081975(n)/a(n-1)` with `a(0)=1`
-/

namespace A081974.P18063214924747829748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A081975 n : ℚ) / a (n - 1)

end

end A081974.P18063214924747829748

/-! ## A081974.P8591313220353884608

`or(A382245(n+1), A382290(A180080(2*(n+2))))`
-/

namespace A081974.P8591313220353884608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A382245 (n + 1)) (A382290 (A180080 (2 * (n + 2))).toNat)

end

end A081974.P8591313220353884608

/-! ## A081974.P16050691491741115376

`or(A382245(n+1), A382290(A016754(3*n+4)))`
-/

namespace A081974.P16050691491741115376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A382245 (n + 1)) (A382290 (A016754 (3 * n + 4)).toNat)

end

end A081974.P16050691491741115376

/-! ## A081974.P16072664385914221191

`A382245(A187829(n+1))`
-/

namespace A081974.P16072664385914221191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382245 (A187829 (n + 1)).toNat

end

end A081974.P16072664385914221191

/-! ## A081974.P2386519636379583202

`A382245(A077168(n))`
-/

namespace A081974.P2386519636379583202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382245 (A077168 n).toNat

end

end A081974.P2386519636379583202

/-!
# A081975: Triangular number pertaining to A081974. a(n) = A081974(n)*A081974(n+1).

The programs for A081975, there is no canonical definition to state claims against.
-/

/-! ## A081975.P4207803170029410468

`A081974(n+1)*A081974(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081975.P4207803170029410468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081974 (n + 1) * A081974 (n + 2)

end

end A081975.P4207803170029410468

/-! ## A081975.P8068335835915887088

`A382245(n+1)*A382245(A187829(n+2))`
-/

namespace A081975.P8068335835915887088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382245 (n + 1) * A382245 (A187829 (n + 2)).toNat

end

end A081975.P8068335835915887088

/-! ## A081975.P11800855029694335367

`A382245(A077168(n+1))*A382245(n+1)`
-/

namespace A081975.P11800855029694335367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382245 (A077168 (n + 1)).toNat * A382245 (n + 1)

end

end A081975.P11800855029694335367

/-!
# A081976: For n > 2, a(n) is minimal so that the products of two adjacent terms are distinct Fibonacci numbers.

The programs for A081976, there is no canonical definition to state claims against.
-/

/-! ## A081976.P13849243396917607657

`A214914(2*n)`
-/

namespace A081976.P13849243396917607657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214914 (2 * n)

end

end A081976.P13849243396917607657

/-! ## A081976.P13673840569304159322

`record[A214914(A014681(n))]`
-/

namespace A081976.P13673840569304159322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214914 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081976.P13673840569304159322

/-! ## A081976.P10679190962265515081

`record[A214914(A026741(n)+1)]`
-/

namespace A081976.P10679190962265515081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214914 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081976.P10679190962265515081

/-! ## A081976.P3803756624148747511

`record[A214914(A202084(n+1))]`
-/

namespace A081976.P3803756624148747511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214914 (A202084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081976.P3803756624148747511

/-! ## A081976.P11736128146279542686

`record[A214914(n)/A033999(n)]`
-/

namespace A081976.P11736128146279542686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214914 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081976.P11736128146279542686

/-!
# A081977: Odd long legs of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081977, there is no canonical definition to state claims against.
-/

/-! ## A081977.P8133841552548731114

`filter[A081872(n+1), A039982(#)]`
-/

namespace A081977.P8133841552548731114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A081977.P8133841552548731114

/-! ## A081977.P10510653625347776963

`filter[A081872(n+1), A098725(#)]`
-/

namespace A081977.P10510653625347776963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A081977.P10510653625347776963

/-! ## A081977.P14161032016638681259

`filter[A081872(n+1), A166486(#)]`
-/

namespace A081977.P14161032016638681259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A081977.P14161032016638681259

/-! ## A081977.P4701096599896898391

`filter[A081872(n+1), A000035(#)]`
-/

namespace A081977.P4701096599896898391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A081977.P4701096599896898391

/-! ## A081977.P16795321762884255425

`filter[A081872(n+1), A266070(#)]`
-/

namespace A081977.P16795321762884255425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A081977.P16795321762884255425

/-! ## A081977.P17671899610184739036

`filter[A081872(n+1), A266611(#)]`
-/

namespace A081977.P17671899610184739036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A081977.P17671899610184739036

/-! ## A081977.P12981729334783387527

`filter[A081872(n+1), A266719(#)]`
-/

namespace A081977.P12981729334783387527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A081977.P12981729334783387527

/-! ## A081977.P10430933495159343196

`filter[A081872(n+1), A272664(#)]`
-/

namespace A081977.P10430933495159343196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A081977.P10430933495159343196

/-! ## A081977.P12226229342066870111

`filter[A081872(n+1), A296066(#)]`
-/

namespace A081977.P12226229342066870111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A081977.P12226229342066870111

/-! ## A081977.P4252541123165295020

`filter[A081872(n+2), A266246(#)]`
-/

namespace A081977.P4252541123165295020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A081977.P4252541123165295020

/-! ## A081977.P13220903531526247382

`filter[A081872(n+2), A266444(#)]`
-/

namespace A081977.P13220903531526247382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A081977.P13220903531526247382

/-! ## A081977.P17403531697813973582

`filter[A081872(n+2), A266789(#)]`
-/

namespace A081977.P17403531697813973582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A081977.P17403531697813973582

/-! ## A081977.P16849882660980610360

`filter[A081872(n+2), A267155(#)]`
-/

namespace A081977.P16849882660980610360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A081977.P16849882660980610360

/-! ## A081977.P8358119062303732416

`filter[A081872(n+2), A267256(#)]`
-/

namespace A081977.P8358119062303732416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A081977.P8358119062303732416

/-!
# A081981: Primes p such that p+1 is divisible by every nonzero digit of p.

The programs for A081981, there is no canonical definition to state claims against.
-/

/-! ## A081981.P13447048128936399789

`p?[eq[A235049(n), A347323(n)]]`
-/

namespace A081981.P13447048128936399789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A081981.P13447048128936399789

/-! ## A081981.P9555405256228958648

`A115060(A081982(n+1))`
-/

namespace A081981.P9555405256228958648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A081982 (n + 1)).toNat

end

end A081981.P9555405256228958648

/-! ## A081981.P9287878661226568775

`A081982(A000005(5^n))`
-/

namespace A081981.P9287878661226568775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081982 (A000005 (5 ^ n)).toNat

end

end A081981.P9287878661226568775

/-! ## A081981.P2186404254130646441

`A081982(A032551(n+1)+1)`
-/

namespace A081981.P2186404254130646441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081982 (A032551 (n + 1) + 1).toNat

end

end A081981.P2186404254130646441

/-!
# A081982: Primes p such that p+1 is divisible by the digital product (of nonzero digits) of p.

The programs for A081982, there is no canonical definition to state claims against.
-/

/-! ## A081982.P9939178423689390582

`p?[lt[(n+1)%A051801(n), 1]]`
-/

namespace A081982.P9939178423689390582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A051801 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A081982.P9939178423689390582

/-! ## A081982.P12918063556091590754

`or(A081981(n+1), A245167(A000041(n)))`
-/

namespace A081982.P12918063556091590754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081981 (n + 1)) (A245167 (A000041 n).toNat)

end

end A081982.P12918063556091590754

/-!
# A081983: Primes p such that p-1 is divisible by every nonzero digit of p.

The programs for A081983, there is no canonical definition to state claims against.
-/

/-! ## A081983.P14577898823435036647

`A316941(A081984(n+1))`
-/

namespace A081983.P14577898823435036647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (A081984 (n + 1)).toNat

end

end A081983.P14577898823435036647

/-! ## A081983.P9075777890059262285

`∩[A081984(n+1), A088450(n+1)]`
-/

namespace A081983.P9075777890059262285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081983.P9075777890059262285

/-! ## A081983.P9219540368896543266

`∩[A081984(n+1), A092858(n+1)]`
-/

namespace A081983.P9219540368896543266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081983.P9219540368896543266

/-! ## A081983.P11857065492988095726

`∩[A081984(n+1), A096530(n+1)]`
-/

namespace A081983.P11857065492988095726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081983.P11857065492988095726

/-! ## A081983.P16883670814381918476

`∩[A081984(n+1), A106317(n+1)]`
-/

namespace A081983.P16883670814381918476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081983.P16883670814381918476

/-!
# A081984: Primes p such that p-1 is divisible by the digital product ( of nonzero digits) of p.

The programs for A081984, there is no canonical definition to state claims against.
-/

/-! ## A081984.P17232256866152724251

`p?[eq[0, (n-1)%A051801(n)]]`
-/

namespace A081984.P17232256866152724251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (A051801 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A081984.P17232256866152724251

/-! ## A081984.P17026345052335998225

`A081983(lt[A079955(n), A247143(n)])`
-/

namespace A081984.P17026345052335998225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081983 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081984.P17026345052335998225

/-! ## A081984.P2279191357849145895

`A081983(A269445(n)+A187829(n+1))`
-/

namespace A081984.P2279191357849145895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081983 (A269445 n + A187829 (n + 1)).toNat

end

end A081984.P2279191357849145895

/-! ## A081984.P17643723396744722301

`A081983(A347323(n)+A187829(n+1))`
-/

namespace A081984.P17643723396744722301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081983 (A347323 n + A187829 (n + 1)).toNat

end

end A081984.P17643723396744722301

/-! ## A081984.P15010098936953711172

`A081983(lt[A081965(n+2), A081935(n+1)])`
-/

namespace A081984.P15010098936953711172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081965 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081983 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081984.P15010098936953711172

/-!
# A081985: Hypotenuses of primitive Pythagorean triangles with even short leg (or odd long leg) sorted on semiperimeter.

The programs for A081985, there is no canonical definition to state claims against.
-/

/-! ## A081985.P9623059399225175855

`record[A128006(n+5)%A127956(n+1)]`
-/

namespace A081985.P9623059399225175855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128006 (n + 5)) (A127956 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081985.P9623059399225175855

/-! ## A081985.P3224903779949248955

`A004016(A079385(n+1))+A002144(n+3)`
-/

namespace A081985.P3224903779949248955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A079385 (n + 1)).toNat + A002144 (n + 3)

end

end A081985.P3224903779949248955

/-! ## A081985.P16850461799838025783

`record[A128006(n+5)-A034542(n+1)]`
-/

namespace A081985.P16850461799838025783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (n + 5) - A034542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081985.P16850461799838025783

/-! ## A081985.P11080528777139689329

`A016813(A376208(n+1)^A196879(n+4))`
-/

namespace A081985.P11080528777139689329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway ((A376208 (n + 1) : ℚ) ^ (A196879 (n + 4) : ℤ))).toNat

end

end A081985.P11080528777139689329

/-!
# A081987: a(n) = {A081982(n)+1}/d, where d is the product of nonzero digits of A081982(n).

The programs for A081987, there is no canonical definition to state claims against.
-/

/-! ## A081987.P18017306225826229544

`A000203(A081982(n+1))/A051801(A081982(n+1))`
-/

namespace A081987.P18017306225826229544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A081982 (n + 1)).toNat : ℚ) / (A051801 (A081982 (n + 1)).toNat : ℚ)

end

end A081987.P18017306225826229544

/-!
# A081988: Product of digits + 1 is a prime.

The programs for A081988, the canonical program `A081988.P13950426844741901832` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081988 has offset 1).

The definition of A081988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081988.P17331846450774172590

`eq[1, A001222(∏{digits}[n, #]+1)]`
-/

namespace A081988.P17331846450774172590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P17331846450774172590

namespace A081988

/-- `eq[1, A001222(∏{digits}[n, #]+1)]` -/
def P17331846450774172590.Spec : Prop :=
  ∀ n, (P17331846450774172590.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P10969526245461884527

`eq[A000010(∏{digits}[n, #]+1), ∏{digits}[n, #]]`
-/

namespace A081988.P10969526245461884527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℤ)) n

end

end A081988.P10969526245461884527

namespace A081988

/-- `eq[A000010(∏{digits}[n, #]+1), ∏{digits}[n, #]]` -/
def P10969526245461884527.Spec : Prop :=
  ∀ n, (P10969526245461884527.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P9419551441423227797

`eq[0, A056897(A007954(n))]`
-/

namespace A081988.P9419551441423227797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P9419551441423227797

namespace A081988

/-- `eq[0, A056897(A007954(n))]` -/
def P9419551441423227797.Spec : Prop :=
  ∀ n, (P9419551441423227797.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P6104319974188155115

`eq[0, A094830(A007954(n)+1)]`
-/

namespace A081988.P6104319974188155115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094830 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P6104319974188155115

namespace A081988

/-- `eq[0, A094830(A007954(n)+1)]` -/
def P6104319974188155115.Spec : Prop :=
  ∀ n, (P6104319974188155115.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P13950426844741901832

`eq[1, A001065(A007954(n)+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081988

/-- `eq[1, A001065(A007954(n)+1)]` -/
def P13950426844741901832.Spec : Prop :=
  ∀ n, (P13950426844741901832.a n : ℤ) = A081988 (n + 1)

theorem P13950426844741901832.correct : P13950426844741901832.Spec := by
  intro n
  simp only [A081988, Nat.add_sub_cancel]

end A081988

/-! ## A081988.P11785971545579170161

`eq[1, A001222(A007954(n)+1)]`
-/

namespace A081988.P11785971545579170161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P11785971545579170161

namespace A081988

/-- `eq[1, A001222(A007954(n)+1)]` -/
def P11785971545579170161.Spec : Prop :=
  ∀ n, (P11785971545579170161.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P15719677933640179273

`eq[1, A003415(A007954(n)+1)]`
-/

namespace A081988.P15719677933640179273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P15719677933640179273

namespace A081988

/-- `eq[1, A003415(A007954(n)+1)]` -/
def P15719677933640179273.Spec : Prop :=
  ∀ n, (P15719677933640179273.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P17409947690334870512

`eq[1, A010051(A007954(n)+1)]`
-/

namespace A081988.P17409947690334870512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P17409947690334870512

namespace A081988

/-- `eq[1, A010051(A007954(n)+1)]` -/
def P17409947690334870512.Spec : Prop :=
  ∀ n, (P17409947690334870512.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P1300041697533239762

`eq[1, A032741(A007954(n)+1)]`
-/

namespace A081988.P1300041697533239762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P1300041697533239762

namespace A081988

/-- `eq[1, A032741(A007954(n)+1)]` -/
def P1300041697533239762.Spec : Prop :=
  ∀ n, (P1300041697533239762.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P11314959644081605447

`eq[1, A054024(A007954(n)+1)]`
-/

namespace A081988.P11314959644081605447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P11314959644081605447

namespace A081988

/-- `eq[1, A054024(A007954(n)+1)]` -/
def P11314959644081605447.Spec : Prop :=
  ∀ n, (P11314959644081605447.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P5374574737985759591

`eq[1, A095112(A007954(n)+1)]`
-/

namespace A081988.P5374574737985759591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P5374574737985759591

namespace A081988

/-- `eq[1, A095112(A007954(n)+1)]` -/
def P5374574737985759591.Spec : Prop :=
  ∀ n, (P5374574737985759591.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P13342078419098411775

`eq[1, A105700(A007954(n)+1)]`
-/

namespace A081988.P13342078419098411775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P13342078419098411775

namespace A081988

/-- `eq[1, A105700(A007954(n)+1)]` -/
def P13342078419098411775.Spec : Prop :=
  ∀ n, (P13342078419098411775.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P1479154671477953440

`eq[1, A318827(A007954(n)+1)]`
-/

namespace A081988.P1479154671477953440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P1479154671477953440

namespace A081988

/-- `eq[1, A318827(A007954(n)+1)]` -/
def P1479154671477953440.Spec : Prop :=
  ∀ n, (P1479154671477953440.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P5961253191119133700

`eq[1, A340070(A007954(n)+1)]`
-/

namespace A081988.P5961253191119133700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P5961253191119133700

namespace A081988

/-- `eq[1, A340070(A007954(n)+1)]` -/
def P5961253191119133700.Spec : Prop :=
  ∀ n, (P5961253191119133700.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P2035315362137020184

`eq[2, A000005(A007954(n)+1)]`
-/

namespace A081988.P2035315362137020184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P2035315362137020184

namespace A081988

/-- `eq[2, A000005(A007954(n)+1)]` -/
def P2035315362137020184.Spec : Prop :=
  ∀ n, (P2035315362137020184.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P9113558631874339703

`eq[2, A073855(A007954(n)+1)]`
-/

namespace A081988.P9113558631874339703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P9113558631874339703

namespace A081988

/-- `eq[2, A073855(A007954(n)+1)]` -/
def P9113558631874339703.Spec : Prop :=
  ∀ n, (P9113558631874339703.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P2103261458345503977

`eq[2, A217895(A007954(n)+1)]`
-/

namespace A081988.P2103261458345503977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217895 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P2103261458345503977

namespace A081988

/-- `eq[2, A217895(A007954(n)+1)]` -/
def P2103261458345503977.Spec : Prop :=
  ∀ n, (P2103261458345503977.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P8306685684567455673

`eq[1, A001222(A230099(n)+1-n)]`
-/

namespace A081988.P8306685684567455673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A230099 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081988.P8306685684567455673

namespace A081988

/-- `eq[1, A001222(A230099(n)+1-n)]` -/
def P8306685684567455673.Spec : Prop :=
  ∀ n, (P8306685684567455673.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P8050066318456152845

`eq[A055641(n), A072670(A007954(n))]`
-/

namespace A081988.P8050066318456152845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081988.P8050066318456152845

namespace A081988

/-- `eq[A055641(n), A072670(A007954(n))]` -/
def P8050066318456152845.Spec : Prop :=
  ∀ n, (P8050066318456152845.a n : ℤ) = A081988 (n + 1)

end A081988

/-! ## A081988.P16057720504447283563

`eq[A000010(A007954(n)+1), A007954(n)]`
-/

namespace A081988.P16057720504447283563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007954 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081988.P16057720504447283563

namespace A081988

/-- `eq[A000010(A007954(n)+1), A007954(n)]` -/
def P16057720504447283563.Spec : Prop :=
  ∀ n, (P16057720504447283563.a n : ℤ) = A081988 (n + 1)

end A081988

/-!
# A081989: Numbers k such that 1 + product of digits of k is a square greater than 1.

The programs for A081989, the canonical program `A081989.P12347566630486416426` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081989 has offset 1).

The definition of A081989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081989.P12347566630486416426

`eq[0, A267866(A007954(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081989

/-- `eq[0, A267866(A007954(n))]` -/
def P12347566630486416426.Spec : Prop :=
  ∀ n, (P12347566630486416426.a n : ℤ) = A081989 (n + 1)

theorem P12347566630486416426.correct : P12347566630486416426.Spec := by
  intro n
  simp only [A081989, Nat.add_sub_cancel]

end A081989

/-! ## A081989.P7144806562423058533

`eq[A055641(n), A082375(A007954(n))]`
-/

namespace A081989.P7144806562423058533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P7144806562423058533

namespace A081989

/-- `eq[A055641(n), A082375(A007954(n))]` -/
def P7144806562423058533.Spec : Prop :=
  ∀ n, (P7144806562423058533.a n : ℤ) = A081989 (n + 1)

end A081989

/-! ## A081989.P16153306037171598052

`eq[A067898(n), A082375(A007954(n))]`
-/

namespace A081989.P16153306037171598052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P16153306037171598052

namespace A081989

/-- `eq[A067898(n), A082375(A007954(n))]` -/
def P16153306037171598052.Spec : Prop :=
  ∀ n, (P16153306037171598052.a n : ℤ) = A081989 (n + 1)

end A081989

/-! ## A081989.P6489014482029210641

`eq[A168046(n), A275437(A007954(n))]`
-/

namespace A081989.P6489014482029210641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P6489014482029210641

namespace A081989

/-- `eq[A168046(n), A275437(A007954(n))]` -/
def P6489014482029210641.Spec : Prop :=
  ∀ n, (P6489014482029210641.a n : ℤ) = A081989 (n + 1)

end A081989

/-! ## A081989.P10193134928285392120

`eq[A168046(n), A275437(A051801(n))]`
-/

namespace A081989.P10193134928285392120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P10193134928285392120

namespace A081989

/-- `eq[A168046(n), A275437(A051801(n))]` -/
def P10193134928285392120.Spec : Prop :=
  ∀ n, (P10193134928285392120.a n : ℤ) = A081989 (n + 1)

end A081989

/-! ## A081989.P4474278359269749488

`eq[A010052(A007954(n)+1), A168046(n)]`
-/

namespace A081989.P4474278359269749488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007954 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P4474278359269749488

namespace A081989

/-- `eq[A010052(A007954(n)+1), A168046(n)]` -/
def P4474278359269749488.Spec : Prop :=
  ∀ n, (P4474278359269749488.a n : ℤ) = A081989 (n + 1)

end A081989

/-! ## A081989.P8281147272048909696

`eq[A002828(A051801(n)+1), A168046(n)]`
-/

namespace A081989.P8281147272048909696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A051801 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P8281147272048909696

namespace A081989

/-- `eq[A002828(A051801(n)+1), A168046(n)]` -/
def P8281147272048909696.Spec : Prop :=
  ∀ n, (P8281147272048909696.a n : ℤ) = A081989 (n + 1)

end A081989

/-! ## A081989.P7891500531700323709

`eq[A055641(n), A341862(A007954(n)+1)]`
-/

namespace A081989.P7891500531700323709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081989.P7891500531700323709

namespace A081989

/-- `eq[A055641(n), A341862(A007954(n)+1)]` -/
def P7891500531700323709.Spec : Prop :=
  ∀ n, (P7891500531700323709.a n : ℤ) = A081989 (n + 1)

end A081989

/-!
# A081990: Numbers k that have no zero digits and such that both k+1 and (product of digits of k) + 1 are squares.

The programs for A081990, there is no canonical definition to state claims against.
-/

/-! ## A081990.P382052480293213709

`∩[A081989(n+1), A005563(n)]`
-/

namespace A081990.P382052480293213709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081990.P382052480293213709

/-! ## A081990.P1277212601691695417

`∩[A081989(n+1), A132411(n)]`
-/

namespace A081990.P1277212601691695417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081990.P1277212601691695417

/-! ## A081990.P4572223224905043788

`∩[A066079(n+1), A081989(n+1)]`
-/

namespace A081990.P4572223224905043788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081990.P4572223224905043788

/-!
# A081991: Numbers in ascending order formed by using all the digits of the next n numbers.

The programs for A081991, there is no canonical definition to state claims against.
-/

/-! ## A081991.P1653274542509776696

`eq[A014681(A086066(n)), A139337(n)]`
-/

namespace A081991.P1653274542509776696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A086066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081991.P1653274542509776696

/-! ## A081991.P10353603244174980477

`eq[A107128(A086066(n)), A136400(n)]`
-/

namespace A081991.P10353603244174980477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A086066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081991.P10353603244174980477

/-!
# A081992: a(n) = count of numbers formed using the digits of next n numbers.

The programs for A081992, there is no canonical definition to state claims against.
-/

/-! ## A081992.P3987122279758247862

`A209211(∑[∏[a(n-1)+8*n-6]])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A081992.P3987122279758247862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + (8 * n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081992.P3987122279758247862

/-!
# A081995: Diagonal of triangle A081994.

The programs for A081995, there is no canonical definition to state claims against.
-/

/-! ## A081995.P11059329145947964271

`A081994(∑[n+1])`
-/

namespace A081995.P11059329145947964271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081995.P11059329145947964271

/-!
# A081996: First column of triangle A081994.

The programs for A081996, there is no canonical definition to state claims against.
-/

/-! ## A081996.P11995844820225814920

`A081994(∑[n]+1)`
-/

namespace A081996.P11995844820225814920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081996.P11995844820225814920

/-! ## A081996.P12260000487765200800

`record[A010054(n)*A081994(n+1)]`
-/

namespace A081996.P12260000487765200800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A081994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081996.P12260000487765200800

/-! ## A081996.P17194777236799624931

`record[A081994(n+1)/A008949(n)]`
-/

namespace A081996.P17194777236799624931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081994 (n + 1) : ℚ) / (A008949 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081996.P17194777236799624931

/-! ## A081996.P4941107458915192605

`record[A081994(n+1)/A007723(n)]`
-/

namespace A081996.P4941107458915192605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081994 (n + 1) : ℚ) / (A007723 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081996.P4941107458915192605

/-!
# A081997: Row sums in triangle A081994.

The programs for A081997, there is no canonical definition to state claims against.
-/

/-! ## A081997.P12395192812728496115

`∑[A328674(∑[A081118(n+1)])]`
-/

namespace A081997.P12395192812728496115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081997.P12395192812728496115

/-! ## A081997.P7637373452763026740

`∑[A328674(∑[A247648(n+1)])]`
-/

namespace A081997.P7637373452763026740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081997.P7637373452763026740

/-! ## A081997.P11568223724674722288

`∑[A328674(∑[A272872(n+1)])]`
-/

namespace A081997.P11568223724674722288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081997.P11568223724674722288

/-!
# A081998: Square array read by antidiagonals, alternating upwards and downwards: T(i, j) is the least number that is greater than the previous term and coprime to every number on the same row or column.

The programs for A081998, there is no canonical definition to state claims against.
-/

/-! ## A081998.P10534051144790941954

`lt[A013599(A018783(n)), A002024(3*n+1)]`
-/

namespace A081998.P10534051144790941954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081998.P10534051144790941954

/-! ## A081998.P10907612044651000212

`record[A093875(A333337(n+1))]`
-/

namespace A081998.P10907612044651000212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A333337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081998.P10907612044651000212

/-! ## A081998.P318098423624503090

`record[A093875(or(1, A333337(n)))]`
-/

namespace A081998.P318098423624503090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (Int.lor 1 (A333337 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081998.P318098423624503090

/-! ## A081998.P8502934097480430877

`∑[A160520(A002260(A027988(n)))]`
-/

namespace A081998.P8502934097480430877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160520 (A002260 (A027988 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081998.P8502934097480430877

/-! ## A081998.P14597404040052107250

`record[A093875(A109613(A333337(n)))]`
-/

namespace A081998.P14597404040052107250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A109613 (A333337 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081998.P14597404040052107250

/-!
# A081999: First row of array in A081998.

The programs for A081999, there is no canonical definition to state claims against.
-/

/-! ## A081999.P14717332165652250655

`A081998(A266304(n))`
-/

namespace A081999.P14717332165652250655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A266304 n).toNat

end

end A081999.P14717332165652250655

/-! ## A081999.P15701980022190594050

`A081998(A237420(n)+∑[n])`
-/

namespace A081999.P15701980022190594050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A237420 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A081999.P15701980022190594050

/-! ## A081999.P951817128097329311

`A081998(∑[2*n/A266303(n)])`
-/

namespace A081999.P951817128097329311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A266303 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A081999.P951817128097329311

/-! ## A081999.P3117340804435933113

`A081998(A000096(n)-n*and(1, n))`
-/

namespace A081999.P3117340804435933113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n - (n * Nat.land 1 n : ℤ)).toNat

end

end A081999.P3117340804435933113

/-! ## A081999.P9093321106086017857

`A081998(A266725(n)+and(n, -2)/2)`
-/

namespace A081999.P9093321106086017857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.roundAway ((A266725 n : ℚ) + (Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A081999.P9093321106086017857

/-! ## A081999.P16702664145220493468

`A081998(record[A081344(n+1)-(n+1)])`
-/

namespace A081999.P16702664145220493468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081999.P16702664145220493468

/-! ## A081999.P5841539427364647110

`A081998(A116940(n)-A014682(n))`
-/

namespace A081999.P5841539427364647110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A116940 n - A014682 n).toNat

end

end A081999.P5841539427364647110

/-! ## A081999.P10824845620199482005

`A081998(A000096(n)+A237420(n)-n)`
-/

namespace A081999.P10824845620199482005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n + (A237420 n - (n : ℤ))).toNat

end

end A081999.P10824845620199482005

/-! ## A081999.P5465112065624984276

`A081998(A000096(n)-(n-A237420(n)))`
-/

namespace A081999.P5465112065624984276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n - ((n : ℤ) - A237420 n)).toNat

end

end A081999.P5465112065624984276

/-! ## A081999.P15937247175247898022

`A081998(eq[1, A208233(n+1)])`
-/

namespace A081999.P15937247175247898022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081999.P15937247175247898022

/-! ## A081999.P5811750793511750293

`A081998(eq[A056011(n+1), A127739(n+1)])`
-/

namespace A081999.P5811750793511750293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081999.P5811750793511750293

