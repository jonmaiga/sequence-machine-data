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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A126400: Number of base 13 n-digit numbers with adjacent digits differing by two or less.

The programs for A126400, the canonical program `A126400.P9767732096677768297` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126400 has offset 0).

The definition of A126400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126400.P9767732096677768297

`ogf((1+5x-31x^2-3x^3+50x^4-3x^5-18x^6)/(1-8x+14x^2+12x^3-25x^4-3x^5+9x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126400

/-- `ogf((1+5x-31x^2-3x^3+50x^4-3x^5-18x^6)/(1-8x+14x^2+12x^3-25x^4-3x^5+9x^6))` -/
def P9767732096677768297.Spec : Prop :=
  ∀ n, P9767732096677768297.a n = A126400 n

theorem P9767732096677768297.correct : P9767732096677768297.Spec := by
  intro n
  simp only [A126400]

end A126400

/-! ## A126400.P529665694355938750

`A285266(eq[19, A066657(n)]+2)`
-/

namespace A126400.P529665694355938750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A126400.P529665694355938750

namespace A126400

/-- `A285266(eq[19, A066657(n)]+2)` -/
def P529665694355938750.Spec : Prop :=
  ∀ n, P529665694355938750.a n = A126400 n

end A126400

/-! ## A126400.P10696492768263565808

`A000265(A126398(n)+A020699(n))`
-/

namespace A126400.P10696492768263565808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126398 n + A020699 n).toNat

end

end A126400.P10696492768263565808

namespace A126400

/-- `A000265(A126398(n)+A020699(n))` -/
def P10696492768263565808.Spec : Prop :=
  ∀ n, P10696492768263565808.a n = A126400 n

end A126400

/-!
# A126401: Number of base 14 n-digit numbers with adjacent digits differing by two or less.

The programs for A126401, the canonical program `A126401.P10295696368244669364` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126401 has offset 0).

The definition of A126401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126401.P10295696368244669364

`ogf((1+6x-35x^2-13x^3+63x^4+18x^5-17x^6-4x^7)/(1-8x+13x^2+17x^3-25x^4-12x^5+7x^6+2x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126401

/-- `ogf((1+6x-35x^2-13x^3+63x^4+18x^5-17x^6-4x^7)/(1-8x+13x^2+17x^3-25x^4-12x^5+7x^6+2x^7))` -/
def P10295696368244669364.Spec : Prop :=
  ∀ n, P10295696368244669364.a n = A126401 n

theorem P10295696368244669364.correct : P10295696368244669364.Spec := by
  intro n
  simp only [A126401]

end A126401

/-! ## A126401.P16188835525698633455

`A020699(n)+A126400(n)-A000265(A020699(n))`
-/

namespace A126401.P16188835525698633455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n + (A126400 n - A000265 (A020699 n).toNat)

end

end A126401.P16188835525698633455

namespace A126401

/-- `A020699(n)+A126400(n)-A000265(A020699(n))` -/
def P16188835525698633455.Spec : Prop :=
  ∀ n, P16188835525698633455.a n = A126401 n

end A126401

/-! ## A126401.P15817146697927842405

`A000265(A020699(n))+A126402(n)-A020699(n)`
-/

namespace A126401.P15817146697927842405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A020699 n).toNat + (A126402 n - A020699 n)

end

end A126401.P15817146697927842405

namespace A126401

/-- `A000265(A020699(n))+A126402(n)-A020699(n)` -/
def P15817146697927842405.Spec : Prop :=
  ∀ n, P15817146697927842405.a n = A126401 n

end A126401

/-! ## A126401.P13560816720590149041

`A126399(n)+A014682(A126403(n)-A126399(n))`
-/

namespace A126401.P13560816720590149041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126399 n + A014682 (A126403 n - A126399 n).toNat

end

end A126401.P13560816720590149041

namespace A126401

/-- `A126399(n)+A014682(A126403(n)-A126399(n))` -/
def P13560816720590149041.Spec : Prop :=
  ∀ n, P13560816720590149041.a n = A126401 n

end A126401

/-!
# A126402: Number of base 15 n-digit numbers with adjacent digits differing by two or less.

The programs for A126402, the canonical program `A126402.P1354752304270538593` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126402 has offset 0).

The definition of A126402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126402.P1354752304270538593

`ogf((1+6x-46x^2+14x^3+102x^4-25x^5-52x^6+5x^7+2x^8)/(1-9x+20x^2+10x^3-46x^4+x^5+23x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126402

/-- `ogf((1+6x-46x^2+14x^3+102x^4-25x^5-52x^6+5x^7+2x^8)/(1-9x+20x^2+10x^3-46x^4+x^5+23x^6-x^7-x^8))` -/
def P1354752304270538593.Spec : Prop :=
  ∀ n, P1354752304270538593.a n = A126402 n

theorem P1354752304270538593.correct : P1354752304270538593.Spec := by
  intro n
  simp only [A126402]

end A126402

/-! ## A126402.P8889401755666499837

`A000265(A126397(n)+A000351(n))`
-/

namespace A126402.P8889401755666499837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126397 n + A000351 n).toNat

end

end A126402.P8889401755666499837

namespace A126402

/-- `A000265(A126397(n)+A000351(n))` -/
def P8889401755666499837.Spec : Prop :=
  ∀ n, P8889401755666499837.a n = A126402 n

end A126402

/-! ## A126402.P12293888959492755518

`A000265(A126400(n)+A020699(n))`
-/

namespace A126402.P12293888959492755518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126400 n + A020699 n).toNat

end

end A126402.P12293888959492755518

namespace A126402

/-- `A000265(A126400(n)+A020699(n))` -/
def P12293888959492755518.Spec : Prop :=
  ∀ n, P12293888959492755518.a n = A126402 n

end A126402

/-!
# A126403: Number of base 16 n-digit numbers with adjacent digits differing by two or less.

The programs for A126403, the canonical program `A126403.P5609064935898460696` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126403 has offset 0).

The definition of A126403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126403.P5609064935898460696

`ogf((1+7x-51x^2+4x^3+131x^4+10x^5-61x^6-2x^7+3x^8)/(1-9x+19x^2+16x^3-49x^4-14x^5+23x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126403

/-- `ogf((1+7x-51x^2+4x^3+131x^4+10x^5-61x^6-2x^7+3x^8)/(1-9x+19x^2+16x^3-49x^4-14x^5+23x^6+2x^7-x^8))` -/
def P5609064935898460696.Spec : Prop :=
  ∀ n, P5609064935898460696.a n = A126403 n

theorem P5609064935898460696.correct : P5609064935898460696.Spec := by
  intro n
  simp only [A126403]

end A126403

/-! ## A126403.P7872682035081537729

`A020699(n)+A126402(n)-A000265(A020699(n))`
-/

namespace A126403.P7872682035081537729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n + (A126402 n - A000265 (A020699 n).toNat)

end

end A126403.P7872682035081537729

namespace A126403

/-- `A020699(n)+A126402(n)-A000265(A020699(n))` -/
def P7872682035081537729.Spec : Prop :=
  ∀ n, P7872682035081537729.a n = A126403 n

end A126403

/-! ## A126403.P7845090854797124876

`A126402(n)+A014682(A126402(n)-A126400(n))`
-/

namespace A126403.P7845090854797124876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126402 n + A014682 (A126402 n - A126400 n).toNat

end

end A126403.P7845090854797124876

namespace A126403

/-- `A126402(n)+A014682(A126402(n)-A126400(n))` -/
def P7845090854797124876.Spec : Prop :=
  ∀ n, P7845090854797124876.a n = A126403 n

end A126403

/-! ## A126403.P3902981137888618527

`A126400(n)+A014682(A126406(n)-A126400(n))`
-/

namespace A126403.P3902981137888618527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126400 n + A014682 (A126406 n - A126400 n).toNat

end

end A126403.P3902981137888618527

namespace A126403

/-- `A126400(n)+A014682(A126406(n)-A126400(n))` -/
def P3902981137888618527.Spec : Prop :=
  ∀ n, P3902981137888618527.a n = A126403 n

end A126403

/-!
# A126404: Number of base 17 n-digit numbers with adjacent digits differing by two or less.

The programs for A126404, there is no canonical definition to state claims against.
-/

/-! ## A126404.P4088364509949166931

`A126406(n)-A273943(A126412(n)-A126408(n))`
-/

namespace A126404.P4088364509949166931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126406 n - A273943 (A126412 n - A126408 n).toNat

end

end A126404.P4088364509949166931

/-! ## A126404.P11187001631239926831

`A000265(A126399(n)+A000351(n))`
-/

namespace A126404.P11187001631239926831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126399 n + A000351 n).toNat

end

end A126404.P11187001631239926831

/-! ## A126404.P6818504246277676327

`A000265(A126398(n)+A003948(n))`
-/

namespace A126404.P6818504246277676327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126398 n + A003948 n).toNat

end

end A126404.P6818504246277676327

/-!
# A126405: Number of base 18 n-digit numbers with adjacent digits differing by two or less.

The programs for A126405, there is no canonical definition to state claims against.
-/

/-! ## A126405.P137572739314779671

`A003948(n)+A126402(n)-A000265(A003948(n))`
-/

namespace A126405.P137572739314779671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n + (A126402 n - A000265 (A003948 n).toNat)

end

end A126405.P137572739314779671

/-! ## A126405.P14345924105893919255

`A000265(A003948(n))+A126408(n)-A003948(n)`
-/

namespace A126405.P14345924105893919255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003948 n).toNat + (A126408 n - A003948 n)

end

end A126405.P14345924105893919255

/-! ## A126405.P12268229088600968765

`A000265(A020699(n))+A126406(n)-A020699(n)`
-/

namespace A126405.P12268229088600968765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A020699 n).toNat + (A126406 n - A020699 n)

end

end A126405.P12268229088600968765

/-! ## A126405.P12160036490097723019

`A126402(n)+A014682(A126408(n)-A126402(n))`
-/

namespace A126405.P12160036490097723019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126402 n + A014682 (A126408 n - A126402 n).toNat

end

end A126405.P12160036490097723019

/-!
# A126406: Number of base 19 n-digit numbers with adjacent digits differing by two or less.

The programs for A126406, there is no canonical definition to state claims against.
-/

/-! ## A126406.P55843182371347748

`A020639(A229720(n+1))*A126410(n)-A126414(n)`
-/

namespace A126406.P55843182371347748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A229720 (n + 1)).toNat * A126410 n - A126414 n

end

end A126406.P55843182371347748

/-! ## A126406.P1388475066559627731

`(A126407(n)+A126405(n))/A020639(A175806(n+3))`
-/

namespace A126406.P1388475066559627731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126407 n + A126405 n : ℚ) / (A020639 (A175806 (n + 3)).toNat : ℚ)

end

end A126406.P1388475066559627731

/-! ## A126406.P12176954588410245181

`A126408(n)-A273943(A126412(n)-A126408(n))`
-/

namespace A126406.P12176954588410245181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126408 n - A273943 (A126412 n - A126408 n).toNat

end

end A126406.P12176954588410245181

/-!
# A126407: Number of base 20 n-digit numbers with adjacent digits differing by two or less.

The programs for A126407, there is no canonical definition to state claims against.
-/

/-! ## A126407.P408056053269437842

`A020639(A003500(n))*A126409(n)-A126411(n)`
-/

namespace A126407.P408056053269437842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003500 n).toNat * A126409 n - A126411 n

end

end A126407.P408056053269437842

/-! ## A126407.P14274369788303392317

`A000265(A003948(n))+A126410(n)-A003948(n)`
-/

namespace A126407.P14274369788303392317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003948 n).toNat + (A126410 n - A003948 n)

end

end A126407.P14274369788303392317

/-! ## A126407.P1094360727453795512

`A020699(n)+A126406(n)-A000265(A020699(n))`
-/

namespace A126407.P1094360727453795512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n + (A126406 n - A000265 (A020699 n).toNat)

end

end A126407.P1094360727453795512

/-! ## A126407.P9540385919438994779

`A126405(n)+A014682(A126405(n)-A126401(n))`
-/

namespace A126407.P9540385919438994779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126405 n + A014682 (A126405 n - A126401 n).toNat

end

end A126407.P9540385919438994779

/-!
# A126408: Number of base 21 n-digit numbers with adjacent digits differing by two or less.

The programs for A126408, there is no canonical definition to state claims against.
-/

/-! ## A126408.P4055992359276366717

`A000265(A126403(n)+A000351(n))`
-/

namespace A126408.P4055992359276366717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126403 n + A000351 n).toNat

end

end A126408.P4055992359276366717

/-! ## A126408.P7618754664897240789

`A000265(A126402(n)+A003948(n))`
-/

namespace A126408.P7618754664897240789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126402 n + A003948 n).toNat

end

end A126408.P7618754664897240789

/-! ## A126408.P10369959459644468467

`A000265(A126406(n)+A020699(n))`
-/

namespace A126408.P10369959459644468467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126406 n + A020699 n).toNat

end

end A126408.P10369959459644468467

/-!
# A126409: Number of base 22 n-digit numbers with adjacent digits differing by two or less.

The programs for A126409, there is no canonical definition to state claims against.
-/

/-! ## A126409.P1198104777067621713

`A000265(A003948(n))+A126412(n)-A003948(n)`
-/

namespace A126409.P1198104777067621713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003948 n).toNat + (A126412 n - A003948 n)

end

end A126409.P1198104777067621713

/-! ## A126409.P9057431158524005634

`A126406(n)+A014682(A126406(n)-A126400(n))`
-/

namespace A126409.P9057431158524005634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126406 n + A014682 (A126406 n - A126400 n).toNat

end

end A126409.P9057431158524005634

/-! ## A126409.P9745249059172476457

`A126407(n)+A014682(A126407(n)-A126403(n))`
-/

namespace A126409.P9745249059172476457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126407 n + A014682 (A126407 n - A126403 n).toNat

end

end A126409.P9745249059172476457

/-! ## A126409.P8262572623316086760

`A273943(A126408(n)-A126406(n))+A126408(n)`
-/

namespace A126409.P8262572623316086760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126408 n - A126406 n).toNat + A126408 n

end

end A126409.P8262572623316086760

/-!
# A126410: Number of base 23 n-digit numbers with adjacent digits differing by two or less.

The programs for A126410, there is no canonical definition to state claims against.
-/

/-! ## A126410.P11975698116709158355

`(A126411(n)+A126409(n))/A020639(4*A031875(n+1))`
-/

namespace A126410.P11975698116709158355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126411 n + A126409 n : ℚ) / (A020639 (4 * A031875 (n + 1)).toNat : ℚ)

end

end A126410.P11975698116709158355

/-! ## A126410.P7302592458153448739

`(A126411(n)+A126409(n))/A020639(A003500(n))`
-/

namespace A126410.P7302592458153448739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126411 n + A126409 n : ℚ) / (A020639 (A003500 n).toNat : ℚ)

end

end A126410.P7302592458153448739

/-! ## A126410.P8624885396367565676

`A273943(A126408(n)-A126406(n))+A126409(n)`
-/

namespace A126410.P8624885396367565676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126408 n - A126406 n).toNat + A126409 n

end

end A126410.P8624885396367565676

/-! ## A126410.P6674060872601261947

`A273943(A126412(n)-A126408(n))+A126408(n)`
-/

namespace A126410.P6674060872601261947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126412 n - A126408 n).toNat + A126408 n

end

end A126410.P6674060872601261947

/-!
# A126411: Number of base 24 n-digit numbers with adjacent digits differing by two or less.

The programs for A126411, there is no canonical definition to state claims against.
-/

/-! ## A126411.P7313636122173139556

`A000034(A122041(n+1))*A126413(n)-A126415(n)`
-/

namespace A126411.P7313636122173139556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A122041 (n + 1)).toNat * A126413 n - A126415 n

end

end A126411.P7313636122173139556

/-! ## A126411.P2704138059065141938

`(A126412(n)+A126410(n))/A014963(2^(n+6))`
-/

namespace A126411.P2704138059065141938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126412 n + A126410 n : ℚ) / (A014963 (2 ^ (n + 6)) : ℚ)

end

end A126411.P2704138059065141938

/-! ## A126411.P146803387137858854

`A003948(n)+A126408(n)-A000265(A003948(n))`
-/

namespace A126411.P146803387137858854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n + (A126408 n - A000265 (A003948 n).toNat)

end

end A126411.P146803387137858854

/-! ## A126411.P13964687743127977182

`A126408(n)+A014682(A126408(n)-A126402(n))`
-/

namespace A126411.P13964687743127977182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126408 n + A014682 (A126408 n - A126402 n).toNat

end

end A126411.P13964687743127977182

/-!
# A126412: Number of base 25 n-digit numbers with adjacent digits differing by two or less.

The programs for A126412, there is no canonical definition to state claims against.
-/

/-! ## A126412.P8312334648204996987

`(A126413(n)+A126411(n))/A020639(A002203(n))`
-/

namespace A126412.P8312334648204996987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126413 n + A126411 n : ℚ) / (A020639 (A002203 n).toNat : ℚ)

end

end A126412.P8312334648204996987

/-! ## A126412.P2192335143755536243

`(A126414(n)+A126410(n))/A020639(A229720(n+1))`
-/

namespace A126412.P2192335143755536243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126414 n + A126410 n : ℚ) / (A020639 (A229720 (n + 1)).toNat : ℚ)

end

end A126412.P2192335143755536243

/-! ## A126412.P15240560949236842204

`A000265(A126407(n)+A000351(n))`
-/

namespace A126412.P15240560949236842204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126407 n + A000351 n).toNat

end

end A126412.P15240560949236842204

/-!
# A126413: Number of base 26 n-digit numbers with adjacent digits differing by two or less.

The programs for A126413, there is no canonical definition to state claims against.
-/

/-! ## A126413.P9465054090924414002

`A020639(A003500(n))*A126411(n)-A126409(n)`
-/

namespace A126413.P9465054090924414002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003500 n).toNat * A126411 n - A126409 n

end

end A126413.P9465054090924414002

/-! ## A126413.P16602639453696904132

`A003948(n)+A126410(n)-A000265(A003948(n))`
-/

namespace A126413.P16602639453696904132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n + (A126410 n - A000265 (A003948 n).toNat)

end

end A126413.P16602639453696904132

/-! ## A126413.P9544151746662116839

`A000265(A020699(n))+A126414(n)-A020699(n)`
-/

namespace A126413.P9544151746662116839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A020699 n).toNat + (A126414 n - A020699 n)

end

end A126413.P9544151746662116839

/-! ## A126413.P2524836848518112553

`A273943(A126408(n)-A126406(n))+A126412(n)`
-/

namespace A126413.P2524836848518112553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126408 n - A126406 n).toNat + A126412 n

end

end A126413.P2524836848518112553

/-!
# A126414: Number of base 27 n-digit numbers with adjacent digits differing by two or less.

The programs for A126414, there is no canonical definition to state claims against.
-/

/-! ## A126414.P5836943296859082060

`(A126415(n)+A126413(n))/A000034(A122041(n+1))`
-/

namespace A126414.P5836943296859082060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126415 n + A126413 n : ℚ) / (A000034 (A122041 (n + 1)).toNat : ℚ)

end

end A126414.P5836943296859082060

/-! ## A126414.P7935176008234596656

`A273943(A126409(n)-A126405(n))+A126412(n)`
-/

namespace A126414.P7935176008234596656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126409 n - A126405 n).toNat + A126412 n

end

end A126414.P7935176008234596656

/-! ## A126414.P15008310017588928538

`A273943(A126412(n)-A126408(n))+A126412(n)`
-/

namespace A126414.P15008310017588928538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126412 n - A126408 n).toNat + A126412 n

end

end A126414.P15008310017588928538

/-!
# A126415: Number of base 28 n-digit numbers with adjacent digits differing by two or less.

The programs for A126415, there is no canonical definition to state claims against.
-/

/-! ## A126415.P7023529111679091565

`A020639(A002203(n))*A126413(n)-A126411(n)`
-/

namespace A126415.P7023529111679091565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002203 n).toNat * A126413 n - A126411 n

end

end A126415.P7023529111679091565

/-! ## A126415.P3733988293620238320

`A003948(n)+A126412(n)-A000265(A003948(n))`
-/

namespace A126415.P3733988293620238320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n + (A126412 n - A000265 (A003948 n).toNat)

end

end A126415.P3733988293620238320

/-! ## A126415.P3109254699535996141

`A020699(n)+A126414(n)-A000265(A020699(n))`
-/

namespace A126415.P3109254699535996141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n + (A126414 n - A000265 (A020699 n).toNat)

end

end A126415.P3109254699535996141

/-! ## A126415.P184344077079582081

`A273943(A126412(n)-A126406(n))+A126412(n)`
-/

namespace A126415.P184344077079582081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A126412 n - A126406 n).toNat + A126412 n

end

end A126415.P184344077079582081

/-!
# A126416: Number of base 29 n-digit numbers with adjacent digits differing by two or less.

The programs for A126416, there is no canonical definition to state claims against.
-/

/-! ## A126416.P11280412521954474372

`A000265(A126411(n)+A000351(n))`
-/

namespace A126416.P11280412521954474372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126411 n + A000351 n).toNat

end

end A126416.P11280412521954474372

/-! ## A126416.P10309758319036011713

`A000265(A126410(n)+A003948(n))`
-/

namespace A126416.P10309758319036011713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126410 n + A003948 n).toNat

end

end A126416.P10309758319036011713

/-! ## A126416.P457258778654154721

`A000265(A126414(n)+A020699(n))`
-/

namespace A126416.P457258778654154721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126414 n + A020699 n).toNat

end

end A126416.P457258778654154721

/-!
# A126417: Number of base 30 n-digit numbers with adjacent digits differing by two or less.

The programs for A126417, there is no canonical definition to state claims against.
-/

/-! ## A126417.P16937695036027796198

`A000034(A122041(n+1))*A126415(n)-A126413(n)`
-/

namespace A126417.P16937695036027796198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A122041 (n + 1)).toNat * A126415 n - A126413 n

end

end A126417.P16937695036027796198

/-! ## A126417.P12848413342457485164

`A126418(n)-A004526(A020699(n))`
-/

namespace A126417.P12848413342457485164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126418 n - A004526 (A020699 n).toNat

end

end A126417.P12848413342457485164

/-! ## A126417.P13305197349778889723

`2*A126412(n)-A273943(A126408(n)+A126406(n))`
-/

namespace A126417.P13305197349778889723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126412 n - A273943 (A126408 n + A126406 n).toNat

end

end A126417.P13305197349778889723

/-!
# A126418: Number of base 31 n-digit numbers with adjacent digits differing by two or less.

The programs for A126418, there is no canonical definition to state claims against.
-/

/-! ## A126418.P157584745173928282

`A020639(A229720(n+1))*A126414(n)-A126410(n)`
-/

namespace A126418.P157584745173928282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A229720 (n + 1)).toNat * A126414 n - A126410 n

end

end A126418.P157584745173928282

/-! ## A126418.P2842716369884221898

`A000265(A126413(n)+A000351(n))`
-/

namespace A126418.P2842716369884221898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126413 n + A000351 n).toNat

end

end A126418.P2842716369884221898

/-! ## A126418.P9936884060346537832

`A000265(A126412(n)+A003948(n))`
-/

namespace A126418.P9936884060346537832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126412 n + A003948 n).toNat

end

end A126418.P9936884060346537832

/-!
# A126419: Number of base 32 n-digit numbers with adjacent digits differing by two or less.

The programs for A126419, there is no canonical definition to state claims against.
-/

/-! ## A126419.P810808221243801896

`A126418(n)+A004526(A020699(n))`
-/

namespace A126419.P810808221243801896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126418 n + A004526 (A020699 n).toNat

end

end A126419.P810808221243801896

/-! ## A126419.P6218695798077016052

`A126417(n)+2*A004526(A020699(n))`
-/

namespace A126419.P6218695798077016052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126417 n + 2 * A004526 (A020699 n).toNat

end

end A126419.P6218695798077016052

/-!
# A126420: a(n) = n^3 - n - 1.

The programs for A126420, the canonical program `A126420.P400369601322111787` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126420 has offset 1).

The definition of A126420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-(n+1)-1` (program `A126420.P400369601322111787`, by `A126420.P400369601322111787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126420.P400369601322111787

`(n+1)^3-(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126420

/-- `(n+1)^3-(n+1)-1` -/
def P400369601322111787.Spec : Prop :=
  ∀ n, P400369601322111787.a n = A126420 (n + 1)

theorem P400369601322111787.correct : P400369601322111787.Spec := by
  intro n
  simp only [A126420, Nat.add_sub_cancel]

end A126420

/-! ## A126420.P11261658890358305112

`ogf((-1+9x-3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A126420.P11261658890358305112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 9, -3, 1] [1, -4, 6, -4, 1] n

end

end A126420.P11261658890358305112

namespace A126420

/-- `ogf((-1+9x-3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P11261658890358305112.Spec : Prop :=
  ∀ n, P11261658890358305112.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P1030866098291655332

`6*C(n+2, 3)-1`
-/

namespace A126420.P1030866098291655332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (n + 2) 3 : ℤ) - 1

end

end A126420.P1030866098291655332

namespace A126420

/-- `6*C(n+2, 3)-1` -/
def P1030866098291655332.Spec : Prop :=
  ∀ n, P1030866098291655332.a n = A126420 (n + 1)

theorem P1030866098291655332.correct : P1030866098291655332.Spec := by
  intro n
  simp only [A126420, Nat.add_sub_cancel, A126420.P1030866098291655332.a, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126420

/-! ## A126420.P15029360424583606098

`Δ[2*C(∑[n], 2)-n]`
-/

namespace A126420.P15029360424583606098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126420.P15029360424583606098

namespace A126420

/-- `Δ[2*C(∑[n], 2)-n]` -/
def P15029360424583606098.Spec : Prop :=
  ∀ n, P15029360424583606098.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P10627350792647836780

`or(1, 2*n*∑[n+1]-1)`
-/

namespace A126420.P10627350792647836780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1)

end

end A126420.P10627350792647836780

namespace A126420

/-- `or(1, 2*n*∑[n+1]-1)` -/
def P10627350792647836780.Spec : Prop :=
  ∀ n, P10627350792647836780.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P16974583582598971131

`xor(1, 2*n*∑[n+1]-2)`
-/

namespace A126420.P16974583582598971131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2)

end

end A126420.P16974583582598971131

namespace A126420

/-- `xor(1, 2*n*∑[n+1]-2)` -/
def P16974583582598971131.Spec : Prop :=
  ∀ n, P16974583582598971131.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P12618209390938715545

`-or(1, 2*n*∑[-(n+1)])`
-/

namespace A126420.P12618209390938715545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A126420.P12618209390938715545

namespace A126420

/-- `-or(1, 2*n*∑[-(n+1)])` -/
def P12618209390938715545.Spec : Prop :=
  ∀ n, P12618209390938715545.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P4060214930434512861

`-xor(1, 2*n*∑[-(n+1)])`
-/

namespace A126420.P4060214930434512861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A126420.P4060214930434512861

namespace A126420

/-- `-xor(1, 2*n*∑[-(n+1)])` -/
def P4060214930434512861.Spec : Prop :=
  ∀ n, P4060214930434512861.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P14948513292038149938

`round((n+1-acot(n))*(n+1)²)`
-/

namespace A126420.P14948513292038149938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) * ((n + 1) ^ 2 : ℝ))

end

end A126420.P14948513292038149938

namespace A126420

/-- `round((n+1-acot(n))*(n+1)²)` -/
def P14948513292038149938.Spec : Prop :=
  ∀ n, P14948513292038149938.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P13570367637482380046

`Δ[C(n+1, 2)²-C(n+2, 2)]`
-/

namespace A126420.P13570367637482380046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126420.P13570367637482380046

namespace A126420

/-- `Δ[C(n+1, 2)²-C(n+2, 2)]` -/
def P13570367637482380046.Spec : Prop :=
  ∀ n, P13570367637482380046.a n = A126420 (n + 1)

theorem P13570367637482380046.correct : P13570367637482380046.Spec := by
  intro n
  simp only [A126420, Nat.add_sub_cancel, A126420.P13570367637482380046.f1, A126420.P13570367637482380046.a, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126420

/-! ## A126420.P6778836768779688249

`Δ[∑[(n+1)*lcm(n, n-1)]-n]`
-/

namespace A126420.P6778836768779688249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.lcm (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126420.P6778836768779688249

namespace A126420

/-- `Δ[∑[(n+1)*lcm(n, n-1)]-n]` -/
def P6778836768779688249.Spec : Prop :=
  ∀ n, P6778836768779688249.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P11491923619521701896

`floor(a(n-1)+3*(n²+n))` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A126420.P11491923619521701896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (3 * (n ^ 2 + n) : ℤ)

end

end A126420.P11491923619521701896

namespace A126420

/-- `floor(a(n-1)+3*(n²+n))` -/
def P11491923619521701896.Spec : Prop :=
  ∀ n, P11491923619521701896.a n = A126420 (n + 1)

theorem P11491923619521701896.correct : P11491923619521701896.Spec := by
  intro n
  induction n with
  | zero => simp [A126420, A126420.P11491923619521701896.a, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A126420, Nat.add_sub_cancel, A126420.P11491923619521701896.a, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A126420

/-! ## A126420.P3685507781810396509

`3*(a(n-1)/3+n²+n)` with `a(0)=-1`
-/

namespace A126420.P3685507781810396509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  3 * (a (n - 1) / 3 + (n ^ 2 + n : ℚ))

end

end A126420.P3685507781810396509

namespace A126420

/-- `3*(a(n-1)/3+n²+n)` -/
def P3685507781810396509.Spec : Prop :=
  ∀ n, P3685507781810396509.a n = (A126420 (n + 1) : ℚ)

theorem P3685507781810396509.correct : P3685507781810396509.Spec := by
  intro n
  induction n with
  | zero => simp [A126420, A126420.P3685507781810396509.a, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A126420, Nat.add_sub_cancel, A126420.P3685507781810396509.a, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A126420

/-! ## A126420.P144083049315063914

`((n+1)²²-lcm(n+1, n+2))/(n+1)`
-/

namespace A126420.P144083049315063914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (Nat.lcm (n + 1) (n + 2) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A126420.P144083049315063914

namespace A126420

/-- `((n+1)²²-lcm(n+1, n+2))/(n+1)` -/
def P144083049315063914.Spec : Prop :=
  ∀ n, P144083049315063914.a n = (A126420 (n + 1) : ℚ)

end A126420

/-! ## A126420.P11465768385359633729

`Δ[∑[n]²-A000096(n)]`
-/

namespace A126420.P11465768385359633729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126420.P11465768385359633729

namespace A126420

/-- `Δ[∑[n]²-A000096(n)]` -/
def P11465768385359633729.Spec : Prop :=
  ∀ n, P11465768385359633729.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P11767864793663379845

`(A007588(n+1)-(n+3))/2`
-/

namespace A126420.P11767864793663379845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007588 (n + 1) - (n + 3 : ℤ) : ℚ) / 2

end

end A126420.P11767864793663379845

namespace A126420

/-- `(A007588(n+1)-(n+3))/2` -/
def P11767864793663379845.Spec : Prop :=
  ∀ n, P11767864793663379845.a n = (A126420 (n + 1) : ℚ)

theorem P11767864793663379845.correct : P11767864793663379845.Spec := by
  intro n
  simp only [A126420, Nat.add_sub_cancel, A126420.P11767864793663379845.a, A126420.P400369601322111787.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126420

/-! ## A126420.P9364989379940564061

`floor((n*A046092(n+1)-1)/2)`
-/

namespace A126420.P9364989379940564061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A046092 (n + 1) - 1 : ℚ) / 2⌋

end

end A126420.P9364989379940564061

namespace A126420

/-- `floor((n*A046092(n+1)-1)/2)` -/
def P9364989379940564061.Spec : Prop :=
  ∀ n, P9364989379940564061.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P9478361589049540966

`(4*n*A000217(n+1)-2)/2`
-/

namespace A126420.P9478361589049540966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) * A000217 (n + 1) - 2 : ℚ) / 2

end

end A126420.P9478361589049540966

namespace A126420

/-- `(4*n*A000217(n+1)-2)/2` -/
def P9478361589049540966.Spec : Prop :=
  ∀ n, P9478361589049540966.a n = (A126420 (n + 1) : ℚ)

theorem P9478361589049540966.correct : P9478361589049540966.Spec := by
  intro n
  simp only [A126420, Nat.add_sub_cancel, A126420.P9478361589049540966.a, A126420.P400369601322111787.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126420

/-! ## A126420.P8806397914475177211

`Δ[∑[n]²-A167487(n)]`
-/

namespace A126420.P8806397914475177211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - A167487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126420.P8806397914475177211

namespace A126420

/-- `Δ[∑[n]²-A167487(n)]` -/
def P8806397914475177211.Spec : Prop :=
  ∀ n, P8806397914475177211.a n = A126420 (n + 1)

end A126420

/-! ## A126420.P4643583757014971318

`Δ[∑[n]²-A167499(n)]`
-/

namespace A126420.P4643583757014971318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126420.P4643583757014971318

namespace A126420

/-- `Δ[∑[n]²-A167499(n)]` -/
def P4643583757014971318.Spec : Prop :=
  ∀ n, P4643583757014971318.a n = A126420 (n + 1)

end A126420

/-!
# A126421: Numbers k for which k^3-k-1 is prime.

The programs for A126421, there is no canonical definition to state claims against.
-/

/-! ## A126421.P7100436803023213879

`ceil(root(A116581(n+1), 3))`
-/

namespace A126421.P7100436803023213879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116581 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A126421.P7100436803023213879

/-! ## A126421.P14541786406374996385

`A000027(round(root(A116581(1+n), 3)))`
-/

namespace A126421.P14541786406374996385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A116581 (1 + n) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A126421.P14541786406374996385

/-! ## A126421.P9457098377374359575

`round(root(A116581(n+1), 3))%A000040(n+2)`
-/

namespace A126421.P9457098377374359575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A116581 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000040 (n + 2))

end

end A126421.P9457098377374359575

/-! ## A126421.P2002328885071195517

`comp[A177089(n+1)]`
-/

namespace A126421.P2002328885071195517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A126421.P2002328885071195517

/-! ## A126421.P1926416193171025666

`A254667(round(root(A116581(n+1), 3)))`
-/

namespace A126421.P1926416193171025666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A116581 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A126421.P1926416193171025666

/-! ## A126421.P738583613278137137

`A123108(2*round(root(A116581(n+1), 3)))`
-/

namespace A126421.P738583613278137137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * SequenceMachineLib.roundAway ((A116581 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A126421.P738583613278137137

/-! ## A126421.P9403332295489460977

`round(root(A116581(n+1), 3))%A124724(n)`
-/

namespace A126421.P9403332295489460977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A116581 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A124724 n)

end

end A126421.P9403332295489460977

/-!
# A126422: Primes of the form k^4-k-1.

The programs for A126422, there is no canonical definition to state claims against.
-/

/-! ## A126422.P6067586448951873413

`A126423(A126424(n+1))`
-/

namespace A126422.P6067586448951873413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126423 (A126424 (n + 1)).toNat

end

end A126422.P6067586448951873413

/-! ## A126422.P7571334161552283921

`A058895(A126424(n+1))+A057428(A000005(n+1))`
-/

namespace A126422.P7571334161552283921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat + A057428 (A000005 (n + 1)).toNat

end

end A126422.P7571334161552283921

/-! ## A126422.P13292155375619043760

`A058895(A126424(n+1))-A001222(A001122(n+1))`
-/

namespace A126422.P13292155375619043760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A001222 (A001122 (n + 1)).toNat

end

end A126422.P13292155375619043760

/-! ## A126422.P7722023635311180417

`A058895(A126424(n+1))-A289357(A045546(n+1))`
-/

namespace A126422.P7722023635311180417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A289357 (A045546 (n + 1)).toNat

end

end A126422.P7722023635311180417

/-! ## A126422.P420741822365255179

`A058895(A126424(n+1))-A105700(A000040(n+3))`
-/

namespace A126422.P420741822365255179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A105700 (A000040 (n + 3)).toNat

end

end A126422.P420741822365255179

/-! ## A126422.P3885976492464854645

`A058895(A126424(n+1))-A135303(A163778(n+1))`
-/

namespace A126422.P3885976492464854645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A135303 (A163778 (n + 1)).toNat

end

end A126422.P3885976492464854645

/-! ## A126422.P14428557026544601635

`A058895(A126424(n+1))-A135303(A163782(n+1))`
-/

namespace A126422.P14428557026544601635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A135303 (A163782 (n + 1)).toNat

end

end A126422.P14428557026544601635

/-! ## A126422.P1339054365448466417

`A058895(A126424(n+1))-A211005(A001747(n+2))`
-/

namespace A126422.P1339054365448466417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A211005 (A001747 (n + 2)).toNat

end

end A126422.P1339054365448466417

/-! ## A126422.P1161401715081300610

`A058895(A126424(n+1))-A211005(A136415(n+1))`
-/

namespace A126422.P1161401715081300610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A211005 (A136415 (n + 1)).toNat

end

end A126422.P1161401715081300610

/-! ## A126422.P10539687085286863993

`A058895(A126424(n+1))-A001222(A089120(n+1))`
-/

namespace A126422.P10539687085286863993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 (A126424 (n + 1)).toNat - A001222 (A089120 (n + 1)).toNat

end

end A126422.P10539687085286863993

/-!
# A126423: a(n) = n^4 - n - 1.

The programs for A126423, the canonical program `A126423.P6165914424853561432` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126423 has offset 1).

The definition of A126423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-(n+1)-1` (program `A126423.P6165914424853561432`, by `A126423.P6165914424853561432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126423.P6165914424853561432

`(n+1)^4-(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126423

/-- `(n+1)^4-(n+1)-1` -/
def P6165914424853561432.Spec : Prop :=
  ∀ n, P6165914424853561432.a n = A126423 (n + 1)

theorem P6165914424853561432.correct : P6165914424853561432.Spec := by
  intro n
  simp only [A126423, Nat.add_sub_cancel]

end A126423

/-! ## A126423.P16686860238685218560

`ogf((-1+18x+2x^2+6x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A126423.P16686860238685218560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 18, 2, 6, -1] [1, -5, 10, -10, 5, -1] n

end

end A126423.P16686860238685218560

namespace A126423

/-- `ogf((-1+18x+2x^2+6x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16686860238685218560.Spec : Prop :=
  ∀ n, P16686860238685218560.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P14309649732066062773

`record[(1-n)²]²-n-2`
-/

namespace A126423.P14309649732066062773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - (n : ℤ) - 2

end

end A126423.P14309649732066062773

namespace A126423

/-- `record[(1-n)²]²-n-2` -/
def P14309649732066062773.Spec : Prop :=
  ∀ n, P14309649732066062773.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P5428646315158233951

`or(1, (n+1)²²-(n+2))`
-/

namespace A126423.P5428646315158233951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((n + 1) ^ 2) ^ 2 : ℤ) - (n + 2 : ℤ))

end

end A126423.P5428646315158233951

namespace A126423

/-- `or(1, (n+1)²²-(n+2))` -/
def P5428646315158233951.Spec : Prop :=
  ∀ n, P5428646315158233951.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P14343348069416505333

`xor(1, (n+1)²²-(n+3))`
-/

namespace A126423.P14343348069416505333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((((n + 1) ^ 2) ^ 2 : ℤ) - (n + 3 : ℤ))

end

end A126423.P14343348069416505333

namespace A126423

/-- `xor(1, (n+1)²²-(n+3))` -/
def P14343348069416505333.Spec : Prop :=
  ∀ n, P14343348069416505333.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P6556510488096956229

`Δ[∑[n²²]-C(n+2, 2)]`
-/

namespace A126423.P6556510488096956229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126423.P6556510488096956229

namespace A126423

/-- `Δ[∑[n²²]-C(n+2, 2)]` -/
def P6556510488096956229.Spec : Prop :=
  ∀ n, P6556510488096956229.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P932958799616181562

`floor(∑[a(n-1)+2]²-(n+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126423.P932958799616181562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n + 2 : ℤ)

end

end A126423.P932958799616181562

namespace A126423

/-- `floor(∑[a(n-1)+2]²-(n+2))` -/
def P932958799616181562.Spec : Prop :=
  ∀ n, P932958799616181562.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P4279434235335925270

`Δ[a(n-1)+n²²-(n+1)]` with `a(0)=0`
-/

namespace A126423.P4279434235335925270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (((n ^ 2) ^ 2 : ℤ) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126423.P4279434235335925270

namespace A126423

/-- `Δ[a(n-1)+n²²-(n+1)]` -/
def P4279434235335925270.Spec : Prop :=
  ∀ n, P4279434235335925270.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P6154784362694662612

`((n+1)²²-(n+2))*gcd(n, n+1)`
-/

namespace A126423.P6154784362694662612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (n + 2 : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A126423.P6154784362694662612

namespace A126423

/-- `((n+1)²²-(n+2))*gcd(n, n+1)` -/
def P6154784362694662612.Spec : Prop :=
  ∀ n, P6154784362694662612.a n = A126423 (n + 1)

theorem P6154784362694662612.correct : P6154784362694662612.Spec := by
  intro n
  simp only [A126423, Nat.add_sub_cancel, A126423.P6154784362694662612.a, A126423.P6165914424853561432.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A126423

/-! ## A126423.P6065935690794758896

`((n+1)²²-(n+2))*and(1, 2*n+1)`
-/

namespace A126423.P6065935690794758896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (n + 2 : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A126423.P6065935690794758896

namespace A126423

/-- `((n+1)²²-(n+2))*and(1, 2*n+1)` -/
def P6065935690794758896.Spec : Prop :=
  ∀ n, P6065935690794758896.a n = A126423 (n + 1)

theorem P6065935690794758896.correct : P6065935690794758896.Spec := by
  intro n
  simp only [A126423, Nat.add_sub_cancel, A126423.P6065935690794758896.a, A126423.P6165914424853561432.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A126423

/-! ## A126423.P3229656771747297867

`((n+1)²²-(n+2))/gcd(n+2, n+3)`
-/

namespace A126423.P3229656771747297867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (n + 2 : ℤ) : ℚ) / (Nat.gcd (n + 2) (n + 3) : ℚ)

end

end A126423.P3229656771747297867

namespace A126423

/-- `((n+1)²²-(n+2))/gcd(n+2, n+3)` -/
def P3229656771747297867.Spec : Prop :=
  ∀ n, P3229656771747297867.a n = (A126423 (n + 1) : ℚ)

end A126423

/-! ## A126423.P14581689646288046836

`∑[Δ[A028310(n)²²]-1]`
-/

namespace A126423.P14581689646288046836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126423.P14581689646288046836

namespace A126423

/-- `∑[Δ[A028310(n)²²]-1]` -/
def P14581689646288046836.Spec : Prop :=
  ∀ n, P14581689646288046836.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P7555377796293303298

`∑[Δ[n²²]-A054977(n)]`
-/

namespace A126423.P7555377796293303298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126423.P7555377796293303298

namespace A126423

/-- `∑[Δ[n²²]-A054977(n)]` -/
def P7555377796293303298.Spec : Prop :=
  ∀ n, P7555377796293303298.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P1996732826241700355

`∑[A005917(n+1)-(A000007(n)+1)]`
-/

namespace A126423.P1996732826241700355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - (A000007 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126423.P1996732826241700355

namespace A126423

/-- `∑[A005917(n+1)-(A000007(n)+1)]` -/
def P1996732826241700355.Spec : Prop :=
  ∀ n, P1996732826241700355.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P16280352820189404877

`∑[Δ[A253909(n)²]-1]`
-/

namespace A126423.P16280352820189404877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126423.P16280352820189404877

namespace A126423

/-- `∑[Δ[A253909(n)²]-1]` -/
def P16280352820189404877.Spec : Prop :=
  ∀ n, P16280352820189404877.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P798290526025429656

`Δ[A000538(n)-∑[n+1]]`
-/

namespace A126423.P798290526025429656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126423.P798290526025429656

namespace A126423

/-- `Δ[A000538(n)-∑[n+1]]` -/
def P798290526025429656.Spec : Prop :=
  ∀ n, P798290526025429656.a n = A126423 (n + 1)

end A126423

/-! ## A126423.P14432399936883097649

`Δ[A267691(n+1)-∑[n+1]]`
-/

namespace A126423.P14432399936883097649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267691 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126423.P14432399936883097649

namespace A126423

/-- `Δ[A267691(n+1)-∑[n+1]]` -/
def P14432399936883097649.Spec : Prop :=
  ∀ n, P14432399936883097649.a n = A126423 (n + 1)

end A126423

/-!
# A126424: Numbers k for which k^4-k-1 is prime.

The programs for A126424, there is no canonical definition to state claims against.
-/

/-! ## A126424.P14383707736263320000

`ceil(root(A126422(n+1), 4))`
-/

namespace A126424.P14383707736263320000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A126424.P14383707736263320000

/-! ## A126424.P5665100369637118110

`A000027(round(root(A126422(n+1), 4)))`
-/

namespace A126424.P5665100369637118110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A126424.P5665100369637118110

/-! ## A126424.P89117991926316685

`round(root(A126422(n+1), 4))%A117619(n)`
-/

namespace A126424.P89117991926316685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))) (A117619 n)

end

end A126424.P89117991926316685

/-! ## A126424.P15884103690897301543

`(A005408(n)-2*n)*round(root(A126422(n+1), 4))`
-/

namespace A126424.P15884103690897301543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A126424.P15884103690897301543

/-! ## A126424.P14783111108199573708

`A005843(round(root(A126422(n+1), 4)))/2`
-/

namespace A126424.P14783111108199573708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat : ℚ) / 2

end

end A126424.P14783111108199573708

/-! ## A126424.P4798087499935363121

`A004526(2*round(root(A126422(n+1), 4)))`
-/

namespace A126424.P4798087499935363121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A126424.P4798087499935363121

/-! ## A126424.P3259292018418935685

`A078898(2*round(root(A126422(n+1), 4)))`
-/

namespace A126424.P3259292018418935685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A126424.P3259292018418935685

/-! ## A126424.P17868002614745885678

`round(root(A126422(n+1), 4))*A267520(n²)`
-/

namespace A126424.P17868002614745885678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) * A267520 (n ^ 2)

end

end A126424.P17868002614745885678

/-! ## A126424.P1041828717411655212

`A056926(ceil(sqrt(A126422(n+1))))`
-/

namespace A126424.P1041828717411655212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ⌈Real.sqrt (A126422 (n + 1) : ℝ)⌉.toNat

end

end A126424.P1041828717411655212

/-!
# A126425: Primes of the form k^5-k-1.

The programs for A126425, there is no canonical definition to state claims against.
-/

/-! ## A126425.P2973665885095982081

`A126426(A126427(n+1))`
-/

namespace A126425.P2973665885095982081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126426 (A126427 (n + 1)).toNat

end

end A126425.P2973665885095982081

/-! ## A126425.P2922234160916782233

`A126426(record[A126427(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A126425.P2922234160916782233
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126427 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A126425.P2922234160916782233

/-! ## A126425.P8870507249514496468

`p?[n^5-(n+1)]`
-/

namespace A126425.P8870507249514496468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126425.P8870507249514496468

/-!
# A126426: a(n) = n^5 - n - 1.

The programs for A126426, the canonical program `A126426.P1268666880139132186` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126426 has offset 1).

The definition of A126426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-(n+1)-1` (program `A126426.P1268666880139132186`, by `A126426.P1268666880139132186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126426.P1268666880139132186

`(n+1)^5-(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126426

/-- `(n+1)^5-(n+1)-1` -/
def P1268666880139132186.Spec : Prop :=
  ∀ n, P1268666880139132186.a n = A126426 (n + 1)

theorem P1268666880139132186.correct : P1268666880139132186.Spec := by
  intro n
  simp only [A126426, Nat.add_sub_cancel]

end A126426

/-! ## A126426.P13169693464913700354

`ogf((-1+35x+50x^2+40x^3-5x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A126426.P13169693464913700354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 35, 50, 40, -5, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A126426.P13169693464913700354

namespace A126426

/-- `ogf((-1+35x+50x^2+40x^3-5x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13169693464913700354.Spec : Prop :=
  ∀ n, P13169693464913700354.a n = A126426 (n + 1)

end A126426

/-! ## A126426.P9714669718501529572

`Δ[∑[n^5]-A000096(n)]`
-/

namespace A126426.P9714669718501529572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126426.P9714669718501529572

namespace A126426

/-- `Δ[∑[n^5]-A000096(n)]` -/
def P9714669718501529572.Spec : Prop :=
  ∀ n, P9714669718501529572.a n = A126426 (n + 1)

end A126426

/-! ## A126426.P485135909734556924

`floor(sqrt(A196291(n+1))-(n+1))`
-/

namespace A126426.P485135909734556924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A196291 (n + 1) : ℝ) - (n + 1 : ℝ)⌋

end

end A126426.P485135909734556924

namespace A126426

/-- `floor(sqrt(A196291(n+1))-(n+1))` -/
def P485135909734556924.Spec : Prop :=
  ∀ n, P485135909734556924.a n = A126426 (n + 1)

end A126426

/-! ## A126426.P8884266272687109418

`Δ[A000539(n)-∑[n+1]]`
-/

namespace A126426.P8884266272687109418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126426.P8884266272687109418

namespace A126426

/-- `Δ[A000539(n)-∑[n+1]]` -/
def P8884266272687109418.Spec : Prop :=
  ∀ n, P8884266272687109418.a n = A126426 (n + 1)

end A126426

/-! ## A126426.P14096776993833512513

`Δ[∑[n^5]-A167487(n)]`
-/

namespace A126426.P14096776993833512513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A167487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126426.P14096776993833512513

namespace A126426

/-- `Δ[∑[n^5]-A167487(n)]` -/
def P14096776993833512513.Spec : Prop :=
  ∀ n, P14096776993833512513.a n = A126426 (n + 1)

end A126426

/-! ## A126426.P5702636023074892298

`-(A024003(n+1)+n+1)`
-/

namespace A126426.P5702636023074892298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A024003 (n + 1) + (n + 1 : ℤ))

end

end A126426.P5702636023074892298

namespace A126426

/-- `-(A024003(n+1)+n+1)` -/
def P5702636023074892298.Spec : Prop :=
  ∀ n, P5702636023074892298.a n = A126426 (n + 1)

theorem P5702636023074892298.correct : P5702636023074892298.Spec := by
  intro n
  simp only [A126426, Nat.add_sub_cancel, A126426.P5702636023074892298.a, A126426.P1268666880139132186.a, A024003, A024003.P9184774219160180946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126426

/-! ## A126426.P14969727285853430348

`record[A000584(n)-(2-A060576(n)+n)]`
-/

namespace A126426.P14969727285853430348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - (2 - A060576 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126426.P14969727285853430348

namespace A126426

/-- `record[A000584(n)-(2-A060576(n)+n)]` -/
def P14969727285853430348.Spec : Prop :=
  ∀ n, P14969727285853430348.a n = A126426 (n + 1)

end A126426

/-! ## A126426.P304406596195339756

`Δ[A263689(n+1)-A000124(n+1)]`
-/

namespace A126426.P304406596195339756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 (n + 1) - A000124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126426.P304406596195339756

namespace A126426

/-- `Δ[A263689(n+1)-A000124(n+1)]` -/
def P304406596195339756.Spec : Prop :=
  ∀ n, P304406596195339756.a n = A126426 (n + 1)

end A126426

/-!
# A126427: Numbers k for which k^5-k-1 is prime.

The programs for A126427, there is no canonical definition to state claims against.
-/

/-! ## A126427.P16529411511226489519

`ceil(root(A126425(n+1), 5))`
-/

namespace A126427.P16529411511226489519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A126427.P16529411511226489519

/-! ## A126427.P6830732537635140634

`round(root(A126425(n+1), 5))%A027688(n)`
-/

namespace A126427.P6830732537635140634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))) (A027688 n)

end

end A126427.P6830732537635140634

/-! ## A126427.P8026401901365267949

`round(root(A126425(n+1), 5)+n/A004277(n))`
-/

namespace A126427.P8026401901365267949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ)) + ((n : ℚ) / (A004277 n : ℚ) : ℝ))

end

end A126427.P8026401901365267949

/-! ## A126427.P874567373727254343

`A014682(2*round(root(A126425(n+1), 5)))`
-/

namespace A126427.P874567373727254343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * SequenceMachineLib.roundAway ((A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A126427.P874567373727254343

/-! ## A126427.P17275096240597926628

`A005843(round(root(A126425(n+1), 5)))/2`
-/

namespace A126427.P17275096240597926628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat : ℚ) / 2

end

end A126427.P17275096240597926628

/-! ## A126427.P532988707401567635

`A008585(round(root(A126425(n+1), 5)))/3`
-/

namespace A126427.P532988707401567635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (SequenceMachineLib.roundAway ((A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat : ℚ) / 3

end

end A126427.P532988707401567635

/-! ## A126427.P17083767823450641649

`A026741(2*round(root(A126425(n+1), 5)))`
-/

namespace A126427.P17083767823450641649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * SequenceMachineLib.roundAway ((A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A126427.P17083767823450641649

/-!
# A126428: a(1) = 1; for n > 1, a(n) = smallest number > a(n-1) such that pairwise sums and (absolute) differences of distinct elements are all distinct.

The programs for A126428, there is no canonical definition to state claims against.
-/

/-! ## A126428.P12026855272349190807

`record[A000010(A068156(n))%A023204(n+1)]`
-/

namespace A126428.P12026855272349190807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A068156 n).toNat) (A023204 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126428.P12026855272349190807

/-!
# A126430: a(n)-a(n-1) is the smallest integer missing in the auxiliary set composed of the previous terms and sums and differences of previous pairs of the sequence.

The programs for A126430, there is no canonical definition to state claims against.
-/

/-! ## A126430.P8824329582045747965

`∑[record[A332383(A101987(n+1))]]`
-/

namespace A126430.P8824329582045747965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332383 (A101987 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126430.P8824329582045747965

/-!
# A126431: a(n) = n*10^n.

The programs for A126431, the canonical program `A126431.P4687800304985180740` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126431 has offset 0).

The definition of A126431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*10^n` (program `A126431.P4687800304985180740`, by `A126431.P4687800304985180740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126431.P4687800304985180740

`n*10^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126431

/-- `n*10^n` -/
def P4687800304985180740.Spec : Prop :=
  ∀ n, (P4687800304985180740.a n : ℤ) = A126431 n

theorem P4687800304985180740.correct : P4687800304985180740.Spec := by
  intro n
  simp only [A126431]

end A126431

/-!
# A126433: Class+ number of prime(n) according to the Erdős-Selfridge classification of primes.

The programs for A126433, there is no canonical definition to state claims against.
-/

/-! ## A126433.P5692564056865290216

`A299351(A001750(n+1))-2`
-/

namespace A126433.P5692564056865290216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299351 (A001750 (n + 1)).toNat - 2

end

end A126433.P5692564056865290216

/-! ## A126433.P8260408151108524724

`A019269(lcm(35, A001748(n+1)))`
-/

namespace A126433.P8260408151108524724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (Int.lcm 35 (A001748 (n + 1)))

end

end A126433.P8260408151108524724

/-! ## A126433.P2005860566679651021

`A019269(lcm(69, A100484(n+1)))`
-/

namespace A126433.P2005860566679651021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (Int.lcm 69 (A100484 (n + 1)))

end

end A126433.P2005860566679651021

/-! ## A126433.P5172210888949349607

`A265577(gcd(A265607(n), A265609(n)))`
-/

namespace A126433.P5172210888949349607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265577 (Int.gcd (A265607 n) (A265609 n))

end

end A126433.P5172210888949349607

/-! ## A126433.P15539453298022041965

`A305831(A050380(n+1)+A002260(n+1))`
-/

namespace A126433.P15539453298022041965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (A050380 (n + 1) + A002260 (n + 1)).toNat

end

end A126433.P15539453298022041965

/-!
# A126436: Number of composites between successive values of A014612.

The programs for A126436, there is no canonical definition to state claims against.
-/

/-! ## A126436.P17390734315019480456

`Δ[A022447(A014612(n+1))]-1`
-/

namespace A126436.P17390734315019480456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A126436.P17390734315019480456

/-! ## A126436.P4231258811976556023

`Δ[A319707(A226527(n+1))]-1`
-/

namespace A126436.P4231258811976556023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (A226527 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A126436.P4231258811976556023

/-! ## A126436.P13132177945980923596

`Δ[eq[3, A001222(A002808(n+1))]]-1`
-/

namespace A126436.P13132177945980923596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002808 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A126436.P13132177945980923596

/-! ## A126436.P5473272920859523655

`Δ[eq[3, A001222(A018252(n+1))]]-1`
-/

namespace A126436.P5473272920859523655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A126436.P5473272920859523655

/-! ## A126436.P15455872135261540282

`A004885(Δ[A022447(A014612(n+1))])`
-/

namespace A126436.P15455872135261540282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (f1 (n + 1) - f1 n).toNat

end

end A126436.P15455872135261540282

/-! ## A126436.P5862248157428700416

`A004862(Δ[A026238(A014612(n+1))])`
-/

namespace A126436.P5862248157428700416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (f1 (n + 1) - f1 n).toNat

end

end A126436.P5862248157428700416

/-! ## A126436.P343979855964608910

`Δ[A026238(A014612(n+1))]-A014963(10*(n+1))`
-/

namespace A126436.P343979855964608910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014963 (10 * (n + 1))

end

end A126436.P343979855964608910

/-! ## A126436.P12786189377385414583

`Δ[A026238(A014612(n+1))]-A000203(((-1)^n)²)`
-/

namespace A126436.P12786189377385414583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000203 (((-1) ^ n) ^ 2).toNat

end

end A126436.P12786189377385414583

/-! ## A126436.P9194835208650198462

`Δ[A026238(A014612(n+1))]-A007318(n²%(n+1))`
-/

namespace A126436.P9194835208650198462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007318 (n ^ 2 % (n + 1))

end

end A126436.P9194835208650198462

/-! ## A126436.P10344858867481392462

`Δ[A026238(A014612(n+1))]-(n+1)²%A006530(n+2)`
-/

namespace A126436.P10344858867481392462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod ((n + 1) ^ 2 : ℤ) (A006530 (n + 2))

end

end A126436.P10344858867481392462

/-!
# A126439: Least prime of the form x^n-x-1.

The programs for A126439, there is no canonical definition to state claims against.
-/

/-! ## A126439.P17401871717099687402

`A120274(A124324(3*n)+A001399(n))`
-/

namespace A126439.P17401871717099687402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120274 (A124324 (3 * n) + A001399 n).toNat

end

end A126439.P17401871717099687402

/-!
# A126440: Triangular array read by rows: related to A053445 and A060351 with row sums A000142 (which counts permutations of n objects).

The programs for A126440, there is no canonical definition to state claims against.
-/

/-! ## A126440.P10202161256648811474

`A299097(n+1)%A046636(A270882(n))`
-/

namespace A126440.P10202161256648811474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299097 (n + 1)) (A046636 (A270882 n).toNat)

end

end A126440.P10202161256648811474

/-! ## A126440.P14459613368271793619

`A299806(n+1)%A323110(A323128(n))`
-/

namespace A126440.P14459613368271793619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299806 (n + 1)) (A323110 (A323128 n).toNat)

end

end A126440.P14459613368271793619

/-! ## A126440.P4505237587026194648

`A209699(n+1)+A058276(A208914(n+1))`
-/

namespace A126440.P4505237587026194648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209699 (n + 1) + A058276 (A208914 (n + 1)).toNat

end

end A126440.P4505237587026194648

/-! ## A126440.P5915229378314052038

`A209699(n+1)+A091107(A265679(n+1))`
-/

namespace A126440.P5915229378314052038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209699 (n + 1) + A091107 (A265679 (n + 1)).toNat

end

end A126440.P5915229378314052038

/-!
# A126442: Triangular array t read by rows: t(0,k) is p(k), the number of partitions of the k-multiset {0,0,...,0} with k zeros. For 0 <= n < k, t(n, k) is the number of partitions of the k-multiset {0, 0, ..., 0, 1, 2, 3, ..., k-n} with n zeros.

The programs for A126442, there is no canonical definition to state claims against.
-/

/-! ## A126442.P576150180769407570

`A346426(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A126442.P576150180769407570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A126442.P576150180769407570

/-! ## A126442.P5523259301296108472

`A333942(eq[and(n, 2*n), and(n, n-1)]+1)`
-/

namespace A126442.P5523259301296108472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A126442.P5523259301296108472

/-! ## A126442.P11710619710044331203

`A333942(A099627(n))`
-/

namespace A126442.P11710619710044331203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (A099627 n).toNat

end

end A126442.P11710619710044331203

/-! ## A126442.P14322534702485177065

`A333942(A023758(n+2))`
-/

namespace A126442.P14322534702485177065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (A023758 (n + 2)).toNat

end

end A126442.P14322534702485177065

/-! ## A126442.P13060985882571825311

`A346426(A099375(n)+1+n)%A002763(n)`
-/

namespace A126442.P13060985882571825311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346426 (A099375 n + 1 + (n : ℤ)).toNat) (A002763 n)

end

end A126442.P13060985882571825311

/-!
# A126443: a(n) = Sum_{k=0..n-1} C(n-1,k)*a(k)*2^k for n>0, with a(0)=1.

The programs for A126443, there is no canonical definition to state claims against.
-/

/-! ## A126443.P17017517581282208034

`A376177(∑[n])`
-/

namespace A126443.P17017517581282208034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126443.P17017517581282208034

/-! ## A126443.P6967564563288326375

`or(1, A376177(C(n+1, 2)))`
-/

namespace A126443.P6967564563288326375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A376177 (Nat.choose (n + 1) 2))

end

end A126443.P6967564563288326375

/-! ## A126443.P8286746402061227325

`A306245(∑[n+3])`
-/

namespace A126443.P8286746402061227325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126443.P8286746402061227325

/-! ## A126443.P533862393725977869

`or(1, A306245(A141214(n)))`
-/

namespace A126443.P533862393725977869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A306245 (A141214 n).toNat)

end

end A126443.P533862393725977869

/-! ## A126443.P13172592885093874472

`lcm(A033999(n), A306245(A141214(n)))`
-/

namespace A126443.P13172592885093874472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A306245 (A141214 n).toNat)

end

end A126443.P13172592885093874472

/-!
# A126444: a(n) = Sum_{k=0..n-1} C(n-1,k)*a(k)*a(n-1-k)*2^k for n>0, with a(0)=1.

The programs for A126444, there is no canonical definition to state claims against.
-/

/-! ## A126444.P16267886040858764378

`A159314(∑[n+2]-1)`
-/

namespace A126444.P16267886040858764378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A126444.P16267886040858764378

/-! ## A126444.P18185241370522722173

`or(1, A159314(A034856(n+1)))`
-/

namespace A126444.P18185241370522722173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A159314 (A034856 (n + 1)).toNat)

end

end A126444.P18185241370522722173

/-! ## A126444.P10379974390854130245

`A185255(n)+A159314(A034856(n+1))`
-/

namespace A126444.P10379974390854130245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A159314 (A034856 (n + 1)).toNat

end

end A126444.P10379974390854130245

/-! ## A126444.P15296868694237655185

`A185284(n)+A159314(A034856(n+1))`
-/

namespace A126444.P15296868694237655185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A159314 (A034856 (n + 1)).toNat

end

end A126444.P15296868694237655185

/-!
# A126445: Triangle, read by rows, where T(n,k) = C(C(n+2,3) - C(k+2,3), n-k) for n >= k >= 0.

The programs for A126445, the canonical program `A126445.P3015563961691141559` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126445 has offset 0).

The definition of A126445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(row(n)+2, 3)-C(col(n)+2, 3), row(n)-col(n))` (program `A126445.P3015563961691141559`, by `A126445.P3015563961691141559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126445.P3015563961691141559

`C(C(row(n)+2, 3)-C(col(n)+2, 3), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126445

/-- `C(C(row(n)+2, 3)-C(col(n)+2, 3), row(n)-col(n))` -/
def P3015563961691141559.Spec : Prop :=
  ∀ n, (P3015563961691141559.a n : ℤ) = A126445 n

theorem P3015563961691141559.correct : P3015563961691141559.Spec := by
  intro n
  simp only [A126445]

end A126445

/-! ## A126445.P479756152348819824

`A078295(A243424(n))`
-/

namespace A126445.P479756152348819824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078295 (A243424 n).toNat

end

end A126445.P479756152348819824

namespace A126445

/-- `A078295(A243424(n))` -/
def P479756152348819824.Spec : Prop :=
  ∀ n, P479756152348819824.a n = A126445 n

end A126445

/-! ## A126445.P14600241834879027130

`A156710(A225118(n))`
-/

namespace A126445.P14600241834879027130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156710 (A225118 n).toNat

end

end A126445.P14600241834879027130

namespace A126445

/-- `A156710(A225118(n))` -/
def P14600241834879027130.Spec : Prop :=
  ∀ n, P14600241834879027130.a n = A126445 n

end A126445

/-!
# A126446: Column 0 of triangle A126445; a(n) = binomial( binomial(n+2,3), n).

The programs for A126446, the canonical program `A126446.P1892546545345718484` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126446 has offset 0).

The definition of A126446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+2, 3), n)` (program `A126446.P1892546545345718484`, by `A126446.P1892546545345718484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126446.P1892546545345718484

`C(C(n+2, 3), n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126446

/-- `C(C(n+2, 3), n)` -/
def P1892546545345718484.Spec : Prop :=
  ∀ n, (P1892546545345718484.a n : ℤ) = A126446 n

theorem P1892546545345718484.correct : P1892546545345718484.Spec := by
  intro n
  simp only [A126446]

end A126446

/-! ## A126446.P7967949368559175545

`A126445(∑[n])`
-/

namespace A126446.P7967949368559175545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126445 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126446.P7967949368559175545

namespace A126446

/-- `A126445(∑[n])` -/
def P7967949368559175545.Spec : Prop :=
  ∀ n, P7967949368559175545.a n = A126446 n

end A126446

/-! ## A126446.P10413980509583857843

`gcd(A000038(n), A126445(A000217(n)))`
-/

namespace A126446.P10413980509583857843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A126445 (A000217 n).toNat)

end

end A126446.P10413980509583857843

namespace A126446

/-- `gcd(A000038(n), A126445(A000217(n)))` -/
def P10413980509583857843.Spec : Prop :=
  ∀ n, (P10413980509583857843.a n : ℤ) = A126446 n

end A126446

/-! ## A126446.P6576306391526417423

`lcm(A065357(n), A126445(A000217(n)))`
-/

namespace A126446.P6576306391526417423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A126445 (A000217 n).toNat)

end

end A126446.P6576306391526417423

namespace A126446

/-- `lcm(A065357(n), A126445(A000217(n)))` -/
def P6576306391526417423.Spec : Prop :=
  ∀ n, (P6576306391526417423.a n : ℤ) = A126446 n

end A126446

/-! ## A126446.P6849736136884614262

`or(A000007(n), A126445(A000217(n)))`
-/

namespace A126446.P6849736136884614262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A126445 (A000217 n).toNat)

end

end A126446.P6849736136884614262

namespace A126446

/-- `or(A000007(n), A126445(A000217(n)))` -/
def P6849736136884614262.Spec : Prop :=
  ∀ n, P6849736136884614262.a n = A126446 n

end A126446

/-!
# A126447: Column 1 of triangle A126445; a(n) = C( C(n+3,3) - 1, n).

The programs for A126447, the canonical program `A126447.P17363879314663888320` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126447 has offset 0).

The definition of A126447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+3, 3)-1, n)` (program `A126447.P17363879314663888320`, by `A126447.P17363879314663888320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126447.P17363879314663888320

`C(C(n+3, 3)-1, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126447

/-- `C(C(n+3, 3)-1, n)` -/
def P17363879314663888320.Spec : Prop :=
  ∀ n, (P17363879314663888320.a n : ℤ) = A126447 n

theorem P17363879314663888320.correct : P17363879314663888320.Spec := by
  intro n
  simp only [A126447]

end A126447

/-! ## A126447.P12363784857075553962

`C(∑[∑[n]+n]+n, n)`
-/

namespace A126447.P12363784857075553962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n) n

end

end A126447.P12363784857075553962

namespace A126447

/-- `C(∑[∑[n]+n]+n, n)` -/
def P12363784857075553962.Spec : Prop :=
  ∀ n, (P12363784857075553962.a n : ℤ) = A126447 n

end A126447

/-! ## A126447.P4159916976438041422

`A126445(∑[n+1]+1)`
-/

namespace A126447.P4159916976438041422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126445 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126447.P4159916976438041422

namespace A126447

/-- `A126445(∑[n+1]+1)` -/
def P4159916976438041422.Spec : Prop :=
  ∀ n, P4159916976438041422.a n = A126447 n

end A126447

/-! ## A126447.P2669810099534375856

`record[A121314(n)*A126445(n)]`
-/

namespace A126447.P2669810099534375856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 n * A126445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126447.P2669810099534375856

namespace A126447

/-- `record[A121314(n)*A126445(n)]` -/
def P2669810099534375856.Spec : Prop :=
  ∀ n, P2669810099534375856.a n = A126447 n

end A126447

/-! ## A126447.P1751393770097094257

`record[A126445(n%A008517(n+1))]`
-/

namespace A126447.P1751393770097094257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126445 (Int.tmod (n : ℤ) (A008517 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126447.P1751393770097094257

namespace A126447

/-- `record[A126445(n%A008517(n+1))]` -/
def P1751393770097094257.Spec : Prop :=
  ∀ n, P1751393770097094257.a n = A126447 n

end A126447

/-!
# A126448: Column 2 of triangle A126445; a(n) = C( C(n+4,3) - 4, n).

The programs for A126448, the canonical program `A126448.P7505455010466807061` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126448 has offset 0).

The definition of A126448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+4, 3)-4, n)` (program `A126448.P7505455010466807061`, by `A126448.P7505455010466807061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126448.P7505455010466807061

`C(C(n+4, 3)-4, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126448

/-- `C(C(n+4, 3)-4, n)` -/
def P7505455010466807061.Spec : Prop :=
  ∀ n, (P7505455010466807061.a n : ℤ) = A126448 n

theorem P7505455010466807061.correct : P7505455010466807061.Spec := by
  intro n
  simp only [A126448]

end A126448

/-! ## A126448.P7053308233237910984

`C(∑[C(n+3, 2*floor((n+2)/(n+1)))], n)`
-/

namespace A126448.P7053308233237910984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (2 * ⌊(n + 2 : ℚ) / (n + 1 : ℚ)⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A126448.P7053308233237910984

namespace A126448

/-- `C(∑[C(n+3, 2*floor((n+2)/(n+1)))], n)` -/
def P7053308233237910984.Spec : Prop :=
  ∀ n, (P7053308233237910984.a n : ℤ) = A126448 n

end A126448

/-! ## A126448.P14305325400549189503

`C(A092286(n), n)`
-/

namespace A126448.P14305325400549189503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092286 n).toNat n

end

end A126448.P14305325400549189503

namespace A126448

/-- `C(A092286(n), n)` -/
def P14305325400549189503.Spec : Prop :=
  ∀ n, (P14305325400549189503.a n : ℤ) = A126448 n

end A126448

/-! ## A126448.P1898236116929365692

`C(A005586(n)+n, n)`
-/

namespace A126448.P1898236116929365692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005586 n + (n : ℤ)).toNat n

end

end A126448.P1898236116929365692

namespace A126448

/-- `C(A005586(n)+n, n)` -/
def P1898236116929365692.Spec : Prop :=
  ∀ n, (P1898236116929365692.a n : ℤ) = A126448 n

end A126448

/-! ## A126448.P15201615627189890820

`C(A006503(n)+3*n, n)`
-/

namespace A126448.P15201615627189890820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006503 n + (3 * n : ℤ)).toNat n

end

end A126448.P15201615627189890820

namespace A126448

/-- `C(A006503(n)+3*n, n)` -/
def P15201615627189890820.Spec : Prop :=
  ∀ n, (P15201615627189890820.a n : ℤ) = A126448 n

end A126448

/-!
# A126449: Row sums of triangle A126445; a(n) = Sum_{k=0..n} C( C(n+2,3) - C(k+2,3), n-k).

The programs for A126449, the canonical program `A126449.P11871178966370929330` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126449 has offset 0).

The definition of A126449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(C(n+2, 3)-C(#+2, 3), n-#)]` (program `A126449.P11871178966370929330`, by `A126449.P11871178966370929330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126449.P11871178966370929330

`∑{#}[n, C(C(n+2, 3)-C(#+2, 3), n-#)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126449

/-- `∑{#}[n, C(C(n+2, 3)-C(#+2, 3), n-#)]` -/
def P11871178966370929330.Spec : Prop :=
  ∀ n, (P11871178966370929330.a n : ℤ) = A126449 n

theorem P11871178966370929330.correct : P11871178966370929330.Spec := by
  intro n
  simp only [A126449]

end A126449

/-!
# A126450: Triangle, read by rows, where T(n,k) = C( C(n+2,3) - C(k+2,3) + 1, n-k) for n>=k>=0.

The programs for A126450, the canonical program `A126450.P1689399360789411796` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126450 has offset 0).

The definition of A126450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(row(n)+2, 3)-C(col(n)+2, 3)+1, row(n)-col(n))` (program `A126450.P1689399360789411796`, by `A126450.P1689399360789411796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126450.P1689399360789411796

`C(C(row(n)+2, 3)-C(col(n)+2, 3)+1, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126450

/-- `C(C(row(n)+2, 3)-C(col(n)+2, 3)+1, row(n)-col(n))` -/
def P1689399360789411796.Spec : Prop :=
  ∀ n, (P1689399360789411796.a n : ℤ) = A126450 n

theorem P1689399360789411796.correct : P1689399360789411796.Spec := by
  intro n
  simp only [A126450]

end A126450

/-! ## A126450.P1108647429056726713

`A124480(A210229(n+1))`
-/

namespace A126450.P1108647429056726713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (A210229 (n + 1)).toNat

end

end A126450.P1108647429056726713

namespace A126450

/-- `A124480(A210229(n+1))` -/
def P1108647429056726713.Spec : Prop :=
  ∀ n, P1108647429056726713.a n = A126450 n

end A126450

/-! ## A126450.P10044543571910322097

`A102427(A316631(n)+∑{d}[2*(n+1), ((n+1)%#)²])`
-/

namespace A126450.P10044543571910322097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102427 (A316631 n + ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 2 : ℕ) : ℤ)).toNat

end

end A126450.P10044543571910322097

namespace A126450

/-- `A102427(A316631(n)+∑{d}[2*(n+1), ((n+1)%#)²])` -/
def P10044543571910322097.Spec : Prop :=
  ∀ n, P10044543571910322097.a n = A126450 n

end A126450

/-!
# A126451: Column 0 of triangle A126450; a(n) = C( C(n+2,3) + 1, n).

The programs for A126451, the canonical program `A126451.P2858999700717233233` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126451 has offset 0).

The definition of A126451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+2, 3)+1, n)` (program `A126451.P2858999700717233233`, by `A126451.P2858999700717233233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126451.P2858999700717233233

`C(C(n+2, 3)+1, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126451

/-- `C(C(n+2, 3)+1, n)` -/
def P2858999700717233233.Spec : Prop :=
  ∀ n, (P2858999700717233233.a n : ℤ) = A126451 n

theorem P2858999700717233233.correct : P2858999700717233233.Spec := by
  intro n
  simp only [A126451]

end A126451

/-! ## A126451.P10766452381354888792

`A126450(∑[n])`
-/

namespace A126451.P10766452381354888792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126451.P10766452381354888792

namespace A126451

/-- `A126450(∑[n])` -/
def P10766452381354888792.Spec : Prop :=
  ∀ n, P10766452381354888792.a n = A126451 n

end A126451

/-! ## A126451.P8753214149647440303

`record[A126450(n)]`
-/

namespace A126451.P8753214149647440303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126451.P8753214149647440303

namespace A126451

/-- `record[A126450(n)]` -/
def P8753214149647440303.Spec : Prop :=
  ∀ n, P8753214149647440303.a n = A126451 n

end A126451

/-! ## A126451.P8209492501369784613

`C(1+∑[∑[n]], n)`
-/

namespace A126451.P8209492501369784613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + ∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A126451.P8209492501369784613

namespace A126451

/-- `C(1+∑[∑[n]], n)` -/
def P8209492501369784613.Spec : Prop :=
  ∀ n, (P8209492501369784613.a n : ℤ) = A126451 n

end A126451

/-! ## A126451.P9283247210288321022

`record[C(n+1, A056559(n))]`
-/

namespace A126451.P9283247210288321022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A056559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126451.P9283247210288321022

namespace A126451

/-- `record[C(n+1, A056559(n))]` -/
def P9283247210288321022.Spec : Prop :=
  ∀ n, (P9283247210288321022.a n : ℤ) = A126451 n

end A126451

/-!
# A126452: Column 1 of triangle A126450; a(n) = C( C(n+3,3), n).

The programs for A126452, the canonical program `A126452.P13169334457505993754` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126452 has offset 0).

The definition of A126452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+3, 3), n)` (program `A126452.P13169334457505993754`, by `A126452.P13169334457505993754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126452.P13169334457505993754

`C(C(n+3, 3), n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126452

/-- `C(C(n+3, 3), n)` -/
def P13169334457505993754.Spec : Prop :=
  ∀ n, (P13169334457505993754.a n : ℤ) = A126452 n

theorem P13169334457505993754.correct : P13169334457505993754.Spec := by
  intro n
  simp only [A126452]

end A126452

/-! ## A126452.P10248400685930552161

`C(∑[∑[comp[49*n]]], n)`
-/

namespace A126452.P10248400685930552161
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A126452.P10248400685930552161

namespace A126452

/-- `C(∑[∑[comp[49*n]]], n)` -/
def P10248400685930552161.Spec : Prop :=
  ∀ n, (P10248400685930552161.a n : ℤ) = A126452 n

end A126452

/-! ## A126452.P5060578829785206798

`A126450(∑[n+1]+1)`
-/

namespace A126452.P5060578829785206798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126450 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126452.P5060578829785206798

namespace A126452

/-- `A126450(∑[n+1]+1)` -/
def P5060578829785206798.Spec : Prop :=
  ∀ n, P5060578829785206798.a n = A126452 n

end A126452

/-! ## A126452.P11210889854510362216

`record[C(A058187(n), A025480(n))]`
-/

namespace A126452.P11210889854510362216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A058187 n).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126452.P11210889854510362216

namespace A126452

/-- `record[C(A058187(n), A025480(n))]` -/
def P11210889854510362216.Spec : Prop :=
  ∀ n, (P11210889854510362216.a n : ℤ) = A126452 n

end A126452

/-! ## A126452.P13452970042281782256

`A126451(n+1)-A126446(n+1)`
-/

namespace A126452.P13452970042281782256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126451 (n + 1) - A126446 (n + 1)

end

end A126452.P13452970042281782256

namespace A126452

/-- `A126451(n+1)-A126446(n+1)` -/
def P13452970042281782256.Spec : Prop :=
  ∀ n, P13452970042281782256.a n = A126452 n

end A126452

/-!
# A126453: Row sums of triangle A126450: a(n) = Sum_{k=0..n} C( C(n+2,3) - C(k+2,3) + 1, n-k).

The programs for A126453, the canonical program `A126453.P6785970532903784389` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126453 has offset 0).

The definition of A126453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(C(n+2, 3)-C(#+2, 3)+1, n-#)]` (program `A126453.P6785970532903784389`, by `A126453.P6785970532903784389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126453.P6785970532903784389

`∑{#}[n, C(C(n+2, 3)-C(#+2, 3)+1, n-#)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126453

/-- `∑{#}[n, C(C(n+2, 3)-C(#+2, 3)+1, n-#)]` -/
def P6785970532903784389.Spec : Prop :=
  ∀ n, (P6785970532903784389.a n : ℤ) = A126453 n

theorem P6785970532903784389.correct : P6785970532903784389.Spec := by
  intro n
  simp only [A126453]

end A126453

/-!
# A126454: Triangle, read by rows, where T(n,k) = C( C(n+2,3) - C(k+2,3) + 2, n-k) for n>=k>=0.

The programs for A126454, the canonical program `A126454.P7354214289010031720` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126454 has offset 0).

The definition of A126454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(row(n)+2, 3)-C(col(n)+2, 3)+2, row(n)-col(n))` (program `A126454.P7354214289010031720`, by `A126454.P7354214289010031720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126454.P7354214289010031720

`C(C(row(n)+2, 3)-C(col(n)+2, 3)+2, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126454

/-- `C(C(row(n)+2, 3)-C(col(n)+2, 3)+2, row(n)-col(n))` -/
def P7354214289010031720.Spec : Prop :=
  ∀ n, (P7354214289010031720.a n : ℤ) = A126454 n

theorem P7354214289010031720.correct : P7354214289010031720.Spec := by
  intro n
  simp only [A126454]

end A126454

/-! ## A126454.P14802236740238192907

`C(A069462(or(1, 2^n)), A330238(n+1))`
-/

namespace A126454.P14802236740238192907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069462 (Nat.lor 1 (2 ^ n))).toNat (A330238 (n + 1)).toNat

end

end A126454.P14802236740238192907

namespace A126454

/-- `C(A069462(or(1, 2^n)), A330238(n+1))` -/
def P14802236740238192907.Spec : Prop :=
  ∀ n, (P14802236740238192907.a n : ℤ) = A126454 n

end A126454

/-! ## A126454.P17217839697278210574

`A225471(n)-A171918(A014210(n))`
-/

namespace A126454.P17217839697278210574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225471 n - A171918 (A014210 n).toNat

end

end A126454.P17217839697278210574

namespace A126454

/-- `A225471(n)-A171918(A014210(n))` -/
def P17217839697278210574.Spec : Prop :=
  ∀ n, P17217839697278210574.a n = A126454 n

end A126454

/-!
# A126455: Column 0 of triangle A126454; a(n) = C( C(n+2,3) + 2, n).

The programs for A126455, the canonical program `A126455.P14394861785415256491` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126455 has offset 0).

The definition of A126455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+2, 3)+2, n)` (program `A126455.P14394861785415256491`, by `A126455.P14394861785415256491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126455.P14394861785415256491

`C(C(n+2, 3)+2, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126455

/-- `C(C(n+2, 3)+2, n)` -/
def P14394861785415256491.Spec : Prop :=
  ∀ n, (P14394861785415256491.a n : ℤ) = A126455 n

theorem P14394861785415256491.correct : P14394861785415256491.Spec := by
  intro n
  simp only [A126455]

end A126455

/-! ## A126455.P5554896453983737672

`A126454(∑[n])`
-/

namespace A126455.P5554896453983737672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126455.P5554896453983737672

namespace A126455

/-- `A126454(∑[n])` -/
def P5554896453983737672.Spec : Prop :=
  ∀ n, P5554896453983737672.a n = A126455 n

end A126455

/-! ## A126455.P11999540599726798688

`record[A126454(n)]`
-/

namespace A126455.P11999540599726798688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126455.P11999540599726798688

namespace A126455

/-- `record[A126454(n)]` -/
def P11999540599726798688.Spec : Prop :=
  ∀ n, P11999540599726798688.a n = A126455 n

end A126455

/-! ## A126455.P10301959835274028399

`C(2+∑[∑[n]], n)`
-/

namespace A126455.P10301959835274028399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + ∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A126455.P10301959835274028399

namespace A126455

/-- `C(2+∑[∑[n]], n)` -/
def P10301959835274028399.Spec : Prop :=
  ∀ n, (P10301959835274028399.a n : ℤ) = A126455 n

end A126455

/-! ## A126455.P6267176529752669224

`record[C(n+2, A056559(n))]`
-/

namespace A126455.P6267176529752669224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A056559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126455.P6267176529752669224

namespace A126455

/-- `record[C(n+2, A056559(n))]` -/
def P6267176529752669224.Spec : Prop :=
  ∀ n, (P6267176529752669224.a n : ℤ) = A126455 n

end A126455

/-!
# A126456: Column 1 of triangle A126454; a(n) = C( C(n+3,3) + 1, n).

The programs for A126456, the canonical program `A126456.P3844202328368459473` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126456 has offset 0).

The definition of A126456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+3, 3)+1, n)` (program `A126456.P3844202328368459473`, by `A126456.P3844202328368459473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126456.P3844202328368459473

`C(C(n+3, 3)+1, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126456

/-- `C(C(n+3, 3)+1, n)` -/
def P3844202328368459473.Spec : Prop :=
  ∀ n, (P3844202328368459473.a n : ℤ) = A126456 n

theorem P3844202328368459473.correct : P3844202328368459473.Spec := by
  intro n
  simp only [A126456]

end A126456

/-! ## A126456.P13854983426936584962

`C(1-∑[∑[n-1-2*n]], n)`
-/

namespace A126456.P13854983426936584962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat n

end

end A126456.P13854983426936584962

namespace A126456

/-- `C(1-∑[∑[n-1-2*n]], n)` -/
def P13854983426936584962.Spec : Prop :=
  ∀ n, (P13854983426936584962.a n : ℤ) = A126456 n

end A126456

/-! ## A126456.P3713110246873454381

`A126454(∑[n+1]+1)`
-/

namespace A126456.P3713110246873454381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126454 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126456.P3713110246873454381

namespace A126456

/-- `A126454(∑[n+1]+1)` -/
def P3713110246873454381.Spec : Prop :=
  ∀ n, P3713110246873454381.a n = A126456 n

end A126456

/-! ## A126456.P14676707183804471005

`record[C(A058187(n)+1, A025480(n))]`
-/

namespace A126456.P14676707183804471005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A058187 n + 1).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126456.P14676707183804471005

namespace A126456

/-- `record[C(A058187(n)+1, A025480(n))]` -/
def P14676707183804471005.Spec : Prop :=
  ∀ n, (P14676707183804471005.a n : ℤ) = A126456 n

end A126456

/-! ## A126456.P10220104598947374179

`A126455(n+1)-A126451(n+1)`
-/

namespace A126456.P10220104598947374179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126455 (n + 1) - A126451 (n + 1)

end

end A126456.P10220104598947374179

namespace A126456

/-- `A126455(n+1)-A126451(n+1)` -/
def P10220104598947374179.Spec : Prop :=
  ∀ n, P10220104598947374179.a n = A126456 n

end A126456

/-!
# A126457: Triangle, read by rows, where T(n,k) = C( C(n+2,3) - C(k+2,3) + 3, n-k) for n>=k>=0.

The programs for A126457, the canonical program `A126457.P15396679462941124411` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126457 has offset 0).

The definition of A126457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(row(n)+2, 3)-C(col(n)+2, 3)+3, row(n)-col(n))` (program `A126457.P15396679462941124411`, by `A126457.P15396679462941124411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126457.P15396679462941124411

`C(C(row(n)+2, 3)-C(col(n)+2, 3)+3, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126457

/-- `C(C(row(n)+2, 3)-C(col(n)+2, 3)+3, row(n)-col(n))` -/
def P15396679462941124411.Spec : Prop :=
  ∀ n, (P15396679462941124411.a n : ℤ) = A126457 n

theorem P15396679462941124411.correct : P15396679462941124411.Spec := by
  intro n
  simp only [A126457]

end A126457

/-! ## A126457.P6320649986294405136

`C(A138011(A304932(n+1))+2, A025581(n))`
-/

namespace A126457.P6320649986294405136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138011 (A304932 (n + 1)).toNat + 2).toNat (A025581 n).toNat

end

end A126457.P6320649986294405136

namespace A126457

/-- `C(A138011(A304932(n+1))+2, A025581(n))` -/
def P6320649986294405136.Spec : Prop :=
  ∀ n, (P6320649986294405136.a n : ℤ) = A126457 n

end A126457

/-!
# A126458: Column 0 of triangle A126457; a(n) = C( C(n+2,3) + 3, n).

The programs for A126458, the canonical program `A126458.P17801293327988925428` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126458 has offset 0).

The definition of A126458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+2, 3)+3, n)` (program `A126458.P17801293327988925428`, by `A126458.P17801293327988925428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126458.P17801293327988925428

`C(C(n+2, 3)+3, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126458

/-- `C(C(n+2, 3)+3, n)` -/
def P17801293327988925428.Spec : Prop :=
  ∀ n, (P17801293327988925428.a n : ℤ) = A126458 n

theorem P17801293327988925428.correct : P17801293327988925428.Spec := by
  intro n
  simp only [A126458]

end A126458

/-! ## A126458.P666445688885916693

`A126457(∑[n])`
-/

namespace A126458.P666445688885916693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126458.P666445688885916693

namespace A126458

/-- `A126457(∑[n])` -/
def P666445688885916693.Spec : Prop :=
  ∀ n, P666445688885916693.a n = A126458 n

end A126458

/-! ## A126458.P18089009164728086816

`record[A126457(n)]`
-/

namespace A126458.P18089009164728086816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126458.P18089009164728086816

namespace A126458

/-- `record[A126457(n)]` -/
def P18089009164728086816.Spec : Prop :=
  ∀ n, P18089009164728086816.a n = A126458 n

end A126458

/-! ## A126458.P17384637596027217273

`C(3+∑[∑[n]], n)`
-/

namespace A126458.P17384637596027217273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 + ∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A126458.P17384637596027217273

namespace A126458

/-- `C(3+∑[∑[n]], n)` -/
def P17384637596027217273.Spec : Prop :=
  ∀ n, (P17384637596027217273.a n : ℤ) = A126458 n

end A126458

/-! ## A126458.P4665167012520724805

`record[C(n+3, A056559(n))]`
-/

namespace A126458.P4665167012520724805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (A056559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126458.P4665167012520724805

namespace A126458

/-- `record[C(n+3, A056559(n))]` -/
def P4665167012520724805.Spec : Prop :=
  ∀ n, (P4665167012520724805.a n : ℤ) = A126458 n

end A126458

/-!
# A126459: Column 1 of triangle A126457; a(n) = C( C(n+3,3) + 2, n).

The programs for A126459, the canonical program `A126459.P7722827677317212469` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126459 has offset 0).

The definition of A126459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+3, 3)+2, n)` (program `A126459.P7722827677317212469`, by `A126459.P7722827677317212469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126459.P7722827677317212469

`C(C(n+3, 3)+2, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126459

/-- `C(C(n+3, 3)+2, n)` -/
def P7722827677317212469.Spec : Prop :=
  ∀ n, (P7722827677317212469.a n : ℤ) = A126459 n

theorem P7722827677317212469.correct : P7722827677317212469.Spec := by
  intro n
  simp only [A126459]

end A126459

/-! ## A126459.P2088980501573623724

`C(2-∑[∑[n-1-2*n]], n)`
-/

namespace A126459.P2088980501573623724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat n

end

end A126459.P2088980501573623724

namespace A126459

/-- `C(2-∑[∑[n-1-2*n]], n)` -/
def P2088980501573623724.Spec : Prop :=
  ∀ n, (P2088980501573623724.a n : ℤ) = A126459 n

end A126459

/-! ## A126459.P13457849035178812431

`A126457(∑[n+1]+1)`
-/

namespace A126459.P13457849035178812431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126459.P13457849035178812431

namespace A126459

/-- `A126457(∑[n+1]+1)` -/
def P13457849035178812431.Spec : Prop :=
  ∀ n, P13457849035178812431.a n = A126459 n

end A126459

/-! ## A126459.P15865390337230139421

`record[C(A058187(n)+2, A025480(n))]`
-/

namespace A126459.P15865390337230139421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A058187 n + 2).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126459.P15865390337230139421

namespace A126459

/-- `record[C(A058187(n)+2, A025480(n))]` -/
def P15865390337230139421.Spec : Prop :=
  ∀ n, (P15865390337230139421.a n : ℤ) = A126459 n

end A126459

/-! ## A126459.P5425263549040670467

`A126458(n+1)-A126455(n+1)`
-/

namespace A126459.P5425263549040670467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126458 (n + 1) - A126455 (n + 1)

end

end A126459.P5425263549040670467

namespace A126459

/-- `A126458(n+1)-A126455(n+1)` -/
def P5425263549040670467.Spec : Prop :=
  ∀ n, P5425263549040670467.a n = A126459 n

end A126459

/-!
# A126461: Column 0 of triangle A126460; equals the number of subpartitions of the partition {(k^2 + 3*k - 4)*k/6, k>=0}.

The programs for A126461, there is no canonical definition to state claims against.
-/

/-! ## A126461.P12688923190881918746

`A126460(∑[n])`
-/

namespace A126461.P12688923190881918746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126461.P12688923190881918746

/-! ## A126461.P2353661886250729357

`and(-1, A126460(A000217(n)))`
-/

namespace A126461.P2353661886250729357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A126460 (A000217 n).toNat)

end

end A126461.P2353661886250729357

/-! ## A126461.P16421199529361209396

`A126460(A000124(n))+char[12]`
-/

namespace A126461.P16421199529361209396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A126461.P16421199529361209396

/-! ## A126461.P3586393141646832111

`A126460(C(n+1, 2))*A242784(n)`
-/

namespace A126461.P3586393141646832111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (Nat.choose (n + 1) 2) * A242784 n

end

end A126461.P3586393141646832111

/-! ## A126461.P13450468986863186646

`A126460(n²-C(n, 2))%A200937(n)`
-/

namespace A126461.P13450468986863186646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126460 (n ^ 2 - Nat.choose n 2)) (A200937 n)

end

end A126461.P13450468986863186646

/-!
# A126462: Column 2 of triangle A126460; equals the number of subpartitions of the partition {(k^2 + 9*k + 20)*k/6, k>=0}.

The programs for A126462, there is no canonical definition to state claims against.
-/

/-! ## A126462.P18256561934142620208

`A126460(∑[n+2]+3)`
-/

namespace A126462.P18256561934142620208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A126462.P18256561934142620208

/-! ## A126462.P18378888709008678573

`and(-1, A126460(A340266(n+1)))`
-/

namespace A126462.P18378888709008678573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A126460 (A340266 (n + 1)).toNat)

end

end A126462.P18378888709008678573

/-! ## A126462.P13385817513270677775

`A126460(A340266(n+1))+A054898(n)`
-/

namespace A126462.P13385817513270677775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (A340266 (n + 1)).toNat + A054898 n

end

end A126462.P13385817513270677775

/-! ## A126462.P581106655751146561

`A151949(n)+A126460(A340266(n+1))`
-/

namespace A126462.P581106655751146561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + A126460 (A340266 (n + 1)).toNat

end

end A126462.P581106655751146561

/-!
# A126463: Column 3 of triangle A126460; equals the number of subpartitions of the partition {(k^2 + 9*k + 20)*k/6, k>=0}.

The programs for A126463, there is no canonical definition to state claims against.
-/

/-! ## A126463.P13259516302154568619

`A126460(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A126463.P13259516302154568619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126463.P13259516302154568619

/-! ## A126463.P3133201821796296165

`A126460(A167614(2+n))`
-/

namespace A126463.P3133201821796296165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (A167614 (2 + n)).toNat

end

end A126463.P3133201821796296165

/-! ## A126463.P920971334206445106

`A126460(A152950(n+4))`
-/

namespace A126463.P920971334206445106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126460 (A152950 (n + 4)).toNat

end

end A126463.P920971334206445106

/-!
# A126464: Row sums of triangle A126460.

The programs for A126464, there is no canonical definition to state claims against.
-/

/-! ## A126464.P15519928297370666512

`A338834(∑[∑[A353290(n)]])`
-/

namespace A126464.P15519928297370666512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338834 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126464.P15519928297370666512

/-! ## A126464.P4852694287101882775

`A091226(A161629(n)+comp[∑[n-1]])`
-/

namespace A126464.P4852694287101882775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A161629 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A126464.P4852694287101882775

/-!
# A126466: Column 0 of triangle A126465.

The programs for A126466, there is no canonical definition to state claims against.
-/

/-! ## A126466.P199495797079351726

`A126465(∑[n])`
-/

namespace A126466.P199495797079351726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126466.P199495797079351726

/-! ## A126466.P10593602593279116929

`gcd(floor(1/(n+1)), A126465(n*(n+1)/2))`
-/

namespace A126466.P10593602593279116929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A126465 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A126466.P10593602593279116929

/-! ## A126466.P17388212049344877808

`and(-1, A126465(A000217(n)))`
-/

namespace A126466.P17388212049344877808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A126465 (A000217 n).toNat)

end

end A126466.P17388212049344877808

/-! ## A126466.P4433456755260683915

`A377191(n)+A126465(n*(n+1)/2)`
-/

namespace A126466.P4433456755260683915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 n + A126465 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A126466.P4433456755260683915

/-! ## A126466.P17954972932248759034

`A126465(n*(n+1)/2)*A136522(n)`
-/

namespace A126466.P17954972932248759034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126465 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat * A136522 n

end

end A126466.P17954972932248759034

/-!
# A126467: Column 1 of triangle A126465.

The programs for A126467, there is no canonical definition to state claims against.
-/

/-! ## A126467.P14379645698894775420

`A126465(eq[1, col(n)])`
-/

namespace A126467.P14379645698894775420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126465 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A126467.P14379645698894775420

/-! ## A126467.P10290946727386152041

`A126465(∑[n+1]+1)`
-/

namespace A126467.P10290946727386152041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126465 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126467.P10290946727386152041

/-!
# A126468: Column 2 of triangle A126465.

The programs for A126468, there is no canonical definition to state claims against.
-/

/-! ## A126468.P2802626718330602165

`A126465(∑[n+2]+3)`
-/

namespace A126468.P2802626718330602165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126465 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A126468.P2802626718330602165

/-! ## A126468.P14820515316768537373

`and(-1, A126465(A340266(n+1)))`
-/

namespace A126468.P14820515316768537373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A126465 (A340266 (n + 1)).toNat)

end

end A126468.P14820515316768537373

/-! ## A126468.P12461154656490001589

`A126465(A340266(n+1))+A054898(n)`
-/

namespace A126468.P12461154656490001589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126465 (A340266 (n + 1)).toNat + A054898 n

end

end A126468.P12461154656490001589

/-!
# A126469: Row sums of triangle A126465.

The programs for A126469, there is no canonical definition to state claims against.
-/

/-! ## A126469.P1471017267055316552

`A063914(A005156(n))+n`
-/

namespace A126469.P1471017267055316552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063914 (A005156 n).toNat + (n : ℤ)

end

end A126469.P1471017267055316552

/-!
# A126471: Limit of reversed rows of triangle A126470, in which row sums equal the factorials.

The programs for A126471, there is no canonical definition to state claims against.
-/

/-! ## A126471.P14141182368148700901

`A126470(∑[∑[n]]+1)`
-/

namespace A126471.P14141182368148700901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126470 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126471.P14141182368148700901

/-! ## A126471.P5064928920540979876

`A126470(A035597(n))^A078214(n+1)`
-/

namespace A126471.P5064928920540979876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126470 (A035597 n).toNat : ℚ) ^ (A078214 (n + 1) : ℤ)

end

end A126471.P5064928920540979876

/-!
# A126472: Largest term in rows of triangle A126470, in which row sums equal factorials.

The programs for A126472, there is no canonical definition to state claims against.
-/

/-! ## A126472.P18184522834725397947

`A051889(n!)-∑{digits}[n!, floor(acot(#))]`
-/

namespace A126472.P18184522834725397947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Nat.factorial n) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

end

end A126472.P18184522834725397947

/-! ## A126472.P16139191095803740383

`A193921(2^n-ceil(xor(1, n)/2))`
-/

namespace A126472.P16139191095803740383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 ((2 ^ n : ℤ) - ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A126472.P16139191095803740383

/-! ## A126472.P1628441015603781354

`A127123(A307605(n))`
-/

namespace A126472.P1628441015603781354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127123 (A307605 n).toNat

end

end A126472.P1628441015603781354

/-!
# A126473: Number of strings over a 5 symbol alphabet with adjacent symbols differing by three or less.

The programs for A126473, the canonical program `A126473.P14569683567544178466` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126473 has offset 0).

The definition of A126473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126473.P3232564239468474166

`ogf((1+x)/(1-4x-3x^2))`
-/

namespace A126473.P3232564239468474166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, -3] n

end

end A126473.P3232564239468474166

namespace A126473

/-- `ogf((1+x)/(1-4x-3x^2))` -/
def P3232564239468474166.Spec : Prop :=
  ∀ n, P3232564239468474166.a n = A126473 n

end A126473

/-! ## A126473.P14569683567544178466

`4*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126473

/-- `4*a(n-1)+3*a(n-2)` -/
def P14569683567544178466.Spec : Prop :=
  ∀ n, (P14569683567544178466.a n : ℤ) = A126473 n

theorem P14569683567544178466.correct : P14569683567544178466.Spec := by
  intro n
  simp only [A126473]

end A126473

/-! ## A126473.P17260634930526614962

`round((sqrt(7)+2)*a(n-1))` with `a(0)=1`
-/

namespace A126473.P17260634930526614962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (7 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A126473.P17260634930526614962

namespace A126473

/-- `round((sqrt(7)+2)*a(n-1))` -/
def P17260634930526614962.Spec : Prop :=
  ∀ n, P17260634930526614962.a n = A126473 n

end A126473

/-! ## A126473.P1216659736725694097

`5*a(n-1)-a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=5, a(2)=23`
-/

namespace A126473.P1216659736725694097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 23] fun n a =>
  5 * a (n - 1) - a (n - 2) - 3 * a (n - 3)

end

end A126473.P1216659736725694097

namespace A126473

/-- `5*a(n-1)-a(n-2)-3*a(n-3)` -/
def P1216659736725694097.Spec : Prop :=
  ∀ n, P1216659736725694097.a n = A126473 n

end A126473

/-! ## A126473.P3422373354820398428

`A122558(n+1)/3`
-/

namespace A126473.P3422373354820398428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122558 (n + 1) : ℚ) / 3

end

end A126473.P3422373354820398428

namespace A126473

/-- `A122558(n+1)/3` -/
def P3422373354820398428.Spec : Prop :=
  ∀ n, P3422373354820398428.a n = (A126473 n : ℚ)

end A126473

/-! ## A126473.P10095988948408463384

`∑{#}[n, C(n, #)*A384712(#)]`
-/

namespace A126473.P10095988948408463384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A384712 k

end

end A126473.P10095988948408463384

namespace A126473

/-- `∑{#}[n, C(n, #)*A384712(#)]` -/
def P10095988948408463384.Spec : Prop :=
  ∀ n, P10095988948408463384.a n = A126473 n

end A126473

/-! ## A126473.P7208661970101679169

`9*a(n-1)-A080042(n)` with `a(0)=1`
-/

namespace A126473.P7208661970101679169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A080042 n

end

end A126473.P7208661970101679169

namespace A126473

/-- `9*a(n-1)-A080042(n)` -/
def P7208661970101679169.Spec : Prop :=
  ∀ n, P7208661970101679169.a n = A126473 n

end A126473

/-! ## A126473.P2212841019893546848

`A108851(n)+A106570(n)`
-/

namespace A126473.P2212841019893546848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 n + A106570 n

end

end A126473.P2212841019893546848

namespace A126473

/-- `A108851(n)+A106570(n)` -/
def P2212841019893546848.Spec : Prop :=
  ∀ n, P2212841019893546848.a n = A126473 n

end A126473

/-! ## A126473.P13707132330473482316

`A109115(n)-A015530(n)`
-/

namespace A126473.P13707132330473482316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109115 n - A015530 n

end

end A126473.P13707132330473482316

namespace A126473

/-- `A109115(n)-A015530(n)` -/
def P13707132330473482316.Spec : Prop :=
  ∀ n, P13707132330473482316.a n = A126473 n

end A126473

/-! ## A126473.P10527781375671157493

`Δ[A106570(n)]-A080042(n)`
-/

namespace A126473.P10527781375671157493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080042 n

end

end A126473.P10527781375671157493

namespace A126473

/-- `Δ[A106570(n)]-A080042(n)` -/
def P10527781375671157493.Spec : Prop :=
  ∀ n, P10527781375671157493.a n = A126473 n

end A126473

/-! ## A126473.P1990788300330743686

`A015530(n+1)+A015530(n)`
-/

namespace A126473.P1990788300330743686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) + A015530 n

end

end A126473.P1990788300330743686

namespace A126473

/-- `A015530(n+1)+A015530(n)` -/
def P1990788300330743686.Spec : Prop :=
  ∀ n, P1990788300330743686.a n = A126473 n

end A126473

/-! ## A126473.P8176315126199849234

`A108851(n+1)-A109115(n)`
-/

namespace A126473.P8176315126199849234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) - A109115 n

end

end A126473.P8176315126199849234

namespace A126473

/-- `A108851(n+1)-A109115(n)` -/
def P8176315126199849234.Spec : Prop :=
  ∀ n, P8176315126199849234.a n = A126473 n

end A126473

/-! ## A126473.P7368373923766763761

`∑[2*A122558(n)]-A122558(n)`
-/

namespace A126473.P7368373923766763761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122558 n

end

end A126473.P7368373923766763761

namespace A126473

/-- `∑[2*A122558(n)]-A122558(n)` -/
def P7368373923766763761.Spec : Prop :=
  ∀ n, P7368373923766763761.a n = A126473 n

end A126473

/-! ## A126473.P731914516857915248

`2*A122558(n)-A086901(n+1)`
-/

namespace A126473.P731914516857915248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122558 n - A086901 (n + 1)

end

end A126473.P731914516857915248

namespace A126473

/-- `2*A122558(n)-A086901(n+1)` -/
def P731914516857915248.Spec : Prop :=
  ∀ n, P731914516857915248.a n = A126473 n

end A126473

/-! ## A126473.P4367350268088388859

`A106570(n)-(A015530(n)-A122558(n))`
-/

namespace A126473.P4367350268088388859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106570 n - (A015530 n - A122558 n)

end

end A126473.P4367350268088388859

namespace A126473

/-- `A106570(n)-(A015530(n)-A122558(n))` -/
def P4367350268088388859.Spec : Prop :=
  ∀ n, P4367350268088388859.a n = A126473 n

end A126473

/-! ## A126473.P738886956456412676

`Δ[A015530(n+1)]/3`
-/

namespace A126473.P738886956456412676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A126473.P738886956456412676

namespace A126473

/-- `Δ[A015530(n+1)]/3` -/
def P738886956456412676.Spec : Prop :=
  ∀ n, P738886956456412676.a n = (A126473 n : ℚ)

end A126473

/-! ## A126473.P7329099347010456472

`∑{#}[n, (-1)^(n-#)*C(n, #)*A154244(#+1)]`
-/

namespace A126473.P7329099347010456472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A154244 (k + 1) : ℚ)

end

end A126473.P7329099347010456472

namespace A126473

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A154244(#+1)]` -/
def P7329099347010456472.Spec : Prop :=
  ∀ n, P7329099347010456472.a n = (A126473 n : ℚ)

end A126473

/-!
# A126474: Number of arrays in [1..6]^n with adjacent elements differing by three or less.

The programs for A126474, the canonical program `A126474.P8478480213654800451` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126474 has offset 0).

The definition of A126474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126474.P8478480213654800451

`5*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=6, a(2)=30`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126474

/-- `5*a(n-1)+a(n-2)-2*a(n-3)` -/
def P8478480213654800451.Spec : Prop :=
  ∀ n, P8478480213654800451.a n = A126474 n

theorem P8478480213654800451.correct : P8478480213654800451.Spec := by
  intro n
  simp only [A126474]

end A126474

/-! ## A126474.P9249717165526268532

`ogf((1+x-x^2)/(1-5x-x^2+2x^3))`
-/

namespace A126474.P9249717165526268532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -5, -1, 2] n

end

end A126474.P9249717165526268532

namespace A126474

/-- `ogf((1+x-x^2)/(1-5x-x^2+2x^3))` -/
def P9249717165526268532.Spec : Prop :=
  ∀ n, P9249717165526268532.a n = A126474 n

end A126474

/-! ## A126474.P7350423903390479672

`A285267(∑[n+2]+7)`
-/

namespace A126474.P7350423903390479672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A126474.P7350423903390479672

namespace A126474

/-- `A285267(∑[n+2]+7)` -/
def P7350423903390479672.Spec : Prop :=
  ∀ n, P7350423903390479672.a n = A126474 n

end A126474

/-! ## A126474.P16987999440587372969

`gcd(A000038(n), A285267(A166136(n+1)))`
-/

namespace A126474.P16987999440587372969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285267 (A166136 (n + 1)).toNat)

end

end A126474.P16987999440587372969

namespace A126474

/-- `gcd(A000038(n), A285267(A166136(n+1)))` -/
def P16987999440587372969.Spec : Prop :=
  ∀ n, (P16987999440587372969.a n : ℤ) = A126474 n

end A126474

/-! ## A126474.P8392244438373289639

`A285267(A166136(n+1))%A002276(n+1)`
-/

namespace A126474.P8392244438373289639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285267 (A166136 (n + 1)).toNat) (A002276 (n + 1))

end

end A126474.P8392244438373289639

namespace A126474

/-- `A285267(A166136(n+1))%A002276(n+1)` -/
def P8392244438373289639.Spec : Prop :=
  ∀ n, P8392244438373289639.a n = A126474 n

end A126474

/-!
# A126475: Number of base 7 n-digit numbers with adjacent digits differing by three or less.

The programs for A126475, the canonical program `A126475.P12281841235771715780` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126475 has offset 0).

The definition of A126475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126475.P11408485560474398118

`ogf((1+2x-x^2-x^3)/(1-5x-3x^2+2x^3+x^4))`
-/

namespace A126475.P11408485560474398118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, -5, -3, 2, 1] n

end

end A126475.P11408485560474398118

namespace A126475

/-- `ogf((1+2x-x^2-x^3)/(1-5x-3x^2+2x^3+x^4))` -/
def P11408485560474398118.Spec : Prop :=
  ∀ n, P11408485560474398118.a n = A126475 n

end A126475

/-! ## A126475.P12281841235771715780

`5*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=37, a(3)=203`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126475

/-- `5*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P12281841235771715780.Spec : Prop :=
  ∀ n, P12281841235771715780.a n = A126475 n

theorem P12281841235771715780.correct : P12281841235771715780.Spec := by
  intro n
  simp only [A126475]

end A126475

/-! ## A126475.P8743674043526107022

`record[gcd(A183134(n+3), A201042(n+2))]`
-/

namespace A126475.P8743674043526107022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183134 (n + 3)) (A201042 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126475.P8743674043526107022

namespace A126475

/-- `record[gcd(A183134(n+3), A201042(n+2))]` -/
def P8743674043526107022.Spec : Prop :=
  ∀ n, (P8743674043526107022.a n : ℤ) = A126475 n

end A126475

/-! ## A126475.P10485130344666024345

`A285267(A167487(n+2))`
-/

namespace A126475.P10485130344666024345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167487 (n + 2)).toNat

end

end A126475.P10485130344666024345

namespace A126475

/-- `A285267(A167487(n+2))` -/
def P10485130344666024345.Spec : Prop :=
  ∀ n, P10485130344666024345.a n = A126475 n

end A126475

/-! ## A126475.P14481086402183551867

`A285267(A052905(n)+12)`
-/

namespace A126475.P14481086402183551867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A052905 n + 12).toNat

end

end A126475.P14481086402183551867

namespace A126475

/-- `A285267(A052905(n)+12)` -/
def P14481086402183551867.Spec : Prop :=
  ∀ n, P14481086402183551867.a n = A126475 n

end A126475

/-!
# A126476: Number of base 8 n-digit numbers with adjacent digits differing by three or less.

The programs for A126476, the canonical program `A126476.P12715422339622012519` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126476 has offset 0).

The definition of A126476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126476.P12715422339622012519

`ogf((1+2x-3x^2-x^3+x^4)/(1-6x+x^2+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126476

/-- `ogf((1+2x-3x^2-x^3+x^4)/(1-6x+x^2+3x^3-x^4))` -/
def P12715422339622012519.Spec : Prop :=
  ∀ n, P12715422339622012519.a n = A126476 n

theorem P12715422339622012519.correct : P12715422339622012519.Spec := by
  intro n
  simp only [A126476]

end A126476

/-! ## A126476.P1932771065423482709

`A285267(A155212(n)+16)`
-/

namespace A126476.P1932771065423482709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A155212 n + 16).toNat

end

end A126476.P1932771065423482709

namespace A126476

/-- `A285267(A155212(n)+16)` -/
def P1932771065423482709.Spec : Prop :=
  ∀ n, P1932771065423482709.a n = A126476 n

end A126476

/-! ## A126476.P5311755111813065972

`A285267(A167487(n+3)+1)`
-/

namespace A126476.P5311755111813065972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167487 (n + 3) + 1).toNat

end

end A126476.P5311755111813065972

namespace A126476

/-- `A285267(A167487(n+3)+1)` -/
def P5311755111813065972.Spec : Prop :=
  ∀ n, P5311755111813065972.a n = A126476 n

end A126476

/-! ## A126476.P5694872345478734652

`A285267(A077169(n+5)+3)`
-/

namespace A126476.P5694872345478734652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A077169 (n + 5) + 3).toNat

end

end A126476.P5694872345478734652

namespace A126476

/-- `A285267(A077169(n+5)+3)` -/
def P5694872345478734652.Spec : Prop :=
  ∀ n, P5694872345478734652.a n = A126476 n

end A126476

/-! ## A126476.P5592488221730691987

`A285267(A055998(n+2)+11)`
-/

namespace A126476.P5592488221730691987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A055998 (n + 2) + 11).toNat

end

end A126476.P5592488221730691987

namespace A126476

/-- `A285267(A055998(n+2)+11)` -/
def P5592488221730691987.Spec : Prop :=
  ∀ n, P5592488221730691987.a n = A126476 n

end A126476

/-!
# A126477: Number of base 9 n-digit numbers with adjacent digits differing by three or less.

The programs for A126477, the canonical program `A126477.P6501888230209748067` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126477 has offset 0).

The definition of A126477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126477.P6501888230209748067

`ogf((1+2x-6x^2+2x^4)/(1-7x+6x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126477

/-- `ogf((1+2x-6x^2+2x^4)/(1-7x+6x^2+2x^3-2x^4))` -/
def P6501888230209748067.Spec : Prop :=
  ∀ n, P6501888230209748067.a n = A126477 n

theorem P6501888230209748067.correct : P6501888230209748067.Spec := by
  intro n
  simp only [A126477]

end A126477

/-! ## A126477.P10028303883175998845

`A285267(A166136(n+4)+3)`
-/

namespace A126477.P10028303883175998845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A166136 (n + 4) + 3).toNat

end

end A126477.P10028303883175998845

namespace A126477

/-- `A285267(A166136(n+4)+3)` -/
def P10028303883175998845.Spec : Prop :=
  ∀ n, P10028303883175998845.a n = A126477 n

end A126477

/-! ## A126477.P15542218210664805778

`A285267(A167614(n+4)+6)`
-/

namespace A126477.P15542218210664805778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167614 (n + 4) + 6).toNat

end

end A126477.P15542218210664805778

namespace A126477

/-- `A285267(A167614(n+4)+6)` -/
def P15542218210664805778.Spec : Prop :=
  ∀ n, P15542218210664805778.a n = A126477 n

end A126477

/-! ## A126477.P4030820175263218934

`A285267(A000124(n+5)+8)`
-/

namespace A126477.P4030820175263218934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000124 (n + 5) + 8).toNat

end

end A126477.P4030820175263218934

namespace A126477

/-- `A285267(A000124(n+5)+8)` -/
def P4030820175263218934.Spec : Prop :=
  ∀ n, P4030820175263218934.a n = A126477 n

end A126477

/-! ## A126477.P17926707333818446887

`A285267(eq[6, A002260(n+1)]+4)`
-/

namespace A126477.P17926707333818446887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A126477.P17926707333818446887

namespace A126477

/-- `A285267(eq[6, A002260(n+1)]+4)` -/
def P17926707333818446887.Spec : Prop :=
  ∀ n, P17926707333818446887.a n = A126477 n

end A126477

/-!
# A126478: Number of base 10 n-digit numbers with adjacent digits differing by three or less.

The programs for A126478, the canonical program `A126478.P2758709897756356199` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126478 has offset 0).

The definition of A126478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126478.P2758709897756356199

`ogf((1+3x-8x^2-6x^3+6x^4)/(1-7x+4x^2+10x^3-6x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126478

/-- `ogf((1+3x-8x^2-6x^3+6x^4)/(1-7x+4x^2+10x^3-6x^4))` -/
def P2758709897756356199.Spec : Prop :=
  ∀ n, P2758709897756356199.a n = A126478 n

theorem P2758709897756356199.correct : P2758709897756356199.Spec := by
  intro n
  simp only [A126478]

end A126478

/-! ## A126478.P7548465845359255441

`A285267(A167499(n+5)+5)`
-/

namespace A126478.P7548465845359255441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167499 (n + 5) + 5).toNat

end

end A126478.P7548465845359255441

namespace A126478

/-- `A285267(A167499(n+5)+5)` -/
def P7548465845359255441.Spec : Prop :=
  ∀ n, P7548465845359255441.a n = A126478 n

end A126478

/-! ## A126478.P1633690075819832492

`A285267(A167614(n+5)+7)`
-/

namespace A126478.P1633690075819832492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167614 (n + 5) + 7).toNat

end

end A126478.P1633690075819832492

namespace A126478

/-- `A285267(A167614(n+5)+7)` -/
def P1633690075819832492.Spec : Prop :=
  ∀ n, P1633690075819832492.a n = A126478 n

end A126478

/-! ## A126478.P4069348026694500094

`A285267(A000124(n+6)+9)`
-/

namespace A126478.P4069348026694500094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000124 (n + 6) + 9).toNat

end

end A126478.P4069348026694500094

namespace A126478

/-- `A285267(A000124(n+6)+9)` -/
def P4069348026694500094.Spec : Prop :=
  ∀ n, P4069348026694500094.a n = A126478 n

end A126478

/-! ## A126478.P15316587047411910523

`A285267(A000217(n+6)+10)`
-/

namespace A126478.P15316587047411910523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000217 (n + 6) + 10).toNat

end

end A126478.P15316587047411910523

namespace A126478

/-- `A285267(A000217(n+6)+10)` -/
def P15316587047411910523.Spec : Prop :=
  ∀ n, P15316587047411910523.a n = A126478 n

end A126478

/-!
# A126479: Number of base 11 n-digit numbers with adjacent digits differing by three or less.

The programs for A126479, the canonical program `A126479.P12843895758338299783` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126479 has offset 0).

The definition of A126479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126479.P12843895758338299783

`ogf((1+4x-10x^2-16x^3+6x^4+8x^5)/(1-7x+2x^2+18x^3-2x^4-8x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126479

/-- `ogf((1+4x-10x^2-16x^3+6x^4+8x^5)/(1-7x+2x^2+18x^3-2x^4-8x^5))` -/
def P12843895758338299783.Spec : Prop :=
  ∀ n, P12843895758338299783.a n = A126479 n

theorem P12843895758338299783.correct : P12843895758338299783.Spec := by
  intro n
  simp only [A126479]

end A126479

/-! ## A126479.P3018206013134182591

`A285267(A167487(n+6)+4)`
-/

namespace A126479.P3018206013134182591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167487 (n + 6) + 4).toNat

end

end A126479.P3018206013134182591

namespace A126479

/-- `A285267(A167487(n+6)+4)` -/
def P3018206013134182591.Spec : Prop :=
  ∀ n, P3018206013134182591.a n = A126479 n

end A126479

/-! ## A126479.P13540410929451032335

`A285267(A000124(n+7)+10)`
-/

namespace A126479.P13540410929451032335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000124 (n + 7) + 10).toNat

end

end A126479.P13540410929451032335

namespace A126479

/-- `A285267(A000124(n+7)+10)` -/
def P13540410929451032335.Spec : Prop :=
  ∀ n, P13540410929451032335.a n = A126479 n

end A126479

/-! ## A126479.P7145862771798998871

`A285267(A000217(n+7)+11)`
-/

namespace A126479.P7145862771798998871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000217 (n + 7) + 11).toNat

end

end A126479.P7145862771798998871

namespace A126479

/-- `A285267(A000217(n+7)+11)` -/
def P7145862771798998871.Spec : Prop :=
  ∀ n, P7145862771798998871.a n = A126479 n

end A126479

/-! ## A126479.P15551409332228169426

`A285267(A161680(n+8)+11)`
-/

namespace A126479.P15551409332228169426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A161680 (n + 8) + 11).toNat

end

end A126479.P15551409332228169426

namespace A126479

/-- `A285267(A161680(n+8)+11)` -/
def P15551409332228169426.Spec : Prop :=
  ∀ n, P15551409332228169426.a n = A126479 n

end A126479

/-!
# A126480: Number of base 12 n-digit numbers with adjacent digits differing by three or less.

The programs for A126480, the canonical program `A126480.P8781393609426188113` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126480 has offset 0).

The definition of A126480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126480.P8781393609426188113

`ogf((1+4x-16x^2-14x^3+14x^4+6x^5)/(1-8x+8x^2+18x^3-10x^4-6x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126480

/-- `ogf((1+4x-16x^2-14x^3+14x^4+6x^5)/(1-8x+8x^2+18x^3-10x^4-6x^5))` -/
def P8781393609426188113.Spec : Prop :=
  ∀ n, P8781393609426188113.a n = A126480 n

theorem P8781393609426188113.correct : P8781393609426188113.Spec := by
  intro n
  simp only [A126480]

end A126480

/-! ## A126480.P7900795623385771693

`A285267(A167499(n+7)+7)`
-/

namespace A126480.P7900795623385771693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167499 (n + 7) + 7).toNat

end

end A126480.P7900795623385771693

namespace A126480

/-- `A285267(A167499(n+7)+7)` -/
def P7900795623385771693.Spec : Prop :=
  ∀ n, P7900795623385771693.a n = A126480 n

end A126480

/-! ## A126480.P17544323904031600627

`A285267(A167614(n+7)+9)`
-/

namespace A126480.P17544323904031600627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A167614 (n + 7) + 9).toNat

end

end A126480.P17544323904031600627

namespace A126480

/-- `A285267(A167614(n+7)+9)` -/
def P17544323904031600627.Spec : Prop :=
  ∀ n, P17544323904031600627.a n = A126480 n

end A126480

/-!
# A126481: Number of base 13 n-digit numbers with adjacent digits differing by three or less.

The programs for A126481, the canonical program `A126481.P13453065676805732339` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126481 has offset 0).

The definition of A126481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126481.P13453065676805732339

`ogf((1+5x-19x^2-29x^3+16x^4+20x^5-2x^6-2x^7)/(1-8x+6x^2+28x^3-5x^4-18x^5+2x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126481

/-- `ogf((1+5x-19x^2-29x^3+16x^4+20x^5-2x^6-2x^7)/(1-8x+6x^2+28x^3-5x^4-18x^5+2x^7))` -/
def P13453065676805732339.Spec : Prop :=
  ∀ n, P13453065676805732339.a n = A126481 n

theorem P13453065676805732339.correct : P13453065676805732339.Spec := by
  intro n
  simp only [A126481]

end A126481

/-! ## A126481.P12000608828406716623

`A285267(A000217(n+9)+13)`
-/

namespace A126481.P12000608828406716623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000217 (n + 9) + 13).toNat

end

end A126481.P12000608828406716623

namespace A126481

/-- `A285267(A000217(n+9)+13)` -/
def P12000608828406716623.Spec : Prop :=
  ∀ n, P12000608828406716623.a n = A126481 n

end A126481

/-! ## A126481.P11634786612817175282

`A285267(eq[9, A002262(n)]+4)`
-/

namespace A126481.P11634786612817175282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A126481.P11634786612817175282

namespace A126481

/-- `A285267(eq[9, A002262(n)]+4)` -/
def P11634786612817175282.Spec : Prop :=
  ∀ n, P11634786612817175282.a n = A126481 n

end A126481

/-! ## A126481.P10200774420277196004

`A285267(A000124(n+10)-(n-2))`
-/

namespace A126481.P10200774420277196004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000124 (n + 10) - ((n : ℤ) - 2)).toNat

end

end A126481.P10200774420277196004

namespace A126481

/-- `A285267(A000124(n+10)-(n-2))` -/
def P10200774420277196004.Spec : Prop :=
  ∀ n, P10200774420277196004.a n = A126481 n

end A126481

/-!
# A126482: Number of base 14 n-digit numbers with adjacent digits differing by three or less.

The programs for A126482, the canonical program `A126482.P5362244956407727052` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126482 has offset 0).

The definition of A126482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126482.P5362244956407727052

`ogf((1+5x-27x^2-21x^3+35x^4+8x^5-5x^6-x^7)/(1-9x+13x^2+25x^3-21x^4-10x^5+3x^6+x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126482

/-- `ogf((1+5x-27x^2-21x^3+35x^4+8x^5-5x^6-x^7)/(1-9x+13x^2+25x^3-21x^4-10x^5+3x^6+x^7))` -/
def P5362244956407727052.Spec : Prop :=
  ∀ n, P5362244956407727052.a n = A126482 n

theorem P5362244956407727052.correct : P5362244956407727052.Spec := by
  intro n
  simp only [A126482]

end A126482

/-! ## A126482.P9176681128110949256

`A285267(A000217(n+10)+14)`
-/

namespace A126482.P9176681128110949256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000217 (n + 10) + 14).toNat

end

end A126482.P9176681128110949256

namespace A126482

/-- `A285267(A000217(n+10)+14)` -/
def P9176681128110949256.Spec : Prop :=
  ∀ n, P9176681128110949256.a n = A126482 n

end A126482

/-! ## A126482.P9959300249260062773

`A285267(A000124(n+11)-(n-2))`
-/

namespace A126482.P9959300249260062773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (A000124 (n + 11) - ((n : ℤ) - 2)).toNat

end

end A126482.P9959300249260062773

namespace A126482

/-- `A285267(A000124(n+11)-(n-2))` -/
def P9959300249260062773.Spec : Prop :=
  ∀ n, P9959300249260062773.a n = A126482 n

end A126482

/-!
# A126483: Number of base 15 n-digit numbers with adjacent digits differing by three or less.

The programs for A126483, the canonical program `A126483.P14109943925804555528` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126483 has offset 0).

The definition of A126483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126483.P14109943925804555528

`ogf((1+6x-31x^2-40x^3+48x^4+35x^5-19x^6-5x^7+2x^8)/(1-9x+11x^2+37x^3-20x^4-29x^5+8x^6+4x^7-x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126483

/-- `ogf((1+6x-31x^2-40x^3+48x^4+35x^5-19x^6-5x^7+2x^8)/(1-9x+11x^2+37x^3-20x^4-29x^5+8x^6+4x^7-x^8))` -/
def P14109943925804555528.Spec : Prop :=
  ∀ n, P14109943925804555528.a n = A126483 n

theorem P14109943925804555528.correct : P14109943925804555528.Spec := by
  intro n
  simp only [A126483]

end A126483

/-! ## A126483.P13921860520623675531

`A000265(A126484(n)+A126482(n))`
-/

namespace A126483.P13921860520623675531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126484 n + A126482 n).toNat

end

end A126483.P13921860520623675531

namespace A126483

/-- `A000265(A126484(n)+A126482(n))` -/
def P13921860520623675531.Spec : Prop :=
  ∀ n, P13921860520623675531.a n = A126483 n

end A126483

/-!
# A126484: Number of base 16 n-digit numbers with adjacent digits differing by three or less.

The programs for A126484, the canonical program `A126484.P17581235649835975806` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126484 has offset 0).

The definition of A126484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126484.P17581235649835975806

`ogf((1+6x-41x^2-22x^3+83x^4+6x^5-39x^6+x^7+4x^8)/(1-10x+19x^2+30x^3-45x^4-14x^5+21x^6+x^7-2x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126484

/-- `ogf((1+6x-41x^2-22x^3+83x^4+6x^5-39x^6+x^7+4x^8)/(1-10x+19x^2+30x^3-45x^4-14x^5+21x^6+x^7-2x^8))` -/
def P17581235649835975806.Spec : Prop :=
  ∀ n, P17581235649835975806.a n = A126484 n

theorem P17581235649835975806.correct : P17581235649835975806.Spec := by
  intro n
  simp only [A126484]

end A126484

/-! ## A126484.P10878725579145826312

`A126483(n)+A014682(A126485(n)-A126483(n))`
-/

namespace A126484.P10878725579145826312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126483 n + A014682 (A126485 n - A126483 n).toNat

end

end A126484.P10878725579145826312

namespace A126484

/-- `A126483(n)+A014682(A126485(n)-A126483(n))` -/
def P10878725579145826312.Spec : Prop :=
  ∀ n, P10878725579145826312.a n = A126484 n

end A126484

/-! ## A126484.P9835692497570371722

`A126485(n)-A014682(A126487(n)-A126485(n))`
-/

namespace A126484.P9835692497570371722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126485 n - A014682 (A126487 n - A126485 n).toNat

end

end A126484.P9835692497570371722

namespace A126484

/-- `A126485(n)-A014682(A126487(n)-A126485(n))` -/
def P9835692497570371722.Spec : Prop :=
  ∀ n, P9835692497570371722.a n = A126484 n

end A126484

/-!
# A126485: Number of base 17 n-digit numbers with adjacent digits differing by three or less.

The programs for A126485, the canonical program `A126485.P11893481101038704671` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126485 has offset 0).

The definition of A126485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126485.P11893481101038704671

`ogf((1+7x-46x^2-44x^3+118x^4+63x^5-89x^6-27x^7+18x^8)/(1-10x+17x^2+44x^3-50x^4-51x^5+40x^6+18x^7-9x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126485

/-- `ogf((1+7x-46x^2-44x^3+118x^4+63x^5-89x^6-27x^7+18x^8)/(1-10x+17x^2+44x^3-50x^4-51x^5+40x^6+18x^7-9x^8))` -/
def P11893481101038704671.Spec : Prop :=
  ∀ n, P11893481101038704671.a n = A126485 n

theorem P11893481101038704671.correct : P11893481101038704671.Spec := by
  intro n
  simp only [A126485]

end A126485

/-! ## A126485.P2512699513242672454

`A000265(A126486(n)+A126484(n))`
-/

namespace A126485.P2512699513242672454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126486 n + A126484 n).toNat

end

end A126485.P2512699513242672454

namespace A126485

/-- `A000265(A126486(n)+A126484(n))` -/
def P2512699513242672454.Spec : Prop :=
  ∀ n, P2512699513242672454.a n = A126485 n

end A126485

/-!
# A126486: Number of base 18 n-digit numbers with adjacent digits differing by three or less.

The programs for A126486, there is no canonical definition to state claims against.
-/

/-! ## A126486.P1229362319702422863

`A126485(n)+A014682(A126485(n)-A126483(n))`
-/

namespace A126486.P1229362319702422863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126485 n + A014682 (A126485 n - A126483 n).toNat

end

end A126486.P1229362319702422863

/-! ## A126486.P9562400738645435505

`A126484(n)+A014682(A126488(n)-A126484(n))`
-/

namespace A126486.P9562400738645435505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126484 n + A014682 (A126488 n - A126484 n).toNat

end

end A126486.P9562400738645435505

/-! ## A126486.P10492506762652087041

`A126485(n)+A014682(A126487(n)-A126485(n))`
-/

namespace A126486.P10492506762652087041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126485 n + A014682 (A126487 n - A126485 n).toNat

end

end A126486.P10492506762652087041

/-!
# A126487: Number of base 19 n-digit numbers with adjacent digits differing by three or less.

The programs for A126487, there is no canonical definition to state claims against.
-/

/-! ## A126487.P805955271609283570

`A000265(A126488(n)+A126486(n))`
-/

namespace A126487.P805955271609283570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126488 n + A126486 n).toNat

end

end A126487.P805955271609283570

/-! ## A126487.P11009993939205821575

`A000265(A126489(n)+A126485(n))`
-/

namespace A126487.P11009993939205821575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126489 n + A126485 n).toNat

end

end A126487.P11009993939205821575

/-!
# A126488: Number of base 20 n-digit numbers with adjacent digits differing by three or less.

The programs for A126488, the canonical program `A126488.P1670706482393722099` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126488 has offset 0).

The definition of A126488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126488.P1670706482393722099

`ogf((1+9x-69x^2-55x^3+242x^4+192x^5-94x^6-73x^7+5x^8+4x^9)/(1-11x+23x^2+53x^3-82x^4-100x^5+30x^6+35x^7-x^8-2x^9))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126488

/-- `ogf((1+9x-69x^2-55x^3+242x^4+192x^5-94x^6-73x^7+5x^8+4x^9)/(1-11x+23x^2+53x^3-82x^4-100x^5+30x^6+35x^7-x^8-2x^9))` -/
def P1670706482393722099.Spec : Prop :=
  ∀ n, P1670706482393722099.a n = A126488 n

theorem P1670706482393722099.correct : P1670706482393722099.Spec := by
  intro n
  simp only [A126488]

end A126488

/-! ## A126488.P7225881013235059384

`A000027(2*A126490(n)-A126492(n))`
-/

namespace A126488.P7225881013235059384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * A126490 n - A126492 n).toNat

end

end A126488.P7225881013235059384

namespace A126488

/-- `A000027(2*A126490(n)-A126492(n))` -/
def P7225881013235059384.Spec : Prop :=
  ∀ n, P7225881013235059384.a n = A126488 n

end A126488

/-! ## A126488.P11598427473211891077

`A000027(A126490(n)+A126490(n)-A126492(n))`
-/

namespace A126488.P11598427473211891077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126490 n + (A126490 n - A126492 n)).toNat

end

end A126488.P11598427473211891077

namespace A126488

/-- `A000027(A126490(n)+A126490(n)-A126492(n))` -/
def P11598427473211891077.Spec : Prop :=
  ∀ n, P11598427473211891077.a n = A126488 n

end A126488

/-!
# A126489: Number of base 21 n-digit numbers with adjacent digits differing by three or less.

The programs for A126489, there is no canonical definition to state claims against.
-/

/-! ## A126489.P5055101519218614151

`2*A126490(n)-(A126490(n)+A000027(A126492(n)))/2`
-/

namespace A126489.P5055101519218614151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A126490 n : ℚ) - (A126490 n + A000027 (A126492 n).toNat : ℚ) / 2

end

end A126489.P5055101519218614151

/-! ## A126489.P5441318038129744720

`A000265(A126490(n)+A126488(n))`
-/

namespace A126489.P5441318038129744720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126490 n + A126488 n).toNat

end

end A126489.P5441318038129744720

/-!
# A126490: Number of base 22 n-digit numbers with adjacent digits differing by three or less.

The programs for A126490, there is no canonical definition to state claims against.
-/

/-! ## A126490.P6924963290266010668

`A126488(n)+A014682(A126488(n)-A126484(n))`
-/

namespace A126490.P6924963290266010668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126488 n + A014682 (A126488 n - A126484 n).toNat

end

end A126490.P6924963290266010668

/-! ## A126490.P3687759537631800493

`A126489(n)+A014682(A126489(n)-A126487(n))`
-/

namespace A126490.P3687759537631800493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126489 n + A014682 (A126489 n - A126487 n).toNat

end

end A126490.P3687759537631800493

/-! ## A126490.P4262447125896522598

`A126488(n)+A014682(A126492(n)-A126488(n))`
-/

namespace A126490.P4262447125896522598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126488 n + A014682 (A126492 n - A126488 n).toNat

end

end A126490.P4262447125896522598

/-!
# A126491: Number of base 23 n-digit numbers with adjacent digits differing by three or less.

The programs for A126491, there is no canonical definition to state claims against.
-/

/-! ## A126491.P1271058698664061601

`(A126490(n)+A000027(A126492(n)))/2`
-/

namespace A126491.P1271058698664061601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126490 n + A000027 (A126492 n).toNat : ℚ) / 2

end

end A126491.P1271058698664061601

/-! ## A126491.P9552563554127225998

`A000265(A126492(n)+A126490(n))`
-/

namespace A126491.P9552563554127225998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126492 n + A126490 n).toNat

end

end A126491.P9552563554127225998

/-!
# A126492: Number of base 24 n-digit numbers with adjacent digits differing by three or less.

The programs for A126492, there is no canonical definition to state claims against.
-/

/-! ## A126492.P733047215963690660

`A126490(n)+A014682(A126490(n)-A126486(n))`
-/

namespace A126492.P733047215963690660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126490 n + A014682 (A126490 n - A126486 n).toNat

end

end A126492.P733047215963690660

/-! ## A126492.P12481474191355694648

`A126493(n)-A014682(A126495(n)-A126493(n))`
-/

namespace A126492.P12481474191355694648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126493 n - A014682 (A126495 n - A126493 n).toNat

end

end A126492.P12481474191355694648

/-!
# A126493: Number of base 25 n-digit numbers with adjacent digits differing by three or less.

The programs for A126493, there is no canonical definition to state claims against.
-/

/-! ## A126493.P10323560899439724747

`2*A126492(n)-(A126490(n)+A000027(A126492(n)))/2`
-/

namespace A126493.P10323560899439724747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A126492 n : ℚ) - (A126490 n + A000027 (A126492 n).toNat : ℚ) / 2

end

end A126493.P10323560899439724747

/-! ## A126493.P15680224383559304634

`A000265(A126486(n)+A000420(n))`
-/

namespace A126493.P15680224383559304634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126486 n + A000420 n).toNat

end

end A126493.P15680224383559304634

/-!
# A126494: Number of base 26 n-digit numbers with adjacent digits differing by three or less.

The programs for A126494, there is no canonical definition to state claims against.
-/

/-! ## A126494.P8210372963921403437

`A000027(2*A126492(n)-A126490(n))`
-/

namespace A126494.P8210372963921403437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * A126492 n - A126490 n).toNat

end

end A126494.P8210372963921403437

/-! ## A126494.P7790267253355748218

`A000027(A126492(n)+A126492(n)-A126490(n))`
-/

namespace A126494.P7790267253355748218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126492 n + (A126492 n - A126490 n)).toNat

end

end A126494.P7790267253355748218

/-! ## A126494.P3658043437360884823

`A126492(n)+A014682(A126492(n)-A126488(n))`
-/

namespace A126494.P3658043437360884823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126492 n + A014682 (A126492 n - A126488 n).toNat

end

end A126494.P3658043437360884823

/-!
# A126495: Number of base 27 n-digit numbers with adjacent digits differing by three or less.

The programs for A126495, there is no canonical definition to state claims against.
-/

/-! ## A126495.P10469517498133743141

`A000265(2*A126491(n)-A126487(n))`
-/

namespace A126495.P10469517498133743141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A126491 n - A126487 n).toNat

end

end A126495.P10469517498133743141

/-!
# A126496: Number of base 28 n-digit numbers with adjacent digits differing by three or less.

The programs for A126496, there is no canonical definition to state claims against.
-/

/-! ## A126496.P12125566229721608648

`A126495(n)+A014682(A126495(n)-A126493(n))`
-/

namespace A126496.P12125566229721608648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126495 n + A014682 (A126495 n - A126493 n).toNat

end

end A126496.P12125566229721608648

/-! ## A126496.P11080078217226762187

`A126495(n)+A014682(A126497(n)-A126495(n))`
-/

namespace A126496.P11080078217226762187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126495 n + A014682 (A126497 n - A126495 n).toNat

end

end A126496.P11080078217226762187

/-!
# A126497: Number of base 29 n-digit numbers with adjacent digits differing by three or less.

The programs for A126497, there is no canonical definition to state claims against.
-/

/-! ## A126497.P14731979222604965024

`A000265(A126499(n)+A126495(n))`
-/

namespace A126497.P14731979222604965024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126499 n + A126495 n).toNat

end

end A126497.P14731979222604965024

/-!
# A126498: Number of base 30 n-digit numbers with adjacent digits differing by three or less.

The programs for A126498, there is no canonical definition to state claims against.
-/

/-! ## A126498.P5021124256300157567

`A126497(n)+A014682(A126497(n)-A126495(n))`
-/

namespace A126498.P5021124256300157567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126497 n + A014682 (A126497 n - A126495 n).toNat

end

end A126498.P5021124256300157567

/-! ## A126498.P8730633881425230923

`A126495(n)+A014682(A126495(n)-A126489(n))`
-/

namespace A126498.P8730633881425230923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126495 n + A014682 (A126495 n - A126489 n).toNat

end

end A126498.P8730633881425230923

/-!
# A126499: Number of base 31 n-digit numbers with adjacent digits differing by three or less.

The programs for A126499, there is no canonical definition to state claims against.
-/

/-! ## A126499.P3368561912112325153

`A000265(A126492(n)+A000420(n))`
-/

namespace A126499.P3368561912112325153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126492 n + A000420 n).toNat

end

end A126499.P3368561912112325153

/-! ## A126499.P2884876988111344381

`A000265(2*A126495(n)-A126491(n))`
-/

namespace A126499.P2884876988111344381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A126495 n - A126491 n).toNat

end

end A126499.P2884876988111344381

