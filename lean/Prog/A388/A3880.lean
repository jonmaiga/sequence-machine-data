import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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

/-!
# A388000: Numbers k such that phi(k) = pi(k) + tau(k).

The programs for A388000, there is no canonical definition to state claims against.
-/

/-! ## A388000.P10171771750515961192

`eq[A000005(n+1), A037228(n+1)]+1`
-/

namespace A388000.P10171771750515961192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388000.P10171771750515961192

/-! ## A388000.P3261633613984397645

`eq[A000720(n+1), A063070(n+1)]+1`
-/

namespace A388000.P3261633613984397645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388000.P3261633613984397645

/-! ## A388000.P7658770583559658142

`eq[A000010(n+1), A082514(n+1)]+1`
-/

namespace A388000.P7658770583559658142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388000.P7658770583559658142

/-!
# A388004: Number of n X n grids with 1 non-attacking king on each row.

The programs for A388004, there is no canonical definition to state claims against.
-/

/-! ## A388004.P12995357431147129639

`A219180(n*∑[char[∑[n]]]^n)`
-/

namespace A388004.P12995357431147129639
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A388004.P12995357431147129639

/-! ## A388004.P7526914574014947208

`A352829(A163318(n))`
-/

namespace A388004.P7526914574014947208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A163318 n).toNat

end

end A388004.P7526914574014947208

/-!
# A388005: Sum of numbers <= 10^n which are not squarefree.

The programs for A388005, there is no canonical definition to state claims against.
-/

/-! ## A388005.P2639959689486409806

`10^n*(10^n+1)/2-A387980(n)`
-/

namespace A388005.P2639959689486409806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (10 ^ n + 1) : ℚ) / 2 - (A387980 n : ℚ)

end

end A388005.P2639959689486409806

/-! ## A388005.P6722099716425248331

`C(10^n+1, 2)-A387980(n)`
-/

namespace A388005.P6722099716425248331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (10 ^ n + 1) 2 : ℤ) - A387980 n

end

end A388005.P6722099716425248331

/-!
# A388006: Numbers k = p_i^e_i *...* p_r^e_r such that i/e_i +...+ r/e_r = 1 for e_i,..., e_r >= 1; p_i,..., p_r distinct prime numbers (A000040).

The programs for A388006, there is no canonical definition to state claims against.
-/

/-! ## A388006.P11110822742054755216

`A001694(A124598(n+2))%A124598(A397511(n))`
-/

namespace A388006.P11110822742054755216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001694 (A124598 (n + 2)).toNat) (A124598 (A397511 n).toNat)

end

end A388006.P11110822742054755216

/-!
# A388008: Number of generalized conjugacy classes in the semigroup of relations on a set of size n.

The programs for A388008, there is no canonical definition to state claims against.
-/

/-! ## A388008.P17746784932905928278

`A181807(A090031(n))`
-/

namespace A388008.P17746784932905928278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181807 (A090031 n).toNat

end

end A388008.P17746784932905928278

/-! ## A388008.P7179225962045703478

`A001462(A063075(n)+n)`
-/

namespace A388008.P7179225962045703478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A063075 n + (n : ℤ)).toNat

end

end A388008.P7179225962045703478

/-!
# A388010: Irregular table T(n, k), n > 0, k = 1..A246600(n), read by rows; the n-th row lists the divisors d of n such that the binary representation of d can be obtained from the binary representation of n by changing any number of 1's to 0's.

The programs for A388010, there is no canonical definition to state claims against.
-/

/-! ## A388010.P538079783663131200

`A077610(lt[A139206(n+1), A385557(n+1)])`
-/

namespace A388010.P538079783663131200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A388010.P538079783663131200

/-! ## A388010.P14678705393004003208

`A077610(lt[A139205(n+1), A388282(n+1)])`
-/

namespace A388010.P14678705393004003208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A388010.P14678705393004003208

/-! ## A388010.P3061045705725398793

`A026741(A352835(3*(n+1))%A133228(2*n+5))`
-/

namespace A388010.P3061045705725398793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A352835 (3 * (n + 1))) (A133228 (2 * n + 5))).toNat

end

end A388010.P3061045705725398793

/-!
# A388011: Numbers k such that sigma(k)/k < 5/3.

The programs for A388011, the canonical program `A388011.P14636846454432472198` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388011 has offset 1).

The definition of A388011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388011.P15352955946968858315

`eq[0, A388013(1+n)]+1`
-/

namespace A388011.P15352955946968858315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388011.P15352955946968858315

namespace A388011

/-- `eq[0, A388013(1+n)]+1` -/
def P15352955946968858315.Spec : Prop :=
  ∀ n, (P15352955946968858315.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P14636846454432472198

`comp[A388012(1+n)-1]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A388011

/-- `comp[A388012(1+n)-1]+1` -/
def P14636846454432472198.Spec : Prop :=
  ∀ n, (P14636846454432472198.a n : ℤ) = A388011 (n + 1)

theorem P14636846454432472198.correct : P14636846454432472198.Spec := by
  intro n
  simp only [A388011, Nat.add_sub_cancel]

end A388011

/-! ## A388011.P17493406545721693457

`record[gcd(n+1, A388013(n+1))]`
-/

namespace A388011.P17493406545721693457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A388013 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388011.P17493406545721693457

namespace A388011

/-- `record[gcd(n+1, A388013(n+1))]` -/
def P17493406545721693457.Spec : Prop :=
  ∀ n, (P17493406545721693457.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P6800607511207175475

`comp[∪[A388012(n+1), A277991(n)]]`
-/

namespace A388011.P6800607511207175475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388012 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277991 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A388011.P6800607511207175475

namespace A388011

/-- `comp[∪[A388012(n+1), A277991(n)]]` -/
def P6800607511207175475.Spec : Prop :=
  ∀ n, (P6800607511207175475.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P12805534166739372584

`lt[A002264(n), A033879(n+1)]+1`
-/

namespace A388011.P12805534166739372584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388011.P12805534166739372584

namespace A388011

/-- `lt[A002264(n), A033879(n+1)]+1` -/
def P12805534166739372584.Spec : Prop :=
  ∀ n, (P12805534166739372584.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P3719800249447459116

`lt[n-A050292(n), A033879(n+1)]+1`
-/

namespace A388011.P3719800249447459116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388011.P3719800249447459116

namespace A388011

/-- `lt[n-A050292(n), A033879(n+1)]+1` -/
def P3719800249447459116.Spec : Prop :=
  ∀ n, (P3719800249447459116.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P9649988378607925923

`lt[A000203(n+1), A032793(n+2)]+1`
-/

namespace A388011.P9649988378607925923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388011.P9649988378607925923

namespace A388011

/-- `lt[A000203(n+1), A032793(n+2)]+1` -/
def P9649988378607925923.Spec : Prop :=
  ∀ n, (P9649988378607925923.a n : ℤ) = A388011 (n + 1)

end A388011

/-!
# A388012: Numbers k such that sigma(k)/k >= 5/3.

The programs for A388012, the canonical program `A388012.P15688760804591210700` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388012 has offset 1).

The definition of A388012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388012.P10768439576094753168

`∩[A002808(n+1), comp[A388011(n+1)]]`
-/

namespace A388012.P10768439576094753168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388011 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A388012.P10768439576094753168

namespace A388012

/-- `∩[A002808(n+1), comp[A388011(n+1)]]` -/
def P10768439576094753168.Spec : Prop :=
  ∀ n, (P10768439576094753168.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P14677881097489421917

`lt[A033879(n+1), A002264(n)+1]+1`
-/

namespace A388012.P14677881097489421917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P14677881097489421917

namespace A388012

/-- `lt[A033879(n+1), A002264(n)+1]+1` -/
def P14677881097489421917.Spec : Prop :=
  ∀ n, (P14677881097489421917.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P7929609439302036398

`lt[A047206(n+1), A000203(n+1)]+1`
-/

namespace A388012.P7929609439302036398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P7929609439302036398

namespace A388012

/-- `lt[A047206(n+1), A000203(n+1)]+1` -/
def P7929609439302036398.Spec : Prop :=
  ∀ n, (P7929609439302036398.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P15688760804591210700

`lt[A277573(n+1), A000203(n+1)]+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A388012

/-- `lt[A277573(n+1), A000203(n+1)]+1` -/
def P15688760804591210700.Spec : Prop :=
  ∀ n, (P15688760804591210700.a n : ℤ) = A388012 (n + 1)

theorem P15688760804591210700.correct : P15688760804591210700.Spec := by
  intro n
  simp only [A388012, Nat.add_sub_cancel]

end A388012

/-! ## A388012.P12154584016435822791

`lt[A285967(n+1), A000203(n+1)]+1`
-/

namespace A388012.P12154584016435822791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P12154584016435822791

namespace A388012

/-- `lt[A285967(n+1), A000203(n+1)]+1` -/
def P12154584016435822791.Spec : Prop :=
  ∀ n, (P12154584016435822791.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P1231833617252771161

`lt[A047206(n+1), sqrt(A072861(n+1))]+1`
-/

namespace A388012.P1231833617252771161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A388012.P1231833617252771161

namespace A388012

/-- `lt[A047206(n+1), sqrt(A072861(n+1))]+1` -/
def P1231833617252771161.Spec : Prop :=
  ∀ n, (P1231833617252771161.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P10623087724489886241

`A065475(lt[(2*n+1)/3, A001065(n+1)])`
-/

namespace A388012.P10623087724489886241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A388012.P10623087724489886241

namespace A388012

/-- `A065475(lt[(2*n+1)/3, A001065(n+1)])` -/
def P10623087724489886241.Spec : Prop :=
  ∀ n, P10623087724489886241.a n = A388012 (n + 1)

end A388012

/-! ## A388012.P7276084716309008671

`lt[5, ∑{d}[n, 3/#]]`
-/

namespace A388012.P7276084716309008671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 3 / (d : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A388012.P7276084716309008671

namespace A388012

/-- `lt[5, ∑{d}[n, 3/#]]` -/
def P7276084716309008671.Spec : Prop :=
  ∀ n, (P7276084716309008671.a n : ℤ) = A388012 (n + 1)

end A388012

/-!
# A388013: Number of divisors d of n for which sigma(d)/d >= 5/3.

The programs for A388013, there is no canonical definition to state claims against.
-/

/-! ## A388013.P4229372552767815178

`A045887(A068190(n+1))`
-/

namespace A388013.P4229372552767815178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 (A068190 (n + 1)).toNat

end

end A388013.P4229372552767815178

/-! ## A388013.P4990547934250454513

`and(A055212(n+1), A114387(n))`
-/

namespace A388013.P4990547934250454513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055212 (n + 1)) (A114387 n)

end

end A388013.P4990547934250454513

/-! ## A388013.P8748559642832229654

`and(A114387(n), A294904(n+1))`
-/

namespace A388013.P8748559642832229654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114387 n) (A294904 (n + 1))

end

end A388013.P8748559642832229654

/-! ## A388013.P13263692587895752076

`and(A114387(n), A337345(n+1))`
-/

namespace A388013.P13263692587895752076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114387 n) (A337345 (n + 1))

end

end A388013.P13263692587895752076

/-! ## A388013.P7447437482989331243

`and(A114387(n), A360661(n+1))`
-/

namespace A388013.P7447437482989331243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114387 n) (A360661 (n + 1))

end

end A388013.P7447437482989331243

/-!
# A388014: Primitive terms of A388012: Numbers k such that sigma(k)/k >= 5/3, but for all whose proper divisors d|k, d<k, sigma(d)/d < 5/3.

The programs for A388014, there is no canonical definition to state claims against.
-/

/-! ## A388014.P16890240132744095010

`eq[1, A388013(n+1)]+1`
-/

namespace A388014.P16890240132744095010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388014.P16890240132744095010

/-! ## A388014.P5320466386252997571

`eq[1, A388013(A028310(n))]`
-/

namespace A388014.P5320466386252997571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388014.P5320466386252997571

/-! ## A388014.P1429518565187847970

`eq[1, A388013(C(n, 1-A000007(n)))]`
-/

namespace A388014.P1429518565187847970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (Nat.choose n (1 - A000007 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388014.P1429518565187847970

/-!
# A388015: Numbers k that are odd multiples of 3 and non-multiples of 5, and for which sigma(k^2)/(k^2) >= 5/3.

The programs for A388015, there is no canonical definition to state claims against.
-/

/-! ## A388015.P3942590921239026730

`sqrt(A388016(1+n))`
-/

namespace A388015.P3942590921239026730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A388016 (1 + n) : ℝ)

end

end A388015.P3942590921239026730

/-! ## A388015.P15602364882942594566

`∩[A173250(n+1), A008603(n)]`
-/

namespace A388015.P15602364882942594566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388015.P15602364882942594566

/-! ## A388015.P3525007622878199301

`∩[A173250(n+1), A187965(n+1)]`
-/

namespace A388015.P3525007622878199301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388015.P3525007622878199301

/-! ## A388015.P8732558605227816176

`∩[A173250(n+1), A335774(n+1)]`
-/

namespace A388015.P8732558605227816176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388015.P8732558605227816176

/-!
# A388016: Odd squares k, multiples of 3 and non-multiples of 5, such that sigma(k)/k >= 5/3.

The programs for A388016, there is no canonical definition to state claims against.
-/

/-! ## A388016.P14625797656422844090

`A388015(n+1)²`
-/

namespace A388016.P14625797656422844090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (n + 1) ^ 2

end

end A388016.P14625797656422844090

/-! ## A388016.P2023362035453694585

`A388015(A000027(1+n))^2`
-/

namespace A388016.P2023362035453694585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (A000027 (1 + n)).toNat ^ 2

end

end A388016.P2023362035453694585

/-! ## A388016.P8640321376300421689

`A388015(A000027(n+1))*A388015(n+1)`
-/

namespace A388016.P8640321376300421689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (A000027 (n + 1)).toNat * A388015 (n + 1)

end

end A388016.P8640321376300421689

/-! ## A388016.P11610355661649010879

`A388015(A026741(2*(n+1)))^2`
-/

namespace A388016.P11610355661649010879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (A026741 (2 * (n + 1))).toNat ^ 2

end

end A388016.P11610355661649010879

/-! ## A388016.P10492800100954554407

`A388015(n+1)^(A130196(3*n)+1)`
-/

namespace A388016.P10492800100954554407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388015 (n + 1) : ℚ) ^ (A130196 (3 * n) + 1 : ℤ)

end

end A388016.P10492800100954554407

/-! ## A388016.P15954150306519341627

`A000290(or(1, A388015(n+1)))`
-/

namespace A388016.P15954150306519341627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A388015 (n + 1))).toNat

end

end A388016.P15954150306519341627

/-! ## A388016.P5628827932576781612

`A000290(A388015(n+1)%A038370(n))`
-/

namespace A388016.P5628827932576781612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A388015 (n + 1)) (A038370 n)).toNat

end

end A388016.P5628827932576781612

/-! ## A388016.P2557377026032903386

`A000290(A388015(n+1))%A061663(3*n+1)`
-/

namespace A388016.P2557377026032903386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A388015 (n + 1)).toNat) (A061663 (3 * n + 1))

end

end A388016.P2557377026032903386

/-! ## A388016.P8346225396147294085

`A000290(A388015(n+1))%A169883(n+4)`
-/

namespace A388016.P8346225396147294085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A388015 (n + 1)).toNat) (A169883 (n + 4))

end

end A388016.P8346225396147294085

/-!
# A388018: a(n) = A276086(floor(sigma(n)/2)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388018, there is no canonical definition to state claims against.
-/

/-! ## A388018.P11038215183650310967

`A276086(floor(A000203(n+1)/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388018.P11038215183650310967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ⌊(A000203 (n + 1) : ℚ) / 2⌋.toNat

end

end A388018.P11038215183650310967

/-! ## A388018.P5241522433934955845

`A276086(floor(∑{d}[1+n, #]/2))`
-/

namespace A388018.P5241522433934955845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 2⌋.toNat

end

end A388018.P5241522433934955845

/-! ## A388018.P11055952552155534282

`A276086(ceil((A000203(n+1)-1)/2))`
-/

namespace A388018.P11055952552155534282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ⌈(A000203 (n + 1) - 1 : ℚ) / 2⌉.toNat

end

end A388018.P11055952552155534282

/-!
# A388019: Primitive terms of A023197: numbers k such that sigma(k)/k >= 3, but for every proper divisor, d|k, d<k, sigma(d)/d < 3.

The programs for A388019, there is no canonical definition to state claims against.
-/

/-! ## A388019.P8553538387838465549

`∪[A307112(n+1), A322377(n+1)]`
-/

namespace A388019.P8553538387838465549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388019.P8553538387838465549

/-! ## A388019.P3291608224165440576

`A322377(A082743(n))`
-/

namespace A388019.P3291608224165440576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A082743 n).toNat

end

end A388019.P3291608224165440576

/-! ## A388019.P9622407489063767206

`A322377(A381225(n))`
-/

namespace A388019.P9622407489063767206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A381225 n).toNat

end

end A388019.P9622407489063767206

/-! ## A388019.P1307191075672398882

`A322377(A001104(n+1))`
-/

namespace A388019.P1307191075672398882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A001104 (n + 1)).toNat

end

end A388019.P1307191075672398882

/-! ## A388019.P3235826003561425682

`A322377(A002998(n+1))`
-/

namespace A388019.P3235826003561425682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A002998 (n + 1)).toNat

end

end A388019.P3235826003561425682

/-!
# A388020: Primitive terms of A023197 that are of the form 4u+2.

The programs for A388020, there is no canonical definition to state claims against.
-/

/-! ## A388020.P16309672843376406924

`2*A006038(1+n)`
-/

namespace A388020.P16309672843376406924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006038 (1 + n)

end

end A388020.P16309672843376406924

/-! ## A388020.P1757923850486698457

`lcm(2, A006038(n+1))`
-/

namespace A388020.P1757923850486698457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A006038 (n + 1))

end

end A388020.P1757923850486698457

/-! ## A388020.P6850188390448831473

`A006038(n+1)+A006038(1+n)`
-/

namespace A388020.P6850188390448831473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1) + A006038 (1 + n)

end

end A388020.P6850188390448831473

/-! ## A388020.P5312823894799541979

`filter[A388019(n+1), val(#, 2)]`
-/

namespace A388020.P5312823894799541979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j).toNat 2 = 1) n)

end

end A388020.P5312823894799541979

/-! ## A388020.P15261396981248252517

`2*filter[A006039(n+1), and(1, #)]`
-/

namespace A388020.P15261396981248252517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n)

end

end A388020.P15261396981248252517

/-! ## A388020.P1736392080490333783

`2*filter[A071395(n+1), and(1, #)]`
-/

namespace A388020.P1736392080490333783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n)

end

end A388020.P1736392080490333783

/-! ## A388020.P9457017783690683345

`∩[A307112(n+1), A381550(n+1)]`
-/

namespace A388020.P9457017783690683345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P9457017783690683345

/-! ## A388020.P1853156469070723656

`∩[A381550(n+1), A388019(n+1)]`
-/

namespace A388020.P1853156469070723656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P1853156469070723656

/-! ## A388020.P14711950620227682067

`∩[A307112(n+1), A347938(n+1)]`
-/

namespace A388020.P14711950620227682067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P14711950620227682067

/-! ## A388020.P8055637380819870329

`∩[A347938(n+1), A388019(n+1)]`
-/

namespace A388020.P8055637380819870329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P8055637380819870329

/-! ## A388020.P14131142709232796000

`∩[A204830(n+1), A347938(n+1)]`
-/

namespace A388020.P14131142709232796000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P14131142709232796000

/-! ## A388020.P3075714265964407892

`∩[A023197(n+1), A347938(n+1)]`
-/

namespace A388020.P3075714265964407892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P3075714265964407892

/-! ## A388020.P2005853941339990420

`∩[A068403(n+1), A347938(n+1)]`
-/

namespace A388020.P2005853941339990420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P2005853941339990420

/-! ## A388020.P5771226781615544511

`∩[A204828(n+1), A347938(n+1)]`
-/

namespace A388020.P5771226781615544511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P5771226781615544511

/-!
# A388021: a(n) = gcd(A276086(floor(sigma(n)/2)), A276086(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388021, there is no canonical definition to state claims against.
-/

/-! ## A388021.P14338280165165431389

`gcd(A276086(n+1), A388018(n+1))`
-/

namespace A388021.P14338280165165431389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A388018 (n + 1))

end

end A388021.P14338280165165431389

/-! ## A388021.P157890752316447162

`gcd(A276086(floor(A000203(n+1)/2)), A276086(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388021.P157890752316447162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 ⌊(A000203 (n + 1) : ℚ) / 2⌋.toNat) (A276086 (n + 1))

end

end A388021.P157890752316447162

/-!
# A388022: Numbers k such that sigma(k) AND 3*k = 3*k, where AND is bitwise-and, A004198.

The programs for A388022, there is no canonical definition to state claims against.
-/

/-! ## A388022.P419281993004068481

`A000689(A116639(n+1))*A056866(n+1)`
-/

namespace A388022.P419281993004068481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A116639 (n + 1)).toNat * A056866 (n + 1)

end

end A388022.P419281993004068481

/-!
# A388025: Primitive terms of A388022: numbers k that satisfy sigma(k) AND 3*k = 3*k, but none of whose proper divisors satisfy the same condition.

The programs for A388025, there is no canonical definition to state claims against.
-/

/-! ## A388025.P6659201185937614375

`filter[A388022(2*n+1), A286987(#)]`
-/

namespace A388025.P6659201185937614375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286987 (f1 j).toNat = 1) n)

end

end A388025.P6659201185937614375

/-!
# A388029: Odd numbers k for which A003961(k) > 2*k and A003961(k)-2*k OR A003961(k)-sigma(k) = A003961(k)-2*k, where OR is bitwise-or (A003986) and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A388029, there is no canonical definition to state claims against.
-/

/-! ## A388029.P2221896474886247053

`filter[A388028(n+1), #%2]`
-/

namespace A388029.P2221896474886247053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A388029.P2221896474886247053

/-! ## A388029.P11359664167164709478

`filter[A388030(n+1), A379952(#)]`
-/

namespace A388029.P11359664167164709478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A388029.P11359664167164709478

/-! ## A388029.P11307777645708548113

`filter[A388030(n+1), A323158(#)]`
-/

namespace A388029.P11307777645708548113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A388029.P11307777645708548113

/-!
# A388030: Primitive terms of A388028.

The programs for A388030, there is no canonical definition to state claims against.
-/

/-! ## A388030.P853889106321995237

`A337814(A350401(n+1))`
-/

namespace A388030.P853889106321995237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A350401 (n + 1)).toNat

end

end A388030.P853889106321995237

/-! ## A388030.P9435688499543578332

`filter[A308710(n+1), A341602(#)]`
-/

namespace A388030.P9435688499543578332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341602 (f1 j).toNat = 1) n)

end

end A388030.P9435688499543578332

/-! ## A388030.P6776764758923494412

`filter[A378530(n+1), A341602(#)]`
-/

namespace A388030.P6776764758923494412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341602 (f1 j).toNat = 1) n)

end

end A388030.P6776764758923494412

/-!
# A388031: a(n) = A276086(sigma(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388031, there is no canonical definition to state claims against.
-/

/-! ## A388031.P9747482596570530976

`A276086(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388031.P9747482596570530976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000203 (n + 1)).toNat

end

end A388031.P9747482596570530976

/-! ## A388031.P1489664393135938853

`A388282(n+1)-A388281(n+1)`
-/

namespace A388031.P1489664393135938853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A388281 (n + 1)

end

end A388031.P1489664393135938853

/-! ## A388031.P3888318247800652027

`A276086(n+1)*A379493(n+1)-A388281(n+1)`
-/

namespace A388031.P3888318247800652027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1) - A388281 (n + 1)

end

end A388031.P3888318247800652027

/-! ## A388031.P11625455956101171795

`A351225(∑{d}[n+1, #])+∑{d}[n+1, #]`
-/

namespace A388031.P11625455956101171795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 (∑ d ∈ Nat.divisors (f1 n), d) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A388031.P11625455956101171795

/-! ## A388031.P6558795000307189857

`A276086(∑{d}[1+n, #])`
-/

namespace A388031.P6558795000307189857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A388031.P6558795000307189857

/-! ## A388031.P6278308709239451478

`A324580(∑{d}[n+1, #])/∑{d}[n+1, #]`
-/

namespace A388031.P6278308709239451478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324580 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

end

end A388031.P6278308709239451478

/-! ## A388031.P8439729665486450039

`A276086(Δ[A160664(n)])`
-/

namespace A388031.P8439729665486450039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (f1 (n + 1) - f1 n).toNat

end

end A388031.P8439729665486450039

/-! ## A388031.P6797247346453362829

`A276086(abs(Δ[A330725(n)]))`
-/

namespace A388031.P6797247346453362829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 |f1 (n + 1) - f1 n|.toNat

end

end A388031.P6797247346453362829

/-! ## A388031.P10656028401183308564

`A276086(A245092(Δ[n²]))`
-/

namespace A388031.P10656028401183308564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A388031.P10656028401183308564

/-! ## A388031.P10953203255097664386

`A276086(sqrt(A072861(n+1)))`
-/

namespace A388031.P10953203255097664386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A388031.P10953203255097664386

/-! ## A388031.P8107535708612271818

`A276086(A039653(n+1)+1)`
-/

namespace A388031.P8107535708612271818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A039653 (n + 1) + 1).toNat

end

end A388031.P8107535708612271818

/-! ## A388031.P523525393700069928

`A276086(A088580(n+1)-1)`
-/

namespace A388031.P523525393700069928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A088580 (n + 1) - 1).toNat

end

end A388031.P523525393700069928

/-! ## A388031.P15888016712789460541

`A276086(A239050(n+1)/4)`
-/

namespace A388031.P15888016712789460541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A388031.P15888016712789460541

/-! ## A388031.P4255343783503967469

`A276086(A001065(n+1)+n+1)`
-/

namespace A388031.P4255343783503967469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A388031.P4255343783503967469

/-! ## A388031.P11405099914818527274

`A276086(A333783(n+1)+A332993(n+1))`
-/

namespace A388031.P11405099914818527274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A333783 (n + 1) + A332993 (n + 1)).toNat

end

end A388031.P11405099914818527274

/-! ## A388031.P14778768621381629363

`A276086(A324644(n+1)*A369445(n+1))`
-/

namespace A388031.P14778768621381629363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A324644 (n + 1) * A369445 (n + 1)).toNat

end

end A388031.P14778768621381629363

/-! ## A388031.P11279282466032245844

`A276086(A351252(n+1)/A276086(n+1))`
-/

namespace A388031.P11279282466032245844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A351252 (n + 1) : ℚ) / (A276086 (n + 1) : ℚ))).toNat

end

end A388031.P11279282466032245844

/-!
# A388032: a(n) = gcd(A276086(sigma(n)), A276086(2*n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388032, there is no canonical definition to state claims against.
-/

/-! ## A388032.P14282694286225666806

`gcd(A276086(2*(n+1)), A388031(n+1))`
-/

namespace A388032.P14282694286225666806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (2 * (n + 1))) (A388031 (n + 1))

end

end A388032.P14282694286225666806

/-! ## A388032.P10905813676013906744

`gcd(A276086(A000203(n+1)), A276086(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388032.P10905813676013906744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A000203 (n + 1)).toNat) (A276086 (2 * (n + 1)))

end

end A388032.P10905813676013906744

/-! ## A388032.P7555132524430520548

`gcd(A276086(2*n+2), A276086(∑{d}[n+1, #]))`
-/

namespace A388032.P7555132524430520548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (2 * n + 2)) (A276086 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A388032.P7555132524430520548

/-!
# A388033: a(n) = gcd(A276086(sigma(n)), A276086(3*n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388033, there is no canonical definition to state claims against.
-/

/-! ## A388033.P1909377925171151161

`gcd(A276086(3*(n+1)), A388031(n+1))`
-/

namespace A388033.P1909377925171151161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (3 * (n + 1))) (A388031 (n + 1))

end

end A388033.P1909377925171151161

/-! ## A388033.P14720664566435617461

`gcd(A276086(A000203(n+1)), A276086(3*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388033.P14720664566435617461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A000203 (n + 1)).toNat) (A276086 (3 * (n + 1)))

end

end A388033.P14720664566435617461

/-! ## A388033.P10945968968944156294

`gcd(A276086(3*n+3), A276086(∑{d}[n+1, #]))`
-/

namespace A388033.P10945968968944156294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (3 * n + 3)) (A276086 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A388033.P10945968968944156294

/-!
# A388035: Primitive terms of A388034.

The programs for A388035, there is no canonical definition to state claims against.
-/

/-! ## A388035.P11091384403144666545

`A389712(A356750(n+1))`
-/

namespace A388035.P11091384403144666545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389712 (A356750 (n + 1)).toNat

end

end A388035.P11091384403144666545

/-!
# A388036: Numbers k such that gcd(A276086(sigma(k)), A276086(3*k)) = A276086(3*k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388036, there is no canonical definition to state claims against.
-/

/-! ## A388036.P6223336192906944764

`A256749(A264754(n+1))`
-/

namespace A388036.P6223336192906944764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256749 (A264754 (n + 1)).toNat

end

end A388036.P6223336192906944764

/-! ## A388036.P2391255197433395726

`filter[A256749(2*n+1), A169674(#)]`
-/

namespace A388036.P2391255197433395726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256749 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169674 (f1 j).toNat = 1) n)

end

end A388036.P2391255197433395726

/-! ## A388036.P10132134064043272685

`A056866(lt[A351106(n+3), A000567(n)])`
-/

namespace A388036.P10132134064043272685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351106 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056866 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A388036.P10132134064043272685

/-!
# A388037: Primitive terms of A388036.

The programs for A388037, there is no canonical definition to state claims against.
-/

/-! ## A388037.P7431513947398818109

`A322377(A005117(n+1)+A058832(n))`
-/

namespace A388037.P7431513947398818109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A005117 (n + 1) + A058832 n).toNat

end

end A388037.P7431513947398818109

/-! ## A388037.P3074851654407842254

`A322377(lcm(A169829(n+1), A256450(n)))`
-/

namespace A388037.P3074851654407842254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (Int.lcm (A169829 (n + 1)) (A256450 n))

end

end A388037.P3074851654407842254

/-!
# A388038: a(n) is the number of steps to reach 1 when the Sisyphus sequence (A350877) begins with n, or -1 if 1 is never reached.

The programs for A388038, there is no canonical definition to state claims against.
-/

/-! ## A388038.P8367071319540286076

`A160946(a(n-1)²)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=2`
-/

namespace A388038.P8367071319540286076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 2] fun n a =>
  A160946 (a (n - 1) ^ 2).toNat

end

end A388038.P8367071319540286076

/-!
# A388041: a(n) = n! * ((n-2) * 2^(n-1) + 1).

The programs for A388041, the canonical program `A388041.P14621709364107648952` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388041 has offset 0).

The definition of A388041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388041.P14621709364107648952

`n!*((n-2)*2^(n-1)+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388041

/-- `n!*((n-2)*2^(n-1)+1)` -/
def P14621709364107648952.Spec : Prop :=
  ∀ n, P14621709364107648952.a n = (A388041 n : ℚ)

end A388041

/-! ## A388041.P5502294267060441647

`∑[A139756(n)]*n!`
-/

namespace A388041.P5502294267060441647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (Nat.factorial n : ℤ)

end

end A388041.P5502294267060441647

namespace A388041

/-- `∑[A139756(n)]*n!` -/
def P5502294267060441647.Spec : Prop :=
  ∀ n, P5502294267060441647.a n = A388041 n

end A388041

/-! ## A388041.P11948221382800103931

`(n²-n)*A355258(n)`
-/

namespace A388041.P11948221382800103931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A355258 n

end

end A388041.P11948221382800103931

namespace A388041

/-- `(n²-n)*A355258(n)` -/
def P11948221382800103931.Spec : Prop :=
  ∀ n, P11948221382800103931.a n = A388041 n

end A388041

/-! ## A388041.P11923796454177218893

`∑[A139756(n)]*A000142(n)`
-/

namespace A388041.P11923796454177218893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A388041.P11923796454177218893

namespace A388041

/-- `∑[A139756(n)]*A000142(n)` -/
def P11923796454177218893.Spec : Prop :=
  ∀ n, P11923796454177218893.a n = A388041 n

end A388041

/-! ## A388041.P12161936894420562761

`A000142(n)*A211991(A000079(n))`
-/

namespace A388041.P12161936894420562761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A211991 (A000079 n).toNat

end

end A388041.P12161936894420562761

namespace A388041

/-- `A000142(n)*A211991(A000079(n))` -/
def P12161936894420562761.Spec : Prop :=
  ∀ n, P12161936894420562761.a n = A388041 n

end A388041

/-!
# A388043: a(n) = Sum_{k=0..n} binomial(3*n-2*k,n-k).

The programs for A388043, the canonical program `A388043.P15504191294830528357` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388043 has offset 0).

The definition of A388043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n-2*#, n-#)]` (program `A388043.P15504191294830528357`, by `A388043.P15504191294830528357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388043.P884863876286036657

`∑{#}[n, C(n+2*#, #)]`
-/

namespace A388043.P884863876286036657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 2 * k) k

end

end A388043.P884863876286036657

namespace A388043

/-- `∑{#}[n, C(n+2*#, #)]` -/
def P884863876286036657.Spec : Prop :=
  ∀ n, (P884863876286036657.a n : ℤ) = A388043 n

end A388043

/-! ## A388043.P15504191294830528357

`∑{#}[n, C(3*n-2*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388043

/-- `∑{#}[n, C(3*n-2*#, n-#)]` -/
def P15504191294830528357.Spec : Prop :=
  ∀ n, (P15504191294830528357.a n : ℤ) = A388043 n

theorem P15504191294830528357.correct : P15504191294830528357.Spec := by
  intro n
  simp only [A388043]

end A388043

/-! ## A388043.P10721877869829300719

`A361654(A058331(n+1))`
-/

namespace A388043.P10721877869829300719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A058331 (n + 1)).toNat

end

end A388043.P10721877869829300719

namespace A388043

/-- `A361654(A058331(n+1))` -/
def P10721877869829300719.Spec : Prop :=
  ∀ n, P10721877869829300719.a n = A388043 n

end A388043

/-! ## A388043.P1253406344584567865

`A013580(A062725(n))`
-/

namespace A388043.P1253406344584567865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A062725 n).toNat

end

end A388043.P1253406344584567865

namespace A388043

/-- `A013580(A062725(n))` -/
def P1253406344584567865.Spec : Prop :=
  ∀ n, P1253406344584567865.a n = A388043 n

end A388043

/-! ## A388043.P14616202824203884875

`A013580(A062728(n))`
-/

namespace A388043.P14616202824203884875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A062728 n).toNat

end

end A388043.P14616202824203884875

namespace A388043

/-- `A013580(A062728(n))` -/
def P14616202824203884875.Spec : Prop :=
  ∀ n, P14616202824203884875.a n = A388043 n

end A388043

/-!
# A388044: a(n) = number of k <= m such that rad(k) | m, where m = A001694(n) and rad(n) = A007947(n).

The programs for A388044, the canonical program `A388044.P13308265605785602702` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388044 has offset 1).

The definition of A388044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388044.P17226502017535246127

`A010846(A001694(n+1))`
-/

namespace A388044.P17226502017535246127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A001694 (n + 1)).toNat

end

end A388044.P17226502017535246127

namespace A388044

/-- `A010846(A001694(n+1))` -/
def P17226502017535246127.Spec : Prop :=
  ∀ n, P17226502017535246127.a n = A388044 (n + 1)

end A388044

/-! ## A388044.P10436588340872546445

`A010846(record[A057521(n+1)])`
-/

namespace A388044.P10436588340872546445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A388044.P10436588340872546445

namespace A388044

/-- `A010846(record[A057521(n+1)])` -/
def P10436588340872546445.Spec : Prop :=
  ∀ n, P10436588340872546445.a n = A388044 (n + 1)

end A388044

/-! ## A388044.P6097127126190271839

`A010846(A224866(1+n)-1)`
-/

namespace A388044.P6097127126190271839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A224866 (1 + n) - 1).toNat

end

end A388044.P6097127126190271839

namespace A388044

/-- `A010846(A224866(1+n)-1)` -/
def P6097127126190271839.Spec : Prop :=
  ∀ n, P6097127126190271839.a n = A388044 (n + 1)

end A388044

/-! ## A388044.P13308265605785602702

`A010846(eq[1, A056671(n+1)]+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A388044

/-- `A010846(eq[1, A056671(n+1)]+1)` -/
def P13308265605785602702.Spec : Prop :=
  ∀ n, P13308265605785602702.a n = A388044 (n + 1)

theorem P13308265605785602702.correct : P13308265605785602702.Spec := by
  intro n
  simp only [A388044, Nat.add_sub_cancel]

end A388044

/-!
# A388045: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(3*n+1,k).

The programs for A388045, the canonical program `A388045.P335696645418001648` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388045 has offset 0).

The definition of A388045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n, #)*C(3*n+1, #)]` (program `A388045.P335696645418001648`, by `A388045.P335696645418001648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388045.P934095012064332087

`∑{#}[n, C(n, #)*C(3*n+#+1, n)]`
-/

namespace A388045.P934095012064332087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (3 * n + k + 1) n

end

end A388045.P934095012064332087

namespace A388045

/-- `∑{#}[n, C(n, #)*C(3*n+#+1, n)]` -/
def P934095012064332087.Spec : Prop :=
  ∀ n, (P934095012064332087.a n : ℤ) = A388045 n

end A388045

/-! ## A388045.P335696645418001648

`∑{#}[n, 2^#*C(n, #)*C(3*n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388045

/-- `∑{#}[n, 2^#*C(n, #)*C(3*n+1, #)]` -/
def P335696645418001648.Spec : Prop :=
  ∀ n, (P335696645418001648.a n : ℤ) = A388045 n

theorem P335696645418001648.correct : P335696645418001648.Spec := by
  intro n
  simp only [A388045]

end A388045

/-! ## A388045.P14765877534169601546

`A008288(A194268(n))`
-/

namespace A388045.P14765877534169601546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A194268 n).toNat

end

end A388045.P14765877534169601546

namespace A388045

/-- `A008288(A194268(n))` -/
def P14765877534169601546.Spec : Prop :=
  ∀ n, P14765877534169601546.a n = A388045 n

end A388045

/-! ## A388045.P7882288271475810474

`A008288(A125201(n+1))`
-/

namespace A388045.P7882288271475810474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A125201 (n + 1)).toNat

end

end A388045.P7882288271475810474

namespace A388045

/-- `A008288(A125201(n+1))` -/
def P7882288271475810474.Spec : Prop :=
  ∀ n, P7882288271475810474.a n = A388045 n

end A388045

/-! ## A388045.P7490214393471926647

`A112475(A139273(n+1))`
-/

namespace A388045.P7490214393471926647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A139273 (n + 1)).toNat

end

end A388045.P7490214393471926647

namespace A388045

/-- `A112475(A139273(n+1))` -/
def P7490214393471926647.Spec : Prop :=
  ∀ n, P7490214393471926647.a n = A388045 n

end A388045

/-!
# A388046: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(4*n+1,k).

The programs for A388046, the canonical program `A388046.P6385252999507832761` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388046 has offset 0).

The definition of A388046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n, #)*C(4*n+1, #)]` (program `A388046.P6385252999507832761`, by `A388046.P6385252999507832761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388046.P16173052964990809749

`∑{#}[n, C(n, #)*C(4*n+#+1, n)]`
-/

namespace A388046.P16173052964990809749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (4 * n + k + 1) n

end

end A388046.P16173052964990809749

namespace A388046

/-- `∑{#}[n, C(n, #)*C(4*n+#+1, n)]` -/
def P16173052964990809749.Spec : Prop :=
  ∀ n, (P16173052964990809749.a n : ℤ) = A388046 n

end A388046

/-! ## A388046.P6385252999507832761

`∑{#}[n, 2^#*C(n, #)*C(4*n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388046

/-- `∑{#}[n, 2^#*C(n, #)*C(4*n+1, #)]` -/
def P6385252999507832761.Spec : Prop :=
  ∀ n, (P6385252999507832761.a n : ℤ) = A388046 n

theorem P6385252999507832761.correct : P6385252999507832761.Spec := by
  intro n
  simp only [A388046]

end A388046

/-! ## A388046.P15393669617286316278

`A388052(A000217(4+n)+n)`
-/

namespace A388046.P15393669617286316278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388052 (A000217 (4 + n) + (n : ℤ)).toNat

end

end A388046.P15393669617286316278

namespace A388046

/-- `A388052(A000217(4+n)+n)` -/
def P15393669617286316278.Spec : Prop :=
  ∀ n, P15393669617286316278.a n = A388046 n

end A388046

/-! ## A388046.P13820556868199533950

`A216182(A062728(n))`
-/

namespace A388046.P13820556868199533950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 (A062728 n).toNat

end

end A388046.P13820556868199533950

namespace A388046

/-- `A216182(A062728(n))` -/
def P13820556868199533950.Spec : Prop :=
  ∀ n, P13820556868199533950.a n = A388046 n

end A388046

/-!
# A388047: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+1,k).

The programs for A388047, the canonical program `A388047.P8010365434717876975` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388047 has offset 0).

The definition of A388047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(n+1, #)]` (program `A388047.P8010365434717876975`, by `A388047.P8010365434717876975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388047.P8010365434717876975

`∑{#}[n, 3^#*C(n, #)*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388047

/-- `∑{#}[n, 3^#*C(n, #)*C(n+1, #)]` -/
def P8010365434717876975.Spec : Prop :=
  ∀ n, (P8010365434717876975.a n : ℤ) = A388047 n

theorem P8010365434717876975.correct : P8010365434717876975.Spec := by
  intro n
  simp only [A388047]

end A388047

/-! ## A388047.P4280822375263779673

`∑[A052392(n)]`
-/

namespace A388047.P4280822375263779673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388047.P4280822375263779673

namespace A388047

/-- `∑[A052392(n)]` -/
def P4280822375263779673.Spec : Prop :=
  ∀ n, P4280822375263779673.a n = A388047 n

end A388047

/-! ## A388047.P7646976436807157314

`∑{#}[n, C(n, #)*A260774(#)]`
-/

namespace A388047.P7646976436807157314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A260774 k

end

end A388047.P7646976436807157314

namespace A388047

/-- `∑{#}[n, C(n, #)*A260774(#)]` -/
def P7646976436807157314.Spec : Prop :=
  ∀ n, P7646976436807157314.a n = A388047 n

end A388047

/-! ## A388047.P6145581854964831784

`A081577(2*(1+n)²)`
-/

namespace A388047.P6145581854964831784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (2 * (1 + n) ^ 2)

end

end A388047.P6145581854964831784

namespace A388047

/-- `A081577(2*(1+n)²)` -/
def P6145581854964831784.Spec : Prop :=
  ∀ n, P6145581854964831784.a n = A388047 n

end A388047

/-! ## A388047.P10422469682137968549

`∑[A054120(2*(n+1)²)]`
-/

namespace A388047.P10422469682137968549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388047.P10422469682137968549

namespace A388047

/-- `∑[A054120(2*(n+1)²)]` -/
def P10422469682137968549.Spec : Prop :=
  ∀ n, P10422469682137968549.a n = A388047 n

end A388047

/-! ## A388047.P8893895992537636

`record[A081577(A093005(n+1))]`
-/

namespace A388047.P8893895992537636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A093005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388047.P8893895992537636

namespace A388047

/-- `record[A081577(A093005(n+1))]` -/
def P8893895992537636.Spec : Prop :=
  ∀ n, P8893895992537636.a n = A388047 n

end A388047

/-! ## A388047.P10842433989829154395

`A152842(A054000(n+1)+1)`
-/

namespace A388047.P10842433989829154395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A054000 (n + 1) + 1).toNat

end

end A388047.P10842433989829154395

namespace A388047

/-- `A152842(A054000(n+1)+1)` -/
def P10842433989829154395.Spec : Prop :=
  ∀ n, P10842433989829154395.a n = A388047 n

end A388047

/-! ## A388047.P6038191839891804335

`A152842(eq[2, A071321(n+1)])`
-/

namespace A388047.P6038191839891804335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A388047.P6038191839891804335

namespace A388047

/-- `A152842(eq[2, A071321(n+1)])` -/
def P6038191839891804335.Spec : Prop :=
  ∀ n, P6038191839891804335.a n = A388047 n

end A388047

/-! ## A388047.P12459998009823600404

`A152842(A090288(n)-A005408(n))`
-/

namespace A388047.P12459998009823600404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A090288 n - A005408 n).toNat

end

end A388047.P12459998009823600404

namespace A388047

/-- `A152842(A090288(n)-A005408(n))` -/
def P12459998009823600404.Spec : Prop :=
  ∀ n, P12459998009823600404.a n = A388047 n

end A388047

/-!
# A388048: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(2*n+1,k).

The programs for A388048, the canonical program `A388048.P12449995349755214234` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388048 has offset 0).

The definition of A388048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(2*n+1, #)]` (program `A388048.P12449995349755214234`, by `A388048.P12449995349755214234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388048.P12449995349755214234

`∑{#}[n, 3^#*C(n, #)*C(2*n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388048

/-- `∑{#}[n, 3^#*C(n, #)*C(2*n+1, #)]` -/
def P12449995349755214234.Spec : Prop :=
  ∀ n, (P12449995349755214234.a n : ℤ) = A388048 n

theorem P12449995349755214234.correct : P12449995349755214234.Spec := by
  intro n
  simp only [A388048]

end A388048

/-! ## A388048.P7055662144172850703

`A081577(C(3*n+2, 2)+n)`
-/

namespace A388048.P7055662144172850703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (Nat.choose (3 * n + 2) 2 + n)

end

end A388048.P7055662144172850703

namespace A388048

/-- `A081577(C(3*n+2, 2)+n)` -/
def P7055662144172850703.Spec : Prop :=
  ∀ n, P7055662144172850703.a n = A388048 n

end A388048

/-! ## A388048.P1539702053254764852

`A081577(A051682(n+1))`
-/

namespace A388048.P1539702053254764852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A051682 (n + 1)).toNat

end

end A388048.P1539702053254764852

namespace A388048

/-- `A081577(A051682(n+1))` -/
def P1539702053254764852.Spec : Prop :=
  ∀ n, P1539702053254764852.a n = A388048 n

end A388048

/-! ## A388048.P10864453107746517109

`A081577(A062708(n+1))`
-/

namespace A388048.P10864453107746517109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A062708 (n + 1)).toNat

end

end A388048.P10864453107746517109

namespace A388048

/-- `A081577(A062708(n+1))` -/
def P10864453107746517109.Spec : Prop :=
  ∀ n, P10864453107746517109.a n = A388048 n

end A388048

/-! ## A388048.P10963359707315019532

`A081577(A081268(n)+1)`
-/

namespace A388048.P10963359707315019532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A081268 n + 1).toNat

end

end A388048.P10963359707315019532

namespace A388048

/-- `A081577(A081268(n)+1)` -/
def P10963359707315019532.Spec : Prop :=
  ∀ n, P10963359707315019532.a n = A388048 n

end A388048

/-!
# A388049: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(3*n+1,k).

The programs for A388049, the canonical program `A388049.P17392265272776558511` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388049 has offset 0).

The definition of A388049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(3*n+1, #)]` (program `A388049.P17392265272776558511`, by `A388049.P17392265272776558511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388049.P17392265272776558511

`∑{#}[n, 3^#*C(n, #)*C(3*n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388049

/-- `∑{#}[n, 3^#*C(n, #)*C(3*n+1, #)]` -/
def P17392265272776558511.Spec : Prop :=
  ∀ n, (P17392265272776558511.a n : ℤ) = A388049 n

theorem P17392265272776558511.correct : P17392265272776558511.Spec := by
  intro n
  simp only [A388049]

end A388049

/-! ## A388049.P3507666461742338544

`A081577(n*(8*n+7)+1)`
-/

namespace A388049.P3507666461742338544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (n * (8 * n + 7) + 1)

end

end A388049.P3507666461742338544

namespace A388049

/-- `A081577(n*(8*n+7)+1)` -/
def P3507666461742338544.Spec : Prop :=
  ∀ n, P3507666461742338544.a n = A388049 n

end A388049

/-!
# A388050: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(4*n+1,k).

The programs for A388050, the canonical program `A388050.P8499097282011738657` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388050 has offset 0).

The definition of A388050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(4*n+1, #)]` (program `A388050.P8499097282011738657`, by `A388050.P8499097282011738657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388050.P8499097282011738657

`∑{#}[n, 3^#*C(n, #)*C(4*n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388050

/-- `∑{#}[n, 3^#*C(n, #)*C(4*n+1, #)]` -/
def P8499097282011738657.Spec : Prop :=
  ∀ n, (P8499097282011738657.a n : ℤ) = A388050 n

theorem P8499097282011738657.correct : P8499097282011738657.Spec := by
  intro n
  simp only [A388050]

end A388050

/-! ## A388050.P15736893265754055058

`A081577(A081268(n)+A033585(n))`
-/

namespace A388050.P15736893265754055058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A081268 n + A033585 n).toNat

end

end A388050.P15736893265754055058

namespace A388050

/-- `A081577(A081268(n)+A033585(n))` -/
def P15736893265754055058.Spec : Prop :=
  ∀ n, P15736893265754055058.a n = A388050 n

end A388050

/-!
# A388051: Integers which can be represented as a sum of two nontrivial powers in two or more ways.

The programs for A388051, there is no canonical definition to state claims against.
-/

/-! ## A388051.P6938883855035054275

`lt[A026820(A025479(n+3)), A362422(n)]`
-/

namespace A388051.P6938883855035054275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A025479 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388051.P6938883855035054275

/-!
# A388053: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n^2+k+1,n).

The programs for A388053, the canonical program `A388053.P13062986219964032559` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388053 has offset 0).

The definition of A388053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n²+#+1, n)]` (program `A388053.P13062986219964032559`, by `A388053.P13062986219964032559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388053.P13062986219964032559

`∑{#}[n, C(n, #)*C(n²+#+1, n)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388053

/-- `∑{#}[n, C(n, #)*C(n²+#+1, n)]` -/
def P13062986219964032559.Spec : Prop :=
  ∀ n, (P13062986219964032559.a n : ℤ) = A388053 n

theorem P13062986219964032559.correct : P13062986219964032559.Spec := by
  intro n
  simp only [A388053]

end A388053

/-! ## A388053.P9674961664998268682

`A388052(∑[4*n])`
-/

namespace A388053.P9674961664998268682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A388053.P9674961664998268682

namespace A388053

/-- `A388052(∑[4*n])` -/
def P9674961664998268682.Spec : Prop :=
  ∀ n, P9674961664998268682.a n = A388053 n

end A388053

/-! ## A388053.P17498914407994918699

`A388052(A000217(2*n)+n)%A048631(2*(n+1))`
-/

namespace A388053.P17498914407994918699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A388052 (A000217 (2 * n) + (n : ℤ)).toNat) (A048631 (2 * (n + 1)))

end

end A388053.P17498914407994918699

namespace A388053

/-- `A388052(A000217(2*n)+n)%A048631(2*(n+1))` -/
def P17498914407994918699.Spec : Prop :=
  ∀ n, P17498914407994918699.a n = A388053 n

end A388053

/-!
# A388054: Numbers k > 2 such that (k - 2^m)*2^m + 1 is prime for every m > 0 with 2^m < k.

The programs for A388054, there is no canonical definition to state claims against.
-/

/-! ## A388054.P3930611813093194150

`A006928(A181769(n))+A000793(n+2)`
-/

namespace A388054.P3930611813093194150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A181769 n).toNat + A000793 (n + 2)

end

end A388054.P3930611813093194150

/-! ## A388054.P11258245415771278468

`A398355(n+2)+A319696(A001764(n))`
-/

namespace A388054.P11258245415771278468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398355 (n + 2) + A319696 (A001764 n).toNat

end

end A388054.P11258245415771278468

/-! ## A388054.P15542038247713060884

`A376598(A181600(n+1))-A181600(n)`
-/

namespace A388054.P15542038247713060884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376598 (A181600 (n + 1)).toNat - A181600 n

end

end A388054.P15542038247713060884

/-! ## A388054.P9801109120126199077

`A360678(A020487(n+3))+A000930(n+2)`
-/

namespace A388054.P9801109120126199077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (A020487 (n + 3)).toNat + A000930 (n + 2)

end

end A388054.P9801109120126199077

/-! ## A388054.P8736464969558343585

`A088243(A354580(n))+A124765(n)+A124761(n)`
-/

namespace A388054.P8736464969558343585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088243 (A354580 n).toNat + (A124765 n + A124761 n)

end

end A388054.P8736464969558343585

/-!
# A388059: Smallest multiple of n that does not contain the digit 1 in its decimal representation.

The programs for A388059, there is no canonical definition to state claims against.
-/

/-! ## A388059.P5523538605663456561

`(n+1)*A056990(A288685(n))`
-/

namespace A388059.P5523538605663456561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056990 (A288685 n).toNat

end

end A388059.P5523538605663456561

/-! ## A388059.P10995453743795085745

`A168019(A001318(3*n+4))+(n+1)*∑{digits}[n+1, 10^#]%9`
-/

namespace A388059.P10995453743795085745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (A001318 (3 * n + 4)).toNat + (((n + 1) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9) : ℕ) : ℤ)

end

end A388059.P10995453743795085745

/-! ## A388059.P10038205619044239046

`A110803(n+1)+A014075(A055574(n+1))`
-/

namespace A388059.P10038205619044239046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110803 (n + 1) + A014075 (A055574 (n + 1)).toNat

end

end A388059.P10038205619044239046

/-! ## A388059.P3331985265020577015

`A110803(n+1)-A232714(A000204(n+1))`
-/

namespace A388059.P3331985265020577015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110803 (n + 1) - A232714 (A000204 (n + 1)).toNat

end

end A388059.P3331985265020577015

/-! ## A388059.P6620169139161666274

`A168019(A001318(3*n+4))+(n+1)*A055642(n+1)`
-/

namespace A388059.P6620169139161666274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (A001318 (3 * n + 4)).toNat + (n + 1 : ℤ) * A055642 (n + 1)

end

end A388059.P6620169139161666274

/-!
# A388060: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+1,k).

The programs for A388060, the canonical program `A388060.P288260941481769411` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388060 has offset 0).

The definition of A388060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*C(n+1, #)]` (program `A388060.P288260941481769411`, by `A388060.P288260941481769411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388060.P288260941481769411

`∑{#}[n, 4^#*C(n, #)*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388060

/-- `∑{#}[n, 4^#*C(n, #)*C(n+1, #)]` -/
def P288260941481769411.Spec : Prop :=
  ∀ n, (P288260941481769411.a n : ℤ) = A388060 n

theorem P288260941481769411.correct : P288260941481769411.Spec := by
  intro n
  simp only [A388060]

end A388060

/-! ## A388060.P4724312809703244059

`A051708(n+2)-A084771(n)`
-/

namespace A388060.P4724312809703244059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051708 (n + 2) - A084771 n

end

end A388060.P4724312809703244059

namespace A388060

/-- `A051708(n+2)-A084771(n)` -/
def P4724312809703244059.Spec : Prop :=
  ∀ n, P4724312809703244059.a n = A388060 n

end A388060

/-! ## A388060.P10420952751908136420

`A084771(n)+2*A059231(n)*2*n`
-/

namespace A388060.P10420952751908136420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + 2 * A059231 n * (2 * n : ℤ)

end

end A388060.P10420952751908136420

namespace A388060

/-- `A084771(n)+2*A059231(n)*2*n` -/
def P10420952751908136420.Spec : Prop :=
  ∀ n, P10420952751908136420.a n = A388060 n

end A388060

/-! ## A388060.P16319452557749934633

`A081578(2*(n+1)²)`
-/

namespace A388060.P16319452557749934633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (2 * (n + 1) ^ 2)

end

end A388060.P16319452557749934633

namespace A388060

/-- `A081578(2*(n+1)²)` -/
def P16319452557749934633.Spec : Prop :=
  ∀ n, P16319452557749934633.a n = A388060 n

end A388060

/-! ## A388060.P15591841645811004316

`record[A081578(A278115(n+1))]`
-/

namespace A388060.P15591841645811004316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A278115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388060.P15591841645811004316

namespace A388060

/-- `record[A081578(A278115(n+1))]` -/
def P15591841645811004316.Spec : Prop :=
  ∀ n, P15591841645811004316.a n = A388060 n

end A388060

/-!
# A388061: a(n) = Sum_{k=0..n} 5^k * binomial(n,k) * binomial(n+1,k).

The programs for A388061, the canonical program `A388061.P9822377354897866995` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388061 has offset 0).

The definition of A388061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 5^#*C(n, #)*C(n+1, #)]` (program `A388061.P9822377354897866995`, by `A388061.P9822377354897866995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388061.P9822377354897866995

`∑{#}[n, 5^#*C(n, #)*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388061

/-- `∑{#}[n, 5^#*C(n, #)*C(n+1, #)]` -/
def P9822377354897866995.Spec : Prop :=
  ∀ n, (P9822377354897866995.a n : ℤ) = A388061 n

theorem P9822377354897866995.correct : P9822377354897866995.Spec := by
  intro n
  simp only [A388061]

end A388061

/-! ## A388061.P17558915411395165173

`A081579(2*(1+n)²)`
-/

namespace A388061.P17558915411395165173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (2 * (1 + n) ^ 2)

end

end A388061.P17558915411395165173

namespace A388061

/-- `A081579(2*(1+n)²)` -/
def P17558915411395165173.Spec : Prop :=
  ∀ n, P17558915411395165173.a n = A388061 n

end A388061

/-! ## A388061.P3420612003964754705

`abs(A123218((2*n+1)*2*(n+1)))`
-/

namespace A388061.P3420612003964754705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123218 ((2 * n + 1) * (2 * (n + 1)))|

end

end A388061.P3420612003964754705

namespace A388061

/-- `abs(A123218((2*n+1)*2*(n+1)))` -/
def P3420612003964754705.Spec : Prop :=
  ∀ n, P3420612003964754705.a n = A388061 n

end A388061

/-!
# A388062: Least prime p such that p+A135311(k) is prime for 2 <= k <= n, but not for k = n+1, or 0 if no such prime exists.

The programs for A388062, there is no canonical definition to state claims against.
-/

/-! ## A388062.P3134692646090563042

`A344448(A238366(n))`
-/

namespace A388062.P3134692646090563042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344448 (A238366 n).toNat

end

end A388062.P3134692646090563042

/-!
# A388064: Total number of parts in all partitions of n with designated summands.

The programs for A388064, there is no canonical definition to state claims against.
-/

/-! ## A388064.P9015069980918836382

`A274230(n+1)+A051903(A000312(n))`
-/

namespace A388064.P9015069980918836382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (n + 1) + A051903 (A000312 n).toNat

end

end A388064.P9015069980918836382

/-! ## A388064.P12763915332843293672

`A000005(A001715(n+3))-A325567(n+5)`
-/

namespace A388064.P12763915332843293672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001715 (n + 3)).toNat - A325567 (n + 5)

end

end A388064.P12763915332843293672

/-!
# A388066: Numbers k such that the sum of the first k primes minus one is prime.

The programs for A388066, there is no canonical definition to state claims against.
-/

/-! ## A388066.P15701685026399173638

`eq[1, A007504(n)-A366094(n)]`
-/

namespace A388066.P15701685026399173638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A366094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388066.P15701685026399173638

/-! ## A388066.P13741117371317094806

`eq[1, A010051(A237589(n+1))]+1`
-/

namespace A388066.P13741117371317094806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A237589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388066.P13741117371317094806

/-! ## A388066.P17482258712020951180

`eq[3, A077982(A007504(n))]`
-/

namespace A388066.P17482258712020951180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388066.P17482258712020951180

/-!
# A388067: Multiplicative sequence a(n) with a(p^e) = (1+floor(e/2)) * (2+floor(e/2)) / 2 for prime p and e >= 0.

The programs for A388067, the canonical program `A388067.P9453088931527127366` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388067 has offset 1).

The definition of A388067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388067.P9453088931527127366

`∑{d}[n+1, A369308(#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A388067

/-- `∑{d}[n+1, A369308(#)]` -/
def P9453088931527127366.Spec : Prop :=
  ∀ n, P9453088931527127366.a n = A388067 (n + 1)

theorem P9453088931527127366.correct : P9453088931527127366.Spec := by
  intro n
  simp only [A388067, Nat.add_sub_cancel]

end A388067

/-! ## A388067.P5240999910639947005

`∏{e}[n+1, A008805(#)]`
-/

namespace A388067.P5240999910639947005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008805 (Nat.factorization (f1 n) p)

end

end A388067.P5240999910639947005

namespace A388067

/-- `∏{e}[n+1, A008805(#)]` -/
def P5240999910639947005.Spec : Prop :=
  ∀ n, P5240999910639947005.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P5838446398265993867

`∏{e}[A000188(n+1), C(2+#, #)]`
-/

namespace A388067.P5838446398265993867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (2 + Nat.factorization (f1 n).natAbs p) (Nat.factorization (f1 n).natAbs p)

end

end A388067.P5838446398265993867

namespace A388067

/-- `∏{e}[A000188(n+1), C(2+#, #)]` -/
def P5838446398265993867.Spec : Prop :=
  ∀ n, (P5838446398265993867.a n : ℤ) = A388067 (n + 1)

end A388067

/-! ## A388067.P529675041756375254

`A007425(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A388067.P529675041756375254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A388067.P529675041756375254

namespace A388067

/-- `A007425(∏{p}[n+1, #^val(n+1, #²)])` -/
def P529675041756375254.Spec : Prop :=
  ∀ n, P529675041756375254.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P8592527756349370700

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000005(#)]`
-/

namespace A388067.P8592527756349370700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d

end

end A388067.P8592527756349370700

namespace A388067

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000005(#)]` -/
def P8592527756349370700.Spec : Prop :=
  ∀ n, P8592527756349370700.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P826781414591879446

`A007425(A000188(n+1))`
-/

namespace A388067.P826781414591879446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A000188 (n + 1)).toNat

end

end A388067.P826781414591879446

namespace A388067

/-- `A007425(A000188(n+1))` -/
def P826781414591879446.Spec : Prop :=
  ∀ n, P826781414591879446.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P15992155043861763282

`A401083(A003557(n+1))`
-/

namespace A388067.P15992155043861763282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401083 (A003557 (n + 1)).toNat

end

end A388067.P15992155043861763282

namespace A388067

/-- `A401083(A003557(n+1))` -/
def P15992155043861763282.Spec : Prop :=
  ∀ n, P15992155043861763282.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P17509547583698848283

`A007425((n+1)/A019554(n+1))`
-/

namespace A388067.P17509547583698848283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A388067.P17509547583698848283

namespace A388067

/-- `A007425((n+1)/A019554(n+1))` -/
def P17509547583698848283.Spec : Prop :=
  ∀ n, P17509547583698848283.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P5435324738934803970

`∑{d}[n+1, A008836(#)*A124315((n+1)/#)]`
-/

namespace A388067.P5435324738934803970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P5435324738934803970

namespace A388067

/-- `∑{d}[n+1, A008836(#)*A124315((n+1)/#)]` -/
def P5435324738934803970.Spec : Prop :=
  ∀ n, P5435324738934803970.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P16626309545747680746

`∑{d}[n+1, A007425(#)*A329484((n+1)/#)]`
-/

namespace A388067.P16626309545747680746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P16626309545747680746

namespace A388067

/-- `∑{d}[n+1, A007425(#)*A329484((n+1)/#)]` -/
def P16626309545747680746.Spec : Prop :=
  ∀ n, P16626309545747680746.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P3188609641355944481

`∑{d}[n+1, A092520(#)*A307420((n+1)/#)]`
-/

namespace A388067.P3188609641355944481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P3188609641355944481

namespace A388067

/-- `∑{d}[n+1, A092520(#)*A307420((n+1)/#)]` -/
def P3188609641355944481.Spec : Prop :=
  ∀ n, P3188609641355944481.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P7528127907440300663

`∑{d}[n+1, A056624(#)*A370256((n+1)/#)]`
-/

namespace A388067.P7528127907440300663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P7528127907440300663

namespace A388067

/-- `∑{d}[n+1, A056624(#)*A370256((n+1)/#)]` -/
def P7528127907440300663.Spec : Prop :=
  ∀ n, P7528127907440300663.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P15551782968182495035

`∑{d}[n+1, A061704(#)*A389887((n+1)/#)]`
-/

namespace A388067.P15551782968182495035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A389887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P15551782968182495035

namespace A388067

/-- `∑{d}[n+1, A061704(#)*A389887((n+1)/#)]` -/
def P15551782968182495035.Spec : Prop :=
  ∀ n, P15551782968182495035.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P11767799134915741048

`∑{d}[n+1, A307423(#)*A322885((n+1)/#)]`
-/

namespace A388067.P11767799134915741048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307423 d * A322885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P11767799134915741048

namespace A388067

/-- `∑{d}[n+1, A307423(#)*A322885((n+1)/#)]` -/
def P11767799134915741048.Spec : Prop :=
  ∀ n, P11767799134915741048.a n = A388067 (n + 1)

end A388067

/-!
# A388070: Number of compositions of n where the gcd of the parts equals the median of the parts.

The programs for A388070, there is no canonical definition to state claims against.
-/

/-! ## A388070.P1850613314472611700

`∑{d}[n+1, A391398(#)]`
-/

namespace A388070.P1850613314472611700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391398 d

end

end A388070.P1850613314472611700

/-!
# A388072: a(n) = Kronecker symbol (-10/n).

The programs for A388072, the canonical program `A388072.P14779318985125589135` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388072 has offset 0).

The definition of A388072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388072.P14779318985125589135

`A080891(n)*A188510(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A388072

/-- `A080891(n)*A188510(n)` -/
def P14779318985125589135.Spec : Prop :=
  ∀ n, P14779318985125589135.a n = A388072 n

theorem P14779318985125589135.correct : P14779318985125589135.Spec := by
  intro n
  simp only [A388072]

end A388072

/-!
# A388073: a(n) = Kronecker symbol (-39/n) = (n/39).

The programs for A388073, the canonical program `A388073.P2282890064848621379` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388073 has offset 0).

The definition of A388073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388073.P2282890064848621379

`A102283(n)*A011583(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A388073

/-- `A102283(n)*A011583(n)` -/
def P2282890064848621379.Spec : Prop :=
  ∀ n, P2282890064848621379.a n = A388073 n

theorem P2282890064848621379.correct : P2282890064848621379.Spec := by
  intro n
  simp only [A388073]

end A388073

/-!
# A388076: Integers which can be expressed as the sum of three distinct perfect powers.

The programs for A388076, there is no canonical definition to state claims against.
-/

/-! ## A388076.P8075986898476901876

`lt[0, A362425(n)]`
-/

namespace A388076.P8075986898476901876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A388076.P8075986898476901876

/-! ## A388076.P4719824604972500778

`A391195(n+4)+A179010(filter[2*n+1, A353812(#)])`
-/

namespace A388076.P4719824604972500778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 4) + A179010 (f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j) = 1) n))

end

end A388076.P4719824604972500778

/-! ## A388076.P5668109923574743507

`A391195(n+4)+A179010(filter[2*n+1, A361025(#)])`
-/

namespace A388076.P5668109923574743507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 4) + A179010 (f1 (SequenceMachineLib.nth (fun j => A361025 (f1 j) = 1) n))

end

end A388076.P5668109923574743507

/-!
# A388077: Complement of A000332.

The programs for A388077, the canonical program `A388077.P17750427128830897830` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388077 has offset 1).

The definition of A388077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388077.P6327443858052778415

`comp[C(n, 4)]`
-/

namespace A388077.P6327443858052778415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A388077.P6327443858052778415

namespace A388077

/-- `comp[C(n, 4)]` -/
def P6327443858052778415.Spec : Prop :=
  ∀ n, (P6327443858052778415.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P18383951922531493201

`comp[∑[∑[∑[n]]]]`
-/

namespace A388077.P18383951922531493201
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A388077.P18383951922531493201

namespace A388077

/-- `comp[∑[∑[∑[n]]]]` -/
def P18383951922531493201.Spec : Prop :=
  ∀ n, (P18383951922531493201.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P16026394247131028531

`fp[C(n+3, 4)-n]+n`
-/

namespace A388077.P16026394247131028531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 4 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + n

end

end A388077.P16026394247131028531

namespace A388077

/-- `fp[C(n+3, 4)-n]+n` -/
def P16026394247131028531.Spec : Prop :=
  ∀ n, (P16026394247131028531.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P13335971745699302800

`∑[runs[row(row(3*n)+1)+1-n]]`
-/

namespace A388077.P13335971745699302800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (SequenceMachineLib.triRow (3 * n) + 1) + 1 : ℤ) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388077.P13335971745699302800

namespace A388077

/-- `∑[runs[row(row(3*n)+1)+1-n]]` -/
def P13335971745699302800.Spec : Prop :=
  ∀ n, (P13335971745699302800.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P12102508685756669081

`comp[C(∑[sqrt(T(n-2,k))]+5, 4)-1]+1` with `a(0)=-2, a(1)=1, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A388077.P12102508685756669081
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [-2, 1, 1, 0, 1] fun n f2 =>
  Real.sqrt (SequenceMachineLib.triUp2 f2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j + 5)).toNat 4 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388077.P12102508685756669081

namespace A388077

/-- `comp[C(∑[sqrt(T(n-2,k))]+5, 4)-1]+1` -/
def P12102508685756669081.Spec : Prop :=
  ∀ n, (P12102508685756669081.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P17750427128830897830

`eq[0, A256436(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A388077

/-- `eq[0, A256436(n)]` -/
def P17750427128830897830.Spec : Prop :=
  ∀ n, (P17750427128830897830.a n : ℤ) = A388077 (n + 1)

theorem P17750427128830897830.correct : P17750427128830897830.Spec := by
  intro n
  simp only [A388077, Nat.add_sub_cancel]

end A388077

/-! ## A388077.P6039618861462600786

`and(comp[A000332(n)], -1)`
-/

namespace A388077.P6039618861462600786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A388077.P6039618861462600786

namespace A388077

/-- `and(comp[A000332(n)], -1)` -/
def P6039618861462600786.Spec : Prop :=
  ∀ n, P6039618861462600786.a n = A388077 (n + 1)

end A388077

/-! ## A388077.P17578282682637517382

`lt[1, A283365(n)]`
-/

namespace A388077.P17578282682637517382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A388077.P17578282682637517382

namespace A388077

/-- `lt[1, A283365(n)]` -/
def P17578282682637517382.Spec : Prop :=
  ∀ n, (P17578282682637517382.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P1628860093362869593

`fp[n+1-fp[∑[∑[∑[n]]]]]`
-/

namespace A388077.P1628860093362869593
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => n < f2 j) 0 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A388077.P1628860093362869593

namespace A388077

/-- `fp[n+1-fp[∑[∑[∑[n]]]]]` -/
def P1628860093362869593.Spec : Prop :=
  ∀ n, (P1628860093362869593.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P5687960163706715050

`comp[A000332(log2(xor(n, n+1)+1)+2)-1]+1`
-/

namespace A388077.P5687960163706715050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) + 2)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388077.P5687960163706715050

namespace A388077

/-- `comp[A000332(log2(xor(n, n+1)+1)+2)-1]+1` -/
def P5687960163706715050.Spec : Prop :=
  ∀ n, (P5687960163706715050.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P1886044203058253827

`lt[2, A194883(n)]`
-/

namespace A388077.P1886044203058253827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A388077.P1886044203058253827

namespace A388077

/-- `lt[2, A194883(n)]` -/
def P1886044203058253827.Spec : Prop :=
  ∀ n, (P1886044203058253827.a n : ℤ) = A388077 (n + 1)

end A388077

/-!
# A388078: Smallest prime p such that p + 6^i is prime for all i = 1 to n and not for i = n + 1.

The programs for A388078, there is no canonical definition to state claims against.
-/

/-! ## A388078.P4364792504770681300

`A247877(A359904(n+2))`
-/

namespace A388078.P4364792504770681300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247877 (A359904 (n + 2)).toNat

end

end A388078.P4364792504770681300

