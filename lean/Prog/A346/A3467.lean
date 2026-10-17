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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A346700: Sum of the even bisection (even-indexed parts) of the integer partition with Heinz number n.

The programs for A346700, the canonical program `A346700.P4096194174196843212` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346700 has offset 1).

The definition of A346700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346700.P261269683406511294

`A056239(n+1)-A346699(n+1)`
-/

namespace A346700.P261269683406511294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A346699 (n + 1)

end

end A346700.P261269683406511294

namespace A346700

/-- `A056239(n+1)-A346699(n+1)` -/
def P261269683406511294.Spec : Prop :=
  ∀ n, P261269683406511294.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P3931347100155277776

`A346699(n+1)-A344616(n+1)`
-/

namespace A346700.P3931347100155277776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (n + 1) - A344616 (n + 1)

end

end A346700.P3931347100155277776

namespace A346700

/-- `A346699(n+1)-A344616(n+1)` -/
def P3931347100155277776.Spec : Prop :=
  ∀ n, P3931347100155277776.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P4096194174196843212

`A056239(A329888(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A346700

/-- `A056239(A329888(n+1))` -/
def P4096194174196843212.Spec : Prop :=
  ∀ n, P4096194174196843212.a n = A346700 (n + 1)

theorem P4096194174196843212.correct : P4096194174196843212.Spec := by
  intro n
  simp only [A346700, Nat.add_sub_cancel]

end A346700

/-! ## A346700.P12238810770353205073

`A346698(A329888(n+1)²)`
-/

namespace A346700.P12238810770353205073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A329888 (n + 1) ^ 2).toNat

end

end A346700.P12238810770353205073

namespace A346700

/-- `A346698(A329888(n+1)²)` -/
def P12238810770353205073.Spec : Prop :=
  ∀ n, P12238810770353205073.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P5150565776036613546

`(A056239(n+1)-A344616(n+1))/2`
-/

namespace A346700.P5150565776036613546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) - A344616 (n + 1) : ℚ) / 2

end

end A346700.P5150565776036613546

namespace A346700

/-- `(A056239(n+1)-A344616(n+1))/2` -/
def P5150565776036613546.Spec : Prop :=
  ∀ n, P5150565776036613546.a n = (A346700 (n + 1) : ℚ)

end A346700

/-! ## A346700.P14035175471697727200

`A004525(A056239(n+1)-A344616(n+1))`
-/

namespace A346700.P14035175471697727200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A056239 (n + 1) - A344616 (n + 1)).toNat

end

end A346700.P14035175471697727200

namespace A346700

/-- `A004525(A056239(n+1)-A344616(n+1))` -/
def P14035175471697727200.Spec : Prop :=
  ∀ n, P14035175471697727200.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P5468481548803090931

`A004526(A056239(n+1)-A344616(n+1))`
-/

namespace A346700.P5468481548803090931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056239 (n + 1) - A344616 (n + 1)).toNat

end

end A346700.P5468481548803090931

namespace A346700

/-- `A004526(A056239(n+1)-A344616(n+1))` -/
def P5468481548803090931.Spec : Prop :=
  ∀ n, P5468481548803090931.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P3389358997412376757

`A025480(A056239(n+1)-A344616(n+1))`
-/

namespace A346700.P3389358997412376757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A056239 (n + 1) - A344616 (n + 1)).toNat

end

end A346700.P3389358997412376757

namespace A346700

/-- `A025480(A056239(n+1)-A344616(n+1))` -/
def P3389358997412376757.Spec : Prop :=
  ∀ n, P3389358997412376757.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P12885078862015743539

`A346698(A329888(n+1)*A329888(n+1))`
-/

namespace A346700.P12885078862015743539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A329888 (n + 1) * A329888 (n + 1)).toNat

end

end A346700.P12885078862015743539

namespace A346700

/-- `A346698(A329888(n+1)*A329888(n+1))` -/
def P12885078862015743539.Spec : Prop :=
  ∀ n, P12885078862015743539.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P6832550541800983120

`A056239(A330690(n+1))`
-/

namespace A346700.P6832550541800983120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A330690 (n + 1)).toNat

end

end A346700.P6832550541800983120

namespace A346700

/-- `A056239(A330690(n+1))` -/
def P6832550541800983120.Spec : Prop :=
  ∀ n, P6832550541800983120.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P5544221293685411606

`∑{e}[A329602(n+1), #]`
-/

namespace A346700.P5544221293685411606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A346700.P5544221293685411606

namespace A346700

/-- `∑{e}[A329602(n+1), #]` -/
def P5544221293685411606.Spec : Prop :=
  ∀ n, (P5544221293685411606.a n : ℤ) = A346700 (n + 1)

end A346700

/-! ## A346700.P16061824408587491169

`A001222(A329602(n+1))`
-/

namespace A346700.P16061824408587491169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329602 (n + 1)).toNat

end

end A346700.P16061824408587491169

namespace A346700

/-- `A001222(A329602(n+1))` -/
def P16061824408587491169.Spec : Prop :=
  ∀ n, P16061824408587491169.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P9451148344887773549

`A346699(A052126(n+1))`
-/

namespace A346700.P9451148344887773549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A052126 (n + 1)).toNat

end

end A346700.P9451148344887773549

namespace A346700

/-- `A346699(A052126(n+1))` -/
def P9451148344887773549.Spec : Prop :=
  ∀ n, P9451148344887773549.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P2251647870286451953

`A346699((n+1)/A006530(n+1))`
-/

namespace A346700.P2251647870286451953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A346700.P2251647870286451953

namespace A346700

/-- `A346699((n+1)/A006530(n+1))` -/
def P2251647870286451953.Spec : Prop :=
  ∀ n, P2251647870286451953.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P3303828560912657253

`A346699(A342768(n+1)/(n+1))`
-/

namespace A346700.P3303828560912657253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A346700.P3303828560912657253

namespace A346700

/-- `A346699(A342768(n+1)/(n+1))` -/
def P3303828560912657253.Spec : Prop :=
  ∀ n, P3303828560912657253.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P17031619971786423386

`A346699(A329888(A342768(n+1)))`
-/

namespace A346700.P17031619971786423386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A329888 (A342768 (n + 1)).toNat).toNat

end

end A346700.P17031619971786423386

namespace A346700

/-- `A346699(A329888(A342768(n+1)))` -/
def P17031619971786423386.Spec : Prop :=
  ∀ n, P17031619971786423386.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P4132018407371485512

`A001222(A019554(A331188(n+1)))`
-/

namespace A346700.P4132018407371485512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019554 (A331188 (n + 1)).toNat).toNat

end

end A346700.P4132018407371485512

namespace A346700

/-- `A001222(A019554(A331188(n+1)))` -/
def P4132018407371485512.Spec : Prop :=
  ∀ n, P4132018407371485512.a n = A346700 (n + 1)

end A346700

/-! ## A346700.P1478012144122248834

`A346699(A000188(A253553((n+1)²)))`
-/

namespace A346700.P1478012144122248834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A000188 (A253553 ((n + 1) ^ 2)).toNat).toNat

end

end A346700.P1478012144122248834

namespace A346700

/-- `A346699(A000188(A253553((n+1)²)))` -/
def P1478012144122248834.Spec : Prop :=
  ∀ n, P1478012144122248834.a n = A346700 (n + 1)

end A346700

/-!
# A346701: Heinz number of the odd bisection (odd-indexed parts) of the integer partition with Heinz number n.

The programs for A346701, there is no canonical definition to state claims against.
-/

/-! ## A346701.P6930904256275482553

`A329888(71*(n+1))`
-/

namespace A346701.P6930904256275482553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (71 * (n + 1))

end

end A346701.P6930904256275482553

/-! ## A346701.P458996078553902257

`(n+1)/A329888(n+1)`
-/

namespace A346701.P458996078553902257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329888 (n + 1) : ℚ)

end

end A346701.P458996078553902257

/-! ## A346701.P10782985853810372765

`(n+1)/a(A052126(n+1)-1)` with `a(0)=1`
-/

namespace A346701.P10782985853810372765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (A052126 (n + 1) - 1).toNat

end

end A346701.P10782985853810372765

/-! ## A346701.P1836047168672268808

`(n+1)/a(floor(n/A006530(n+1)))` with `a(0)=1`
-/

namespace A346701.P1836047168672268808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat

end

end A346701.P1836047168672268808

/-! ## A346701.P7790615888155115460

`A329888(A020338(n+1))%82`
-/

namespace A346701.P7790615888155115460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329888 (A020338 (n + 1)).toNat) 82

end

end A346701.P7790615888155115460

/-! ## A346701.P4964697314075178716

`A054531(A329888(n+1)+∑[n])`
-/

namespace A346701.P4964697314075178716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A329888 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346701.P4964697314075178716

/-! ## A346701.P8362507449196556828

`(n+1)/A319626(A329602(n+1))`
-/

namespace A346701.P8362507449196556828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A319626 (A329602 (n + 1)).toNat : ℚ)

end

end A346701.P8362507449196556828

/-! ## A346701.P15581156622194488349

`A329888(A020338(n+1))^A000203(gcd(n, n+1))`
-/

namespace A346701.P15581156622194488349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329888 (A020338 (n + 1)).toNat : ℚ) ^ (A000203 (Nat.gcd n (n + 1)) : ℤ)

end

end A346701.P15581156622194488349

/-! ## A346701.P8208039083733507389

`A346703(n+1)+A346704(n+1)-A329888(n+1)`
-/

namespace A346701.P8208039083733507389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (n + 1) + (A346704 (n + 1) - A329888 (n + 1))

end

end A346701.P8208039083733507389

/-! ## A346701.P4358910402576088706

`A329888(A020338(n+1))+A034432(A065033(n))`
-/

namespace A346701.P4358910402576088706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A020338 (n + 1)).toNat + A034432 (A065033 n).toNat

end

end A346701.P4358910402576088706

/-!
# A346702: The a(n)-th composition in standard order is the odd bisection of the n-th composition in standard order.

The programs for A346702, there is no canonical definition to state claims against.
-/

/-! ## A346702.P5149162355002945852

`A385887(A006068(n))`
-/

namespace A346702.P5149162355002945852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 (A006068 n).toNat

end

end A346702.P5149162355002945852

/-! ## A346702.P5052781044367598285

`A346705(2^ceil(log2(n+1))+n)`
-/

namespace A346702.P5052781044367598285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A346702.P5052781044367598285

/-! ## A346702.P896368910984039691

`A385887(A268716(n))`
-/

namespace A346702.P896368910984039691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 (A268716 n).toNat

end

end A346702.P896368910984039691

/-! ## A346702.P3244767261845527802

`A346705(A004760(n+2))%17`
-/

namespace A346702.P3244767261845527802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346705 (A004760 (n + 2)).toNat) 17

end

end A346702.P3244767261845527802

/-! ## A346702.P6311401755920705768

`A375125(n*A365425(n))`
-/

namespace A346702.P6311401755920705768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 ((n : ℤ) * A365425 n).toNat

end

end A346702.P6311401755920705768

/-!
# A346703: Product of primes at odd positions in the weakly increasing list (with multiplicity) of prime factors of n.

The programs for A346703, there is no canonical definition to state claims against.
-/

/-! ## A346703.P13037007221861593759

`A346704(2*(n+1))`
-/

namespace A346703.P13037007221861593759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (2 * (n + 1))

end

end A346703.P13037007221861593759

/-! ## A346703.P9019689447315460308

`(n+1)/A346704(n+1)`
-/

namespace A346703.P9019689447315460308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346704 (n + 1) : ℚ)

end

end A346703.P9019689447315460308

/-! ## A346703.P1476033231604799178

`(n+1)/a(A089196(n))` with `a(0)=1`
-/

namespace A346703.P1476033231604799178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (A089196 n).toNat

end

end A346703.P1476033231604799178

/-! ## A346703.P15193866955727766236

`and(-1, A346704(record[2-xor(1, -n)]))`
-/

namespace A346703.P15193866955727766236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A346704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A346703.P15193866955727766236

/-! ## A346703.P3198160724013282599

`(n+1)/a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A346703.P3198160724013282599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (A032742 (n + 1) - 1).toNat

end

end A346703.P3198160724013282599

/-! ## A346703.P13611449102870200759

`(n+1)/a(n-A060681(n+1))` with `a(0)=1`
-/

namespace A346703.P13611449102870200759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a ((n : ℤ) - A060681 (n + 1)).toNat

end

end A346703.P13611449102870200759

/-! ## A346703.P10956493860168023276

`(n+1)/a(floor(n/A020639(n+1)))` with `a(0)=1`
-/

namespace A346703.P10956493860168023276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋.toNat

end

end A346703.P10956493860168023276

/-! ## A346703.P3593437445870734417

`A126988(A346704(n+1)+∑[n])`
-/

namespace A346703.P3593437445870734417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A346704 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346703.P3593437445870734417

/-! ## A346703.P12585307675602584547

`A051537(A346704(n+1)+A000217(n))`
-/

namespace A346703.P12585307675602584547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A346704 (n + 1) + A000217 n).toNat

end

end A346703.P12585307675602584547

/-!
# A346704: Product of primes at even positions in the weakly increasing list (with multiplicity) of prime factors of n.

The programs for A346704, there is no canonical definition to state claims against.
-/

/-! ## A346704.P18270990589284342188

`A032742((n+1)/a(A089196(n)))` with `a(0)=1`
-/

namespace A346704.P18270990589284342188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (a (A089196 n).toNat : ℚ))).toNat

end

end A346704.P18270990589284342188

/-! ## A346704.P8710638669715499194

`A032742(n+1)/a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A346704.P8710638669715499194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A032742 (n + 1) : ℚ) / a (A032742 (n + 1) - 1).toNat

end

end A346704.P8710638669715499194

/-! ## A346704.P11700416878552512512

`A032742((n+1)/a(floor(n/A020639(n+1))))` with `a(0)=1`
-/

namespace A346704.P11700416878552512512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (a ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋.toNat : ℚ))).toNat

end

end A346704.P11700416878552512512

/-! ## A346704.P16444649909817552162

`A346703(A032742(n+1))`
-/

namespace A346704.P16444649909817552162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A032742 (n + 1)).toNat

end

end A346704.P16444649909817552162

/-! ## A346704.P256922699006887806

`A346703(A054576(2*(n+1)))`
-/

namespace A346704.P256922699006887806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A054576 (2 * (n + 1))).toNat

end

end A346704.P256922699006887806

/-! ## A346704.P4050491217423820006

`A346703((n+1)/A020639(n+1))`
-/

namespace A346704.P4050491217423820006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A346704.P4050491217423820006

/-! ## A346704.P4545568059432665022

`A346703(xor(n+1, A106409(n+1)))`
-/

namespace A346704.P4545568059432665022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (Int.xor (n + 1 : ℤ) (A106409 (n + 1))).toNat

end

end A346704.P4545568059432665022

/-! ## A346704.P15312151506617500271

`A346703(A130064(n+1)/A006530(n+1))`
-/

namespace A346704.P15312151506617500271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (SequenceMachineLib.roundAway ((A130064 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A346704.P15312151506617500271

/-!
# A346705: The a(n)-th composition in standard order is the even bisection of the n-th composition in standard order.

The programs for A346705, there is no canonical definition to state claims against.
-/

/-! ## A346705.P10251556007005880014

`A346702(n-A053644(n))`
-/

namespace A346705.P10251556007005880014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 ((n : ℤ) - A053644 n).toNat

end

end A346705.P10251556007005880014

/-! ## A346705.P766945787243346176

`A346702(xor(n, A053644(n)))`
-/

namespace A346705.P766945787243346176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (Int.xor (n : ℤ) (A053644 n)).toNat

end

end A346705.P766945787243346176

/-! ## A346705.P4628265175381246657

`A346702(A006257(n)-A010060(n))`
-/

namespace A346705.P4628265175381246657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A006257 n - A010060 n).toNat

end

end A346705.P4628265175381246657

/-! ## A346705.P16861208313381095651

`A346702(A000069(n+1)-A062383(n))`
-/

namespace A346705.P16861208313381095651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A000069 (n + 1) - A062383 n).toNat

end

end A346705.P16861208313381095651

/-! ## A346705.P11093887396062477359

`A346702(A000069(n+1)%A062383(n))`
-/

namespace A346705.P11093887396062477359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (Int.tmod (A000069 (n + 1)) (A062383 n)).toNat

end

end A346705.P11093887396062477359

/-! ## A346705.P7083672019732082954

`A346702(and(A000069(n+1), A003817(n)))`
-/

namespace A346705.P7083672019732082954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (Int.land (A000069 (n + 1)) (A003817 n)).toNat

end

end A346705.P7083672019732082954

/-! ## A346705.P11027436953396633906

`A346702(and(A000069(n+1), A006257(n)))`
-/

namespace A346705.P11027436953396633906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (Int.land (A000069 (n + 1)) (A006257 n)).toNat

end

end A346705.P11027436953396633906

/-! ## A346705.P5903000510419669123

`A346702(A000069(n+1)-(A003817(n)+1))`
-/

namespace A346705.P5903000510419669123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A000069 (n + 1) - (A003817 n + 1)).toNat

end

end A346705.P5903000510419669123

/-!
# A346706: Lesser members of twin primes which are the sum of the first k primes for some number k.

The programs for A346706, there is no canonical definition to state claims against.
-/

/-! ## A346706.P15049643813638271631

`p?[p?[A036439(n+1)]-2]`
-/

namespace A346706.P15049643813638271631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346706.P15049643813638271631

/-! ## A346706.P7205753631994631666

`p?[p?[A175965(n+1)]-2]`
-/

namespace A346706.P7205753631994631666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346706.P7205753631994631666

/-! ## A346706.P10277009673908079226

`p?[p?[A007504(n)+2]-2]`
-/

namespace A346706.P10277009673908079226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346706.P10277009673908079226

/-! ## A346706.P12991275994216670806

`p?[A013918(n+1)+2]-2`
-/

namespace A346706.P12991275994216670806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013918 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A346706.P12991275994216670806

/-! ## A346706.P15841963606127802921

`p?[A202301(2*(n+1))-2]`
-/

namespace A346706.P15841963606127802921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346706.P15841963606127802921

/-!
# A346707: "Look once to the left" sequence, omitting a(k) for each iteration k, starting with 1,2 (see example).

The programs for A346707, there is no canonical definition to state claims against.
-/

/-! ## A346707.P15645483491886863894

`A296774(A060594(n+1)*A322362(n+1))`
-/

namespace A346707.P15645483491886863894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (A060594 (n + 1) * A322362 (n + 1)).toNat

end

end A346707.P15645483491886863894

/-! ## A346707.P10460810944961275512

`A112380(gcd(A113243(n+1), A176095(n+1)))`
-/

namespace A346707.P10460810944961275512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112380 (Int.gcd (A113243 (n + 1)) (A176095 (n + 1)))

end

end A346707.P10460810944961275512

/-! ## A346707.P18350245987622694528

`(A289437(A231369(2*n+5))-A039649(n+1)+n)%2+1`
-/

namespace A346707.P18350245987622694528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289437 (A231369 (2 * n + 5)).toNat - A039649 (n + 1) + (n : ℤ)) 2 + 1

end

end A346707.P18350245987622694528

/-! ## A346707.P3872366140283723730

`gcd(A038041(n+1), A113680(A072961(n+2)))`
-/

namespace A346707.P3872366140283723730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038041 (n + 1)) (A113680 (A072961 (n + 2)).toNat)

end

end A346707.P3872366140283723730

/-! ## A346707.P2527619761217660935

`gcd(A205032(n+1), A227548(n+1))`
-/

namespace A346707.P2527619761217660935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205032 (n + 1)) (A227548 (n + 1))

end

end A346707.P2527619761217660935

/-!
# A346710: The denominators of the semiderivative of the Bernoulli polynomials at x = 1 and normalized by sqrt(Pi).

The programs for A346710, there is no canonical definition to state claims against.
-/

/-! ## A346710.P5452551495656492713

`∏{p}[(2*n)!, #/gcd(#, 2*n)]`
-/

namespace A346710.P5452551495656492713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (Nat.gcd p (2 * n) : ℚ)

end

end A346710.P5452551495656492713

/-!
# A346712: Denominators of a fractional order v differentiation of the Bernoulli polynomials with v = 1/2, evaluated at x = 1 and normalized by sqrt(Pi).

The programs for A346712, there is no canonical definition to state claims against.
-/

/-! ## A346712.P17235311408780838130

`A144090(A018112(n))`
-/

namespace A346712.P17235311408780838130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144090 (A018112 n).toNat

end

end A346712.P17235311408780838130

/-!
# A346715: The denominators of the semiderivative of the Euler polynomials at x = 1 and normalized by sqrt(Pi).

The programs for A346715, there is no canonical definition to state claims against.
-/

/-! ## A346715.P1458875454446426075

`A055786(n)/A101027(A026008(n))`
-/

namespace A346715.P1458875454446426075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055786 n : ℚ) / (A101027 (A026008 n).toNat : ℚ)

end

end A346715.P1458875454446426075

/-! ## A346715.P8958449038832041825

`A004184(gcd(A055786(n), A202620(n)))`
-/

namespace A346715.P8958449038832041825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (Int.gcd (A055786 n) (A202620 n))

end

end A346715.P8958449038832041825

/-! ## A346715.P10954584481487522669

`gcd(A000984(n), A033429(A337568(n+2)))`
-/

namespace A346715.P10954584481487522669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A033429 (A337568 (n + 2)).toNat)

end

end A346715.P10954584481487522669

/-! ## A346715.P15266851747644330712

`gcd(A028234(A000984(n)), A337691(n))`
-/

namespace A346715.P15266851747644330712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028234 (A000984 n).toNat) (A337691 n)

end

end A346715.P15266851747644330712

/-!
# A346719: a(n) is the number of positive Euler permutations of order 2*n. Bisection (even indices) of A347601.

The programs for A346719, there is no canonical definition to state claims against.
-/

/-! ## A346719.P9606568686334688204

`A346720(n)+A028296(n)`
-/

namespace A346719.P9606568686334688204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346720 n + A028296 n

end

end A346719.P9606568686334688204

/-! ## A346719.P14918075567952132185

`A346720(n)+A122045(2*n)`
-/

namespace A346719.P14918075567952132185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346720 n + A122045 (2 * n)

end

end A346719.P14918075567952132185

/-! ## A346719.P14795171306162899995

`A346720(n)+A241209(2*n)`
-/

namespace A346719.P14795171306162899995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346720 n + A241209 (2 * n)

end

end A346719.P14795171306162899995

/-! ## A346719.P17505078965055036417

`A000166(2*n)-A346720(n)`
-/

namespace A346719.P17505078965055036417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (2 * n) - A346720 n

end

end A346719.P17505078965055036417

/-! ## A346719.P8938114394020265227

`A346720(n)+Δ[A009390(2*n)]`
-/

namespace A346719.P8938114394020265227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346720 n + (f1 (n + 1) - f1 n)

end

end A346719.P8938114394020265227

/-!
# A346720: a(n) is the number of negative Euler permutations of order 2*n. Bisection (even indices) of A347602.

The programs for A346720, there is no canonical definition to state claims against.
-/

/-! ## A346720.P8763358378271989224

`A346719(n)-A028296(n)`
-/

namespace A346720.P8763358378271989224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346719 n - A028296 n

end

end A346720.P8763358378271989224

/-! ## A346720.P2087178627457588128

`A346719(n)-A347598(2*n)`
-/

namespace A346720.P2087178627457588128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346719 n - A347598 (2 * n)

end

end A346720.P2087178627457588128

/-! ## A346720.P4121357409556499883

`A347602(2*n)`
-/

namespace A346720.P4121357409556499883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347602 (2 * n)

end

end A346720.P4121357409556499883

/-! ## A346720.P10946978128527071449

`or(n, A347602(A005843(n)))`
-/

namespace A346720.P10946978128527071449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A347602 (A005843 n).toNat)

end

end A346720.P10946978128527071449

/-! ## A346720.P17296475516888239374

`record[A182386(n)-A347601(n)]`
-/

namespace A346720.P17296475516888239374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n - A347601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346720.P17296475516888239374

/-!
# A346722: Use the cells of a hexagonal grid to represent the algebraic integers in the integer ring of Q(sqrt(-11)) as explained in the comments. Number the cells along the counterclockwise hexagonal spiral that starts with cells 0 and 1 representing integers 0 and 1. List the cells that represent 0 or a prime in the ring.

The programs for A346722, there is no canonical definition to state claims against.
-/

/-! ## A346722.P6169807919630802460

`eq[A109036(n), A280951(A327858(2*n+1))]`
-/

namespace A346722.P6169807919630802460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A327858 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346722.P6169807919630802460

/-! ## A346722.P251580864163538544

`lt[A301964(n+3), A213962(A248972(2*n+1))]`
-/

namespace A346722.P251580864163538544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A248972 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346722.P251580864163538544

/-!
# A346723: Use the cells of a hexagonal grid to represent the algebraic integers in the integer ring of Q(sqrt(-19)) as explained in the comments. Number the cells along the counterclockwise hexagonal spiral that starts with cells 0 and 1 representing integers 0 and 1. List the cells that represent 0 or a prime in the ring.

The programs for A346723, there is no canonical definition to state claims against.
-/

/-! ## A346723.P7368704098692702516

`A346724(n+1)+A107393(A097479(n))`
-/

namespace A346723.P7368704098692702516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1) + A107393 (A097479 n).toNat

end

end A346723.P7368704098692702516

/-! ## A346723.P13828543401034003975

`A346725(n+1)+A107393(A097479(n))`
-/

namespace A346723.P13828543401034003975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (n + 1) + A107393 (A097479 n).toNat

end

end A346723.P13828543401034003975

/-! ## A346723.P15724777578768953304

`A346724(A090106(n+1))`
-/

namespace A346723.P15724777578768953304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (A090106 (n + 1)).toNat

end

end A346723.P15724777578768953304

/-! ## A346723.P11906913215916822347

`A346724(∑[∑[A097479(n)]])`
-/

namespace A346723.P11906913215916822347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346723.P11906913215916822347

/-! ## A346723.P5122259838825543746

`A346725(∑[∑[A097479(n)]])`
-/

namespace A346723.P5122259838825543746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346723.P5122259838825543746

/-!
# A346724: Use the cells of a hexagonal grid to represent the algebraic integers in the integer ring of Q(sqrt(-43)) as explained in the comments. Number the cells along the counterclockwise hexagonal spiral that starts with cells 0 and 1 representing integers 0 and 1. List the cells that represent 0 or a prime in the ring.

The programs for A346724, there is no canonical definition to state claims against.
-/

/-! ## A346724.P1884299275489468267

`∪[A346725(n+1), A040993(A008000(n))]`
-/

namespace A346724.P1884299275489468267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (A008000 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346724.P1884299275489468267

/-! ## A346724.P15574309518712646413

`∪[A045319(3*n+1), A346725(A090109(n+1))]`
-/

namespace A346724.P15574309518712646413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (A090109 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346724.P15574309518712646413

/-! ## A346724.P5977418217404409139

`∪[A045319(3*n+1), A346725(A153671(n+1))]`
-/

namespace A346724.P5977418217404409139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (A153671 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346724.P5977418217404409139

/-! ## A346724.P10517965101693860601

`A346725(A090109(n+1))`
-/

namespace A346724.P10517965101693860601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (A090109 (n + 1)).toNat

end

end A346724.P10517965101693860601

/-! ## A346724.P371178327423582264

`A346725(A153671(n+1))`
-/

namespace A346724.P371178327423582264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (A153671 (n + 1)).toNat

end

end A346724.P371178327423582264

/-! ## A346724.P11803437445766153646

`A057427(A048719(n))*A346725(n+1)`
-/

namespace A346724.P11803437445766153646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A048719 n).toNat * A346725 (n + 1)

end

end A346724.P11803437445766153646

/-! ## A346724.P3333418612061470173

`A001222(A260128(n+1))*A346725(n+1)`
-/

namespace A346724.P3333418612061470173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260128 (n + 1)).toNat * A346725 (n + 1)

end

end A346724.P3333418612061470173

/-! ## A346724.P14248638236968074949

`A346725(n+1)+n-A307011(A028896(n))`
-/

namespace A346724.P14248638236968074949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (n + 1) + ((n : ℤ) - A307011 (A028896 n).toNat)

end

end A346724.P14248638236968074949

/-! ## A346724.P639197410984135733

`A346725(A307011(A028896(n+1)))`
-/

namespace A346724.P639197410984135733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346725 (A307011 (A028896 (n + 1)).toNat).toNat

end

end A346724.P639197410984135733

/-!
# A346725: Use the cells of a hexagonal grid to represent the algebraic integers in the integer ring of Q(sqrt(-67)) as explained in the comments. Number the cells along the counterclockwise hexagonal spiral that starts with cells 0 and 1 representing integers 0 and 1. List the cells that represent 0 or a prime in the ring.

The programs for A346725, there is no canonical definition to state claims against.
-/

/-! ## A346725.P14904107984122161340

`∪[A346724(n+1), Δ[A007504(n)]]`
-/

namespace A346725.P14904107984122161340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P14904107984122161340

/-! ## A346725.P4521740538874962594

`∪[A346724(n+1), p?[A055649(n)]]`
-/

namespace A346725.P4521740538874962594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P4521740538874962594

/-! ## A346725.P13992672250092524490

`∪[A000040(n+1), A346724(n+1)]`
-/

namespace A346725.P13992672250092524490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P13992672250092524490

/-! ## A346725.P11111832268868217455

`∪[A004139(n+1), A346724(n+1)]`
-/

namespace A346725.P11111832268868217455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P11111832268868217455

/-! ## A346725.P6954041941986800429

`∪[A346724(n+1), A040159(n+1)]`
-/

namespace A346725.P6954041941986800429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P6954041941986800429

/-! ## A346725.P15635425272699880329

`∪[A040993(n+1), A346724(n+1)]`
-/

namespace A346725.P15635425272699880329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P15635425272699880329

/-! ## A346725.P12105767294457102266

`∪[A346724(n+1), record[A006530(n+2)]]`
-/

namespace A346725.P12105767294457102266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346725.P12105767294457102266

/-! ## A346725.P8875328056769794786

`∪[p?[A018252(n+1)-7], A346724(n+1)]`
-/

namespace A346725.P8875328056769794786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A346725.P8875328056769794786

/-!
# A346729: Maximum number of divisors among n-bit numbers.

The programs for A346729, there is no canonical definition to state claims against.
-/

/-! ## A346729.P5177814011677903534

`A036451(floor(atan(n)+n))`
-/

namespace A346729.P5177814011677903534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋.toNat

end

end A346729.P5177814011677903534

/-! ## A346729.P18406387839382853980

`xor(1, record[xor(1, A036451(n))])`
-/

namespace A346729.P18406387839382853980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A036451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A346729.P18406387839382853980

/-! ## A346729.P13829970312699505574

`A036451(n+1-C(n, n²))`
-/

namespace A346729.P13829970312699505574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 (n + 1 - Nat.choose n (n ^ 2))

end

end A346729.P13829970312699505574

/-! ## A346729.P5997360700381946760

`A036451(A184985(n+1))`
-/

namespace A346729.P5997360700381946760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 (A184985 (n + 1)).toNat

end

end A346729.P5997360700381946760

/-! ## A346729.P18441466404904292203

`A036451(A157928(n)+n)`
-/

namespace A346729.P18441466404904292203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 (A157928 n + (n : ℤ)).toNat

end

end A346729.P18441466404904292203

/-! ## A346729.P7444213236103257192

`filter[A036451(n), A322860(#)]`
-/

namespace A346729.P7444213236103257192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A346729.P7444213236103257192

/-! ## A346729.P12651453760601689494

`filter[A036451(n), A331168(#)]`
-/

namespace A346729.P12651453760601689494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A346729.P12651453760601689494

/-! ## A346729.P7332769176955490633

`filter[A036451(n), A331281(#)]`
-/

namespace A346729.P7332769176955490633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A346729.P7332769176955490633

/-! ## A346729.P6930541046338784774

`filter[A036451(n), A347950(#)]`
-/

namespace A346729.P6930541046338784774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A346729.P6930541046338784774

/-! ## A346729.P8669643684719546684

`filter[A036451(n), A354034(#)]`
-/

namespace A346729.P8669643684719546684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A346729.P8669643684719546684

/-!
# A346730: Irregular triangle read by rows: T(n,k) is the number of n-bit numbers with k divisors.

The programs for A346730, there is no canonical definition to state claims against.
-/

/-! ## A346730.P14373390616712341197

`A230403((n+2)*A335210(n+1))`
-/

namespace A346730.P14373390616712341197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 ((n + 2 : ℤ) * A335210 (n + 1)).toNat

end

end A346730.P14373390616712341197

/-! ## A346730.P15434787908615276670

`A341675(A333219(n+1)^A002375(n+3))`
-/

namespace A346730.P15434787908615276670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (SequenceMachineLib.roundAway ((A333219 (n + 1) : ℚ) ^ (A002375 (n + 3) : ℤ))).toNat

end

end A346730.P15434787908615276670

/-! ## A346730.P1645312194873001819

`C(A000120(A014210(n)), A245537(2*n+1))`
-/

namespace A346730.P1645312194873001819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (A014210 n).toNat).toNat (A245537 (2 * n + 1)).toNat

end

end A346730.P1645312194873001819

/-! ## A346730.P4485425242066622945

`A007978(n+2)-A001285(A046004(2*n+5))`
-/

namespace A346730.P4485425242066622945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (n + 2) - A001285 (A046004 (2 * n + 5)).toNat

end

end A346730.P4485425242066622945

/-! ## A346730.P16578357165247530143

`Δ[A022559(A102659(n+1))]%A053824(2*n+3)`
-/

namespace A346730.P16578357165247530143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A102659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A053824 (2 * n + 3))

end

end A346730.P16578357165247530143

/-!
# A346731: Replace 8^k with (-1)^k in base-8 expansion of n.

The programs for A346731, the canonical program `A346731.P4075169321817429314` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346731 has offset 0).

The definition of A346731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346731.P8040711316872532081

`A346732(A037477(n))`
-/

namespace A346731.P8040711316872532081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 (A037477 n).toNat

end

end A346731.P8040711316872532081

namespace A346731

/-- `A346732(A037477(n))` -/
def P8040711316872532081.Spec : Prop :=
  ∀ n, P8040711316872532081.a n = A346731 n

end A346731

/-! ## A346731.P4075169321817429314

`A055017(A007094(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346731

/-- `A055017(A007094(n))` -/
def P4075169321817429314.Spec : Prop :=
  ∀ n, P4075169321817429314.a n = A346731 n

theorem P4075169321817429314.correct : P4075169321817429314.Spec := by
  intro n
  simp only [A346731]

end A346731

/-! ## A346731.P11615517056219619526

`A055017(eq[n, A222254(n)])`
-/

namespace A346731.P11615517056219619526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346731.P11615517056219619526

namespace A346731

/-- `A055017(eq[n, A222254(n)])` -/
def P11615517056219619526.Spec : Prop :=
  ∀ n, P11615517056219619526.a n = A346731 n

end A346731

/-! ## A346731.P9500050844188365761

`A055017(eq[A102679(n), A316868(n)])`
-/

namespace A346731.P9500050844188365761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346731.P9500050844188365761

namespace A346731

/-- `A055017(eq[A102679(n), A316868(n)])` -/
def P9500050844188365761.Spec : Prop :=
  ∀ n, P9500050844188365761.a n = A346731 n

end A346731

/-!
# A346732: Replace 9^k with (-1)^k in base-9 expansion of n.

The programs for A346732, the canonical program `A346732.P10549336997215937805` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346732 has offset 0).

The definition of A346732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346732.P10549336997215937805

`A055017(A007095(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346732

/-- `A055017(A007095(n))` -/
def P10549336997215937805.Spec : Prop :=
  ∀ n, P10549336997215937805.a n = A346732 n

theorem P10549336997215937805.correct : P10549336997215937805.Spec := by
  intro n
  simp only [A346732]

end A346732

/-! ## A346732.P10227665633251659254

`A055017(comp[A011539(n+1)])`
-/

namespace A346732.P10227665633251659254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A346732.P10227665633251659254

namespace A346732

/-- `A055017(comp[A011539(n+1)])` -/
def P10227665633251659254.Spec : Prop :=
  ∀ n, P10227665633251659254.a n = A346732 n

end A346732

/-! ## A346732.P5751556610788739150

`A055017(eq[A048379(n), A216556(n)])`
-/

namespace A346732.P5751556610788739150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346732.P5751556610788739150

namespace A346732

/-- `A055017(eq[A048379(n), A216556(n)])` -/
def P5751556610788739150.Spec : Prop :=
  ∀ n, P5751556610788739150.a n = A346732 n

end A346732

/-! ## A346732.P276374269729022500

`A055017(record[A004184(n)])`
-/

namespace A346732.P276374269729022500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346732.P276374269729022500

namespace A346732

/-- `A055017(record[A004184(n)])` -/
def P276374269729022500.Spec : Prop :=
  ∀ n, P276374269729022500.a n = A346732 n

end A346732

/-! ## A346732.P16156743092453860350

`A055017(record[A235049(n)])`
-/

namespace A346732.P16156743092453860350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346732.P16156743092453860350

namespace A346732

/-- `A055017(record[A235049(n)])` -/
def P16156743092453860350.Spec : Prop :=
  ∀ n, P16156743092453860350.a n = A346732 n

end A346732

/-! ## A346732.P15921039497115612925

`A055017(A359098(n+1))`
-/

namespace A346732.P15921039497115612925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A359098 (n + 1)).toNat

end

end A346732.P15921039497115612925

namespace A346732

/-- `A055017(A359098(n+1))` -/
def P15921039497115612925.Spec : Prop :=
  ∀ n, P15921039497115612925.a n = A346732 n

end A346732

/-! ## A346732.P2687073369084336463

`A055017(eq[n, A004184(n)])`
-/

namespace A346732.P2687073369084336463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346732.P2687073369084336463

namespace A346732

/-- `A055017(eq[n, A004184(n)])` -/
def P2687073369084336463.Spec : Prop :=
  ∀ n, P2687073369084336463.a n = A346732 n

end A346732

/-! ## A346732.P17517495119388461429

`A055017(record[n-A136400(n)])`
-/

namespace A346732.P17517495119388461429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346732.P17517495119388461429

namespace A346732

/-- `A055017(record[n-A136400(n)])` -/
def P17517495119388461429.Spec : Prop :=
  ∀ n, P17517495119388461429.a n = A346732 n

end A346732

/-! ## A346732.P10036014393189345419

`A055017(lt[A334387(n), n])`
-/

namespace A346732.P10036014393189345419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346732.P10036014393189345419

namespace A346732

/-- `A055017(lt[A334387(n), n])` -/
def P10036014393189345419.Spec : Prop :=
  ∀ n, P10036014393189345419.a n = A346732 n

end A346732

/-! ## A346732.P4211581484143036637

`A162520(2*(n+1))-A162520(2*n+1)`
-/

namespace A346732.P4211581484143036637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162520 (2 * (n + 1)) - A162520 (2 * n + 1)

end

end A346732.P4211581484143036637

namespace A346732

/-- `A162520(2*(n+1))-A162520(2*n+1)` -/
def P4211581484143036637.Spec : Prop :=
  ∀ n, P4211581484143036637.a n = A346732 n

end A346732

/-!
# A346733: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 * A(x)^3.

The programs for A346733, there is no canonical definition to state claims against.
-/

/-! ## A346733.P9071341576233513930

`A257639(A287278(n))-A014081(n)`
-/

namespace A346733.P9071341576233513930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A287278 n).toNat - A014081 n

end

end A346733.P9071341576233513930

/-! ## A346733.P18156138745287752408

`A137624(A360885(n))`
-/

namespace A346733.P18156138745287752408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137624 (A360885 n).toNat

end

end A346733.P18156138745287752408

/-! ## A346733.P3882779454374529945

`A147820(A393181(n))`
-/

namespace A346733.P3882779454374529945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (A393181 n).toNat

end

end A346733.P3882779454374529945

/-! ## A346733.P13449009435249543250

`A110263(A173758(n+1))`
-/

namespace A346733.P13449009435249543250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110263 (A173758 (n + 1)).toNat

end

end A346733.P13449009435249543250

/-! ## A346733.P17679836790223879497

`A138884(A308030(n+1))`
-/

namespace A346733.P17679836790223879497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138884 (A308030 (n + 1)).toNat

end

end A346733.P17679836790223879497

/-!
# A346734: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 * A(x)^3.

The programs for A346734, there is no canonical definition to state claims against.
-/

/-! ## A346734.P8501546228603750416

`or(A057940(A011782(n)), A360893(n))`
-/

namespace A346734.P8501546228603750416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057940 (A011782 n).toNat) (A360893 n)

end

end A346734.P8501546228603750416

/-! ## A346734.P3675402714261764538

`or(A074029(n+1), A317245(A074029(n+1)))`
-/

namespace A346734.P3675402714261764538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074029 (n + 1)) (A317245 (A074029 (n + 1)).toNat)

end

end A346734.P3675402714261764538

/-! ## A346734.P4532816368964043762

`or(A001222(A184314(n+2)), A030273(2*n))`
-/

namespace A346734.P4532816368964043762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A184314 (n + 2)).toNat) (A030273 (2 * n))

end

end A346734.P4532816368964043762

/-!
# A346735: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 + x^5 * A(x)^3.

The programs for A346735, there is no canonical definition to state claims against.
-/

/-! ## A346735.P15863587741873153381

`round(∑[A018561(n+1)]/(4*n+1))`
-/

namespace A346735.P15863587741873153381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (4 * n + 1 : ℚ))

end

end A346735.P15863587741873153381

/-! ## A346735.P7804113437774773371

`∑{d}[A336010(n), A331852(#)]`
-/

namespace A346735.P7804113437774773371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A331852 d

end

end A346735.P7804113437774773371

/-! ## A346735.P7724802909722974911

`A161208(A161230(2*n+3)^A161246(n+2))`
-/

namespace A346735.P7724802909722974911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (SequenceMachineLib.roundAway ((A161230 (2 * n + 3) : ℚ) ^ (A161246 (n + 2) : ℤ))).toNat

end

end A346735.P7724802909722974911

/-! ## A346735.P6394649496544137835

`A161208(A161230(2*n+3)^A161247(n+4))`
-/

namespace A346735.P6394649496544137835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (SequenceMachineLib.roundAway ((A161230 (2 * n + 3) : ℚ) ^ (A161247 (n + 4) : ℤ))).toNat

end

end A346735.P6394649496544137835

/-!
# A346736: Number of configurations of the 7 X 2 variant of the sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A346736, there is no canonical definition to state claims against.
-/

/-! ## A346736.P9309920694481633418

`∑[A084618(A078843(n))]`
-/

namespace A346736.P9309920694481633418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A078843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346736.P9309920694481633418

/-! ## A346736.P4609861723578336840

`A225687(A116841(n+1))`
-/

namespace A346736.P4609861723578336840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A116841 (n + 1)).toNat

end

end A346736.P4609861723578336840

/-! ## A346736.P6778054386713158379

`A002024(Δ[abs(A140290(n))])`
-/

namespace A346736.P6778054386713158379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140290 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (f1 (n + 1) - f1 n).toNat

end

end A346736.P6778054386713158379

/-! ## A346736.P16123788873290067406

`A123578(Δ[abs(A140290(n))])`
-/

namespace A346736.P16123788873290067406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140290 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (f1 (n + 1) - f1 n).toNat

end

end A346736.P16123788873290067406

/-! ## A346736.P2056131785352898747

`∑[A320921(n)-A185721(n)]`
-/

namespace A346736.P2056131785352898747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n - A185721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346736.P2056131785352898747

/-!
# A346737: Number of configurations of the 5 X 3 variant of the sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A346737, there is no canonical definition to state claims against.
-/

/-! ## A346737.P14764197240318022037

`A256790(A077138(n))+A192955(n)`
-/

namespace A346737.P14764197240318022037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256790 (A077138 n).toNat + A192955 n

end

end A346737.P14764197240318022037

/-!
# A346738: Expansion of e.g.f.: exp(exp(x) - 3*x - 1).

The programs for A346738, there is no canonical definition to state claims against.
-/

/-! ## A346738.P11394115222321555377

`A361781(∑[n+4]+2)`
-/

namespace A346738.P11394115222321555377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A346738.P11394115222321555377

/-! ## A346738.P7336662594754721729

`A239104(n+3)-A000120(n+1)`
-/

namespace A346738.P7336662594754721729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239104 (n + 3) - A000120 (n + 1)

end

end A346738.P7336662594754721729

/-!
# A346739: Expansion of e.g.f.: exp(exp(x) - 4*x - 1).

The programs for A346739, there is no canonical definition to state claims against.
-/

/-! ## A346739.P530261061772687761

`A361781(A052905(n+2))`
-/

namespace A346739.P530261061772687761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A052905 (n + 2)).toNat

end

end A346739.P530261061772687761

/-! ## A346739.P8611647287102542151

`A361781(A055999(n+2)+1)`
-/

namespace A346739.P8611647287102542151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A055999 (n + 2) + 1).toNat

end

end A346739.P8611647287102542151

/-! ## A346739.P16428584024023173973

`A361781(A055998(n+3)-2)`
-/

namespace A346739.P16428584024023173973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A055998 (n + 3) - 2).toNat

end

end A346739.P16428584024023173973

/-! ## A346739.P10146626309419217188

`A361781(A000217(n+5)-5)`
-/

namespace A346739.P10146626309419217188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A000217 (n + 5) - 5).toNat

end

end A346739.P10146626309419217188

/-!
# A346740: Expansion of e.g.f.: exp(exp(x) - 5*x - 1).

The programs for A346740, there is no canonical definition to state claims against.
-/

/-! ## A346740.P12604910299473841908

`A361781(A055999(n+3))`
-/

namespace A346740.P12604910299473841908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A055999 (n + 3)).toNat

end

end A346740.P12604910299473841908

/-! ## A346740.P15312521980245425048

`A361781(A052905(n+3)-1)`
-/

namespace A346740.P15312521980245425048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A052905 (n + 3) - 1).toNat

end

end A346740.P15312521980245425048

/-!
# A346741: Irregular triangle read by rows which is constructed in row n replacing the first A000070(n-1) terms of A336811 with their divisors.

The programs for A346741, there is no canonical definition to state claims against.
-/

/-! ## A346741.P60132524099098569

`gcd(A193569(A329469(n+1)), A278817(n))`
-/

namespace A346741.P60132524099098569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193569 (A329469 (n + 1)).toNat) (A278817 n)

end

end A346741.P60132524099098569

/-! ## A346741.P1862939775460218102

`A178058(A332663(n)²)`
-/

namespace A346741.P1862939775460218102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178058 (A332663 n ^ 2).toNat

end

end A346741.P1862939775460218102

/-! ## A346741.P16228480396632316784

`A279497(A026667(n))`
-/

namespace A346741.P16228480396632316784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279497 (A026667 n).toNat

end

end A346741.P16228480396632316784

/-! ## A346741.P7572758942572330976

`A296773(A121744(n+1))`
-/

namespace A346741.P7572758942572330976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296773 (A121744 (n + 1)).toNat

end

end A346741.P7572758942572330976

/-!
# A346747: E.g.f.: exp( (x * exp(x) + sinh(x)) / 2 ).

The programs for A346747, there is no canonical definition to state claims against.
-/

/-! ## A346747.P15320388618655446670

`A300514(n)-A036593(A023421(n))`
-/

namespace A346747.P15320388618655446670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300514 n - A036593 (A023421 n).toNat

end

end A346747.P15320388618655446670

/-! ## A346747.P9377454186334546587

`A195174(A087648(n)+n²)`
-/

namespace A346747.P9377454186334546587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A087648 n + (n ^ 2 : ℤ)).toNat

end

end A346747.P9377454186334546587

/-! ## A346747.P13946010914479885224

`xor(A186748(n²), A300514(n))`
-/

namespace A346747.P13946010914479885224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186748 (n ^ 2)) (A300514 n)

end

end A346747.P13946010914479885224

/-!
# A346749: E.g.f.: exp( (x * (1 + x) * exp(x) - sinh(x)) / 4 ).

The programs for A346749, there is no canonical definition to state claims against.
-/

/-! ## A346749.P17873380221657175650

`A008616(xor(A100134(n), A303058(n+2)))`
-/

namespace A346749.P17873380221657175650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A100134 n) (A303058 (n + 2))).toNat

end

end A346749.P17873380221657175650

/-! ## A346749.P14689551433548485629

`A008616(xor(A174300(n), A303058(n+2)))`
-/

namespace A346749.P14689551433548485629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A174300 n) (A303058 (n + 2))).toNat

end

end A346749.P14689551433548485629

/-! ## A346749.P16885749396363696301

`A196936(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A346749.P16885749396363696301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  A196936 (a (n - 1)).toNat

end

end A346749.P16885749396363696301

/-!
# A346751: Expansion of e.g.f. log( 1 + x^3 * exp(x) / 3! ).

The programs for A346751, there is no canonical definition to state claims against.
-/

/-! ## A346751.P649654501394175512

`-A292954(n)%A145524(n)`
-/

namespace A346751.P649654501394175512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A292954 n) (A145524 n)

end

end A346751.P649654501394175512

/-! ## A346751.P3541182302943393852

`-A292954(n)%A297743(n+1)`
-/

namespace A346751.P3541182302943393852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A292954 n) (A297743 (n + 1))

end

end A346751.P3541182302943393852

/-! ## A346751.P14981468776975846443

`floor(acot(n)-A292954(A004914(n+1)))`
-/

namespace A346751.P14981468776975846443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A292954 (A004914 (n + 1)).toNat : ℝ)⌋

end

end A346751.P14981468776975846443

/-! ## A346751.P15610292750492449726

`A008683(A000302(n))-A292954(n)`
-/

namespace A346751.P15610292750492449726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000302 n).toNat - A292954 n

end

end A346751.P15610292750492449726

/-! ## A346751.P1640080537621035630

`A007814(A034970(n))-A292954(n)`
-/

namespace A346751.P1640080537621035630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A034970 n).toNat - A292954 n

end

end A346751.P1640080537621035630

/-!
# A346752: Expansion of e.g.f. log( 1 + x^4 * exp(x) / 4! ).

The programs for A346752, there is no canonical definition to state claims against.
-/

/-! ## A346752.P16250955672005616621

`-A292955(n)%A089875(n)`
-/

namespace A346752.P16250955672005616621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A292955 n) (A089875 n)

end

end A346752.P16250955672005616621

/-! ## A346752.P5116117422771988122

`-A292955(n)%A166206(n)`
-/

namespace A346752.P5116117422771988122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A292955 n) (A166206 n)

end

end A346752.P5116117422771988122

/-! ## A346752.P1277753893313744045

`A010054(A006138(n))-A292955(n)`
-/

namespace A346752.P1277753893313744045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A006138 n).toNat - A292955 n

end

end A346752.P1277753893313744045

/-! ## A346752.P13614344836506336838

`A010055(A007283(n))-A292955(n)`
-/

namespace A346752.P13614344836506336838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A007283 n).toNat - A292955 n

end

end A346752.P13614344836506336838

/-! ## A346752.P2534470031459431225

`A000007(A130783(n))-A292955(n)`
-/

namespace A346752.P2534470031459431225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A130783 n).toNat - A292955 n

end

end A346752.P2534470031459431225

/-!
# A346753: Expansion of e.g.f. -log( 1 - x^2 * exp(x) / 2 ).

The programs for A346753, there is no canonical definition to state claims against.
-/

/-! ## A346753.P8070602125873845246

`A002265(A216507(n)+n²-n)`
-/

namespace A346753.P8070602125873845246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A216507 n + (n ^ 2 : ℤ) - (n : ℤ)).toNat

end

end A346753.P8070602125873845246

/-! ## A346753.P16230276970866240772

`A002265(A216507(n)+A002061(n))`
-/

namespace A346753.P16230276970866240772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A216507 n + A002061 n).toNat

end

end A346753.P16230276970866240772

/-! ## A346753.P379725234515668231

`A002265(A002061(n)-(1-A216507(n)))`
-/

namespace A346753.P379725234515668231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002061 n - (1 - A216507 n)).toNat

end

end A346753.P379725234515668231

/-!
# A346754: Expansion of e.g.f. -log( 1 - x^3 * exp(x) / 3! ).

The programs for A346754, there is no canonical definition to state claims against.
-/

/-! ## A346754.P7420084735201262723

`A145453(n)%A145524(n)`
-/

namespace A346754.P7420084735201262723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145453 n) (A145524 n)

end

end A346754.P7420084735201262723

/-! ## A346754.P5311211276562058532

`A145453(A000005(n!)%2+n)`
-/

namespace A346754.P5311211276562058532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145453 (Int.tmod (A000005 (Nat.factorial n)) 2 + (n : ℤ)).toNat

end

end A346754.P5311211276562058532

/-! ## A346754.P50977069217006568

`A145453(n)-A121373((∑[n+1]+1)*2^(n-1))`
-/

namespace A346754.P50977069217006568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145453 n - A121373 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A346754.P50977069217006568

/-! ## A346754.P15355936785990997973

`A145453(A008683(A000302(n))+n)`
-/

namespace A346754.P15355936785990997973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145453 (A008683 (A000302 n).toNat + (n : ℤ)).toNat

end

end A346754.P15355936785990997973

/-! ## A346754.P17602572915539075540

`A145453(n)+A010815(A000244(n))`
-/

namespace A346754.P17602572915539075540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145453 n + A010815 (A000244 n).toNat

end

end A346754.P17602572915539075540

/-!
# A346755: Expansion of e.g.f. -log( 1 - x^4 * exp(x) / 4! ).

The programs for A346755, there is no canonical definition to state claims against.
-/

/-! ## A346755.P12364319019981791941

`A145454(n)%A089875(n)`
-/

namespace A346755.P12364319019981791941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145454 n) (A089875 n)

end

end A346755.P12364319019981791941

/-! ## A346755.P2908955599055075199

`abs(A292912(n)%A089875(n))`
-/

namespace A346755.P2908955599055075199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292912 n) (A089875 n)|

end

end A346755.P2908955599055075199

/-! ## A346755.P7682300286945908350

`abs(A292912(n))%A166206(n)`
-/

namespace A346755.P7682300286945908350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A292912 n| (A166206 n)

end

end A346755.P7682300286945908350

/-! ## A346755.P4997987630370556611

`A145454(gcd(11*n, A000142(n)))`
-/

namespace A346755.P4997987630370556611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145454 (Int.gcd (11 * n : ℤ) (A000142 n))

end

end A346755.P4997987630370556611

/-! ## A346755.P4875956545230585371

`A145454(n)-A384905(n*(n+1)/2)`
-/

namespace A346755.P4875956545230585371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145454 n - A384905 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A346755.P4875956545230585371

/-!
# A346756: Lesser emirps (A109308) subtracted from their reversals.

The programs for A346756, there is no canonical definition to state claims against.
-/

/-! ## A346756.P14321551630288983460

`A004086(A109308(n+1))-A109308(n+1)`
-/

namespace A346756.P14321551630288983460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A109308 (n + 1)).toNat - A109308 (n + 1)

end

end A346756.P14321551630288983460

/-! ## A346756.P11267464225340192210

`abs(A056965(A109308(n+1)))`
-/

namespace A346756.P11267464225340192210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A109308 (n + 1)).toNat|

end

end A346756.P11267464225340192210

/-! ## A346756.P3341728661323085436

`-A056965(p?[A109308(n+1)])`
-/

namespace A346756.P3341728661323085436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A346756.P3341728661323085436

/-! ## A346756.P1417141426063418950

`∑{d}[A056965(A109308(n+1)), A000010(#)]`
-/

namespace A346756.P1417141426063418950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A109308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A346756.P1417141426063418950

/-! ## A346756.P17277402237617956104

`A000007(n+3)-A056965(A109308(n+1))`
-/

namespace A346756.P17277402237617956104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) - A056965 (A109308 (n + 1)).toNat

end

end A346756.P17277402237617956104

/-! ## A346756.P15277274405874525037

`lcm(A001221(n+2), A056965(A109308(n+1)))`
-/

namespace A346756.P15277274405874525037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A056965 (A109308 (n + 1)).toNat)

end

end A346756.P15277274405874525037

/-! ## A346756.P5240992104838125028

`-A007318(C(2, n))*A056965(A109308(n+1))`
-/

namespace A346756.P5240992104838125028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A007318 (Nat.choose 2 n) * A056965 (A109308 (n + 1)).toNat)

end

end A346756.P5240992104838125028

/-!
# A346757: a(n) is the number of arches with a length of one and exactly one covering arch for semi-meanders with n top arches.

The programs for A346757, there is no canonical definition to state claims against.
-/

/-! ## A346757.P5854426277636467292

`A326520(n+1)-A175298(A050039(n+1))`
-/

namespace A346757.P5854426277636467292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326520 (n + 1) - A175298 (A050039 (n + 1)).toNat

end

end A346757.P5854426277636467292

/-!
# A346758: a(n) = Sum_{d|n} mu(n/d) * floor(d^2/4).

The programs for A346758, the canonical program `A346758.P5593687607366056961` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346758 has offset 1).

The definition of A346758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346758.P5593687607366056961

`round(((n+1)/∏{p}[n+1, #])²*∏{p}[n+1, #²-1]/4)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A346758

/-- `round(((n+1)/∏{p}[n+1, #])²*∏{p}[n+1, #²-1]/4)` -/
def P5593687607366056961.Spec : Prop :=
  ∀ n, P5593687607366056961.a n = A346758 (n + 1)

theorem P5593687607366056961.correct : P5593687607366056961.Spec := by
  intro n
  simp only [A346758, Nat.add_sub_cancel]

end A346758

/-! ## A346758.P11116575068498107761

`round((n+1)*∏{p}[n+1, #-1/#]*(n+1)/∏{p}[n+1, #]/4)`
-/

namespace A346758.P11116575068498107761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) / 4)

end

end A346758.P11116575068498107761

namespace A346758

/-- `round((n+1)*∏{p}[n+1, #-1/#]*(n+1)/∏{p}[n+1, #]/4)` -/
def P11116575068498107761.Spec : Prop :=
  ∀ n, P11116575068498107761.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P932978438778451900

`Δ[floor(A321879(n)/4)]`
-/

namespace A346758.P932978438778451900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321879 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346758.P932978438778451900

namespace A346758

/-- `Δ[floor(A321879(n)/4)]` -/
def P932978438778451900.Spec : Prop :=
  ∀ n, P932978438778451900.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P5502604999974129861

`round(A007434(n+1)/4)`
-/

namespace A346758.P5502604999974129861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007434 (n + 1) : ℚ) / 4)

end

end A346758.P5502604999974129861

namespace A346758

/-- `round(A007434(n+1)/4)` -/
def P5502604999974129861.Spec : Prop :=
  ∀ n, P5502604999974129861.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P6903437192287530676

`floor(A001766(n+1)/(2*(n+1)))`
-/

namespace A346758.P6903437192287530676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001766 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A346758.P6903437192287530676

namespace A346758

/-- `floor(A001766(n+1)/(2*(n+1)))` -/
def P6903437192287530676.Spec : Prop :=
  ∀ n, P6903437192287530676.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P7120428605001310981

`round(A000056(n+1)/(4*(n+1)))`
-/

namespace A346758.P7120428605001310981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (4 * (n + 1) : ℚ))

end

end A346758.P7120428605001310981

namespace A346758

/-- `round(A000056(n+1)/(4*(n+1)))` -/
def P7120428605001310981.Spec : Prop :=
  ∀ n, P7120428605001310981.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P10491598223783506206

`A007438(n+1)-A123323(n+1)`
-/

namespace A346758.P10491598223783506206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A123323 (n + 1)

end

end A346758.P10491598223783506206

namespace A346758

/-- `A007438(n+1)-A123323(n+1)` -/
def P10491598223783506206.Spec : Prop :=
  ∀ n, P10491598223783506206.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P12034090882321925658

`∑{d}[n+1, A007427(#)*A346759((n+1)/#)]`
-/

namespace A346758.P12034090882321925658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A346759 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346758.P12034090882321925658

namespace A346758

/-- `∑{d}[n+1, A007427(#)*A346759((n+1)/#)]` -/
def P12034090882321925658.Spec : Prop :=
  ∀ n, P12034090882321925658.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P7082795777141828753

`Δ[floor(A100450(n)/16)]`
-/

namespace A346758.P7082795777141828753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100450 n : ℚ) / 16⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346758.P7082795777141828753

namespace A346758

/-- `Δ[floor(A100450(n)/16)]` -/
def P7082795777141828753.Spec : Prop :=
  ∀ n, P7082795777141828753.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P6477844635906375387

`round(A063659((n+1)²)/4)`
-/

namespace A346758.P6477844635906375387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A063659 ((n + 1) ^ 2) : ℚ) / 4)

end

end A346758.P6477844635906375387

namespace A346758

/-- `round(A063659((n+1)²)/4)` -/
def P6477844635906375387.Spec : Prop :=
  ∀ n, P6477844635906375387.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P11153397810039812702

`round(A342693((n+1)²)/4)`
-/

namespace A346758.P11153397810039812702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342693 ((n + 1) ^ 2) : ℚ) / 4)

end

end A346758.P11153397810039812702

namespace A346758

/-- `round(A342693((n+1)²)/4)` -/
def P11153397810039812702.Spec : Prop :=
  ∀ n, P11153397810039812702.a n = A346758 (n + 1)

end A346758

/-! ## A346758.P14762848809656438905

`A130722(A007434(n+1))`
-/

namespace A346758.P14762848809656438905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (A007434 (n + 1)).toNat

end

end A346758.P14762848809656438905

namespace A346758

/-- `A130722(A007434(n+1))` -/
def P14762848809656438905.Spec : Prop :=
  ∀ n, P14762848809656438905.a n = A346758 (n + 1)

end A346758

/-!
# A346759: a(n) = Sum_{d|n} floor(d^2/4).

The programs for A346759, the canonical program `A346759.P7376657440773786324` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346759 has offset 1).

The definition of A346759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346759.P7376657440773786324

`(A001157(n+1)-A001227(n+1))/4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346759

/-- `(A001157(n+1)-A001227(n+1))/4` -/
def P7376657440773786324.Spec : Prop :=
  ∀ n, P7376657440773786324.a n = (A346759 (n + 1) : ℚ)

end A346759

/-! ## A346759.P6685331022141986716

`∑{d}[n+1, floor((#/2)²)]`
-/

namespace A346759.P6685331022141986716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊((d : ℚ) / 2) ^ 2⌋

end

end A346759.P6685331022141986716

namespace A346759

/-- `∑{d}[n+1, floor((#/2)²)]` -/
def P6685331022141986716.Spec : Prop :=
  ∀ n, P6685331022141986716.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P1000810569084906153

`∑{d}[n+1, #²-#%2]/4`
-/

namespace A346759.P1000810569084906153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - ((d % 2 : ℕ) : ℤ)) : ℤ) : ℚ) / 4

end

end A346759.P1000810569084906153

namespace A346759

/-- `∑{d}[n+1, #²-#%2]/4` -/
def P1000810569084906153.Spec : Prop :=
  ∀ n, P1000810569084906153.a n = (A346759 (n + 1) : ℚ)

end A346759

/-! ## A346759.P9954172275995593316

`∑{d}[n+1, A076921(#)]-1`
-/

namespace A346759.P9954172275995593316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076921 d - 1

end

end A346759.P9954172275995593316

namespace A346759

/-- `∑{d}[n+1, A076921(#)]-1` -/
def P9954172275995593316.Spec : Prop :=
  ∀ n, P9954172275995593316.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P3237409214230952446

`A365007(n+1)-A363969(n+1)`
-/

namespace A346759.P3237409214230952446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365007 (n + 1) - A363969 (n + 1)

end

end A346759.P3237409214230952446

namespace A346759

/-- `A365007(n+1)-A363969(n+1)` -/
def P3237409214230952446.Spec : Prop :=
  ∀ n, P3237409214230952446.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P8354310077509327346

`(A086670(n+1)+A069153(n+1))/2`
-/

namespace A346759.P8354310077509327346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086670 (n + 1) + A069153 (n + 1) : ℚ) / 2

end

end A346759.P8354310077509327346

namespace A346759

/-- `(A086670(n+1)+A069153(n+1))/2` -/
def P8354310077509327346.Spec : Prop :=
  ∀ n, P8354310077509327346.a n = (A346759 (n + 1) : ℚ)

end A346759

/-! ## A346759.P17705161968483503130

`∑{d}[n+1, A007590(#)]/2`
-/

namespace A346759.P17705161968483503130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A007590 d : ℤ) : ℚ) / 2

end

end A346759.P17705161968483503130

namespace A346759

/-- `∑{d}[n+1, A007590(#)]/2` -/
def P17705161968483503130.Spec : Prop :=
  ∀ n, P17705161968483503130.a n = (A346759 (n + 1) : ℚ)

end A346759

/-! ## A346759.P15284373165405646983

`A086670(n+1)+A014682(A069153(n+1)-A086670(n+1))`
-/

namespace A346759.P15284373165405646983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + A014682 (A069153 (n + 1) - A086670 (n + 1)).toNat

end

end A346759.P15284373165405646983

namespace A346759

/-- `A086670(n+1)+A014682(A069153(n+1)-A086670(n+1))` -/
def P15284373165405646983.Spec : Prop :=
  ∀ n, P15284373165405646983.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P6918383713281665348

`A014682(A086670(n+1)+A069153(n+1))`
-/

namespace A346759.P6918383713281665348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A086670 (n + 1) + A069153 (n + 1)).toNat

end

end A346759.P6918383713281665348

namespace A346759

/-- `A014682(A086670(n+1)+A069153(n+1))` -/
def P6918383713281665348.Spec : Prop :=
  ∀ n, P6918383713281665348.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P15042403480435215517

`A004525(∑{d}[n+1, A007590(#)])`
-/

namespace A346759.P15042403480435215517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ d ∈ Nat.divisors (f1 n), A007590 d).toNat

end

end A346759.P15042403480435215517

namespace A346759

/-- `A004525(∑{d}[n+1, A007590(#)])` -/
def P15042403480435215517.Spec : Prop :=
  ∀ n, P15042403480435215517.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P14841436879016059301

`A004526(∑{d}[n+1, A007590(#)])`
-/

namespace A346759.P14841436879016059301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A007590 d).toNat

end

end A346759.P14841436879016059301

namespace A346759

/-- `A004526(∑{d}[n+1, A007590(#)])` -/
def P14841436879016059301.Spec : Prop :=
  ∀ n, P14841436879016059301.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P12945895401082794229

`A110654(∑{d}[n+1, A007590(#)])`
-/

namespace A346759.P12945895401082794229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ d ∈ Nat.divisors (f1 n), A007590 d).toNat

end

end A346759.P12945895401082794229

namespace A346759

/-- `A110654(∑{d}[n+1, A007590(#)])` -/
def P12945895401082794229.Spec : Prop :=
  ∀ n, P12945895401082794229.a n = A346759 (n + 1)

end A346759

/-! ## A346759.P13483667943326625840

`A174571(A071326((n+1)²)+1-A001227(n+1))`
-/

namespace A346759.P13483667943326625840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A071326 ((n + 1) ^ 2) + 1 - A001227 (n + 1)).toNat

end

end A346759.P13483667943326625840

namespace A346759

/-- `A174571(A071326((n+1)²)+1-A001227(n+1))` -/
def P13483667943326625840.Spec : Prop :=
  ∀ n, P13483667943326625840.a n = A346759 (n + 1)

end A346759

/-!
# A346760: a(n) = Sum_{d|n} mu(n/d) * binomial(d,3).

The programs for A346760, the canonical program `A346760.P5222044433833628232` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346760 has offset 1).

The definition of A346760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346760.P5222044433833628232

`(A059376(n+1)-3*A007434(n+1)+2*A000010(n+1))/6`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346760

/-- `(A059376(n+1)-3*A007434(n+1)+2*A000010(n+1))/6` -/
def P5222044433833628232.Spec : Prop :=
  ∀ n, P5222044433833628232.a n = (A346760 (n + 1) : ℚ)

end A346760

/-! ## A346760.P16331033694906757764

`A117108(n+1)-A007434(n+1)`
-/

namespace A346760.P16331033694906757764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - A007434 (n + 1)

end

end A346760.P16331033694906757764

namespace A346760

/-- `A117108(n+1)-A007434(n+1)` -/
def P16331033694906757764.Spec : Prop :=
  ∀ n, P16331033694906757764.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P1643614562728772790

`A117108(n+1)-∑{d}[n+1, A321322(#)]`
-/

namespace A346760.P1643614562728772790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A321322 d

end

end A346760.P1643614562728772790

namespace A346760

/-- `A117108(n+1)-∑{d}[n+1, A321322(#)]` -/
def P1643614562728772790.Spec : Prop :=
  ∀ n, P1643614562728772790.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P13549697486057859830

`A117108(n+1)-A000056(n+1)/(n+1)`
-/

namespace A346760.P13549697486057859830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117108 (n + 1) : ℚ) - (A000056 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A346760.P13549697486057859830

namespace A346760

/-- `A117108(n+1)-A000056(n+1)/(n+1)` -/
def P13549697486057859830.Spec : Prop :=
  ∀ n, P13549697486057859830.a n = (A346760 (n + 1) : ℚ)

end A346760

/-! ## A346760.P9098983358015227739

`∑{d}[n+1, A007427(#)*A363607((n+1)/#)]`
-/

namespace A346760.P9098983358015227739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A363607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346760.P9098983358015227739

namespace A346760

/-- `∑{d}[n+1, A007427(#)*A363607((n+1)/#)]` -/
def P9098983358015227739.Spec : Prop :=
  ∀ n, P9098983358015227739.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P16134567527673096263

`A117108(n+1)-((n+1)²-A064279(n+1))`
-/

namespace A346760.P16134567527673096263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - (((n + 1) ^ 2 : ℤ) - A064279 (n + 1))

end

end A346760.P16134567527673096263

namespace A346760

/-- `A117108(n+1)-((n+1)²-A064279(n+1))` -/
def P16134567527673096263.Spec : Prop :=
  ∀ n, P16134567527673096263.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P16357693049060883807

`A117108(n+1)-∑{d}[n+1, #*A063445((n+1)/#)]`
-/

namespace A346760.P16357693049060883807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346760.P16357693049060883807

namespace A346760

/-- `A117108(n+1)-∑{d}[n+1, #*A063445((n+1)/#)]` -/
def P16357693049060883807.Spec : Prop :=
  ∀ n, P16357693049060883807.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P1410162708191262624

`A001065(n+1)+A117108(n+1)-A134675(n+1)`
-/

namespace A346760.P1410162708191262624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A117108 (n + 1) - A134675 (n + 1))

end

end A346760.P1410162708191262624

namespace A346760

/-- `A001065(n+1)+A117108(n+1)-A134675(n+1)` -/
def P1410162708191262624.Spec : Prop :=
  ∀ n, P1410162708191262624.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P13795416817743604734

`A046970(n+1)+A117108(n+1)-A323399(n+1)`
-/

namespace A346760.P13795416817743604734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) + (A117108 (n + 1) - A323399 (n + 1))

end

end A346760.P13795416817743604734

namespace A346760

/-- `A046970(n+1)+A117108(n+1)-A323399(n+1)` -/
def P13795416817743604734.Spec : Prop :=
  ∀ n, P13795416817743604734.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P12692078939924813014

`A117108(n+1)-A000010(n+1)*A001615(n+1)`
-/

namespace A346760.P12692078939924813014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - A000010 (n + 1) * A001615 (n + 1)

end

end A346760.P12692078939924813014

namespace A346760

/-- `A117108(n+1)-A000010(n+1)*A001615(n+1)` -/
def P12692078939924813014.Spec : Prop :=
  ∀ n, P12692078939924813014.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P975666647200069416

`A117108(n+1)-A002322(n+1)*A220345(n+1)`
-/

namespace A346760.P975666647200069416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - A002322 (n + 1) * A220345 (n + 1)

end

end A346760.P975666647200069416

namespace A346760

/-- `A117108(n+1)-A002322(n+1)*A220345(n+1)` -/
def P975666647200069416.Spec : Prop :=
  ∀ n, P975666647200069416.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P7409396714654554197

`A117108(n+1)-A003557(n+1)*A345052(n+1)`
-/

namespace A346760.P7409396714654554197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - A003557 (n + 1) * A345052 (n + 1)

end

end A346760.P7409396714654554197

namespace A346760

/-- `A117108(n+1)-A003557(n+1)*A345052(n+1)` -/
def P7409396714654554197.Spec : Prop :=
  ∀ n, P7409396714654554197.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P14690128115686520538

`A117108(n+1)-A000252(n+1)/A002618(n+1)`
-/

namespace A346760.P14690128115686520538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117108 (n + 1) : ℚ) - (A000252 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A346760.P14690128115686520538

namespace A346760

/-- `A117108(n+1)-A000252(n+1)/A002618(n+1)` -/
def P14690128115686520538.Spec : Prop :=
  ∀ n, P14690128115686520538.a n = (A346760 (n + 1) : ℚ)

end A346760

/-! ## A346760.P13592002929610761367

`A117108(n+1)-A059377(n+1)/A065958(n+1)`
-/

namespace A346760.P13592002929610761367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117108 (n + 1) : ℚ) - (A059377 (n + 1) : ℚ) / (A065958 (n + 1) : ℚ)

end

end A346760.P13592002929610761367

namespace A346760

/-- `A117108(n+1)-A059377(n+1)/A065958(n+1)` -/
def P13592002929610761367.Spec : Prop :=
  ∀ n, P13592002929610761367.a n = (A346760 (n + 1) : ℚ)

end A346760

/-! ## A346760.P17466597102626397354

`A117108(n+1)-A069091(n+1)/A194532(n+1)`
-/

namespace A346760.P17466597102626397354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117108 (n + 1) : ℚ) - (A069091 (n + 1) : ℚ) / (A194532 (n + 1) : ℚ)

end

end A346760.P17466597102626397354

namespace A346760

/-- `A117108(n+1)-A069091(n+1)/A194532(n+1)` -/
def P17466597102626397354.Spec : Prop :=
  ∀ n, P17466597102626397354.a n = (A346760 (n + 1) : ℚ)

end A346760

/-! ## A346760.P15722724030329838354

`A117108(n+1)-(2*A007438(n+1)-A000010(n+1))`
-/

namespace A346760.P15722724030329838354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - (2 * A007438 (n + 1) - A000010 (n + 1))

end

end A346760.P15722724030329838354

namespace A346760

/-- `A117108(n+1)-(2*A007438(n+1)-A000010(n+1))` -/
def P15722724030329838354.Spec : Prop :=
  ∀ n, P15722724030329838354.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P9119522005004992517

`A117108(n+1)-A000010(n+1)*A000082(n+1)/(n+1)`
-/

namespace A346760.P9119522005004992517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117108 (n + 1) : ℚ) - (A000010 (n + 1) * A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A346760.P9119522005004992517

namespace A346760

/-- `A117108(n+1)-A000010(n+1)*A000082(n+1)/(n+1)` -/
def P9119522005004992517.Spec : Prop :=
  ∀ n, P9119522005004992517.a n = (A346760 (n + 1) : ℚ)

end A346760

/-! ## A346760.P857919965059272385

`A117108(n+1)-∑{d}[n+1, A000010(#)*A002618((n+1)/#)]`
-/

namespace A346760.P857919965059272385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A000010 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346760.P857919965059272385

namespace A346760

/-- `A117108(n+1)-∑{d}[n+1, A000010(#)*A002618((n+1)/#)]` -/
def P857919965059272385.Spec : Prop :=
  ∀ n, P857919965059272385.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P12686333569540282323

`A117108(n+1)-∑{d}[n+1, A008683(#)*A000290((n+1)/#)]`
-/

namespace A346760.P12686333569540282323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346760.P12686333569540282323

namespace A346760

/-- `A117108(n+1)-∑{d}[n+1, A008683(#)*A000290((n+1)/#)]` -/
def P12686333569540282323.Spec : Prop :=
  ∀ n, P12686333569540282323.a n = A346760 (n + 1)

end A346760

/-! ## A346760.P6877978199662503408

`A117108(n+1)-(A292786(n+1)+A000010(n+1))*A000010(n+1)`
-/

namespace A346760.P6877978199662503408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - (A292786 (n + 1) + A000010 (n + 1)) * A000010 (n + 1)

end

end A346760.P6877978199662503408

namespace A346760

/-- `A117108(n+1)-(A292786(n+1)+A000010(n+1))*A000010(n+1)` -/
def P6877978199662503408.Spec : Prop :=
  ∀ n, P6877978199662503408.a n = A346760 (n + 1)

end A346760

/-!
# A346761: a(n) = Sum_{d|n} mu(n/d) * binomial(d,4).

The programs for A346761, the canonical program `A346761.P16965742112610444180` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346761 has offset 1).

The definition of A346761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346761.P16965742112610444180

`(A059377(n+1)-6*A059376(n+1)+11*A007434(n+1)-6*A000010(n+1))/24`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346761

/-- `(A059377(n+1)-6*A059376(n+1)+11*A007434(n+1)-6*A000010(n+1))/24` -/
def P16965742112610444180.Spec : Prop :=
  ∀ n, P16965742112610444180.a n = (A346761 (n + 1) : ℚ)

end A346761

/-! ## A346761.P17561825273999003903

`∑{d}[n+1, A007427(#)*A363608((n+1)/#)]`
-/

namespace A346761.P17561825273999003903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A363608 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346761.P17561825273999003903

namespace A346761

/-- `∑{d}[n+1, A007427(#)*A363608((n+1)/#)]` -/
def P17561825273999003903.Spec : Prop :=
  ∀ n, P17561825273999003903.a n = A346761 (n + 1)

end A346761

/-! ## A346761.P8548834971019604503

`∑{d}[n+1, A008683(#)*A000332((n+1)/#)]`
-/

namespace A346761.P8548834971019604503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346761.P8548834971019604503

namespace A346761

/-- `∑{d}[n+1, A008683(#)*A000332((n+1)/#)]` -/
def P8548834971019604503.Spec : Prop :=
  ∀ n, P8548834971019604503.a n = A346761 (n + 1)

end A346761

/-! ## A346761.P13593589917183176519

`A020921(∑[n+3]-A004275(n))`
-/

namespace A346761.P13593589917183176519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020921 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004275 n).toNat

end

end A346761.P13593589917183176519

namespace A346761

/-- `A020921(∑[n+3]-A004275(n))` -/
def P13593589917183176519.Spec : Prop :=
  ∀ n, P13593589917183176519.a n = A346761 (n + 1)

end A346761

/-! ## A346761.P2924672942011511393

`A020921(A167614(n+1)-(A233583(n+1)+1))`
-/

namespace A346761.P2924672942011511393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020921 (A167614 (n + 1) - (A233583 (n + 1) + 1)).toNat

end

end A346761.P2924672942011511393

namespace A346761

/-- `A020921(A167614(n+1)-(A233583(n+1)+1))` -/
def P2924672942011511393.Spec : Prop :=
  ∀ n, P2924672942011511393.a n = A346761 (n + 1)

end A346761

/-!
# A346762: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x) + x * (1 - 2*x) * A(x)^3.

The programs for A346762, there is no canonical definition to state claims against.
-/

/-! ## A346762.P1046620389377700594

`A349318(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A346762.P1046620389377700594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349318 n + 2 * a (n - 1)

end

end A346762.P1046620389377700594

/-!
# A346763: G.f. A(x) satisfies: A(x) = 1 / (1 - 3*x) + x * (1 - 3*x) * A(x)^3.

The programs for A346763, there is no canonical definition to state claims against.
-/

/-! ## A346763.P2290325235926541598

`A349531(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A346763.P2290325235926541598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349531 n + 3 * a (n - 1)

end

end A346763.P2290325235926541598

/-!
# A346764: a(n) = Sum_{k=0..n} Stirling2(n,k) * binomial(3*k,k) / (2*k + 1).

The programs for A346764, there is no canonical definition to state claims against.
-/

/-! ## A346764.P14597308623405185920

`A011371(A228883(n+1)+2)`
-/

namespace A346764.P14597308623405185920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A228883 (n + 1) + 2).toNat

end

end A346764.P14597308623405185920

/-! ## A346764.P16610303212032344464

`A008620(A053524(n)+A002294(n))`
-/

namespace A346764.P16610303212032344464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A053524 n + A002294 n).toNat

end

end A346764.P16610303212032344464

/-!
# A346765: a(n) = Sum_{k=0..n} Stirling2(n,k) * binomial(4*k,k) / (3*k + 1).

The programs for A346765, there is no canonical definition to state claims against.
-/

/-! ## A346765.P3218220495197899569

`A198382(A227373(n)+A001147(n))`
-/

namespace A346765.P3218220495197899569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198382 (A227373 n + A001147 n).toNat

end

end A346765.P3218220495197899569

/-!
# A346766: a(n) = Sum_{k=0..n} Stirling2(n,k) * binomial(5*k,k) / (4*k + 1).

The programs for A346766, there is no canonical definition to state claims against.
-/

/-! ## A346766.P97455056419952261

`A342518(∑[5*C(n, 2)]+n)+(n-1)*(2*n*(7*n-2)-3*(-1)^n+3)/24`
-/

namespace A346766.P97455056419952261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342518 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) + ((n : ℤ) - 1 : ℚ) * ((2 * ((n : ℤ) * ((7 * n : ℤ) - 2)) - 3 * (-1) ^ n + 3 : ℚ) / 24)

end

end A346766.P97455056419952261

/-!
# A346767: a(n) = Sum_{k=0..n} Stirling2(n,k) * binomial(6*k,k) / (5*k + 1).

The programs for A346767, there is no canonical definition to state claims against.
-/

/-! ## A346767.P15572525018849204338

`A339541(3*n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A346767.P15572525018849204338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A339541 (3 * ((n : ℤ) * a (n - 1))).toNat

end

end A346767.P15572525018849204338

/-!
# A346768: a(n) = Sum_{k=0..n} Stirling2(n,k) * binomial(7*k,k) / (6*k + 1).

The programs for A346768, there is no canonical definition to state claims against.
-/

/-! ## A346768.P509680098962214405

`A122797(A336952(n)+n)`
-/

namespace A346768.P509680098962214405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A336952 n + (n : ℤ)).toNat

end

end A346768.P509680098962214405

/-!
# A346769: a(n) = Sum_{k=0..n} Stirling2(n,k) * binomial(8*k,k) / (7*k + 1).

The programs for A346769, there is no canonical definition to state claims against.
-/

/-! ## A346769.P9345740996118670913

`A039108(n^(n+1)-(n-2))`
-/

namespace A346769.P9345740996118670913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039108 ((n ^ (n + 1) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A346769.P9345740996118670913

/-!
# A346771: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)) / (1 - x^2).

The programs for A346771, there is no canonical definition to state claims against.
-/

/-! ## A346771.P7907384378145474386

`2*A000296(n)-(-1)^n`
-/

namespace A346771.P7907384378145474386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000296 n - (-1) ^ n

end

end A346771.P7907384378145474386

/-! ## A346771.P7446465891641532781

`round(2/3*A344489(n))`
-/

namespace A346771.P7446465891641532781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A344489 n : ℚ))

end

end A346771.P7446465891641532781

/-! ## A346771.P2560583132734362648

`2*A106436(∑[n])-(-1)^n`
-/

namespace A346771.P2560583132734362648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106436 (∑ j ∈ Finset.range (n + 1), f1 j) - (-1) ^ n

end

end A346771.P2560583132734362648

/-! ## A346771.P971593847579178159

`A000110(n)+A000296(n)-A087650(n)`
-/

namespace A346771.P971593847579178159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + (A000296 n - A087650 n)

end

end A346771.P971593847579178159

/-! ## A346771.P1363469592036634425

`A000296(n)-(A033999(n)-A000296(n))`
-/

namespace A346771.P1363469592036634425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n - (A033999 n - A000296 n)

end

end A346771.P1363469592036634425

/-!
# A346772: Total sum of block indices of the elements over all partitions of [n].

The programs for A346772, there is no canonical definition to state claims against.
-/

/-! ## A346772.P13953359727869480965

`A226854(n)+A033452(n)`
-/

namespace A346772.P13953359727869480965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226854 n + A033452 n

end

end A346772.P13953359727869480965

/-! ## A346772.P4579878547296951298

`round(A014132(ceil(3/4*5^n))/5)`
-/

namespace A346772.P4579878547296951298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014132 ⌈(3 : ℚ) / 4 * (5 ^ n : ℚ)⌉.toNat : ℚ) / 5)

end

end A346772.P4579878547296951298

/-!
# A346773: a(n) = Sum_{d|n} möbius(d)^n.

The programs for A346773, the canonical program `A346773.P9587350561113340499` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346773 has offset 1).

The definition of A346773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346773.P9587350561113340499

`∏{p}[n+1, lcm(#, 2*n)%4]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A346773

/-- `∏{p}[n+1, lcm(#, 2*n)%4]` -/
def P9587350561113340499.Spec : Prop :=
  ∀ n, (P9587350561113340499.a n : ℤ) = A346773 (n + 1)

theorem P9587350561113340499.correct : P9587350561113340499.Spec := by
  intro n
  simp only [A346773, Nat.add_sub_cancel]

end A346773

/-! ## A346773.P7599123331123183574

`∏{p}[n+1, and(2, #²+2*n)]`
-/

namespace A346773.P7599123331123183574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (p ^ 2 + 2 * n)

end

end A346773.P7599123331123183574

namespace A346773

/-- `∏{p}[n+1, and(2, #²+2*n)]` -/
def P7599123331123183574.Spec : Prop :=
  ∀ n, (P7599123331123183574.a n : ℤ) = A346773 (n + 1)

end A346773

/-! ## A346773.P3975542137279200230

`∏{e}[n+1, and(2, #²+2*n)]`
-/

namespace A346773.P3975542137279200230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (Nat.factorization (f1 n) p ^ 2 + 2 * n)

end

end A346773.P3975542137279200230

namespace A346773

/-- `∏{e}[n+1, and(2, #²+2*n)]` -/
def P3975542137279200230.Spec : Prop :=
  ∀ n, (P3975542137279200230.a n : ℤ) = A346773 (n + 1)

end A346773

/-! ## A346773.P16601026951210617356

`Δ[or(1, n)]^∑{e}[∏{p}[n+1, #], #]`
-/

namespace A346773.P16601026951210617356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A346773.P16601026951210617356

namespace A346773

/-- `Δ[or(1, n)]^∑{e}[∏{p}[n+1, #], #]` -/
def P16601026951210617356.Spec : Prop :=
  ∀ n, P16601026951210617356.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P9444966475855147678

`and((-1)^n, A034444(n+1))`
-/

namespace A346773.P9444966475855147678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A034444 (n + 1))

end

end A346773.P9444966475855147678

namespace A346773

/-- `and((-1)^n, A034444(n+1))` -/
def P9444966475855147678.Spec : Prop :=
  ∀ n, P9444966475855147678.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P12545326732846467561

`Δ[or(1, n)]^A001221(n+1)`
-/

namespace A346773.P12545326732846467561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A346773.P12545326732846467561

namespace A346773

/-- `Δ[or(1, n)]^A001221(n+1)` -/
def P12545326732846467561.Spec : Prop :=
  ∀ n, P12545326732846467561.a n = (A346773 (n + 1) : ℚ)

end A346773

/-! ## A346773.P15236267599671468165

`∑{d}[n+1, A008683(#)^(n+1)]`
-/

namespace A346773.P15236267599671468165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d ^ (n + 1)

end

end A346773.P15236267599671468165

namespace A346773

/-- `∑{d}[n+1, A008683(#)^(n+1)]` -/
def P15236267599671468165.Spec : Prop :=
  ∀ n, P15236267599671468165.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P7254721380544040064

`(2*and(1, n))^A001221(2*n+1-n)`
-/

namespace A346773.P7254721380544040064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℚ) ^ (A001221 (2 * n + 1 - n) : ℤ)

end

end A346773.P7254721380544040064

namespace A346773

/-- `(2*and(1, n))^A001221(2*n+1-n)` -/
def P7254721380544040064.Spec : Prop :=
  ∀ n, P7254721380544040064.a n = (A346773 (n + 1) : ℚ)

end A346773

/-! ## A346773.P11977435956961313110

`lcm(A034444(n+1), A073097(n))`
-/

namespace A346773.P11977435956961313110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034444 (n + 1)) (A073097 n)

end

end A346773.P11977435956961313110

namespace A346773

/-- `lcm(A034444(n+1), A073097(n))` -/
def P11977435956961313110.Spec : Prop :=
  ∀ n, (P11977435956961313110.a n : ℤ) = A346773 (n + 1)

end A346773

/-! ## A346773.P9305723956062699464

`lcm(A084099(n), A158522(n+1))`
-/

namespace A346773.P9305723956062699464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084099 n) (A158522 (n + 1))

end

end A346773.P9305723956062699464

namespace A346773

/-- `lcm(A084099(n), A158522(n+1))` -/
def P9305723956062699464.Spec : Prop :=
  ∀ n, (P9305723956062699464.a n : ℤ) = A346773 (n + 1)

end A346773

/-! ## A346773.P9531341126618354188

`A034444(n+1)*A135528(n+1)`
-/

namespace A346773.P9531341126618354188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A135528 (n + 1)

end

end A346773.P9531341126618354188

namespace A346773

/-- `A034444(n+1)*A135528(n+1)` -/
def P9531341126618354188.Spec : Prop :=
  ∀ n, P9531341126618354188.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P13721012214226928120

`(2-A040001(n))*A034444(n+1)`
-/

namespace A346773.P13721012214226928120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A040001 n) * A034444 (n + 1)

end

end A346773.P13721012214226928120

namespace A346773

/-- `(2-A040001(n))*A034444(n+1)` -/
def P13721012214226928120.Spec : Prop :=
  ∀ n, P13721012214226928120.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P3529827932223610614

`(2%A020639(n+2))^A001221(n+1)`
-/

namespace A346773.P3529827932223610614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 2 (A020639 (n + 2)) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A346773.P3529827932223610614

namespace A346773

/-- `(2%A020639(n+2))^A001221(n+1)` -/
def P3529827932223610614.Spec : Prop :=
  ∀ n, P3529827932223610614.a n = (A346773 (n + 1) : ℚ)

end A346773

/-! ## A346773.P4218758005371419727

`(A004277(n)%4)^∑{p}[n+1, A001222(#)]`
-/

namespace A346773.P4218758005371419727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A004277 n) 4 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A001222 p : ℤ)

end

end A346773.P4218758005371419727

namespace A346773

/-- `(A004277(n)%4)^∑{p}[n+1, A001222(#)]` -/
def P4218758005371419727.Spec : Prop :=
  ∀ n, P4218758005371419727.a n = (A346773 (n + 1) : ℚ)

end A346773

/-! ## A346773.P13385621306348198781

`and(1, A317528(2*n+1))-A317528(2*(n+1))`
-/

namespace A346773.P13385621306348198781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317528 (2 * n + 1)) - A317528 (2 * (n + 1))

end

end A346773.P13385621306348198781

namespace A346773

/-- `and(1, A317528(2*n+1))-A317528(2*(n+1))` -/
def P13385621306348198781.Spec : Prop :=
  ∀ n, P13385621306348198781.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P9588073343706460045

`lcm(A117569(n)*A158522(n+1), A117569(n))`
-/

namespace A346773.P9588073343706460045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117569 n * A158522 (n + 1)) (A117569 n)

end

end A346773.P9588073343706460045

namespace A346773

/-- `lcm(A117569(n)*A158522(n+1), A117569(n))` -/
def P9588073343706460045.Spec : Prop :=
  ∀ n, (P9588073343706460045.a n : ℤ) = A346773 (n + 1)

end A346773

/-! ## A346773.P8941384794804679953

`A264782(A022998(n+1))`
-/

namespace A346773.P8941384794804679953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (A022998 (n + 1)).toNat

end

end A346773.P8941384794804679953

namespace A346773

/-- `A264782(A022998(n+1))` -/
def P8941384794804679953.Spec : Prop :=
  ∀ n, P8941384794804679953.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P9911643813000048038

`A264782(A257088(n+1))`
-/

namespace A346773.P9911643813000048038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (A257088 (n + 1)).toNat

end

end A346773.P9911643813000048038

namespace A346773

/-- `A264782(A257088(n+1))` -/
def P9911643813000048038.Spec : Prop :=
  ∀ n, P9911643813000048038.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P18311641668592382619

`A264782(A042948(n+1))`
-/

namespace A346773.P18311641668592382619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (A042948 (n + 1)).toNat

end

end A346773.P18311641668592382619

namespace A346773

/-- `A264782(A042948(n+1))` -/
def P18311641668592382619.Spec : Prop :=
  ∀ n, P18311641668592382619.a n = A346773 (n + 1)

end A346773

/-! ## A346773.P14967583045012848162

`A264782(A074231(n+1))`
-/

namespace A346773.P14967583045012848162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (A074231 (n + 1)).toNat

end

end A346773.P14967583045012848162

namespace A346773

/-- `A264782(A074231(n+1))` -/
def P14967583045012848162.Spec : Prop :=
  ∀ n, P14967583045012848162.a n = A346773 (n + 1)

end A346773

/-!
# A346774: Numbers whose square starts and ends with exactly 2 identical digits.

The programs for A346774, there is no canonical definition to state claims against.
-/

/-! ## A346774.P6634826830439942704

`∩[A346678(n+1), A346812(n+1)]`
-/

namespace A346774.P6634826830439942704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346774.P6634826830439942704

/-!
# A346775: Starting from n!+1, the length of the longest sequence of consecutive numbers which all take the same number of steps to reach 1 in the Collatz (or '3x+1') problem.

The programs for A346775, there is no canonical definition to state claims against.
-/

/-! ## A346775.P13529981219358283103

`gcd(A228474(n), A317933(A011782(n)))`
-/

namespace A346775.P13529981219358283103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228474 n) (A317933 (A011782 n).toNat)

end

end A346775.P13529981219358283103

/-! ## A346775.P6203923285853210359

`gcd(A097986(n+1), A339562(A022884(n+1)))`
-/

namespace A346775.P6203923285853210359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097986 (n + 1)) (A339562 (A022884 (n + 1)).toNat)

end

end A346775.P6203923285853210359

/-! ## A346775.P1417145849930573480

`A000188(A204992(n+1)+A002865(n+1)²)`
-/

namespace A346775.P1417145849930573480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A204992 (n + 1) + A002865 (n + 1) ^ 2).toNat

end

end A346775.P1417145849930573480

/-! ## A346775.P7014236713511720234

`gcd(A062968(n+1), A230115(A334112(n+1)!))`
-/

namespace A346775.P7014236713511720234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062968 (n + 1)) (A230115 (Nat.factorial (A334112 (n + 1)).toNat))

end

end A346775.P7014236713511720234

/-! ## A346775.P2846055228521557394

`A355931(A153083(n+1)+A000079(n))`
-/

namespace A346775.P2846055228521557394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355931 (A153083 (n + 1) + A000079 n).toNat

end

end A346775.P2846055228521557394

/-!
# A346776: a(n) is the number of consecutive even prime gaps (g1, g2) satisfying g1 == 2 (mod 6) and g2 == 0 (mod 6) out of the first 2^n consecutive even prime gaps.

The programs for A346776, there is no canonical definition to state claims against.
-/

/-! ## A346776.P5407165780432511520

`A341531(n)-A346777(n)-1`
-/

namespace A346776.P5407165780432511520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341531 n - A346777 n - 1

end

end A346776.P5407165780432511520

/-! ## A346776.P7091621160513915367

`(2^n-(A341532(n)+A340948(n)))%(A346777(n)+1)`
-/

namespace A346776.P7091621160513915367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n : ℤ) - (A341532 n + A340948 n)) (A346777 n + 1)

end

end A346776.P7091621160513915367

/-! ## A346776.P1350193970025797586

`A345334(n+1)+A287372(A113374(n))`
-/

namespace A346776.P1350193970025797586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345334 (n + 1) + A287372 (A113374 n).toNat

end

end A346776.P1350193970025797586

/-! ## A346776.P7892391942937808792

`A345334(n+1)+A286748(A206432(n))`
-/

namespace A346776.P7892391942937808792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345334 (n + 1) + A286748 (A206432 n).toNat

end

end A346776.P7892391942937808792

/-! ## A346776.P3292653777709704280

`A323048(A341531(n)-A346777(n))`
-/

namespace A346776.P3292653777709704280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A341531 n - A346777 n).toNat

end

end A346776.P3292653777709704280

/-!
# A346777: a(n) is the number of consecutive even prime gaps (g1, g2) satisfying g1 == 2 (mod 6) and g2 == 4 (mod 6) out of the first 2^n consecutive even prime gaps.

The programs for A346777, there is no canonical definition to state claims against.
-/

/-! ## A346777.P7908847800377193319

`A341531(n)-A346776(n)-1`
-/

namespace A346777.P7908847800377193319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341531 n - A346776 n - 1

end

end A346777.P7908847800377193319

/-! ## A346777.P12941184542313836413

`ceil((A083318(n)-A340948(n))/2)-(A346776(n)+1)`
-/

namespace A346777.P12941184542313836413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083318 n - A340948 n : ℚ) / 2⌉ - (A346776 n + 1)

end

end A346777.P12941184542313836413

/-! ## A346777.P5797891583203628668

`2^n-(A341532(n)+A340948(n))-(A346776(n)+1)`
-/

namespace A346777.P5797891583203628668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A341532 n + A340948 n) - (A346776 n + 1)

end

end A346777.P5797891583203628668

/-! ## A346777.P5946593927063033127

`ceil(A269849(2^n+1)/2)-(A346776(n)+1)`
-/

namespace A346777.P5946593927063033127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269849 (2 ^ n + 1) : ℚ) / 2⌉ - (A346776 n + 1)

end

end A346777.P5946593927063033127

/-! ## A346777.P6464277835703019651

`A341531(n)-1-A327036(A169985(n)-A226208(n+1))`
-/

namespace A346777.P6464277835703019651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341531 n - 1 - A327036 (A169985 n - A226208 (n + 1)).toNat

end

end A346777.P6464277835703019651

/-!
# A346778: Least k >= 1 such that {b(1), b(2), ..., b(k)} = {n, n-1, ..., n-k+1} and b(k+1) = n-k where b(1..n) is row n of A088643, or k = 0 if no such k >= 1 exists.

The programs for A346778, there is no canonical definition to state claims against.
-/

/-! ## A346778.P4541390274009028337

`A001615(A052126(2*n+1))%A141463(n+1)`
-/

namespace A346778.P4541390274009028337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (A052126 (2 * n + 1)).toNat) (A141463 (n + 1))

end

end A346778.P4541390274009028337

/-! ## A346778.P13595115011333998814

`A000005(A318808(4*n+2))-A181499(A000124(n))`
-/

namespace A346778.P13595115011333998814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318808 (4 * n + 2)).toNat - A181499 (A000124 n).toNat

end

end A346778.P13595115011333998814

/-! ## A346778.P6853895388396768557

`A000005(A318808(4*n+2))*A000035(A100066(n))`
-/

namespace A346778.P6853895388396768557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318808 (4 * n + 2)).toNat * A000035 (A100066 n).toNat

end

end A346778.P6853895388396768557

/-! ## A346778.P7968892340737255527

`A000005(A318762(2*n+1))%A001316(A063013(n))`
-/

namespace A346778.P7968892340737255527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A318762 (2 * n + 1)).toNat) (A001316 (A063013 n).toNat)

end

end A346778.P7968892340737255527

/-! ## A346778.P3518789157370045267

`A293434((n+1)^A001222(n+1)+n)`
-/

namespace A346778.P3518789157370045267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A001222 (n + 1) : ℤ) + (n : ℚ))).toNat

end

end A346778.P3518789157370045267

/-!
# A346779: Number of Halin graphs on n unlabeled nodes.

The programs for A346779, there is no canonical definition to state claims against.
-/

/-! ## A346779.P10585523676094684027

`A241065(A073738(n)-A008578(n+1))`
-/

namespace A346779.P10585523676094684027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241065 (A073738 n - A008578 (n + 1)).toNat

end

end A346779.P10585523676094684027

/-! ## A346779.P5412605770950595247

`A000602(n+1)-A226190(A032218(n+1))`
-/

namespace A346779.P5412605770950595247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (n + 1) - A226190 (A032218 (n + 1)).toNat

end

end A346779.P5412605770950595247

/-!
# A346781: a(n) is the numerator of the sum of the first n terms of 1 - 1/3 - 1/5 + 1/7 + 1/9 - 1/11 - 1/13 + ... .

The programs for A346781, there is no canonical definition to state claims against.
-/

/-! ## A346781.P6553086181561020646

`A347940(n^∏{e}[n+1, #+1])`
-/

namespace A346781.P6553086181561020646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347940 (n ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A346781.P6553086181561020646

/-!
# A346783: a(n) = A006577(A346782(n)), records in A070974.

The programs for A346783, there is no canonical definition to state claims against.
-/

/-! ## A346783.P129233835454320823

`record[A070974(n+2)]`
-/

namespace A346783.P129233835454320823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346783.P129233835454320823

/-! ## A346783.P18357118317998132869

`record[A081613(n+2)-1]`
-/

namespace A346783.P18357118317998132869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081613 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346783.P18357118317998132869

/-! ## A346783.P12018551616894339223

`Δ[∑[record[A081613(n)]]-n]`
-/

namespace A346783.P12018551616894339223
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346783.P12018551616894339223

/-! ## A346783.P15253457315302926362

`record[A028310(n)-(n-A070974(A028310(n)))]`
-/

namespace A346783.P15253457315302926362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((n : ℤ) - A070974 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346783.P15253457315302926362

/-! ## A346783.P1691222493486999315

`A070974(A346782(n+1))`
-/

namespace A346783.P1691222493486999315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070974 (A346782 (n + 1)).toNat

end

end A346783.P1691222493486999315

/-!
# A346786: If a(n) is prime, then a(n) + a(n+1) is prime; if a(n) is not prime, then a(n) + a(n+1) is not prime. This is also true for pairs of consecutive digits: if the first one is prime, the sum of the pair is also prime; if the first one is nonprime, the sum of the pair is nonprime. This is the lexicographically earliest sequence of distinct terms > 0 with this property.

The programs for A346786, there is no canonical definition to state claims against.
-/

/-! ## A346786.P11378065047877885354

`∑[n²%3]^A000700(n)-A262726(3^n)`
-/

namespace A346786.P11378065047877885354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A000700 n : ℤ) - (A262726 (3 ^ n) : ℚ)

end

end A346786.P11378065047877885354

/-! ## A346786.P15271584166115532320

`A189865(A143571(n))+A143579(n)`
-/

namespace A346786.P15271584166115532320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189865 (A143571 n).toNat + A143579 n

end

end A346786.P15271584166115532320

/-!
# A346787: Ordered lone-child-avoiding trees where vertices have decreasing subtree sizes.

The programs for A346787, there is no canonical definition to state claims against.
-/

/-! ## A346787.P15809296160087817564

`A001678(n+2)+∑[A185284(3*n+2)]`
-/

namespace A346787.P15809296160087817564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346787.P15809296160087817564

/-! ## A346787.P4601919189067353010

`A101606(A001006(n))+A001678(n+2)`
-/

namespace A346787.P4601919189067353010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (A001006 n).toNat + A001678 (n + 2)

end

end A346787.P4601919189067353010

/-! ## A346787.P503362366625294856

`A103674(A078793(n+1))+A001678(n+2)`
-/

namespace A346787.P503362366625294856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 (A078793 (n + 1)).toNat + A001678 (n + 2)

end

end A346787.P503362366625294856

/-! ## A346787.P7703184918236343616

`A185284(A358377(n+1))+A001678(n+2)`
-/

namespace A346787.P7703184918236343616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A358377 (n + 1)).toNat + A001678 (n + 2)

end

end A346787.P7703184918236343616

/-! ## A346787.P14491024113698009778

`A164056(A175228(3*n+5))+A001678(n+2)`
-/

namespace A346787.P14491024113698009778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164056 (A175228 (3 * n + 5)).toNat + A001678 (n + 2)

end

end A346787.P14491024113698009778

/-!
# A346788: Product over all partitions lambda of n of the product of distinct parts in lambda.

The programs for A346788, there is no canonical definition to state claims against.
-/

/-! ## A346788.P15599222030251737034

`A230053(n)/A255894(A063865(n))`
-/

namespace A346788.P15599222030251737034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230053 n : ℚ) / (A255894 (A063865 n).toNat : ℚ)

end

end A346788.P15599222030251737034

/-! ## A346788.P8812649842793761245

`A230053(n)/A102523(A124434(n+1))`
-/

namespace A346788.P8812649842793761245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230053 n : ℚ) / (A102523 (A124434 (n + 1)).toNat : ℚ)

end

end A346788.P8812649842793761245

/-! ## A346788.P302497022338181194

`A230053(n)/A230090(A329692(n+2))`
-/

namespace A346788.P302497022338181194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230053 n : ℚ) / (A230090 (A329692 (n + 2)).toNat : ℚ)

end

end A346788.P302497022338181194

/-!
# A346790: Decimal expansion of the cotangent of an arcsecond.

The programs for A346790, there is no canonical definition to state claims against.
-/

/-! ## A346790.P5214719919960389978

`A217572(n)-A344310(A184983(n))`
-/

namespace A346790.P5214719919960389978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217572 (n + 6) - A344310 (A184983 n).toNat

end

end A346790.P5214719919960389978

/-!
# A346791: E.g.f.: 1 / (1 + x + Sum_{k>=2} prime(k-1) * x^k / k!).

The programs for A346791, there is no canonical definition to state claims against.
-/

/-! ## A346791.P608117174383578817

`A302199(A346700(4^n))`
-/

namespace A346791.P608117174383578817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302199 (A346700 (4 ^ n)).toNat

end

end A346791.P608117174383578817

/-! ## A346791.P9569661127059980345

`A302199(n)^A251077(n+1)`
-/

namespace A346791.P9569661127059980345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302199 n : ℚ) ^ (A251077 (n + 1) : ℤ)

end

end A346791.P9569661127059980345

/-! ## A346791.P13510520689354598532

`A302199(n)%A007903(n+1)`
-/

namespace A346791.P13510520689354598532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302199 n) (A007903 (n + 1))

end

end A346791.P13510520689354598532

/-!
# A346794: Primes p such that the largest Dyck path of the symmetric representation of sigma(p) does not touch the largest Dyck path of the symmetric representation of sigma(p+1).

The programs for A346794, there is no canonical definition to state claims against.
-/

/-! ## A346794.P6808636505886994771

`p?[∑[A389763(n+1)]]`
-/

namespace A346794.P6808636505886994771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346794.P6808636505886994771

/-! ## A346794.P8381046045297232955

`p?[A174973(n+1)-1]`
-/

namespace A346794.P8381046045297232955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346794.P8381046045297232955

/-! ## A346794.P1065059155754195048

`p?[A343621(n+1)]`
-/

namespace A346794.P1065059155754195048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346794.P1065059155754195048

/-! ## A346794.P9591948450368357

`p?[eq[1, A237271(n+1)]]`
-/

namespace A346794.P9591948450368357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A346794.P9591948450368357

/-! ## A346794.P7892277651486819019

`p?[lt[A237271(n+2), 2]+1]`
-/

namespace A346794.P7892277651486819019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A346794.P7892277651486819019

/-! ## A346794.P4375393272864820351

`filter[A343621(n+1), A010051(#)]`
-/

namespace A346794.P4375393272864820351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A346794.P4375393272864820351

/-! ## A346794.P744253968073724384

`filter[A343621(n+1), A302777(#)]`
-/

namespace A346794.P744253968073724384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A346794.P744253968073724384

/-! ## A346794.P15183537876392901629

`filter[A343621(n+1), A323153(#)]`
-/

namespace A346794.P15183537876392901629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A346794.P15183537876392901629

/-! ## A346794.P608339388845703783

`filter[A343621(n+1), A327861(#)]`
-/

namespace A346794.P608339388845703783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A346794.P608339388845703783

/-! ## A346794.P11544415695758739787

`filter[A343621(n+1), A353670(#)]`
-/

namespace A346794.P11544415695758739787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A346794.P11544415695758739787

/-! ## A346794.P13444333100820178276

`eq[A003415(n), A237271(n+1)]`
-/

namespace A346794.P13444333100820178276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346794.P13444333100820178276

/-! ## A346794.P13869496722406221744

`eq[A003415(n), A365429(n+1)]`
-/

namespace A346794.P13869496722406221744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346794.P13869496722406221744

/-! ## A346794.P1235312406254405663

`eq[A018783(n), A365429(n+1)]`
-/

namespace A346794.P1235312406254405663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346794.P1235312406254405663

/-! ## A346794.P12996796219912304052

`eq[A032741(n), A365429(n+1)]`
-/

namespace A346794.P12996796219912304052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346794.P12996796219912304052

/-! ## A346794.P18328268022274549844

`eq[A032741(n), A379379(n+1)]`
-/

namespace A346794.P18328268022274549844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346794.P18328268022274549844

/-! ## A346794.P14831184282650631113

`eq[A069283(n), A379379(n+1)]`
-/

namespace A346794.P14831184282650631113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346794.P14831184282650631113

/-! ## A346794.P2443315578864241365

`∩[A000040(n+1), A343621(n+1)]`
-/

namespace A346794.P2443315578864241365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346794.P2443315578864241365

/-! ## A346794.P3205574418707696631

`∩[A000430(n+1), A343621(n+1)]`
-/

namespace A346794.P3205574418707696631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346794.P3205574418707696631

/-!
# A346796: Number of equivalence classes of triangles in an n-dimensional hypercube, equivalent up to translation of difference vectors corresponding to edges.

The programs for A346796, the canonical program `A346796.P16076436368679213015` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346796 has offset 1).

The definition of A346796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346796.P6556823326646372186

`∑[(7^n-3^n)/2]`
-/

namespace A346796.P6556823326646372186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346796.P6556823326646372186

namespace A346796

/-- `∑[(7^n-3^n)/2]` -/
def P6556823326646372186.Spec : Prop :=
  ∀ n, P6556823326646372186.a n = (A346796 (n + 1) : ℚ)

end A346796

/-! ## A346796.P16076436368679213015

`3^n+7*a(n-1)-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A346796

/-- `3^n+7*a(n-1)-1` -/
def P16076436368679213015.Spec : Prop :=
  ∀ n, P16076436368679213015.a n = A346796 (n + 1)

theorem P16076436368679213015.correct : P16076436368679213015.Spec := by
  intro n
  simp only [A346796, Nat.add_sub_cancel]

end A346796

/-! ## A346796.P10339294794877782826

`A341590(n+1)/2`
-/

namespace A346796.P10339294794877782826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341590 (n + 1) : ℚ) / 2

end

end A346796.P10339294794877782826

namespace A346796

/-- `A341590(n+1)/2` -/
def P10339294794877782826.Spec : Prop :=
  ∀ n, P10339294794877782826.a n = (A346796 (n + 1) : ℚ)

end A346796

/-! ## A346796.P1017808102022100985

`A016138(n)-∑[A000420(n)]`
-/

namespace A346796.P1017808102022100985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346796.P1017808102022100985

namespace A346796

/-- `A016138(n)-∑[A000420(n)]` -/
def P1017808102022100985.Spec : Prop :=
  ∀ n, P1017808102022100985.a n = A346796 (n + 1)

end A346796

/-! ## A346796.P1513967763808696718

`∑[A081188(n)]-A087439(n)`
-/

namespace A346796.P1513967763808696718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087439 n

end

end A346796.P1513967763808696718

namespace A346796

/-- `∑[A081188(n)]-A087439(n)` -/
def P1513967763808696718.Spec : Prop :=
  ∀ n, P1513967763808696718.a n = A346796 (n + 1)

end A346796

/-! ## A346796.P7626400019074150977

`(A023000(n+1)-A003462(n+1))/2`
-/

namespace A346796.P7626400019074150977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 (n + 1) - A003462 (n + 1) : ℚ) / 2

end

end A346796.P7626400019074150977

namespace A346796

/-- `(A023000(n+1)-A003462(n+1))/2` -/
def P7626400019074150977.Spec : Prop :=
  ∀ n, P7626400019074150977.a n = (A346796 (n + 1) : ℚ)

end A346796

/-! ## A346796.P9984854459537059295

`A109021(n+1)/4`
-/

namespace A346796.P9984854459537059295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109021 (n + 1) : ℚ) / 4

end

end A346796.P9984854459537059295

namespace A346796

/-- `A109021(n+1)/4` -/
def P9984854459537059295.Spec : Prop :=
  ∀ n, P9984854459537059295.a n = (A346796 (n + 1) : ℚ)

end A346796

/-! ## A346796.P9438952327952790594

`floor(A058482(n+1)/12)`
-/

namespace A346796.P9438952327952790594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058482 (n + 1) : ℚ) / 12⌋

end

end A346796.P9438952327952790594

namespace A346796

/-- `floor(A058482(n+1)/12)` -/
def P9438952327952790594.Spec : Prop :=
  ∀ n, P9438952327952790594.a n = A346796 (n + 1)

end A346796

/-! ## A346796.P3974848869319786467

`(A083076(n+1)-A081336(n+1))/2`
-/

namespace A346796.P3974848869319786467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083076 (n + 1) - A081336 (n + 1) : ℚ) / 2

end

end A346796.P3974848869319786467

namespace A346796

/-- `(A083076(n+1)-A081336(n+1))/2` -/
def P3974848869319786467.Spec : Prop :=
  ∀ n, P3974848869319786467.a n = (A346796 (n + 1) : ℚ)

end A346796

/-!
# A346797: Number of partitions of n into parts congruent to 0, 2 or 5 (mod 7).

The programs for A346797, there is no canonical definition to state claims against.
-/

/-! ## A346797.P4372037448363490221

`Δ[A015753(n+2)]%A334334(n+1)`
-/

namespace A346797.P4372037448363490221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015753 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A334334 (n + 1))

end

end A346797.P4372037448363490221

/-! ## A346797.P13893693021173453450

`Δ[A103298(A225490(n+1)+1-a(n-1))]` with `a(0)=1`
-/

namespace A346797.P13893693021173453450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A103298 (A225490 (n + 1) + 1 - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346797.P13893693021173453450

/-! ## A346797.P5434975499808458385

`A001222(A309415(n)+A282971(n))`
-/

namespace A346797.P5434975499808458385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A309415 n + A282971 n).toNat

end

end A346797.P5434975499808458385

/-! ## A346797.P14657076494396230964

`A001221(A349137(n+1)+A054882(n))`
-/

namespace A346797.P14657076494396230964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A349137 (n + 1) + A054882 n).toNat

end

end A346797.P14657076494396230964

/-! ## A346797.P6446045499908971315

`A050600(A094783(n+1)-A032741(n))`
-/

namespace A346797.P6446045499908971315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (A094783 (n + 1) - A032741 n).toNat

end

end A346797.P6446045499908971315

/-!
# A346798: Number of partitions of n into parts congruent to 0, 3 or 4 (mod 7).

The programs for A346798, there is no canonical definition to state claims against.
-/

/-! ## A346798.P9238292787826507250

`A007895(A017879(3*n)*A017879(3*n))`
-/

namespace A346798.P9238292787826507250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A017879 (3 * n) * A017879 (3 * n)).toNat

end

end A346798.P9238292787826507250

/-! ## A346798.P8571344288073698140

`A017817(n)-A022003(A051768(n+1))`
-/

namespace A346798.P8571344288073698140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n - A022003 (A051768 (n + 1)).toNat

end

end A346798.P8571344288073698140

/-! ## A346798.P635880574261137908

`A017817(n)-A216579(A103389(n+1))`
-/

namespace A346798.P635880574261137908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n - A216579 (A103389 (n + 1)).toNat

end

end A346798.P635880574261137908

/-! ## A346798.P10965331208262179479

`A017817(n)-A007949(A017995(n))`
-/

namespace A346798.P10965331208262179479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n - A007949 (A017995 n).toNat

end

end A346798.P10965331208262179479

/-! ## A346798.P11002308484968021435

`A017817(n)-A295884(A159929(n))`
-/

namespace A346798.P11002308484968021435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n - A295884 (A159929 n).toNat

end

end A346798.P11002308484968021435

/-!
# A346799: Number of fixed polyominoes with n cells that have a horizontal axis of symmetry that passes through the centers of cells.

The programs for A346799, there is no canonical definition to state claims against.
-/

/-! ## A346799.P14591031861425395676

`A390654(n+1)-A234008(n+1)-A234008(n+1)`
-/

namespace A346799.P14591031861425395676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390654 (n + 1) - A234008 (n + 1) - A234008 (n + 1)

end

end A346799.P14591031861425395676

/-! ## A346799.P1067889766564911597

`A234010(n+1)-A234008(n+1)`
-/

namespace A346799.P1067889766564911597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234010 (n + 1) - A234008 (n + 1)

end

end A346799.P1067889766564911597

/-! ## A346799.P12523944012583437805

`A234010(n+1)+A234010(n+1)-A390654(n+1)`
-/

namespace A346799.P12523944012583437805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234010 (n + 1) + (A234010 (n + 1) - A390654 (n + 1))

end

end A346799.P12523944012583437805

/-! ## A346799.P6356707229180507333

`2*A056779(n+1)-A197626(n+1)`
-/

namespace A346799.P6356707229180507333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056779 (n + 1) - A197626 (n + 1)

end

end A346799.P6356707229180507333

/-! ## A346799.P6346904030671734853

`A004277(A056779(n+1))-A197626(n+1)`
-/

namespace A346799.P6346904030671734853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056779 (n + 1)).toNat - A197626 (n + 1)

end

end A346799.P6346904030671734853

