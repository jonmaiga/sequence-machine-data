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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A262401: In prime factorization of n: replace each factor with its largest decimal digit.

The programs for A262401, the canonical program `A262401.P16396674940563330838` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262401 has offset 1).

The definition of A262401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262401.P16396674940563330838

`∏{d}[n+1, A054055(A014963(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A262401

/-- `∏{d}[n+1, A054055(A014963(#))]` -/
def P16396674940563330838.Spec : Prop :=
  ∀ n, P16396674940563330838.a n = A262401 (n + 1)

theorem P16396674940563330838.correct : P16396674940563330838.Spec := by
  intro n
  simp only [A262401, Nat.add_sub_cancel]

end A262401

/-! ## A262401.P6242912290090740905

`∏{e}[A181821(n+1), A060418(#)]`
-/

namespace A262401.P6242912290090740905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A060418 (Nat.factorization (f1 n).natAbs p)

end

end A262401.P6242912290090740905

namespace A262401

/-- `∏{e}[A181821(n+1), A060418(#)]` -/
def P6242912290090740905.Spec : Prop :=
  ∀ n, P6242912290090740905.a n = A262401 (n + 1)

end A262401

/-! ## A262401.P11868577235544921621

`∏{e}[A181821(n+1), A054055(A000040(#))]`
-/

namespace A262401.P11868577235544921621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054055 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A262401.P11868577235544921621

namespace A262401

/-- `∏{e}[A181821(n+1), A054055(A000040(#))]` -/
def P11868577235544921621.Spec : Prop :=
  ∀ n, P11868577235544921621.a n = A262401 (n + 1)

end A262401

/-! ## A262401.P2807205542819595091

`(n+1)%(10*A318362(n+1))`
-/

namespace A262401.P2807205542819595091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (10 * A318362 (n + 1))

end

end A262401.P2807205542819595091

namespace A262401

/-- `(n+1)%(10*A318362(n+1))` -/
def P2807205542819595091.Spec : Prop :=
  ∀ n, P2807205542819595091.a n = A262401 (n + 1)

end A262401

/-! ## A262401.P13416657598029512756

`(n+1)%A064147(A079065(n+1))`
-/

namespace A262401.P13416657598029512756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A064147 (A079065 (n + 1)).toNat)

end

end A262401.P13416657598029512756

namespace A262401

/-- `(n+1)%A064147(A079065(n+1))` -/
def P13416657598029512756.Spec : Prop :=
  ∀ n, P13416657598029512756.a n = A262401 (n + 1)

end A262401

/-!
# A262402: a(n) = number of triangles that can be formed from the points of a 3 X n grid.

The programs for A262402, the canonical program `A262402.P6386755188255622924` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262402 has offset 1).

The definition of A262402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262402.P17701246254155823771

`6*(n+1)*C(n+1, 2)+(n+1)^3-(n+1+2*floor(n²/4))`
-/

namespace A262402.P17701246254155823771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * ((n + 1) * Nat.choose (n + 1) 2) + (n + 1) ^ 3 : ℤ) - ((n + 1 : ℤ) + 2 * ⌊(n ^ 2 : ℚ) / 4⌋)

end

end A262402.P17701246254155823771

namespace A262402

/-- `6*(n+1)*C(n+1, 2)+(n+1)^3-(n+1+2*floor(n²/4))` -/
def P17701246254155823771.Spec : Prop :=
  ∀ n, P17701246254155823771.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P6386755188255622924

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=18, a(2)=76, a(3)=200, a(4)=412`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262402

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P6386755188255622924.Spec : Prop :=
  ∀ n, P6386755188255622924.a n = A262402 (n + 1)

theorem P6386755188255622924.correct : P6386755188255622924.Spec := by
  intro n
  simp only [A262402, Nat.add_sub_cancel]

end A262402

/-! ## A262402.P6907627524067137285

`floor((8*n+1)*(n+1)²/2)`
-/

namespace A262402.P6907627524067137285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((8 * n + 1) * (n + 1) ^ 2 : ℚ) / 2⌋

end

end A262402.P6907627524067137285

namespace A262402

/-- `floor((8*n+1)*(n+1)²/2)` -/
def P6907627524067137285.Spec : Prop :=
  ∀ n, P6907627524067137285.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P13670054360791703016

`A317637(n)+A248575(n)`
-/

namespace A262402.P13670054360791703016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + A248575 n

end

end A262402.P13670054360791703016

namespace A262402

/-- `A317637(n)+A248575(n)` -/
def P13670054360791703016.Spec : Prop :=
  ∀ n, P13670054360791703016.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P9201617774761633824

`A213832(n+1)-A008619(n)`
-/

namespace A262402.P9201617774761633824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) - A008619 n

end

end A262402.P9201617774761633824

namespace A262402

/-- `A213832(n+1)-A008619(n)` -/
def P9201617774761633824.Spec : Prop :=
  ∀ n, P9201617774761633824.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P16190544229962435201

`∑[A014641(n)-A047241(n+1)]`
-/

namespace A262402.P16190544229962435201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n - A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262402.P16190544229962435201

namespace A262402

/-- `∑[A014641(n)-A047241(n+1)]` -/
def P16190544229962435201.Spec : Prop :=
  ∀ n, P16190544229962435201.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P14514334399552177884

`A213832(n+1)-A110654(n+1)`
-/

namespace A262402.P14514334399552177884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) - A110654 (n + 1)

end

end A262402.P14514334399552177884

namespace A262402

/-- `A213832(n+1)-A110654(n+1)` -/
def P14514334399552177884.Spec : Prop :=
  ∀ n, P14514334399552177884.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P1221452010189545773

`A213832(n+1)-∑[A029279(a(n-1))]` with `a(0)=1`
-/

namespace A262402.P1221452010189545773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029279 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262402.P1221452010189545773

namespace A262402

/-- `A213832(n+1)-∑[A029279(a(n-1))]` -/
def P1221452010189545773.Spec : Prop :=
  ∀ n, P1221452010189545773.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P18181003614204068587

`A007590(n+1)+(n+1)²*4*n`
-/

namespace A262402.P18181003614204068587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) + ((n + 1) ^ 2 * (4 * n) : ℤ)

end

end A262402.P18181003614204068587

namespace A262402

/-- `A007590(n+1)+(n+1)²*4*n` -/
def P18181003614204068587.Spec : Prop :=
  ∀ n, P18181003614204068587.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P4432851588435001269

`∑[A033577(n)-A004773(A001651(n+1))]`
-/

namespace A262402.P4432851588435001269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 n - A004773 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262402.P4432851588435001269

namespace A262402

/-- `∑[A033577(n)-A004773(A001651(n+1))]` -/
def P4432851588435001269.Spec : Prop :=
  ∀ n, P4432851588435001269.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P10497942336753548194

`A166515(2*n)+n*(2*(n+1))²`
-/

namespace A262402.P10497942336753548194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (2 * n) + (n * (2 * (n + 1)) ^ 2 : ℤ)

end

end A262402.P10497942336753548194

namespace A262402

/-- `A166515(2*n)+n*(2*(n+1))²` -/
def P10497942336753548194.Spec : Prop :=
  ∀ n, P10497942336753548194.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P11615985160696261784

`A213832(n+1)-A008621(2*n)`
-/

namespace A262402.P11615985160696261784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) - A008621 (2 * n)

end

end A262402.P11615985160696261784

namespace A262402

/-- `A213832(n+1)-A008621(2*n)` -/
def P11615985160696261784.Spec : Prop :=
  ∀ n, P11615985160696261784.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P422175107774734678

`∑[A003215(2*n)]-A000982(n+1)`
-/

namespace A262402.P422175107774734678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000982 (n + 1)

end

end A262402.P422175107774734678

namespace A262402

/-- `∑[A003215(2*n)]-A000982(n+1)` -/
def P422175107774734678.Spec : Prop :=
  ∀ n, P422175107774734678.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P16715698378763451735

`2*(A005998(2*(n+1))-A001859(n+1))`
-/

namespace A262402.P16715698378763451735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005998 (2 * (n + 1)) - A001859 (n + 1))

end

end A262402.P16715698378763451735

namespace A262402

/-- `2*(A005998(2*(n+1))-A001859(n+1))` -/
def P16715698378763451735.Spec : Prop :=
  ∀ n, P16715698378763451735.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P15328140906691604131

`2*A019298(2*n+1)-A001972(2*n+1)`
-/

namespace A262402.P15328140906691604131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019298 (2 * n + 1) - A001972 (2 * n + 1)

end

end A262402.P15328140906691604131

namespace A262402

/-- `2*A019298(2*n+1)-A001972(2*n+1)` -/
def P15328140906691604131.Spec : Prop :=
  ∀ n, P15328140906691604131.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P3279501904130357478

`A000982(3*n)+n*A261327(2*n+1)`
-/

namespace A262402.P3279501904130357478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (3 * n) + (n : ℤ) * A261327 (2 * n + 1)

end

end A262402.P3279501904130357478

namespace A262402

/-- `A000982(3*n)+n*A261327(2*n+1)` -/
def P3279501904130357478.Spec : Prop :=
  ∀ n, P3279501904130357478.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P13459721971849179352

`n*A028387(2*n+1)-A056827(3*n)`
-/

namespace A262402.P13459721971849179352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028387 (2 * n + 1) - A056827 (3 * n)

end

end A262402.P13459721971849179352

namespace A262402

/-- `n*A028387(2*n+1)-A056827(3*n)` -/
def P13459721971849179352.Spec : Prop :=
  ∀ n, P13459721971849179352.a n = A262402 (n + 1)

end A262402

/-! ## A262402.P6052511699799054731

`(n+1)²*A109613(4*n)-A000982(n+1)`
-/

namespace A262402.P6052511699799054731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A109613 (4 * n) - A000982 (n + 1)

end

end A262402.P6052511699799054731

namespace A262402

/-- `(n+1)²*A109613(4*n)-A000982(n+1)` -/
def P6052511699799054731.Spec : Prop :=
  ∀ n, P6052511699799054731.a n = A262402 (n + 1)

end A262402

/-!
# A262405: Least k such that the k-th cyclotomic polynomial has -n as a coefficient.

The programs for A262405, there is no canonical definition to state claims against.
-/

/-! ## A262405.P14445046487039799060

`A345080(A006530((2*n)!))`
-/

namespace A262405.P14445046487039799060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345080 (A006530 (Nat.factorial (2 * n))).toNat

end

end A262405.P14445046487039799060

/-!
# A262406: Squarefree k such that phi(k) is a perfect square.

The programs for A262406, the canonical program `A262406.P13591506646915870537` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262406 has offset 1).

The definition of A262406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262406.P13591506646915870537

`record[∏{p}[A039770(n+1), #]]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A262406

/-- `record[∏{p}[A039770(n+1), #]]` -/
def P13591506646915870537.Spec : Prop :=
  ∀ n, (P13591506646915870537.a n : ℤ) = A262406 (n + 1)

theorem P13591506646915870537.correct : P13591506646915870537.Spec := by
  intro n
  simp only [A262406, Nat.add_sub_cancel]

end A262406

/-! ## A262406.P12699409927935963665

`record[A007913(A039770(n+1))]`
-/

namespace A262406.P12699409927935963665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A039770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P12699409927935963665

namespace A262406

/-- `record[A007913(A039770(n+1))]` -/
def P12699409927935963665.Spec : Prop :=
  ∀ n, P12699409927935963665.a n = A262406 (n + 1)

end A262406

/-! ## A262406.P8343417627782275144

`filter[A039770(n+1), A008966(#)]`
-/

namespace A262406.P8343417627782275144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A262406.P8343417627782275144

namespace A262406

/-- `filter[A039770(n+1), A008966(#)]` -/
def P8343417627782275144.Spec : Prop :=
  ∀ n, P8343417627782275144.a n = A262406 (n + 1)

end A262406

/-! ## A262406.P14277253391677621009

`record[A007913(n+1)/A007913(A000010(n+1))]`
-/

namespace A262406.P14277253391677621009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A007913 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P14277253391677621009

namespace A262406

/-- `record[A007913(n+1)/A007913(A000010(n+1))]` -/
def P14277253391677621009.Spec : Prop :=
  ∀ n, P14277253391677621009.a n = (A262406 (n + 1) : ℚ)

end A262406

/-! ## A262406.P9561828760520027115

`record[A007913(n+1)/A007913(A003958(n+1))]`
-/

namespace A262406.P9561828760520027115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A007913 (A003958 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P9561828760520027115

namespace A262406

/-- `record[A007913(n+1)/A007913(A003958(n+1))]` -/
def P9561828760520027115.Spec : Prop :=
  ∀ n, P9561828760520027115.a n = (A262406 (n + 1) : ℚ)

end A262406

/-! ## A262406.P220110695935412779

`∩[A005117(n+1), A039770(n+1)]`
-/

namespace A262406.P220110695935412779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262406.P220110695935412779

namespace A262406

/-- `∩[A005117(n+1), A039770(n+1)]` -/
def P220110695935412779.Spec : Prop :=
  ∀ n, (P220110695935412779.a n : ℤ) = A262406 (n + 1)

end A262406

/-! ## A262406.P17071271685786690060

`∩[A039770(n+1), A167207(n+1)]`
-/

namespace A262406.P17071271685786690060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262406.P17071271685786690060

namespace A262406

/-- `∩[A039770(n+1), A167207(n+1)]` -/
def P17071271685786690060.Spec : Prop :=
  ∀ n, (P17071271685786690060.a n : ℤ) = A262406 (n + 1)

end A262406

/-! ## A262406.P4634144410499469789

`∩[A039770(n+1), A210490(n+1)]`
-/

namespace A262406.P4634144410499469789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262406.P4634144410499469789

namespace A262406

/-- `∩[A039770(n+1), A210490(n+1)]` -/
def P4634144410499469789.Spec : Prop :=
  ∀ n, (P4634144410499469789.a n : ℤ) = A262406 (n + 1)

end A262406

/-! ## A262406.P5938198049148432441

`record[A007913(n+1)/A280988(n+1)]`
-/

namespace A262406.P5938198049148432441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A280988 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P5938198049148432441

namespace A262406

/-- `record[A007913(n+1)/A280988(n+1)]` -/
def P5938198049148432441.Spec : Prop :=
  ∀ n, P5938198049148432441.a n = (A262406 (n + 1) : ℚ)

end A262406

/-! ## A262406.P7155681981825104865

`record[(n+1)/(A000122(A000010(n+1))-A183097(n+1))]`
-/

namespace A262406.P7155681981825104865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000122 (A000010 (n + 1)).toNat - A183097 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P7155681981825104865

namespace A262406

/-- `record[(n+1)/(A000122(A000010(n+1))-A183097(n+1))]` -/
def P7155681981825104865.Spec : Prop :=
  ∀ n, P7155681981825104865.a n = (A262406 (n + 1) : ℚ)

end A262406

/-!
# A262407: a(n) = Sum_{k=0..n-1} C(n,k+1)*C(n,k)*C(n-1,k).

The programs for A262407, there is no canonical definition to state claims against.
-/

/-! ## A262407.P15307336589119317253

`n*A259992(n²-n)`
-/

namespace A262407.P15307336589119317253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259992 (n ^ 2 - n)

end

end A262407.P15307336589119317253

/-! ## A262407.P10944620476975011362

`A057354(A185385(n))`
-/

namespace A262407.P10944620476975011362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A185385 n).toNat

end

end A262407.P10944620476975011362

/-!
# A262411: Lexicographically earliest sequence of distinct terms such that the ternary representations of two consecutive terms overlap.

The programs for A262411, there is no canonical definition to state claims against.
-/

/-! ## A262411.P14754996956825840079

`A028898(A262412(n+1))`
-/

namespace A262411.P14754996956825840079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A262412 (n + 1)).toNat

end

end A262411.P14754996956825840079

/-!
# A262412: A262411 in ternary representation.

The programs for A262412, there is no canonical definition to state claims against.
-/

/-! ## A262412.P4264809371866592502

`A007089(A262411(n+1))`
-/

namespace A262412.P4264809371866592502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A262411 (n + 1)).toNat

end

end A262412.P4264809371866592502

/-!
# A262413: Number of (n+1)X(n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262413, there is no canonical definition to state claims against.
-/

/-! ## A262413.P766441994540300362

`A262420(∑[4*n]+1)`
-/

namespace A262413.P766441994540300362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262413.P766441994540300362

/-! ## A262413.P1753470602812284025

`lcm(2, A262420(A001844(n)))`
-/

namespace A262413.P1753470602812284025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262420 (A001844 n).toNat)

end

end A262413.P1753470602812284025

/-! ## A262413.P14942879458723477133

`record[A003982(n)*A262420(n+1)]`
-/

namespace A262413.P14942879458723477133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A262420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262413.P14942879458723477133

/-! ## A262413.P2521045814879740299

`record[gcd(A003987(n), A262420(n+1))]`
-/

namespace A262413.P2521045814879740299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A262420 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262413.P2521045814879740299

/-! ## A262413.P11038590716726435941

`A055801(n)*A262420(A001844(n))`
-/

namespace A262413.P11038590716726435941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 n * A262420 (A001844 n).toNat

end

end A262413.P11038590716726435941

/-!
# A262414: Number of (n+1) X (2+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262414, the canonical program `A262414.P7126470711539382978` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262414 has offset 1).

The definition of A262414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262414.P7126470711539382978

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=0, a(1)=4, a(2)=12`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262414

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P7126470711539382978.Spec : Prop :=
  ∀ n, P7126470711539382978.a n = A262414 (n + 1)

theorem P7126470711539382978.correct : P7126470711539382978.Spec := by
  intro n
  simp only [A262414, Nat.add_sub_cancel]

end A262414

/-! ## A262414.P10805836677378947659

`4*A167993(n+1)`
-/

namespace A262414.P10805836677378947659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A167993 (n + 1)

end

end A262414.P10805836677378947659

namespace A262414

/-- `4*A167993(n+1)` -/
def P10805836677378947659.Spec : Prop :=
  ∀ n, P10805836677378947659.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P12973470639305948725

`∑[4*A122006(n+1)]`
-/

namespace A262414.P12973470639305948725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262414.P12973470639305948725

namespace A262414

/-- `∑[4*A122006(n+1)]` -/
def P12973470639305948725.Spec : Prop :=
  ∀ n, P12973470639305948725.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P4046790171927630471

`2/3*A242278(n+1)`
-/

namespace A262414.P4046790171927630471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A242278 (n + 1) : ℚ)

end

end A262414.P4046790171927630471

namespace A262414

/-- `2/3*A242278(n+1)` -/
def P4046790171927630471.Spec : Prop :=
  ∀ n, P4046790171927630471.a n = (A262414 (n + 1) : ℚ)

end A262414

/-! ## A262414.P11767373242830514465

`Δ[3^n-A068911(n+1)]`
-/

namespace A262414.P11767373242830514465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A068911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262414.P11767373242830514465

namespace A262414

/-- `Δ[3^n-A068911(n+1)]` -/
def P11767373242830514465.Spec : Prop :=
  ∀ n, P11767373242830514465.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P7258169066273869245

`Δ[3^n]-A117855(n+1)`
-/

namespace A262414.P7258169066273869245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A117855 (n + 1)

end

end A262414.P7258169066273869245

namespace A262414

/-- `Δ[3^n]-A117855(n+1)` -/
def P7258169066273869245.Spec : Prop :=
  ∀ n, P7258169066273869245.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P4620257341494462296

`3^(n+1)-A262326(n+1)`
-/

namespace A262414.P4620257341494462296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A262326 (n + 1)

end

end A262414.P4620257341494462296

namespace A262414

/-- `3^(n+1)-A262326(n+1)` -/
def P4620257341494462296.Spec : Prop :=
  ∀ n, P4620257341494462296.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P12879108447852068987

`A081632(n)-A062547(n)`
-/

namespace A262414.P12879108447852068987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 n - A062547 n

end

end A262414.P12879108447852068987

namespace A262414

/-- `A081632(n)-A062547(n)` -/
def P12879108447852068987.Spec : Prop :=
  ∀ n, P12879108447852068987.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P3024693256391648385

`A255442(n)-A108411(n)`
-/

namespace A262414.P3024693256391648385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255442 n - A108411 n

end

end A262414.P3024693256391648385

namespace A262414

/-- `A255442(n)-A108411(n)` -/
def P3024693256391648385.Spec : Prop :=
  ∀ n, P3024693256391648385.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P5510618610202822002

`Δ[A168607(n)-A060647(n)]`
-/

namespace A262414.P5510618610202822002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 n - A060647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262414.P5510618610202822002

namespace A262414

/-- `Δ[A168607(n)-A060647(n)]` -/
def P5510618610202822002.Spec : Prop :=
  ∀ n, P5510618610202822002.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P8370150082936966569

`Δ[A168610(n)-A060647(n)]`
-/

namespace A262414.P8370150082936966569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168610 n - A060647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262414.P8370150082936966569

namespace A262414

/-- `Δ[A168610(n)-A060647(n)]` -/
def P8370150082936966569.Spec : Prop :=
  ∀ n, P8370150082936966569.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P1914314236630717498

`Δ[A168607(n)-A117862(n)]`
-/

namespace A262414.P1914314236630717498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 n - A117862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262414.P1914314236630717498

namespace A262414

/-- `Δ[A168607(n)-A117862(n)]` -/
def P1914314236630717498.Spec : Prop :=
  ∀ n, P1914314236630717498.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P5639327748327846891

`A255442(n)-Δ[A038754(n)]`
-/

namespace A262414.P5639327748327846891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255442 n - (f1 (n + 1) - f1 n)

end

end A262414.P5639327748327846891

namespace A262414

/-- `A255442(n)-Δ[A038754(n)]` -/
def P5639327748327846891.Spec : Prop :=
  ∀ n, P5639327748327846891.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P17896975594128329077

`(A060647(n)+1)*A048328(n)`
-/

namespace A262414.P17896975594128329077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060647 n + 1) * A048328 n

end

end A262414.P17896975594128329077

namespace A262414

/-- `(A060647(n)+1)*A048328(n)` -/
def P17896975594128329077.Spec : Prop :=
  ∀ n, P17896975594128329077.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P7775753302997880368

`A048328(n)*A068911(n+1)`
-/

namespace A262414.P7775753302997880368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 n * A068911 (n + 1)

end

end A262414.P7775753302997880368

namespace A262414

/-- `A048328(n)*A068911(n+1)` -/
def P7775753302997880368.Spec : Prop :=
  ∀ n, P7775753302997880368.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P10393438387755430113

`A107660(n)-A122006(n+2)`
-/

namespace A262414.P10393438387755430113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107660 n - A122006 (n + 2)

end

end A262414.P10393438387755430113

namespace A262414

/-- `A107660(n)-A122006(n+2)` -/
def P10393438387755430113.Spec : Prop :=
  ∀ n, P10393438387755430113.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P18317790367666761249

`2*(A000244(n)-A108411(n))`
-/

namespace A262414.P18317790367666761249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000244 n - A108411 n)

end

end A262414.P18317790367666761249

namespace A262414

/-- `2*(A000244(n)-A108411(n))` -/
def P18317790367666761249.Spec : Prop :=
  ∀ n, P18317790367666761249.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P6025308899285310025

`A008776(n)-2*A108411(n)`
-/

namespace A262414.P6025308899285310025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - 2 * A108411 n

end

end A262414.P6025308899285310025

namespace A262414

/-- `A008776(n)-2*A108411(n)` -/
def P6025308899285310025.Spec : Prop :=
  ∀ n, P6025308899285310025.a n = A262414 (n + 1)

end A262414

/-! ## A262414.P15190261114557708690

`2*A038754(n)*A048328(n)`
-/

namespace A262414.P15190261114557708690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A038754 n * A048328 n)

end

end A262414.P15190261114557708690

namespace A262414

/-- `2*A038754(n)*A048328(n)` -/
def P15190261114557708690.Spec : Prop :=
  ∀ n, P15190261114557708690.a n = A262414 (n + 1)

end A262414

/-!
# A262415: Number of (n+1) X (3+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262415, the canonical program `A262415.P14453665542200028300` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262415 has offset 1).

The definition of A262415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262415.P14453665542200028300

`6*a(n-1)+9*a(n-2)-54*a(n-3)` with `a(0)=6, a(1)=45, a(2)=270`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262415

/-- `6*a(n-1)+9*a(n-2)-54*a(n-3)` -/
def P14453665542200028300.Spec : Prop :=
  ∀ n, P14453665542200028300.a n = A262415 (n + 1)

theorem P14453665542200028300.correct : P14453665542200028300.Spec := by
  intro n
  simp only [A262415, Nat.add_sub_cancel]

end A262415

/-! ## A262415.P15298866038191257109

`3^n*A141023(n+3)`
-/

namespace A262415.P15298866038191257109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A141023 (n + 3)

end

end A262415.P15298866038191257109

namespace A262415

/-- `3^n*A141023(n+3)` -/
def P15298866038191257109.Spec : Prop :=
  ∀ n, P15298866038191257109.a n = A262415 (n + 1)

end A262415

/-! ## A262415.P3053985528874247973

`3^(n+1)*A000975(n+2)`
-/

namespace A262415.P3053985528874247973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A000975 (n + 2)

end

end A262415.P3053985528874247973

namespace A262415

/-- `3^(n+1)*A000975(n+2)` -/
def P3053985528874247973.Spec : Prop :=
  ∀ n, P3053985528874247973.a n = A262415 (n + 1)

end A262415

/-! ## A262415.P17741029395225616128

`3^n*or(n², A000918(n+3))`
-/

namespace A262415.P17741029395225616128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * Int.lor (n ^ 2 : ℤ) (A000918 (n + 3))

end

end A262415.P17741029395225616128

namespace A262415

/-- `3^n*or(n², A000918(n+3))` -/
def P17741029395225616128.Spec : Prop :=
  ∀ n, P17741029395225616128.a n = A262415 (n + 1)

end A262415

/-! ## A262415.P17822452656883220427

`A000975(n+2)*A133494(n+2)`
-/

namespace A262415.P17822452656883220427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 2) * A133494 (n + 2)

end

end A262415.P17822452656883220427

namespace A262415

/-- `A000975(n+2)*A133494(n+2)` -/
def P17822452656883220427.Spec : Prop :=
  ∀ n, P17822452656883220427.a n = A262415 (n + 1)

end A262415

/-! ## A262415.P17020924079247059785

`∑[A026644(n)+1]*A000244(n+1)`
-/

namespace A262415.P17020924079247059785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 (n + 1)

end

end A262415.P17020924079247059785

namespace A262415

/-- `∑[A026644(n)+1]*A000244(n+1)` -/
def P17020924079247059785.Spec : Prop :=
  ∀ n, P17020924079247059785.a n = A262415 (n + 1)

end A262415

/-! ## A262415.P14520762834262327478

`∪[A002446(n+1), A024036(n+2)]*A000244(n)`
-/

namespace A262415.P14520762834262327478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A000244 n

end

end A262415.P14520762834262327478

namespace A262415

/-- `∪[A002446(n+1), A024036(n+2)]*A000244(n)` -/
def P14520762834262327478.Spec : Prop :=
  ∀ n, P14520762834262327478.a n = A262415 (n + 1)

end A262415

/-!
# A262416: Number of (n+1) X (4+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262416, there is no canonical definition to state claims against.
-/

/-! ## A262416.P5108639893200404391

`A262420(A141214(n+1))`
-/

namespace A262416.P5108639893200404391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A141214 (n + 1)).toNat

end

end A262416.P5108639893200404391

/-! ## A262416.P6369916905279731357

`A262420(A055998(n+2))`
-/

namespace A262416.P6369916905279731357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A055998 (n + 2)).toNat

end

end A262416.P6369916905279731357

/-! ## A262416.P9308192875151607509

`A262420(A155212(n)+5)`
-/

namespace A262416.P9308192875151607509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A155212 n + 5).toNat

end

end A262416.P9308192875151607509

/-! ## A262416.P13580113967884719178

`A262420(eq[3, A193592(n)])`
-/

namespace A262416.P13580113967884719178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262416.P13580113967884719178

/-! ## A262416.P1736677122583620509

`A262420(A052905(n+1)+2)`
-/

namespace A262416.P1736677122583620509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A052905 (n + 1) + 2).toNat

end

end A262416.P1736677122583620509

/-!
# A262417: Number of (n+1)X(5+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262417, there is no canonical definition to state claims against.
-/

/-! ## A262417.P13772177826015728595

`A262420((n+4)²-(∑[n+2]+3))`
-/

namespace A262417.P13772177826015728595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 ((n + 4) ^ 2 - (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A262417.P13772177826015728595

/-!
# A262418: Number of (n+1)X(6+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262418, there is no canonical definition to state claims against.
-/

/-! ## A262418.P10392729415293298814

`A262420(A052905(n+3))`
-/

namespace A262418.P10392729415293298814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A052905 (n + 3)).toNat

end

end A262418.P10392729415293298814

/-! ## A262418.P11924948531425955108

`A262420(eq[3, A219347(n)])`
-/

namespace A262418.P11924948531425955108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262418.P11924948531425955108

/-! ## A262418.P8781210812475933396

`A262420(eq[5, A193592(n)])`
-/

namespace A262418.P8781210812475933396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262418.P8781210812475933396

/-! ## A262418.P17933154470849502106

`A262420(eq[6, A200370(n+1)])`
-/

namespace A262418.P17933154470849502106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262418.P17933154470849502106

/-! ## A262418.P2381867877860571730

`A262420(eq[8, A185782(n+1)])`
-/

namespace A262418.P2381867877860571730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262418.P2381867877860571730

/-!
# A262419: Number of (n+1)X(7+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262419, there is no canonical definition to state claims against.
-/

/-! ## A262419.P3494732458581377973

`A262420(A055999(n+4))`
-/

namespace A262419.P3494732458581377973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A055999 (n + 4)).toNat

end

end A262419.P3494732458581377973

/-! ## A262419.P14139949029378888330

`A262420(eq[4, A219347(n)])`
-/

namespace A262419.P14139949029378888330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262419.P14139949029378888330

/-! ## A262419.P14635701279654427081

`A262420(eq[6, A193592(n)])`
-/

namespace A262419.P14635701279654427081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262419.P14635701279654427081

/-! ## A262419.P12660120068189935046

`A262420(eq[7, A200370(n+1)])`
-/

namespace A262419.P12660120068189935046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262419.P12660120068189935046

/-! ## A262419.P11713555633579607117

`A262420(eq[10, A185782(n+1)])`
-/

namespace A262419.P11713555633579607117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262419.P11713555633579607117

/-!
# A262421: Number of (2+1) X (n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262421, there is no canonical definition to state claims against.
-/

/-! ## A262421.P1549518646829554427

`A262420(∑[n+1]+2)`
-/

namespace A262421.P1549518646829554427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262421.P1549518646829554427

/-!
# A262422: Number of (3+1) X (n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262422, there is no canonical definition to state claims against.
-/

/-! ## A262422.P3406624798300736433

`A262420(∑[n+2]+4)`
-/

namespace A262422.P3406624798300736433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262422.P3406624798300736433

/-! ## A262422.P4152294954223364018

`lcm(2, A262420(A167614(n+1)))`
-/

namespace A262422.P4152294954223364018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262420 (A167614 (n + 1)).toNat)

end

end A262422.P4152294954223364018

/-! ## A262422.P1941169293377072691

`A262420(A167614(n+1))+A025444(n)`
-/

namespace A262422.P1941169293377072691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A167614 (n + 1)).toNat + A025444 n

end

end A262422.P1941169293377072691

/-! ## A262422.P15897041053607736286

`or(A000038(n), A262420(A167614(n+1)))`
-/

namespace A262422.P15897041053607736286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A262420 (A167614 (n + 1)).toNat)

end

end A262422.P15897041053607736286

/-! ## A262422.P8456376794729820381

`A262420(A167614(n+1))+A034487(n+1)`
-/

namespace A262422.P8456376794729820381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A167614 (n + 1)).toNat + A034487 (n + 1)

end

end A262422.P8456376794729820381

/-!
# A262423: Number of (4+1)X(n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262423, there is no canonical definition to state claims against.
-/

/-! ## A262423.P2552359575913595859

`A262420(A141214(n)+7)`
-/

namespace A262423.P2552359575913595859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A141214 n + 7).toNat

end

end A262423.P2552359575913595859

/-! ## A262423.P9398593540031553776

`A262420(A052905(n)+9)`
-/

namespace A262423.P9398593540031553776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A052905 n + 9).toNat

end

end A262423.P9398593540031553776

/-! ## A262423.P9521924833681834073

`A262420(A055999(n)+10)`
-/

namespace A262423.P9521924833681834073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A055999 n + 10).toNat

end

end A262423.P9521924833681834073

/-! ## A262423.P11597918704754443946

`A262420(A167614(n+2)+1)`
-/

namespace A262423.P11597918704754443946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A167614 (n + 2) + 1).toNat

end

end A262423.P11597918704754443946

/-! ## A262423.P11884573082350961822

`A262420(A166136(n+2)-2)`
-/

namespace A262423.P11884573082350961822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A166136 (n + 2) - 2).toNat

end

end A262423.P11884573082350961822

/-!
# A262424: Number of (5+1)X(n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262424, there is no canonical definition to state claims against.
-/

/-! ## A262424.P5212661701185641839

`A262420(A167499(n+3))`
-/

namespace A262424.P5212661701185641839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A167499 (n + 3)).toNat

end

end A262424.P5212661701185641839

/-! ## A262424.P10188283465450837133

`A262420(A155212(n)+13)`
-/

namespace A262424.P10188283465450837133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A155212 n + 13).toNat

end

end A262424.P10188283465450837133

/-! ## A262424.P14960345930009231915

`A262420(A056000(n)+15)`
-/

namespace A262424.P14960345930009231915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A056000 n + 15).toNat

end

end A262424.P14960345930009231915

/-! ## A262424.P752681948370361760

`A262420(eq[7, A066657(n)])`
-/

namespace A262424.P752681948370361760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262424.P752681948370361760

/-! ## A262424.P7088097398529753675

`A262420(eq[6, A131818(n+1)])`
-/

namespace A262424.P7088097398529753675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262424.P7088097398529753675

/-!
# A262425: Number of (6+1)X(n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262425, there is no canonical definition to state claims against.
-/

/-! ## A262425.P5909222709937433696

`A262420(A166136(n+4))`
-/

namespace A262425.P5909222709937433696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A166136 (n + 4)).toNat

end

end A262425.P5909222709937433696

/-! ## A262425.P14577243378627079802

`A262420(A000217(n+5)+6)`
-/

namespace A262425.P14577243378627079802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A000217 (n + 5) + 6).toNat

end

end A262425.P14577243378627079802

/-! ## A262425.P9595194650736151796

`A262420(A246172(n+1)+20)`
-/

namespace A262425.P9595194650736151796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A246172 (n + 1) + 20).toNat

end

end A262425.P9595194650736151796

/-! ## A262425.P15452770030335562717

`A262420(eq[7, A131818(n+1)])`
-/

namespace A262425.P15452770030335562717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262425.P15452770030335562717

/-! ## A262425.P1181256046190644337

`A262420(A056000(n)+21+n)`
-/

namespace A262425.P1181256046190644337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A056000 n + 21 + (n : ℤ)).toNat

end

end A262425.P1181256046190644337

/-!
# A262426: Number of (7+1)X(n+1) 0..1 arrays with each row divisible by 3 and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262426, there is no canonical definition to state claims against.
-/

/-! ## A262426.P10742507466953277781

`A262420(A056119(n)+28)`
-/

namespace A262426.P10742507466953277781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A056119 n + 28).toNat

end

end A262426.P10742507466953277781

/-! ## A262426.P4390711782725810234

`A262420(eq[11, A066657(n)])`
-/

namespace A262426.P4390711782725810234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262426.P4390711782725810234

/-! ## A262426.P14170736453459088482

`A262420(A167614(n+5)+4)`
-/

namespace A262426.P14170736453459088482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A167614 (n + 5) + 4).toNat

end

end A262426.P14170736453459088482

/-! ## A262426.P5357584610062623652

`A262420(A000217(n+6)+7)`
-/

namespace A262426.P5357584610062623652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A000217 (n + 6) + 7).toNat

end

end A262426.P5357584610062623652

/-! ## A262426.P7866934528245394443

`A262420(A034856(n+5)+9)`
-/

namespace A262426.P7866934528245394443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A034856 (n + 5) + 9).toNat

end

end A262426.P7866934528245394443

/-!
# A262428: Concatenate the n-th prime with the n-th semiprime.

The programs for A262428, there is no canonical definition to state claims against.
-/

/-! ## A262428.P11900285947483743364

`A357623(A266858(n))+A045533(n+1)`
-/

namespace A262428.P11900285947483743364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A266858 n).toNat + A045533 (n + 1)

end

end A262428.P11900285947483743364

/-!
# A262430: Number of trees on n vertices with an even number of leaves.

The programs for A262430, there is no canonical definition to state claims against.
-/

/-! ## A262430.P15244406131631109247

`A000055(n)-A262431(n)`
-/

namespace A262430.P15244406131631109247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A262431 n

end

end A262430.P15244406131631109247

/-! ## A262430.P6896251191364735367

`sqrt(A001256(n))-A262431(n)`
-/

namespace A262430.P6896251191364735367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ) - (A262431 n : ℝ)

end

end A262430.P6896251191364735367

/-! ## A262430.P12397353864843952115

`A144520(n)+1-A262431(n)`
-/

namespace A262430.P12397353864843952115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n + (1 - A262431 n)

end

end A262430.P12397353864843952115

/-! ## A262430.P8903704747786154772

`A302939(∑[n+1]-2*n)-A262431(n)`
-/

namespace A262430.P8903704747786154772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302939 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n) - A262431 n

end

end A262430.P8903704747786154772

/-! ## A262430.P16955298717477610076

`A105821(A133263(n))-A262431(n)`
-/

namespace A262430.P16955298717477610076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat - A262431 n

end

end A262430.P16955298717477610076

/-! ## A262430.P6888415500780124206

`A095133(A152947(n+1))-A262431(n)`
-/

namespace A262430.P6888415500780124206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (A152947 (n + 1)).toNat - A262431 n

end

end A262430.P6888415500780124206

/-! ## A262430.P15544592088659876679

`A136605(A179865(n+1))-A262431(n)`
-/

namespace A262430.P15544592088659876679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A179865 (n + 1)).toNat - A262431 n

end

end A262430.P15544592088659876679

/-! ## A262430.P6426228035321068991

`A000676(n)+A000677(n)-A262431(n)`
-/

namespace A262430.P6426228035321068991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 n + (A000677 n - A262431 n)

end

end A262430.P6426228035321068991

/-! ## A262430.P10130397398880105988

`A294783(∑[n])-A262431(n)`
-/

namespace A262430.P10130397398880105988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (∑ j ∈ Finset.range (n + 1), f1 j) - A262431 n

end

end A262430.P10130397398880105988

/-!
# A262431: Number of trees on n vertices with an odd number of leaves.

The programs for A262431, there is no canonical definition to state claims against.
-/

/-! ## A262431.P14421363010014751080

`A000055(n)-A262430(n)`
-/

namespace A262431.P14421363010014751080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A262430 n

end

end A262431.P14421363010014751080

/-! ## A262431.P7856768700963081878

`sqrt(A001256(n))-A262430(n)`
-/

namespace A262431.P7856768700963081878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ) - (A262430 n : ℝ)

end

end A262431.P7856768700963081878

/-! ## A262431.P8236520524359313340

`A144520(n)+1-A262430(n)`
-/

namespace A262431.P8236520524359313340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n + (1 - A262430 n)

end

end A262431.P8236520524359313340

/-! ## A262431.P13541391737452344493

`A302939(∑[n+1]-2*n)-A262430(n)`
-/

namespace A262431.P13541391737452344493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302939 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n) - A262430 n

end

end A262431.P13541391737452344493

/-! ## A262431.P9293060607406767794

`A105821(A133263(n))-A262430(n)`
-/

namespace A262431.P9293060607406767794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat - A262430 n

end

end A262431.P9293060607406767794

/-! ## A262431.P748553671440975789

`A095133(A152947(n+1))-A262430(n)`
-/

namespace A262431.P748553671440975789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (A152947 (n + 1)).toNat - A262430 n

end

end A262431.P748553671440975789

/-! ## A262431.P8776375714763224076

`A136605(A179865(n+1))-A262430(n)`
-/

namespace A262431.P8776375714763224076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A179865 (n + 1)).toNat - A262430 n

end

end A262431.P8776375714763224076

/-! ## A262431.P3265911596237959643

`A105821(A238531(n+1))-A262430(n)`
-/

namespace A262431.P3265911596237959643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A238531 (n + 1)).toNat - A262430 n

end

end A262431.P3265911596237959643

/-! ## A262431.P14575628115513750479

`A000676(n)+A000677(n)-A262430(n)`
-/

namespace A262431.P14575628115513750479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 n + (A000677 n - A262430 n)

end

end A262431.P14575628115513750479

/-! ## A262431.P8703512886737551806

`A294783(∑[n])-A262430(n)`
-/

namespace A262431.P8703512886737551806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (∑ j ∈ Finset.range (n + 1), f1 j) - A262430 n

end

end A262431.P8703512886737551806

/-!
# A262432: Regular triangle read by rows: T(n, k) gives the number of times that the denominator of sigma(x,-1) (A017666) is equal to k when x goes from 1 to n.

The programs for A262432, there is no canonical definition to state claims against.
-/

/-! ## A262432.P15944116216534970640

`gcd(A056558(n), A336569(A222360(n+1)))`
-/

namespace A262432.P15944116216534970640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056558 n) (A336569 (A222360 (n + 1)).toNat)

end

end A262432.P15944116216534970640

/-!
# A262433: Quater-imaginary representation of the Gaussian primes with an even imaginary part.

The programs for A262433, there is no canonical definition to state claims against.
-/

/-! ## A262433.P10616923159734098340

`A007090(lt[A045474(n+1), A007955(3*n+1)])`
-/

namespace A262433.P10616923159734098340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262433.P10616923159734098340

/-! ## A262433.P15735819056375416370

`A165451(2*n+1)+A008683(A059304(n))`
-/

namespace A262433.P15735819056375416370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (2 * n + 1) + A008683 (A059304 n).toNat

end

end A262433.P15735819056375416370

/-! ## A262433.P2783241600417076848

`A165451(2*n+1)+A010054(A110166(n))`
-/

namespace A262433.P2783241600417076848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (2 * n + 1) + A010054 (A110166 n).toNat

end

end A262433.P2783241600417076848

/-!
# A262435: Fixed points of permutations A262411 and A262429.

The programs for A262435, there is no canonical definition to state claims against.
-/

/-! ## A262435.P6967551486199116920

`record[gcd(n+1, A262411(n+1))]`
-/

namespace A262435.P6967551486199116920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A262411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262435.P6967551486199116920

/-! ## A262435.P17935377615554269753

`eq[n+1, A262429(n+1)]+1`
-/

namespace A262435.P17935377615554269753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262435.P17935377615554269753

/-! ## A262435.P17039344349091822700

`record[gcd(A000027(n+1), A262429(n+1))]`
-/

namespace A262435.P17039344349091822700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A262429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262435.P17039344349091822700

/-! ## A262435.P12273452340216237349

`eq[A007089(n+1), A262412(n+1)]+1`
-/

namespace A262435.P12273452340216237349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262435.P12273452340216237349

/-! ## A262435.P6926554712086407148

`A262411(eq[n+1, A262411(n+1)]+1)`
-/

namespace A262435.P6926554712086407148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262411 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A262435.P6926554712086407148

/-!
# A262436: Number of ways to represent 2n - 1 as p^2 + q^2 + r with p, q, and r prime, and p >= q.

The programs for A262436, there is no canonical definition to state claims against.
-/

/-! ## A262436.P12922283360871672309

`A181674(or(A046682(n), A181657(n)))`
-/

namespace A262436.P12922283360871672309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181674 (Int.lor (A046682 n) (A181657 n)).toNat

end

end A262436.P12922283360871672309

/-! ## A262436.P16923635669514459559

`A118977(A004736(n+1))%A124776(n)`
-/

namespace A262436.P16923635669514459559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118977 (A004736 (n + 1)).toNat) (A124776 n)

end

end A262436.P16923635669514459559

/-! ## A262436.P1598967182607742244

`A325169(A333806(n+1)+A172349(n+1))`
-/

namespace A262436.P1598967182607742244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A333806 (n + 1) + A172349 (n + 1)).toNat

end

end A262436.P1598967182607742244

/-! ## A262436.P10401092389903411497

`A173920(A091808(n+1)-A079978(n+2))`
-/

namespace A262436.P10401092389903411497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (A091808 (n + 1) - A079978 (n + 2)).toNat

end

end A262436.P10401092389903411497

/-!
# A262438: Number of digits of hexadecimal representation of n.

The programs for A262438, the canonical program `A262438.P5441968165087064476` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262438 has offset 0).

The definition of A262438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262438.P3958899997685878383

`ceil(ceil(abs(log2(n+γ)))/4)`
-/

namespace A262438.P3958899997685878383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈|Real.logb 2 ((n : ℝ) + Real.eulerMascheroniConstant)|⌉ : ℚ) / 4⌉

end

end A262438.P3958899997685878383

namespace A262438

/-- `ceil(ceil(abs(log2(n+γ)))/4)` -/
def P3958899997685878383.Spec : Prop :=
  ∀ n, P3958899997685878383.a n = A262438 n

end A262438

/-! ## A262438.P3144601608439741386

`∑[char[16*a(n-2)]]` with `a(0)=0, a(1)=16`
-/

namespace A262438.P3144601608439741386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n f2 =>
  16 * f2 (n - 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P3144601608439741386

namespace A262438

/-- `∑[char[16*a(n-2)]]` -/
def P3144601608439741386.Spec : Prop :=
  ∀ n, (P3144601608439741386.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P17799300323012690679

`∑[char[and(2*n, -n)²²]]`
-/

namespace A262438.P17799300323012690679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n : ℤ) (-(n : ℤ)) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P17799300323012690679

namespace A262438

/-- `∑[char[and(2*n, -n)²²]]` -/
def P17799300323012690679.Spec : Prop :=
  ∀ n, (P17799300323012690679.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P5441968165087064476

`A110591(floor(sqrt(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262438

/-- `A110591(floor(sqrt(n)))` -/
def P5441968165087064476.Spec : Prop :=
  ∀ n, P5441968165087064476.a n = A262438 n

theorem P5441968165087064476.correct : P5441968165087064476.Spec := by
  intro n
  simp only [A262438]

end A262438

/-! ## A262438.P11728015701659291370

`round(A110591(n)/2)`
-/

namespace A262438.P11728015701659291370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110591 n : ℚ) / 2)

end

end A262438.P11728015701659291370

namespace A262438

/-- `round(A110591(n)/2)` -/
def P11728015701659291370.Spec : Prop :=
  ∀ n, P11728015701659291370.a n = A262438 n

end A262438

/-! ## A262438.P13252945676371999017

`A070939(floor(sqrt(sqrt(n))))`
-/

namespace A262438.P13252945676371999017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋.toNat

end

end A262438.P13252945676371999017

namespace A262438

/-- `A070939(floor(sqrt(sqrt(n))))` -/
def P13252945676371999017.Spec : Prop :=
  ∀ n, P13252945676371999017.a n = A262438 n

end A262438

/-! ## A262438.P18037529463305192954

`∑[char[A007590(n)^4]]`
-/

namespace A262438.P18037529463305192954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n ^ 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P18037529463305192954

namespace A262438

/-- `∑[char[A007590(n)^4]]` -/
def P18037529463305192954.Spec : Prop :=
  ∀ n, (P18037529463305192954.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P6502295089659702877

`A326439(∑[char[4^n]])`
-/

namespace A262438.P6502295089659702877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262438.P6502295089659702877

namespace A262438

/-- `A326439(∑[char[4^n]])` -/
def P6502295089659702877.Spec : Prop :=
  ∀ n, P6502295089659702877.a n = A262438 n

end A262438

/-! ## A262438.P11288118414167425055

`∑[char[A151672(n+1)²]]`
-/

namespace A262438.P11288118414167425055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151672 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P11288118414167425055

namespace A262438

/-- `∑[char[A151672(n+1)²]]` -/
def P11288118414167425055.Spec : Prop :=
  ∀ n, (P11288118414167425055.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P6403180669677264009

`∑[char[A199572(n+2)²]]`
-/

namespace A262438.P6403180669677264009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199572 (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P6403180669677264009

namespace A262438

/-- `∑[char[A199572(n+2)²]]` -/
def P6403180669677264009.Spec : Prop :=
  ∀ n, (P6403180669677264009.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P17739939896993816447

`∑[char[(2*A109167(n))²²]]`
-/

namespace A262438.P17739939896993816447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A109167 n) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P17739939896993816447

namespace A262438

/-- `∑[char[(2*A109167(n))²²]]` -/
def P17739939896993816447.Spec : Prop :=
  ∀ n, (P17739939896993816447.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P6930514759475452194

`∑[char[A181501(n+4)²²]]`
-/

namespace A262438.P6930514759475452194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181501 (n + 4) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262438.P6930514759475452194

namespace A262438

/-- `∑[char[A181501(n+4)²²]]` -/
def P6930514759475452194.Spec : Prop :=
  ∀ n, (P6930514759475452194.a n : ℤ) = A262438 n

end A262438

/-! ## A262438.P16824895583220731883

`A110655(A070939(n))`
-/

namespace A262438.P16824895583220731883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A070939 n).toNat

end

end A262438.P16824895583220731883

namespace A262438

/-- `A110655(A070939(n))` -/
def P16824895583220731883.Spec : Prop :=
  ∀ n, P16824895583220731883.a n = A262438 n

end A262438

/-! ## A262438.P9341124502502957208

`A002265(A070939(n)+3)`
-/

namespace A262438.P9341124502502957208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A070939 n + 3).toNat

end

end A262438.P9341124502502957208

namespace A262438

/-- `A002265(A070939(n)+3)` -/
def P9341124502502957208.Spec : Prop :=
  ∀ n, P9341124502502957208.a n = A262438 n

end A262438

/-! ## A262438.P9125302763907202191

`A055642(floor(sqrt(A055645(n))))`
-/

namespace A262438.P9125302763907202191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.sqrt (A055645 n)).toNat

end

end A262438.P9125302763907202191

namespace A262438

/-- `A055642(floor(sqrt(A055645(n))))` -/
def P9125302763907202191.Spec : Prop :=
  ∀ n, P9125302763907202191.a n = A262438 n

end A262438

/-! ## A262438.P4825876808006186326

`floor(log2(A250895(n+1)/A250905(n+1)+1))+1`
-/

namespace A262438.P4825876808006186326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A250895 (n + 1) : ℚ) / (A250905 (n + 1) : ℚ) + 1 : ℝ)⌋ + 1

end

end A262438.P4825876808006186326

namespace A262438

/-- `floor(log2(A250895(n+1)/A250905(n+1)+1))+1` -/
def P4825876808006186326.Spec : Prop :=
  ∀ n, P4825876808006186326.a n = A262438 n

end A262438

/-!
# A262439: Number of primes not exceeding 1+n*(n+1)/2.

The programs for A262439, the canonical program `A262439.P16832177270364139549` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262439 has offset 1).

The definition of A262439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262439.P16832177270364139549

`A000720(∑[n+1]+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262439

/-- `A000720(∑[n+1]+1)` -/
def P16832177270364139549.Spec : Prop :=
  ∀ n, P16832177270364139549.a n = A262439 (n + 1)

theorem P16832177270364139549.correct : P16832177270364139549.Spec := by
  intro n
  simp only [A262439, Nat.add_sub_cancel]

end A262439

/-! ## A262439.P16822589569767228489

`record[A000720(A257504(n+2))]`
-/

namespace A262439.P16822589569767228489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A257504 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P16822589569767228489

namespace A262439

/-- `record[A000720(A257504(n+2))]` -/
def P16822589569767228489.Spec : Prop :=
  ∀ n, P16822589569767228489.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P11756791226175137907

`record[A000720(A114091(n+3))]`
-/

namespace A262439.P11756791226175137907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A114091 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P11756791226175137907

namespace A262439

/-- `record[A000720(A114091(n+3))]` -/
def P11756791226175137907.Spec : Prop :=
  ∀ n, P11756791226175137907.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P4520890864134718401

`record[A000720(A276954(n+3))]`
-/

namespace A262439.P4520890864134718401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A276954 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P4520890864134718401

namespace A262439

/-- `record[A000720(A276954(n+3))]` -/
def P4520890864134718401.Spec : Prop :=
  ∀ n, P4520890864134718401.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P2276264347067432746

`record[A000720(A000124(abs(1-n)))]`
-/

namespace A262439.P2276264347067432746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000124 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P2276264347067432746

namespace A262439

/-- `record[A000720(A000124(abs(1-n)))]` -/
def P2276264347067432746.Spec : Prop :=
  ∀ n, P2276264347067432746.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P16306723936462431565

`A000720(A134869(n+1))+C(2, n+2)`
-/

namespace A262439.P16306723936462431565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134869 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A262439.P16306723936462431565

namespace A262439

/-- `A000720(A134869(n+1))+C(2, n+2)` -/
def P16306723936462431565.Spec : Prop :=
  ∀ n, P16306723936462431565.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P12294857794495815079

`A000720(A134869(n+1))+A000007(n)`
-/

namespace A262439.P12294857794495815079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134869 (n + 1)).toNat + A000007 n

end

end A262439.P12294857794495815079

namespace A262439

/-- `A000720(A134869(n+1))+A000007(n)` -/
def P12294857794495815079.Spec : Prop :=
  ∀ n, P12294857794495815079.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P2455969871612626364

`A000720(A000124(n+1))%A070934(n)`
-/

namespace A262439.P2455969871612626364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A000124 (n + 1)).toNat) (A070934 n)

end

end A262439.P2455969871612626364

namespace A262439

/-- `A000720(A000124(n+1))%A070934(n)` -/
def P2455969871612626364.Spec : Prop :=
  ∀ n, P2455969871612626364.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P6950464659648762511

`record[A000720(A163528(n)+A163335(n)+2)]`
-/

namespace A262439.P6950464659648762511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A163528 n + A163335 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P6950464659648762511

namespace A262439

/-- `record[A000720(A163528(n)+A163335(n)+2)]` -/
def P6950464659648762511.Spec : Prop :=
  ∀ n, P6950464659648762511.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P14785404040795026601

`A000720(A000096(n)+2)%(A000096(n)+2)`
-/

namespace A262439.P14785404040795026601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A000096 n + 2).toNat) (A000096 n + 2)

end

end A262439.P14785404040795026601

namespace A262439

/-- `A000720(A000096(n)+2)%(A000096(n)+2)` -/
def P14785404040795026601.Spec : Prop :=
  ∀ n, P14785404040795026601.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P5025468965675636663

`record[A000720(A134519(n+1)-A132747(n+1)+1)]`
-/

namespace A262439.P5025468965675636663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134519 (n + 1) - A132747 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P5025468965675636663

namespace A262439

/-- `record[A000720(A134519(n+1)-A132747(n+1)+1)]` -/
def P5025468965675636663.Spec : Prop :=
  ∀ n, P5025468965675636663.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P18095037638492522594

`A000720(A000217(n+1)+1)%(A000217(n+1)+1)`
-/

namespace A262439.P18095037638492522594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A000217 (n + 1) + 1).toNat) (A000217 (n + 1) + 1)

end

end A262439.P18095037638492522594

namespace A262439

/-- `A000720(A000217(n+1)+1)%(A000217(n+1)+1)` -/
def P18095037638492522594.Spec : Prop :=
  ∀ n, P18095037638492522594.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P4693308753152938980

`∑[n+1]-A065855(∑[n+1]+1)`
-/

namespace A262439.P4693308753152938980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A065855 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A262439.P4693308753152938980

namespace A262439

/-- `∑[n+1]-A065855(∑[n+1]+1)` -/
def P4693308753152938980.Spec : Prop :=
  ∀ n, P4693308753152938980.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P5495135947728458027

`A099802(A039823(n+1))`
-/

namespace A262439.P5495135947728458027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A039823 (n + 1)).toNat

end

end A262439.P5495135947728458027

namespace A262439

/-- `A099802(A039823(n+1))` -/
def P5495135947728458027.Spec : Prop :=
  ∀ n, P5495135947728458027.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P6560210341163587162

`record[A061395(A114327(n)+2+n)]`
-/

namespace A262439.P6560210341163587162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A114327 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P6560210341163587162

namespace A262439

/-- `record[A061395(A114327(n)+2+n)]` -/
def P6560210341163587162.Spec : Prop :=
  ∀ n, P6560210341163587162.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P7718608239840042729

`A230980(∑[n+1]+1)`
-/

namespace A262439.P7718608239840042729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262439.P7718608239840042729

namespace A262439

/-- `A230980(∑[n+1]+1)` -/
def P7718608239840042729.Spec : Prop :=
  ∀ n, P7718608239840042729.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P3770667944532537393

`A033270(∑[n+1]+1)+1`
-/

namespace A262439.P3770667944532537393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A262439.P3770667944532537393

namespace A262439

/-- `A033270(∑[n+1]+1)+1` -/
def P3770667944532537393.Spec : Prop :=
  ∀ n, P3770667944532537393.a n = A262439 (n + 1)

end A262439

/-! ## A262439.P12767104645389248096

`record[A000720(n+2)/A077581(n+2)]`
-/

namespace A262439.P12767104645389248096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A077581 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P12767104645389248096

namespace A262439

/-- `record[A000720(n+2)/A077581(n+2)]` -/
def P12767104645389248096.Spec : Prop :=
  ∀ n, P12767104645389248096.a n = (A262439 (n + 1) : ℚ)

end A262439

/-! ## A262439.P15834618376407663303

`record[A000720(n+2)/A133819(n+2)]`
-/

namespace A262439.P15834618376407663303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A133819 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P15834618376407663303

namespace A262439

/-- `record[A000720(n+2)/A133819(n+2)]` -/
def P15834618376407663303.Spec : Prop :=
  ∀ n, P15834618376407663303.a n = (A262439 (n + 1) : ℚ)

end A262439

/-! ## A262439.P3208304560706343936

`record[A000720(n+2)/A038255(n)]`
-/

namespace A262439.P3208304560706343936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262439.P3208304560706343936

namespace A262439

/-- `record[A000720(n+2)/A038255(n)]` -/
def P3208304560706343936.Spec : Prop :=
  ∀ n, P3208304560706343936.a n = (A262439 (n + 1) : ℚ)

end A262439

/-!
# A262440: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k-1,n-k).

The programs for A262440, there is no canonical definition to state claims against.
-/

/-! ## A262440.P10209843126870010300

`A115990(abs(A056220(n)))`
-/

namespace A262440.P10209843126870010300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 |A056220 n|.toNat

end

end A262440.P10209843126870010300

/-! ## A262440.P10668077316001317810

`A099602(A004273(n²))`
-/

namespace A262440.P10668077316001317810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099602 (A004273 (n ^ 2)).toNat

end

end A262440.P10668077316001317810

/-! ## A262440.P8897745250990678399

`A115990(A163985(n²))`
-/

namespace A262440.P8897745250990678399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (A163985 (n ^ 2)).toNat

end

end A262440.P8897745250990678399

/-! ## A262440.P1766074215243636609

`A115990(abs(1-A001105(n)))`
-/

namespace A262440.P1766074215243636609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 |1 - A001105 n|.toNat

end

end A262440.P1766074215243636609

/-! ## A262440.P4402380311352267171

`A115990(A056220(n)%A005408(n²))`
-/

namespace A262440.P4402380311352267171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (Int.tmod (A056220 n) (A005408 (n ^ 2))).toNat

end

end A262440.P4402380311352267171

/-! ## A262440.P8951158857120278887

`A115990(char[A115990(n)]*A056220(n))`
-/

namespace A262440.P8951158857120278887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056220 n).toNat

end

end A262440.P8951158857120278887

/-! ## A262440.P17228104566861408105

`A115990(lcm(1-A001105(n), A087960(n)))`
-/

namespace A262440.P17228104566861408105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (Int.lcm (1 - A001105 n) (A087960 n))

end

end A262440.P17228104566861408105

/-!
# A262441: a(n) = Sum_{k=0..n+1}(binomial(n-1,k)/(k+1)*binomial(n+k+1,n-k)).

The programs for A262441, there is no canonical definition to state claims against.
-/

/-! ## A262441.P15625886198940922318

`A109081(n+1)+A106228(n)-A000007(n)`
-/

namespace A262441.P15625886198940922318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) + (A106228 n - A000007 n)

end

end A262441.P15625886198940922318

/-! ## A262441.P4915288993539905068

`A109081(n+1)+A057427(n)*A106228(n)`
-/

namespace A262441.P4915288993539905068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) + A057427 n * A106228 n

end

end A262441.P4915288993539905068

/-! ## A262441.P15001269165371090372

`A106228(n)+A371724(n)-A106228(n+1)`
-/

namespace A262441.P15001269165371090372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n + (A371724 n - A106228 (n + 1))

end

end A262441.P15001269165371090372

/-! ## A262441.P16248668276939196863

`A109081(n+2)+A371724(n)-A370891(n)`
-/

namespace A262441.P16248668276939196863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 2) + (A371724 n - A370891 n)

end

end A262441.P16248668276939196863

/-! ## A262441.P9171619698768811102

`A106228(n)+A109081(n+1)%A082759(n)`
-/

namespace A262441.P9171619698768811102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n + Int.tmod (A109081 (n + 1)) (A082759 n)

end

end A262441.P9171619698768811102

/-! ## A262441.P6791738102837342706

`A109081(n+1)+A106228(n)-(2-A132749(∑[n]))`
-/

namespace A262441.P6791738102837342706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) + (A106228 n - (2 - A132749 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A262441.P6791738102837342706

/-! ## A262441.P5182902027450447308

`A109081(n+1)+A106228(n)%A349017(n)`
-/

namespace A262441.P5182902027450447308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) + Int.tmod (A106228 n) (A349017 n)

end

end A262441.P5182902027450447308

/-!
# A262442: a(n) = Sum_{k=0..n}(binomial(n-1,n-k)*binomial(n+k-1,n-k)).

The programs for A262442, there is no canonical definition to state claims against.
-/

/-! ## A262442.P12911025159851334259

`A253273((n-1)*2*n)`
-/

namespace A262442.P12911025159851334259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253273 (((n : ℤ) - 1) * (2 * n : ℤ)).toNat

end

end A262442.P12911025159851334259

/-! ## A262442.P2597206431417767265

`A115990(2*n²)`
-/

namespace A262442.P2597206431417767265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (2 * n ^ 2)

end

end A262442.P2597206431417767265

/-! ## A262442.P1528371531696793874

`xor(n, xor(n, A115990(A001105(n))))`
-/

namespace A262442.P1528371531696793874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A115990 (A001105 n).toNat))

end

end A262442.P1528371531696793874

/-! ## A262442.P14315115538789901830

`lcm(A087960(n), A115990(A001105(n)))`
-/

namespace A262442.P14315115538789901830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A115990 (A001105 n).toNat)

end

end A262442.P14315115538789901830

/-! ## A262442.P7900791177161646317

`A115990(A001105(n))^(A108411(n)%2)`
-/

namespace A262442.P7900791177161646317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115990 (A001105 n).toNat : ℚ) ^ (Int.tmod (A108411 n) 2 : ℤ)

end

end A262442.P7900791177161646317

/-! ## A262442.P7311596294398208863

`A115990(A001105(n))/gcd(n, A020639(n+1))`
-/

namespace A262442.P7311596294398208863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115990 (A001105 n).toNat : ℚ) / (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℚ)

end

end A262442.P7311596294398208863

/-! ## A262442.P9343899784136649

`A115990(A001105(n))%A055321(n)`
-/

namespace A262442.P9343899784136649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115990 (A001105 n).toNat) (A055321 (n + 10))

end

end A262442.P9343899784136649

/-!
# A262444: Number of 3-colored integer partitions such that no adjacent parts have the same color.

The programs for A262444, there is no canonical definition to state claims against.
-/

/-! ## A262444.P7156493210813232076

`floor(3*A070933(n)/2)`
-/

namespace A262444.P7156493210813232076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A070933 n : ℚ) / 2)⌋

end

end A262444.P7156493210813232076

/-! ## A262444.P1544037480820431129

`A122553(n)*A323583(n)`
-/

namespace A262444.P1544037480820431129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A323583 n

end

end A262444.P1544037480820431129

/-! ## A262444.P18204149053859353835

`2*A070933(n)-A323583(n)`
-/

namespace A262444.P18204149053859353835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070933 n - A323583 n

end

end A262444.P18204149053859353835

/-! ## A262444.P6396060603514008536

`p?[A039702(n+1)]/2*A070933(n)`
-/

namespace A262444.P6396060603514008536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2 * (A070933 n : ℚ)

end

end A262444.P6396060603514008536

/-! ## A262444.P11528062930837317290

`A008458(n)/A008574(n)*A070933(n)`
-/

namespace A262444.P11528062930837317290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008574 n : ℚ) * (A070933 n : ℚ)

end

end A262444.P11528062930837317290

/-! ## A262444.P7719710855254415536

`A070933(n)/2*A006530(2*A132171(n))`
-/

namespace A262444.P7719710855254415536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070933 n : ℚ) / 2 * (A006530 (2 * A132171 n).toNat : ℚ)

end

end A262444.P7719710855254415536

/-!
# A262445: Number of exact 3-colored partitions such that no adjacent parts have the same color.

The programs for A262445, there is no canonical definition to state claims against.
-/

/-! ## A262445.P8630762224115250181

`6*A102705(C(n, 3))`
-/

namespace A262445.P8630762224115250181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A102705 (Nat.choose n 3)

end

end A262445.P8630762224115250181

/-! ## A262445.P4085531380538959135

`A165033(C(n², round(sqrt(n))))`
-/

namespace A262445.P4085531380538959135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (Nat.choose (n ^ 2) (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat)

end

end A262445.P4085531380538959135

/-! ## A262445.P3091028000096768108

`3*A118766(A074352(n))`
-/

namespace A262445.P3091028000096768108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A118766 (A074352 n).toNat

end

end A262445.P3091028000096768108

/-!
# A262446: Number of ways to write A262439(n) = A262439(k) + A262439(m) with 0 < k < m < n.

The programs for A262446, there is no canonical definition to state claims against.
-/

/-! ## A262446.P14970067443088748376

`A129985(A258000(n+1))`
-/

namespace A262446.P14970067443088748376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129985 (A258000 (n + 1)).toNat

end

end A262446.P14970067443088748376

/-! ## A262446.P13368427405764035904

`A001221(A177487(n+1)-A302293(n+1))`
-/

namespace A262446.P13368427405764035904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A177487 (n + 1) - A302293 (n + 1)).toNat

end

end A262446.P13368427405764035904

/-! ## A262446.P16155022779244650450

`A001221(A242447(2*(n+2))+A112577(n))`
-/

namespace A262446.P16155022779244650450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A242447 (2 * (n + 2)) + A112577 n).toNat

end

end A262446.P16155022779244650450

/-! ## A262446.P8214504645181662917

`A008621(n)-A035614(A035614(A167332(n+1)))`
-/

namespace A262446.P8214504645181662917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A035614 (A035614 (A167332 (n + 1)).toNat).toNat

end

end A262446.P8214504645181662917

/-! ## A262446.P6281677059934824275

`A037871(A244164(n+1)+A037915(n))`
-/

namespace A262446.P6281677059934824275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A244164 (n + 1) + A037915 n).toNat

end

end A262446.P6281677059934824275

/-!
# A262447: Primes p such that pi(p^2) = pi(q^2) + pi(r^2) for some distinct primes q and r.

The programs for A262447, there is no canonical definition to state claims against.
-/

/-! ## A262447.P14962197113271447246

`A265771(A001358(3*n+4)-A340623(n))`
-/

namespace A262447.P14962197113271447246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265771 (A001358 (3 * n + 4) - A340623 n).toNat

end

end A262447.P14962197113271447246

/-!
# A262448: Triangle read by rows giving successive states of cellular automaton generated by "Rule 73" initiated with a single ON (black) cell.

The programs for A262448, there is no canonical definition to state claims against.
-/

/-! ## A262448.P9299974378808401231

`A189920(abs(A126593(n+1)-A224524(n+1)))`
-/

namespace A262448.P9299974378808401231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189920 |A126593 (n + 1) - A224524 (n + 1)|.toNat

end

end A262448.P9299974378808401231

/-! ## A262448.P2205687083993907596

`A000035(A243057(n+1))*A000035(A054519(n)²)`
-/

namespace A262448.P2205687083993907596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A243057 (n + 1)).toNat * A000035 (A054519 n ^ 2).toNat

end

end A262448.P2205687083993907596

/-! ## A262448.P15517681132803313780

`A005091(A280286(n+3))`
-/

namespace A262448.P15517681132803313780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A280286 (n + 3)).toNat

end

end A262448.P15517681132803313780

/-! ## A262448.P5879725795675364873

`A000035(lcm(A054519(n), A243057(n+1)))`
-/

namespace A262448.P5879725795675364873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm (A054519 n) (A243057 (n + 1)))

end

end A262448.P5879725795675364873

/-! ## A262448.P3629538100654226316

`A005171(A283170(n)+A115124(n))`
-/

namespace A262448.P3629538100654226316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A283170 n + A115124 n).toNat

end

end A262448.P3629538100654226316

/-!
# A262449: Number of (n+3) X (n+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262449, there is no canonical definition to state claims against.
-/

/-! ## A262449.P5811854997803363165

`A262457(∑[4*n]+1)`
-/

namespace A262449.P5811854997803363165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262449.P5811854997803363165

/-! ## A262449.P12073930852934708160

`record[A262457(Δ[A235355(n)])]`
-/

namespace A262449.P12073930852934708160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262449.P12073930852934708160

/-! ## A262449.P6531340005647951733

`record[A262457(A330613(n+1))]`
-/

namespace A262449.P6531340005647951733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262449.P6531340005647951733

/-!
# A262450: Number of (n+3) X (1+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262450, the canonical program `A262450.P8356931673989803091` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262450 has offset 1).

The definition of A262450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262450.P8356931673989803091

`floor((2^(n+4)+14)/15)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262450

/-- `floor((2^(n+4)+14)/15)` -/
def P8356931673989803091.Spec : Prop :=
  ∀ n, P8356931673989803091.a n = A262450 (n + 1)

theorem P8356931673989803091.correct : P8356931673989803091.Spec := by
  intro n
  simp only [A262450, Nat.add_sub_cancel]

end A262450

/-! ## A262450.P18032415191160631829

`2*a(n-1)-(n/gcd(2, n))%2` with `a(0)=2`
-/

namespace A262450.P18032415191160631829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))) 2

end

end A262450.P18032415191160631829

namespace A262450

/-- `2*a(n-1)-(n/gcd(2, n))%2` -/
def P18032415191160631829.Spec : Prop :=
  ∀ n, P18032415191160631829.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P16778734962841225966

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=9, a(4)=18`
-/

namespace A262450.P16778734962841225966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 9, 18] fun n a =>
  2 * a (n - 1) + a (n - 4) - 2 * a (n - 5)

end

end A262450.P16778734962841225966

namespace A262450

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P16778734962841225966.Spec : Prop :=
  ∀ n, P16778734962841225966.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P12688310647824949526

`A083593(n)+1`
-/

namespace A262450.P12688310647824949526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083593 n + 1

end

end A262450.P12688310647824949526

namespace A262450

/-- `A083593(n)+1` -/
def P12688310647824949526.Spec : Prop :=
  ∀ n, P12688310647824949526.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P5262474340568005047

`∑[A115451(n)]+1`
-/

namespace A262450.P5262474340568005047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262450.P5262474340568005047

namespace A262450

/-- `∑[A115451(n)]+1` -/
def P5262474340568005047.Spec : Prop :=
  ∀ n, P5262474340568005047.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P10238635826065364770

`∑[A040056(n)%3*A115451(n)]`
-/

namespace A262450.P10238635826065364770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040056 n) 3 * A115451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262450.P10238635826065364770

namespace A262450

/-- `∑[A040056(n)%3*A115451(n)]` -/
def P10238635826065364770.Spec : Prop :=
  ∀ n, P10238635826065364770.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P10551075601451168182

`∑[A115451(A075884(A008574(n)))]`
-/

namespace A262450.P10551075601451168182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 (A075884 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262450.P10551075601451168182

namespace A262450

/-- `∑[A115451(A075884(A008574(n)))]` -/
def P10551075601451168182.Spec : Prop :=
  ∀ n, P10551075601451168182.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P12496691779992587591

`∑[abs(A077931(n))]+1`
-/

namespace A262450.P12496691779992587591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077931 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262450.P12496691779992587591

namespace A262450

/-- `∑[abs(A077931(n))]+1` -/
def P12496691779992587591.Spec : Prop :=
  ∀ n, P12496691779992587591.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P12941372500409701154

`and(A052997(n), A262864(n))+1`
-/

namespace A262450.P12941372500409701154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052997 n) (A262864 n) + 1

end

end A262450.P12941372500409701154

namespace A262450

/-- `and(A052997(n), A262864(n))+1` -/
def P12941372500409701154.Spec : Prop :=
  ∀ n, P12941372500409701154.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P11029454694627368864

`and(A077854(n), A262864(n))+1`
-/

namespace A262450.P11029454694627368864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A262864 n) + 1

end

end A262450.P11029454694627368864

namespace A262450

/-- `and(A077854(n), A262864(n))+1` -/
def P11029454694627368864.Spec : Prop :=
  ∀ n, P11029454694627368864.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P18107204519578498408

`and(A077854(n), A267045(n))+1`
-/

namespace A262450.P18107204519578498408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A267045 n) + 1

end

end A262450.P18107204519578498408

namespace A262450

/-- `and(A077854(n), A267045(n))+1` -/
def P18107204519578498408.Spec : Prop :=
  ∀ n, P18107204519578498408.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P11438434979765773099

`and(A077854(n), A283216(n))+1`
-/

namespace A262450.P11438434979765773099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A283216 n) + 1

end

end A262450.P11438434979765773099

namespace A262450

/-- `and(A077854(n), A283216(n))+1` -/
def P11438434979765773099.Spec : Prop :=
  ∀ n, P11438434979765773099.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P7865418625481032861

`and(A262864(n), A265381(n))+1`
-/

namespace A262450.P7865418625481032861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262864 n) (A265381 n) + 1

end

end A262450.P7865418625481032861

namespace A262450

/-- `and(A262864(n), A265381(n))+1` -/
def P7865418625481032861.Spec : Prop :=
  ∀ n, P7865418625481032861.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P2665053032810485335

`and(A262864(n), A267045(n))+1`
-/

namespace A262450.P2665053032810485335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262864 n) (A267045 n) + 1

end

end A262450.P2665053032810485335

namespace A262450

/-- `and(A262864(n), A267045(n))+1` -/
def P2665053032810485335.Spec : Prop :=
  ∀ n, P2665053032810485335.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P14685957437597318339

`and(A262864(n), A281216(n))+1`
-/

namespace A262450.P14685957437597318339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262864 n) (A281216 n) + 1

end

end A262450.P14685957437597318339

namespace A262450

/-- `and(A262864(n), A281216(n))+1` -/
def P14685957437597318339.Spec : Prop :=
  ∀ n, P14685957437597318339.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P3935439151215979833

`ceil(A262267(n+2)/3)`
-/

namespace A262450.P3935439151215979833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262267 (n + 2) : ℚ) / 3⌉

end

end A262450.P3935439151215979833

namespace A262450

/-- `ceil(A262267(n+2)/3)` -/
def P3935439151215979833.Spec : Prop :=
  ∀ n, P3935439151215979833.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P3009491779896117558

`ceil(A128209(n+4)/5)`
-/

namespace A262450.P3009491779896117558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128209 (n + 4) : ℚ) / 5⌉

end

end A262450.P3009491779896117558

namespace A262450

/-- `ceil(A128209(n+4)/5)` -/
def P3009491779896117558.Spec : Prop :=
  ∀ n, P3009491779896117558.a n = A262450 (n + 1)

end A262450

/-! ## A262450.P8442074338818486526

`ceil(A130759(n+4)/10)`
-/

namespace A262450.P8442074338818486526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130759 (n + 4) : ℚ) / 10⌉

end

end A262450.P8442074338818486526

namespace A262450

/-- `ceil(A130759(n+4)/10)` -/
def P8442074338818486526.Spec : Prop :=
  ∀ n, P8442074338818486526.a n = A262450 (n + 1)

end A262450

/-!
# A262451: Number of (n+3)X(2+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262451, there is no canonical definition to state claims against.
-/

/-! ## A262451.P2331708124675014393

`A262457(∑[n+1]+2)`
-/

namespace A262451.P2331708124675014393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262451.P2331708124675014393

/-! ## A262451.P4139562028725095583

`record[A010054(n)*A262457(n+2)]`
-/

namespace A262451.P4139562028725095583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A262457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262451.P4139562028725095583

/-! ## A262451.P188799034627536485

`record[A262457(n+3)/A046527(n)]`
-/

namespace A262451.P188799034627536485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262457 (n + 3) : ℚ) / (A046527 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262451.P188799034627536485

/-! ## A262451.P536697304787229289

`record[root(A262457(n+3), A039599(n))]`
-/

namespace A262451.P536697304787229289
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262457 (n + 3) : ℝ) ^ (1 / (A039599 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262451.P536697304787229289

/-! ## A262451.P17545237569581640698

`record[gcd(A025581(n), A262457(n+3))]`
-/

namespace A262451.P17545237569581640698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A262457 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262451.P17545237569581640698

/-!
# A262452: Number of (n+3) X (3+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262452, there is no canonical definition to state claims against.
-/

/-! ## A262452.P5917640508368553128

`A262457(∑[n+2]+4)`
-/

namespace A262452.P5917640508368553128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262452.P5917640508368553128

/-! ## A262452.P14415670729493154516

`or(1, A262457(A167614(n+1)))`
-/

namespace A262452.P14415670729493154516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262457 (A167614 (n + 1)).toNat)

end

end A262452.P14415670729493154516

/-! ## A262452.P16087886959909688695

`record[A262457(n+4)/A048471(n)]`
-/

namespace A262452.P16087886959909688695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262457 (n + 4) : ℚ) / (A048471 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262452.P16087886959909688695

/-! ## A262452.P15401970845994944934

`record[A262457(n+4)/A125906(n)]`
-/

namespace A262452.P15401970845994944934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262457 (n + 4) : ℚ) / (A125906 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262452.P15401970845994944934

/-! ## A262452.P3390728899585356138

`A262457(A167614(n+1))+A011742(n)`
-/

namespace A262452.P3390728899585356138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A167614 (n + 1)).toNat + A011742 n

end

end A262452.P3390728899585356138

/-!
# A262453: Number of (n+3)X(4+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262453, there is no canonical definition to state claims against.
-/

/-! ## A262453.P14882561183485786145

`A262457(∑[n+3]+7)`
-/

namespace A262453.P14882561183485786145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A262453.P14882561183485786145

/-! ## A262453.P13762818501973949166

`A262457(A027379(n+2))+A080224(n+1)`
-/

namespace A262453.P13762818501973949166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A027379 (n + 2)).toNat + A080224 (n + 1)

end

end A262453.P13762818501973949166

/-!
# A262454: Number of (n+3) X (5+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262454, there is no canonical definition to state claims against.
-/

/-! ## A262454.P14750454398064618380

`A262457(A374005(n+1))`
-/

namespace A262454.P14750454398064618380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A374005 (n + 1)).toNat

end

end A262454.P14750454398064618380

/-! ## A262454.P557041523274123290

`A262457(A167499(n+3))`
-/

namespace A262454.P557041523274123290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A167499 (n + 3)).toNat

end

end A262454.P557041523274123290

/-! ## A262454.P16930902823176640743

`A262457(A077169(n+5))`
-/

namespace A262454.P16930902823176640743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A077169 (n + 5)).toNat

end

end A262454.P16930902823176640743

/-! ## A262454.P5487967111331678877

`A262457(A155212(n)+13)`
-/

namespace A262454.P5487967111331678877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A155212 n + 13).toNat

end

end A262454.P5487967111331678877

/-! ## A262454.P8481305212515902888

`A262457(A056000(n)+15)`
-/

namespace A262454.P8481305212515902888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A056000 n + 15).toNat

end

end A262454.P8481305212515902888

/-!
# A262455: Number of (n+3)X(6+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262455, there is no canonical definition to state claims against.
-/

/-! ## A262455.P12048155028258700971

`A262457(A374007(n+1))`
-/

namespace A262455.P12048155028258700971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A374007 (n + 1)).toNat

end

end A262455.P12048155028258700971

/-! ## A262455.P13376836613586941831

`A262457(A167499(n+4)+1)`
-/

namespace A262455.P13376836613586941831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A167499 (n + 4) + 1).toNat

end

end A262455.P13376836613586941831

/-! ## A262455.P4640285498969593914

`A262457(A167614(n+4)+3)`
-/

namespace A262455.P4640285498969593914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A167614 (n + 4) + 3).toNat

end

end A262455.P4640285498969593914

/-! ## A262455.P8724789516250972938

`A262457(A000124(n+5)+5)`
-/

namespace A262455.P8724789516250972938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A000124 (n + 5) + 5).toNat

end

end A262455.P8724789516250972938

/-! ## A262455.P10526011429551426840

`A262457(A000217(n+5)+6)`
-/

namespace A262455.P10526011429551426840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A000217 (n + 5) + 6).toNat

end

end A262455.P10526011429551426840

/-!
# A262456: Number of (n+3)X(7+3) 0..1 arrays with each row and column divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A262456, there is no canonical definition to state claims against.
-/

/-! ## A262456.P154857523636809872

`A262457(C(n+8, 2)-n)`
-/

namespace A262456.P154857523636809872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (Nat.choose (n + 8) 2 - n)

end

end A262456.P154857523636809872

/-! ## A262456.P9363602944560726112

`A262457(A374008(n+1))`
-/

namespace A262456.P9363602944560726112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A374008 (n + 1)).toNat

end

end A262456.P9363602944560726112

/-! ## A262456.P13943155411864805595

`A262457(A055999(n+4))`
-/

namespace A262456.P13943155411864805595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A055999 (n + 4)).toNat

end

end A262456.P13943155411864805595

/-! ## A262456.P8692234536303039851

`A262457(A056119(n)+28)`
-/

namespace A262456.P8692234536303039851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262457 (A056119 n + 28).toNat

end

end A262456.P8692234536303039851

/-!
# A262458: Number of possible conjunction tables in the n-valued logics.

The programs for A262458, the canonical program `A262458.P6764619343836252043` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262458 has offset 1).

The definition of A262458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262458.P6764619343836252043

`n^((n+1)²-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262458

/-- `n^((n+1)²-1)` -/
def P6764619343836252043.Spec : Prop :=
  ∀ n, P6764619343836252043.a n = (A262458 (n + 1) : ℚ)

end A262458

/-! ## A262458.P6056580978825796747

`(sqrt(n^(n+2))^dr(n))²`
-/

namespace A262458.P6056580978825796747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (n ^ (n + 2) : ℝ) ^ SequenceMachineLib.digitalRoot (n : ℤ)) ^ 2

end

end A262458.P6056580978825796747

namespace A262458

/-- `(sqrt(n^(n+2))^dr(n))²` -/
def P6056580978825796747.Spec : Prop :=
  ∀ n, P6056580978825796747.a n = (A262458 (n + 1) : ℝ)

end A262458

/-!
# A262459: 

The programs for A262459, there is no canonical definition to state claims against.
-/

/-! ## A262459.P14918784156348806800

`A076728(n+1)*A262458(n+1)`
-/

namespace A262459.P14918784156348806800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076728 (n + 1) * A262458 (n + 1)

end

end A262459.P14918784156348806800

/-!
# A262461: Inverse permutation to A262460.

The programs for A262461, there is no canonical definition to state claims against.
-/

/-! ## A262461.P14190436579288930428

`A060594(2^n)+4*n`
-/

namespace A262461.P14190436579288930428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (2 ^ n) + (4 * n : ℤ)

end

end A262461.P14190436579288930428

/-! ## A262461.P13730823432348842784

`A131295(A087522(n))+4*n`
-/

namespace A262461.P13730823432348842784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 (A087522 n).toNat + (4 * n : ℤ)

end

end A262461.P13730823432348842784

/-! ## A262461.P11479782119205332834

`A050430(A215253(n+1))+4*n`
-/

namespace A262461.P11479782119205332834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A215253 (n + 1)).toNat + (4 * n : ℤ)

end

end A262461.P11479782119205332834

/-! ## A262461.P8874415891334077251

`A280696(A000079(n))+A008586(n)`
-/

namespace A262461.P8874415891334077251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280696 (A000079 n).toNat + A008586 n

end

end A262461.P8874415891334077251

/-! ## A262461.P11507956081964178583

`A211000(A000079(n))+A076600(3*n)`
-/

namespace A262461.P11507956081964178583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211000 (A000079 n).toNat + A076600 (3 * n)

end

end A262461.P11507956081964178583

/-!
# A262462: Positive integers k with pi(k^3) a square, where pi(x) denotes the number of primes not exceeding x.

The programs for A262462, there is no canonical definition to state claims against.
-/

/-! ## A262462.P4108530526844662256

`record[(n-1)*A117254(n)+2]`
-/

namespace A262462.P4108530526844662256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A117254 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262462.P4108530526844662256

/-!
# A262464: Indices of rows of triangle A262432 where the maximum term of the row is a new record.

The programs for A262464, there is no canonical definition to state claims against.
-/

/-! ## A262464.P16610018641771898982

`A304231(A002623(n)-A014306(n))`
-/

namespace A262464.P16610018641771898982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (A002623 n - A014306 n).toNat

end

end A262464.P16610018641771898982

/-! ## A262464.P12722532585649105902

`or(A000005(A081901(n)), A002939(n))`
-/

namespace A262464.P12722532585649105902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A081901 n).toNat) (A002939 n)

end

end A262464.P12722532585649105902

/-! ## A262464.P4724581934235824639

`A274829(A299257(n)-A001065(n+1))`
-/

namespace A262464.P4724581934235824639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (A299257 n - A001065 (n + 1)).toNat

end

end A262464.P4724581934235824639

/-!
# A262465: Number of (n+1) X (n+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262465, there is no canonical definition to state claims against.
-/

/-! ## A262465.P11622849481962086734

`A262472(∑[4*n]+1)`
-/

namespace A262465.P11622849481962086734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262465.P11622849481962086734

/-! ## A262465.P3461369949392541455

`record[A262472(Δ[A235355(n)])]`
-/

namespace A262465.P3461369949392541455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262465.P3461369949392541455

/-! ## A262465.P16618257512772122187

`record[A262472(A330613(n+1))]`
-/

namespace A262465.P16618257512772122187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262465.P16618257512772122187

/-!
# A262466: Number of (n+1) X (2+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262466, there is no canonical definition to state claims against.
-/

/-! ## A262466.P12784721037931178027

`A262472(∑[n+2])`
-/

namespace A262466.P12784721037931178027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262466.P12784721037931178027

/-! ## A262466.P515114141479401511

`or(1, A262472(A000096(n+1)))`
-/

namespace A262466.P515114141479401511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262472 (A000096 (n + 1)).toNat)

end

end A262466.P515114141479401511

/-! ## A262466.P142775818424211673

`record[gcd(A008290(n), A262472(n+1))]`
-/

namespace A262466.P142775818424211673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A262472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262466.P142775818424211673

/-! ## A262466.P4788104035132004281

`record[gcd(A098825(n), A262759(n+1))]`
-/

namespace A262466.P4788104035132004281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A262759 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262466.P4788104035132004281

/-! ## A262466.P8519831164211672456

`record[gcd(A131689(n), A262759(n+2))]`
-/

namespace A262466.P8519831164211672456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131689 n) (A262759 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262466.P8519831164211672456

/-!
# A262467: Number of (n+1)X(3+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262467, there is no canonical definition to state claims against.
-/

/-! ## A262467.P7691301719830857335

`A262472(∑[n+3]+1)`
-/

namespace A262467.P7691301719830857335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262467.P7691301719830857335

/-! ## A262467.P16118916679582289008

`record[A262472(A069981(n)+1)]`
-/

namespace A262467.P16118916679582289008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A069981 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262467.P16118916679582289008

/-! ## A262467.P15932303984519470776

`record[A262472(gcd(n, A092921(n+1)))]`
-/

namespace A262467.P15932303984519470776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (Int.gcd (n : ℤ) (A092921 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262467.P15932303984519470776

/-! ## A262467.P13720539299636507338

`record[A023531(n+2)*A262472(n+1)]`
-/

namespace A262467.P13720539299636507338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A262472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262467.P13720539299636507338

/-! ## A262467.P8510685624487906073

`record[A262472(n+1)-A319600(n+3)]`
-/

namespace A262467.P8510685624487906073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (n + 1) - A319600 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262467.P8510685624487906073

/-!
# A262468: Number of (n+1)X(4+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262468, there is no canonical definition to state claims against.
-/

/-! ## A262468.P8264969342359311221

`A262472(∑[n+4]+3)`
-/

namespace A262468.P8264969342359311221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A262468.P8264969342359311221

/-! ## A262468.P10059567941186800679

`A307637(n)+A262472(A307681(n+7))`
-/

namespace A262468.P10059567941186800679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307637 n + A262472 (A307681 (n + 7)).toNat

end

end A262468.P10059567941186800679

/-!
# A262469: Number of (n+1)X(5+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262469, there is no canonical definition to state claims against.
-/

/-! ## A262469.P10683890613134006034

`A262472(Δ[A264443(n)])`
-/

namespace A262469.P10683890613134006034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (f1 (n + 1) - f1 n).toNat

end

end A262469.P10683890613134006034

/-! ## A262469.P3860764467986590850

`A262472(A046691(n+3))`
-/

namespace A262469.P3860764467986590850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A046691 (n + 3)).toNat

end

end A262469.P3860764467986590850

/-! ## A262469.P974570315710376157

`A262472(A056115(n)+11)`
-/

namespace A262469.P974570315710376157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A056115 n + 11).toNat

end

end A262469.P974570315710376157

/-! ## A262469.P4726454971935572898

`A262472(eq[2, A092921(n)])`
-/

namespace A262469.P4726454971935572898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262469.P4726454971935572898

/-! ## A262469.P14507436913750791996

`A262472(eq[3, A152157(n)])`
-/

namespace A262469.P14507436913750791996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262469.P14507436913750791996

/-!
# A262470: Number of (n+1)X(6+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262470, there is no canonical definition to state claims against.
-/

/-! ## A262470.P1777259984830836308

`A262472(Δ[n²]+∑[n+4]+11)`
-/

namespace A262470.P1777259984830836308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 11 : ℕ) : ℤ)).toNat

end

end A262470.P1777259984830836308

/-! ## A262470.P14885179155982909406

`abs(A262472(A000217(n+6)-5)-n)+n`
-/

namespace A262470.P14885179155982909406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262472 (A000217 (n + 6) - 5).toNat - (n : ℤ)| + (n : ℤ)

end

end A262470.P14885179155982909406

/-! ## A262470.P2775188987635704376

`A262472(A052905(n+3))+A134309(3*n+4)`
-/

namespace A262470.P2775188987635704376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A052905 (n + 3)).toNat + A134309 (3 * n + 4)

end

end A262470.P2775188987635704376

/-! ## A262470.P8839643659889057371

`A262472(A052905(n+3))%A346627(3*(n+1))`
-/

namespace A262470.P8839643659889057371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262472 (A052905 (n + 3)).toNat) (A346627 (3 * (n + 1)))

end

end A262470.P8839643659889057371

/-!
# A262471: Number of (n+1)X(7+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262471, there is no canonical definition to state claims against.
-/

/-! ## A262471.P13492285267442606714

`A262472(A055999(n+4))`
-/

namespace A262471.P13492285267442606714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A055999 (n + 4)).toNat

end

end A262471.P13492285267442606714

/-! ## A262471.P4082315048290280947

`A262472(A168106(n)-6)`
-/

namespace A262471.P4082315048290280947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A168106 n - 6).toNat

end

end A262471.P4082315048290280947

/-! ## A262471.P9853398775926525316

`A262472(eq[4, A219347(n)])`
-/

namespace A262471.P9853398775926525316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262471.P9853398775926525316

/-! ## A262471.P8138800523076069058

`A262472(eq[5, A332954(n)])`
-/

namespace A262471.P8138800523076069058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262471.P8138800523076069058

/-!
# A262472: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262472, there is no canonical definition to state claims against.
-/

/-! ## A262472.P17408409799836677554

`A000005(A279394(n+1)^A070230(n+1))`
-/

namespace A262472.P17408409799836677554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A279394 (n + 1) : ℚ) ^ (A070230 (n + 1) : ℤ))).toNat

end

end A262472.P17408409799836677554

/-! ## A262472.P11382431878892468006

`A000005(A322263(n+1)^A070230(n+1))`
-/

namespace A262472.P11382431878892468006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A322263 (n + 1) : ℚ) ^ (A070230 (n + 1) : ℤ))).toNat

end

end A262472.P11382431878892468006

/-! ## A262472.P10301506189533437509

`A070939(lcm(A213709(n), A269944(n)))`
-/

namespace A262472.P10301506189533437509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lcm (A213709 n) (A269944 n))

end

end A262472.P10301506189533437509

/-! ## A262472.P7256011949115108940

`A070939(A094665(n)*A284222(n+1))`
-/

namespace A262472.P7256011949115108940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A094665 n * A284222 (n + 1)).toNat

end

end A262472.P7256011949115108940

/-!
# A262473: Number of (3+1) X (n+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262473, the canonical program `A262473.P17157077912472423069` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262473 has offset 1).

The definition of A262473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262473.P17157077912472423069

`ceil(2^(n+2)/3)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262473

/-- `ceil(2^(n+2)/3)²` -/
def P17157077912472423069.Spec : Prop :=
  ∀ n, P17157077912472423069.a n = A262473 (n + 1)

theorem P17157077912472423069.correct : P17157077912472423069.Spec := by
  intro n
  simp only [A262473, Nat.add_sub_cancel]

end A262473

/-! ## A262473.P14039725729629987932

`A005578(n+2)^2`
-/

namespace A262473.P14039725729629987932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 2) ^ 2

end

end A262473.P14039725729629987932

namespace A262473

/-- `A005578(n+2)^2` -/
def P14039725729629987932.Spec : Prop :=
  ∀ n, P14039725729629987932.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P6662637107159673708

`Δ[A086445(n+1)]^2`
-/

namespace A262473.P6662637107159673708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A262473.P6662637107159673708

namespace A262473

/-- `Δ[A086445(n+1)]^2` -/
def P6662637107159673708.Spec : Prop :=
  ∀ n, P6662637107159673708.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P9332206531857675249

`∏[ratio[A005578(n+1)]²]`
-/

namespace A262473.P9332206531857675249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262473.P9332206531857675249

namespace A262473

/-- `∏[ratio[A005578(n+1)]²]` -/
def P9332206531857675249.Spec : Prop :=
  ∀ n, P9332206531857675249.a n = (A262473 (n + 1) : ℚ)

end A262473

/-! ## A262473.P8697183249533524189

`(A000975(n+1)+1)^2`
-/

namespace A262473.P8697183249533524189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 1) + 1) ^ 2

end

end A262473.P8697183249533524189

namespace A262473

/-- `(A000975(n+1)+1)^2` -/
def P8697183249533524189.Spec : Prop :=
  ∀ n, P8697183249533524189.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P12592213601598692368

`(∑[A001045(n+1)]+1)^2`
-/

namespace A262473.P12592213601598692368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A262473.P12592213601598692368

namespace A262473

/-- `(∑[A001045(n+1)]+1)^2` -/
def P12592213601598692368.Spec : Prop :=
  ∀ n, P12592213601598692368.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P14490848140226212452

`record[A005578(abs(1-n)+1)²]`
-/

namespace A262473.P14490848140226212452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (|1 - (n : ℤ)| + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262473.P14490848140226212452

namespace A262473

/-- `record[A005578(abs(1-n)+1)²]` -/
def P14490848140226212452.Spec : Prop :=
  ∀ n, P14490848140226212452.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P18335604343143475638

`record[ceil(A143095(n+1)/3)²]`
-/

namespace A262473.P18335604343143475638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143095 (n + 1) : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262473.P18335604343143475638

namespace A262473

/-- `record[ceil(A143095(n+1)/3)²]` -/
def P18335604343143475638.Spec : Prop :=
  ∀ n, P18335604343143475638.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P8468303201871672798

`(A257198(n+1)+n+2)^2`
-/

namespace A262473.P8468303201871672798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257198 (n + 1) + (n + 2 : ℤ)) ^ 2

end

end A262473.P8468303201871672798

namespace A262473

/-- `(A257198(n+1)+n+2)^2` -/
def P8468303201871672798.Spec : Prop :=
  ∀ n, P8468303201871672798.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P3606751747887615754

`or(A005578(n+2)², A000035(n))`
-/

namespace A262473.P3606751747887615754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005578 (n + 2) ^ 2) (A000035 n)

end

end A262473.P3606751747887615754

namespace A262473

/-- `or(A005578(n+2)², A000035(n))` -/
def P3606751747887615754.Spec : Prop :=
  ∀ n, P3606751747887615754.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P9850675534003960151

`A241894(n+1)+A241685(n+1)`
-/

namespace A262473.P9850675534003960151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241894 (n + 1) + A241685 (n + 1)

end

end A262473.P9850675534003960151

namespace A262473

/-- `A241894(n+1)+A241685(n+1)` -/
def P9850675534003960151.Spec : Prop :=
  ∀ n, P9850675534003960151.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P16784021104215282949

`(A081254(n+1)-A007283(n))^2`
-/

namespace A262473.P16784021104215282949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081254 (n + 1) - A007283 n) ^ 2

end

end A262473.P16784021104215282949

namespace A262473

/-- `(A081254(n+1)-A007283(n))^2` -/
def P16784021104215282949.Spec : Prop :=
  ∀ n, P16784021104215282949.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P12625609161641055622

`record[(A287744(n)+A015895(A325933(n)))²]`
-/

namespace A262473.P12625609161641055622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A287744 n + A015895 (A325933 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262473.P12625609161641055622

namespace A262473

/-- `record[(A287744(n)+A015895(A325933(n)))²]` -/
def P12625609161641055622.Spec : Prop :=
  ∀ n, P12625609161641055622.a n = A262473 (n + 1)

end A262473

/-! ## A262473.P7161483737296360442

`lcm(A005578(n+2)², A033999(A002262(n)))`
-/

namespace A262473.P7161483737296360442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005578 (n + 2) ^ 2) (A033999 (A002262 n).toNat)

end

end A262473.P7161483737296360442

namespace A262473

/-- `lcm(A005578(n+2)², A033999(A002262(n)))` -/
def P7161483737296360442.Spec : Prop :=
  ∀ n, (P7161483737296360442.a n : ℤ) = A262473 (n + 1)

end A262473

/-! ## A262473.P6554178747670892238

`A052953(n+2)²/4`
-/

namespace A262473.P6554178747670892238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052953 (n + 2) ^ 2 : ℚ) / 4

end

end A262473.P6554178747670892238

namespace A262473

/-- `A052953(n+2)²/4` -/
def P6554178747670892238.Spec : Prop :=
  ∀ n, P6554178747670892238.a n = (A262473 (n + 1) : ℚ)

end A262473

/-! ## A262473.P13752981727353674314

`A135231(n+2)²/4`
-/

namespace A262473.P13752981727353674314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135231 (n + 2) ^ 2 : ℚ) / 4

end

end A262473.P13752981727353674314

namespace A262473

/-- `A135231(n+2)²/4` -/
def P13752981727353674314.Spec : Prop :=
  ∀ n, P13752981727353674314.a n = (A262473 (n + 1) : ℚ)

end A262473

/-! ## A262473.P11741375572785556408

`A128209(n+3)²/4`
-/

namespace A262473.P11741375572785556408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128209 (n + 3) ^ 2 : ℚ) / 4

end

end A262473.P11741375572785556408

namespace A262473

/-- `A128209(n+3)²/4` -/
def P11741375572785556408.Spec : Prop :=
  ∀ n, P11741375572785556408.a n = (A262473 (n + 1) : ℚ)

end A262473

/-! ## A262473.P168829214320922034

`record[(A128971(n)+1)²]`
-/

namespace A262473.P168829214320922034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128971 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262473.P168829214320922034

namespace A262473

/-- `record[(A128971(n)+1)²]` -/
def P168829214320922034.Spec : Prop :=
  ∀ n, P168829214320922034.a n = A262473 (n + 1)

end A262473

/-!
# A262474: Number of (4+1)X(n+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262474, there is no canonical definition to state claims against.
-/

/-! ## A262474.P3079819073953046049

`A262472(∑[n+3]+7)`
-/

namespace A262474.P3079819073953046049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A262474.P3079819073953046049

/-!
# A262475: Number of (5+1)X(n+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262475, there is no canonical definition to state claims against.
-/

/-! ## A262475.P2831501503788105193

`A262472(∑[n+4]+11)`
-/

namespace A262475.P2831501503788105193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A262475.P2831501503788105193

/-! ## A262475.P11270915236109504351

`and(-1, A262472(A167499(n+3)))`
-/

namespace A262475.P11270915236109504351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A262472 (A167499 (n + 3)).toNat)

end

end A262475.P11270915236109504351

/-! ## A262475.P16524824377789210761

`A262472(A000217(n+4)+5)+floor((n+1)/16)`
-/

namespace A262475.P16524824377789210761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A000217 (n + 4) + 5).toNat + ⌊(n + 1 : ℚ) / 16⌋

end

end A262475.P16524824377789210761

/-! ## A262475.P5230468552567943178

`A262472(A167499(n+3))+char[A043472(n+1)]`
-/

namespace A262475.P5230468552567943178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043472 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262475.P5230468552567943178

/-! ## A262475.P12549401069262511009

`A262472(A167499(n+3))+char[A043496(n+1)]`
-/

namespace A262475.P12549401069262511009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043496 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262475.P12549401069262511009

/-!
# A262476: Number of (6+1)X(n+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262476, there is no canonical definition to state claims against.
-/

/-! ## A262476.P3506755498884723387

`A262472(A056115(n)+21)`
-/

namespace A262476.P3506755498884723387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A056115 n + 21).toNat

end

end A262476.P3506755498884723387

/-! ## A262476.P7085656604074791900

`A262472(Δ[A264443(n)]+10)`
-/

namespace A262476.P7085656604074791900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (f1 (n + 1) - f1 n + 10).toNat

end

end A262476.P7085656604074791900

/-! ## A262476.P17719868954352142869

`A262472(∑[A020710(n)]+16)`
-/

namespace A262476.P17719868954352142869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A262476.P17719868954352142869

/-! ## A262476.P4630247666002538665

`A262472(A167499(n+4)+1)`
-/

namespace A262476.P4630247666002538665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A167499 (n + 4) + 1).toNat

end

end A262476.P4630247666002538665

/-! ## A262476.P3273382954370783025

`A262472(A167614(n+4)+3)`
-/

namespace A262476.P3273382954370783025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A167614 (n + 4) + 3).toNat

end

end A262476.P3273382954370783025

/-!
# A262477: Number of (7+1)X(n+1) 0..1 arrays with each row divisible by 3 and each column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262477, there is no canonical definition to state claims against.
-/

/-! ## A262477.P14607708102869164857

`A262472(A056119(n)+28)`
-/

namespace A262477.P14607708102869164857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A056119 n + 28).toNat

end

end A262477.P14607708102869164857

/-! ## A262477.P308229558605216558

`A262472(eq[11, A066657(n)])`
-/

namespace A262477.P308229558605216558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262477.P308229558605216558

/-! ## A262477.P14395859527699506413

`A262472(A168106(n)-n)`
-/

namespace A262477.P14395859527699506413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A168106 n - (n : ℤ)).toNat

end

end A262477.P14395859527699506413

/-! ## A262477.P13344036630868458380

`A262472(A166136(n+5)+1)`
-/

namespace A262477.P13344036630868458380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A166136 (n + 5) + 1).toNat

end

end A262477.P13344036630868458380

/-! ## A262477.P14551020283701012047

`A262472(A167614(n+5)+4)`
-/

namespace A262477.P14551020283701012047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (A167614 (n + 5) + 4).toNat

end

end A262477.P14551020283701012047

/-!
# A262478: a(n) = Sum_{i >= 0} d_i(n) * p_(i + 1) where d_i(n) = i-th digit of n in base 3, and p_i = i-th prime.

The programs for A262478, there is no canonical definition to state claims against.
-/

/-! ## A262478.P3784504645493208764

`A001414(A101278(n))`
-/

namespace A262478.P3784504645493208764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A101278 n).toNat

end

end A262478.P3784504645493208764

/-! ## A262478.P9562645481265176867

`A263042(A007089(n))`
-/

namespace A262478.P9562645481265176867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263042 (A007089 n).toNat

end

end A262478.P9562645481265176867

/-! ## A262478.P18129137982104934736

`∑{d}[A101278(n), A120007(#)]`
-/

namespace A262478.P18129137982104934736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A262478.P18129137982104934736

/-! ## A262478.P10453070672031101644

`A036288(A101278(n))-char[A004442(n)]`
-/

namespace A262478.P10453070672031101644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A101278 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262478.P10453070672031101644

/-!
# A262479: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=2.

The programs for A262479, there is no canonical definition to state claims against.
-/

/-! ## A262479.P10156045427385653757

`record[A262372(∑[n]+2)]`
-/

namespace A262479.P10156045427385653757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262479.P10156045427385653757

/-! ## A262479.P6661456162731863264

`A262372(∑[n+3]+1)`
-/

namespace A262479.P6661456162731863264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262479.P6661456162731863264

/-! ## A262479.P5776840611685837202

`record[and(A167374(n), A262372(n))]`
-/

namespace A262479.P5776840611685837202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A262372 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262479.P5776840611685837202

/-! ## A262479.P4249221532407468590

`record[gcd(A262372(n+2), A262372(n))]`
-/

namespace A262479.P4249221532407468590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262372 (n + 2)) (A262372 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262479.P4249221532407468590

/-! ## A262479.P17922871807485233409

`lcm(A001316(n), A262372(A340266(n+1)))`
-/

namespace A262479.P17922871807485233409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A262372 (A340266 (n + 1)).toNat)

end

end A262479.P17922871807485233409

/-!
# A262480: Number of trivial c-Wilf equivalence classes in the symmetric group S_n.

The programs for A262480, there is no canonical definition to state claims against.
-/

/-! ## A262480.P11179947339964209109

`ceil(A113247(n)/2)`
-/

namespace A262480.P11179947339964209109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113247 n : ℚ) / 2⌉

end

end A262480.P11179947339964209109

/-! ## A262480.P1228579070443826863

`round(A113247(n)/A036453(n+1))`
-/

namespace A262480.P1228579070443826863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A113247 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A262480.P1228579070443826863

/-! ## A262480.P16082951327293696261

`A113247(n)/A006530(A016116(n))`
-/

namespace A262480.P16082951327293696261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113247 n : ℚ) / (A006530 (A016116 n).toNat : ℚ)

end

end A262480.P16082951327293696261

/-! ## A262480.P11142980568372258867

`A113247(n)/A055666(A000032(n))`
-/

namespace A262480.P11142980568372258867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113247 n : ℚ) / (A055666 (A000032 n).toNat : ℚ)

end

end A262480.P11142980568372258867

/-!
# A262481: Numbers m having in binary representation exactly lpf(m) ones, where lpf = least prime factor = A020639; a(1) = 1.

The programs for A262481, there is no canonical definition to state claims against.
-/

/-! ## A262481.P5925886647479792912

`eq[A020639(∏{p}[n, #]), A000120(n)]`
-/

namespace A262481.P5925886647479792912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A262481.P5925886647479792912

/-! ## A262481.P5809361551987096297

`eq[A020639(xor(1, n)+1), A000120(n)]`
-/

namespace A262481.P5809361551987096297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor 1 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262481.P5809361551987096297

/-! ## A262481.P1034654353070971927

`eq[A020639(abs(1-n)+1), A000120(n)]`
-/

namespace A262481.P1034654353070971927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262481.P1034654353070971927

/-! ## A262481.P16238263155368708660

`eq[A020639(n+1), A000120(n+1)]+1`
-/

namespace A262481.P16238263155368708660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262481.P16238263155368708660

/-! ## A262481.P8123155949803540344

`eq[A000120(n), A020639(A014681(n+1))]`
-/

namespace A262481.P8123155949803540344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014681 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262481.P8123155949803540344

/-! ## A262481.P4271535676718974559

`eq[A324467(n)/3, A020639(A028310(n))]`
-/

namespace A262481.P4271535676718974559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A262481.P4271535676718974559

/-! ## A262481.P6249152473480126009

`eq[A001222(A278222(n+1)), A020639(n+1)]+1`
-/

namespace A262481.P6249152473480126009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262481.P6249152473480126009

/-!
# A262482: Number of (n+3)X(1+3) 0..1 arrays with each row and column divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A262482, the canonical program `A262482.P2692826768553590871` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262482 has offset 1).

The definition of A262482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262482.P2692826768553590871

`1+floor(2^(n+4)/13)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262482

/-- `1+floor(2^(n+4)/13)` -/
def P2692826768553590871.Spec : Prop :=
  ∀ n, P2692826768553590871.a n = A262482 (n + 1)

theorem P2692826768553590871.correct : P2692826768553590871.Spec := by
  intro n
  simp only [A262482, Nat.add_sub_cancel]

end A262482

/-! ## A262482.P1047408014305301196

`floor((A000079(n+4)+12)/13)`
-/

namespace A262482.P1047408014305301196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 4) + 12 : ℚ) / 13⌋

end

end A262482.P1047408014305301196

namespace A262482

/-- `floor((A000079(n+4)+12)/13)` -/
def P1047408014305301196.Spec : Prop :=
  ∀ n, P1047408014305301196.a n = A262482 (n + 1)

end A262482

/-! ## A262482.P10818927914323998391

`floor((2^A020705(n)+12)/13)`
-/

namespace A262482.P10818927914323998391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ (A020705 n : ℤ) + 12) / 13⌋

end

end A262482.P10818927914323998391

namespace A262482

/-- `floor((2^A020705(n)+12)/13)` -/
def P10818927914323998391.Spec : Prop :=
  ∀ n, P10818927914323998391.a n = A262482 (n + 1)

end A262482

/-! ## A262482.P9919304907115730694

`round(A020737(n)/A168596(n)*A020737(n))`
-/

namespace A262482.P9919304907115730694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020737 n : ℚ) / (A168596 n : ℚ) * (A020737 n : ℚ))

end

end A262482.P9919304907115730694

namespace A262482

/-- `round(A020737(n)/A168596(n)*A020737(n))` -/
def P9919304907115730694.Spec : Prop :=
  ∀ n, P9919304907115730694.a n = A262482 (n + 1)

end A262482

/-! ## A262482.P6966990006201463295

`floor(A165133(n)/A168596(n))`
-/

namespace A262482.P6966990006201463295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165133 n : ℚ) / (A168596 n : ℚ)⌋

end

end A262482.P6966990006201463295

namespace A262482

/-- `floor(A165133(n)/A168596(n))` -/
def P6966990006201463295.Spec : Prop :=
  ∀ n, P6966990006201463295.a n = A262482 (n + 1)

end A262482

/-! ## A262482.P12932308003817703298

`round(A020737(n)²/A168596(n))`
-/

namespace A262482.P12932308003817703298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020737 n ^ 2 : ℚ) / (A168596 n : ℚ))

end

end A262482.P12932308003817703298

namespace A262482

/-- `round(A020737(n)²/A168596(n))` -/
def P12932308003817703298.Spec : Prop :=
  ∀ n, P12932308003817703298.a n = A262482 (n + 1)

end A262482

/-!
# A262483: Number of (n+3)X(2+3) 0..1 arrays with each row and column divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A262483, there is no canonical definition to state claims against.
-/

/-! ## A262483.P3809351820077578507

`A262488(∑[n+1]+2)`
-/

namespace A262483.P3809351820077578507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262483.P3809351820077578507

/-! ## A262483.P9785447525664660665

`record[A010054(n)*A262488(n+2)]`
-/

namespace A262483.P9785447525664660665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A262488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262483.P9785447525664660665

/-! ## A262483.P10381476685035328430

`or(1, A262488(A000217(n+1)+2))`
-/

namespace A262483.P10381476685035328430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262488 (A000217 (n + 1) + 2).toNat)

end

end A262483.P10381476685035328430

/-! ## A262483.P4403628011767047212

`record[A262488(n+2)/A262472(n+1)]`
-/

namespace A262483.P4403628011767047212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262488 (n + 2) : ℚ) / (A262472 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262483.P4403628011767047212

/-! ## A262483.P13808877037036448530

`A262488(A000217(n+1)+2)%A232509(n+1)`
-/

namespace A262483.P13808877037036448530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262488 (A000217 (n + 1) + 2).toNat) (A232509 (n + 1))

end

end A262483.P13808877037036448530

/-!
# A262484: Number of (n+3)X(3+3) 0..1 arrays with each row and column divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A262484, there is no canonical definition to state claims against.
-/

/-! ## A262484.P11272531492290457907

`A262488(∑[n+2]+4)`
-/

namespace A262484.P11272531492290457907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262484.P11272531492290457907

/-! ## A262484.P16329832372061703427

`or(1, A262488(A167614(n+1)))`
-/

namespace A262484.P16329832372061703427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262488 (A167614 (n + 1)).toNat)

end

end A262484.P16329832372061703427

/-! ## A262484.P393434324226380248

`A262488(A167614(n+1))+A084904(n)`
-/

namespace A262484.P393434324226380248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A167614 (n + 1)).toNat + A084904 n

end

end A262484.P393434324226380248

/-! ## A262484.P7494752122339117144

`A262488(A167614(n+1))+A178798(n)`
-/

namespace A262484.P7494752122339117144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A167614 (n + 1)).toNat + A178798 n

end

end A262484.P7494752122339117144

/-! ## A262484.P7162100655941514369

`A299905(n)+A262488(A167614(n+1))`
-/

namespace A262484.P7162100655941514369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A262488 (A167614 (n + 1)).toNat

end

end A262484.P7162100655941514369

/-!
# A262485: Number of (n+3)X(4+3) 0..1 arrays with each row and column divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A262485, there is no canonical definition to state claims against.
-/

/-! ## A262485.P16359417434515506300

`A262488(A374004(n+1))`
-/

namespace A262485.P16359417434515506300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A374004 (n + 1)).toNat

end

end A262485.P16359417434515506300

/-! ## A262485.P12297635544031347801

`A262488(A141214(n)+7)`
-/

namespace A262485.P12297635544031347801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A141214 n + 7).toNat

end

end A262485.P12297635544031347801

/-! ## A262485.P2110144488491768917

`A262488(A052905(n)+9)`
-/

namespace A262485.P2110144488491768917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A052905 n + 9).toNat

end

end A262485.P2110144488491768917

/-! ## A262485.P11718866276444979392

`A262488(A055999(n)+10)`
-/

namespace A262485.P11718866276444979392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A055999 n + 10).toNat

end

end A262485.P11718866276444979392

/-! ## A262485.P8765175900442400041

`A262488(eq[5, A066657(n)])`
-/

namespace A262485.P8765175900442400041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262485.P8765175900442400041

/-!
# A262486: Number of (n+3)X(5+3) 0..1 arrays with each row and column divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A262486, there is no canonical definition to state claims against.
-/

/-! ## A262486.P16171193268664502581

`A262488(∑[n+5]+6)`
-/

namespace A262486.P16171193268664502581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A262486.P16171193268664502581

/-! ## A262486.P5050034129357094157

`A262488(A055998(n+3)-1)+A217657(n)`
-/

namespace A262486.P5050034129357094157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A055998 (n + 3) - 1).toNat + A217657 n

end

end A262486.P5050034129357094157

/-! ## A262486.P13414807741491311548

`A262488(Δ[A023545(n+1)])+A033111(n+1)`
-/

namespace A262486.P13414807741491311548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (f1 (n + 1) - f1 n).toNat + A033111 (n + 1)

end

end A262486.P13414807741491311548

/-! ## A262486.P12095835834182521174

`A262488(Δ[A023545(n+1)])%A391081(n+3)`
-/

namespace A262486.P12095835834182521174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262488 (f1 (n + 1) - f1 n).toNat) (A391081 (n + 3))

end

end A262486.P12095835834182521174

/-!
# A262487: Number of (n+3)X(6+3) 0..1 arrays with each row and column divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A262487, there is no canonical definition to state claims against.
-/

/-! ## A262487.P9983792334335362016

`A262488(A374007(n+1))`
-/

namespace A262487.P9983792334335362016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A374007 (n + 1)).toNat

end

end A262487.P9983792334335362016

/-! ## A262487.P1937186944494355304

`A262488(A052905(n+3))`
-/

namespace A262487.P1937186944494355304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A052905 (n + 3)).toNat

end

end A262487.P1937186944494355304

/-! ## A262487.P1200397264455758165

`A262488(A166136(n+4))`
-/

namespace A262487.P1200397264455758165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262488 (A166136 (n + 4)).toNat

end

end A262487.P1200397264455758165

/-!
# A262489: The index of the first of two consecutive positive triangular numbers (A000217) the sum of which is equal to the sum of three consecutive positive triangular numbers.

The programs for A262489, the canonical program `A262489.P12062465035658855158` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262489 has offset 1).

The definition of A262489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262489.P12062465035658855158

`a(n-1)+10*a(n-2)-10*a(n-3)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=18, a(2)=78, a(3)=187, a(4)=781`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262489

/-- `a(n-1)+10*a(n-2)-10*a(n-3)-a(n-4)+a(n-5)` -/
def P12062465035658855158.Spec : Prop :=
  ∀ n, P12062465035658855158.a n = A262489 (n + 1)

theorem P12062465035658855158.correct : P12062465035658855158.Spec := by
  intro n
  simp only [A262489, Nat.add_sub_cancel]

end A262489

/-! ## A262489.P15267797523236263714

`A129445(n+3)-1`
-/

namespace A262489.P15267797523236263714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 3) - 1

end

end A262489.P15267797523236263714

namespace A262489

/-- `A129445(n+3)-1` -/
def P15267797523236263714.Spec : Prop :=
  ∀ n, P15267797523236263714.a n = A262489 (n + 1)

end A262489

/-! ## A262489.P7423536629001976362

`A142238(n+1)+∑[A041006(n)]`
-/

namespace A262489.P7423536629001976362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262489.P7423536629001976362

namespace A262489

/-- `A142238(n+1)+∑[A041006(n)]` -/
def P7423536629001976362.Spec : Prop :=
  ∀ n, P7423536629001976362.a n = A262489 (n + 1)

end A262489

/-! ## A262489.P14348150313391864850

`A077288(n+1)+A165517(n+2)+1`
-/

namespace A262489.P14348150313391864850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 (n + 1) + (A165517 (n + 2) + 1)

end

end A262489.P14348150313391864850

namespace A262489

/-- `A077288(n+1)+A165517(n+2)+1` -/
def P14348150313391864850.Spec : Prop :=
  ∀ n, P14348150313391864850.a n = A262489 (n + 1)

end A262489

/-! ## A262489.P2150367941068004375

`A077288(n+1)+A080806(n+2)+A077291(n+1)`
-/

namespace A262489.P2150367941068004375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 (n + 1) + (A080806 (n + 2) + A077291 (n + 1))

end

end A262489.P2150367941068004375

namespace A262489

/-- `A077288(n+1)+A080806(n+2)+A077291(n+1)` -/
def P2150367941068004375.Spec : Prop :=
  ∀ n, P2150367941068004375.a n = A262489 (n + 1)

end A262489

/-! ## A262489.P18170597099747202858

`A307445(A000040(A050140(n+1)))+A129445(n+3)`
-/

namespace A262489.P18170597099747202858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000040 (A050140 (n + 1)).toNat).toNat + A129445 (n + 3)

end

end A262489.P18170597099747202858

namespace A262489

/-- `A307445(A000040(A050140(n+1)))+A129445(n+3)` -/
def P18170597099747202858.Spec : Prop :=
  ∀ n, P18170597099747202858.a n = A262489 (n + 1)

end A262489

/-! ## A262489.P10336887627904766876

`Δ[A085376(n+2)]-1`
-/

namespace A262489.P10336887627904766876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A262489.P10336887627904766876

namespace A262489

/-- `Δ[A085376(n+2)]-1` -/
def P10336887627904766876.Spec : Prop :=
  ∀ n, P10336887627904766876.a n = A262489 (n + 1)

end A262489

/-!
# A262490: The index of the first of two consecutive positive triangular numbers (A000217) the sum of which is equal to the sum of four consecutive positive triangular numbers.

The programs for A262490, the canonical program `A262490.P8186444572249290024` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262490 has offset 1).

The definition of A262490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262490.P8186444572249290024

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=9, a(1)=57, a(2)=337`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A262490

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P8186444572249290024.Spec : Prop :=
  ∀ n, P8186444572249290024.a n = A262490 (n + 1)

theorem P8186444572249290024.correct : P8186444572249290024.Spec := by
  intro n
  simp only [A262490, Nat.add_sub_cancel]

end A262490

/-! ## A262490.P5559007531560773363

`floor(a(n-1)/(3-sqrt(8)))+5` with `a(0)=9`
-/

namespace A262490.P5559007531560773363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 5

end

end A262490.P5559007531560773363

namespace A262490

/-- `floor(a(n-1)/(3-sqrt(8)))+5` -/
def P5559007531560773363.Spec : Prop :=
  ∀ n, P5559007531560773363.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P18318909649699845224

`round(a(n-1)/(3-sqrt(8)))+5` with `a(0)=9`
-/

namespace A262490.P18318909649699845224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 5

end

end A262490.P18318909649699845224

namespace A262490

/-- `round(a(n-1)/(3-sqrt(8)))+5` -/
def P18318909649699845224.Spec : Prop :=
  ∀ n, P18318909649699845224.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P6948699140606277214

`record[6*a(n-1)+4-a(n-2)]` with `a(0)=9, a(1)=1`
-/

namespace A262490.P6948699140606277214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 1] fun n f1 =>
  6 * f1 (n - 1) + (4 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262490.P6948699140606277214

namespace A262490

/-- `record[6*a(n-1)+4-a(n-2)]` -/
def P6948699140606277214.Spec : Prop :=
  ∀ n, P6948699140606277214.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P12627582609045759439

`8*∑[6*a(n-1)-a(n-2)]+1` with `a(0)=1, a(1)=6`
-/

namespace A262490.P12627582609045759439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A262490.P12627582609045759439

namespace A262490

/-- `8*∑[6*a(n-1)-a(n-2)]+1` -/
def P12627582609045759439.Spec : Prop :=
  ∀ n, P12627582609045759439.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P16039829545041964767

`A075870(n+2)-1`
-/

namespace A262490.P16039829545041964767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (n + 2) - 1

end

end A262490.P16039829545041964767

namespace A262490

/-- `A075870(n+2)-1` -/
def P16039829545041964767.Spec : Prop :=
  ∀ n, P16039829545041964767.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P16608440887174808912

`A350921(n+2)-2`
-/

namespace A262490.P16608440887174808912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350921 (n + 2) - 2

end

end A262490.P16608440887174808912

namespace A262490

/-- `A350921(n+2)-2` -/
def P16608440887174808912.Spec : Prop :=
  ∀ n, P16608440887174808912.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P13809912957149189481

`A137199(2*(n+2))`
-/

namespace A262490.P13809912957149189481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (2 * (n + 2))

end

end A262490.P13809912957149189481

namespace A262490

/-- `A137199(2*(n+2))` -/
def P13809912957149189481.Spec : Prop :=
  ∀ n, P13809912957149189481.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P1844920300006958386

`A133654(2*n+3)`
-/

namespace A262490.P1844920300006958386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (2 * n + 3)

end

end A262490.P1844920300006958386

namespace A262490

/-- `A133654(2*n+3)` -/
def P1844920300006958386.Spec : Prop :=
  ∀ n, P1844920300006958386.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P11268487375131828256

`A396927(Δ[n²])+3`
-/

namespace A262490.P11268487375131828256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A262490.P11268487375131828256

namespace A262490

/-- `A396927(Δ[n²])+3` -/
def P11268487375131828256.Spec : Prop :=
  ∀ n, P11268487375131828256.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P11315684960761431854

`Δ[Δ[A011900(n)]]-1`
-/

namespace A262490.P11315684960761431854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A262490.P11315684960761431854

namespace A262490

/-- `Δ[Δ[A011900(n)]]-1` -/
def P11315684960761431854.Spec : Prop :=
  ∀ n, P11315684960761431854.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P5709063332442744349

`Δ[Δ[A053141(n)]]-1`
-/

namespace A262490.P5709063332442744349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A262490.P5709063332442744349

namespace A262490

/-- `Δ[Δ[A053141(n)]]-1` -/
def P5709063332442744349.Spec : Prop :=
  ∀ n, P5709063332442744349.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P11269942138412340417

`∑[A081554(n+1)]+1`
-/

namespace A262490.P11269942138412340417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262490.P11269942138412340417

namespace A262490

/-- `∑[A081554(n+1)]+1` -/
def P11269942138412340417.Spec : Prop :=
  ∀ n, P11269942138412340417.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P839222183197708681

`Δ[A001542(n+1)]-1`
-/

namespace A262490.P839222183197708681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A262490.P839222183197708681

namespace A262490

/-- `Δ[A001542(n+1)]-1` -/
def P839222183197708681.Spec : Prop :=
  ∀ n, P839222183197708681.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P7413542851140039150

`Δ[A182189(n+1)]-1`
-/

namespace A262490.P7413542851140039150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A262490.P7413542851140039150

namespace A262490

/-- `Δ[A182189(n+1)]-1` -/
def P7413542851140039150.Spec : Prop :=
  ∀ n, P7413542851140039150.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P3048773188453877219

`2*A182190(n+1)+1`
-/

namespace A262490.P3048773188453877219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182190 (n + 1) + 1

end

end A262490.P3048773188453877219

namespace A262490

/-- `2*A182190(n+1)+1` -/
def P3048773188453877219.Spec : Prop :=
  ∀ n, P3048773188453877219.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P7806963659899739658

`2*A001653(n+2)-1`
-/

namespace A262490.P7806963659899739658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001653 (n + 2) - 1

end

end A262490.P7806963659899739658

namespace A262490

/-- `2*A001653(n+2)-1` -/
def P7806963659899739658.Spec : Prop :=
  ∀ n, P7806963659899739658.a n = A262490 (n + 1)

end A262490

/-! ## A262490.P2541820196115486981

`A163271(2*(n+2))-1`
-/

namespace A262490.P2541820196115486981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (2 * (n + 2)) - 1

end

end A262490.P2541820196115486981

namespace A262490

/-- `A163271(2*(n+2))-1` -/
def P2541820196115486981.Spec : Prop :=
  ∀ n, P2541820196115486981.a n = A262490 (n + 1)

end A262490

/-!
# A262493: Centered 13-gonal (or tridecagonal) primes.

The programs for A262493, there is no canonical definition to state claims against.
-/

/-! ## A262493.P8425133124500963048

`∩[A069126(n+1), A268753(n+1)]`
-/

namespace A262493.P8425133124500963048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262493.P8425133124500963048

/-! ## A262493.P12366512045943771613

`p?[13*C(n, 2)+1]`
-/

namespace A262493.P12366512045943771613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262493.P12366512045943771613

/-! ## A262493.P5702565330009365632

`p?[xor(1, 13*C(n, 2))]`
-/

namespace A262493.P5702565330009365632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (13 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262493.P5702565330009365632

/-! ## A262493.P6672368020517386536

`p?[floor(13/8*n²)]`
-/

namespace A262493.P6672368020517386536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(13 : ℚ) / 8 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262493.P6672368020517386536

/-! ## A262493.P14239915279383852981

`abs(1-p?[a(n-1)-13*(1-n)])+1` with `a(0)=1`
-/

namespace A262493.P14239915279383852981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 13 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A262493.P14239915279383852981

/-! ## A262493.P10774235355155534277

`or(1, p?[A069126(n+1)])`
-/

namespace A262493.P10774235355155534277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A262493.P10774235355155534277

/-! ## A262493.P5964835748269830367

`∏{d}[p?[A069126(n+2)], #]`
-/

namespace A262493.P5964835748269830367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262493.P5964835748269830367

/-! ## A262493.P5631235170487951062

`∩[A069126(n+1), A215164(n+1)]`
-/

namespace A262493.P5631235170487951062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262493.P5631235170487951062

/-! ## A262493.P6963982966467470271

`∩[A069126(n+1), A215391(n+1)]`
-/

namespace A262493.P6963982966467470271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262493.P6963982966467470271

/-!
# A262495: Number T(n,k) of partitions of n into parts of exactly k sorts which are introduced in ascending order such that sorts of adjacent parts are different; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A262495, there is no canonical definition to state claims against.
-/

/-! ## A262495.P15560604454080410506

`A117707(A085852(n)+A083856(n))`
-/

namespace A262495.P15560604454080410506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A085852 n + A083856 n).toNat

end

end A262495.P15560604454080410506

/-! ## A262495.P10906526016551266236

`A064515(A085852(n)+A069288(n+1))`
-/

namespace A262495.P10906526016551266236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A085852 n + A069288 (n + 1)).toNat

end

end A262495.P10906526016551266236

/-! ## A262495.P15201197346255410478

`A064515(A123125(n)+A069288(n+1))`
-/

namespace A262495.P15201197346255410478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A123125 n + A069288 (n + 1)).toNat

end

end A262495.P15201197346255410478

/-! ## A262495.P5443545214158388804

`A010894(A222257(n))+A005206(A090181(n))`
-/

namespace A262495.P5443545214158388804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A222257 n).toNat + 21) + A005206 (A090181 n).toNat

end

end A262495.P5443545214158388804

/-! ## A262495.P8982302684429666154

`A002088(A097805(n)%A121877(n+2))`
-/

namespace A262495.P8982302684429666154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (Int.tmod (A097805 n) (A121877 (n + 2))).toNat

end

end A262495.P8982302684429666154

/-!
# A262496: Number of partitions of n into parts of sorts {1, 2, ... } which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A262496, there is no canonical definition to state claims against.
-/

/-! ## A262496.P11630395645844840149

`A260734(A003724(n+1))`
-/

namespace A262496.P11630395645844840149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A003724 (n + 1)).toNat

end

end A262496.P11630395645844840149

/-! ## A262496.P11442777335344251045

`A039708(A350492(n+1))`
-/

namespace A262496.P11442777335344251045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A350492 (n + 1)).toNat

end

end A262496.P11442777335344251045

/-! ## A262496.P47825035184481821

`∑[floor(A323794(n)/A053799(n))]`
-/

namespace A262496.P47825035184481821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323794 n : ℚ) / (A053799 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262496.P47825035184481821

/-! ## A262496.P8318904552309328542

`A080686(A002494(n)+A000045(n))`
-/

namespace A262496.P8318904552309328542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080686 (A002494 n + A000045 n).toNat

end

end A262496.P8318904552309328542

