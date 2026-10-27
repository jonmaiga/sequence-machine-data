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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084701: Smallest k such that k*prime(i)-1 is prime for i = 1 to n.

The programs for A084701, there is no canonical definition to state claims against.
-/

/-! ## A084701.P7998007115141051414

`A271410(A265612(n)+2)`
-/

namespace A084701.P7998007115141051414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A265612 n + 2).toNat

end

end A084701.P7998007115141051414

/-! ## A084701.P5601779522415798856

`lcm(A210540(n), A278234(A193939(n)))`
-/

namespace A084701.P5601779522415798856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A210540 n) (A278234 (A193939 n).toNat)

end

end A084701.P5601779522415798856

/-! ## A084701.P1464820005444289362

`A008284(n+2)*A278234(A193939(n))`
-/

namespace A084701.P1464820005444289362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 2) * A278234 (A193939 n).toNat

end

end A084701.P1464820005444289362

/-!
# A084702: a(n) is the smallest k such that k + 1 and n*k + 1 both are perfect squares, or 0 if no such number exists.

The programs for A084702, there is no canonical definition to state claims against.
-/

/-! ## A084702.P15187037457562776412

`A132411(A130280(n+1))`
-/

namespace A084702.P15187037457562776412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A130280 (n + 1)).toNat

end

end A084702.P15187037457562776412

/-! ## A084702.P10809151935549327576

`A028310(A130280(C(n+1, n)))²-1`
-/

namespace A084702.P10809151935549327576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A130280 (Nat.choose (n + 1) n)).toNat ^ 2 - 1

end

end A084702.P10809151935549327576

/-! ## A084702.P365660321240868248

`A028310(A130280(Δ[n²]-n))²-1`
-/

namespace A084702.P365660321240868248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A130280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat ^ 2 - 1

end

end A084702.P365660321240868248

/-! ## A084702.P362451933632394449

`A033999(2*n+1)+A028310(A130280(n+1))²`
-/

namespace A084702.P362451933632394449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A028310 (A130280 (n + 1)).toNat ^ 2

end

end A084702.P362451933632394449

/-! ## A084702.P13339656814671874451

`abs(A028310(A130280(n+1))²+A001489(n+1)+n)`
-/

namespace A084702.P13339656814671874451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028310 (A130280 (n + 1)).toNat ^ 2 + (A001489 (n + 1) + (n : ℤ))|

end

end A084702.P13339656814671874451

/-! ## A084702.P5850250642855767712

`A008683(A175791(n+1))+A028310(A130280(n+1))²`
-/

namespace A084702.P5850250642855767712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A175791 (n + 1)).toNat + A028310 (A130280 (n + 1)).toNat ^ 2

end

end A084702.P5850250642855767712

/-! ## A084702.P3337549246802806586

`A008683(A261580(n+1))+A028310(A130280(n+1))²`
-/

namespace A084702.P3337549246802806586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A261580 (n + 1)).toNat + A028310 (A130280 (n + 1)).toNat ^ 2

end

end A084702.P3337549246802806586

/-! ## A084702.P13653861315425435614

`A008683(A027748(n+2))+A028310(A130280(n+1))²`
-/

namespace A084702.P13653861315425435614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A027748 (n + 2)).toNat + A028310 (A130280 (n + 1)).toNat ^ 2

end

end A084702.P13653861315425435614

/-! ## A084702.P16045082487200952238

`A008683(A002148(n))+A028310(A130280(n+1))²`
-/

namespace A084702.P16045082487200952238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + A028310 (A130280 (n + 1)).toNat ^ 2

end

end A084702.P16045082487200952238

/-!
# A084703: Squares k such that 2*k+1 is also a square.

The programs for A084703, the canonical program `A084703.P2278992724606111080` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084703 has offset 0).

The definition of A084703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084703.P5551155616204969264

`((17+12*sqrt(2))^n+(17-12*sqrt(2))^n-2)/8`
-/

namespace A084703.P5551155616204969264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((17 + 12 * Real.sqrt (2 : ℝ)) ^ n + (17 - 12 * Real.sqrt (2 : ℝ)) ^ n - 2) / 8

end

end A084703.P5551155616204969264

namespace A084703

/-- `((17+12*sqrt(2))^n+(17-12*sqrt(2))^n-2)/8` -/
def P5551155616204969264.Spec : Prop :=
  ∀ n, P5551155616204969264.a n = (A084703 n : ℝ)

end A084703

/-! ## A084703.P2278992724606111080

`A001542(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084703

/-- `A001542(n)²` -/
def P2278992724606111080.Spec : Prop :=
  ∀ n, P2278992724606111080.a n = A084703 n

theorem P2278992724606111080.correct : P2278992724606111080.Spec := by
  intro n
  simp only [A084703]

end A084703

/-! ## A084703.P1706619249358440327

`A079291(2*n)`
-/

namespace A084703.P1706619249358440327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 (2 * n)

end

end A084703.P1706619249358440327

namespace A084703

/-- `A079291(2*n)` -/
def P1706619249358440327.Spec : Prop :=
  ∀ n, P1706619249358440327.a n = A084703 n

end A084703

/-! ## A084703.P1414174965608660606

`4*A001110(n)`
-/

namespace A084703.P1414174965608660606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001110 n

end

end A084703.P1414174965608660606

namespace A084703

/-- `4*A001110(n)` -/
def P1414174965608660606.Spec : Prop :=
  ∀ n, P1414174965608660606.a n = A084703 n

end A084703

/-! ## A084703.P8160088726350933320

`4*A001109(n)²`
-/

namespace A084703.P8160088726350933320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001109 n ^ 2

end

end A084703.P8160088726350933320

namespace A084703

/-- `4*A001109(n)²` -/
def P8160088726350933320.Spec : Prop :=
  ∀ n, P8160088726350933320.a n = A084703 n

end A084703

/-! ## A084703.P3534949625363819480

`(2*A001333(n)*A000129(n))²`
-/

namespace A084703.P3534949625363819480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001333 n * A000129 n) ^ 2

end

end A084703.P3534949625363819480

namespace A084703

/-- `(2*A001333(n)*A000129(n))²` -/
def P3534949625363819480.Spec : Prop :=
  ∀ n, P3534949625363819480.a n = A084703 n

end A084703

/-! ## A084703.P2467211937550801286

`∑[floor(a(n-1)/(3-sqrt(8)))]²` with `a(0)=0, a(1)=2, a(2)=10`
-/

namespace A084703.P2467211937550801286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A084703.P2467211937550801286

namespace A084703

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]²` -/
def P2467211937550801286.Spec : Prop :=
  ∀ n, P2467211937550801286.a n = A084703 n

end A084703

/-! ## A084703.P17001764810844727490

`∑[round(a(n-1)/(3-sqrt(8)))]²` with `a(0)=0, a(1)=2, a(2)=10`
-/

namespace A084703.P17001764810844727490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A084703.P17001764810844727490

namespace A084703

/-- `∑[round(a(n-1)/(3-sqrt(8)))]²` -/
def P17001764810844727490.Spec : Prop :=
  ∀ n, P17001764810844727490.a n = A084703 n

end A084703

/-! ## A084703.P15740557502358456685

`∑[6*a(n-1)-a(n-2)]²` with `a(0)=0, a(1)=2, a(2)=10`
-/

namespace A084703.P15740557502358456685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A084703.P15740557502358456685

namespace A084703

/-- `∑[6*a(n-1)-a(n-2)]²` -/
def P15740557502358456685.Spec : Prop :=
  ∀ n, P15740557502358456685.a n = A084703 n

end A084703

/-! ## A084703.P4980225206138103915

`(6*sqrt(a(n-1))-sqrt(a(n-2)))²` with `a(0)=0, a(1)=4`
-/

namespace A084703.P4980225206138103915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n a =>
  (6 * Real.sqrt (a (n - 1)) - Real.sqrt (a (n - 2))) ^ 2

end

end A084703.P4980225206138103915

namespace A084703

/-- `(6*sqrt(a(n-1))-sqrt(a(n-2)))²` -/
def P4980225206138103915.Spec : Prop :=
  ∀ n, P4980225206138103915.a n = (A084703 n : ℝ)

end A084703

/-!
# A084704: Smallest prime p > prime(n) such that (p + prime(n))/2 is prime.

The programs for A084704, there is no canonical definition to state claims against.
-/

/-! ## A084704.P17742632130385919333

`A000040(n+2)+2*A120627(n+2)`
-/

namespace A084704.P17742632130385919333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2 * A120627 (n + 2)

end

end A084704.P17742632130385919333

/-! ## A084704.P9284473246532590937

`A165138(n+2)`
-/

namespace A084704.P9284473246532590937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165138 (n + 2)

end

end A084704.P9284473246532590937

/-! ## A084704.P8494689075570793748

`A165138(A103517(n)-n)%A017655(n)`
-/

namespace A084704.P8494689075570793748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165138 (A103517 n - (n : ℤ)).toNat) (A017655 n)

end

end A084704.P8494689075570793748

/-! ## A084704.P2593272841352742359

`or(A025456(n), A165138(A103517(n)-n))`
-/

namespace A084704.P2593272841352742359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 n) (A165138 (A103517 n - (n : ℤ)).toNat)

end

end A084704.P2593272841352742359

/-! ## A084704.P7894424912265175949

`or(A130706(2*n), A165138(A103517(n)-n))`
-/

namespace A084704.P7894424912265175949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130706 (2 * n)) (A165138 (A103517 n - (n : ℤ)).toNat)

end

end A084704.P7894424912265175949

/-! ## A084704.P9425661424949633321

`A007318(or(3, n)-n)*A165138(A103517(n)-n)`
-/

namespace A084704.P9425661424949633321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.lor 3 n - n) * A165138 (A103517 n - (n : ℤ)).toNat

end

end A084704.P9425661424949633321

/-!
# A084707: a(n) = 3*a(n-1) - 3*a(n-3) + a(n-4) for n > 3, with a(0) = 1, a(1) = 3, a(2) = 9, a(3) = 27.

The programs for A084707, the canonical program `A084707.P5434852081249988664` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084707 has offset 0).

The definition of A084707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-3)+a(n-4)` (program `A084707.P5434852081249988664`, by `A084707.P5434852081249988664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084707.P5434852081249988664

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084707

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P5434852081249988664.Spec : Prop :=
  ∀ n, P5434852081249988664.a n = A084707 n

theorem P5434852081249988664.correct : P5434852081249988664.Spec := by
  intro n
  simp only [A084707]

end A084707

/-! ## A084707.P7222807164505181415

`floor((A000032(2*n)-1)*8/5)`
-/

namespace A084707.P7222807164505181415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (2 * n) - 1) * 8 : ℚ) / 5⌋

end

end A084707.P7222807164505181415

namespace A084707

/-- `floor((A000032(2*n)-1)*8/5)` -/
def P7222807164505181415.Spec : Prop :=
  ∀ n, P7222807164505181415.a n = A084707 n

end A084707

/-! ## A084707.P5816069328242996041

`ogf((1+3x^3)/(1-3x+3x^3-x^4))`
-/

namespace A084707.P5816069328242996041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 3] [1, -3, 0, 3, -1] n

end

end A084707.P5816069328242996041

namespace A084707

/-- `ogf((1+3x^3)/(1-3x+3x^3-x^4))` -/
def P5816069328242996041.Spec : Prop :=
  ∀ n, P5816069328242996041.a n = A084707 n

end A084707

/-! ## A084707.P16743933204366461011

`3*a(n-1)+a(n-2)%4-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A084707.P16743933204366461011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + (Int.tmod (a (n - 2)) 4 - a (n - 2))

end

end A084707.P16743933204366461011

namespace A084707

/-- `3*a(n-1)+a(n-2)%4-a(n-2)` -/
def P16743933204366461011.Spec : Prop :=
  ∀ n, P16743933204366461011.a n = A084707 n

end A084707

/-! ## A084707.P13615741940069866427

`2*A038990(n)-1`
-/

namespace A084707.P13615741940069866427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038990 n - 1

end

end A084707.P13615741940069866427

namespace A084707

/-- `2*A038990(n)-1` -/
def P13615741940069866427.Spec : Prop :=
  ∀ n, P13615741940069866427.a n = A084707 n

end A084707

/-! ## A084707.P1588608683788737513

`a(n-1)+2*A061647(n)` with `a(0)=1`
-/

namespace A084707.P1588608683788737513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A061647 n

end

end A084707.P1588608683788737513

namespace A084707

/-- `a(n-1)+2*A061647(n)` -/
def P1588608683788737513.Spec : Prop :=
  ∀ n, P1588608683788737513.a n = A084707 n

end A084707

/-! ## A084707.P1061391997231122211

`A099016(n)+A004146(n)`
-/

namespace A084707.P1061391997231122211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n + A004146 n

end

end A084707.P1061391997231122211

namespace A084707

/-- `A099016(n)+A004146(n)` -/
def P1061391997231122211.Spec : Prop :=
  ∀ n, P1061391997231122211.a n = A084707 n

end A084707

/-! ## A084707.P1919122736529755239

`A005248(n)+A099016(n)-2`
-/

namespace A084707.P1919122736529755239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + (A099016 n - 2)

end

end A084707.P1919122736529755239

namespace A084707

/-- `A005248(n)+A099016(n)-2` -/
def P1919122736529755239.Spec : Prop :=
  ∀ n, P1919122736529755239.a n = A084707 n

end A084707

/-! ## A084707.P3332457871946582993

`A295687(2*n)+A004146(n)`
-/

namespace A084707.P3332457871946582993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 (2 * n) + A004146 n

end

end A084707.P3332457871946582993

namespace A084707

/-- `A295687(2*n)+A004146(n)` -/
def P3332457871946582993.Spec : Prop :=
  ∀ n, P3332457871946582993.a n = A084707 n

end A084707

/-! ## A084707.P8335710308809202480

`A295681(2*n+1)+A000032(2*n)-2`
-/

namespace A084707.P8335710308809202480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (2 * n + 1) + (A000032 (2 * n) - 2)

end

end A084707.P8335710308809202480

namespace A084707

/-- `A295681(2*n+1)+A000032(2*n)-2` -/
def P8335710308809202480.Spec : Prop :=
  ∀ n, P8335710308809202480.a n = A084707 n

end A084707

/-! ## A084707.P9290426511230201913

`A295671(2*n)+2*A000071(2*n+1)`
-/

namespace A084707.P9290426511230201913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * n) + 2 * A000071 (2 * n + 1)

end

end A084707.P9290426511230201913

namespace A084707

/-- `A295671(2*n)+2*A000071(2*n+1)` -/
def P9290426511230201913.Spec : Prop :=
  ∀ n, P9290426511230201913.a n = A084707 n

end A084707

/-!
# A084708: Number of set partitions up to rotations and reflections.

The programs for A084708, there is no canonical definition to state claims against.
-/

/-! ## A084708.P14332480874637011846

`(A080107(n+1)+A084423(n+1))/2`
-/

namespace A084708.P14332480874637011846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080107 (n + 1) + A084423 (n + 1) : ℚ) / 2

end

end A084708.P14332480874637011846

/-! ## A084708.P14226605058322528094

`A320749(n+1)+A080107(n+1)`
-/

namespace A084708.P14226605058322528094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320749 (n + 1) + A080107 (n + 1)

end

end A084708.P14226605058322528094

/-! ## A084708.P11512193302041856862

`A084423(n+1)-A320749(n+1)`
-/

namespace A084708.P11512193302041856862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084423 (n + 1) - A320749 (n + 1)

end

end A084708.P11512193302041856862

/-! ## A084708.P13273611057213651823

`A320748(A058331(n))+A057427(n)`
-/

namespace A084708.P13273611057213651823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (A058331 n).toNat + A057427 n

end

end A084708.P13273611057213651823

/-! ## A084708.P16868566642315452681

`A320748(2*(n+1)²)`
-/

namespace A084708.P16868566642315452681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (2 * (n + 1) ^ 2)

end

end A084708.P16868566642315452681

/-!
# A084709: a(1) = 4, for n > 1, a(n) = smallest multiple of a(n-1) such that a(n)-1 and a(n)+1 are twin primes.

The programs for A084709, there is no canonical definition to state claims against.
-/

/-! ## A084709.P4914414798713737166

`2*∏[A036014(n+2)]`
-/

namespace A084709.P4914414798713737166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A084709.P4914414798713737166

/-! ## A084709.P16117502403393464813

`∏[∏{e}[A204270(2*(n+2)), #]]`
-/

namespace A084709.P16117502403393464813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204270 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084709.P16117502403393464813

/-!
# A084711: -21*zeta_K(-1), where K runs through the simplest cubic fields.

The programs for A084711, there is no canonical definition to state claims against.
-/

/-! ## A084711.P12038118846361913937

`7*A284797(a(n-1))` with `a(0)=1`
-/

namespace A084711.P12038118846361913937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * A284797 (a (n - 1)).toNat

end

end A084711.P12038118846361913937

/-!
# A084712: Smallest prime of the form (2n)^k + 1, or 0 if no such number exists.

The programs for A084712, there is no canonical definition to state claims against.
-/

/-! ## A084712.P13634067435493202779

`A061397((2*(n+1))^A027113(n+1)+1)`
-/

namespace A084712.P13634067435493202779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) ^ (A027113 (n + 1) : ℤ) + 1)).toNat

end

end A084712.P13634067435493202779

/-!
# A084715: Smallest number of the form n*k + 1 that is divisible by all the phi(n) numbers less than n and relatively prime to n.

The programs for A084715, there is no canonical definition to state claims against.
-/

/-! ## A084715.P3686323251360170835

`A344176(A116715(n+1)+1)+1`
-/

namespace A084715.P3686323251360170835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344176 (A116715 (n + 1) + 1).toNat + 1

end

end A084715.P3686323251360170835

/-! ## A084715.P8634149939200828952

`A343066(A215928(n))-A288321(n)`
-/

namespace A084715.P8634149939200828952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343066 (A215928 n).toNat - A288321 n

end

end A084715.P8634149939200828952

/-!
# A084716: a(1) = 1, a(n) = smallest multiple of a(n-1) > a(n-1) such that a(n) + 1 is a prime.

The programs for A084716, there is no canonical definition to state claims against.
-/

/-! ## A084716.P9012730777733435454

`A057999(n)-1`
-/

namespace A084716.P9012730777733435454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n - 1

end

end A084716.P9012730777733435454

/-! ## A084716.P5474510872084493602

`∏[A084401(n+1)]`
-/

namespace A084716.P5474510872084493602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084716.P5474510872084493602

/-! ## A084716.P17453884519638905197

`a(n-1)*A036012(n)` with `a(0)=1`
-/

namespace A084716.P17453884519638905197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A036012 n

end

end A084716.P17453884519638905197

/-! ## A084716.P12791106985517359939

`∏[A036012(round(acot(n)+n))]/2`
-/

namespace A084716.P12791106985517359939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A084716.P12791106985517359939

/-! ## A084716.P14397329878732503020

`∏[A036012(abs(1-n)+1)]/2`
-/

namespace A084716.P14397329878732503020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A084716.P14397329878732503020

/-! ## A084716.P12410018145163182967

`∏[A036012(A028310(n))-A000007(n)]`
-/

namespace A084716.P12410018145163182967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084716.P12410018145163182967

/-!
# A084717: a(1) = 3 then a(n) = smallest multiple of a(n-1) > a(n-1) such that a(n) - 1 is a prime.

The programs for A084717, there is no canonical definition to state claims against.
-/

/-! ## A084717.P15200212690697767632

`∏[A084402(n+1)]`
-/

namespace A084717.P15200212690697767632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084717.P15200212690697767632

/-! ## A084717.P14515217500022086106

`A084403(n+1)+1`
-/

namespace A084717.P14515217500022086106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084403 (n + 1) + 1

end

end A084717.P14515217500022086106

/-! ## A084717.P14470846175057031532

`a(n-1)*A084718(n)` with `a(0)=3`
-/

namespace A084717.P14470846175057031532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A084718 n

end

end A084717.P14470846175057031532

/-! ## A084717.P15260498728335499409

`∏[A036013(A178915(n+1))]`
-/

namespace A084717.P15260498728335499409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (A178915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084717.P15260498728335499409

/-! ## A084717.P2785046732105721552

`A166926(n)+∏[A036013(n+1)]`
-/

namespace A084717.P2785046732105721552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084717.P2785046732105721552

/-! ## A084717.P9514444657801356207

`A058000(n+1)+A166926(n)+1`
-/

namespace A084717.P9514444657801356207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058000 (n + 1) + (A166926 n + 1)

end

end A084717.P9514444657801356207

/-!
# A084718: a(n) = A084717(n+1)/A084717(n).

The programs for A084718, there is no canonical definition to state claims against.
-/

/-! ## A084718.P12172050524931173187

`A084717(n+2)/A084717(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084718.P12172050524931173187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084717 (n + 2) : ℚ) / (A084717 (n + 1) : ℚ)

end

end A084718.P12172050524931173187

/-! ## A084718.P10336005742082156883

`A084402(n+2)`
-/

namespace A084718.P10336005742082156883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (n + 2)

end

end A084718.P10336005742082156883

/-! ## A084718.P10618706464757306206

`A036013(char[2]+2+n)`
-/

namespace A084718.P10618706464757306206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 ((if ∃ j, f1 j = n then 1 else 0) + 2 + n)

end

end A084718.P10618706464757306206

/-! ## A084718.P10140534379871780603

`A036013(n+2)-A154281(n+2)`
-/

namespace A084718.P10140534379871780603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (n + 2) - A154281 (n + 2)

end

end A084718.P10140534379871780603

/-! ## A084718.P5122891329887924257

`abs(1-A036013(A178915(n+2)))+1`
-/

namespace A084718.P5122891329887924257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036013 (A178915 (n + 2)).toNat| + 1

end

end A084718.P5122891329887924257

/-! ## A084718.P5260174566447297527

`A007318(C(2, n+2))*A036013(A178915(n+2))`
-/

namespace A084718.P5260174566447297527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A036013 (A178915 (n + 2)).toNat

end

end A084718.P5260174566447297527

/-! ## A084718.P8761357847761254605

`A143259(A133263(n+1))+A036013(n+2)`
-/

namespace A084718.P8761357847761254605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A133263 (n + 1)).toNat + A036013 (n + 2)

end

end A084718.P8761357847761254605

/-! ## A084718.P8813221591036821260

`ratio[A084717(n+1)]`
-/

namespace A084718.P8813221591036821260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084717 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A084718.P8813221591036821260

/-! ## A084718.P11304538659599760371

`floor(ratio[A084403(n+1)])`
-/

namespace A084718.P11304538659599760371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A084718.P11304538659599760371

/-! ## A084718.P9249663401908835761

`ratio[-∏[A036013(A178915(n+1))]]`
-/

namespace A084718.P9249663401908835761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (A178915 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A084718.P9249663401908835761

/-!
# A084720: Primes p such that p+1 is a product of two or more consecutive integers.

The programs for A084720, there is no canonical definition to state claims against.
-/

/-! ## A084720.P16818467935475275475

`p?[A045619(n+1)-1]`
-/

namespace A084720.P16818467935475275475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084720.P16818467935475275475

/-! ## A084720.P3619101251034644155

`p?[abs(A045619(ϕ²-(ϕ-n))-1)]`
-/

namespace A084720.P3619101251034644155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045619 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084720.P3619101251034644155

/-! ## A084720.P8733253698375125483

`record[A006530(A045619(n+3)-1)]`
-/

namespace A084720.P8733253698375125483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045619 (n + 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084720.P8733253698375125483

/-! ## A084720.P8437282516819176185

`record[A020639(A045619(n+3)-1)]`
-/

namespace A084720.P8437282516819176185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045619 (n + 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084720.P8437282516819176185

/-! ## A084720.P376391076438907042

`p?[lt[A345708(n+1), n]]`
-/

namespace A084720.P376391076438907042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345708 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084720.P376391076438907042

/-!
# A084721: Primes arising in A083569.

The programs for A084721, there is no canonical definition to state claims against.
-/

/-! ## A084721.P6258331319699503577

`n+1+A083569(n+1)`
-/

namespace A084721.P6258331319699503577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A083569 (n + 1)

end

end A084721.P6258331319699503577

/-! ## A084721.P9067102824078382040

`p?[A083569(A028310(n))+n]`
-/

namespace A084721.P9067102824078382040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083569 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084721.P9067102824078382040

/-! ## A084721.P16545929790890349973

`A004482(A083569(n+1)+n)`
-/

namespace A084721.P16545929790890349973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P16545929790890349973

/-! ## A084721.P7522865885109785596

`A007918(A083569(n+1)+n)`
-/

namespace A084721.P7522865885109785596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P7522865885109785596

/-! ## A084721.P10825429096196637775

`A020725(A083569(n+1)+n)`
-/

namespace A084721.P10825429096196637775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P10825429096196637775

/-! ## A084721.P13906702507849489094

`A034694(A083569(n+1)+n)`
-/

namespace A084721.P13906702507849489094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P13906702507849489094

/-! ## A084721.P632612796330680680

`A059843(A083569(n+1)+n)`
-/

namespace A084721.P632612796330680680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P632612796330680680

/-! ## A084721.P9131810263359752197

`A060474(A083569(n+1)+n)`
-/

namespace A084721.P9131810263359752197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060474 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P9131810263359752197

/-! ## A084721.P554554910063565710

`A086507(A083569(n+1)+n)`
-/

namespace A084721.P554554910063565710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A083569 (n + 1) + (n : ℤ)).toNat

end

end A084721.P554554910063565710

/-!
# A084723: Primes arising in A083566. a(n) = n-th partial product of A083566 + 2.

The programs for A084723, there is no canonical definition to state claims against.
-/

/-! ## A084723.P8058553600367566535

`∏[A083566(n+1)]+2`
-/

namespace A084723.P8058553600367566535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A084723.P8058553600367566535

/-! ## A084723.P11756856876454290075

`∏[A073674(n+1)*A202671(A000217(n+2))]+2`
-/

namespace A084723.P11756856876454290075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073674 (n + 1) * A202671 (A000217 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A084723.P11756856876454290075

/-!
# A084724: Beginning with 2, the smallest even number greater than the previous term such that every partial product + 1 is a prime.

The programs for A084724, there is no canonical definition to state claims against.
-/

/-! ## A084724.P12286607026012037622

`∑[gcd(20, A066012(2*n+5))]`
-/

namespace A084724.P12286607026012037622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 20 (A066012 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084724.P12286607026012037622

/-! ## A084724.P14563245715415763616

`lt[6, A230107(A001370(n))]`
-/

namespace A084724.P14563245715415763616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230107 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084724.P14563245715415763616

/-! ## A084724.P1073199851380216327

`lt[A079125(n+5), A006530(A005897(n))]`
-/

namespace A084724.P1073199851380216327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079125 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084724.P1073199851380216327

/-! ## A084724.P993529124495345184

`∑[A061393(A212661(n+3)+A000984(n))]`
-/

namespace A084724.P993529124495345184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A212661 (n + 3) + A000984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084724.P993529124495345184

/-!
# A084725: Primes arising in A084724. a(n) = N-th partial product of A084724 +1.

The programs for A084725, there is no canonical definition to state claims against.
-/

/-! ## A084725.P16801584502655932814

`∏[A084724(n+1)]+1`
-/

namespace A084725.P16801584502655932814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084725.P16801584502655932814

/-! ## A084725.P6655550204921727575

`∏[∑[gcd(20, A066012(2*n+5))]]+1`
-/

namespace A084725.P6655550204921727575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 20 (A066012 (2 * n + 5))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084725.P6655550204921727575

/-! ## A084725.P6291845167887612879

`∏[lt[6, A230107(A001370(n))]]+1`
-/

namespace A084725.P6291845167887612879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230107 (A001370 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084725.P6291845167887612879

/-!
# A084728: a(n) = smallest multiple of n such that a(1)*a(2)*...*a(n) + 1 is a prime.

The programs for A084728, there is no canonical definition to state claims against.
-/

/-! ## A084728.P2366484810065260159

`A001222(A135153(3*n+4))*A037124(n+1)`
-/

namespace A084728.P2366484810065260159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135153 (3 * n + 4)).toNat * A037124 (n + 1)

end

end A084728.P2366484810065260159

/-! ## A084728.P15157472383631528650

`A001222(A135153(3*n+4))*A087471(n+1)`
-/

namespace A084728.P15157472383631528650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135153 (3 * n + 4)).toNat * A087471 (n + 1)

end

end A084728.P15157472383631528650

/-! ## A084728.P11228025506836621258

`A001222(A135153(3*n+4))*A108548(n+1)`
-/

namespace A084728.P11228025506836621258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135153 (3 * n + 4)).toNat * A108548 (n + 1)

end

end A084728.P11228025506836621258

/-! ## A084728.P3241416817477900257

`A001222(A135153(3*n+4))*A357936(n+1)`
-/

namespace A084728.P3241416817477900257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135153 (3 * n + 4)).toNat * A357936 (n + 1)

end

end A084728.P3241416817477900257

/-!
# A084729: Primes arising in A084728.

The programs for A084729, there is no canonical definition to state claims against.
-/

/-! ## A084729.P9580362082850347041

`∏[A084728(n+1)]+1`
-/

namespace A084729.P9580362082850347041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084729.P9580362082850347041

/-! ## A084729.P7623294506430747571

`∏[A001222(A135153(3*n+4))*A108548(n+1)]+1`
-/

namespace A084729.P7623294506430747571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135153 (3 * n + 4)).toNat * A108548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084729.P7623294506430747571

/-!
# A084730: Smallest prime of the form k*n! - 1.

The programs for A084730, there is no canonical definition to state claims against.
-/

/-! ## A084730.P8714622456971974743

`A038700((n+1)!)`
-/

namespace A084730.P8714622456971974743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (Nat.factorial (n + 1))

end

end A084730.P8714622456971974743

/-! ## A084730.P5177008573494983225

`A093868((n+1)!)`
-/

namespace A084730.P5177008573494983225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (Nat.factorial (n + 1))

end

end A084730.P5177008573494983225

/-! ## A084730.P11611739285266985369

`A038700(∏[n+1])`
-/

namespace A084730.P11611739285266985369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A084730.P11611739285266985369

/-!
# A084732: Let p be the n-th prime; Cp(x) be the p-th cyclotomic polynomial (x^p-1)/(x-1); a(n) is the first prime Cp(x) after Cp(1).

The programs for A084732, there is no canonical definition to state claims against.
-/

/-! ## A084732.P1096577445648681563

`A085399(A000040(n+1))`
-/

namespace A084732.P1096577445648681563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085399 (A000040 (n + 1)).toNat

end

end A084732.P1096577445648681563

/-! ## A084732.P1353112900555575805

`A085399(record[A036262(n)])`
-/

namespace A084732.P1353112900555575805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084732.P1353112900555575805

/-! ## A084732.P307881998633492295

`A085399(record[A006530(n+2)])`
-/

namespace A084732.P307881998633492295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084732.P307881998633492295

/-! ## A084732.P16713820728209350412

`A085399(record[A014963(n+2)])`
-/

namespace A084732.P16713820728209350412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084732.P16713820728209350412

/-! ## A084732.P5655107729303120052

`A085399(record[A020639(n+2)])`
-/

namespace A084732.P5655107729303120052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084732.P5655107729303120052

/-!
# A084733: Squares which are the sum of at least three successive terms of a geometric progression.

The programs for A084733, there is no canonical definition to state claims against.
-/

/-! ## A084733.P15904025176615841365

`∩[A376298(n+1), n²]`
-/

namespace A084733.P15904025176615841365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376298 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A084733.P15904025176615841365

/-! ## A084733.P236310884615144215

`∩[A000290(n), A376298(n+1)]`
-/

namespace A084733.P236310884615144215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084733.P236310884615144215

/-! ## A084733.P5123007962615966942

`∩[A188915(n), A376298(n+1)]`
-/

namespace A084733.P5123007962615966942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084733.P5123007962615966942

/-! ## A084733.P7827668615932522813

`∩[A085960(n+1), A376298(n+1)]`
-/

namespace A084733.P7827668615932522813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084733.P7827668615932522813

/-! ## A084733.P7071594350888786106

`∩[A179126(n+1), A376298(n+1)]`
-/

namespace A084733.P7071594350888786106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084733.P7071594350888786106

/-! ## A084733.P5756228524913949072

`∩[A347535(n+1), A376298(n+1)]`
-/

namespace A084733.P5756228524913949072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084733.P5756228524913949072

/-!
# A084735: Let p = n-th prime, let q = smallest prime having p as its least prime primitive root; sequence gives least (not necessarily prime) primitive root of q.

The programs for A084735, there is no canonical definition to state claims against.
-/

/-! ## A084735.P11217377438013298667

`A001918(A000720(A084739(n+1)))`
-/

namespace A084735.P11217377438013298667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (A000720 (A084739 (n + 1)).toNat).toNat

end

end A084735.P11217377438013298667

/-! ## A084735.P7862811708941287829

`A001918(∑{d}[A084739(n+1), A061395(#)])`
-/

namespace A084735.P7862811708941287829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A084735.P7862811708941287829

/-! ## A084735.P15078019955069535229

`A001918(∏{p}[A084739(n+1), A061395(#)])`
-/

namespace A084735.P15078019955069535229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A084735.P15078019955069535229

/-! ## A084735.P3537040386439090276

`A046145(A084739(n+1))`
-/

namespace A084735.P3537040386439090276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A084739 (n + 1)).toNat

end

end A084735.P3537040386439090276

/-!
# A084736: a(1) = 2, a(2) = 3; for n > 0, a(n+2) is the smallest prime chosen so that (a(n+2) - a(n+1))/(a(n+1) - a(n)) is an integer.

The programs for A084736, there is no canonical definition to state claims against.
-/

/-! ## A084736.P10618002937994735154

`p?[∑[∏[A322286(3*(n+1))]]]`
-/

namespace A084736.P10618002937994735154
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084736.P10618002937994735154

/-! ## A084736.P1410095925087597433

`p?[∑[A000010(A180272(n))]]`
-/

namespace A084736.P1410095925087597433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A180272 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084736.P1410095925087597433

/-! ## A084736.P7283918875900027832

`p?[∑[A000010(A048071(n+1)+1)]+1]`
-/

namespace A084736.P7283918875900027832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048071 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084736.P7283918875900027832

/-!
# A084737: Beginning with 1, numbers such that (a(n+2)-a(n+1))/(a(n+1)-a(n)) = prime(n).

The programs for A084737, there is no canonical definition to state claims against.
-/

/-! ## A084737.P6877997579779301775

`∑[A096334(C(n, 2))]`
-/

namespace A084737.P6877997579779301775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084737.P6877997579779301775

/-! ## A084737.P1211236839769024877

`∑[A121281(C(n, 2))]`
-/

namespace A084737.P1211236839769024877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084737.P1211236839769024877

/-! ## A084737.P15964161739807565992

`record[A346105(n+1)+1]`
-/

namespace A084737.P15964161739807565992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084737.P15964161739807565992

/-! ## A084737.P3193247423680516903

`a(n-1)+A002110(n-1)` with `a(0)=1`
-/

namespace A084737.P3193247423680516903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A002110 (n - 1)

end

end A084737.P3193247423680516903

/-! ## A084737.P9588268308909274950

`∑[a(n-1)*A000040(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A084737.P9588268308909274950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) * A000040 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084737.P9588268308909274950

/-! ## A084737.P18302516634463719437

`∑[A121281(∑[n]+n)]`
-/

namespace A084737.P18302516634463719437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084737.P18302516634463719437

/-! ## A084737.P7468785284897893199

`A006862(n)-A392860(n)`
-/

namespace A084737.P7468785284897893199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n - A392860 n

end

end A084737.P7468785284897893199

/-! ## A084737.P6557751430985277906

`A143293(n)+1-A002110(n)`
-/

namespace A084737.P6557751430985277906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n + (1 - A002110 n)

end

end A084737.P6557751430985277906

/-! ## A084737.P14317843062218200572

`∑[A002110(n)/A008578(n+1)]`
-/

namespace A084737.P14317843062218200572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A008578 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084737.P14317843062218200572

/-! ## A084737.P6621238766029608941

`∑[∏[A015919(n+1)]/A015919(n+1)]`
-/

namespace A084737.P6621238766029608941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A015919 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084737.P6621238766029608941

/-!
# A084738: Smallest prime of the form (n^k-1)/(n-1), or 0 if no such prime exists.

The programs for A084738, there is no canonical definition to state claims against.
-/

/-! ## A084738.P2124272154773086434

`p?[A264740(A160449(n)²)]`
-/

namespace A084738.P2124272154773086434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264740 (A160449 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084738.P2124272154773086434

/-!
# A084739: Let p = n-th prime, then a(n) = smallest prime having p as its least prime primitive root.

The programs for A084739, there is no canonical definition to state claims against.
-/

/-! ## A084739.P1324988625692508914

`∑{p}[A133434(n+1)², #]`
-/

namespace A084739.P1324988625692508914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133434 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084739.P1324988625692508914

/-! ## A084739.P7832903586176127684

`A133434(C(n+1, gcd(n, ∑[n]²)))`
-/

namespace A084739.P7832903586176127684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133434 (Nat.choose (n + 1) (Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)))

end

end A084739.P7832903586176127684

/-!
# A084740: Least k such that (n^k-1)/(n-1) is prime, or 0 if no such prime exists.

The programs for A084740, there is no canonical definition to state claims against.
-/

/-! ## A084740.P17748156722183356726

`A360738(n+2)+1`
-/

namespace A084740.P17748156722183356726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360738 (n + 2) + 1

end

end A084740.P17748156722183356726

/-!
# A084742: Least k such that (n^k+1)/(n+1) is prime, or 0 if no such prime exists.

The programs for A084742, there is no canonical definition to state claims against.
-/

/-! ## A084742.P13145574559821818800

`A084741(n+2)%(A028310(n)+3)`
-/

namespace A084742.P13145574559821818800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084741 (n + 2)) (A028310 n + 3)

end

end A084742.P13145574559821818800

/-!
# A084744: Product of all composite numbers from 1 to the n-th nonprime number divided by product of all the prime divisors of each of those composite numbers which exceed the previously stated value.

The programs for A084744, the canonical program `A084744.P4104311271369201504` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084744 has offset 1).

The definition of A084744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084744.P6347526049760709875

`a(n-1)*A084936(n)` with `a(0)=1`
-/

namespace A084744.P6347526049760709875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A084936 n

end

end A084744.P6347526049760709875

namespace A084744

/-- `a(n-1)*A084936(n)` -/
def P6347526049760709875.Spec : Prop :=
  ∀ n, P6347526049760709875.a n = A084744 (n + 1)

end A084744

/-! ## A084744.P4104311271369201504

`record[and(1-n, A085056(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084744

/-- `record[and(1-n, A085056(n+1))]` -/
def P4104311271369201504.Spec : Prop :=
  ∀ n, P4104311271369201504.a n = A084744 (n + 1)

theorem P4104311271369201504.correct : P4104311271369201504.Spec := by
  intro n
  simp only [A084744, Nat.add_sub_cancel]

end A084744

/-! ## A084744.P12802835467628278853

`record[A085056(ceil(C(or(1, n), n)/2))]`
-/

namespace A084744.P12802835467628278853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084744.P12802835467628278853

namespace A084744

/-- `record[A085056(ceil(C(or(1, n), n)/2))]` -/
def P12802835467628278853.Spec : Prop :=
  ∀ n, P12802835467628278853.a n = A084744 (n + 1)

end A084744

/-! ## A084744.P4561408349914913041

`A085056(lt[0, floor(n/∏{p}[n+1, #])])`
-/

namespace A084744.P4561408349914913041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084744.P4561408349914913041

namespace A084744

/-- `A085056(lt[0, floor(n/∏{p}[n+1, #])])` -/
def P4561408349914913041.Spec : Prop :=
  ∀ n, P4561408349914913041.a n = A084744 (n + 1)

end A084744

/-! ## A084744.P12510146024819640813

`record[A085056(A117910(n))]`
-/

namespace A084744.P12510146024819640813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084744.P12510146024819640813

namespace A084744

/-- `record[A085056(A117910(n))]` -/
def P12510146024819640813.Spec : Prop :=
  ∀ n, P12510146024819640813.a n = A084744 (n + 1)

end A084744

/-! ## A084744.P5592404140099518676

`A085056(A162966(n+1))`
-/

namespace A084744.P5592404140099518676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 (A162966 (n + 1)).toNat

end

end A084744.P5592404140099518676

namespace A084744

/-- `A085056(A162966(n+1))` -/
def P5592404140099518676.Spec : Prop :=
  ∀ n, P5592404140099518676.a n = A084744 (n + 1)

end A084744

/-!
# A084745: Smallest prime of the form n^k - k, or 0 if no such prime exists.

The programs for A084745, there is no canonical definition to state claims against.
-/

/-! ## A084745.P7236027664112174597

`(n+2)^A084746(n+2)-A084746(n+2)`
-/

namespace A084745.P7236027664112174597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A084746 (n + 2) : ℤ) - (A084746 (n + 2) : ℚ)

end

end A084745.P7236027664112174597

/-! ## A084745.P11603657103394808829

`A051698(A065475(n+1)^A175851(n+1))`
-/

namespace A084745.P11603657103394808829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.roundAway ((A065475 (n + 1) : ℚ) ^ (A175851 (n + 1) : ℤ))).toNat

end

end A084745.P11603657103394808829

/-! ## A084745.P9430642229900916519

`A051698(A065475(n+1)^A084746(n+2))`
-/

namespace A084745.P9430642229900916519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.roundAway ((A065475 (n + 1) : ℚ) ^ (A084746 (n + 2) : ℤ))).toNat

end

end A084745.P9430642229900916519

/-!
# A084746: Smallest k such that n^k - k is a prime, or 0 if no such number exists.

The programs for A084746, there is no canonical definition to state claims against.
-/

/-! ## A084746.P6633382776686285208

`gcd(A060968(A245910(n)+1), A252745(n+1))`
-/

namespace A084746.P6633382776686285208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060968 (A245910 n + 1).toNat) (A252745 (n + 1))

end

end A084746.P6633382776686285208

/-! ## A084746.P10293090220708087144

`gcd(A047841(n+1), A117514(A303432(2*n+5)))`
-/

namespace A084746.P10293090220708087144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047841 (n + 1)) (A117514 (A303432 (2 * n + 5)).toNat)

end

end A084746.P10293090220708087144

/-! ## A084746.P10421216185268696428

`A000190(xor(14, A081253(n+1)))`
-/

namespace A084746.P10421216185268696428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (Int.xor 14 (A081253 (n + 1))).toNat

end

end A084746.P10421216185268696428

/-! ## A084746.P9160453128273622586

`A003557(xor(14, A081253(n+1)))`
-/

namespace A084746.P9160453128273622586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.xor 14 (A081253 (n + 1))).toNat

end

end A084746.P9160453128273622586

/-!
# A084747: Leading diagonal of triangle (shown below) in which row n lists the n smallest positive numbers k such that k + n is a prime.

The programs for A084747, the canonical program `A084747.P15992443323963649350` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084747 has offset 1).

The definition of A084747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084747.P15992443323963649350

`A000040(A000720(n+1)+n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084747

/-- `A000040(A000720(n+1)+n+1)-(n+1)` -/
def P15992443323963649350.Spec : Prop :=
  ∀ n, P15992443323963649350.a n = A084747 (n + 1)

theorem P15992443323963649350.correct : P15992443323963649350.Spec := by
  intro n
  simp only [A084747, Nat.add_sub_cancel]

end A084747

/-! ## A084747.P1340828711015534833

`A084792(n+1)-(n+1)`
-/

namespace A084747.P1340828711015534833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (n + 1) - (n + 1 : ℤ)

end

end A084747.P1340828711015534833

namespace A084747

/-- `A084792(n+1)-(n+1)` -/
def P1340828711015534833.Spec : Prop :=
  ∀ n, P1340828711015534833.a n = A084747 (n + 1)

theorem P1340828711015534833.correct : P1340828711015534833.Spec := by
  intro n
  simp only [A084747, Nat.add_sub_cancel, A084747.P1340828711015534833.a, A084747.P15992443323963649350.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084792, A084792.P10596812045351244596.a, A077152, A077152.P46394233739287092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084747

/-! ## A084747.P18190235347912313929

`A077152(n+1)-(n+2)`
-/

namespace A084747.P18190235347912313929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077152 (n + 1) - (n + 2 : ℤ)

end

end A084747.P18190235347912313929

namespace A084747

/-- `A077152(n+1)-(n+2)` -/
def P18190235347912313929.Spec : Prop :=
  ∀ n, P18190235347912313929.a n = A084747 (n + 1)

theorem P18190235347912313929.correct : P18190235347912313929.Spec := by
  intro n
  simp only [A084747, Nat.add_sub_cancel, A084747.P18190235347912313929.a, A084747.P15992443323963649350.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A077152, A077152.P46394233739287092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084747

/-! ## A084747.P14853627119143744268

`A082911(n+1)+A014689(n+1)`
-/

namespace A084747.P14853627119143744268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082911 (n + 1) + A014689 (n + 1)

end

end A084747.P14853627119143744268

namespace A084747

/-- `A082911(n+1)+A014689(n+1)` -/
def P14853627119143744268.Spec : Prop :=
  ∀ n, P14853627119143744268.a n = A084747 (n + 1)

theorem P14853627119143744268.correct : P14853627119143744268.Spec := by
  intro n
  simp only [A084747, Nat.add_sub_cancel, A084747.P14853627119143744268.a, A084747.P15992443323963649350.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A082911, A082911.P1325522171464418407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084747

/-! ## A084747.P16956858628648346588

`A000040(∑[C(2, ∑{e}[n+1, #+1])]+n)-(n+1)`
-/

namespace A084747.P16956858628648346588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (n + 1 : ℤ)

end

end A084747.P16956858628648346588

namespace A084747

/-- `A000040(∑[C(2, ∑{e}[n+1, #+1])]+n)-(n+1)` -/
def P16956858628648346588.Spec : Prop :=
  ∀ n, P16956858628648346588.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P15720669659137791249

`A006093(A095117(n+1))-n`
-/

namespace A084747.P15720669659137791249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A095117 (n + 1)).toNat - (n : ℤ)

end

end A084747.P15720669659137791249

namespace A084747

/-- `A006093(A095117(n+1))-n` -/
def P15720669659137791249.Spec : Prop :=
  ∀ n, P15720669659137791249.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P13179535818696024324

`A000040(Δ[A002815(n)]+n)-(n+1)`
-/

namespace A084747.P13179535818696024324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n + (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A084747.P13179535818696024324

namespace A084747

/-- `A000040(Δ[A002815(n)]+n)-(n+1)` -/
def P13179535818696024324.Spec : Prop :=
  ∀ n, P13179535818696024324.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P10749790900363806968

`A000040(A036234(n+1)+n)-(n+1)`
-/

namespace A084747.P10749790900363806968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (n + 1) + (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A084747.P10749790900363806968

namespace A084747

/-- `A000040(A036234(n+1)+n)-(n+1)` -/
def P10749790900363806968.Spec : Prop :=
  ∀ n, P10749790900363806968.a n = A084747 (n + 1)

theorem P10749790900363806968.correct : P10749790900363806968.Spec := by
  intro n
  simp only [A084747, Nat.add_sub_cancel, A084747.P10749790900363806968.a, A084747.P15992443323963649350.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084747

/-! ## A084747.P3790102278894848861

`A000040(∑[C(A000010(n+1), n)]+n)-(n+1)`
-/

namespace A084747.P3790102278894848861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (n + 1 : ℤ)

end

end A084747.P3790102278894848861

namespace A084747

/-- `A000040(∑[C(A000010(n+1), n)]+n)-(n+1)` -/
def P3790102278894848861.Spec : Prop :=
  ∀ n, P3790102278894848861.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P14083867741840307693

`A000040(∑[char[A020639(n+1)-1]]+n)-(n+1)`
-/

namespace A084747.P14083867741840307693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (n + 1 : ℤ)

end

end A084747.P14083867741840307693

namespace A084747

/-- `A000040(∑[char[A020639(n+1)-1]]+n)-(n+1)` -/
def P14083867741840307693.Spec : Prop :=
  ∀ n, P14083867741840307693.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P1782089682366264153

`A000040(comp[A000040(n+1)+n-1]+1)-(n+1)`
-/

namespace A084747.P1782089682366264153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - (n + 1 : ℤ)

end

end A084747.P1782089682366264153

namespace A084747

/-- `A000040(comp[A000040(n+1)+n-1]+1)-(n+1)` -/
def P1782089682366264153.Spec : Prop :=
  ∀ n, P1782089682366264153.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P211844588618091712

`A000040(∑[char[A000040(n+1)-1]]+n+1)-(n+1)`
-/

namespace A084747.P211844588618091712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)) - (n + 1 : ℤ)

end

end A084747.P211844588618091712

namespace A084747

/-- `A000040(∑[char[A000040(n+1)-1]]+n+1)-(n+1)` -/
def P211844588618091712.Spec : Prop :=
  ∀ n, P211844588618091712.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P6904224651531612652

`A000010(A084792(n+1))-n`
-/

namespace A084747.P6904224651531612652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A084792 (n + 1)).toNat - (n : ℤ)

end

end A084747.P6904224651531612652

namespace A084747

/-- `A000010(A084792(n+1))-n` -/
def P6904224651531612652.Spec : Prop :=
  ∀ n, P6904224651531612652.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P6112075474947267318

`A084695(∑[n+1])`
-/

namespace A084747.P6112075474947267318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084695 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084747.P6112075474947267318

namespace A084747

/-- `A084695(∑[n+1])` -/
def P6112075474947267318.Spec : Prop :=
  ∀ n, P6112075474947267318.a n = A084747 (n + 1)

end A084747

/-! ## A084747.P6527407916223033918

`A084754(∑[n+1])-(n+1)`
-/

namespace A084747.P6527407916223033918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084754 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A084747.P6527407916223033918

namespace A084747

/-- `A084754(∑[n+1])-(n+1)` -/
def P6527407916223033918.Spec : Prop :=
  ∀ n, P6527407916223033918.a n = A084747 (n + 1)

end A084747

/-!
# A084748: Primes of the form k! + p where p is the smallest prime > k.

The programs for A084748, there is no canonical definition to state claims against.
-/

/-! ## A084748.P3470360561757478472

`A037152(A084749(n+2))`
-/

namespace A084748.P3470360561757478472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037152 (A084749 (n + 2)).toNat

end

end A084748.P3470360561757478472

/-! ## A084748.P5875080034156946324

`A037152(∑[∏{d}[A090786(n), #]])`
-/

namespace A084748.P5875080034156946324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037152 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084748.P5875080034156946324

/-! ## A084748.P4610615148869386329

`A037152(∏{d}[A090786(n), #]+n)`
-/

namespace A084748.P4610615148869386329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037152 (∏ d ∈ Nat.divisors (f1 n).natAbs, d + n)

end

end A084748.P4610615148869386329

/-! ## A084748.P4823811596021971923

`record[A352912(A082470(2*n+1))]`
-/

namespace A084748.P4823811596021971923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352912 (A082470 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084748.P4823811596021971923

/-!
# A084749: Numbers m such that m! + p is a prime, where p is the smallest prime > m.

The programs for A084749, there is no canonical definition to state claims against.
-/

/-! ## A084749.P17286462366892290778

`lt[A090786(n), A000005(A316313(n+2))]`
-/

namespace A084749.P17286462366892290778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A316313 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084749.P17286462366892290778

/-! ## A084749.P16931994679213545569

`lt[A090786(n), A302242(A350061(n+1))]`
-/

namespace A084749.P16931994679213545569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A350061 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084749.P16931994679213545569

/-! ## A084749.P1943898729505758640

`lt[A090786(n), A001822(A000290(2*(n+1)))]`
-/

namespace A084749.P1943898729505758640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A000290 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084749.P1943898729505758640

/-! ## A084749.P18163186446451492134

`lt[A090786(n), A000005(A173083(n+1))]`
-/

namespace A084749.P18163186446451492134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A173083 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084749.P18163186446451492134

/-! ## A084749.P7406787459281918173

`lt[A090786(n), A055642(A046759(n+4))]`
-/

namespace A084749.P7406787459281918173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A046759 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084749.P7406787459281918173

/-!
# A084752: A064623(n)/s, where s = sum of the prime divisors of A064623(n).

The programs for A084752, there is no canonical definition to state claims against.
-/

/-! ## A084752.P9069662029411726440

`A064623(n+1)/A008472(A064623(n+1))`
-/

namespace A084752.P9069662029411726440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064623 (n + 1) : ℚ) / (A008472 (A064623 (n + 1)).toNat : ℚ)

end

end A084752.P9069662029411726440

/-! ## A084752.P2070091704246523393

`A340677(A064623(n+1))`
-/

namespace A084752.P2070091704246523393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340677 (A064623 (n + 1)).toNat

end

end A084752.P2070091704246523393

/-!
# A084754: Triangle read by rows: row n lists the first n primes greater than n.

The programs for A084754, the canonical program `A084754.P15937674651050171492` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084754 has offset 1).

The definition of A084754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084754.P15937674651050171492

`A000040(A000720(row(n)+1)+col(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084754

/-- `A000040(A000720(row(n)+1)+col(n)+1)` -/
def P15937674651050171492.Spec : Prop :=
  ∀ n, P15937674651050171492.a n = A084754 (n + 1)

theorem P15937674651050171492.correct : P15937674651050171492.Spec := by
  intro n
  simp only [A084754, Nat.add_sub_cancel]

end A084754

/-! ## A084754.P17913519823875565394

`A084695(n+1)+∑[char[∑[n]]]`
-/

namespace A084754.P17913519823875565394
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084695 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A084754.P17913519823875565394

namespace A084754

/-- `A084695(n+1)+∑[char[∑[n]]]` -/
def P17913519823875565394.Spec : Prop :=
  ∀ n, P17913519823875565394.a n = A084754 (n + 1)

end A084754

/-! ## A084754.P14393107222370532083

`A084695(n+1)+A003056(n)+1`
-/

namespace A084754.P14393107222370532083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084695 (n + 1) + A003056 n + 1

end

end A084754.P14393107222370532083

namespace A084754

/-- `A084695(n+1)+A003056(n)+1` -/
def P14393107222370532083.Spec : Prop :=
  ∀ n, P14393107222370532083.a n = A084754 (n + 1)

end A084754

/-! ## A084754.P16724523766556966317

`A007401(n+1)+A084695(n+1)-n`
-/

namespace A084754.P16724523766556966317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) + (A084695 (n + 1) - (n : ℤ))

end

end A084754.P16724523766556966317

namespace A084754

/-- `A007401(n+1)+A084695(n+1)-n` -/
def P16724523766556966317.Spec : Prop :=
  ∀ n, P16724523766556966317.a n = A084754 (n + 1)

end A084754

/-! ## A084754.P5111591747092889361

`A006530(A084695(n+1)+A002024(n+1))`
-/

namespace A084754.P5111591747092889361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084695 (n + 1) + A002024 (n + 1)).toNat

end

end A084754.P5111591747092889361

namespace A084754

/-- `A006530(A084695(n+1)+A002024(n+1))` -/
def P5111591747092889361.Spec : Prop :=
  ∀ n, P5111591747092889361.a n = A084754 (n + 1)

end A084754

/-! ## A084754.P6313444269924783400

`A014963(A084695(n+1)+A002024(n+1))`
-/

namespace A084754.P6313444269924783400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A084695 (n + 1) + A002024 (n + 1)).toNat

end

end A084754.P6313444269924783400

namespace A084754

/-- `A014963(A084695(n+1)+A002024(n+1))` -/
def P6313444269924783400.Spec : Prop :=
  ∀ n, P6313444269924783400.a n = A084754 (n + 1)

end A084754

/-! ## A084754.P15693260776709473502

`A020639(A084695(n+1)+A002024(n+1))`
-/

namespace A084754.P15693260776709473502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084695 (n + 1) + A002024 (n + 1)).toNat

end

end A084754.P15693260776709473502

namespace A084754

/-- `A020639(A084695(n+1)+A002024(n+1))` -/
def P15693260776709473502.Spec : Prop :=
  ∀ n, P15693260776709473502.a n = A084754 (n + 1)

end A084754

/-!
# A084756: For n, k > 0, let T(n, k) be given by T(n, 1) = n and T(n, k+1) = k*T(n, k) + 1. Then a(n) = T(n, n).

The programs for A084756, the canonical program `A084756.P11840485018394104131` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084756 has offset 1).

The definition of A084756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084756.P11840485018394104131

`A000522(n)+n!*n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084756

/-- `A000522(n)+n!*n` -/
def P11840485018394104131.Spec : Prop :=
  ∀ n, P11840485018394104131.a n = A084756 (n + 1)

theorem P11840485018394104131.correct : P11840485018394104131.Spec := by
  intro n
  simp only [A084756, Nat.add_sub_cancel]

end A084756

/-! ## A084756.P10822584428704324085

`n*a(n-1)+n!+1` with `a(0)=1`
-/

namespace A084756.P10822584428704324085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (n - 1) + (Nat.factorial n + 1)

end

end A084756.P10822584428704324085

namespace A084756

/-- `n*a(n-1)+n!+1` -/
def P10822584428704324085.Spec : Prop :=
  ∀ n, (P10822584428704324085.a n : ℤ) = A084756 (n + 1)

end A084756

/-! ## A084756.P836361149756009515

`Δ[n!]+n!*∑[1/n!]`
-/

namespace A084756.P836361149756009515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A084756.P836361149756009515

namespace A084756

/-- `Δ[n!]+n!*∑[1/n!]` -/
def P836361149756009515.Spec : Prop :=
  ∀ n, P836361149756009515.a n = (A084756 (n + 1) : ℚ)

end A084756

/-! ## A084756.P12630828017323766100

`n!+a(n-1)/tan(acot(n))+1` with `a(0)=1`
-/

namespace A084756.P12630828017323766100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) + 1

end

end A084756.P12630828017323766100

namespace A084756

/-- `n!+a(n-1)/tan(acot(n))+1` -/
def P12630828017323766100.Spec : Prop :=
  ∀ n, P12630828017323766100.a n = (A084756 (n + 1) : ℝ)

end A084756

/-! ## A084756.P11683899596949679321

`n!+a(n-1)/cot(atan(n))+1` with `a(0)=1`
-/

namespace A084756.P11683899596949679321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℝ) + (a (n - 1) / Real.cot (Real.arctan (n : ℝ)) + 1)

end

end A084756.P11683899596949679321

namespace A084756

/-- `n!+a(n-1)/cot(atan(n))+1` -/
def P11683899596949679321.Spec : Prop :=
  ∀ n, P11683899596949679321.a n = (A084756 (n + 1) : ℝ)

end A084756

/-! ## A084756.P7168021855890596167

`n!+a(n-1)/n^-1+1` with `a(0)=1`
-/

namespace A084756.P7168021855890596167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℚ) + (a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + 1)

end

end A084756.P7168021855890596167

namespace A084756

/-- `n!+a(n-1)/n^-1+1` -/
def P7168021855890596167.Spec : Prop :=
  ∀ n, P7168021855890596167.a n = (A084756 (n + 1) : ℚ)

end A084756

/-! ## A084756.P17153454705655934561

`A001563(n)+A000522(n)`
-/

namespace A084756.P17153454705655934561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + A000522 n

end

end A084756.P17153454705655934561

namespace A084756

/-- `A001563(n)+A000522(n)` -/
def P17153454705655934561.Spec : Prop :=
  ∀ n, P17153454705655934561.a n = A084756 (n + 1)

theorem P17153454705655934561.correct : P17153454705655934561.Spec := by
  intro n
  simp only [A084756, Nat.add_sub_cancel, A084756.P17153454705655934561.a, A084756.P11840485018394104131.a, A000522, A000522.P12126844601845706129.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084756

/-! ## A084756.P18002214207984528112

`A002627(n)+A000142(n+1)`
-/

namespace A084756.P18002214207984528112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 n + A000142 (n + 1)

end

end A084756.P18002214207984528112

namespace A084756

/-- `A002627(n)+A000142(n+1)` -/
def P18002214207984528112.Spec : Prop :=
  ∀ n, P18002214207984528112.a n = A084756 (n + 1)

end A084756

/-! ## A084756.P1835956267915901629

`A000522(n)+n*A000142(n)`
-/

namespace A084756.P1835956267915901629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (n : ℤ) * A000142 n

end

end A084756.P1835956267915901629

namespace A084756

/-- `A000522(n)+n*A000142(n)` -/
def P1835956267915901629.Spec : Prop :=
  ∀ n, P1835956267915901629.a n = A084756 (n + 1)

theorem P1835956267915901629.correct : P1835956267915901629.Spec := by
  intro n
  simp only [A084756, Nat.add_sub_cancel, A084756.P1835956267915901629.a, A084756.P11840485018394104131.a, A000142, A000142.P3272619076580183195.a, A000522, A000522.P12126844601845706129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084756

/-! ## A084756.P5549621202892297374

`A000142(n+1)+A000522(n)-A000142(n)`
-/

namespace A084756.P5549621202892297374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + (A000522 n - A000142 n)

end

end A084756.P5549621202892297374

namespace A084756

/-- `A000142(n+1)+A000522(n)-A000142(n)` -/
def P5549621202892297374.Spec : Prop :=
  ∀ n, P5549621202892297374.a n = A084756 (n + 1)

end A084756

/-!
# A084757: For n, k > 0, let T(n, k) be given by T(n, 1) = n and T(n, k+1) = k*T(n, k) + 1. a(n) is the sum of the n-th antidiagonal.

The programs for A084757, there is no canonical definition to state claims against.
-/

/-! ## A084757.P13243112406507879175

`∑[A003422(n)+A000522(n)]`
-/

namespace A084757.P13243112406507879175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n + A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084757.P13243112406507879175

/-! ## A084757.P8019009831622417100

`A014144(n)+∑[A000522(n)]`
-/

namespace A084757.P8019009831622417100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084757.P8019009831622417100

/-! ## A084757.P10827223603951886390

`∑[A002627(n)+∑[A000142(n)]]`
-/

namespace A084757.P10827223603951886390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084757.P10827223603951886390

/-! ## A084757.P17286927608643941451

`∑[A143409(∑[n])+A003422(n)]`
-/

namespace A084757.P17286927608643941451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f2 j) + A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084757.P17286927608643941451

/-! ## A084757.P14152736122613712171

`∑[A073474(∑[n])+A003422(n)]`
-/

namespace A084757.P14152736122613712171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073474 (∑ j ∈ Finset.range (n + 1), f2 j) + A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084757.P14152736122613712171

/-!
# A084758: The slowest increasing sequence of primes such that difference of successive terms is unique.

The programs for A084758, there is no canonical definition to state claims against.
-/

/-! ## A084758.P5192535025147247325

`A121862(n)+a(n-1)` with `a(0)=2`
-/

namespace A084758.P5192535025147247325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A121862 n + a (n - 1)

end

end A084758.P5192535025147247325

/-! ## A084758.P15138553219247203570

`∑[A121862(A028310(n))]+1`
-/

namespace A084758.P15138553219247203570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084758.P15138553219247203570

/-! ## A084758.P5310270767067806012

`∑[A121862(A000038(n)+n)]`
-/

namespace A084758.P5310270767067806012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084758.P5310270767067806012

/-! ## A084758.P7013374708418560746

`∑[A121862(xor(n, A000038(n)))]`
-/

namespace A084758.P7013374708418560746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084758.P7013374708418560746

/-! ## A084758.P2686880759461750878

`∑[A121862(n+1)]+2-A121862(n+1)`
-/

namespace A084758.P2686880759461750878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A121862 (n + 1))

end

end A084758.P2686880759461750878

/-! ## A084758.P6827258868642771631

`∑[A121862(A123108(n)+A065033(n))]`
-/

namespace A084758.P6827258868642771631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A123108 n + A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084758.P6827258868642771631

/-! ## A084758.P15760510563062805030

`∑[A121862(A065033(2*n))]+1`
-/

namespace A084758.P15760510563062805030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084758.P15760510563062805030

/-! ## A084758.P8590006831870830160

`∑[A121862(A123108(2*n))]+1`
-/

namespace A084758.P8590006831870830160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084758.P8590006831870830160

/-! ## A084758.P12259158479317119204

`∑[A121862(gcd(n, A233583(n+1)))]`
-/

namespace A084758.P12259158479317119204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (Int.gcd (n : ℤ) (A233583 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084758.P12259158479317119204

/-! ## A084758.P13716957595684605481

`∑[A121862(A233583(n+1))]-A057427(n)`
-/

namespace A084758.P13716957595684605481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A084758.P13716957595684605481

/-! ## A084758.P14285352561790365090

`∑[A121862(A233583(2*n+1)-n)]`
-/

namespace A084758.P14285352561790365090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084758.P14285352561790365090

/-! ## A084758.P10924813004369540761

`A051543(∑[A121862(n+1)])-A121862(n+1)`
-/

namespace A084758.P10924813004369540761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A121862 (n + 1)

end

end A084758.P10924813004369540761

/-!
# A084759: Composite numbers in ascending order such that the difference of successive terms is unique. a(m) - a(m-1) = a(k) - a(k-1) iff m = k.

The programs for A084759, there is no canonical definition to state claims against.
-/

/-! ## A084759.P11712328804238659904

`A155875(A155899(2*n+1)+A000217(n))`
-/

namespace A084759.P11712328804238659904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155875 (A155899 (2 * n + 1) + A000217 n).toNat

end

end A084759.P11712328804238659904

/-! ## A084759.P8570258417472446885

`A196660(A049020(n+4))+A152950(n+1)`
-/

namespace A084759.P8570258417472446885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196660 (A049020 (n + 4)).toNat + A152950 (n + 1)

end

end A084759.P8570258417472446885

/-! ## A084759.P18320030561548739241

`A127093(A308544(n+1))+A133263(n)+2`
-/

namespace A084759.P18320030561548739241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A308544 (n + 1)).toNat + (A133263 n + 2)

end

end A084759.P18320030561548739241

/-! ## A084759.P13961356887797041754

`A164953(A251984(n+1))+A152950(n+1)`
-/

namespace A084759.P13961356887797041754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164953 (A251984 (n + 1)).toNat + A152950 (n + 1)

end

end A084759.P13961356887797041754

/-!
# A084760: Squarefree numbers in ascending order such that the difference of successive terms is unique. a(m) - a(m-1) = a(k) - a(k-1) iff m = k.

The programs for A084760, there is no canonical definition to state claims against.
-/

/-! ## A084760.P8923530941035702974

`record[A079114(n+1)/A302460(n+1)]`
-/

namespace A084760.P8923530941035702974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079114 (n + 1) : ℚ) / (A302460 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084760.P8923530941035702974

/-! ## A084760.P6262731477138573483

`record[A079228(n+1)/A302460(n+1)]`
-/

namespace A084760.P6262731477138573483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079228 (n + 1) : ℚ) / (A302460 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084760.P6262731477138573483

/-! ## A084760.P15825657827671700564

`record[A079114(n+1)/A303242(n+1)]`
-/

namespace A084760.P15825657827671700564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079114 (n + 1) : ℚ) / (A303242 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084760.P15825657827671700564

/-! ## A084760.P17908664380397802696

`record[A079228(n+1)/A303242(n+1)]`
-/

namespace A084760.P17908664380397802696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079228 (n + 1) : ℚ) / (A303242 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084760.P17908664380397802696

/-! ## A084760.P16010399736951110234

`A079114(record[A079114(n+1)-A302460(n+1)²])`
-/

namespace A084760.P16010399736951110234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (n + 1) - A302460 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084760.P16010399736951110234

/-!
# A084761: A sequence of primes such that (a(n)-a(n-1)) / (a(n-1)-a(n-2)) is a unique integer.

The programs for A084761, there is no canonical definition to state claims against.
-/

/-! ## A084761.P8063593924443383374

`p?[∑[∏[A346077(n+1)]]]`
-/

namespace A084761.P8063593924443383374
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084761.P8063593924443383374

/-! ## A084761.P13499052580846868379

`p?[∑[∏[A161067(3*n+5)]]]`
-/

namespace A084761.P13499052580846868379
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161067 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084761.P13499052580846868379

/-! ## A084761.P12524169981449873398

`p?[∑[A232983(A000009(n))]]`
-/

namespace A084761.P12524169981449873398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232983 (A000009 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084761.P12524169981449873398

/-! ## A084761.P16915630856898079216

`p?[∑[floor(n²/12)!]]`
-/

namespace A084761.P16915630856898079216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n ^ 2 : ℚ) / 12⌋.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A084761.P16915630856898079216

/-!
# A084764: a(n) = 2*a(n-1)^2 - 1, a(0)=1, a(1)=4.

The programs for A084764, the canonical program `A084764.P1961046074275598199` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084764 has offset 0).

The definition of A084764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-1` (program `A084764.P1961046074275598199`, by `A084764.P1961046074275598199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084764.P1961046074275598199

`2*a(n-1)²-1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084764

/-- `2*a(n-1)²-1` -/
def P1961046074275598199.Spec : Prop :=
  ∀ n, P1961046074275598199.a n = A084764 n

theorem P1961046074275598199.correct : P1961046074275598199.Spec := by
  intro n
  simp only [A084764]

end A084764

/-! ## A084764.P6276011655601158295

`2*a(n-1)^(4/2)-1` with `a(0)=1, a(1)=4`
-/

namespace A084764.P6276011655601158295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A084764.P6276011655601158295

namespace A084764

/-- `2*a(n-1)^(4/2)-1` -/
def P6276011655601158295.Spec : Prop :=
  ∀ n, P6276011655601158295.a n = (A084764 n : ℝ)

end A084764

/-! ## A084764.P16670805057632254488

`2*a(n-1)*a(n-1)-1` with `a(0)=1, a(1)=4`
-/

namespace A084764.P16670805057632254488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 1) * a (n - 1)) - 1

end

end A084764.P16670805057632254488

namespace A084764

/-- `2*a(n-1)*a(n-1)-1` -/
def P16670805057632254488.Spec : Prop :=
  ∀ n, P16670805057632254488.a n = A084764 n

theorem P16670805057632254488.correct : P16670805057632254488.Spec := by
  intro n
  simp only [A084764, Nat.add_sub_cancel, A084764.P16670805057632254488.a, A084764.P1961046074275598199.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084764

/-! ## A084764.P12306719374877307084

`a(n-1)²+a(n-1)²-1` with `a(0)=1, a(1)=4`
-/

namespace A084764.P12306719374877307084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) ^ 2 + (a (n - 1) ^ 2 - 1)

end

end A084764.P12306719374877307084

namespace A084764

/-- `a(n-1)²+a(n-1)²-1` -/
def P12306719374877307084.Spec : Prop :=
  ∀ n, P12306719374877307084.a n = A084764 n

theorem P12306719374877307084.correct : P12306719374877307084.Spec := by
  intro n
  simp only [A084764, Nat.add_sub_cancel, A084764.P12306719374877307084.a, A084764.P1961046074275598199.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084764

/-!
# A084765: a(n) = 2*a(n-1)^2 - 1, a(0)=1, a(1)=5.

The programs for A084765, the canonical program `A084765.P947735411684388507` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084765 has offset 0).

The definition of A084765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-1` (program `A084765.P947735411684388507`, by `A084765.P947735411684388507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084765.P947735411684388507

`2*a(n-1)²-1` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084765

/-- `2*a(n-1)²-1` -/
def P947735411684388507.Spec : Prop :=
  ∀ n, P947735411684388507.a n = A084765 n

theorem P947735411684388507.correct : P947735411684388507.Spec := by
  intro n
  simp only [A084765]

end A084765

/-! ## A084765.P12466221820156296212

`lcm(2, a(n-1)²)-1` with `a(0)=1, a(1)=5`
-/

namespace A084765.P12466221820156296212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Int.lcm 2 (a (n - 1) ^ 2) : ℤ) - 1

end

end A084765.P12466221820156296212

namespace A084765

/-- `lcm(2, a(n-1)²)-1` -/
def P12466221820156296212.Spec : Prop :=
  ∀ n, P12466221820156296212.a n = A084765 n

end A084765

/-! ## A084765.P17390941939172699375

`2*a(n-1)^(4/2)-1` with `a(0)=1, a(1)=5`
-/

namespace A084765.P17390941939172699375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A084765.P17390941939172699375

namespace A084765

/-- `2*a(n-1)^(4/2)-1` -/
def P17390941939172699375.Spec : Prop :=
  ∀ n, P17390941939172699375.a n = (A084765 n : ℝ)

end A084765

/-! ## A084765.P510161900835662351

`2*a(n-1)*a(n-1)-1` with `a(0)=1, a(1)=5`
-/

namespace A084765.P510161900835662351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) * a (n - 1) - 1

end

end A084765.P510161900835662351

namespace A084765

/-- `2*a(n-1)*a(n-1)-1` -/
def P510161900835662351.Spec : Prop :=
  ∀ n, P510161900835662351.a n = A084765 n

theorem P510161900835662351.correct : P510161900835662351.Spec := by
  intro n
  simp only [A084765, Nat.add_sub_cancel, A084765.P510161900835662351.a, A084765.P947735411684388507.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084765

/-!
# A084766: Sum of numbers of prime-factors {2*n-p: 2<p<2*n, p prime}, with repetitions.

The programs for A084766, there is no canonical definition to state claims against.
-/

/-! ## A084766.P8264255950177845474

`A084767(n+1)+A001222(A084762(n+1))`
-/

namespace A084766.P8264255950177845474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084767 (n + 1) + A001222 (A084762 (n + 1)).toNat

end

end A084766.P8264255950177845474

/-!
# A084767: Number of distinct prime-factors of {2*n-p: 2<p<2*n, p prime}.

The programs for A084767, there is no canonical definition to state claims against.
-/

/-! ## A084767.P8519818559645504100

`A084766(n+1)-A001222(A084762(n+1))`
-/

namespace A084767.P8519818559645504100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084766 (n + 1) - A001222 (A084762 (n + 1)).toNat

end

end A084767.P8519818559645504100

/-!
# A084768: a(n) = P_n(7), where P_n is n-th Legendre polynomial; also, a(n) = central coefficient of (1 + 7*x + 12*x^2)^n.

The programs for A084768, there is no canonical definition to state claims against.
-/

/-! ## A084768.P17069937035218675203

`∑[2*A299507(n)]-1`
-/

namespace A084768.P17069937035218675203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084768.P17069937035218675203

/-! ## A084768.P5732560238289149931

`∑[A036453(n+1)*A299507(n)]`
-/

namespace A084768.P5732560238289149931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A299507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084768.P5732560238289149931

/-! ## A084768.P12503460184582919445

`A335333(∑[n+3]+n+3)`
-/

namespace A084768.P12503460184582919445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A084768.P12503460184582919445

/-! ## A084768.P12208243285533905943

`record[A335333(A046691(A065648(n)))]`
-/

namespace A084768.P12208243285533905943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A046691 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084768.P12208243285533905943

/-! ## A084768.P11817042419610801874

`sqrt(A243944(n))`
-/

namespace A084768.P11817042419610801874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243944 n : ℝ)

end

end A084768.P11817042419610801874

/-!
# A084769: a(n) = P_n(9), where P_n is n-th Legendre polynomial; also, a(n) = central coefficient of (1 + 9*x + 20*x^2)^n.

The programs for A084769, there is no canonical definition to state claims against.
-/

/-! ## A084769.P9609812391536414911

`A335333(∑[n+5]+5)`
-/

namespace A084769.P9609812391536414911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A084769.P9609812391536414911

/-! ## A084769.P17626533117499966811

`record[A335333(A052905(A115352(n)))]`
-/

namespace A084769.P17626533117499966811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A052905 (A115352 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084769.P17626533117499966811

/-! ## A084769.P5776645472136030734

`record[A335333(A052905(A344180(n)))]`
-/

namespace A084769.P5776645472136030734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A052905 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084769.P5776645472136030734

/-! ## A084769.P3977074301009941548

`sqrt(A243007(n))`
-/

namespace A084769.P3977074301009941548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243007 n : ℝ)

end

end A084769.P3977074301009941548

/-! ## A084769.P4500902166772277569

`root(A243007(n), A036453(n+1))`
-/

namespace A084769.P4500902166772277569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243007 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A084769.P4500902166772277569

/-!
# A084770: Coefficients of 1/(1-4x-16x^2)^(1/2); also, a(n) is the central coefficient of (1+2x+5x^2)^n.

The programs for A084770, there is no canonical definition to state claims against.
-/

/-! ## A084770.P13589430666617679389

`A001316(n)*A178694(n)`
-/

namespace A084770.P13589430666617679389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A178694 n

end

end A084770.P13589430666617679389

/-! ## A084770.P3160059921722341719

`A060632(2*n)*A178694(n)`
-/

namespace A084770.P3160059921722341719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A178694 n

end

end A084770.P3160059921722341719

/-! ## A084770.P17316758362595728909

`2^A000120(n)*A178694(n)`
-/

namespace A084770.P17316758362595728909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ) * (A178694 n : ℚ)

end

end A084770.P17316758362595728909

/-! ## A084770.P13959196828989279847

`A000079(A000120(n))*A178694(n)`
-/

namespace A084770.P13959196828989279847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A178694 n

end

end A084770.P13959196828989279847

/-! ## A084770.P8418952236378075999

`A000005(A019565(n))*A178694(n)`
-/

namespace A084770.P8418952236378075999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A178694 n

end

end A084770.P8418952236378075999

/-! ## A084770.P9799732533630101886

`A387466(∑[n+3])`
-/

namespace A084770.P9799732533630101886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084770.P9799732533630101886

/-!
# A084771: Coefficients of expansion of 1/sqrt(1 - 10*x + 9*x^2); also, a(n) is the central coefficient of (1 + 5*x + 4*x^2)^n.

The programs for A084771, the canonical program `A084771.P4193283616547471538` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084771 has offset 0).

The definition of A084771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084771.P11575185699777675155

`∑[A085363(n)]`
-/

namespace A084771.P11575185699777675155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084771.P11575185699777675155

namespace A084771

/-- `∑[A085363(n)]` -/
def P11575185699777675155.Spec : Prop :=
  ∀ n, P11575185699777675155.a n = A084771 n

end A084771

/-! ## A084771.P4193283616547471538

`Δ[n*A162326(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084771

/-- `Δ[n*A162326(n)]` -/
def P4193283616547471538.Spec : Prop :=
  ∀ n, P4193283616547471538.a n = A084771 n

theorem P4193283616547471538.correct : P4193283616547471538.Spec := by
  intro n
  simp only [A084771]

end A084771

/-! ## A084771.P13933298308003515322

`4*A363571(n)+1`
-/

namespace A084771.P13933298308003515322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A363571 n + 1

end

end A084771.P13933298308003515322

namespace A084771

/-- `4*A363571(n)+1` -/
def P13933298308003515322.Spec : Prop :=
  ∀ n, P13933298308003515322.a n = A084771 n

end A084771

/-! ## A084771.P3887884183553628864

`∑[2*A051708(n+1)]-1`
-/

namespace A084771.P3887884183553628864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084771.P3887884183553628864

namespace A084771

/-- `∑[2*A051708(n+1)]-1` -/
def P3887884183553628864.Spec : Prop :=
  ∀ n, P3887884183553628864.a n = A084771 n

end A084771

/-! ## A084771.P4981133718509683735

`A085363(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A084771.P4981133718509683735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085363 n + a (A023443 n).toNat

end

end A084771.P4981133718509683735

namespace A084771

/-- `A085363(n)+a(A023443(n))` -/
def P4981133718509683735.Spec : Prop :=
  ∀ n, P4981133718509683735.a n = A084771 n

end A084771

/-! ## A084771.P7234207471525233174

`∑[A086871(n)]+n*A086871(n)`
-/

namespace A084771.P7234207471525233174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A086871 n

end

end A084771.P7234207471525233174

namespace A084771

/-- `∑[A086871(n)]+n*A086871(n)` -/
def P7234207471525233174.Spec : Prop :=
  ∀ n, P7234207471525233174.a n = A084771 n

end A084771

/-! ## A084771.P1908412085509854558

`A231482(n+1)-n*A162326(n)`
-/

namespace A084771.P1908412085509854558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231482 (n + 1) - (n : ℤ) * A162326 n

end

end A084771.P1908412085509854558

namespace A084771

/-- `A231482(n+1)-n*A162326(n)` -/
def P1908412085509854558.Spec : Prop :=
  ∀ n, P1908412085509854558.a n = A084771 n

end A084771

/-! ## A084771.P10913239956277645835

`∑[A036453(n+1)*A051708(n+1)]`
-/

namespace A084771.P10913239956277645835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A051708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084771.P10913239956277645835

namespace A084771

/-- `∑[A036453(n+1)*A051708(n+1)]` -/
def P10913239956277645835.Spec : Prop :=
  ∀ n, P10913239956277645835.a n = A084771 n

end A084771

/-! ## A084771.P1214627098149030975

`A307883(eq[4, A025581(n)])`
-/

namespace A084771.P1214627098149030975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084771.P1214627098149030975

namespace A084771

/-- `A307883(eq[4, A025581(n)])` -/
def P1214627098149030975.Spec : Prop :=
  ∀ n, P1214627098149030975.a n = A084771 n

end A084771

/-!
# A084772: Coefficients of 1/sqrt(1 - 12*x + 16*x^2); also, a(n) is the central coefficient of (1 + 6*x + 5*x^2)^n.

The programs for A084772, there is no canonical definition to state claims against.
-/

/-! ## A084772.P9076476586890414398

`A307883(eq[5, A025581(n)])`
-/

namespace A084772.P9076476586890414398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084772.P9076476586890414398

/-! ## A084772.P8439569511698717592

`A307883(abs(A000124(n+6)-6)-1)`
-/

namespace A084772.P8439569511698717592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (|A000124 (n + 6) - 6| - 1).toNat

end

end A084772.P8439569511698717592

/-! ## A084772.P11318445921879204448

`A081579(∑[4*n])`
-/

namespace A084772.P11318445921879204448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084772.P11318445921879204448

/-! ## A084772.P3532034086374221947

`record[A081579(A092530(n))]`
-/

namespace A084772.P3532034086374221947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084772.P3532034086374221947

/-! ## A084772.P1370195713345097803

`record[gcd(A008482(n), A081579(n))]`
-/

namespace A084772.P1370195713345097803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A081579 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084772.P1370195713345097803

/-! ## A084772.P2418552325278811036

`record[gcd(A037012(2*n), A081579(2*n))]`
-/

namespace A084772.P2418552325278811036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 (2 * n)) (A081579 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084772.P2418552325278811036

/-! ## A084772.P10292062522738389377

`A081579(A092530(2*n+1))*A081579(A092530(2*n))`
-/

namespace A084772.P10292062522738389377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (A092530 (2 * n + 1)).toNat * A081579 (A092530 (2 * n)).toNat

end

end A084772.P10292062522738389377

/-!
# A084773: Coefficients of 1/sqrt(1-12*x+4*x^2); also, a(n) is the central coefficient of (1+6*x+8*x^2)^n.

The programs for A084773, the canonical program `A084773.P8407391943603613454` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084773 has offset 0).

The definition of A084773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084773.P8407391943603613454

`2^n*A001850(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084773

/-- `2^n*A001850(n)` -/
def P8407391943603613454.Spec : Prop :=
  ∀ n, P8407391943603613454.a n = A084773 n

theorem P8407391943603613454.correct : P8407391943603613454.Spec := by
  intro n
  simp only [A084773]

end A084773

/-! ## A084773.P3283253054862845567

`A152254(n)/2`
-/

namespace A084773.P3283253054862845567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152254 n : ℚ) / 2

end

end A084773.P3283253054862845567

namespace A084773

/-- `A152254(n)/2` -/
def P3283253054862845567.Spec : Prop :=
  ∀ n, P3283253054862845567.a n = (A084773 n : ℚ)

end A084773

/-! ## A084773.P4937745161446779180

`A326237(n+1)/2`
-/

namespace A084773.P4937745161446779180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326237 (n + 1) : ℚ) / 2

end

end A084773.P4937745161446779180

namespace A084773

/-- `A326237(n+1)/2` -/
def P4937745161446779180.Spec : Prop :=
  ∀ n, P4937745161446779180.a n = (A084773 n : ℚ)

end A084773

/-! ## A084773.P16826585310555214799

`lcm(2^n, A052141(n))`
-/

namespace A084773.P16826585310555214799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A052141 n)

end

end A084773.P16826585310555214799

namespace A084773

/-- `lcm(2^n, A052141(n))` -/
def P16826585310555214799.Spec : Prop :=
  ∀ n, (P16826585310555214799.a n : ℤ) = A084773 n

end A084773

/-! ## A084773.P14326124592269693757

`2^n*∑[A110170(n)]`
-/

namespace A084773.P14326124592269693757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084773.P14326124592269693757

namespace A084773

/-- `2^n*∑[A110170(n)]` -/
def P14326124592269693757.Spec : Prop :=
  ∀ n, P14326124592269693757.a n = A084773 n

end A084773

/-! ## A084773.P14487306562859976866

`2^n*A026003(2*n)`
-/

namespace A084773.P14487306562859976866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A026003 (2 * n)

end

end A084773.P14487306562859976866

namespace A084773

/-- `2^n*A026003(2*n)` -/
def P14487306562859976866.Spec : Prop :=
  ∀ n, P14487306562859976866.a n = A084773 n

end A084773

/-! ## A084773.P3903645878833398389

`lcm(A000079(n), A001850(n))`
-/

namespace A084773.P3903645878833398389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001850 n)

end

end A084773.P3903645878833398389

namespace A084773

/-- `lcm(A000079(n), A001850(n))` -/
def P3903645878833398389.Spec : Prop :=
  ∀ n, (P3903645878833398389.a n : ℤ) = A084773 n

end A084773

/-! ## A084773.P5783399486123141884

`A001850(n)*A011782(n+1)`
-/

namespace A084773.P5783399486123141884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A011782 (n + 1)

end

end A084773.P5783399486123141884

namespace A084773

/-- `A001850(n)*A011782(n+1)` -/
def P5783399486123141884.Spec : Prop :=
  ∀ n, P5783399486123141884.a n = A084773 n

end A084773

/-! ## A084773.P15615209440916907071

`(A057427(n)+1)*A052141(n)`
-/

namespace A084773.P15615209440916907071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A052141 n

end

end A084773.P15615209440916907071

namespace A084773

/-- `(A057427(n)+1)*A052141(n)` -/
def P15615209440916907071.Spec : Prop :=
  ∀ n, P15615209440916907071.a n = A084773 n

end A084773

/-! ## A084773.P5644915995129041335

`A001850(n)*A131577(n+1)`
-/

namespace A084773.P5644915995129041335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A131577 (n + 1)

end

end A084773.P5644915995129041335

namespace A084773

/-- `A001850(n)*A131577(n+1)` -/
def P5644915995129041335.Spec : Prop :=
  ∀ n, P5644915995129041335.a n = A084773 n

end A084773

/-!
# A084775: a(n) = sum of absolute valued coefficients of (1+x-4*x^2)^n.

The programs for A084775, there is no canonical definition to state claims against.
-/

/-! ## A084775.P17247496989644591425

`A315495(n*A135482(n))`
-/

namespace A084775.P17247496989644591425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 ((n : ℤ) * A135482 n).toNat

end

end A084775.P17247496989644591425

/-!
# A084776: a(n) = sum of absolute-valued coefficients of (1+2*x-x^2)^n.

The programs for A084776, there is no canonical definition to state claims against.
-/

/-! ## A084776.P16254153610572103371

`A320925(a(n-2)+n)` with `a(0)=1, a(1)=4`
-/

namespace A084776.P16254153610572103371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A320925 (a (n - 2) + (n : ℤ)).toNat

end

end A084776.P16254153610572103371

/-! ## A084776.P14944268809870731475

`A151896(A084264(n))`
-/

namespace A084776.P14944268809870731475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151896 (A084264 n).toNat

end

end A084776.P14944268809870731475

/-!
# A084777: a(n) = sum of absolute-valued coefficients of (1+2*x-2*x^2)^n.

The programs for A084777, there is no canonical definition to state claims against.
-/

/-! ## A084777.P8417055781707949859

`4*n*A171722(A057711(n))+1`
-/

namespace A084777.P8417055781707949859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A171722 (A057711 n).toNat + 1

end

end A084777.P8417055781707949859

/-! ## A084777.P7649456701512651756

`A192189(A005773(n)*A202265(n+2))`
-/

namespace A084777.P7649456701512651756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192189 (A005773 n * A202265 (n + 2)).toNat

end

end A084777.P7649456701512651756

/-!
# A084778: a(n) = sum of absolute-valued coefficients of (1+2*x-3*x^2)^n.

The programs for A084778, there is no canonical definition to state claims against.
-/

/-! ## A084778.P5679004630789332585

`and(A002913(n), A175046(A372541(3*n)))`
-/

namespace A084778.P5679004630789332585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002913 n) (A175046 (A372541 (3 * n)).toNat)

end

end A084778.P5679004630789332585

/-!
# A084779: a(n) = sum of absolute-valued coefficients of (1+2*x-4*x^2)^n.

The programs for A084779, there is no canonical definition to state claims against.
-/

/-! ## A084779.P11596788868828162029

`A051184(n)+A008620(A125329(n))`
-/

namespace A084779.P11596788868828162029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051184 n + A008620 (A125329 n).toNat

end

end A084779.P11596788868828162029

/-!
# A084780: a(n) = sum of absolute-valued coefficients of (1+3*x-x^2)^n.

The programs for A084780, there is no canonical definition to state claims against.
-/

/-! ## A084780.P16994217859579017937

`A331873(A000079(n))+A000225(2*n)`
-/

namespace A084780.P16994217859579017937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (A000079 n).toNat + A000225 (2 * n)

end

end A084780.P16994217859579017937

/-! ## A084780.P8910996494527778182

`or(A137735(A298094(n+1)), A289786(n))`
-/

namespace A084780.P8910996494527778182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137735 (A298094 (n + 1)).toNat) (A289786 n)

end

end A084780.P8910996494527778182

/-!
# A084781: G.f. A(x) satisfies A(x) = 1 + x*(1+x+x^2)*A(x)^2.

The programs for A084781, there is no canonical definition to state claims against.
-/

/-! ## A084781.P7254466514556064785

`A059995(A049160(n))+A049188(n+1)`
-/

namespace A084781.P7254466514556064785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A049160 n).toNat + A049188 (n + 1)

end

end A084781.P7254466514556064785

/-! ## A084781.P17397120199323716098

`A195174(2*A151034(n))`
-/

namespace A084781.P17397120199323716098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (2 * A151034 n).toNat

end

end A084781.P17397120199323716098

/-! ## A084781.P2835478433053060900

`A110656(or(4^n, A001060(n)))`
-/

namespace A084781.P2835478433053060900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lor (4 ^ n : ℤ) (A001060 n)).toNat

end

end A084781.P2835478433053060900

/-!
# A084782: G.f.: A(x) = 1 + x*A(x)^2/(1-x-x^2).

The programs for A084782, there is no canonical definition to state claims against.
-/

/-! ## A084782.P7889548944543522268

`A026922(2*A151288(n))`
-/

namespace A084782.P7889548944543522268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (2 * A151288 n).toNat

end

end A084782.P7889548944543522268

/-! ## A084782.P17001313883104919848

`A054576(2*A151288(n))`
-/

namespace A084782.P17001313883104919848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A151288 n).toNat

end

end A084782.P17001313883104919848

/-! ## A084782.P1421405412542436899

`A110656(4*A151288(n))`
-/

namespace A084782.P1421405412542436899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A151288 n).toNat

end

end A084782.P1421405412542436899

/-!
# A084783: Triangle, read by rows, such that the diagonal (A084785) is the self-convolution of the first column (A084784) and the row sums (A084786) gives the differences of the diagonal and the first column.

The programs for A084783, there is no canonical definition to state claims against.
-/

/-! ## A084783.P4275235788393618088

`A133137(A076571(n))`
-/

namespace A084783.P4275235788393618088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A076571 n).toNat

end

end A084783.P4275235788393618088

/-! ## A084783.P14151120905467446082

`A153671(A111853(n+1)+A076571(n))`
-/

namespace A084783.P14151120905467446082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A111853 (n + 1) + A076571 n).toNat

end

end A084783.P14151120905467446082

/-! ## A084783.P9414841489401399788

`A076571(n)+A011731(A305751(n))`
-/

namespace A084783.P9414841489401399788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 n + A011731 (A305751 n).toNat

end

end A084783.P9414841489401399788

/-! ## A084783.P9908439330099329341

`A217096(A117779(n+1))+A076571(n)`
-/

namespace A084783.P9908439330099329341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A117779 (n + 1)).toNat + A076571 n

end

end A084783.P9908439330099329341

/-! ## A084783.P11612581164306544775

`A304572(A261049(n+3))+A076571(n)`
-/

namespace A084783.P11612581164306544775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (A261049 (n + 3)).toNat + A076571 n

end

end A084783.P11612581164306544775

/-!
# A084784: Binomial transform = self-convolution: first column of the triangle (A084783).

The programs for A084784, there is no canonical definition to state claims against.
-/

/-! ## A084784.P4142720440337427727

`A084783(∑[n])`
-/

namespace A084784.P4142720440337427727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084784.P4142720440337427727

/-! ## A084784.P7511972094399522341

`gcd(A000038(n), A084783(A000217(n)))`
-/

namespace A084784.P7511972094399522341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A084783 (A000217 n).toNat)

end

end A084784.P7511972094399522341

/-! ## A084784.P5499617825498609053

`A000010(ceil(2/(n+1)))*A084783(A000217(n))`
-/

namespace A084784.P5499617825498609053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat * A084783 (A000217 n).toNat

end

end A084784.P5499617825498609053

/-! ## A084784.P1048353401947825097

`A084783(A000217(n))%A234197(n+1)`
-/

namespace A084784.P1048353401947825097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084783 (A000217 n).toNat) (A234197 (n + 1))

end

end A084784.P1048353401947825097

/-! ## A084784.P17440055300926910770

`A014963(A033572(n))*A084783(A000217(n))`
-/

namespace A084784.P17440055300926910770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A033572 n).toNat * A084783 (A000217 n).toNat

end

end A084784.P17440055300926910770

/-!
# A084785: Diagonal of the triangle (A084783) and the self-convolution of the first column (A084784).

The programs for A084785, there is no canonical definition to state claims against.
-/

/-! ## A084785.P7852732916315083187

`A084783(∑[n]+n)`
-/

namespace A084785.P7852732916315083187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A084785.P7852732916315083187

/-! ## A084785.P3871262237744894505

`record[A084783(A061579(n))]`
-/

namespace A084785.P3871262237744894505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084785.P3871262237744894505

/-! ## A084785.P1371705887734548565

`record[A084783(n)/A038255(n)]`
-/

namespace A084785.P1371705887734548565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084783 n : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084785.P1371705887734548565

/-! ## A084785.P3482876398609528674

`record[A084783(A038722(n+1)-1)]`
-/

namespace A084785.P3482876398609528674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (A038722 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084785.P3482876398609528674

/-! ## A084785.P4802159471273118491

`record[A084783(n)/A008275(n+1)]`
-/

namespace A084785.P4802159471273118491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084783 n : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084785.P4802159471273118491

/-!
# A084786: Row sums of the triangle (A084783) and the differences of the main diagonal (A084785) and the first column (A084784).

The programs for A084786, there is no canonical definition to state claims against.
-/

/-! ## A084786.P5533259896888214741

`A084785(n+1)-A084784(n+1)`
-/

namespace A084786.P5533259896888214741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084785 (n + 1) - A084784 (n + 1)

end

end A084786.P5533259896888214741

/-! ## A084786.P9230204647328190451

`A084783(∑[n+1]+n+1)-A084784(n+1)`
-/

namespace A084786.P9230204647328190451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)) - A084784 (n + 1)

end

end A084786.P9230204647328190451

/-! ## A084786.P4277786747127998634

`record[A084783(A061579(n+1))-A084783(n+1)]`
-/

namespace A084786.P4277786747127998634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (A061579 (n + 1)).toNat - A084783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084786.P4277786747127998634

/-!
# A084787: Least integer such that e^n/(ceiling(e^n) + a(n)) monotonically decreases.

The programs for A084787, there is no canonical definition to state claims against.
-/

/-! ## A084787.P18144836598694997026

`∑[∑[A000006(A193778(n))]]`
-/

namespace A084787.P18144836598694997026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A193778 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084787.P18144836598694997026

/-! ## A084787.P410660938122779553

`A061667(n+1)-A007814(A200754(n))`
-/

namespace A084787.P410660938122779553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061667 (n + 1) - A007814 (A200754 n).toNat

end

end A084787.P410660938122779553

/-! ## A084787.P13118313144332373805

`A187187(A367656(n+3))-A187199(n+1)`
-/

namespace A084787.P13118313144332373805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A367656 (n + 3)).toNat - A187199 (n + 1)

end

end A084787.P13118313144332373805

/-!
# A084788: Sizes of successive increasing gaps between 3-smooth numbers.

The programs for A084788, there is no canonical definition to state claims against.
-/

/-! ## A084788.P6444296308409699004

`A084790(n+1)-A084789(n+1)`
-/

namespace A084788.P6444296308409699004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084790 (n + 1) - A084789 (n + 1)

end

end A084788.P6444296308409699004

/-! ## A084788.P17877643178008175845

`A061987(A084791(n+1))`
-/

namespace A084788.P17877643178008175845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 (A084791 (n + 1)).toNat

end

end A084788.P17877643178008175845

/-! ## A084788.P16660762282530171710

`record[A061987(n)]`
-/

namespace A084788.P16660762282530171710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084788.P16660762282530171710

/-! ## A084788.P8599435211361845001

`record[Δ[A003586(n+1)]]`
-/

namespace A084788.P8599435211361845001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084788.P8599435211361845001

/-! ## A084788.P10053015964432053757

`record[Δ[A055600(n+1)]]`
-/

namespace A084788.P10053015964432053757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084788.P10053015964432053757

/-! ## A084788.P9286696760403861037

`record[Δ[A069353(n+1)]]`
-/

namespace A084788.P9286696760403861037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084788.P9286696760403861037

/-! ## A084788.P6920544043411704942

`record[A003586(n+2)-A003586(n+1)]`
-/

namespace A084788.P6920544043411704942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 2) - A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084788.P6920544043411704942

/-! ## A084788.P4076054763894070481

`record[(A190812(n+2)-A190812(n+1))/2]`
-/

namespace A084788.P4076054763894070481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190812 (n + 2) - A190812 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084788.P4076054763894070481

/-! ## A084788.P3892666014848511980

`A084790(n+1)-A003586(A084791(n+1))`
-/

namespace A084788.P3892666014848511980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084790 (n + 1) - A003586 (A084791 (n + 1)).toNat

end

end A084788.P3892666014848511980

/-!
# A084789: Increasing gaps between 3-smooth numbers (lower end).

The programs for A084789, there is no canonical definition to state claims against.
-/

/-! ## A084789.P11760768447211019236

`A084790(n+1)-A084788(n+1)`
-/

namespace A084789.P11760768447211019236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084790 (n + 1) - A084788 (n + 1)

end

end A084789.P11760768447211019236

/-! ## A084789.P15458460883169103550

`A003586(A084791(n+1))`
-/

namespace A084789.P15458460883169103550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A084791 (n + 1)).toNat

end

end A084789.P15458460883169103550

/-! ## A084789.P6285114560035068843

`A084790(n+1)-record[A061987(n)]`
-/

namespace A084789.P6285114560035068843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084790 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084789.P6285114560035068843

/-! ## A084789.P6471710000739369893

`A084790(n+1)-record[Δ[A003586(n+1)]]`
-/

namespace A084789.P6471710000739369893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084790 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084789.P6471710000739369893

/-! ## A084789.P13369482262762502324

`A084790(n+1)-A061987(A084791(n+1))`
-/

namespace A084789.P13369482262762502324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084790 (n + 1) - A061987 (A084791 (n + 1)).toNat

end

end A084789.P13369482262762502324

/-! ## A084789.P1794383927166327108

`A069353(A084791(n+1))+A000161(C(n, n²))`
-/

namespace A084789.P1794383927166327108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A084791 (n + 1)).toNat + A000161 (Nat.choose n (n ^ 2))

end

end A084789.P1794383927166327108

/-! ## A084789.P11902905184422642659

`A069353(A084791(n+1))+A007318(gcd(n, n+2))`
-/

namespace A084789.P11902905184422642659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A084791 (n + 1)).toNat + A007318 (Nat.gcd n (n + 2))

end

end A084789.P11902905184422642659

/-! ## A084789.P8489786378768722630

`A069353(A084791(n+1))-A008683(A007520(n+1))`
-/

namespace A084789.P8489786378768722630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A084791 (n + 1)).toNat - A008683 (A007520 (n + 1)).toNat

end

end A084789.P8489786378768722630

/-!
# A084790: Increasing gaps between 3-smooth numbers (upper end).

The programs for A084790, there is no canonical definition to state claims against.
-/

/-! ## A084790.P8752453281432243037

`A084788(n+1)+A084789(n+1)`
-/

namespace A084790.P8752453281432243037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084788 (n + 1) + A084789 (n + 1)

end

end A084790.P8752453281432243037

/-! ## A084790.P4298985894973503514

`A003586(A084791(n+1)+1)`
-/

namespace A084790.P4298985894973503514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A084791 (n + 1) + 1).toNat

end

end A084790.P4298985894973503514

/-! ## A084790.P15384218111188310241

`A069353(A084791(n+1)+1)+1`
-/

namespace A084790.P15384218111188310241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A084791 (n + 1) + 1).toNat + 1

end

end A084790.P15384218111188310241

/-! ## A084790.P12119403062072079511

`A084789(n+1)+record[Δ[A003586(n+1)]]`
-/

namespace A084790.P12119403062072079511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084789 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084790.P12119403062072079511

/-! ## A084790.P7280266264111498443

`A084789(n+1)+A061987(A084791(n+1))`
-/

namespace A084790.P7280266264111498443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084789 (n + 1) + A061987 (A084791 (n + 1)).toNat

end

end A084790.P7280266264111498443

/-!
# A084791: Where record gaps between 3-smooth numbers occur.

The programs for A084791, there is no canonical definition to state claims against.
-/

/-! ## A084791.P16222039140969604666

`A322026(A084789(n+1))`
-/

namespace A084791.P16222039140969604666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A084789 (n + 1)).toNat

end

end A084791.P16222039140969604666

/-! ## A084791.P16752836590914227603

`A322026(A084790(n+1))-1`
-/

namespace A084791.P16752836590914227603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A084790 (n + 1)).toNat - 1

end

end A084791.P16752836590914227603

/-! ## A084791.P14083755940618553378

`A331175(3*A084789(n+1))`
-/

namespace A084791.P14083755940618553378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331175 (3 * A084789 (n + 1)).toNat

end

end A084791.P14083755940618553378

/-! ## A084791.P278090594369741251

`A071521(or(1, A084789(n+1)))`
-/

namespace A084791.P278090594369741251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (Int.lor 1 (A084789 (n + 1))).toNat

end

end A084791.P278090594369741251

/-! ## A084791.P5987364759012340113

`A071521(A084789(n+1)+n)`
-/

namespace A084791.P5987364759012340113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A084789 (n + 1) + (n : ℤ)).toNat

end

end A084791.P5987364759012340113

/-!
# A084792: Primes other than those of the form prime(prime(n)+n-1).

The programs for A084792, the canonical program `A084792.P10596812045351244596` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084792 has offset 1).

The definition of A084792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084792.P10596812045351244596

`A077152(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084792

/-- `A077152(n+1)-1` -/
def P10596812045351244596.Spec : Prop :=
  ∀ n, P10596812045351244596.a n = A084792 (n + 1)

theorem P10596812045351244596.correct : P10596812045351244596.Spec := by
  intro n
  simp only [A084792, Nat.add_sub_cancel]

end A084792

/-! ## A084792.P1072480671679382634

`A084747(n+1)+1+n`
-/

namespace A084792.P1072480671679382634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (n + 1) + 1 + (n : ℤ)

end

end A084792.P1072480671679382634

namespace A084792

/-- `A084747(n+1)+1+n` -/
def P1072480671679382634.Spec : Prop :=
  ∀ n, P1072480671679382634.a n = A084792 (n + 1)

theorem P1072480671679382634.correct : P1072480671679382634.Spec := by
  intro n
  simp only [A084792, Nat.add_sub_cancel, A084792.P1072480671679382634.a, A084792.P10596812045351244596.a, A077152, A077152.P46394233739287092.a, A084747, A084747.P15992443323963649350.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084792

/-! ## A084792.P547701181232021890

`A082911(n+1)+A000040(n+1)`
-/

namespace A084792.P547701181232021890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082911 (n + 1) + A000040 (n + 1)

end

end A084792.P547701181232021890

namespace A084792

/-- `A082911(n+1)+A000040(n+1)` -/
def P547701181232021890.Spec : Prop :=
  ∀ n, P547701181232021890.a n = A084792 (n + 1)

theorem P547701181232021890.correct : P547701181232021890.Spec := by
  intro n
  simp only [A084792, Nat.add_sub_cancel, A084792.P547701181232021890.a, A084792.P10596812045351244596.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A077152, A077152.P46394233739287092.a, A082911, A082911.P1325522171464418407.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084792

/-! ## A084792.P13803046569991569008

`A000040(∑[C(2, ∑{e}[n+1, #+1])]+n)`
-/

namespace A084792.P13803046569991569008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A084792.P13803046569991569008

namespace A084792

/-- `A000040(∑[C(2, ∑{e}[n+1, #+1])]+n)` -/
def P13803046569991569008.Spec : Prop :=
  ∀ n, P13803046569991569008.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P4807195782776541314

`A000040(A095117(n+1))`
-/

namespace A084792.P4807195782776541314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095117 (n + 1)).toNat

end

end A084792.P4807195782776541314

namespace A084792

/-- `A000040(A095117(n+1))` -/
def P4807195782776541314.Spec : Prop :=
  ∀ n, P4807195782776541314.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P10452093194515153696

`A008578(A064427(n+2))`
-/

namespace A084792.P10452093194515153696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064427 (n + 2)).toNat

end

end A084792.P10452093194515153696

namespace A084792

/-- `A008578(A064427(n+2))` -/
def P10452093194515153696.Spec : Prop :=
  ∀ n, P10452093194515153696.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P2402248993272466003

`A000040(Δ[A002815(n)]+n)`
-/

namespace A084792.P2402248993272466003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A084792.P2402248993272466003

namespace A084792

/-- `A000040(Δ[A002815(n)]+n)` -/
def P2402248993272466003.Spec : Prop :=
  ∀ n, P2402248993272466003.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P13998458625841006534

`A008578(A095117(n+1)+1)`
-/

namespace A084792.P13998458625841006534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095117 (n + 1) + 1).toNat

end

end A084792.P13998458625841006534

namespace A084792

/-- `A008578(A095117(n+1)+1)` -/
def P13998458625841006534.Spec : Prop :=
  ∀ n, P13998458625841006534.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P16885586489496631121

`A000040(A064427(n+2)-1)`
-/

namespace A084792.P16885586489496631121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064427 (n + 2) - 1).toNat

end

end A084792.P16885586489496631121

namespace A084792

/-- `A000040(A064427(n+2)-1)` -/
def P16885586489496631121.Spec : Prop :=
  ∀ n, P16885586489496631121.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P2675311344611991366

`A000040(A036234(n+1)+n)`
-/

namespace A084792.P2675311344611991366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (n + 1) + (n : ℤ)).toNat

end

end A084792.P2675311344611991366

namespace A084792

/-- `A000040(A036234(n+1)+n)` -/
def P2675311344611991366.Spec : Prop :=
  ∀ n, P2675311344611991366.a n = A084792 (n + 1)

theorem P2675311344611991366.correct : P2675311344611991366.Spec := by
  intro n
  simp only [A084792, Nat.add_sub_cancel, A084792.P2675311344611991366.a, A084792.P10596812045351244596.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036234, A036234.P2906282677021386800.a, A077152, A077152.P46394233739287092.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084792

/-! ## A084792.P13594443013137745261

`A000040(∑[Δ[A230980(n)]+1])`
-/

namespace A084792.P13594443013137745261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084792.P13594443013137745261

namespace A084792

/-- `A000040(∑[Δ[A230980(n)]+1])` -/
def P13594443013137745261.Spec : Prop :=
  ∀ n, P13594443013137745261.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P8673976457840977218

`A000040(∑[A010051(n+1)+1])`
-/

namespace A084792.P8673976457840977218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084792.P8673976457840977218

namespace A084792

/-- `A000040(∑[A010051(n+1)+1])` -/
def P8673976457840977218.Spec : Prop :=
  ∀ n, P8673976457840977218.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P6820719394954594476

`A008578(∑[A080339(n+1)+1])`
-/

namespace A084792.P6820719394954594476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084792.P6820719394954594476

namespace A084792

/-- `A008578(∑[A080339(n+1)+1])` -/
def P6820719394954594476.Spec : Prop :=
  ∀ n, P6820719394954594476.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P5235576471366792574

`A000040(∑[2-A005171(n+1)])`
-/

namespace A084792.P5235576471366792574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084792.P5235576471366792574

namespace A084792

/-- `A000040(∑[2-A005171(n+1)])` -/
def P5235576471366792574.Spec : Prop :=
  ∀ n, P5235576471366792574.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P10036003872663806637

`A000040(∑[A080339(n+1)]+n)`
-/

namespace A084792.P10036003872663806637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A084792.P10036003872663806637

namespace A084792

/-- `A000040(∑[A080339(n+1)]+n)` -/
def P10036003872663806637.Spec : Prop :=
  ∀ n, P10036003872663806637.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P16990687758946420851

`A000040(n+1+A000720(n+1))`
-/

namespace A084792.P16990687758946420851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A000720 (n + 1)).toNat

end

end A084792.P16990687758946420851

namespace A084792

/-- `A000040(n+1+A000720(n+1))` -/
def P16990687758946420851.Spec : Prop :=
  ∀ n, P16990687758946420851.a n = A084792 (n + 1)

theorem P16990687758946420851.correct : P16990687758946420851.Spec := by
  intro n
  simp only [A084792, Nat.add_sub_cancel, A084792.P16990687758946420851.a, A084792.P10596812045351244596.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A077152, A077152.P46394233739287092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084792

/-! ## A084792.P1434184691572955558

`A008578(A036234(n+1)+n+1)`
-/

namespace A084792.P1434184691572955558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (n + 1) + (n + 1 : ℤ)).toNat

end

end A084792.P1434184691572955558

namespace A084792

/-- `A008578(A036234(n+1)+n+1)` -/
def P1434184691572955558.Spec : Prop :=
  ∀ n, P1434184691572955558.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P16024483205591703887

`A000040(A230980(n+1)+n+1)`
-/

namespace A084792.P16024483205591703887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (n + 1) + (n + 1 : ℤ)).toNat

end

end A084792.P16024483205591703887

namespace A084792

/-- `A000040(A230980(n+1)+n+1)` -/
def P16024483205591703887.Spec : Prop :=
  ∀ n, P16024483205591703887.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P8326588093493580753

`A008578(A000720(n+1)+n+2)`
-/

namespace A084792.P8326588093493580753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 1) + (n + 2 : ℤ)).toNat

end

end A084792.P8326588093493580753

namespace A084792

/-- `A008578(A000720(n+1)+n+2)` -/
def P8326588093493580753.Spec : Prop :=
  ∀ n, P8326588093493580753.a n = A084792 (n + 1)

end A084792

/-! ## A084792.P1045327861572493940

`A182986(A000720(n+1)+n+2)`
-/

namespace A084792.P1045327861572493940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A000720 (n + 1) + (n + 2 : ℤ)).toNat

end

end A084792.P1045327861572493940

namespace A084792

/-- `A182986(A000720(n+1)+n+2)` -/
def P1045327861572493940.Spec : Prop :=
  ∀ n, P1045327861572493940.a n = A084792 (n + 1)

end A084792

/-!
# A084794: a(n) = floor( 1/frac(n*Pi/4) ).

The programs for A084794, there is no canonical definition to state claims against.
-/

/-! ## A084794.P15814827607981176761

`A089808(23*A187829(n+1))`
-/

namespace A084794.P15814827607981176761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (23 * A187829 (n + 1)).toNat

end

end A084794.P15814827607981176761

/-! ## A084794.P8988468077651950918

`A089808(lcm(23, A187829(n+1)))`
-/

namespace A084794.P8988468077651950918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (Int.lcm 23 (A187829 (n + 1)))

end

end A084794.P8988468077651950918

/-!
# A084795: a(n) = floor( 1/frac(n*(Pi)^2/6) ).

The programs for A084795, there is no canonical definition to state claims against.
-/

/-! ## A084795.P5535618641085607511

`A051250(A024564(n+1))`
-/

namespace A084795.P5535618641085607511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051250 (A024564 (n + 1)).toNat

end

end A084795.P5535618641085607511

/-! ## A084795.P2280872893690240940

`A105564(5*A024564(n+1))`
-/

namespace A084795.P2280872893690240940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (5 * A024564 (n + 1)).toNat

end

end A084795.P2280872893690240940

/-! ## A084795.P12419818832866211731

`A105564(lcm(5, A024564(n+1)))`
-/

namespace A084795.P12419818832866211731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (Int.lcm 5 (A024564 (n + 1)))

end

end A084795.P12419818832866211731

/-! ## A084795.P16508159122614408365

`A185284(A047363(2*(n+2)))+A024564(n+1)`
-/

namespace A084795.P16508159122614408365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A047363 (2 * (n + 2))).toNat + A024564 (n + 1)

end

end A084795.P16508159122614408365

/-!
# A084796: Replace n with concatenation of its prime factors in decreasing order.

The programs for A084796, there is no canonical definition to state claims against.
-/

/-! ## A084796.P6564795272188660792

`A084797(∑[∑[A076710(n)]])`
-/

namespace A084796.P6564795272188660792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084796.P6564795272188660792

/-! ## A084796.P13016772210155588110

`A084797(A076710(n)!+n)`
-/

namespace A084796.P13016772210155588110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (Nat.factorial (A076710 n).toNat + n)

end

end A084796.P13016772210155588110

/-! ## A084796.P5500906457315140126

`A084797(n+1)^exp(A076710(n))`
-/

namespace A084796.P5500906457315140126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084797 (n + 1) : ℝ) ^ (Real.exp (A076710 n : ℝ))

end

end A084796.P5500906457315140126

/-! ## A084796.P1489494336416267111

`A057427(A246884(n))*A084797(n+1)`
-/

namespace A084796.P1489494336416267111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A246884 n).toNat * A084797 (n + 1)

end

end A084796.P1489494336416267111

/-!
# A084798: Least integer such that x^(n+1)/(ceiling(x^n) + a(n)) monotonically decreases to 1, where x=2.30553839092543...

The programs for A084798, there is no canonical definition to state claims against.
-/

/-! ## A084798.P4734761176054455948

`A100196(A291380(n)+A033453(n))`
-/

namespace A084798.P4734761176054455948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A291380 n + A033453 n).toNat

end

end A084798.P4734761176054455948

/-! ## A084798.P13574742753022285108

`A100196(A335548(n)+A033453(n))`
-/

namespace A084798.P13574742753022285108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A335548 n + A033453 n).toNat

end

end A084798.P13574742753022285108

/-! ## A084798.P1461541698560317697

`A347744(A347776(n))+A001787(n)`
-/

namespace A084798.P1461541698560317697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (A347776 n).toNat + A001787 n

end

end A084798.P1461541698560317697

/-! ## A084798.P11031420705571678654

`A100196(or(A006584(n), A033453(n)))`
-/

namespace A084798.P11031420705571678654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A006584 n) (A033453 n)).toNat

end

end A084798.P11031420705571678654

