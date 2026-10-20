import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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

/-!
# A330900: Number of terms of A066038 that do not exceed 10^n.

The programs for A330900, there is no canonical definition to state claims against.
-/

/-! ## A330900.P14695221419518379638

`A097508(A084076(n)*A195119(n))`
-/

namespace A330900.P14695221419518379638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A084076 n * A195119 n).toNat

end

end A330900.P14695221419518379638

/-!
# A330904: Numbers m such that the number of 1's in the binary expansion of m equals the sum of the balanced ternary trits of m.

The programs for A330904, the canonical program `A330904.P16669225455194206827` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330904 has offset 1).

The definition of A330904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330904.P16669225455194206827

`eq[A000120(n), A065363(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330904

/-- `eq[A000120(n), A065363(n)]` -/
def P16669225455194206827.Spec : Prop :=
  ∀ n, (P16669225455194206827.a n : ℤ) = A330904 (n + 1)

theorem P16669225455194206827.correct : P16669225455194206827.Spec := by
  intro n
  simp only [A330904, Nat.add_sub_cancel]

end A330904

/-! ## A330904.P15256556860850593670

`eq[A092391(n), A350229(n)]`
-/

namespace A330904.P15256556860850593670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P15256556860850593670

namespace A330904

/-- `eq[A092391(n), A350229(n)]` -/
def P15256556860850593670.Spec : Prop :=
  ∀ n, (P15256556860850593670.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P10198802254031587219

`eq[log2(A001316(n)), A065363(n)]`
-/

namespace A330904.P10198802254031587219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A330904.P10198802254031587219

namespace A330904

/-- `eq[log2(A001316(n)), A065363(n)]` -/
def P10198802254031587219.Spec : Prop :=
  ∀ n, (P10198802254031587219.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P14717837828049128421

`eq[A001222(A268444(n)), A065363(n)]`
-/

namespace A330904.P14717837828049128421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P14717837828049128421

namespace A330904

/-- `eq[A001222(A268444(n)), A065363(n)]` -/
def P14717837828049128421.Spec : Prop :=
  ∀ n, (P14717837828049128421.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P3743300392233816341

`eq[A001222(A001316(2*n)), A065363(n)]`
-/

namespace A330904.P3743300392233816341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P3743300392233816341

namespace A330904

/-- `eq[A001222(A001316(2*n)), A065363(n)]` -/
def P3743300392233816341.Spec : Prop :=
  ∀ n, (P3743300392233816341.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P4137111045171332542

`eq[A065363(n)+A053735(n), A096288(n)]`
-/

namespace A330904.P4137111045171332542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n + A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P4137111045171332542

namespace A330904

/-- `eq[A065363(n)+A053735(n), A096288(n)]` -/
def P4137111045171332542.Spec : Prop :=
  ∀ n, (P4137111045171332542.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P3802321863115271730

`eq[A001222(A278222(n)), A065363(n)]`
-/

namespace A330904.P3802321863115271730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P3802321863115271730

namespace A330904

/-- `eq[A001222(A278222(n)), A065363(n)]` -/
def P3802321863115271730.Spec : Prop :=
  ∀ n, (P3802321863115271730.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P6924134236585422175

`eq[A001222(A286588(n)), A065363(n)]`
-/

namespace A330904.P6924134236585422175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286588 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P6924134236585422175

namespace A330904

/-- `eq[A001222(A286588(n)), A065363(n)]` -/
def P6924134236585422175.Spec : Prop :=
  ∀ n, (P6924134236585422175.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P16847888085128565176

`eq[A053735(2*n), A096288(n)]`
-/

namespace A330904.P16847888085128565176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P16847888085128565176

namespace A330904

/-- `eq[A053735(2*n), A096288(n)]` -/
def P16847888085128565176.Spec : Prop :=
  ∀ n, (P16847888085128565176.a n : ℤ) = A330904 (n + 1)

end A330904

/-! ## A330904.P9792082832550257875

`eq[A053735(A005843(n))², A096288(n)²]`
-/

namespace A330904.P9792082832550257875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A005843 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P9792082832550257875

namespace A330904

/-- `eq[A053735(A005843(n))², A096288(n)²]` -/
def P9792082832550257875.Spec : Prop :=
  ∀ n, (P9792082832550257875.a n : ℤ) = A330904 (n + 1)

end A330904

/-!
# A330907: Denominator of the variance of the random number of comparisons in quicksort applied to lists of length n.

The programs for A330907, there is no canonical definition to state claims against.
-/

/-! ## A330907.P13618736549042163464

`A309002(A115389(n+1))`
-/

namespace A330907.P13618736549042163464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309002 (A115389 (n + 1)).toNat

end

end A330907.P13618736549042163464

/-! ## A330907.P14163109016550170247

`A000027(A115389(n+1)²)`
-/

namespace A330907.P14163109016550170247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A115389 (n + 1) ^ 2).toNat

end

end A330907.P14163109016550170247

/-! ## A330907.P15804018603980877087

`A115389(A161948(n+1))²`
-/

namespace A330907.P15804018603980877087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115389 (A161948 (n + 1)).toNat ^ 2

end

end A330907.P15804018603980877087

/-! ## A330907.P10249369114677998433

`A244568(A115389(n+1)²)`
-/

namespace A330907.P10249369114677998433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A115389 (n + 1) ^ 2).toNat

end

end A330907.P10249369114677998433

/-! ## A330907.P10370921392963877207

`A000027(A115389(n+1)^2)`
-/

namespace A330907.P10370921392963877207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A115389 (n + 1) ^ 2).toNat

end

end A330907.P10370921392963877207

/-!
# A330908: a(n+1) = a(n) + (number of divisors of a(n) that are not divisors of other divisors of a(n)) for n>1; a(1)=1.

The programs for A330908, the canonical program `A330908.P5206692806244212137` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330908 has offset 1).

The definition of A330908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330908.P5206692806244212137

`a(n-1)+A083399(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A330908

/-- `a(n-1)+A083399(a(n-1))` -/
def P5206692806244212137.Spec : Prop :=
  ∀ n, P5206692806244212137.a n = A330908 (n + 1)

theorem P5206692806244212137.correct : P5206692806244212137.Spec := by
  intro n
  simp only [A330908, Nat.add_sub_cancel]

end A330908

/-! ## A330908.P9623666081378257923

`a(n-1)+A001221(a(n-1))+1` with `a(0)=1`
-/

namespace A330908.P9623666081378257923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001221 (a (n - 1)).toNat + 1)

end

end A330908.P9623666081378257923

namespace A330908

/-- `a(n-1)+A001221(a(n-1))+1` -/
def P9623666081378257923.Spec : Prop :=
  ∀ n, P9623666081378257923.a n = A330908 (n + 1)

end A330908

/-! ## A330908.P17213418343332104053

`A229109(a(n-1))+1` with `a(0)=1`
-/

namespace A330908.P17213418343332104053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229109 (a (n - 1)).toNat + 1

end

end A330908.P17213418343332104053

namespace A330908

/-- `A229109(a(n-1))+1` -/
def P17213418343332104053.Spec : Prop :=
  ∀ n, P17213418343332104053.a n = A330908 (n + 1)

end A330908

/-! ## A330908.P17011393862466278216

`A302569(2*n+1)-A046698(A175795(n+1))`
-/

namespace A330908.P17011393862466278216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (2 * n + 1) - A046698 (A175795 (n + 1)).toNat

end

end A330908.P17011393862466278216

namespace A330908

/-- `A302569(2*n+1)-A046698(A175795(n+1))` -/
def P17011393862466278216.Spec : Prop :=
  ∀ n, P17011393862466278216.a n = A330908 (n + 1)

end A330908

/-! ## A330908.P4347238582742798930

`A302569(2*n+1)-A006530(2^n)`
-/

namespace A330908.P4347238582742798930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (2 * n + 1) - A006530 (2 ^ n)

end

end A330908.P4347238582742798930

namespace A330908

/-- `A302569(2*n+1)-A006530(2^n)` -/
def P4347238582742798930.Spec : Prop :=
  ∀ n, P4347238582742798930.a n = A330908 (n + 1)

end A330908

/-!
# A330910: a(n-5) is the number of nonempty subsets of {1,2,...,n} such that the difference of successive elements is at least 5.

The programs for A330910, the canonical program `A330910.P2635866154727714981` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330910 has offset 0).

The definition of A330910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330910.P2635866154727714981

`a(n-1)+a(n-5)+n` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330910

/-- `a(n-1)+a(n-5)+n` -/
def P2635866154727714981.Spec : Prop :=
  ∀ n, (P2635866154727714981.a n : ℤ) = A330910 n

theorem P2635866154727714981.correct : P2635866154727714981.Spec := by
  intro n
  simp only [A330910]

end A330910

/-! ## A330910.P15081998924039529879

`∑[A099559(n)]`
-/

namespace A330910.P15081998924039529879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330910.P15081998924039529879

namespace A330910

/-- `∑[A099559(n)]` -/
def P15081998924039529879.Spec : Prop :=
  ∀ n, P15081998924039529879.a n = A330910 n

end A330910

/-! ## A330910.P6845907054046347834

`∑[∑[A017899(n+4)]]`
-/

namespace A330910.P6845907054046347834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330910.P6845907054046347834

namespace A330910

/-- `∑[∑[A017899(n+4)]]` -/
def P6845907054046347834.Spec : Prop :=
  ∀ n, P6845907054046347834.a n = A330910 n

end A330910

/-! ## A330910.P14806726072887334615

`∑[record[A017899(n)-1]]`
-/

namespace A330910.P14806726072887334615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330910.P14806726072887334615

namespace A330910

/-- `∑[record[A017899(n)-1]]` -/
def P14806726072887334615.Spec : Prop :=
  ∀ n, P14806726072887334615.a n = A330910 n

end A330910

/-! ## A330910.P7911789405808968320

`∑[A003520(n+4)-1]`
-/

namespace A330910.P7911789405808968320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330910.P7911789405808968320

namespace A330910

/-- `∑[A003520(n+4)-1]` -/
def P7911789405808968320.Spec : Prop :=
  ∀ n, P7911789405808968320.a n = A330910 n

end A330910

/-! ## A330910.P16584882424010564513

`∑[∑[A003520(n)]-A003520(n)]`
-/

namespace A330910.P16584882424010564513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A003520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330910.P16584882424010564513

namespace A330910

/-- `∑[∑[A003520(n)]-A003520(n)]` -/
def P16584882424010564513.Spec : Prop :=
  ∀ n, P16584882424010564513.a n = A330910 n

end A330910

/-!
# A330911: The number of edges formed by straight line segments mutually connecting all vertices of a semicircular polygon defined in A333642.

The programs for A330911, there is no canonical definition to state claims against.
-/

/-! ## A330911.P17802905976932641146

`A330913(n+1)+A333642(n+1)-1`
-/

namespace A330911.P17802905976932641146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330913 (n + 1) + (A333642 (n + 1) - 1)

end

end A330911.P17802905976932641146

/-! ## A330911.P15611737028629070572

`A333642(n+1)+A023443(A330913(n+1))`
-/

namespace A330911.P15611737028629070572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333642 (n + 1) + A023443 (A330913 (n + 1)).toNat

end

end A330911.P15611737028629070572

/-! ## A330911.P13065817096968928173

`A199969(A333642(n+1)+A330913(n+1))`
-/

namespace A330911.P13065817096968928173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A333642 (n + 1) + A330913 (n + 1)).toNat

end

end A330911.P13065817096968928173

/-! ## A330911.P6581456416572865932

`A233583(A333642(n+1)+A330913(n+1))`
-/

namespace A330911.P6581456416572865932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A333642 (n + 1) + A330913 (n + 1)).toNat

end

end A330911.P6581456416572865932

/-!
# A330912: Sum of the smallest side lengths of all Heronian triangles with perimeter A051518(n).

The programs for A330912, there is no canonical definition to state claims against.
-/

/-! ## A330912.P12163036717580836770

`A334937(n+1)/2`
-/

namespace A330912.P12163036717580836770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334937 (n + 1) : ℚ) / 2

end

end A330912.P12163036717580836770

/-! ## A330912.P8617824805174412781

`A001281(A334937(n+1))`
-/

namespace A330912.P8617824805174412781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A334937 (n + 1)).toNat

end

end A330912.P8617824805174412781

/-! ## A330912.P16654857942616955485

`A004524(A334937(n+1)+1)`
-/

namespace A330912.P16654857942616955485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A334937 (n + 1) + 1).toNat

end

end A330912.P16654857942616955485

/-! ## A330912.P10517679987399490878

`A004526(A334937(n+1)+1)`
-/

namespace A330912.P10517679987399490878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334937 (n + 1) + 1).toNat

end

end A330912.P10517679987399490878

/-! ## A330912.P18103982548078434592

`A028242(A334937(n+1)+1)`
-/

namespace A330912.P18103982548078434592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A334937 (n + 1) + 1).toNat

end

end A330912.P18103982548078434592

/-! ## A330912.P13273963516642149894

`A057979(A334937(n+1)+1)`
-/

namespace A330912.P13273963516642149894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A334937 (n + 1) + 1).toNat

end

end A330912.P13273963516642149894

/-! ## A330912.P5786215291343161009

`A000463(A334937(n+1)-1)`
-/

namespace A330912.P5786215291343161009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A334937 (n + 1) - 1).toNat

end

end A330912.P5786215291343161009

/-! ## A330912.P13710277901122152032

`A001057(A334937(n+1)-1)`
-/

namespace A330912.P13710277901122152032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A334937 (n + 1) - 1).toNat

end

end A330912.P13710277901122152032

/-! ## A330912.P2689449787373044868

`A002265(2*A334937(n+1))`
-/

namespace A330912.P2689449787373044868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A334937 (n + 1)).toNat

end

end A330912.P2689449787373044868

/-! ## A330912.P15292445582649973466

`A008615(3*A334937(n+1))`
-/

namespace A330912.P15292445582649973466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A334937 (n + 1)).toNat

end

end A330912.P15292445582649973466

/-!
# A330913: The number of vertices formed by straight line segments mutually connecting all vertices of a semicircular polygon defined in A333642.

The programs for A330913, there is no canonical definition to state claims against.
-/

/-! ## A330913.P17938229794338206023

`A330911(n+1)+1-A333642(n+1)`
-/

namespace A330913.P17938229794338206023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330911 (n + 1) + (1 - A333642 (n + 1))

end

end A330913.P17938229794338206023

/-! ## A330913.P5991698200793051776

`A020725(A330911(n+1)-A333642(n+1))`
-/

namespace A330913.P5991698200793051776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A330911 (n + 1) - A333642 (n + 1)).toNat

end

end A330913.P5991698200793051776

/-! ## A330913.P17492451898707977312

`A065475(A330911(n+1)-A333642(n+1))`
-/

namespace A330913.P17492451898707977312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A330911 (n + 1) - A333642 (n + 1)).toNat

end

end A330913.P17492451898707977312

/-!
# A330915: Sum of the "middle" side lengths (b such that a <= b <= c) of all Heronian triangles with perimeter A051518(n).

The programs for A330915, there is no canonical definition to state claims against.
-/

/-! ## A330915.P13543140261181345626

`A334938(n+1)/2`
-/

namespace A330915.P13543140261181345626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334938 (n + 1) : ℚ) / 2

end

end A330915.P13543140261181345626

/-! ## A330915.P16503857519647014201

`A001281(A334938(n+1))`
-/

namespace A330915.P16503857519647014201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A334938 (n + 1)).toNat

end

end A330915.P16503857519647014201

/-! ## A330915.P3825203235006358460

`A004524(A334938(n+1)+1)`
-/

namespace A330915.P3825203235006358460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A334938 (n + 1) + 1).toNat

end

end A330915.P3825203235006358460

/-! ## A330915.P3789184224812771076

`A004526(A334938(n+1)+1)`
-/

namespace A330915.P3789184224812771076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334938 (n + 1) + 1).toNat

end

end A330915.P3789184224812771076

/-! ## A330915.P4363953058904990721

`A028242(A334938(n+1)+1)`
-/

namespace A330915.P4363953058904990721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A334938 (n + 1) + 1).toNat

end

end A330915.P4363953058904990721

/-! ## A330915.P10305999048192122221

`A000463(A334938(n+1)-1)`
-/

namespace A330915.P10305999048192122221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A334938 (n + 1) - 1).toNat

end

end A330915.P10305999048192122221

/-! ## A330915.P17880302612372545928

`A001057(A334938(n+1)-1)`
-/

namespace A330915.P17880302612372545928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A334938 (n + 1) - 1).toNat

end

end A330915.P17880302612372545928

/-! ## A330915.P11851983039026241602

`A003602(A334938(n+1)-1)`
-/

namespace A330915.P11851983039026241602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A334938 (n + 1) - 1).toNat

end

end A330915.P11851983039026241602

/-! ## A330915.P843221106938550025

`A008619(A334938(n+1)-1)`
-/

namespace A330915.P843221106938550025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A334938 (n + 1) - 1).toNat

end

end A330915.P843221106938550025

/-! ## A330915.P10783227127220739684

`A029579(A334938(n+1)-2)`
-/

namespace A330915.P10783227127220739684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A334938 (n + 1) - 2).toNat

end

end A330915.P10783227127220739684

/-!
# A330916: Sum of the largest side lengths of all Heronian triangles with perimeter A051518(n).

The programs for A330916, there is no canonical definition to state claims against.
-/

/-! ## A330916.P3982677721930923176

`A334939(n+1)/2`
-/

namespace A330916.P3982677721930923176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334939 (n + 1) : ℚ) / 2

end

end A330916.P3982677721930923176

/-! ## A330916.P13922045433343557636

`A001281(A334939(n+1))`
-/

namespace A330916.P13922045433343557636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A334939 (n + 1)).toNat

end

end A330916.P13922045433343557636

/-! ## A330916.P1472671117178843158

`A004524(A334939(n+1)+1)`
-/

namespace A330916.P1472671117178843158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A334939 (n + 1) + 1).toNat

end

end A330916.P1472671117178843158

/-! ## A330916.P8600150955599895695

`A004526(A334939(n+1)+1)`
-/

namespace A330916.P8600150955599895695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334939 (n + 1) + 1).toNat

end

end A330916.P8600150955599895695

/-! ## A330916.P4249626992926851725

`A028242(A334939(n+1)+1)`
-/

namespace A330916.P4249626992926851725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A334939 (n + 1) + 1).toNat

end

end A330916.P4249626992926851725

/-! ## A330916.P10133094478987929307

`A057979(A334939(n+1)+1)`
-/

namespace A330916.P10133094478987929307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A334939 (n + 1) + 1).toNat

end

end A330916.P10133094478987929307

/-! ## A330916.P11967022326488110772

`A123108(A334939(n+1)+1)`
-/

namespace A330916.P11967022326488110772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A334939 (n + 1) + 1).toNat

end

end A330916.P11967022326488110772

/-! ## A330916.P5737693733765370513

`A000463(A334939(n+1)-1)`
-/

namespace A330916.P5737693733765370513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A334939 (n + 1) - 1).toNat

end

end A330916.P5737693733765370513

/-! ## A330916.P15615972381302960950

`A001057(A334939(n+1)-1)`
-/

namespace A330916.P15615972381302960950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A334939 (n + 1) - 1).toNat

end

end A330916.P15615972381302960950

/-! ## A330916.P5958914112370600781

`A003602(A334939(n+1)-1)`
-/

namespace A330916.P5958914112370600781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A334939 (n + 1) - 1).toNat

end

end A330916.P5958914112370600781

/-!
# A330919: Lexicographically earliest sequence of distinct squarefree numbers such that for any n > 0, either a(n)/a(n+1) or a(n+1)/a(n) is a prime number.

The programs for A330919, there is no canonical definition to state claims against.
-/

/-! ## A330919.P15790731655144017181

`A019565(A163252(n))`
-/

namespace A330919.P15790731655144017181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A163252 n).toNat

end

end A330919.P15790731655144017181

/-! ## A330919.P4154405324161760369

`A160102(A298480(n+1))`
-/

namespace A330919.P4154405324161760369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A298480 (n + 1)).toNat

end

end A330919.P4154405324161760369

/-! ## A330919.P4393053162716772331

`A293442(2^A163252(n))`
-/

namespace A330919.P4393053162716772331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A163252 n : ℤ))).toNat

end

end A330919.P4393053162716772331

/-!
# A330921: Sum of the areas of all Heronian triangles with perimeter A051518(n).

The programs for A330921, there is no canonical definition to state claims against.
-/

/-! ## A330921.P16390667318841614789

`A308091(A051518(n+1))`
-/

namespace A330921.P16390667318841614789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (A051518 (n + 1)).toNat

end

end A330921.P16390667318841614789

/-! ## A330921.P15965467247227966414

`A308091(2*A305704(n+1))`
-/

namespace A330921.P15965467247227966414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (2 * A305704 (n + 1)).toNat

end

end A330921.P15965467247227966414

/-! ## A330921.P6609223893267864915

`A308091(A334936(n+1)/2)`
-/

namespace A330921.P6609223893267864915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (SequenceMachineLib.roundAway ((A334936 (n + 1) : ℚ) / 2)).toNat

end

end A330921.P6609223893267864915

/-! ## A330921.P2710304489402339778

`filter[A308091(n+1), A023532(#)]`
-/

namespace A330921.P2710304489402339778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A330921.P2710304489402339778

/-! ## A330921.P17825863409945273505

`filter[A308091(n+1), A043545(#)]`
-/

namespace A330921.P17825863409945273505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A330921.P17825863409945273505

/-!
# A330925: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the greatest possible value of x*y.

The programs for A330925, there is no canonical definition to state claims against.
-/

/-! ## A330925.P11995105347250936115

`A088864(round(sqrt(n²+1)))%A200210(n+1)`
-/

namespace A330925.P11995105347250936115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088864 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A200210 (n + 1))

end

end A330925.P11995105347250936115

/-! ## A330925.P14880932749610889998

`A257697(n)-A178798(A130330(n))`
-/

namespace A330925.P14880932749610889998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n - A178798 (A130330 n).toNat

end

end A330925.P14880932749610889998

/-! ## A330925.P10094805717530990649

`∑{e}[A000079(n), A088864(#)]`
-/

namespace A330925.P10094805717530990649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A088864 (Nat.factorization (f1 n).natAbs p)

end

end A330925.P10094805717530990649

/-! ## A330925.P13810679473768421615

`∑{e}[A007283(n), A088864(#)]`
-/

namespace A330925.P13810679473768421615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A088864 (Nat.factorization (f1 n).natAbs p)

end

end A330925.P13810679473768421615

/-! ## A330925.P12796119606297352734

`A088864(A080116(A115778(n+1))+n)`
-/

namespace A330925.P12796119606297352734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088864 (A080116 (A115778 (n + 1)).toNat + (n : ℤ)).toNat

end

end A330925.P12796119606297352734

/-!
# A330926: a(n) = Sum_{k=1..n} (ceiling(n/k) mod 2).

The programs for A330926, the canonical program `A330926.P15371824115560739582` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330926 has offset 1).

The definition of A330926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075997, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330926.P15371824115560739582

`A075997(n)+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330926

/-- `A075997(n)+1` -/
def P15371824115560739582.Spec : Prop :=
  ∀ n, P15371824115560739582.a n = A330926 (n + 1)

theorem P15371824115560739582.correct : P15371824115560739582.Spec := by
  intro n
  simp only [A330926, Nat.add_sub_cancel]

end A330926

/-! ## A330926.P1155504638177197179

`∑[∑{d}[n, (-1)^#]+1]`
-/

namespace A330926.P1155504638177197179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330926.P1155504638177197179

namespace A330926

/-- `∑[∑{d}[n, (-1)^#]+1]` -/
def P1155504638177197179.Spec : Prop :=
  ∀ n, P1155504638177197179.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P16232449880369184420

`∑[1-∑{d}[n, -(-1)^#]]`
-/

namespace A330926.P16232449880369184420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330926.P16232449880369184420

namespace A330926

/-- `∑[1-∑{d}[n, -(-1)^#]]` -/
def P16232449880369184420.Spec : Prop :=
  ∀ n, P16232449880369184420.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P8532316867700396548

`n+1-∑[∑{d}[n, #-xor(1, #)]]`
-/

namespace A330926.P8532316867700396548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - (Nat.xor 1 d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330926.P8532316867700396548

namespace A330926

/-- `n+1-∑[∑{d}[n, #-xor(1, #)]]` -/
def P8532316867700396548.Spec : Prop :=
  ∀ n, P8532316867700396548.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P13936810378944521721

`a(n-1)+∑{d}[n, (-1)^#]+1` with `a(0)=1`
-/

namespace A330926.P13936810378944521721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ d ∈ Nat.divisors (f1 n), (-1) ^ d + 1)

end

end A330926.P13936810378944521721

namespace A330926

/-- `a(n-1)+∑{d}[n, (-1)^#]+1` -/
def P13936810378944521721.Spec : Prop :=
  ∀ n, P13936810378944521721.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P9968054932913759554

`a(n-1)+1-∑{d}[n, #-xor(1, #)]` with `a(0)=1`
-/

namespace A330926.P9968054932913759554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (Nat.xor 1 d : ℤ)))

end

end A330926.P9968054932913759554

namespace A330926

/-- `a(n-1)+1-∑{d}[n, #-xor(1, #)]` -/
def P9968054932913759554.Spec : Prop :=
  ∀ n, P9968054932913759554.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P6088516011346515664

`1-A059851(n)+n`
-/

namespace A330926.P6088516011346515664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059851 n + (n : ℤ)

end

end A330926.P6088516011346515664

namespace A330926

/-- `1-A059851(n)+n` -/
def P6088516011346515664.Spec : Prop :=
  ∀ n, P6088516011346515664.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P6501400081668139260

`(2-A271860(n)+n)/2`
-/

namespace A330926.P6501400081668139260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A271860 n + (n : ℤ) : ℚ) / 2

end

end A330926.P6501400081668139260

namespace A330926

/-- `(2-A271860(n)+n)/2` -/
def P6501400081668139260.Spec : Prop :=
  ∀ n, P6501400081668139260.a n = (A330926 (n + 1) : ℚ)

end A330926

/-! ## A330926.P118054985805242477

`A325939(n)+a(n-1)` with `a(0)=1`
-/

namespace A330926.P118054985805242477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325939 n + a (n - 1)

end

end A330926.P118054985805242477

namespace A330926

/-- `A325939(n)+a(n-1)` -/
def P118054985805242477.Spec : Prop :=
  ∀ n, P118054985805242477.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P8683211815526300874

`A008619(n-A271860(n))`
-/

namespace A330926.P8683211815526300874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A271860 n).toNat

end

end A330926.P8683211815526300874

namespace A330926

/-- `A008619(n-A271860(n))` -/
def P8683211815526300874.Spec : Prop :=
  ∀ n, P8683211815526300874.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P4140804550052934527

`A110654(1-A271860(n)+n)`
-/

namespace A330926.P4140804550052934527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (1 - A271860 n + (n : ℤ)).toNat

end

end A330926.P4140804550052934527

namespace A330926

/-- `A110654(1-A271860(n)+n)` -/
def P4140804550052934527.Spec : Prop :=
  ∀ n, P4140804550052934527.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P10868858543330318683

`A109613(n)+1-A332682(n+1)`
-/

namespace A330926.P10868858543330318683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (1 - A332682 (n + 1))

end

end A330926.P10868858543330318683

namespace A330926

/-- `A109613(n)+1-A332682(n+1)` -/
def P10868858543330318683.Spec : Prop :=
  ∀ n, P10868858543330318683.a n = A330926 (n + 1)

end A330926

/-! ## A330926.P2788900852641695970

`A006590(n+1)-2*A060831(n)`
-/

namespace A330926.P2788900852641695970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - 2 * A060831 n

end

end A330926.P2788900852641695970

namespace A330926

/-- `A006590(n+1)-2*A060831(n)` -/
def P2788900852641695970.Spec : Prop :=
  ∀ n, P2788900852641695970.a n = A330926 (n + 1)

end A330926

/-!
# A330927: Numbers k such that both k and k + 1 are Niven numbers.

The programs for A330927, there is no canonical definition to state claims against.
-/

/-! ## A330927.P8725866377792559846

`∩[A005349(n+1)-1, A005349(n+1)]`
-/

namespace A330927.P8725866377792559846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330927.P8725866377792559846

/-! ## A330927.P654271645650235914

`A005349(eq[1, A005349(n+2)-A005349(n+1)]+1)`
-/

namespace A330927.P654271645650235914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 2) - A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330927.P654271645650235914

/-! ## A330927.P2044045945270350790

`A005349(eq[1, Δ[A005349(n+1)]]+1)`
-/

namespace A330927.P2044045945270350790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330927.P2044045945270350790

/-! ## A330927.P9478851401943686433

`record[root(A005349(n+1), A082516(n+1))]`
-/

namespace A330927.P9478851401943686433
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 1) : ℝ) ^ (1 / (A082516 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330927.P9478851401943686433

/-! ## A330927.P12462263298033741721

`A005349(record[(n+1)/A082516(n+1)²])`
-/

namespace A330927.P12462263298033741721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082516 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A330927.P12462263298033741721

/-! ## A330927.P16307229810592387267

`eq[3, A290021(a(n-1)*A188641(n+1))]` with `a(0)=2`
-/

namespace A330927.P16307229810592387267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A290021 (f2 (n - 1) * A188641 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330927.P16307229810592387267

/-!
# A330928: Starts of runs of 5 consecutive Niven (or harshad) numbers (A005349).

The programs for A330928, there is no canonical definition to state claims against.
-/

/-! ## A330928.P16078448601276517409

`A141769(lt[Δ[A141769(n+1)], 2]+1)`
-/

namespace A330928.P16078448601276517409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A330928.P16078448601276517409

/-! ## A330928.P7766782325098553745

`A141769(eq[1, A141769(n+2)-A141769(n+1)]+1)`
-/

namespace A330928.P7766782325098553745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (n + 2) - A141769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330928.P7766782325098553745

/-! ## A330928.P587858811204333442

`∩[A154701(n+1)-2, A154701(n+1)]`
-/

namespace A330928.P587858811204333442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330928.P587858811204333442

/-!
# A330929: Starts of runs of 6 consecutive Niven (or Harshad) numbers (A005349).

The programs for A330929, there is no canonical definition to state claims against.
-/

/-! ## A330929.P16850074433247219602

`A330928(eq[1, Δ[A330928(n+1)]]+1)`
-/

namespace A330929.P16850074433247219602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330929.P16850074433247219602

/-! ## A330929.P12514170600172740219

`A330928(lt[Δ[A330928(n+1)], 3]+1)`
-/

namespace A330929.P12514170600172740219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A330929.P12514170600172740219

/-!
# A330930: Starts of runs of 7 consecutive Niven (or Harshad) numbers (A005349).

The programs for A330930, there is no canonical definition to state claims against.
-/

/-! ## A330930.P14356719480708406976

`∩[A330929(n+1)-1, A330929(n+1)]`
-/

namespace A330930.P14356719480708406976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330930.P14356719480708406976

/-! ## A330930.P6719234422560571414

`A330929(eq[1, A330929(n+2)-A330929(n+1)]+1)`
-/

namespace A330930.P6719234422560571414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (n + 2) - A330929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330930.P6719234422560571414

/-! ## A330930.P3355220656915671160

`∩[A330928(n+1)-2, A330928(n+1)]`
-/

namespace A330930.P3355220656915671160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330930.P3355220656915671160

/-!
# A330931: Numbers k such that both k and k + 1 are Niven numbers in base 2 (A049445).

The programs for A330931, the canonical program `A330931.P13737479232060882146` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330931 has offset 1).

The definition of A330931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330931.P15655059097587471854

`∩[A049445(n+1)-1, A049445(n+1)]`
-/

namespace A330931.P15655059097587471854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330931.P15655059097587471854

namespace A330931

/-- `∩[A049445(n+1)-1, A049445(n+1)]` -/
def P15655059097587471854.Spec : Prop :=
  ∀ n, (P15655059097587471854.a n : ℤ) = A330931 (n + 1)

end A330931

/-! ## A330931.P13737479232060882146

`A049445(eq[1, A049445(n+2)-A049445(n+1)]+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330931

/-- `A049445(eq[1, A049445(n+2)-A049445(n+1)]+1)` -/
def P13737479232060882146.Spec : Prop :=
  ∀ n, P13737479232060882146.a n = A330931 (n + 1)

theorem P13737479232060882146.correct : P13737479232060882146.Spec := by
  intro n
  simp only [A330931, Nat.add_sub_cancel]

end A330931

/-! ## A330931.P12699876287597788585

`∩[A049445(n+1), lt[A199238(n+1), 1]]`
-/

namespace A330931.P12699876287597788585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A330931.P12699876287597788585

namespace A330931

/-- `∩[A049445(n+1), lt[A199238(n+1), 1]]` -/
def P12699876287597788585.Spec : Prop :=
  ∀ n, (P12699876287597788585.a n : ℤ) = A330931 (n + 1)

end A330931

/-! ## A330931.P14513920811910894281

`∩[A049445(n+1), lt[n, A161764(n+1)]]`
-/

namespace A330931.P14513920811910894281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A330931.P14513920811910894281

namespace A330931

/-- `∩[A049445(n+1), lt[n, A161764(n+1)]]` -/
def P14513920811910894281.Spec : Prop :=
  ∀ n, (P14513920811910894281.a n : ℤ) = A330931 (n + 1)

end A330931

/-! ## A330931.P2678738991199974932

`lt[A161765(A028310(n)), A161764(n+1)]`
-/

namespace A330931.P2678738991199974932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161765 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330931.P2678738991199974932

namespace A330931

/-- `lt[A161765(A028310(n)), A161764(n+1)]` -/
def P2678738991199974932.Spec : Prop :=
  ∀ n, (P2678738991199974932.a n : ℤ) = A330931 (n + 1)

end A330931

/-!
# A330932: Starts of runs of 3 consecutive Niven numbers in base 2 (A049445).

The programs for A330932, the canonical program `A330932.P4071948875635423639` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330932 has offset 1).

The definition of A330932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330932.P4071948875635423639

`∩[A330931(n+1)-1, A330931(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330932

/-- `∩[A330931(n+1)-1, A330931(n+1)]` -/
def P4071948875635423639.Spec : Prop :=
  ∀ n, (P4071948875635423639.a n : ℤ) = A330932 (n + 1)

theorem P4071948875635423639.correct : P4071948875635423639.Spec := by
  intro n
  simp only [A330932, Nat.add_sub_cancel]

end A330932

/-! ## A330932.P922820640836798757

`∩[A330931(n+1), A023443(A330931(n+1))]`
-/

namespace A330932.P922820640836798757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A330931 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330932.P922820640836798757

namespace A330932

/-- `∩[A330931(n+1), A023443(A330931(n+1))]` -/
def P922820640836798757.Spec : Prop :=
  ∀ n, (P922820640836798757.a n : ℤ) = A330932 (n + 1)

end A330932

/-!
# A330933: Starts of runs of 4 consecutive Niven numbers in base 2 (A049445).

The programs for A330933, the canonical program `A330933.P1547525484770531212` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330933 has offset 1).

The definition of A330933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330933.P1547525484770531212

`∩[A330932(n+1)-1, A330932(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A330933

/-- `∩[A330932(n+1)-1, A330932(n+1)]` -/
def P1547525484770531212.Spec : Prop :=
  ∀ n, (P1547525484770531212.a n : ℤ) = A330933 (n + 1)

theorem P1547525484770531212.correct : P1547525484770531212.Spec := by
  intro n
  simp only [A330933, Nat.add_sub_cancel]

end A330933

/-!
# A330935: Irregular triangle read by rows where T(n,k) is the number of length-k chains from minimum to maximum in the poset of factorizations of n into factors > 1, ordered by refinement.

The programs for A330935, there is no canonical definition to state claims against.
-/

/-! ## A330935.P15781386602745474287

`A236853(A328399(n)+A279789(n))`
-/

namespace A330935.P15781386602745474287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 (A328399 n + A279789 n).toNat

end

end A330935.P15781386602745474287

/-! ## A330935.P50471495287369015

`A376971(n+1)^A185643(A218155(n+1))`
-/

namespace A330935.P50471495287369015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376971 (n + 1) : ℚ) ^ (A185643 (A218155 (n + 1)).toNat : ℤ)

end

end A330935.P50471495287369015

/-! ## A330935.P16910825599114865073

`A284848(n+2)+A086079(A095371(n+1))`
-/

namespace A330935.P16910825599114865073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 2) + A086079 (A095371 (n + 1)).toNat

end

end A330935.P16910825599114865073

/-! ## A330935.P15552160101447471357

`A086937(p?[A006257(A008833(n+1))])`
-/

namespace A330935.P15552160101447471357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086937 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A330935.P15552160101447471357

/-! ## A330935.P12026064960514106405

`A350207(n+3)%A165083(A078122(n))`
-/

namespace A330935.P12026064960514106405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350207 (n + 3)) (A165083 (A078122 n).toNat)

end

end A330935.P12026064960514106405

/-!
# A330936: Number of nontrivial factorizations of n into factors > 1.

The programs for A330936, there is no canonical definition to state claims against.
-/

/-! ## A330936.P14814204897745303014

`floor(log(cosh(A028422(n+1))))`
-/

namespace A330936.P14814204897745303014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A028422 (n + 1) : ℝ))⌋

end

end A330936.P14814204897745303014

/-! ## A330936.P17765496090293230293

`floor(abs(ϕ-A001055(n+1)))`
-/

namespace A330936.P17765496090293230293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.goldenRatio - (A001055 (n + 1) : ℝ)|⌋

end

end A330936.P17765496090293230293

/-! ## A330936.P4695296024026431610

`floor(sqrt(A380218(n)²+1))-1`
-/

namespace A330936.P4695296024026431610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A380218 n ^ 2 + 1) - 1

end

end A330936.P4695296024026431610

/-! ## A330936.P13053895588275619067

`round(sqrt((1-Δ[A096276(n)])²+1))-1`
-/

namespace A330936.P13053895588275619067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((1 - (f1 (n + 1) - f1 n)) ^ 2 + 1 : ℝ)) - 1

end

end A330936.P13053895588275619067

/-! ## A330936.P178078778000377169

`A139179(A380218(n))`
-/

namespace A330936.P178078778000377169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (A380218 n).toNat

end

end A330936.P178078778000377169

/-! ## A330936.P14215528169417232191

`A289207(Δ[A096276(n)])`
-/

namespace A330936.P14215528169417232191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (n + 1) - f1 n).toNat

end

end A330936.P14215528169417232191

/-! ## A330936.P1642737561431435259

`A139179(A028422(n+1))`
-/

namespace A330936.P1642737561431435259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (A028422 (n + 1)).toNat

end

end A330936.P1642737561431435259

/-! ## A330936.P5414057120660630704

`A216599(A046523(n+1))`
-/

namespace A330936.P5414057120660630704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (A046523 (n + 1)).toNat

end

end A330936.P5414057120660630704

/-! ## A330936.P7143488979110282374

`A216599(A071364(n+1))`
-/

namespace A330936.P7143488979110282374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (A071364 (n + 1)).toNat

end

end A330936.P7143488979110282374

/-! ## A330936.P5642600626975994822

`A289207(A001055(n+1))`
-/

namespace A330936.P5642600626975994822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001055 (n + 1)).toNat

end

end A330936.P5642600626975994822

/-!
# A330937: Number of strictly recursively normal integer partitions of n.

The programs for A330937, there is no canonical definition to state claims against.
-/

/-! ## A330937.P6539530444821464781

`∑[A338260(∑[A102487(n+2)])]`
-/

namespace A330937.P6539530444821464781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338260 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330937.P6539530444821464781

/-! ## A330937.P5132662603426838163

`A367410(A000124(n))+A054431(2*n+5)`
-/

namespace A330937.P5132662603426838163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367410 (A000124 n).toNat + A054431 (2 * n + 5)

end

end A330937.P5132662603426838163

/-! ## A330937.P13199384501459118883

`A381996(n+2)+A106228(A000931(n+2))%A325358(n)`
-/

namespace A330937.P13199384501459118883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381996 (n + 2) + Int.tmod (A106228 (A000931 (n + 2)).toNat) (A325358 n)

end

end A330937.P13199384501459118883

/-! ## A330937.P14674873039977435013

`A123580(A022567(n))`
-/

namespace A330937.P14674873039977435013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A022567 n).toNat

end

end A330937.P14674873039977435013

/-! ## A330937.P13683014824121705239

`A123580(A134004(n))`
-/

namespace A330937.P13683014824121705239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A134004 n).toNat

end

end A330937.P13683014824121705239

/-!
# A330940: a(n) is the least value whose binary representation can be obtained by interleaving (or shuffling) two copies of the binary representation of n.

The programs for A330940, there is no canonical definition to state claims against.
-/

/-! ## A330940.P12233135342881360817

`A361401(∑[A361398(n)]-A193020(n))`
-/

namespace A330940.P12233135342881360817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361401 (∑ j ∈ Finset.range (n + 1), f1 j - A193020 n).toNat

end

end A330940.P12233135342881360817

/-! ## A330940.P7229291379471907504

`eq[1, A056951(2*A348268(n)+1)]`
-/

namespace A330940.P7229291379471907504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (2 * A348268 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330940.P7229291379471907504

/-!
# A330941: a(n) is the greatest value whose binary representation can be obtained by interleaving (or shuffling) two copies of the binary representation of n.

The programs for A330941, there is no canonical definition to state claims against.
-/

/-! ## A330941.P1028413071470529361

`A361401(∑[A361398(n)]-1)`
-/

namespace A330941.P1028413071470529361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361401 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A330941.P1028413071470529361

/-! ## A330941.P1583758653642717624

`A361401(∑[A361398(n)%A073588(n+1)])`
-/

namespace A330941.P1583758653642717624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361398 n) (A073588 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330941.P1583758653642717624

/-! ## A330941.P8834985943163186294

`A112080(A215021(n+1))+A001196(n)`
-/

namespace A330941.P8834985943163186294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (A215021 (n + 1)).toNat + A001196 n

end

end A330941.P8834985943163186294

/-! ## A330941.P1234150515945014951

`A063725(A029587(n))+2*∑[and(n, -n)²]+n`
-/

namespace A330941.P1234150515945014951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A029587 n).toNat + (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ))

end

end A330941.P1234150515945014951

/-! ## A330941.P14616820948143678083

`A107652(A107647(n+2))+2*∑[and(n, -n)²]+n`
-/

namespace A330941.P14616820948143678083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (A107647 (n + 2)).toNat + (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ))

end

end A330941.P14616820948143678083

/-!
# A330942: Array read by antidiagonals: A(n,k) is the number of binary matrices with k columns and any number of nonzero rows with n ones in every column and columns in nonincreasing lexicographic order.

The programs for A330942, there is no canonical definition to state claims against.
-/

/-! ## A330942.P17560078668126681828

`A262809(n)/A316674(n)*A331315(n)`
-/

namespace A330942.P17560078668126681828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262809 n : ℚ) / (A316674 n : ℚ) * (A331315 n : ℚ)

end

end A330942.P17560078668126681828

/-!
# A330943: Matula-Goebel numbers of singleton-reduced rooted trees.

The programs for A330943, there is no canonical definition to state claims against.
-/

/-! ## A330943.P3993661157490288118

`∑[gcd(A143054(n), A147934(n+1))]`
-/

namespace A330943.P3993661157490288118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143054 n) (A147934 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330943.P3993661157490288118

/-! ## A330943.P6765482653817958920

`lt[A112605(A027642(n)), A123330(n)]`
-/

namespace A330943.P6765482653817958920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (A027642 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330943.P6765482653817958920

/-! ## A330943.P17212395560818414875

`record[A029163(n)-A029189(A029170(n))]`
-/

namespace A330943.P17212395560818414875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029163 n - A029189 (A029170 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330943.P17212395560818414875

/-! ## A330943.P14937623170478039127

`lt[A123331(A123305(n+1)), A123330(n)]`
-/

namespace A330943.P14937623170478039127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (A123305 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330943.P14937623170478039127

/-! ## A330943.P9190631963538597953

`lt[A096270(A117136(2*n+1)), A253626(n)]`
-/

namespace A330943.P9190631963538597953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A117136 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253626 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330943.P9190631963538597953

/-!
# A330944: Number of nonprime prime indices of n.

The programs for A330944, there is no canonical definition to state claims against.
-/

/-! ## A330944.P7724036407727319491

`∑{e}[A360329(n+1), #]`
-/

namespace A330944.P7724036407727319491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A330944.P7724036407727319491

/-! ## A330944.P11474196044910392045

`A379300(n+1)+val(n+1, 2)`
-/

namespace A330944.P11474196044910392045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A330944.P11474196044910392045

/-! ## A330944.P2210086578540622066

`∑{e}[n+1, #]-A257994(n+1)`
-/

namespace A330944.P2210086578540622066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A257994 (n + 1)

end

end A330944.P2210086578540622066

/-! ## A330944.P1088719825587663708

`∑{e}[(n+1)/A360325(n+1), #]`
-/

namespace A330944.P1088719825587663708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360325 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A330944.P1088719825587663708

/-! ## A330944.P2902623246575309986

`∑{e}[n+1, #]-∑{e}[A295665(n+1), #]`
-/

namespace A330944.P2902623246575309986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

end

end A330944.P2902623246575309986

/-! ## A330944.P7017298644784598688

`A001222(A360329(n+1))`
-/

namespace A330944.P7017298644784598688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A360329 (n + 1)).toNat

end

end A330944.P7017298644784598688

/-! ## A330944.P10216618317682340983

`Δ[A022559(n)]-A257994(n+1)`
-/

namespace A330944.P10216618317682340983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A257994 (n + 1)

end

end A330944.P10216618317682340983

/-! ## A330944.P17109406597173822689

`A379300(n+1)+A007814(n+1)`
-/

namespace A330944.P17109406597173822689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (n + 1) + A007814 (n + 1)

end

end A330944.P17109406597173822689

/-! ## A330944.P1132672770325799939

`A001222(n+1)-A257994(n+1)`
-/

namespace A330944.P1132672770325799939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A257994 (n + 1)

end

end A330944.P1132672770325799939

/-! ## A330944.P9388343579416374965

`A001222((n+1)/A360325(n+1))`
-/

namespace A330944.P9388343579416374965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360325 (n + 1) : ℚ))).toNat

end

end A330944.P9388343579416374965

/-!
# A330945: Numbers whose prime indices are not all prime numbers.

The programs for A330945, the canonical program `A330945.P16356873730941480727` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330945 has offset 1).

The definition of A330945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330945.P16356873730941480727

`comp[A064988(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A330945

/-- `comp[A064988(n+1)-1]+1` -/
def P16356873730941480727.Spec : Prop :=
  ∀ n, (P16356873730941480727.a n : ℤ) = A330945 (n + 1)

theorem P16356873730941480727.correct : P16356873730941480727.Spec := by
  intro n
  simp only [A330945, Nat.add_sub_cancel]

end A330945

/-! ## A330945.P18033058653101002601

`comp[A076610(n+1)-1]+1`
-/

namespace A330945.P18033058653101002601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330945.P18033058653101002601

namespace A330945

/-- `comp[A076610(n+1)-1]+1` -/
def P18033058653101002601.Spec : Prop :=
  ∀ n, (P18033058653101002601.a n : ℤ) = A330945 (n + 1)

end A330945

/-! ## A330945.P13089121684804731457

`lt[1, A360329(n+1)]+1`
-/

namespace A330945.P13089121684804731457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330945.P13089121684804731457

namespace A330945

/-- `lt[1, A360329(n+1)]+1` -/
def P13089121684804731457.Spec : Prop :=
  ∀ n, (P13089121684804731457.a n : ℤ) = A330945 (n + 1)

end A330945

/-! ## A330945.P9070508398591568562

`lt[1, A360330(n+1)]+1`
-/

namespace A330945.P9070508398591568562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330945.P9070508398591568562

namespace A330945

/-- `lt[1, A360330(n+1)]+1` -/
def P9070508398591568562.Spec : Prop :=
  ∀ n, (P9070508398591568562.a n : ℤ) = A330945 (n + 1)

end A330945

/-! ## A330945.P11596608754001695649

`lt[1, A360331(n+1)]+1`
-/

namespace A330945.P11596608754001695649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330945.P11596608754001695649

namespace A330945

/-- `lt[1, A360331(n+1)]+1` -/
def P11596608754001695649.Spec : Prop :=
  ∀ n, (P11596608754001695649.a n : ℤ) = A330945 (n + 1)

end A330945

/-! ## A330945.P1031847955398923817

`lt[0, A330944(n+1)]+1`
-/

namespace A330945.P1031847955398923817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330945.P1031847955398923817

namespace A330945

/-- `lt[0, A330944(n+1)]+1` -/
def P1031847955398923817.Spec : Prop :=
  ∀ n, (P1031847955398923817.a n : ℤ) = A330945 (n + 1)

end A330945

/-!
# A330946: Odd numbers whose prime indices are not all prime numbers.

The programs for A330946, there is no canonical definition to state claims against.
-/

/-! ## A330946.P1046975116252241549

`lt[1, A355742(n+1)]+1`
-/

namespace A330946.P1046975116252241549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330946.P1046975116252241549

/-! ## A330946.P4496593107017672569

`comp[∪[2*n, A076610(n+1)]]`
-/

namespace A330946.P4496593107017672569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330946.P4496593107017672569

/-! ## A330946.P8794888041454013034

`∩[2*n+1, A330945(n+1)]`
-/

namespace A330946.P8794888041454013034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330946.P8794888041454013034

/-! ## A330946.P13153181835021959350

`∩[A330945(n+2), n+1+n]`
-/

namespace A330946.P13153181835021959350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A330946.P13153181835021959350

/-! ## A330946.P3247408743137094574

`lt[1, A355742(A028310(n))]`
-/

namespace A330946.P3247408743137094574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330946.P3247408743137094574

/-! ## A330946.P2922490902105005889

`A004442(lt[1, A355742(n+1)])`
-/

namespace A330946.P2922490902105005889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A330946.P2922490902105005889

/-! ## A330946.P9096083015903466006

`filter[A330945(n+1), A000035(#)]`
-/

namespace A330946.P9096083015903466006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A330946.P9096083015903466006

/-! ## A330946.P10359245953319718099

`filter[A330945(n+1), A266070(#)]`
-/

namespace A330946.P10359245953319718099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A330946.P10359245953319718099

/-! ## A330946.P8857514665263158434

`filter[A330945(n+2), A266611(#)]`
-/

namespace A330946.P8857514665263158434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A330946.P8857514665263158434

/-! ## A330946.P587167128495031767

`filter[A330945(n+2), A266719(#)]`
-/

namespace A330946.P587167128495031767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A330946.P587167128495031767

/-!
# A330947: Nonprime numbers whose prime indices are all prime numbers.

The programs for A330947, there is no canonical definition to state claims against.
-/

/-! ## A330947.P5921486596971389440

`record[A005451(A076610(n+1))]`
-/

namespace A330947.P5921486596971389440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A076610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330947.P5921486596971389440

/-! ## A330947.P572724563663188610

`filter[A076610(n+1), A005171(#)]`
-/

namespace A330947.P572724563663188610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A330947.P572724563663188610

/-! ## A330947.P6352066169880127188

`filter[A076610(n+1), A292438(#)]`
-/

namespace A330947.P6352066169880127188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A330947.P6352066169880127188

/-! ## A330947.P4680609286573458088

`∩[A014076(n+1), A076610(n+1)]`
-/

namespace A330947.P4680609286573458088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P4680609286573458088

/-! ## A330947.P2741130875331846023

`∩[A018252(n+1), A076610(n+1)]`
-/

namespace A330947.P2741130875331846023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P2741130875331846023

/-! ## A330947.P10943559782109423619

`∩[A056653(n+1), A076610(n+1)]`
-/

namespace A330947.P10943559782109423619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P10943559782109423619

/-! ## A330947.P8895084757873599468

`∩[A065090(n+1), A076610(n+1)]`
-/

namespace A330947.P8895084757873599468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P8895084757873599468

/-! ## A330947.P17616365649798340054

`∩[A076610(n+1), A141468(n+1)]`
-/

namespace A330947.P17616365649798340054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P17616365649798340054

/-! ## A330947.P10441062074500021862

`∩[A076610(n+1), A164276(n+1)]`
-/

namespace A330947.P10441062074500021862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P10441062074500021862

/-! ## A330947.P2084654757388415110

`∩[A014076(n+1), A302540(n+1)]`
-/

namespace A330947.P2084654757388415110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330947.P2084654757388415110

/-!
# A330948: Nonprime numbers whose prime indices are not all prime numbers.

The programs for A330948, there is no canonical definition to state claims against.
-/

/-! ## A330948.P12338045024535178502

`∪[A330949(n+1), 2*(n+2)]`
-/

namespace A330948.P12338045024535178502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330949 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A330948.P12338045024535178502

/-! ## A330948.P18157513887996679415

`filter[A330945(n+1), A005171(#)]`
-/

namespace A330948.P18157513887996679415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A330948.P18157513887996679415

/-! ## A330948.P15501497111110985746

`filter[A330945(n+1), A066247(#)]`
-/

namespace A330948.P15501497111110985746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A330948.P15501497111110985746

/-! ## A330948.P1312665685686113099

`∩[A002808(n+1), A330945(n+1)]`
-/

namespace A330948.P1312665685686113099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330948.P1312665685686113099

/-! ## A330948.P5426957600111642332

`∩[A018252(n+1), A330945(n+1)]`
-/

namespace A330948.P5426957600111642332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330948.P5426957600111642332

/-! ## A330948.P16275795812347727706

`∩[A121543(n+1), A330945(n+1)]`
-/

namespace A330948.P16275795812347727706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330948.P16275795812347727706

/-! ## A330948.P16847886153519190522

`∩[A141468(n+1), A330945(n+1)]`
-/

namespace A330948.P16847886153519190522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330948.P16847886153519190522

/-! ## A330948.P14945457202442741598

`comp[∪[A076610(n+1), A158611(n+1)]]`
-/

namespace A330948.P14945457202442741598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330948.P14945457202442741598

/-! ## A330948.P313616250750450435

`comp[∪[A076610(n+1), A182986(n+1)]]`
-/

namespace A330948.P313616250750450435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330948.P313616250750450435

/-! ## A330948.P17584093828623674792

`lt[A014963(n+1), A360329(n+1)]+1`
-/

namespace A330948.P17584093828623674792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A330948.P17584093828623674792

/-!
# A330949: Odd nonprime numbers whose prime indices are not all prime numbers.

The programs for A330949, there is no canonical definition to state claims against.
-/

/-! ## A330949.P10639719576840849891

`∩[A014076(n+1), A330945(n+1)]`
-/

namespace A330949.P10639719576840849891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330949.P10639719576840849891

/-! ## A330949.P3579172685172189456

`∩[A071904(n+1), A330945(n+1)]`
-/

namespace A330949.P3579172685172189456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330949.P3579172685172189456

/-! ## A330949.P7710756933904540974

`filter[A330946(n+1), A005171(#)]`
-/

namespace A330949.P7710756933904540974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A330949.P7710756933904540974

/-! ## A330949.P10705363265573581818

`filter[A330946(n+1), A066247(#)]`
-/

namespace A330949.P10705363265573581818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A330949.P10705363265573581818

/-! ## A330949.P7064670033420420758

`filter[A330946(n+1), A174898(#)]`
-/

namespace A330949.P7064670033420420758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A330949.P7064670033420420758

/-!
# A330950: Number of integer partitions of n whose Heinz number (product of primes of parts) is divisible by n.

The programs for A330950, there is no canonical definition to state claims against.
-/

/-! ## A330950.P13795211373985814242

`A000041(A178503(n+1))`
-/

namespace A330950.P13795211373985814242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A178503 (n + 1)).toNat

end

end A330950.P13795211373985814242

/-! ## A330950.P2398851558119816460

`A035363(2*A178503(n+1))`
-/

namespace A330950.P2398851558119816460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A178503 (n + 1)).toNat

end

end A330950.P2398851558119816460

/-! ## A330950.P3389575858705254151

`A119620(2*A178503(n+1))`
-/

namespace A330950.P3389575858705254151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A178503 (n + 1)).toNat

end

end A330950.P3389575858705254151

/-! ## A330950.P4298470400559169196

`∑{d}[A178503(n+1), A000837(#)]`
-/

namespace A330950.P4298470400559169196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A330950.P4298470400559169196

/-! ## A330950.P17133773996855140674

`A000041(1-A056239(n+1)+n)`
-/

namespace A330950.P17133773996855140674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - A056239 (n + 1) + (n : ℤ)).toNat

end

end A330950.P17133773996855140674

/-! ## A330950.P4827062362855738405

`A213598(A178503(2*(n+1))-n)`
-/

namespace A330950.P4827062362855738405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (A178503 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A330950.P4827062362855738405

/-! ## A330950.P9630438197159341723

`A000041(n+1-A346698((n+1)²))`
-/

namespace A330950.P9630438197159341723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n + 1 : ℤ) - A346698 ((n + 1) ^ 2)).toNat

end

end A330950.P9630438197159341723

/-! ## A330950.P10515787905915298558

`A000041(n+1-A346700((n+1)²))`
-/

namespace A330950.P10515787905915298558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n + 1 : ℤ) - A346700 ((n + 1) ^ 2)).toNat

end

end A330950.P10515787905915298558

/-! ## A330950.P15969521114666301177

`A000041(1-log2(A248692(n+1))+n)`
-/

namespace A330950.P15969521114666301177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (1 - Real.logb 2 (A248692 (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A330950.P15969521114666301177

/-! ## A330950.P11561641189136200461

`A000041(n+2-A316436(2*(n+1)))`
-/

namespace A330950.P11561641189136200461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n + 2 : ℤ) - A316436 (2 * (n + 1))).toNat

end

end A330950.P11561641189136200461

/-!
# A330951: Number of singleton-reduced unlabeled rooted trees with n nodes.

The programs for A330951, there is no canonical definition to state claims against.
-/

/-! ## A330951.P13143848754873129817

`A003056(ceil(sqrt(A136728(n))))`
-/

namespace A330951.P13143848754873129817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A136728 n : ℝ)⌉.toNat

end

end A330951.P13143848754873129817

/-! ## A330951.P9830311277548490747

`A003056(round(sqrt(A136728(n))))`
-/

namespace A330951.P9830311277548490747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (Real.sqrt (A136728 n : ℝ))).toNat

end

end A330951.P9830311277548490747

/-! ## A330951.P1815419824009899896

`A105223(A148999(n)+2+n)`
-/

namespace A330951.P1815419824009899896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A148999 n + 2 + (n : ℤ)).toNat

end

end A330951.P1815419824009899896

/-! ## A330951.P16020816598581650983

`A008616(∑[A321007(n+4)+1])`
-/

namespace A330951.P16020816598581650983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321007 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330951.P16020816598581650983

/-! ## A330951.P12042852179139947667

`A000120(A364283(n))+A000081(n)`
-/

namespace A330951.P12042852179139947667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A364283 n).toNat + A000081 n

end

end A330951.P12042852179139947667

/-!
# A330952: Number of integer partitions of n whose Heinz number (product of primes of parts) is divisible by all parts.

The programs for A330952, there is no canonical definition to state claims against.
-/

/-! ## A330952.P12654373927868573837

`Δ[A346634(n)]-A008683(A131420(3*(n+1)))`
-/

namespace A330952.P12654373927868573837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (A131420 (3 * (n + 1))).toNat

end

end A330952.P12654373927868573837

/-! ## A330952.P3328748489407550998

`A107631(A039893(n+1)+1)`
-/

namespace A330952.P3328748489407550998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A039893 (n + 1) + 1).toNat

end

end A330952.P3328748489407550998

/-! ## A330952.P13006657221409712229

`A039861(n+1)-A097795(A000837(n))`
-/

namespace A330952.P13006657221409712229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039861 (n + 1) - A097795 (A000837 n).toNat

end

end A330952.P13006657221409712229

/-! ## A330952.P10850062782117966683

`A105224(A286156(n+4)+A002865(3*n+1))`
-/

namespace A330952.P10850062782117966683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A286156 (n + 4) + A002865 (3 * n + 1)).toNat

end

end A330952.P10850062782117966683

/-!
# A330955: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the greatest possible value of x AND y (where AND denotes the bitwise AND operator).

The programs for A330955, there is no canonical definition to state claims against.
-/

/-! ## A330955.P5435584297226672514

`(A330958(n)-A330959(n))^A110243(n)²`
-/

namespace A330955.P5435584297226672514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330958 n - A330959 n : ℚ) ^ (A110243 n ^ 2 : ℤ)

end

end A330955.P5435584297226672514

/-! ## A330955.P8217474358901977989

`A000007(A325098(n))+A330958(n)-A330959(n)`
-/

namespace A330955.P8217474358901977989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A325098 n).toNat + (A330958 n - A330959 n)

end

end A330955.P8217474358901977989

/-! ## A330955.P13154443012286968835

`A000038(A056798(n+1))+A330958(n)-A330959(n)`
-/

namespace A330955.P13154443012286968835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A056798 (n + 1)).toNat + (A330958 n - A330959 n)

end

end A330955.P13154443012286968835

/-! ## A330955.P1775200469754001614

`A330958(n)-A051904(A000096(n)^A330961(n))`
-/

namespace A330955.P1775200469754001614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 n - A051904 (SequenceMachineLib.roundAway ((A000096 n : ℚ) ^ (A330961 n : ℤ))).toNat

end

end A330955.P1775200469754001614

/-! ## A330955.P7238719041420104815

`A124760(A376604(2*(n+1))+A001644(n))`
-/

namespace A330955.P7238719041420104815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A376604 (2 * (n + 1)) + A001644 n).toNat

end

end A330955.P7238719041420104815

/-!
# A330956: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the greatest possible value of min(x, y).

The programs for A330956, there is no canonical definition to state claims against.
-/

/-! ## A330956.P10035206203342664203

`lcm(A005087(A002559(n+1)), A327193(n))`
-/

namespace A330956.P10035206203342664203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005087 (A002559 (n + 1)).toNat) (A327193 n)

end

end A330956.P10035206203342664203

/-!
# A330957: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of max(x, y).

The programs for A330957, there is no canonical definition to state claims against.
-/

/-! ## A330957.P9574847659886316503

`A330958(lcm(n, A330959(n)+1))`
-/

namespace A330957.P9574847659886316503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 (Int.lcm (n : ℤ) (A330959 n + 1))

end

end A330957.P9574847659886316503

/-! ## A330957.P11409016240931734986

`A330958(n*or(1, A330959(n)))`
-/

namespace A330957.P11409016240931734986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 ((n : ℤ) * Int.lor 1 (A330959 n)).toNat

end

end A330957.P11409016240931734986

/-! ## A330957.P9356069856263738470

`and(A330958(A037462(n)), A330958(n))`
-/

namespace A330957.P9356069856263738470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A330958 (A037462 n).toNat) (A330958 n)

end

end A330957.P9356069856263738470

/-! ## A330957.P9845204810929248966

`A330958(n)-A185013(A330914(2*n+3))`
-/

namespace A330957.P9845204810929248966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 n - A185013 (A330914 (2 * n + 3)).toNat

end

end A330957.P9845204810929248966

/-! ## A330957.P4455223967340225397

`A064876(A330962(n)%A133715(n))`
-/

namespace A330957.P4455223967340225397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (Int.tmod (A330962 n) (A133715 n)).toNat

end

end A330957.P4455223967340225397

/-!
# A330958: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of x OR y (where OR denotes the bitwise OR operator).

The programs for A330958, there is no canonical definition to state claims against.
-/

/-! ## A330958.P8364896128074678648

`A330957(or(n, A330959(n)+n))`
-/

namespace A330958.P8364896128074678648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (Int.lor (n : ℤ) (A330959 n + (n : ℤ))).toNat

end

end A330958.P8364896128074678648

/-! ## A330958.P6052570252816001214

`A330959(n)+A330955(n)%A122027(n+1)`
-/

namespace A330958.P6052570252816001214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330959 n + Int.tmod (A330955 n) (A122027 (n + 1))

end

end A330958.P6052570252816001214

/-! ## A330958.P15688201777093050596

`A330957(A083896(A052552(n))+n)`
-/

namespace A330958.P15688201777093050596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (A083896 (A052552 n).toNat + (n : ℤ)).toNat

end

end A330958.P15688201777093050596

/-! ## A330958.P8597704955571805698

`or(A083896(A052552(n)), A330957(n))`
-/

namespace A330958.P8597704955571805698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083896 (A052552 n).toNat) (A330957 n)

end

end A330958.P8597704955571805698

/-! ## A330958.P5659887906326421424

`or(A316345(A201922(n+1)), A330957(n))`
-/

namespace A330958.P5659887906326421424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316345 (A201922 (n + 1)).toNat) (A330957 n)

end

end A330958.P5659887906326421424

/-!
# A330959: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of x XOR y (where XOR denotes the bitwise XOR operator).

The programs for A330959, there is no canonical definition to state claims against.
-/

/-! ## A330959.P3936052952356023144

`A330958(n)-A330955(n)%A122027(n+1)`
-/

namespace A330959.P3936052952356023144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 n - Int.tmod (A330955 n) (A122027 (n + 1))

end

end A330959.P3936052952356023144

/-! ## A330959.P18140268441877320550

`A321279(A002326(A330963(n)²))`
-/

namespace A330959.P18140268441877320550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321279 (A002326 (A330963 n ^ 2).toNat).toNat

end

end A330959.P18140268441877320550

/-! ## A330959.P638320820644335720

`A051904(A000096(n)^A330961(n))`
-/

namespace A330959.P638320820644335720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((A000096 n : ℚ) ^ (A330961 n : ℤ))).toNat

end

end A330959.P638320820644335720

/-! ## A330959.P8170164027789408823

`xor(A010059(n), A212171(A087878(2*(n+1))))`
-/

namespace A330959.P8170164027789408823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010059 n) (A212171 (A087878 (2 * (n + 1))).toNat)

end

end A330959.P8170164027789408823

/-! ## A330959.P5002694803320696397

`A270419(A121662(n+1))-A010059(n)`
-/

namespace A330959.P5002694803320696397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (A121662 (n + 1)).toNat - A010059 n

end

end A330959.P5002694803320696397

/-!
# A330960: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of x + y.

The programs for A330960, there is no canonical definition to state claims against.
-/

/-! ## A330960.P5541243458856608042

`A382290(A016116(n))+A000120(n)`
-/

namespace A330960.P5541243458856608042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (A016116 n).toNat + A000120 n

end

end A330960.P5541243458856608042

/-! ## A330960.P2382345835076162804

`A106486(2*n)-A254411(A016116(n))`
-/

namespace A330960.P2382345835076162804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (2 * n) - A254411 (A016116 n).toNat

end

end A330960.P2382345835076162804

/-! ## A330960.P4298412054908891458

`A106486(A006257(n)^A307608(n+1))`
-/

namespace A330960.P4298412054908891458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (SequenceMachineLib.roundAway ((A006257 n : ℚ) ^ (A307608 (n + 1) : ℤ))).toNat

end

end A330960.P4298412054908891458

/-! ## A330960.P781095535200071938

`A339970(A006257(n)%A214925(n+1))`
-/

namespace A330960.P781095535200071938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339970 (Int.tmod (A006257 n) (A214925 (n + 1))).toNat

end

end A330960.P781095535200071938

/-! ## A330960.P8024690414263703673

`A106486(A349797(3*n+5)+A006257(n))`
-/

namespace A330960.P8024690414263703673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A349797 (3 * n + 5) + A006257 n).toNat

end

end A330960.P8024690414263703673

/-!
# A330961: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of abs(x - y).

The programs for A330961, there is no canonical definition to state claims against.
-/

/-! ## A330961.P12997914549573780046

`ceil(A330963(n)/A050501(n+2))`
-/

namespace A330961.P12997914549573780046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330963 n : ℚ) / (A050501 (n + 2) : ℚ)⌉

end

end A330961.P12997914549573780046

/-! ## A330961.P3202637224545526888

`ceil(A330963(n)/A225634(n))`
-/

namespace A330961.P3202637224545526888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330963 n : ℚ) / (A225634 n : ℚ)⌉

end

end A330961.P3202637224545526888

/-! ## A330961.P7200376129061634886

`A185101(A330963(n))%9`
-/

namespace A330961.P7200376129061634886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185101 (A330963 n).toNat) 9

end

end A330961.P7200376129061634886

/-! ## A330961.P10442190876361677174

`A048766(C(A330963(n), A239700(3*n+4)))`
-/

namespace A330961.P10442190876361677174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.choose (A330963 n).toNat (A239700 (3 * n + 4)).toNat)

end

end A330961.P10442190876361677174

/-! ## A330961.P7651137782560575091

`A333487(A007617(2*n+1))+A010060(n)`
-/

namespace A330961.P7651137782560575091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A007617 (2 * n + 1)).toNat + A010060 n

end

end A330961.P7651137782560575091

/-!
# A330962: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of x^2 + y^2.

The programs for A330962, there is no canonical definition to state claims against.
-/

/-! ## A330962.P2747513199420080603

`A327194(n)-A156659(A210068(n))`
-/

namespace A330962.P2747513199420080603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 n - A156659 (A210068 n).toNat

end

end A330962.P2747513199420080603

/-! ## A330962.P6812291798922707044

`A327194(n)-A185264(A211247(n+2))`
-/

namespace A330962.P6812291798922707044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 n - A185264 (A211247 (n + 2)).toNat

end

end A330962.P6812291798922707044

/-! ## A330962.P9527591720628112145

`A327194(n)-A327170(A327157(3*n+5))`
-/

namespace A330962.P9527591720628112145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 n - A327170 (A327157 (3 * n + 5)).toNat

end

end A330962.P9527591720628112145

/-! ## A330962.P17317154144357485952

`A327194(n)-A025465(A023105(n))`
-/

namespace A330962.P17317154144357485952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 n - A025465 (A023105 n).toNat

end

end A330962.P17317154144357485952

/-! ## A330962.P10542124552837208034

`A327194(n)-A055641(A022112(n))`
-/

namespace A330962.P10542124552837208034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 n - A055641 (A022112 n).toNat

end

end A330962.P10542124552837208034

/-!
# A330963: For any n >= 0: consider all pairs of numbers (x, y) whose binary representations can be interleaved (or shuffled) to produce the binary representation of n (possibly with leading zeros); a(n) is the least possible value of abs(x^2 - y^2).

The programs for A330963, there is no canonical definition to state claims against.
-/

/-! ## A330963.P17560835556088769508

`A327195(n*A213000(n))`
-/

namespace A330963.P17560835556088769508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 ((n : ℤ) * A213000 n).toNat

end

end A330963.P17560835556088769508

/-! ## A330963.P16303446112299027506

`A327195(n)%A204903((n+1)*Δ[n^3])`
-/

namespace A330963.P16303446112299027506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327195 n) (A204903 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat)

end

end A330963.P16303446112299027506

/-! ## A330963.P14664450222467061380

`A327195(record[gcd((n+1)², A180482(n+1))]-1)`
-/

namespace A330963.P14664450222467061380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A180482 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A330963.P14664450222467061380

/-! ## A330963.P10376979507839785694

`A327195(n*A327177(A052980(n)))`
-/

namespace A330963.P10376979507839785694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 ((n : ℤ) * A327177 (A052980 n).toNat).toNat

end

end A330963.P10376979507839785694

/-! ## A330963.P8278680949117158523

`A327195(n*A327201(A099040(n)))`
-/

namespace A330963.P8278680949117158523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 ((n : ℤ) * A327201 (A099040 n).toNat).toNat

end

end A330963.P8278680949117158523

/-!
# A330964: Array read by antidiagonals: A(n,k) is the number of sets of nonempty subsets of a k-element set where each element appears in at most n subsets.

The programs for A330964, there is no canonical definition to state claims against.
-/

/-! ## A330964.P2366927833077062222

`A085515(A178249(n+1))`
-/

namespace A330964.P2366927833077062222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085515 (A178249 (n + 1)).toNat

end

end A330964.P2366927833077062222

/-! ## A330964.P1499065861194411303

`A260343(A048004(n))-1`
-/

namespace A330964.P1499065861194411303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260343 (A048004 n).toNat - 1

end

end A330964.P1499065861194411303

/-! ## A330964.P16893521329604713784

`A268709(A293808(n))%17`
-/

namespace A330964.P16893521329604713784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268709 (A293808 n).toNat) 17

end

end A330964.P16893521329604713784

/-! ## A330964.P16649281101392781496

`A320356(A111579(n))%20`
-/

namespace A330964.P16649281101392781496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320356 (A111579 n).toNat) 20

end

end A330964.P16649281101392781496

/-! ## A330964.P6113323429916781577

`A070082(∏{p}[A078536(n), #])`
-/

namespace A330964.P6113323429916781577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330964.P6113323429916781577

/-!
# A330965: Array read by descending antidiagonals: A(n,k) = (1 + k*n)*C(n) where C(n) = Catalan numbers (A000108).

The programs for A330965, the canonical program `A330965.P15528813923853205152` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330965 has offset 0).

The definition of A330965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330965.P15528813923853205152

`A000108(A002262(n))*A077028(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A330965

/-- `A000108(A002262(n))*A077028(n)` -/
def P15528813923853205152.Spec : Prop :=
  ∀ n, P15528813923853205152.a n = A330965 n

theorem P15528813923853205152.correct : P15528813923853205152.Spec := by
  intro n
  simp only [A330965]

end A330965

/-! ## A330965.P11911438030273773154

`A077028(n)*A288942(A245300(n))`
-/

namespace A330965.P11911438030273773154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A288942 (A245300 n).toNat

end

end A330965.P11911438030273773154

namespace A330965

/-- `A077028(n)*A288942(A245300(n))` -/
def P11911438030273773154.Spec : Prop :=
  ∀ n, P11911438030273773154.a n = A330965 n

end A330965

/-! ## A330965.P16169206938621354709

`A000108(log2(A059268(n)))*A077028(n)`
-/

namespace A330965.P16169206938621354709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A077028 n

end

end A330965.P16169206938621354709

namespace A330965

/-- `A000108(log2(A059268(n)))*A077028(n)` -/
def P16169206938621354709.Spec : Prop :=
  ∀ n, P16169206938621354709.a n = A330965 n

end A330965

/-! ## A330965.P17069130659473872136

`A077028(n)*A120588(A002260(n+1))`
-/

namespace A330965.P17069130659473872136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A120588 (A002260 (n + 1)).toNat

end

end A330965.P17069130659473872136

namespace A330965

/-- `A077028(n)*A120588(A002260(n+1))` -/
def P17069130659473872136.Spec : Prop :=
  ∀ n, P17069130659473872136.a n = A330965 n

end A330965

/-! ## A330965.P113670594213038867

`A000108(A144328(n+1))*A077028(n)`
-/

namespace A330965.P113670594213038867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A077028 n

end

end A330965.P113670594213038867

namespace A330965

/-- `A000108(A144328(n+1))*A077028(n)` -/
def P113670594213038867.Spec : Prop :=
  ∀ n, P113670594213038867.a n = A330965 n

end A330965

/-! ## A330965.P7134352224960875365

`(A004247(n)+1)*A000108(A057554(2*n+1))`
-/

namespace A330965.P7134352224960875365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P7134352224960875365

namespace A330965

/-- `(A004247(n)+1)*A000108(A057554(2*n+1))` -/
def P7134352224960875365.Spec : Prop :=
  ∀ n, P7134352224960875365.a n = A330965 n

end A330965

/-! ## A330965.P8044959111558972646

`(2-A176270(n))*A000108(A057554(2*n+1))`
-/

namespace A330965.P8044959111558972646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A176270 n) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P8044959111558972646

namespace A330965

/-- `(2-A176270(n))*A000108(A057554(2*n+1))` -/
def P8044959111558972646.Spec : Prop :=
  ∀ n, P8044959111558972646.a n = A330965 n

end A330965

/-! ## A330965.P7646558549564934337

`A000108(A057554(2*n+1))*A263997(A130154(n+1))`
-/

namespace A330965.P7646558549564934337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A057554 (2 * n + 1)).toNat * A263997 (A130154 (n + 1)).toNat

end

end A330965.P7646558549564934337

namespace A330965

/-- `A000108(A057554(2*n+1))*A263997(A130154(n+1))` -/
def P7646558549564934337.Spec : Prop :=
  ∀ n, P7646558549564934337.a n = A330965 n

end A330965

/-! ## A330965.P14802690311062705767

`(A003991(n+1)-A003056(n))*A000108(A057554(2*n+1))`
-/

namespace A330965.P14802690311062705767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) - A003056 n) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P14802690311062705767

namespace A330965

/-- `(A003991(n+1)-A003056(n))*A000108(A057554(2*n+1))` -/
def P14802690311062705767.Spec : Prop :=
  ∀ n, P14802690311062705767.a n = A330965 n

end A330965

/-! ## A330965.P14703043685602573981

`(A057145(n+2)-A139600(n))*A000108(A057554(2*n+1))`
-/

namespace A330965.P14703043685602573981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057145 (n + 2) - A139600 n) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P14703043685602573981

namespace A330965

/-- `(A057145(n+2)-A139600(n))*A000108(A057554(2*n+1))` -/
def P14703043685602573981.Spec : Prop :=
  ∀ n, P14703043685602573981.a n = A330965 n

end A330965

/-! ## A330965.P17554653442093838806

`(A103822(n)*A103823(n)+1)*A000108(A057554(2*n+1))`
-/

namespace A330965.P17554653442093838806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103822 n * A103823 n + 1) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P17554653442093838806

namespace A330965

/-- `(A103822(n)*A103823(n)+1)*A000108(A057554(2*n+1))` -/
def P17554653442093838806.Spec : Prop :=
  ∀ n, P17554653442093838806.a n = A330965 n

end A330965

/-! ## A330965.P3881219233436532596

`((A004736(n+1)-1)*A002262(n)+1)*A000108(A057554(2*n+1))`
-/

namespace A330965.P3881219233436532596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004736 (n + 1) - 1) * A002262 n + 1) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P3881219233436532596

namespace A330965

/-- `((A004736(n+1)-1)*A002262(n)+1)*A000108(A057554(2*n+1))` -/
def P3881219233436532596.Spec : Prop :=
  ∀ n, P3881219233436532596.a n = A330965 n

end A330965

/-! ## A330965.P13337408382934463831

`((A002260(n+1)-1)*A025581(n)+1)*A000108(A057554(2*n+1))`
-/

namespace A330965.P13337408382934463831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002260 (n + 1) - 1) * A025581 n + 1) * A000108 (A057554 (2 * n + 1)).toNat

end

end A330965.P13337408382934463831

namespace A330965

/-- `((A002260(n+1)-1)*A025581(n)+1)*A000108(A057554(2*n+1))` -/
def P13337408382934463831.Spec : Prop :=
  ∀ n, P13337408382934463831.a n = A330965 n

end A330965

/-!
# A330966: a(n) is 1/5 times the number of anti-chains of size four in "0,1,2" Motzkin trees on n edges.

The programs for A330966, there is no canonical definition to state claims against.
-/

/-! ## A330966.P967381140148466220

`A335355(n+6)/5`
-/

namespace A330966.P967381140148466220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335355 (n + 6) : ℚ) / 5

end

end A330966.P967381140148466220

/-!
# A330967: a(n) is the determinant of the matrix with elements gcd(i,j) for 2 <= i,j <= n.

The programs for A330967, there is no canonical definition to state claims against.
-/

/-! ## A330967.P6504842069053682661

`A204111(∑[n+1])`
-/

namespace A330967.P6504842069053682661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330967.P6504842069053682661

/-! ## A330967.P11906880524600708009

`abs(A204111(A025747(n)))`
-/

namespace A330967.P11906880524600708009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204111 (A025747 n).toNat|

end

end A330967.P11906880524600708009

/-! ## A330967.P162683067592040575

`abs(A204111(∑[A005496(n)]))`
-/

namespace A330967.P162683067592040575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A330967.P162683067592040575

/-! ## A330967.P14697232536152458079

`abs(A204111(∑[A077168(n)]))`
-/

namespace A330967.P14697232536152458079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A330967.P14697232536152458079

/-! ## A330967.P14714945573230792801

`abs(A204111(A158822(∑[n])))`
-/

namespace A330967.P14714945573230792801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204111 (A158822 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A330967.P14714945573230792801

/-!
# A330968: Prime numbers p such that 2*p - last digit of p is prime.

The programs for A330968, the canonical program `A330968.P2083301936810330397` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330968 has offset 1).

The definition of A330968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330968.P2083301936810330397

`record[A006530(A268185(n+1))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A330968

/-- `record[A006530(A268185(n+1))]` -/
def P2083301936810330397.Spec : Prop :=
  ∀ n, P2083301936810330397.a n = A330968 (n + 1)

theorem P2083301936810330397.correct : P2083301936810330397.Spec := by
  intro n
  simp only [A330968, Nat.add_sub_cancel]

end A330968

/-! ## A330968.P10654844318303193427

`record[A006530(A020639(n+1)+(n+1)%10)]`
-/

namespace A330968.P10654844318303193427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020639 (n + 1) + (((n + 1) % 10 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P10654844318303193427

namespace A330968

/-- `record[A006530(A020639(n+1)+(n+1)%10)]` -/
def P10654844318303193427.Spec : Prop :=
  ∀ n, P10654844318303193427.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P11207429663175995321

`record[A006530(A007652(n+1)+A000040(n+1))]`
-/

namespace A330968.P11207429663175995321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007652 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P11207429663175995321

namespace A330968

/-- `record[A006530(A007652(n+1)+A000040(n+1))]` -/
def P11207429663175995321.Spec : Prop :=
  ∀ n, P11207429663175995321.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P3276970157619334068

`record[A006530(A000040(n+1)+A000040(n+1)%10)]`
-/

namespace A330968.P3276970157619334068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + Int.tmod (A000040 (n + 1)) 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P3276970157619334068

namespace A330968

/-- `record[A006530(A000040(n+1)+A000040(n+1)%10)]` -/
def P3276970157619334068.Spec : Prop :=
  ∀ n, P3276970157619334068.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P12824015836507360356

`p?[A081596(A000040(n+1))]`
-/

namespace A330968.P12824015836507360356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330968.P12824015836507360356

namespace A330968

/-- `p?[A081596(A000040(n+1))]` -/
def P12824015836507360356.Spec : Prop :=
  ∀ n, P12824015836507360356.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P3819168865707398934

`p?[A081596(A008578(n+1))]`
-/

namespace A330968.P3819168865707398934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330968.P3819168865707398934

namespace A330968

/-- `p?[A081596(A008578(n+1))]` -/
def P3819168865707398934.Spec : Prop :=
  ∀ n, P3819168865707398934.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P15704598505353676081

`record[A006530(A081596(A006530(n+2)))]`
-/

namespace A330968.P15704598505353676081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A081596 (A006530 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P15704598505353676081

namespace A330968

/-- `record[A006530(A081596(A006530(n+2)))]` -/
def P15704598505353676081.Spec : Prop :=
  ∀ n, P15704598505353676081.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P14820415677303125431

`record[A020639(A081596(A020639(n+2)))]`
-/

namespace A330968.P14820415677303125431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A081596 (A020639 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P14820415677303125431

namespace A330968

/-- `record[A020639(A081596(A020639(n+2)))]` -/
def P14820415677303125431.Spec : Prop :=
  ∀ n, P14820415677303125431.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P6028142028990349260

`record[A006530(A010879(2*n+1)+A006530(2*n+1))]`
-/

namespace A330968.P6028142028990349260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A010879 (2 * n + 1) + A006530 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P6028142028990349260

namespace A330968

/-- `record[A006530(A010879(2*n+1)+A006530(2*n+1))]` -/
def P6028142028990349260.Spec : Prop :=
  ∀ n, P6028142028990349260.a n = A330968 (n + 1)

end A330968

/-! ## A330968.P16855819459815057176

`record[A006530(A274206(2*n+1)+A006530(2*n+1))]`
-/

namespace A330968.P16855819459815057176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A274206 (2 * n + 1) + A006530 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P16855819459815057176

namespace A330968

/-- `record[A006530(A274206(2*n+1)+A006530(2*n+1))]` -/
def P16855819459815057176.Spec : Prop :=
  ∀ n, P16855819459815057176.a n = A330968 (n + 1)

end A330968

/-!
# A330969: Numbers k such that for any decimal digit d in k, the remainder when k is divided by d+1 is d.

The programs for A330969, there is no canonical definition to state claims against.
-/

/-! ## A330969.P10642407472233218249

`eq[n, A330970(n)]`
-/

namespace A330969.P10642407472233218249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330969.P10642407472233218249

/-! ## A330969.P6138058548098971831

`lt[A023443(n), A330970(n)]`
-/

namespace A330969.P6138058548098971831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330969.P6138058548098971831

/-! ## A330969.P12166693385970160481

`lt[A004526(n), A008619(A330970(n))]`
-/

namespace A330969.P12166693385970160481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A330970 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330969.P12166693385970160481

/-! ## A330969.P4948270726901815012

`lt[A028310(n+3), A020705(A330970(n))]`
-/

namespace A330969.P4948270726901815012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A330970 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330969.P4948270726901815012

/-! ## A330969.P12559289086461944585

`lt[A000225(n), A000051(A330970(n))]`
-/

namespace A330969.P12559289086461944585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A330970 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330969.P12559289086461944585

/-!
# A330971: Numbers k such that for any decimal digit d in k, the remainder when k is divided by d+1 is 0.

The programs for A330971, there is no canonical definition to state claims against.
-/

/-! ## A330971.P18324836262335513720

`eq[0, A330970(n)]`
-/

namespace A330971.P18324836262335513720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330971.P18324836262335513720

/-! ## A330971.P9736053026449185872

`2*lt[A330970(2*n), 1]`
-/

namespace A330971.P9736053026449185872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330971.P9736053026449185872

/-! ## A330971.P14189198274057391615

`record[(1-A330970(n+1))*(n+1)]`
-/

namespace A330971.P14189198274057391615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A330970 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330971.P14189198274057391615

/-! ## A330971.P3518304151623477100

`lt[A330970(n), A033999(n)]`
-/

namespace A330971.P3518304151623477100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330971.P3518304151623477100

/-! ## A330971.P5214855264182153745

`record[n-A000290(n)*A330970(n)]`
-/

namespace A330971.P5214855264182153745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 n * A330970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330971.P5214855264182153745

/-! ## A330971.P10995388394836789444

`lt[A330970(n), A006519(A322361(n+1))]`
-/

namespace A330971.P10995388394836789444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A322361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330971.P10995388394836789444

/-! ## A330971.P971511482102565586

`A038608(lt[A330970(n), 1])`
-/

namespace A330971.P971511482102565586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A330971.P971511482102565586

/-! ## A330971.P17782180041474386137

`record[n-A008574(n)*A330970(n)]`
-/

namespace A330971.P17782180041474386137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008574 n * A330970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330971.P17782180041474386137

/-! ## A330971.P16855994704477036209

`record[n-A008585(n)*A330970(n)]`
-/

namespace A330971.P16855994704477036209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008585 n * A330970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330971.P16855994704477036209

/-! ## A330971.P14320910949250672781

`lt[A330970(n), A007318(A078545(n+2))]`
-/

namespace A330971.P14320910949250672781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A078545 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330971.P14320910949250672781

/-! ## A330971.P8129276439689179417

`lt[A330970(n), A057427(A339316(n+1))]`
-/

namespace A330971.P8129276439689179417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A339316 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330971.P8129276439689179417

/-! ## A330971.P8986342412519333201

`lt[A330970(n), A057427(A320193(n))]`
-/

namespace A330971.P8986342412519333201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A320193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330971.P8986342412519333201

/-!
# A330972: Sorted list containing the least number with each possible nonzero number of factorizations into factors > 1.

The programs for A330972, there is no canonical definition to state claims against.
-/

/-! ## A330972.P2344181653089551162

`record[A330973(A001055(n+1))]`
-/

namespace A330972.P2344181653089551162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A001055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330972.P2344181653089551162

/-! ## A330972.P4708855517209007317

`record[A330973(A050322(n+1))]`
-/

namespace A330972.P4708855517209007317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A050322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330972.P4708855517209007317

/-! ## A330972.P17655097215757393436

`record[A330973(A331049(n+1))]`
-/

namespace A330972.P17655097215757393436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A331049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330972.P17655097215757393436

/-! ## A330972.P18323670271783517585

`record[A330973(A028422(n+1)+1)]`
-/

namespace A330972.P18323670271783517585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A028422 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330972.P18323670271783517585

/-! ## A330972.P18341348929018185611

`record[A330973(A319786(n+1)+A281116(n+1))]`
-/

namespace A330972.P18341348929018185611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A319786 (n + 1) + A281116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330972.P18341348929018185611

/-!
# A330973: Least positive integer with exactly n factorizations into factors > 1, and 0 if no such number exists.

The programs for A330973, there is no canonical definition to state claims against.
-/

/-! ## A330973.P15673788831445532642

`and(A217801(n)+2, A315018(n))`
-/

namespace A330973.P15673788831445532642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217801 n + 2) (A315018 n)

end

end A330973.P15673788831445532642

/-! ## A330973.P6383104112926743317

`and(A005555(A055998(n)), A314809(n))`
-/

namespace A330973.P6383104112926743317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005555 (A055998 n).toNat) (A314809 n)

end

end A330973.P6383104112926743317

/-! ## A330973.P10281042049450531222

`and(A131991(A051947(n)), A250120(n))`
-/

namespace A330973.P10281042049450531222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131991 (A051947 n).toNat) (A250120 n)

end

end A330973.P10281042049450531222

/-! ## A330973.P3770158789106482071

`and(A005408(A149849(n)), A311230(n))`
-/

namespace A330973.P3770158789106482071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A149849 n).toNat) (A311230 n)

end

end A330973.P3770158789106482071

/-! ## A330973.P17146251606804497628

`A002202(n+1)*A097195(A006190(n))`
-/

namespace A330973.P17146251606804497628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) * A097195 (A006190 n).toNat

end

end A330973.P17146251606804497628

/-!
# A330975: Numbers that are not the number of factorizations of n into distinct factors > 1 for any n.

The programs for A330975, there is no canonical definition to state claims against.
-/

/-! ## A330975.P2258407796632286606

`comp[A045779(n+1)-1]+1`
-/

namespace A330975.P2258407796632286606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045779 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330975.P2258407796632286606

/-! ## A330975.P10680682595770859458

`comp[A050323(n+1)-1]+1`
-/

namespace A330975.P10680682595770859458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330975.P10680682595770859458

/-! ## A330975.P9377390185363076280

`comp[A318286(n+1)-1]+1`
-/

namespace A330975.P9377390185363076280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330975.P9377390185363076280

/-! ## A330975.P1181647880703771106

`comp[A023443(A045779(n+1))]+1`
-/

namespace A330975.P1181647880703771106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045779 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330975.P1181647880703771106

/-! ## A330975.P16696899204386023794

`comp[A318286(n+1)+A159075(n)]`
-/

namespace A330975.P16696899204386023794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (n + 1) + A159075 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330975.P16696899204386023794

/-! ## A330975.P7884252144234268788

`comp[A318286(n+1)-A000007(n)]`
-/

namespace A330975.P7884252144234268788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (n + 1) - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330975.P7884252144234268788

/-! ## A330975.P5751042296505904321

`comp[A318286(n+1)-A063524(n)]`
-/

namespace A330975.P5751042296505904321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (n + 1) - A063524 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330975.P5751042296505904321

/-! ## A330975.P11792086495481283800

`comp[A318286(n+1)%A001848(n)]`
-/

namespace A330975.P11792086495481283800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318286 (n + 1)) (A001848 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330975.P11792086495481283800

/-!
# A330976: Numbers that are not the number of factorizations into factors > 1 of any positive integer.

The programs for A330976, there is no canonical definition to state claims against.
-/

/-! ## A330976.P4914114455931793151

`comp[A028422(n+1)]+1`
-/

namespace A330976.P4914114455931793151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330976.P4914114455931793151

/-! ## A330976.P9255392505288447847

`eq[0, A330973(n+1)]+1`
-/

namespace A330976.P9255392505288447847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330976.P9255392505288447847

/-! ## A330976.P6919240192224987195

`lt[A330973(n+5), 6]+5`
-/

namespace A330976.P6919240192224987195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A330976.P6919240192224987195

/-! ## A330976.P7274296832180068181

`comp[A318284(n+1)-char[1]]`
-/

namespace A330976.P7274296832180068181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330976.P7274296832180068181

/-! ## A330976.P8191835829381972849

`comp[A045782(n+1)-1]+1`
-/

namespace A330976.P8191835829381972849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045782 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330976.P8191835829381972849

/-! ## A330976.P3247178302498312841

`comp[A050322(n+1)-1]+1`
-/

namespace A330976.P3247178302498312841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330976.P3247178302498312841

/-! ## A330976.P4523267934486156217

`comp[A318284(n+2)-1]+1`
-/

namespace A330976.P4523267934486156217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330976.P4523267934486156217

/-! ## A330976.P12175526162665758851

`comp[A001055(n+1)-C(2, n+2)]`
-/

namespace A330976.P12175526162665758851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330976.P12175526162665758851

/-! ## A330976.P9526228752816349154

`lt[A330973(A028310(n)), 1]`
-/

namespace A330976.P9526228752816349154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330976.P9526228752816349154

/-! ## A330976.P10178364020326865598

`comp[A050322(n+1)-A000007(n)]`
-/

namespace A330976.P10178364020326865598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1) - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330976.P10178364020326865598

/-!
# A330977: Numbers whose number of factorizations into factors > 1 (A001055) is a power of 2.

The programs for A330977, there is no canonical definition to state claims against.
-/

/-! ## A330977.P6410282600896684437

`lt[16%A001055(n+1), 1]+1`
-/

namespace A330977.P6410282600896684437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 16 (A001055 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A330977.P6410282600896684437

/-! ## A330977.P8446294788257876427

`record[A209635(A001055(n+1))+n]`
-/

namespace A330977.P8446294788257876427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A001055 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330977.P8446294788257876427

/-! ## A330977.P13501032169731317772

`lt[A050999(A001055(n+1)²), 3]+1`
-/

namespace A330977.P13501032169731317772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (A001055 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A330977.P13501032169731317772

/-! ## A330977.P16158257694379350427

`eq[1, A318556(A001055(n+1)+1)]+1`
-/

namespace A330977.P16158257694379350427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318556 (A001055 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330977.P16158257694379350427

/-! ## A330977.P14482530186936696653

`eq[2, A361967(A028422(n+1)+1)]+1`
-/

namespace A330977.P14482530186936696653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (A028422 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330977.P14482530186936696653

/-! ## A330977.P4188104893445061569

`eq[1, A001221(2*A001055(n+1))]+1`
-/

namespace A330977.P4188104893445061569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A001055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330977.P4188104893445061569

/-! ## A330977.P202283839478987278

`lt[A126821(A061200(n+1))-A040240(n)²+1, 2]+1`
-/

namespace A330977.P202283839478987278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126821 (A061200 (n + 1)).toNat - A040240 n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A330977.P202283839478987278

/-!
# A330978: a(n) = (p1 + p2)/36 such that p1 >= 5 and p2 = p1 + 2 are twin primes and p1 + p2 is a k-th power with k > 1.

The programs for A330978, there is no canonical definition to state claims against.
-/

/-! ## A330978.P17461555600350126605

`A119767(n+2)/(12/2)²`
-/

namespace A330978.P17461555600350126605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119767 (n + 2) : ℚ) / ((12 : ℚ) / 2) ^ 2

end

end A330978.P17461555600350126605

/-! ## A330978.P7079601355064048776

`A119767(n+2)/A119767(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A330978.P7079601355064048776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A119767 (n + 2) : ℚ) / (A119767 (n + 1) : ℚ) * a (n - 1)

end

end A330978.P7079601355064048776

/-! ## A330978.P9045988396307354316

`ceil(A270231(n+2)/18)`
-/

namespace A330978.P9045988396307354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A270231 (n + 2) : ℚ) / 18⌉

end

end A330978.P9045988396307354316

/-! ## A330978.P1297906287556753267

`floor(A119768(2*(n+2))/18)`
-/

namespace A330978.P1297906287556753267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A119768 (2 * (n + 2)) : ℚ) / 18⌋

end

end A330978.P1297906287556753267

/-! ## A330978.P17551113569717041803

`ceil(A119768(2*n+3)/18)`
-/

namespace A330978.P17551113569717041803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119768 (2 * n + 3) : ℚ) / 18⌉

end

end A330978.P17551113569717041803

/-!
# A330979: The squares visited on the Ulam Spiral when starting at square 1 and then stepping to the closest unvisited square which contains a prime number. If two or more squares are the same distance from the current square then the one with the smallest prime number is chosen.

The programs for A330979, there is no canonical definition to state claims against.
-/

/-! ## A330979.P5495410113252321968

`A336402(A097366(2*n+3))`
-/

namespace A330979.P5495410113252321968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336402 (A097366 (2 * n + 3)).toNat

end

end A330979.P5495410113252321968

/-! ## A330979.P2838114466548923028

`A336402(n+1)%A002762(n)`
-/

namespace A330979.P2838114466548923028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336402 (n + 1)) (A002762 n)

end

end A330979.P2838114466548923028

/-! ## A330979.P16617200063237029596

`or(A185284(n), A336402(n+1))`
-/

namespace A330979.P16617200063237029596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 n) (A336402 (n + 1))

end

end A330979.P16617200063237029596

/-! ## A330979.P8769187997981465940

`A336402(lcm(n+1, A275216(n+1)))`
-/

namespace A330979.P8769187997981465940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336402 (Int.lcm (n + 1 : ℤ) (A275216 (n + 1)))

end

end A330979.P8769187997981465940

/-! ## A330979.P17480366271272286421

`A336402(n+1)+A000007(A105556(n))`
-/

namespace A330979.P17480366271272286421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336402 (n + 1) + A000007 (A105556 n).toNat

end

end A330979.P17480366271272286421

/-!
# A330981: Remodd numbers: having an odd remainder modulo all of their digits, digit 0 forbidden.

The programs for A330981, there is no canonical definition to state claims against.
-/

/-! ## A330981.P13248470861210516061

`eq[A055642(n), A196564(A347323(n))]`
-/

namespace A330981.P13248470861210516061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A347323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330981.P13248470861210516061

/-! ## A330981.P13836446992069656740

`lt[A055642(n+1), A196564(A347323(n))+1]`
-/

namespace A330981.P13836446992069656740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A347323 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330981.P13836446992069656740

/-!
# A330982: Remeven numbers: having an even remainder modulo any of their digits, digit 0 forbidden.

The programs for A330982, there is no canonical definition to state claims against.
-/

/-! ## A330982.P7481289899683407485

`eq[A079998(n), A186746(n+1)]`
-/

namespace A330982.P7481289899683407485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330982.P7481289899683407485

/-! ## A330982.P5308533111787782785

`lt[A070102(n+1), A070539(n)]`
-/

namespace A330982.P5308533111787782785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070539 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330982.P5308533111787782785

/-! ## A330982.P14585917941846130823

`lt[A186746(n+1), A186723(n)]`
-/

namespace A330982.P14585917941846130823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330982.P14585917941846130823

/-!
# A330983: Alternatively add and multiply pairs of the nonnegative integers.

The programs for A330983, the canonical program `A330983.P3565078345310580740` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330983 has offset 1).

The definition of A330983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330983.P3565078345310580740

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=9, a(3)=42, a(4)=17, a(5)=110`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330983

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P3565078345310580740.Spec : Prop :=
  ∀ n, P3565078345310580740.a n = A330983 (n + 1)

theorem P3565078345310580740.correct : P3565078345310580740.Spec := by
  intro n
  simp only [A330983, Nat.add_sub_cancel]

end A330983

/-! ## A330983.P6151101464835797538

`(2*n*gcd(2, n)+1)*(2*n)^(n%2)`
-/

namespace A330983.P6151101464835797538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n * Nat.gcd 2 n) + 1) * (2 * n) ^ (n % 2)

end

end A330983.P6151101464835797538

namespace A330983

/-- `(2*n*gcd(2, n)+1)*(2*n)^(n%2)` -/
def P6151101464835797538.Spec : Prop :=
  ∀ n, (P6151101464835797538.a n : ℤ) = A330983 (n + 1)

end A330983

/-! ## A330983.P13165170530249230882

`A047452(n+1)*A093178(n)`
-/

namespace A330983.P13165170530249230882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1) * A093178 n

end

end A330983.P13165170530249230882

namespace A330983

/-- `A047452(n+1)*A093178(n)` -/
def P13165170530249230882.Spec : Prop :=
  ∀ n, P13165170530249230882.a n = A330983 (n + 1)

end A330983

/-! ## A330983.P15716897788110198643

`A000034(n)*A330987(n+1)`
-/

namespace A330983.P15716897788110198643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A330987 (n + 1)

end

end A330983.P15716897788110198643

namespace A330983

/-- `A000034(n)*A330987(n+1)` -/
def P15716897788110198643.Spec : Prop :=
  ∀ n, P15716897788110198643.a n = A330983 (n + 1)

end A330983

/-! ## A330983.P4002360990734579271

`A178414(n+1)*A266303(n)`
-/

namespace A330983.P4002360990734579271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1) * A266303 n

end

end A330983.P4002360990734579271

namespace A330983

/-- `A178414(n+1)*A266303(n)` -/
def P4002360990734579271.Spec : Prop :=
  ∀ n, P4002360990734579271.a n = A330983 (n + 1)

end A330983

/-! ## A330983.P8889729199989749789

`lcm(A009001(n), A047452(n+1))`
-/

namespace A330983.P8889729199989749789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A047452 (n + 1))

end

end A330983.P8889729199989749789

namespace A330983

/-- `lcm(A009001(n), A047452(n+1))` -/
def P8889729199989749789.Spec : Prop :=
  ∀ n, (P8889729199989749789.a n : ℤ) = A330983 (n + 1)

end A330983

/-! ## A330983.P15780194375356026768

`(A007310(n+1)+n)*A093178(n)`
-/

namespace A330983.P15780194375356026768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007310 (n + 1) + (n : ℤ)) * A093178 n

end

end A330983.P15780194375356026768

namespace A330983

/-- `(A007310(n+1)+n)*A093178(n)` -/
def P15780194375356026768.Spec : Prop :=
  ∀ n, P15780194375356026768.a n = A330983 (n + 1)

end A330983

/-! ## A330983.P2674171269912326079

`lcm(A229217(n+1), A330987(n+1))`
-/

namespace A330983.P2674171269912326079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A229217 (n + 1)) (A330987 (n + 1))

end

end A330983.P2674171269912326079

namespace A330983

/-- `lcm(A229217(n+1), A330987(n+1))` -/
def P2674171269912326079.Spec : Prop :=
  ∀ n, (P2674171269912326079.a n : ℤ) = A330983 (n + 1)

end A330983

/-!
# A330986: Irregular table read by rows in which the rows list the Littlewood-Richardson coefficients for products of Schur functions s_mu * s_nu, for partitions mu >= nu in the order they are listed in A036036 (colexicographic order).

The programs for A330986, there is no canonical definition to state claims against.
-/

/-! ## A330986.P12531062285827338412

`(A297338(2*n+3)+A226634(A018783(2*n+3)))%2`
-/

namespace A330986.P12531062285827338412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297338 (2 * n + 3) + A226634 (A018783 (2 * n + 3)).toNat) 2

end

end A330986.P12531062285827338412

/-! ## A330986.P10891491069221767748

`A132194(A284323(n)+A022283(n))`
-/

namespace A330986.P10891491069221767748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (A284323 n + A022283 n).toNat

end

end A330986.P10891491069221767748

/-! ## A330986.P4893388617498104288

`A051731(or(A064653(n+1), A120880(n)))`
-/

namespace A330986.P4893388617498104288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (Int.lor (A064653 (n + 1)) (A120880 n)).toNat

end

end A330986.P4893388617498104288

/-! ## A330986.P1998510391982733654

`A323096(A323089(2*(n+2))%A323094(n))`
-/

namespace A330986.P1998510391982733654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323096 (Int.tmod (A323089 (2 * (n + 2))) (A323094 n)).toNat

end

end A330986.P1998510391982733654

/-! ## A330986.P9910307875470639541

`A324828(A324712(n+13)+A323243(n+9))`
-/

namespace A330986.P9910307875470639541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324828 (A324712 (n + 13) + A323243 (n + 9)).toNat

end

end A330986.P9910307875470639541

/-!
# A330987: Alternatively add and half-multiply pairs of the nonnegative integers.

The programs for A330987, the canonical program `A330987.P982368807111121437` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330987 has offset 1).

The definition of A330987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330987.P982368807111121437

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=21, a(4)=17, a(5)=55`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330987

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P982368807111121437.Spec : Prop :=
  ∀ n, P982368807111121437.a n = A330987 (n + 1)

theorem P982368807111121437.correct : P982368807111121437.Spec := by
  intro n
  simp only [A330987, Nat.add_sub_cancel]

end A330987

/-! ## A330987.P2724767163651012355

`or(1, n*(A267352(n)+1))`
-/

namespace A330987.P2724767163651012355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (A267352 n + 1))

end

end A330987.P2724767163651012355

namespace A330987

/-- `or(1, n*(A267352(n)+1))` -/
def P2724767163651012355.Spec : Prop :=
  ∀ n, P2724767163651012355.a n = A330987 (n + 1)

end A330987

/-! ## A330987.P14410958938256472490

`A093178(n)*A178414(n+1)`
-/

namespace A330987.P14410958938256472490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A178414 (n + 1)

end

end A330987.P14410958938256472490

namespace A330987

/-- `A093178(n)*A178414(n+1)` -/
def P14410958938256472490.Spec : Prop :=
  ∀ n, P14410958938256472490.a n = A330987 (n + 1)

end A330987

/-! ## A330987.P14892494804117652241

`A330983(n+1)/A000034(n)`
-/

namespace A330987.P14892494804117652241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330983 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A330987.P14892494804117652241

namespace A330987

/-- `A330983(n+1)/A000034(n)` -/
def P14892494804117652241.Spec : Prop :=
  ∀ n, P14892494804117652241.a n = (A330987 (n + 1) : ℚ)

end A330987

/-! ## A330987.P16791343463945350510

`gcd(A316224(n), A330983(n+1))`
-/

namespace A330987.P16791343463945350510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316224 n) (A330983 (n + 1))

end

end A330987.P16791343463945350510

namespace A330987

/-- `gcd(A316224(n), A330983(n+1))` -/
def P16791343463945350510.Spec : Prop :=
  ∀ n, (P16791343463945350510.a n : ℤ) = A330987 (n + 1)

end A330987

/-! ## A330987.P14994909866794167794

`lcm(A009001(n), A178414(n+1))`
-/

namespace A330987.P14994909866794167794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A178414 (n + 1))

end

end A330987.P14994909866794167794

namespace A330987

/-- `lcm(A009001(n), A178414(n+1))` -/
def P14994909866794167794.Spec : Prop :=
  ∀ n, (P14994909866794167794.a n : ℤ) = A330987 (n + 1)

end A330987

/-! ## A330987.P7362922183869541345

`A042963(n+1)+lcm(n, A042948(n))`
-/

namespace A330987.P7362922183869541345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) + (Int.lcm (n : ℤ) (A042948 n) : ℤ)

end

end A330987.P7362922183869541345

namespace A330987

/-- `A042963(n+1)+lcm(n, A042948(n))` -/
def P7362922183869541345.Spec : Prop :=
  ∀ n, P7362922183869541345.a n = A330987 (n + 1)

end A330987

/-! ## A330987.P11346449755763907944

`C(A178414(n+1), A006530(and(n+1, -(n+1))))`
-/

namespace A330987.P11346449755763907944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A178414 (n + 1)).toNat (A006530 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat).toNat

end

end A330987.P11346449755763907944

namespace A330987

/-- `C(A178414(n+1), A006530(and(n+1, -(n+1))))` -/
def P11346449755763907944.Spec : Prop :=
  ∀ n, (P11346449755763907944.a n : ℤ) = A330987 (n + 1)

end A330987

/-! ## A330987.P13934026992724613391

`C(A178414(n+1), A020639(and(n+1, -(n+1))))`
-/

namespace A330987.P13934026992724613391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A178414 (n + 1)).toNat (A020639 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat).toNat

end

end A330987.P13934026992724613391

namespace A330987

/-- `C(A178414(n+1), A020639(and(n+1, -(n+1))))` -/
def P13934026992724613391.Spec : Prop :=
  ∀ n, (P13934026992724613391.a n : ℤ) = A330987 (n + 1)

end A330987

/-! ## A330987.P6428075106506533429

`A330983(n+1)/A305705(A330983(n+2)%(n+1)+1)`
-/

namespace A330987.P6428075106506533429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330983 (n + 1) : ℚ) / (A305705 (Int.tmod (A330983 (n + 2)) (n + 1 : ℤ) + 1).toNat : ℚ)

end

end A330987.P6428075106506533429

namespace A330987

/-- `A330983(n+1)/A305705(A330983(n+2)%(n+1)+1)` -/
def P6428075106506533429.Spec : Prop :=
  ∀ n, P6428075106506533429.a n = (A330987 (n + 1) : ℚ)

end A330987

/-! ## A330987.P3156035401314429103

`A330983(n+1)/2*A266303(A266303(n))`
-/

namespace A330987.P3156035401314429103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330983 (n + 1) : ℚ) / 2 * (A266303 (A266303 n).toNat : ℚ)

end

end A330987.P3156035401314429103

namespace A330987

/-- `A330983(n+1)/2*A266303(A266303(n))` -/
def P3156035401314429103.Spec : Prop :=
  ∀ n, P3156035401314429103.a n = (A330987 (n + 1) : ℚ)

end A330987

/-! ## A330987.P13168222722123074364

`A000265(A330983(n+1))`
-/

namespace A330987.P13168222722123074364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A330983 (n + 1)).toNat

end

end A330987.P13168222722123074364

namespace A330987

/-- `A000265(A330983(n+1))` -/
def P13168222722123074364.Spec : Prop :=
  ∀ n, P13168222722123074364.a n = A330987 (n + 1)

end A330987

/-!
# A330988: a(1)=2, a(2)=3; then a(n+1) = smallest k such that S(k) = S(a(n)) + S(a(n-1)), (n>=2), where S is sopfr (A001414).

The programs for A330988, there is no canonical definition to state claims against.
-/

/-! ## A330988.P10969780995257952826

`A056240(A000045(n+3))`
-/

namespace A330988.P10969780995257952826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A000045 (n + 3)).toNat

end

end A330988.P10969780995257952826

/-! ## A330988.P6213271691543375131

`A056240(Δ[round(ϕ*a(n-1))])` with `a(0)=3`
-/

namespace A330988.P6213271691543375131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (f1 (n + 1) - f1 n).toNat

end

end A330988.P6213271691543375131

/-! ## A330988.P16120889757771076572

`A056240(record[round(ϕ*a(n-1))])` with `a(0)=2, a(1)=1`
-/

namespace A330988.P16120889757771076572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330988.P16120889757771076572

/-! ## A330988.P4771528403023833762

`A056240(record[a(n-1)+a(n-2)])` with `a(0)=2, a(1)=-1`
-/

namespace A330988.P4771528403023833762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330988.P4771528403023833762

/-! ## A330988.P113312045412328857

`A056240(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=2, a(1)=2`
-/

namespace A330988.P113312045412328857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A330988.P113312045412328857

/-!
# A330989: Least positive integer with exactly 2^n factorizations into factors > 1, or 0 if no such integer exists.

The programs for A330989, there is no canonical definition to state claims against.
-/

/-! ## A330989.P3769603927021931398

`A330973(2^∑{digits}[n, #])`
-/

namespace A330989.P3769603927021931398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A330989.P3769603927021931398

/-! ## A330989.P3372172604176922198

`A330973((∑{e}[n+1, #]+1)^n)`
-/

namespace A330989.P3372172604176922198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) ^ n)

end

end A330989.P3372172604176922198

/-! ## A330989.P16216000255830417615

`A330973(∏{e}[n+1, #+1]^n)`
-/

namespace A330989.P16216000255830417615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ n)

end

end A330989.P16216000255830417615

/-!
# A330991: Positive integers whose number of factorizations into factors > 1 (A001055) is a prime number (A000040).

The programs for A330991, there is no canonical definition to state claims against.
-/

/-! ## A330991.P1301348796282844096

`eq[2, A000005(A001055(n+1))]+1`
-/

namespace A330991.P1301348796282844096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330991.P1301348796282844096

/-! ## A330991.P9484702274894824232

`eq[1, A032741(A001055(abs(1-n)+1))]`
-/

namespace A330991.P9484702274894824232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A001055 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330991.P9484702274894824232

/-! ## A330991.P6043594247251822148

`eq[1, A001222(Δ[A096276(n+1)])]+2`
-/

namespace A330991.P6043594247251822148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A330991.P6043594247251822148

/-! ## A330991.P946561719847156957

`eq[2, A057567(A028422(n+1)+1)]+1`
-/

namespace A330991.P946561719847156957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (A028422 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330991.P946561719847156957

/-! ## A330991.P16918613971378137247

`eq[2, A074206(A001055(n+1)²)]+1`
-/

namespace A330991.P16918613971378137247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A001055 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330991.P16918613971378137247

/-! ## A330991.P2242459699462310635

`A113484(eq[1, A001222(A001055(n+1))])`
-/

namespace A330991.P2242459699462310635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330991.P2242459699462310635

/-!
# A330992: Least positive integer with exactly prime(n) factorizations into factors > 1, or 0 if no such integer exists.

The programs for A330992, there is no canonical definition to state claims against.
-/

/-! ## A330992.P8549534013861654925

`A330973(p?[xor(1, n)+1])`
-/

namespace A330992.P8549534013861654925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A330992.P8549534013861654925

/-! ## A330992.P17024245496414649342

`A330973(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A330992.P17024245496414649342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A330992.P17024245496414649342

/-! ## A330992.P14097903014995971683

`A330973(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A330992.P14097903014995971683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330992.P14097903014995971683

/-! ## A330992.P10082045151882694767

`A330973(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A330992.P10082045151882694767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330992.P10082045151882694767

/-! ## A330992.P803237707638858567

`A330973(A000040(n+1))`
-/

namespace A330992.P803237707638858567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A000040 (n + 1)).toNat

end

end A330992.P803237707638858567

/-! ## A330992.P845149058282573811

`A330973(A008578(n+2))`
-/

namespace A330992.P845149058282573811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A008578 (n + 2)).toNat

end

end A330992.P845149058282573811

/-! ## A330992.P11811848011213367089

`A330973(A064555(n+2))`
-/

namespace A330992.P11811848011213367089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A064555 (n + 2)).toNat

end

end A330992.P11811848011213367089

/-! ## A330992.P5872864248990635894

`A330973(A182986(n+2))`
-/

namespace A330992.P5872864248990635894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A182986 (n + 2)).toNat

end

end A330992.P5872864248990635894

/-!
# A330993: Numbers k such that a multiset whose multiplicities are the prime indices of k has a prime number of multiset partitions.

The programs for A330993, there is no canonical definition to state claims against.
-/

/-! ## A330993.P5719755668374253713

`eq[1, A001222(A318284(n+1))]+1`
-/

namespace A330993.P5719755668374253713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330993.P5719755668374253713

/-! ## A330993.P16093339318485986247

`eq[2, A299701(A318284(C(n+1, n)))]+1`
-/

namespace A330993.P16093339318485986247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A318284 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330993.P16093339318485986247

/-! ## A330993.P2452646808440306991

`record[A051755(n+2)/A000005(A318284(n+1))]`
-/

namespace A330993.P2452646808440306991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051755 (n + 2) : ℚ) / (A000005 (A318284 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330993.P2452646808440306991

/-!
# A330994: Numerator of P(n)/Q(n) = A000041(n)/A000009(n).

The programs for A330994, there is no canonical definition to state claims against.
-/

/-! ## A330994.P1831967114266496685

`A000041(n)/A363252(n)`
-/

namespace A330994.P1831967114266496685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / (A363252 n : ℚ)

end

end A330994.P1831967114266496685

/-! ## A330994.P17479064372068629736

`∑[A002865(n)]/A363252(n)`
-/

namespace A330994.P17479064372068629736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A363252 n : ℚ)

end

end A330994.P17479064372068629736

/-! ## A330994.P12230889427029971790

`A035363(2*n)/A363252(n)`
-/

namespace A330994.P12230889427029971790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035363 (2 * n) : ℚ) / (A363252 n : ℚ)

end

end A330994.P12230889427029971790

/-! ## A330994.P3341573738856048745

`A119620(2*n)/A363252(n)`
-/

namespace A330994.P3341573738856048745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119620 (2 * n) : ℚ) / (A363252 n : ℚ)

end

end A330994.P3341573738856048745

/-! ## A330994.P7984246990685586398

`∑{d}[n+1, A133732(#)]/A363252(n)`
-/

namespace A330994.P7984246990685586398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A133732 d : ℤ) : ℚ) / (A363252 n : ℚ)

end

end A330994.P7984246990685586398

/-!
# A330995: Denominator P(n)/Q(n) = A000041(n)/A000009(n).

The programs for A330995, there is no canonical definition to state claims against.
-/

/-! ## A330995.P12506792450872336550

`A000009(n)/A363252(n)`
-/

namespace A330995.P12506792450872336550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A363252 n : ℚ)

end

end A330995.P12506792450872336550

/-! ## A330995.P6594151482982374817

`∑[A087897(n)]/A363252(n)`
-/

namespace A330995.P6594151482982374817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A363252 n : ℚ)

end

end A330995.P6594151482982374817

/-! ## A330995.P14402779289840800230

`A035457(2*n)/A363252(n)`
-/

namespace A330995.P14402779289840800230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035457 (2 * n) : ℚ) / (A363252 n : ℚ)

end

end A330995.P14402779289840800230

/-! ## A330995.P14417688297729757168

`ceil(A087135(n)/2)/A363252(n)`
-/

namespace A330995.P14417688297729757168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A087135 n : ℚ) / 2⌉ : ℚ) / (A363252 n : ℚ)

end

end A330995.P14417688297729757168

/-! ## A330995.P1499170331469608892

`(A331848(n)+A000700(n))/A363252(n)`
-/

namespace A330995.P1499170331469608892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331848 n + A000700 n : ℚ) / (A363252 n : ℚ)

end

end A330995.P1499170331469608892

/-! ## A330995.P5542310186246580199

`(A167932(n)-A032741(n))/A363252(n)`
-/

namespace A330995.P5542310186246580199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167932 n - A032741 n : ℚ) / (A363252 n : ℚ)

end

end A330995.P5542310186246580199

/-! ## A330995.P12338609310347725646

`A304991(n)/(A000041(n)*A363252(n))`
-/

namespace A330995.P12338609310347725646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304991 n : ℚ) / (A000041 n * A363252 n : ℚ)

end

end A330995.P12338609310347725646

/-! ## A330995.P5927602913463662821

`A000009(n)/gcd(A000009(n), A000041(n))`
-/

namespace A330995.P5927602913463662821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (Int.gcd (A000009 n) (A000041 n) : ℚ)

end

end A330995.P5927602913463662821

/-! ## A330995.P13478696026929351127

`A088311(n)/gcd(A053529(n), A088311(n))`
-/

namespace A330995.P13478696026929351127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088311 n : ℚ) / (Int.gcd (A053529 n) (A088311 n) : ℚ)

end

end A330995.P13478696026929351127

/-! ## A330995.P6944630874610926770

`A087135(n)/gcd(A087135(n), A139582(n))`
-/

namespace A330995.P6944630874610926770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087135 n : ℚ) / (Int.gcd (A087135 n) (A139582 n) : ℚ)

end

end A330995.P6944630874610926770

/-!
# A330996: Nearest integer to P(n)/Q(n) = A000041(n)/A000009(n).

The programs for A330996, there is no canonical definition to state claims against.
-/

/-! ## A330996.P11296267114248418125

`round(root(A000701(3*n+4), 6))`
-/

namespace A330996.P11296267114248418125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000701 (3 * n + 4) : ℝ) ^ (1 / (6 : ℝ)))

end

end A330996.P11296267114248418125

/-! ## A330996.P1936329048441655376

`round(root(A027187(3*n+4), 6))`
-/

namespace A330996.P1936329048441655376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027187 (3 * n + 4) : ℝ) ^ (1 / (6 : ℝ)))

end

end A330996.P1936329048441655376

/-! ## A330996.P5564654336176015066

`floor(acot(A000009(n+10))*A241829(n+8))`
-/

namespace A330996.P5564654336176015066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A000009 (n + 10) : ℝ) * (A241829 (n + 8) : ℝ)⌋

end

end A330996.P5564654336176015066

/-! ## A330996.P15547036723030461098

`A227177(A240080(n)-floor(n/4))`
-/

namespace A330996.P15547036723030461098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A240080 n - ⌊(n : ℚ) / 4⌋).toNat

end

end A330996.P15547036723030461098

/-! ## A330996.P4517649453569723011

`ceil(A001936(n+3)/A017485(A027336(n+1)))`
-/

namespace A330996.P4517649453569723011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001936 (n + 3) : ℚ) / (A017485 (A027336 (n + 1)).toNat : ℚ)⌉

end

end A330996.P4517649453569723011

/-!
# A330997: Sorted list containing the least number with each possible nonzero number of factorizations into distinct factors > 1.

The programs for A330997, there is no canonical definition to state claims against.
-/

/-! ## A330997.P13400317982766921360

`record[A330974(A045778(n+1))]`
-/

namespace A330997.P13400317982766921360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (A045778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330997.P13400317982766921360

/-! ## A330997.P6975544477339743740

`record[A330974(A050323(n+1))]`
-/

namespace A330997.P6975544477339743740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (A050323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330997.P6975544477339743740

/-! ## A330997.P7269645857989074

`record[A330974(A344370(n+1)/(n+1))]`
-/

namespace A330997.P7269645857989074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (SequenceMachineLib.roundAway ((A344370 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330997.P7269645857989074

/-! ## A330997.P14942601005427885521

`record[A028615(n)%A340856(n+1)]`
-/

namespace A330997.P14942601005427885521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028615 n) (A340856 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330997.P14942601005427885521

/-! ## A330997.P8393823184395007171

`record[A000005(A284641(comp[2*(n+1)]))]`
-/

namespace A330997.P8393823184395007171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284641 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330997.P8393823184395007171

/-!
# A330998: Sorted list containing the least number whose inverse prime shadow (A181821) has each possible nonzero number of factorizations into factors > 1.

The programs for A330998, there is no canonical definition to state claims against.
-/

/-! ## A330998.P11741500768904716950

`lt[A056053(A052409(3*(n+1))), A093682(2*n+1)]`
-/

namespace A330998.P11741500768904716950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056053 (A052409 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093682 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330998.P11741500768904716950

/-! ## A330998.P1665971572585669826

`lt[A262275(n+1), A076241(A333243(n+1))]`
-/

namespace A330998.P1665971572585669826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (A333243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330998.P1665971572585669826

/-! ## A330998.P866056595432164002

`lt[A270792(n+1), A076241(A333243(n+1))]`
-/

namespace A330998.P866056595432164002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (A333243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330998.P866056595432164002

/-! ## A330998.P6084944114852204609

`lt[A049233(3*n+2), A076241(A333243(n+1))]`
-/

namespace A330998.P6084944114852204609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (A333243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330998.P6084944114852204609

/-! ## A330998.P5943220567317617010

`lt[-floor(acot(1-n)), 2%A330885(2*(n+1))]`
-/

namespace A330998.P5943220567317617010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A330885 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330998.P5943220567317617010

